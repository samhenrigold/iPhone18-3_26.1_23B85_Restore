uint64_t sub_23DE6502C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v71 = a4;
  v70 = sub_23E1FBD5C();
  v7 = MEMORY[0x28223BE20](v70);
  v68 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v67 = &v58 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v78 = a1;
  v77 = v71;
  v65 = (v10 + 8);
  v66 = (v10 + 16);
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v64 = a1;
    v35 = v71;
    sub_23DF317F4(a2, v15 / v13, v71);
    v36 = v35 + v18 * v13;
    v37 = -v13;
    v38 = v36;
    v61 = -v13;
LABEL_36:
    v39 = a2 + v37;
    v40 = a3;
    v59 = v38;
    v41 = v38;
    v62 = a2 + v37;
    v63 = a2;
    while (1)
    {
      if (v36 <= v71)
      {
        v78 = a2;
        v76 = v41;
        goto LABEL_58;
      }

      if (a2 <= v64)
      {
        break;
      }

      v60 = v41;
      v69 = v40 + v37;
      v42 = v36 + v37;
      v43 = v67;
      v44 = *v66;
      v45 = v36 + v37;
      v46 = v70;
      (*v66)(v67, v45, v70);
      v47 = v36;
      v48 = v68;
      v44(v68, v39, v46);
      v74 = sub_23E1FBCDC();
      v75 = v49;
      v72 = sub_23E1FBCDC();
      v73 = v50;
      sub_23DE655BC();
      v51 = sub_23E1FE47C();

      v52 = *v65;
      (*v65)(v48, v46);
      v52(v43, v46);
      if (v51 == -1)
      {
        v36 = v47;
        a3 = v69;
        if (v40 < v63 || v69 >= v63)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v60;
          v37 = v61;
        }

        else
        {
          v56 = v60;
          v38 = v60;
          v37 = v61;
          v57 = v62;
          a2 = v62;
          if (v40 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v57;
            v38 = v56;
          }
        }

        goto LABEL_36;
      }

      v53 = v69;
      if (v40 < v47 || v69 >= v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        v40 = v53;
        v36 = v42;
        v41 = v42;
        v39 = v62;
        a2 = v63;
        v37 = v61;
      }

      else
      {
        v41 = v42;
        v14 = v47 == v40;
        v40 = v69;
        v36 = v42;
        v39 = v62;
        a2 = v63;
        v37 = v61;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v40 = v53;
          v36 = v42;
          v41 = v42;
        }
      }
    }

    v78 = a2;
    v76 = v59;
  }

  else
  {
    v19 = v71;
    sub_23DF317F4(a1, (a2 - a1) / v13, v71);
    v64 = v19 + v17 * v13;
    v76 = v64;
    v20 = a1;
    v69 = a3;
    while (v71 < v64 && a2 < a3)
    {
      v22 = v13;
      v23 = v67;
      v24 = *v66;
      v25 = v70;
      (*v66)(v67, a2, v70);
      v26 = a2;
      v27 = v68;
      v24(v68, v71, v25);
      v74 = sub_23E1FBCDC();
      v75 = v28;
      v72 = sub_23E1FBCDC();
      v73 = v29;
      sub_23DE655BC();
      v30 = sub_23E1FE47C();

      v31 = *v65;
      (*v65)(v27, v25);
      v31(v23, v25);
      if (v30 == -1)
      {
        v13 = v22;
        a2 = v26 + v22;
        if (v20 < v26 || v20 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v69;
        }

        else
        {
          a3 = v69;
          if (v20 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v26;
        v13 = v22;
        v32 = v71 + v22;
        if (v20 < v71 || v20 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v69;
        }

        else
        {
          a3 = v69;
          if (v20 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v77 = v32;
        v71 = v32;
      }

      v20 += v13;
      v78 = v20;
    }
  }

LABEL_58:
  sub_23DF20B14(&v78, &v77, &v76);
  return 1;
}

unint64_t sub_23DE655BC()
{
  result = qword_27E32C5E8;
  if (!qword_27E32C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C5E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_23DE65634()
{
  result = qword_280DAF130;
  if (!qword_280DAF130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF130);
  }

  return result;
}

unint64_t sub_23DE6568C()
{
  result = qword_280DAF140;
  if (!qword_280DAF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF140);
  }

  return result;
}

uint64_t sub_23DE65718()
{
  v0 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_1();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE65894@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v2 = OUTLINED_FUNCTION_25(v1);
  MEMORY[0x28223BE20](v2);
  v79 = &v73 - v3;
  v4 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FBF0C();
  v80 = *(v15 - 8);
  v16 = v80;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  v77 = v18 - v17;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v74 = *MEMORY[0x277CC9110];
  v19 = *(v6 + 104);
  v19(v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v79, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C600, &qword_23E224590);
  v20 = *(v16 + 72);
  v21 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v75 = 8 * v20;
  v22 = swift_allocObject();
  v76 = v22;
  *(v22 + 16) = xmmword_23E224420;
  v23 = v22 + v21;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v24 = v74;
  v73 = v4;
  (v19)(v10, v74, v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v25, v26, v27, v28, v29, v30);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v19)(v10, v24, v4);
  v80 = v23;
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v31, v32, v33, v34, v35, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (v19)(v10, v24, v73);
  v36 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v36, v37, v38, v39, v40, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v41 = OUTLINED_FUNCTION_7_1();
  v19(v41);
  v42 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v42, v43, v44, v45, v46, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v47 = OUTLINED_FUNCTION_7_1();
  v19(v47);
  v48 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v48, v49, v50, v51, v52, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v53 = OUTLINED_FUNCTION_7_1();
  v19(v53);
  v54 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v54, v55, v56, v57, v58, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v59 = OUTLINED_FUNCTION_7_1();
  v19(v59);
  v60 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v60, v61, v62, v63, v64, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v65 = OUTLINED_FUNCTION_7_1();
  v19(v65);
  v66 = OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6_3(v66, v67, v68, v69, v70, "Reset Cellular Data Statistics – Search Keyword");
  sub_23E1FB69C();
  v71 = sub_23E1FB67C();
  return OUTLINED_FUNCTION_9_0(v71);
}

uint64_t sub_23DE65E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C608, &qword_23E224598);
  v1 = OUTLINED_FUNCTION_25(v0);
  MEMORY[0x28223BE20](v1);
  sub_23DE6647C();
  sub_23E1FB82C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_8_1();
  return sub_23E1FB7DC();
}

uint64_t sub_23DE65EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  v1 = OUTLINED_FUNCTION_25(v0);
  MEMORY[0x28223BE20](v1);
  v2 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  *v8 = sub_23E1FDC1C();
  v8[1] = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D7BF38], v2);
  sub_23E1FC82C();
  v10 = sub_23E1FC81C();
  OUTLINED_FUNCTION_9_0(v10);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v11 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE66094(uint64_t a1)
{
  *(v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_23DE66124, 0, 0);
}

uint64_t sub_23DE66124()
{
  v1 = [objc_allocWithZone(WFCellularPlansManager) init];
  *(v0 + 16) = 0;
  v2 = [v1 resetCellularDataStatisticsWithError_];

  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = v3;
    sub_23E1FB54C();
  }

  else
  {
    v6 = v3;
    sub_23E1FBECC();

    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23DE66258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE662F0;

  return sub_23DE66094(a1);
}

uint64_t sub_23DE662F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23DE663E8(uint64_t a1)
{
  v2 = sub_23DE6647C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DE66434(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DE6647C()
{
  result = qword_280DAF138;
  if (!qword_280DAF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF138);
  }

  return result;
}

unint64_t sub_23DE664D0()
{
  result = qword_280DAEDE0;
  if (!qword_280DAEDE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEDE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_23E1FBF1C();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t GetWeatherForecastAction.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE6B980(v1 + v3, &v7, &unk_27E32C618, &qword_23E2245A0);
  if (v8)
  {
    return sub_23DE36C8C(&v7, a1);
  }

  sub_23DE58BD0(&v7, &unk_27E32C618, &qword_23E2245A0);
  v5 = type metadata accessor for WFWeatherForecastService();
  v6 = swift_allocObject();
  sub_23E1FC52C();
  *(v6 + 16) = sub_23E1FC4FC();
  a1[3] = v5;
  a1[4] = &off_285026930;
  *a1 = v6;
  sub_23DE5DA0C(a1, &v7);
  swift_beginAccess();
  sub_23DE6670C(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_23DE6670C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C618, &qword_23E2245A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GetWeatherForecastAction.provider.setter(__int128 *a1)
{
  sub_23DE36C8C(a1, v4);
  v2 = OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE6670C(v4, v1 + v2);
  return swift_endAccess();
}

void (*GetWeatherForecastAction.provider.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  GetWeatherForecastAction.provider.getter(v3);
  return sub_23DE66878;
}

void sub_23DE66878(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_23DE5DA0C(*a1, v2 + 40);
    GetWeatherForecastAction.provider.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    GetWeatherForecastAction.provider.setter(*a1);
  }

  free(v2);
}

uint64_t GetWeatherForecastAction.run(withInput:location:locationDisclosureLevel:)()
{
  OUTLINED_FUNCTION_23();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  sub_23E1FDECC();
  v1[21] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_23DE66978, v5, v4);
}

uint64_t sub_23DE66978()
{
  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v1 = sub_23E1FE3FC();
  if (v1)
  {
    v2 = v1;
    sub_23E1FDC0C();
  }

  GetWeatherForecastAction.provider.getter(v0 + 2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_15_2();
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_5_3(v3);

  return v5(v4);
}

uint64_t sub_23DE66C24()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v3[12] = v1;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_24();
  *v6 = *v1;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_24();
  v9 = *(v8 + 184);
  v10 = *(v2 + 176);
  if (v0)
  {
    v11 = sub_23DE6744C;
  }

  else
  {
    v11 = sub_23DE66D58;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

id sub_23DE66D58()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v27 = v1;
  v3 = *(v1 + 104);
  v24 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  OUTLINED_FUNCTION_9_1();
  while (v28 != v2)
  {
    if (v26)
    {
      v4 = MEMORY[0x23EF04DD0](v2, v3);
    }

    else
    {
      if (v2 >= *(v25 + 16))
      {
        goto LABEL_19;
      }

      v4 = *(v3 + 8 * v2 + 32);
    }

    v0 = v4;
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_23DE38DA8(0, &qword_27E32C628, off_278C01908);
    sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
    sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
    v6 = sub_23E1FDC1C();
    v8 = v7;
    v0 = v0;
    v9 = sub_23DE5E134(v6, v8);
    v17 = OUTLINED_FUNCTION_21_1(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29);

    ++v2;
    if (v17)
    {
      MEMORY[0x23EF045A0]();
      OUTLINED_FUNCTION_18_2();
      if (v18)
      {
        OUTLINED_FUNCTION_10_2();
      }

      sub_23E1FDE3C();
      v24 = v29;
      v2 = v5;
    }
  }

  v19 = *(v27 + 160);

  result = [v19 output];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v0 = result;

  if (!(v24 >> 62))
  {
    sub_23E1FB7BC();
    sub_23E1FE76C();
    v21 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    goto LABEL_15;
  }

LABEL_20:
  v21 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_36_0();
  sub_23E1FE69C();

LABEL_15:

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_36_0();
  sub_23E1FDDCC();
  OUTLINED_FUNCTION_14_1();

  [v0 addItems_];

  OUTLINED_FUNCTION_19();

  return v22();
}

uint64_t sub_23DE67038()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v3[15] = v1;
  v3[16] = v5;
  v3[17] = v0;
  OUTLINED_FUNCTION_24();
  *v6 = *v1;
  *(v7 + 216) = v0;

  OUTLINED_FUNCTION_24();
  v9 = *(v8 + 184);
  v10 = *(v2 + 176);
  if (v0)
  {
    v11 = sub_23DE674B0;
  }

  else
  {
    v11 = sub_23DE6716C;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

id sub_23DE6716C()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v27 = v1;
  v3 = *(v1 + 128);
  v24 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  OUTLINED_FUNCTION_9_1();
  while (v28 != v2)
  {
    if (v26)
    {
      v4 = MEMORY[0x23EF04DD0](v2, v3);
    }

    else
    {
      if (v2 >= *(v25 + 16))
      {
        goto LABEL_19;
      }

      v4 = *(v3 + 8 * v2 + 32);
    }

    v0 = v4;
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_23DE38DA8(0, &qword_27E32C628, off_278C01908);
    sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
    sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
    v6 = sub_23E1FDC1C();
    v8 = v7;
    v0 = v0;
    v9 = sub_23DE5E134(v6, v8);
    v17 = OUTLINED_FUNCTION_21_1(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24, v25, v26, v27, v28, v29);

    ++v2;
    if (v17)
    {
      MEMORY[0x23EF045A0]();
      OUTLINED_FUNCTION_18_2();
      if (v18)
      {
        OUTLINED_FUNCTION_10_2();
      }

      sub_23E1FDE3C();
      v24 = v29;
      v2 = v5;
    }
  }

  v19 = *(v27 + 160);

  result = [v19 output];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v0 = result;

  if (!(v24 >> 62))
  {
    sub_23E1FB7BC();
    sub_23E1FE76C();
    v21 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    goto LABEL_15;
  }

LABEL_20:
  v21 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_36_0();
  sub_23E1FE69C();

LABEL_15:

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_36_0();
  sub_23E1FDDCC();
  OUTLINED_FUNCTION_14_1();

  [v0 addItems_];

  OUTLINED_FUNCTION_19();

  return v22();
}

uint64_t sub_23DE6744C()
{
  OUTLINED_FUNCTION_23();

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DE674B0()
{
  OUTLINED_FUNCTION_23();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_19();

  return v1();
}

id GetWeatherForecastAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id GetWeatherForecastAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider);
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

id GetWeatherForecastAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetWeatherForecastAction.init()()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetWeatherForecastAction____lazy_storage___provider);
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

id GetWeatherForecastAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE678B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C668, &unk_23E2246A8);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C648, &qword_23E224678);
  v2[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B8, &unk_23E224320);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4C0, &unk_23E2246E0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = sub_23E1FC4AC();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE67BBC, 0, 0);
}

uint64_t sub_23DE67BBC()
{
  sub_23E1FC4EC();
  sub_23E1FC4CC();
  sub_23E1FC4BC();
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_23DE67CBC;
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[2];

  return MEMORY[0x282135620](v2, v3, v5, v9, v6, v7, v8, v4);
}

uint64_t sub_23DE67CBC()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v18 = v4[14];
  v5 = v4[13];
  v17 = v4[12];
  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[8];
  v10 = v4[7];
  v11 = v4[6];
  v12 = *v1;
  OUTLINED_FUNCTION_2();
  *v13 = v12;
  *(v14 + 192) = v0;

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v18, v17);
  if (v0)
  {
    v15 = sub_23DE680F0;
  }

  else
  {
    v15 = sub_23DE67EE4;
  }

  return MEMORY[0x2822009F8](v15, 0, 0);
}

uint64_t sub_23DE67EE4()
{
  v17 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v14 = v0[16];
  v15 = v0[19];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  (*(v5 + 16))(v7);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
  (*(v1 + 16))(v6, v2, v3);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v3);
  v9 = sub_23DE69BBC(v7, v6, v8);
  sub_23DE58BD0(v6, &qword_27E32C668, &unk_23E2246A8);
  sub_23DE58BD0(v7, &qword_27E32C648, &qword_23E224678);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v10 = v9;
  }

  v16 = v10;
  sub_23DE6885C(&v16, v14);
  sub_23DE58BD0(v14, &qword_27E32C690, &unk_23E224330);
  (*(v5 + 8))(v15, v4);
  (*(v1 + 8))(v2, v3);
  v11 = v16;

  OUTLINED_FUNCTION_12_1();

  return v12(v11);
}

uint64_t sub_23DE680F0()
{

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE681B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C678, &qword_23E2246B8);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C688, &qword_23E2246D8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C680, &unk_23E2246C0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE683C8, 0, 0);
}

uint64_t sub_23DE683C8()
{
  OUTLINED_FUNCTION_4();
  sub_23E1FC4DC();
  sub_23E1FC4BC();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_23DE68498;
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[7];
  v8 = v0[2];

  return MEMORY[0x282135628](v2, v3, v8, v5, v7, v4, v6);
}

uint64_t sub_23DE68498()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  v10 = v4[5];
  v11 = *v1;
  OUTLINED_FUNCTION_2();
  *v12 = v11;
  *(v13 + 136) = v0;

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v14 = sub_23DE687C8;
  }

  else
  {
    v14 = sub_23DE6865C;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_23DE6865C()
{
  v13 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[4];
  v6 = v0[2];
  (*(v2 + 16))(v5, v1, v4);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v4);
  v7 = sub_23DE68940(v5, v6);
  sub_23DE58BD0(v5, &qword_27E32C678, &qword_23E2246B8);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v8 = v7;
  }

  v12 = v8;
  sub_23DE6885C(&v12, v3);
  sub_23DE58BD0(v3, &qword_27E32C690, &unk_23E224330);
  (*(v2 + 8))(v1, v4);
  v9 = v12;

  OUTLINED_FUNCTION_12_1();

  return v10(v9);
}

uint64_t sub_23DE687C8()
{
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_19();

  return v0();
}

void sub_23DE6885C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a1 >> 62;
  if (v5)
  {
    if (!sub_23E1FE6AC())
    {
      return;
    }
  }

  else if (!*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  sub_23DE59014();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x23EF04DD0](0, v4);
  }

  else
  {
    v6 = *(v4 + 32);
  }

  v7 = v6;
  v8 = sub_23DEBBBE0(a2);

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v4 = sub_23DF31CF4();
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20);
    *((v4 & 0xFFFFFFFFFFFFFF8) + 0x20) = v8;

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DE68940(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = sub_23E1FC3DC();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C678, &qword_23E2246B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_23DE6B980(a1, v15 - v7, &qword_27E32C678, &qword_23E2246B8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C680, &unk_23E2246C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_23DE58BD0(v8, &qword_27E32C678, &qword_23E2246B8);
    return 0;
  }

  else
  {
    v11 = sub_23E1FC67C();
    (*(*(v9 - 8) + 8))(v8, v9);
    v12 = *(v11 + 16);
    if (v12)
    {
      v20 = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v13 = 0;
      v16 = v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v15[1] = v18 + 16;
      v14 = (v18 + 8);
      while (v13 < *(v11 + 16))
      {
        (*(v18 + 16))(v5, v16 + *(v18 + 72) * v13, v3);
        sub_23DE68C28(v5, v17, &v19);
        ++v13;
        (*v14)(v5, v3);
        sub_23E1FE61C();
        sub_23E1FE64C();
        sub_23E1FE65C();
        sub_23E1FE62C();
        if (v12 == v13)
        {

          return v20;
        }
      }

      __break(1u);
      (*v14)(v5, v3);

      __break(1u);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id sub_23DE68C28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v137 = a3;
  v136 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v135 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v134 = &v104 - v7;
  v8 = sub_23E1FC66C();
  v132 = *(v8 - 8);
  v133 = v8;
  MEMORY[0x28223BE20](v8);
  v131 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v130 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v104 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v151 = *(v127 - 8);
  v11 = MEMORY[0x28223BE20](v127);
  v126 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = &v104 - v13;
  v124 = sub_23E1FC64C();
  v123 = *(v124 - 8);
  v14 = MEMORY[0x28223BE20](v124);
  v125 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = &v104 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4F0, &qword_23E224358);
  v116 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v114 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v104 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v150 = *(v143 - 8);
  v20 = MEMORY[0x28223BE20](v143);
  v142 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v140 = &v104 - v22;
  v110 = sub_23E1FC56C();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v104 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v118 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v146 = &v104 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v144 = &v104 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v141 = &v104 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v145 = &v104 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v147 = &v104 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v148 = &v104 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v149 = &v104 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v104 - v48;
  v119 = sub_23E1FC08C();
  MEMORY[0x28223BE20](v119);
  v120 = &v104 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FC36C();
  sub_23E1FC32C();
  sub_23E1FBDCC();
  v51 = *(v25 + 8);
  v51(v30, v24);
  v139 = v28;
  sub_23E1FC32C();
  sub_23E1FBDAC();
  v51(v28, v24);
  v52 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  v117 = v49;
  v138 = v52;
  sub_23E1FBDBC();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v53);
  __swift_storeEnumTagSinglePayload(v149, 1, 1, v53);
  __swift_storeEnumTagSinglePayload(v148, 1, 1, v53);
  sub_23E1FC33C();
  sub_23E1FBDCC();
  v106 = v51;
  v107 = v25 + 8;
  v51(v30, v24);
  v54 = v139;
  sub_23E1FC33C();
  sub_23E1FBDAC();
  v51(v54, v24);
  v55 = v147;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
  v56 = v108;
  sub_23E1FC3CC();
  v112 = sub_23E1FC55C();
  v111 = v57;
  (*(v109 + 8))(v56, v110);
  v58 = v140;
  sub_23E1FC31C();
  v59 = v143;
  sub_23E1FBDCC();
  v61 = v150 + 8;
  v60 = *(v150 + 1);
  v60(v58, v59);
  v150 = v61;
  v62 = v142;
  sub_23E1FC31C();
  sub_23E1FBDAC();
  v60(v62, v59);
  v63 = v145;
  sub_23E1FBDBC();
  v64 = v63;
  v65 = v53;
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v53);
  sub_23E1FC39C();
  sub_23E1FBDCC();
  v66 = v106;
  v106(v30, v24);
  v67 = v139;
  sub_23E1FC39C();
  sub_23E1FBDAC();
  v66(v67, v24);
  v68 = v141;
  sub_23E1FBDBC();
  v69 = v65;
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v65);
  sub_23E1FC3AC();
  v139 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v71 = v113;
  sub_23E1FC3BC();
  v72 = v115;
  sub_23E1FBDCC();
  v73 = *(v116 + 8);
  v73(v71, v72);
  v74 = v114;
  sub_23E1FC3BC();
  sub_23E1FBDAC();
  v73(v74, v72);
  v75 = v144;
  sub_23E1FBDBC();
  v76 = v69;
  v105 = v69;
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v69);
  v77 = v140;
  sub_23E1FC34C();
  v78 = v143;
  sub_23E1FBDCC();
  v60(v77, v78);
  v79 = v142;
  sub_23E1FC34C();
  sub_23E1FBDAC();
  v60(v79, v78);
  v80 = v146;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v76);
  sub_23E1FC35C();
  v150 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v82 = v121;
  v104 = a1;
  sub_23E1FC37C();
  v83 = v122;
  sub_23E1FC62C();
  v84 = *(v123 + 8);
  v85 = v124;
  v84(v82, v124);
  v86 = v127;
  sub_23E1FBDCC();
  v87 = *(v151 + 8);
  v151 += 8;
  v87(v83, v86);
  v88 = v125;
  sub_23E1FC37C();
  v89 = v126;
  sub_23E1FC62C();
  v84(v88, v85);
  sub_23E1FBDAC();
  v87(v89, v86);
  v90 = v118;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v105);
  sub_23E1FC37C();
  v91 = v128;
  sub_23E1FC63C();
  v84(v82, v85);
  v92 = v129;
  sub_23E1FBDCC();
  v94 = v93;
  (*(v130 + 8))(v91, v92);
  v95 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v96 = v131;
  sub_23E1FC38C();
  v97 = sub_23E1FC65C();
  (*(v132 + 8))(v96, v133);
  v98 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v99 = v134;
  v100 = v119;
  __swift_storeEnumTagSinglePayload(v134, 1, 1, v119);
  v101 = v135;
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v100);
  objc_allocWithZone(WFWeatherData);
  v102 = v136;
  result = sub_23DE6B050(v120, v102, 0, 0, v117, v149, v148, v147, v112, v111, v145, v141, v139, v144, v146, v150, v90, v95, v98, v99, v101, 0, 0, 0, 0);
  *v137 = result;
  return result;
}

uint64_t sub_23DE69BBC(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v27 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C640, &qword_23E224670);
  v4 = MEMORY[0x28223BE20](v25);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C648, &qword_23E224678);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_23DE6B980(a1, v22 - v10, &qword_27E32C648, &qword_23E224678);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_23DE58BD0(v11, &qword_27E32C648, &qword_23E224678);
    return 0;
  }

  else
  {
    v14 = sub_23E1FC67C();
    (*(*(v12 - 8) + 8))(v11, v12);
    v15 = *(v14 + 16);
    if (v15)
    {
      v28 = MEMORY[0x277D84F90];
      sub_23E1FE63C();
      v24 = *(v14 + 16);
      result = sub_23E1FC30C();
      v16 = result;
      v17 = 0;
      v18 = *(result - 8);
      v23 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v22[0] = v18 + 32;
      v22[1] = v18 + 16;
      while (v24 != v17)
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_12;
        }

        v19 = v25;
        v20 = *(v25 + 48);
        (*(v18 + 16))(&v8[v20], v23 + *(v18 + 72) * v17, v16);
        *v6 = v17;
        v21 = *(v19 + 48);
        (*(v18 + 32))(v6 + v21, &v8[v20], v16);
        sub_23DE69EEC(v17, v6 + v21, v26, v27);
        sub_23DE58BD0(v6, &qword_27E32C640, &qword_23E224670);
        sub_23E1FE61C();
        sub_23E1FE64C();
        sub_23E1FE65C();
        result = sub_23E1FE62C();
        if (v15 == ++v17)
        {

          return v28;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

id sub_23DE69EEC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v135 = a4;
  v110 = a3;
  v144 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v134 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v133 = &v102 - v7;
  v8 = sub_23E1FC6AC();
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v130 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v129 = &v102 - v11;
  v12 = sub_23E1FC66C();
  v127 = *(v12 - 8);
  v128 = v12;
  MEMORY[0x28223BE20](v12);
  v126 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v102 - v14;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v121 = *(v122 - 8);
  v15 = MEMORY[0x28223BE20](v122);
  v119 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v102 - v17;
  v143 = sub_23E1FC64C();
  v120 = *(v143 - 8);
  v18 = MEMORY[0x28223BE20](v143);
  v116 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v115 = &v102 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v113 = *(v114 - 1);
  v21 = MEMORY[0x28223BE20](v114);
  v112 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v111 = &v102 - v23;
  v109 = sub_23E1FC56C();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v102 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C660, &qword_23E2246A0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v118 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v142 = &v102 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v141 = &v102 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v140 = &v102 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v138 = &v102 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v139 = &v102 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v137 = &v102 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v102 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v102 - v50;
  v52 = sub_23E1FC08C();
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C668, &unk_23E2246A8);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v102 - v56;
  v58 = 0;
  v136 = v54;
  if (!v144)
  {
    sub_23DE6B980(v110, v57, &qword_27E32C668, &unk_23E2246A8);
    v59 = sub_23E1FC4AC();
    if (__swift_getEnumTagSinglePayload(v57, 1, v59) == 1)
    {
      sub_23DE58BD0(v57, &qword_27E32C668, &unk_23E2246A8);
      v58 = 0;
    }

    else
    {
      sub_23E1FC47C();
      v61 = v60;
      (*(*(v59 - 8) + 8))(v57, v59);
      v58 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }
  }

  v110 = v58;
  sub_23E1FC2CC();
  sub_23E1FC29C();
  sub_23E1FBDCC();
  v62 = *(v26 + 8);
  v62(v31, v25);
  sub_23E1FC29C();
  sub_23E1FBDAC();
  v62(v29, v25);
  v144 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  v106 = v51;
  sub_23E1FBDBC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v63);
  sub_23E1FC29C();
  sub_23E1FBDCC();
  v62(v31, v25);
  sub_23E1FC29C();
  sub_23E1FBDAC();
  v62(v29, v25);
  v105 = v49;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v63);
  sub_23E1FC27C();
  sub_23E1FBDCC();
  v62(v31, v25);
  sub_23E1FC27C();
  sub_23E1FBDAC();
  v62(v29, v25);
  v64 = v137;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v63);
  __swift_storeEnumTagSinglePayload(v139, 1, 1, v63);
  v65 = v107;
  sub_23E1FC2FC();
  v104 = sub_23E1FC55C();
  v103 = v66;
  (*(v108 + 8))(v65, v109);
  __swift_storeEnumTagSinglePayload(v138, 1, 1, v63);
  __swift_storeEnumTagSinglePayload(v140, 1, 1, v63);
  v102 = v63;
  v67 = __swift_storeEnumTagSinglePayload(v141, 1, 1, v63);
  v68 = v111;
  MEMORY[0x23EF02A70](v67);
  v69 = v114;
  sub_23E1FBDCC();
  v70 = *(v113 + 8);
  v71 = v70(v68, v69);
  v72 = v112;
  MEMORY[0x23EF02A70](v71);
  sub_23E1FBDAC();
  v70(v72, v69);
  v73 = v142;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v63);
  sub_23E1FC2AC();
  v114 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v75 = v115;
  sub_23E1FC2DC();
  v76 = v117;
  sub_23E1FC62C();
  v77 = *(v120 + 8);
  v77(v75, v143);
  v78 = v122;
  sub_23E1FBDCC();
  v79 = *(v121 + 8);
  v79(v76, v78);
  v80 = v116;
  sub_23E1FC2DC();
  v81 = v119;
  sub_23E1FC62C();
  v82 = v80;
  v83 = v143;
  v77(v82, v143);
  sub_23E1FBDAC();
  v79(v81, v78);
  v84 = v118;
  sub_23E1FBDBC();
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v102);
  sub_23E1FC2DC();
  v85 = v123;
  sub_23E1FC63C();
  v77(v75, v83);
  v86 = v125;
  sub_23E1FBDCC();
  v88 = v87;
  (*(v124 + 8))(v85, v86);
  v89 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v90 = v126;
  sub_23E1FC2EC();
  v91 = sub_23E1FC65C();
  (*(v127 + 8))(v90, v128);
  v92 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v93 = v129;
  sub_23E1FC2BC();
  v94 = v133;
  sub_23E1FC69C();
  v95 = v132;
  v96 = *(v131 + 8);
  v96(v93, v132);
  v97 = v130;
  sub_23E1FC2BC();
  v98 = v134;
  sub_23E1FC68C();
  v96(v97, v95);
  v99 = objc_allocWithZone(WFWeatherData);
  v100 = v135;
  return sub_23DE6B050(v136, v100, 0, 0, v106, v105, v137, v139, v104, v103, v138, v140, v110, v141, v142, v114, v84, v89, v92, v94, v98, 0, 0, 0, 0);
}

uint64_t sub_23DE6AE34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE6AECC;

  return sub_23DE678B0(a1);
}

uint64_t sub_23DE6AECC()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_12_1();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_23DE6AFB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE6B9E8;

  return sub_23DE681B8(a1);
}

id sub_23DE6B050(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v56 = sub_23E1FC02C();
  if (a4)
  {
    v55 = sub_23E1FDBDC();
  }

  else
  {
    v55 = 0;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  OUTLINED_FUNCTION_0_6(a5);
  if (v31)
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v32 + 8))(a5, v30);
  }

  OUTLINED_FUNCTION_0_6(a6);
  if (v31)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v33 + 8))(a6, v30);
  }

  OUTLINED_FUNCTION_0_6(a7);
  if (v31)
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v34 + 8))(a7, v30);
  }

  OUTLINED_FUNCTION_0_6(a8);
  if (v31)
  {
    v64 = 0;
  }

  else
  {
    v64 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v35 + 8))(a8, v30);
  }

  if (a10)
  {
    v63 = sub_23E1FDBDC();
  }

  else
  {
    v63 = 0;
  }

  OUTLINED_FUNCTION_0_6(a11);
  if (v31)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v36 + 8))(a11, v30);
  }

  OUTLINED_FUNCTION_0_6(a12);
  if (v31)
  {
    v60 = 0;
  }

  else
  {
    v60 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v37 + 8))(a12, v30);
  }

  OUTLINED_FUNCTION_0_6(a14);
  if (v31)
  {
    v58 = 0;
  }

  else
  {
    v58 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v38 + 8))(a14, v30);
  }

  OUTLINED_FUNCTION_0_6(a15);
  if (v31)
  {
    v61 = 0;
  }

  else
  {
    v61 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v39 + 8))(a15, v30);
  }

  OUTLINED_FUNCTION_0_6(a17);
  if (v31)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_23E1FBD8C();
    OUTLINED_FUNCTION_1_5();
    (*(v40 + 8))(a17, v30);
  }

  v41 = sub_23E1FC08C();
  v65 = 0;
  if (__swift_getEnumTagSinglePayload(a20, 1, v41) != 1)
  {
    v65 = sub_23E1FC02C();
    OUTLINED_FUNCTION_21();
    (*(v42 + 8))(a20, v41);
  }

  if (__swift_getEnumTagSinglePayload(a21, 1, v41) == 1)
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_23E1FC02C();
    OUTLINED_FUNCTION_21();
    (*(v44 + 8))(a21, v41);
  }

  if (a24)
  {
    v45 = sub_23E1FDBDC();
  }

  else
  {
    v45 = 0;
  }

  if (a25)
  {
    sub_23DE38DA8(0, &qword_27E32C670, off_278C018F0);
    v46 = sub_23E1FDDCC();
  }

  else
  {
    v46 = 0;
  }

  v53 = [v52 initWithDate:v56 location:a2 userTemperatureUnitString:v55 temperature:v51 highTemperature:v50 lowTemperature:v49 feelsLikeTemperature:v64 localizedConditionString:v63 visibility:v62 dewpoint:v60 humidity:a13 pressure:v58 precipitationAmount:v61 precipitationChance:a16 windSpeed:v59 windDirection:a18 uvIndex:a19 sunriseTime:v65 sunsetTime:v43 localizedAirQualityIndex:a22 localizedAirQualityCategory:v45 pollutants:v46];

  OUTLINED_FUNCTION_21();
  (*(v47 + 8))(a1);
  return v53;
}

uint64_t dispatch thunk of WFWeatherForecastProvider.fetchDailyForecast(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_2(a1, a2, a3);
  OUTLINED_FUNCTION_15_2();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_6_4(v4);

  return v6(v5);
}

uint64_t sub_23DE6B794()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_12_1();

  return v5(v2);
}

uint64_t dispatch thunk of WFWeatherForecastProvider.fetchHourlyForecast(location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17_2(a1, a2, a3);
  OUTLINED_FUNCTION_15_2();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v5 = OUTLINED_FUNCTION_6_4(v4);

  return v6(v5);
}

uint64_t sub_23DE6B980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_21();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_23E1FDE0C();
}

id OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return sub_23DE5E198(va, a1, v15);
}

id sub_23DE6BB34()
{
  v0 = sub_23E1FCC8C();
  v177 = *(v0 - 8);
  v178 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v176 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v175 = &v167 - v4;
  MEMORY[0x28223BE20](v3);
  v174 = &v167 - v5;
  v6 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v13 = *MEMORY[0x277D7CB18];
  v14 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24EF80;
  v15 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = v13;
  v17 = v15;
  v18 = sub_23E1FDCBC("portrait|landscape|degrees|rotation|orientation|photos", 54);
  v20 = v19;
  sub_23E1FDCBC("portrait|landscape|degrees|rotation|orientation|photos", 54);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v185 = qword_280DAE278;
  v21 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v22 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v23 = v20;
  v24 = v11;
  sub_23DE477A0(v18, v23);
  v26 = v25;
  v27 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v184 = v27;
  *(inited + 80) = v26;
  v28 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v27;
  *(inited + 112) = v28;
  v183 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_23E222340;
  v30 = v8;
  v31 = *MEMORY[0x277D7CC30];
  *(v29 + 32) = *MEMORY[0x277D7CC30];
  v32 = v28;
  v33 = v31;
  v34 = sub_23E1FDCBC("Turns an image or video clockwise by a particular number of degrees.", 68);
  v36 = v35;
  sub_23E1FDCBC("Turns an image or video clockwise by a particular number of degrees.", 68);
  v180 = v24;
  sub_23E1FC14C();
  v37 = [v185 bundleURL];
  v186 = v30;
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v34, v36);
  *(v29 + 64) = v184;
  *(v29 + 40) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v40 = sub_23E1FDABC();
  v41 = v183;
  *(inited + 120) = sub_23DF3BE54(v40);
  v42 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v41;
  *(inited + 152) = v42;
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v43 = *MEMORY[0x277D7CB60];
  v44 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v43;
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x800000023E24F030;
  v45 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v44;
  *(inited + 232) = v45;
  v46 = v44;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v47 = swift_initStackObject();
  v173 = xmmword_23E222350;
  *(v47 + 16) = xmmword_23E222350;
  *(v47 + 32) = 0x656C7069746C754DLL;
  *(v47 + 40) = 0xE800000000000000;
  v48 = MEMORY[0x277D839B0];
  *(v47 + 48) = 1;
  *(v47 + 72) = v48;
  strcpy((v47 + 80), "ParameterKey");
  *(v47 + 93) = 0;
  *(v47 + 94) = -5120;
  *(v47 + 96) = 0x6567616D494657;
  *(v47 + 104) = 0xE700000000000000;
  *(v47 + 120) = v46;
  *(v47 + 128) = 0x6465726975716552;
  *(v47 + 136) = 0xE800000000000000;
  *(v47 + 144) = 1;
  *(v47 + 168) = v48;
  *(v47 + 176) = 0x7365707954;
  v49 = v48;
  *(v47 + 184) = 0xE500000000000000;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v47 + 216) = v183;
  *(v47 + 192) = &unk_285023538;
  v50 = v42;
  v51 = v43;
  v52 = v45;
  v53 = sub_23E1FDABC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v182 = v54;
  *(inited + 240) = v53;
  v55 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v54;
  *(inited + 272) = v55;
  *(inited + 280) = 0;
  v56 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v49;
  *(inited + 312) = v56;
  v57 = v55;
  v58 = v56;
  v59 = sub_23E1FDCBC("Rotate Image/Video (Action Name)", 32);
  v61 = v60;
  sub_23E1FDCBC("Rotate Image/Video", 18);
  sub_23E1FC14C();
  v62 = v185;
  v63 = [v185 bundleURL];
  sub_23E1FBF9C();

  v64 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v59, v61);
  *(inited + 320) = v65;
  v66 = *MEMORY[0x277D7CDD0];
  *(inited + 344) = v184;
  *(inited + 352) = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = v173;
  *(v67 + 32) = 0x75736F6C63736944;
  *(v67 + 40) = 0xEF6C6576654C6572;
  *(v67 + 48) = 0x63696C627550;
  *(v67 + 56) = 0xE600000000000000;
  *(v67 + 72) = MEMORY[0x277D837D0];
  *(v67 + 80) = 0x656C7069746C754DLL;
  *(v67 + 88) = 0xE800000000000000;
  *(v67 + 96) = 1;
  *(v67 + 120) = MEMORY[0x277D839B0];
  *(v67 + 128) = 0x614E74757074754FLL;
  *(v67 + 136) = 0xEA0000000000656DLL;
  v68 = v66;
  v69 = sub_23E1FDCBC("Rotated Image/Video (Default Output Name)", 41);
  v71 = v70;
  sub_23E1FDCBC("Rotated Image/Video", 19);
  sub_23E1FC14C();
  v72 = [v62 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v69, v71);
  *(v67 + 144) = v74;
  *(v67 + 168) = v184;
  *(v67 + 176) = 0x7365707954;
  *(v67 + 216) = v183;
  *(v67 + 184) = 0xE500000000000000;
  *(v67 + 192) = &unk_285023578;
  v75 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v76 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v182;
  *(inited + 392) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_23E2246F0;
  v181 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_23E224700;
  v78 = *MEMORY[0x277D7CDD8];
  *(v77 + 32) = *MEMORY[0x277D7CDD8];
  v79 = MEMORY[0x277D7CDF8];
  *(v77 + 40) = 1;
  v80 = *v79;
  *(v77 + 64) = MEMORY[0x277D839B0];
  *(v77 + 72) = v80;
  v81 = MEMORY[0x277D7CE00];
  *(v77 + 80) = 0xD000000000000016;
  *(v77 + 88) = 0x800000023E24F0F0;
  v82 = *v81;
  *(v77 + 104) = v75;
  *(v77 + 112) = v82;
  v83 = MEMORY[0x277D83B88];
  *(v77 + 120) = 90;
  v84 = *MEMORY[0x277D7CE70];
  *(v77 + 144) = v83;
  *(v77 + 152) = v84;
  *(v77 + 160) = 0xD000000000000013;
  *(v77 + 168) = 0x800000023E24F110;
  v85 = *MEMORY[0x277D7CE80];
  *(v77 + 184) = v75;
  *(v77 + 192) = v85;
  v86 = v80;
  v87 = v84;
  v88 = v85;
  v170 = v86;
  v169 = v87;
  v168 = v88;
  v89 = v76;
  v90 = v78;
  v91 = v82;
  v172 = sub_23E1FDCBC("Degrees (WFImageRotateAmount)", 29);
  v93 = v92;
  sub_23E1FDCBC("Degrees", 7);
  sub_23E1FC14C();
  v94 = v185;
  v95 = [v185 bundleURL];
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v172, v93);
  *(v77 + 200) = v97;
  v98 = *MEMORY[0x277D7CEA8];
  v99 = v184;
  *(v77 + 224) = v184;
  *(v77 + 232) = v98;
  v167 = v98;
  v100 = sub_23E1FDCBC("90 (WFImageRotateAmount)", 24);
  v171 = v101;
  v172 = v100;
  sub_23E1FDCBC("90", 2);
  sub_23E1FC14C();
  v102 = [v94 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v172, v171);
  *(v77 + 240) = v104;
  v105 = *MEMORY[0x277D7CF10];
  *(v77 + 264) = v99;
  *(v77 + 272) = v105;
  v106 = MEMORY[0x277D837D0];
  *(v77 + 304) = MEMORY[0x277D837D0];
  *(v77 + 280) = 0x7468676952;
  *(v77 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v172 = v107;
  v171 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v108 = v105;
  v109 = sub_23E1FDABC();
  v110 = sub_23DF3BE9C(v109);
  *(v182 + 32) = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_23E224710;
  *(v111 + 32) = v170;
  *(v111 + 40) = 0xD000000000000019;
  *(v111 + 48) = 0x800000023E24F180;
  v112 = v168;
  v113 = v169;
  *(v111 + 64) = v106;
  *(v111 + 72) = v113;
  *(v111 + 80) = 0x6567616D494657;
  *(v111 + 88) = 0xE700000000000000;
  *(v111 + 104) = v106;
  *(v111 + 112) = v112;
  *&v173 = sub_23E1FDCBC("Image (WFImage)", 15);
  v115 = v114;
  sub_23E1FDCBC("Image", 5);
  sub_23E1FC14C();
  v116 = v185;
  v117 = [v185 bundleURL];
  sub_23E1FBF9C();

  v118 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v119 = v173;
  *&v173 = inited;
  sub_23DE477A0(v119, v115);
  *(v111 + 120) = v120;
  v121 = v184;
  v122 = v167;
  *(v111 + 144) = v184;
  *(v111 + 152) = v122;
  v123 = sub_23E1FDCBC("Image (WFImage)", 15);
  v170 = v124;
  sub_23E1FDCBC("Image", 5);
  sub_23E1FC14C();
  v125 = [v116 bundleURL];
  sub_23E1FBF9C();

  v126 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v123, v170);
  *(v111 + 160) = v127;
  v128 = *MEMORY[0x277D7CEB8];
  *(v111 + 184) = v121;
  *(v111 + 192) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_23E222380;
  v130 = v128;
  v131 = v174;
  sub_23E1FCC5C();
  v132 = sub_23E1FCBEC();
  v134 = v133;
  v135 = *(v177 + 8);
  v136 = v131;
  v137 = v178;
  v135(v136, v178);
  *(v129 + 32) = v132;
  *(v129 + 40) = v134;
  v138 = v175;
  sub_23E1FCC7C();
  v139 = sub_23E1FCBEC();
  v141 = v140;
  v135(v138, v137);
  *(v129 + 48) = v139;
  *(v129 + 56) = v141;
  v142 = v176;
  sub_23E1FCC6C();
  v143 = sub_23E1FCBEC();
  v145 = v144;
  v135(v142, v137);
  *(v129 + 64) = v143;
  *(v129 + 72) = v145;
  *(v111 + 224) = v183;
  *(v111 + 200) = v129;
  v146 = sub_23E1FDABC();
  v147 = sub_23DF3BE9C(v146);
  v148 = v182;
  *(v182 + 40) = v147;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v150 = v173;
  *(v173 + 400) = v148;
  v151 = *MEMORY[0x277D7CB98];
  *(v150 + 424) = v149;
  *(v150 + 432) = v151;
  v152 = v151;
  v153 = sub_23E1FDCBC("Rotate ${WFImage} by ${WFImageRotateAmount} degrees (Parameter Summary)", 71);
  v155 = v154;
  sub_23E1FDCBC("Rotate ${WFImage} by ${WFImageRotateAmount} degrees", 51);
  sub_23E1FC14C();
  v156 = [v185 bundleURL];
  sub_23E1FBF9C();

  v157 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v153, v155);
  v159 = v158;
  v160 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v161 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v162 = MEMORY[0x277D7CB78];
  *(v150 + 440) = v160;
  v163 = *v162;
  *(v150 + 464) = v161;
  *(v150 + 472) = v163;
  *(v150 + 504) = MEMORY[0x277D839B0];
  *(v150 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v164 = v163;
  v165 = sub_23E1FDABC();
  return sub_23DF3BF9C(v165);
}

id sub_23DE6CCB4()
{
  v74 = sub_23E1FC77C();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = (&v68 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v4 - 8);
  v72 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24F270;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("standby", 7);
  v13 = v12;
  sub_23E1FDCBC("standby", 7);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v76 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v75 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v69 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  v24 = sub_23E1FDCBC("Put this Mac to sleep.", 22);
  v26 = v25;
  sub_23E1FDCBC("Put this Mac to sleep.", 22);
  sub_23E1FC14C();
  v27 = [v76 bundleURL];
  v70 = v3;
  sub_23E1FBF9C();

  v28 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v24, v26);
  *(v20 + 64) = v75;
  *(v20 + 40) = v29;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v30 = sub_23E1FDABC();
  v31 = v69;
  *(inited + 120) = sub_23DF3BE54(v30);
  v32 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v31;
  *(inited + 152) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_2850235B8;
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v33;
  *(inited + 192) = v34;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v35;
  *(inited + 240) = 0x656C737265776F70;
  *(inited + 248) = 0xEA00000000007065;
  v37 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v36;
  *(inited + 272) = v37;
  v38 = v32;
  v39 = v34;
  v40 = v35;
  v41 = v37;
  v42 = sub_23E1FDCBC("Sleep (Action Name)", 19);
  v44 = v43;
  sub_23E1FDCBC("Sleep", 5);
  sub_23E1FC14C();
  v45 = v76;
  v46 = [v76 bundleURL];
  sub_23E1FBF9C();

  v47 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v42, v44);
  *(inited + 280) = v48;
  v49 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v75;
  *(inited + 312) = v49;
  v50 = v49;
  v51 = sub_23E1FDCBC("Put this Mac to sleep (Parameter Summary)", 41);
  v53 = v52;
  sub_23E1FDCBC("Put this Mac to sleep", 21);
  sub_23E1FC14C();
  v54 = [v45 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v51, v53);
  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v59 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v58;
  v60 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v59;
  *(inited + 352) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_23E2235B0;
  v63 = v73;
  v62 = v74;
  *v73 = 2;
  (*(v71 + 104))(v63, *MEMORY[0x277D7BEE0], v62);
  v64 = objc_allocWithZone(sub_23E1FC79C());
  v65 = v60;
  *(v61 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v61;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v66 = sub_23E1FDABC();
  return sub_23DF3BF9C(v66);
}

id sub_23DE6D4A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v0 setMaxConcurrentOperationCount_];
  result = [v0 setQualityOfService_];
  qword_27E33E130 = v0;
  return result;
}

uint64_t sub_23DE6D508(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23E1FD03C();
  v2[4] = v3;
  OUTLINED_FUNCTION_8(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = sub_23E1FC08C();
  v2[8] = v5;
  OUTLINED_FUNCTION_8(v5);
  v2[9] = v6;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE6D638, v1, 0);
}

uint64_t sub_23DE6D638()
{
  v44 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  sub_23E1FC06C();
  sub_23E1FC01C();
  v4 = *(v3 + 8);
  *(v0 + 104) = v4;
  *(v0 + 112) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  if ([objc_opt_self() isActivityAvailable])
  {
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 64);
    v42 = [objc_allocWithZone(MEMORY[0x277CC1CD0]) init];
    *(v0 + 120) = v42;
    sub_23E1FCB9C();
    (*(v7 + 16))(v6, v5, v8);
    v9 = sub_23E1FD02C();
    v10 = sub_23E1FE1AC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    if (v11)
    {
      v41 = v10;
      v17 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v17 = 136315138;
      sub_23DE6E984(&qword_27E32C6A0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v38 = v13;
      v39 = v15;
      v18 = sub_23E1FE71C();
      v20 = v19;
      v4(v12, v14);
      v21 = sub_23DE56B40(v18, v20, &v43);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_23DE30000, v9, v41, "Result due at %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23EF074C0](v40, -1, -1);
      MEMORY[0x23EF074C0](v17, -1, -1);

      (*(v16 + 8))(v38, v39);
    }

    else
    {

      v4(v12, v14);
      (*(v16 + 8))(v13, v15);
    }

    v33 = *(v0 + 96);
    v34 = *(v0 + 24);
    v35 = sub_23DE6E984(&qword_27E32C698, v22, type metadata accessor for ActivityMonitor, &unk_23E224740);
    v36 = swift_task_alloc();
    *(v0 + 128) = v36;
    *(v36 + 16) = v42;
    *(v36 + 24) = v33;
    v37 = swift_task_alloc();
    *(v0 + 136) = v37;
    *v37 = v0;
    v37[1] = sub_23DE6DAE0;

    return MEMORY[0x2822007B8](v0 + 144, v34, v35, 0xD000000000000011, 0x800000023E24F350, sub_23DE6E97C, v36, &type metadata for PhysicalActivity);
  }

  else
  {
    sub_23E1FCB9C();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1AC();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 40);
    v26 = *(v0 + 48);
    v28 = *(v0 + 32);
    if (v25)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23DE30000, v23, v24, "The Core Motion Activity Manager isn't available, returning .unknown.", v29, 2u);
      MEMORY[0x23EF074C0](v29, -1, -1);
    }

    (*(v27 + 8))(v26, v28);
    OUTLINED_FUNCTION_2_6();
    **(v0 + 16) = 0;
    v30(v23);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_23DE6DAE0()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_23DE6DC0C, v1, 0);
}

uint64_t sub_23DE6DC0C()
{
  OUTLINED_FUNCTION_2_6();
  **(v1 + 16) = v2;
  v3(v0);

  v4 = *(v1 + 8);

  return v4();
}

void sub_23DE6DCC0(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a2;
  v31 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  v4 = *(v34 - 8);
  v32 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v5;
  v6 = sub_23E1FC08C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = v8;
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E1FD03C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FCB9C();
  v13 = sub_23E1FD02C();
  v14 = sub_23E1FE1AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a3;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_23DE30000, v13, v14, "Starting activity updates.", v15, 2u);
    v17 = v16;
    a3 = v28;
    MEMORY[0x23EF074C0](v17, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_27E32B8F0 != -1)
  {
    swift_once();
  }

  v28 = qword_27E33E130;
  v18 = v30;
  (*(v7 + 16))(v30, a3, v6);
  v19 = v33;
  v20 = v34;
  (*(v4 + 16))(v33, v31, v34);
  v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v22 = (v29 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v4 + 80) + v22 + 8) & ~*(v4 + 80);
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v21, v18, v6);
  v25 = v35;
  *(v24 + v22) = v35;
  (*(v4 + 32))(v24 + v23, v19, v20);
  aBlock[4] = sub_23DE6E9CC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DE6E894;
  aBlock[3] = &block_descriptor_2;
  v26 = _Block_copy(aBlock);
  v27 = v25;

  [v27 startActivityUpdatesToQueue:v28 withHandler:v26];
  _Block_release(v26);
}

void sub_23DE6E0D4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v73 = a2;
  v74 = sub_23E1FC08C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FD03C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v68 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v78 = &v68 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v70 = &v68 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v68 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v68 - v23;
  sub_23E1FCB9C();
  v25 = sub_23E1FD02C();
  v26 = sub_23E1FE1AC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v69 = v22;
    v28 = v13;
    v29 = v10;
    v30 = v7;
    v31 = v6;
    v32 = v27;
    *v27 = 0;
    _os_log_impl(&dword_23DE30000, v25, v26, "Received current activity.", v27, 2u);
    v33 = v32;
    v6 = v31;
    v7 = v30;
    v10 = v29;
    v13 = v28;
    v22 = v69;
    MEMORY[0x23EF074C0](v33, -1, -1);
  }

  v36 = *(v7 + 8);
  v34 = (v7 + 8);
  v35 = v36;
  v36(v24, v6);
  if (!a1)
  {
    sub_23E1FCB9C();
    v64 = sub_23E1FD02C();
    v65 = sub_23E1FE1BC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_23DE30000, v64, v65, "The CheckMotionActivity action received a nil-value activity. Waiting to see if we get a valid value.", v66, 2u);
      MEMORY[0x23EF074C0](v66, -1, -1);
    }

    v67 = v22;
    goto LABEL_25;
  }

  v37 = a1;
  if (CMMotionActivity.isEmpty.getter())
  {
    sub_23E1FCB9C();
    v38 = sub_23E1FD02C();
    v39 = sub_23E1FE1AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_23DE30000, v38, v39, "Received empty activity info.", v40, 2u);
      MEMORY[0x23EF074C0](v40, -1, -1);
    }

    v35(v77, v6);
    v41 = v71;
    sub_23E1FC06C();
    v42 = sub_23E1FC04C();
    (*(v72 + 8))(v41, v74);
    if (v42)
    {
      v43 = v70;
      sub_23E1FCB9C();
      v44 = sub_23E1FD02C();
      v45 = sub_23E1FE1AC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_23DE30000, v44, v45, "Waiting for a better answer.", v46, 2u);
        MEMORY[0x23EF074C0](v46, -1, -1);
      }

      else
      {
      }

      v67 = v43;
LABEL_25:
      v35(v67, v6);
      return;
    }
  }

  [v75 stopActivityUpdates];
  sub_23E1FCB9C();
  v47 = sub_23E1FD02C();
  v48 = sub_23E1FE1AC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_23DE30000, v47, v48, "Stopped activity updates.", v49, 2u);
    MEMORY[0x23EF074C0](v49, -1, -1);
  }

  v35(v78, v6);
  if (qword_27E32B8F0 != -1)
  {
    swift_once();
  }

  [qword_27E33E130 cancelAllOperations];
  sub_23E1FCB9C();
  v50 = sub_23E1FD02C();
  v51 = sub_23E1FE1AC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_23DE30000, v50, v51, "Cancelled activity monitor queue.", v52, 2u);
    MEMORY[0x23EF074C0](v52, -1, -1);
  }

  v35(v13, v6);
  v53.super.super.isa = v37;
  isa = v53.super.super.isa;
  PhysicalActivity.init(motionActivity:)(v53);
  v55 = v82;
  sub_23E1FCB9C();
  v56 = sub_23E1FD02C();
  v57 = sub_23E1FE1AC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v78 = v6;
    v60 = v59;
    v80 = v59;
    *v58 = 136315138;
    v79 = v55;
    v61 = sub_23E1FDC7C();
    v77 = v34;
    v63 = sub_23DE56B40(v61, v62, &v80);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_23DE30000, v56, v57, "Resolved activity: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x23EF074C0](v60, -1, -1);
    MEMORY[0x23EF074C0](v58, -1, -1);

    v35(v10, v78);
  }

  else
  {

    v35(v10, v6);
  }

  v81 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  sub_23E1FDE8C();
}

void sub_23DE6E894(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_23E1FB7CC();
  v4 = a2;
  v3(a2);
}

uint64_t sub_23DE6E900()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23DE6E984(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_23DE6E9CC(void *a1)
{
  v3 = sub_23E1FC08C();
  OUTLINED_FUNCTION_8(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768) - 8);
  v9 = *(v1 + v7);
  v10 = v1 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_23DE6E0D4(a1, v1 + v5, v9, v10);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

id sub_23DE6EB14()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x800000023E24F3C0;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("announce|homepod|notif|home|family|audio|broadcast|message|speak|speech", 71);
  v14 = v13;
  sub_23E1FDCBC("announce|homepod|notif|home|family|audio|broadcast|message|speak|speech", 71);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v144 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  v142 = v2;
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v143 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = v20;
  v22 = sub_23E1FDABC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v22;
  v24 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  v141 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_23E222370;
  v26 = *MEMORY[0x277D7CC20];
  *(v25 + 32) = *MEMORY[0x277D7CC20];
  v27 = v24;
  v28 = v26;
  v29 = sub_23E1FDCBC("This action accepts both text and media files as input. Media files will be broadcast as they are. When text is provided, it will be first converted to audio using the current Siri language and voice. You can also use the Make Spoken Audio From Text action to customize the voice parameters.", 291);
  v140 = v30;
  sub_23E1FDCBC("This action accepts both text and media files as input. Media files will be broadcast as they are. When text is provided, it will be first converted to audio using the current Siri language and voice. You can also use the Make Spoken Audio From Text action to customize the voice parameters.", 291);
  v31 = v5;
  sub_23E1FC14C();
  v32 = v144;
  v33 = [v144 bundleURL];
  sub_23E1FBF9C();

  v34 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v29, v140);
  *(v25 + 40) = v35;
  v36 = *MEMORY[0x277D7CC30];
  v37 = v143;
  *(v25 + 64) = v143;
  *(v25 + 72) = v36;
  v38 = v36;
  v140 = sub_23E1FDCBC("Announces a message passed as input using Intercom.", 51);
  v40 = v39;
  sub_23E1FDCBC("Announces a message passed as input using Intercom.", 51);
  v139 = v31;
  sub_23E1FC14C();
  v41 = [v32 bundleURL];
  sub_23E1FBF9C();

  v42 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v140, v40);
  *(v25 + 104) = v37;
  *(v25 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v44 = sub_23E1FDABC();
  v45 = v141;
  *(inited + 160) = sub_23DF3BE54(v44);
  v46 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v45;
  *(inited + 192) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285023628;
  v48 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v47;
  *(inited + 232) = v48;
  *(inited + 240) = 0x65676E61724FLL;
  *(inited + 248) = 0xE600000000000000;
  v49 = *MEMORY[0x277D7CB60];
  v50 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v49;
  *(inited + 280) = 0x6D726F6665766177;
  *(inited + 288) = 0xE800000000000000;
  v51 = *MEMORY[0x277D7CCC0];
  *(inited + 304) = v50;
  *(inited + 312) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_23E222350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x277D839B0];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = v50;
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 216) = v47;
  *(v52 + 184) = 0xE500000000000000;
  *(v52 + 192) = &unk_285023658;
  v54 = v46;
  v55 = v48;
  v56 = v49;
  v57 = v51;
  v58 = sub_23E1FDABC();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v58;
  v60 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v59;
  *(inited + 352) = v60;
  v61 = v60;
  v62 = sub_23E1FDCBC("Intercom (Action Name)", 22);
  v64 = v63;
  sub_23E1FDCBC("Intercom", 8);
  sub_23E1FC14C();
  v65 = [v144 bundleURL];
  sub_23E1FBF9C();

  v66 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v62, v64);
  *(inited + 360) = v67;
  v68 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v143;
  *(inited + 392) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_23E2246F0;
  v140 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_23E222380;
  v70 = *MEMORY[0x277D7CDF8];
  *(v69 + 32) = *MEMORY[0x277D7CDF8];
  *(v69 + 40) = 0xD000000000000019;
  v71 = MEMORY[0x277D7CE70];
  *(v69 + 48) = 0x800000023E24F5C0;
  v72 = *v71;
  *(v69 + 64) = v50;
  *(v69 + 72) = v72;
  *(v69 + 80) = 0x656D6F484657;
  *(v69 + 88) = 0xE600000000000000;
  v73 = *MEMORY[0x277D7CE80];
  *(v69 + 104) = v50;
  *(v69 + 112) = v73;
  v74 = v70;
  v75 = v72;
  v76 = v73;
  v132 = v74;
  v135 = v75;
  v134 = v76;
  v77 = v68;
  v78 = sub_23E1FDCBC("Home (WFHome)", 13);
  v80 = v79;
  sub_23E1FDCBC("Home", 4);
  sub_23E1FC14C();
  v81 = [v144 bundleURL];
  sub_23E1FBF9C();

  v82 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v78, v80);
  *(v69 + 144) = v143;
  *(v69 + 120) = v83;
  _s3__C3KeyVMa_0(0);
  v137 = v84;
  v136 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v85 = sub_23E1FDABC();
  v86 = sub_23DF3BE9C(v85);
  *(v141 + 32) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_23E224700;
  *(v87 + 32) = v132;
  *(v87 + 40) = 0xD000000000000014;
  *(v87 + 48) = 0x800000023E24EAF0;
  v88 = *MEMORY[0x277D7CE08];
  *(v87 + 64) = MEMORY[0x277D837D0];
  *(v87 + 72) = v88;
  v89 = v88;
  v133 = sub_23E1FDCBC("The message to announce using Intercom. Any input exceeding 60 seconds in duration will be trimmed. (WFInput)", 109);
  v91 = v90;
  sub_23E1FDCBC("The message to announce using Intercom. Any input exceeding 60 seconds in duration will be trimmed.", 99);
  sub_23E1FC14C();
  v92 = [v144 bundleURL];
  sub_23E1FBF9C();

  v93 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v133, v91);
  *(v87 + 80) = v94;
  v95 = v143;
  v96 = v135;
  *(v87 + 104) = v143;
  *(v87 + 112) = v96;
  *(v87 + 120) = 0x7475706E494657;
  *(v87 + 128) = 0xE700000000000000;
  v97 = v134;
  *(v87 + 144) = MEMORY[0x277D837D0];
  *(v87 + 152) = v97;
  v98 = sub_23E1FDCBC("Message (WFInput)", 17);
  v134 = v99;
  v135 = v98;
  sub_23E1FDCBC("Message", 7);
  sub_23E1FC14C();
  v100 = v144;
  v101 = [v144 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v135, v134);
  *(v87 + 160) = v103;
  v104 = *MEMORY[0x277D7CDE0];
  *(v87 + 184) = v95;
  *(v87 + 192) = v104;
  *(v87 + 200) = 1;
  v105 = *MEMORY[0x277D7CEA8];
  *(v87 + 224) = MEMORY[0x277D839B0];
  *(v87 + 232) = v105;
  v106 = v104;
  v107 = v105;
  v135 = sub_23E1FDCBC("Dinner is ready! (WFInput)", 26);
  v109 = v108;
  sub_23E1FDCBC("Dinner is ready!", 16);
  sub_23E1FC14C();
  v110 = [v100 bundleURL];
  sub_23E1FBF9C();

  v111 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v135, v109);
  v112 = MEMORY[0x277D7CEC0];
  *(v87 + 240) = v113;
  v114 = *v112;
  *(v87 + 264) = v143;
  *(v87 + 272) = v114;
  *(v87 + 304) = MEMORY[0x277D839B0];
  *(v87 + 280) = 1;
  v115 = v114;
  v116 = sub_23E1FDABC();
  v117 = sub_23DF3BE9C(v116);
  v118 = v141;
  *(v141 + 40) = v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v118;
  v120 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v119;
  *(inited + 432) = v120;
  v121 = v120;
  v122 = sub_23E1FDCBC("Intercom ${WFInput} to ${WFHome} (Parameter Summary)", 52);
  v124 = v123;
  sub_23E1FDCBC("Intercom ${WFInput} to ${WFHome}", 32);
  sub_23E1FC14C();
  v125 = [v144 bundleURL];
  sub_23E1FBF9C();

  v126 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v122, v124);
  v128 = v127;
  v129 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 464) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v129;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v130 = sub_23E1FDABC();
  return sub_23DF3BF9C(v130);
}

unint64_t sub_23DE6F9A0()
{
  result = qword_280DAF298;
  if (!qword_280DAF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF298);
  }

  return result;
}

uint64_t sub_23DE6F9F4(char a1)
{
  v3 = sub_23E1FC1DC();
  v4 = OUTLINED_FUNCTION_25(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v5 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_3();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_280DB7710);
  (*(v7 + 16))(v1, v11, v5);
  sub_23E1FC19C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE6FC14(char a1)
{
  sub_23E1FE84C();
  MEMORY[0x23EF05040](a1 & 1);
  return sub_23E1FE87C();
}

uint64_t sub_23DE6FC78(uint64_t a1)
{
  v2 = *v1;
  sub_23E1FE84C();
  MEMORY[0x23EF05040](v2);
  return sub_23E1FE87C();
}

uint64_t sub_23DE6FCC4()
{
  v1 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_3();
  v5 = sub_23E1FC1DC();
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v7 = sub_23E1FDBCC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v0, *MEMORY[0x277CC9110], v1);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DE6FE40@<X0>(uint64_t a1@<X8>)
{
  v30[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v2 = OUTLINED_FUNCTION_25(v1);
  v3 = MEMORY[0x28223BE20](v2);
  v30[1] = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - v5;
  v7 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = sub_23E1FC1DC();
  v15 = OUTLINED_FUNCTION_25(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  v16 = sub_23E1FDBCC();
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v18 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v9 + 104);
  v21(v13, v20, v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v21(v13, v20, v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  sub_23E1FB68C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_23DE70150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C700, &qword_23E224928);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C708, &qword_23E224930);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  sub_23DE6F9A0();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C710, &unk_23E224960);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DE7030C()
{
  v0 = sub_23E1FC7FC();
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_3();
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  (*(v2 + 104))(v6, *MEMORY[0x277D7BF40], v0);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v13 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

uint64_t sub_23DE704A4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  OUTLINED_FUNCTION_25(v3);
  v2[7] = swift_task_alloc();
  v4 = sub_23E1FB4DC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_23E1FBFBC();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE705F4, 0, 0);
}

uint64_t sub_23DE705F4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_23E1FB5DC();
  sub_23E1FB4CC();
  (*(v4 + 8))(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
  {
    sub_23DE711D4(v0[7]);
    sub_23DE7123C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_19();

    return v7();
  }

  else
  {
    v9 = v0[6];
    (*(v0[12] + 32))(v0[13], v0[7], v0[11]);
    v0[4] = v9;
    sub_23DE71290();
    v10 = sub_23E1FB87C();
    v0[14] = v10;
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_23DE707C0;
    v12 = v0[13];

    return sub_23DEB5660(v12, v10);
  }
}

uint64_t sub_23DE707C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_23DE709E8;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_23DE70904;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23DE70904()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v0[2] = v0[18];
  v0[3] = v1;
  sub_23DE712E4();
  sub_23E1FB53C();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DE709E8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_23DE70A80()
{
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v38 = v1;
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_15();
  v37 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v5);
  v36 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6D0, &unk_23E224900);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v35 = v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  v34[1] = v34 - v12;
  v13 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = sub_23E1FC1DC();
  v21 = OUTLINED_FUNCTION_25(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v22 = sub_23E1FDBCC();
  v23 = OUTLINED_FUNCTION_25(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v24 = sub_23E1FBF0C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6D8, &qword_23E224910);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v26 = *MEMORY[0x277CC9110];
  v27 = *(v15 + 104);
  v27(v19, v26, v13);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v27(v19, v26, v13);
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  v31 = sub_23E1FB4DC();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v31);
  v32 = sub_23E1FB51C();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v32);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  return sub_23E1FB62C();
}

unint64_t sub_23DE70EC8()
{
  result = qword_280DAF290;
  if (!qword_280DAF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF290);
  }

  return result;
}

unint64_t sub_23DE70F20()
{
  result = qword_280DAF2A0;
  if (!qword_280DAF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2A0);
  }

  return result;
}

uint64_t sub_23DE70FD0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DE71070;

  return sub_23DE704A4(a1, v4);
}

uint64_t sub_23DE71070()
{

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_23DE71160@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE70A80();
  *a1 = result;
  return result;
}

uint64_t sub_23DE71188(uint64_t a1)
{
  v2 = sub_23DE6F9A0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_23DE711D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6E0, &qword_23E224920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DE7123C()
{
  result = qword_27E32C6E8;
  if (!qword_27E32C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6E8);
  }

  return result;
}

unint64_t sub_23DE71290()
{
  result = qword_27E32C6F0;
  if (!qword_27E32C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6F0);
  }

  return result;
}

unint64_t sub_23DE712E4()
{
  result = qword_27E32C6F8;
  if (!qword_27E32C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C6F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscribeAudioError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TranscribeAudioError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DE714C0()
{
  result = qword_27E32C718;
  if (!qword_27E32C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C718);
  }

  return result;
}

id sub_23DE71560()
{
  v73 = sub_23E1FC77C();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = (&v64 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224700;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x800000023E24F9B0;
  v8 = *MEMORY[0x277D7CB28];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 80) = &unk_2850236C8;
  v10 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 120) = 0x706F7244726941;
  *(inited + 128) = 0xE700000000000000;
  v11 = *MEMORY[0x277D7CB90];
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = sub_23E1FDCBC("Set AirDrop Receiving (Action Name)", 35);
  v18 = v17;
  sub_23E1FDCBC("Set AirDrop Receiving", 21);
  v19 = v4;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v74 = qword_280DAE278;
  v20 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v21 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v64 = v19;
  sub_23DE477A0(v16, v18);
  v23 = v22;
  v24 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v65 = v24;
  *(inited + 160) = v23;
  v25 = *MEMORY[0x277D7CBA0];
  *(inited + 184) = v24;
  *(inited + 192) = v25;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v67 = swift_allocObject();
  v68 = xmmword_23E2235B0;
  *(v67 + 16) = xmmword_23E2235B0;
  v66 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v26 = swift_initStackObject();
  v27 = MEMORY[0x277D7CDF8];
  *(v26 + 16) = xmmword_23E222380;
  v28 = *v27;
  *(v26 + 32) = *v27;
  *(v26 + 40) = 0xD00000000000001CLL;
  *(v26 + 48) = 0x800000023E24FA20;
  v29 = *MEMORY[0x277D7CE70];
  *(v26 + 64) = v7;
  *(v26 + 72) = v29;
  strcpy((v26 + 80), "WFAirDropState");
  *(v26 + 95) = -18;
  v30 = *MEMORY[0x277D7CE80];
  *(v26 + 104) = v7;
  *(v26 + 112) = v30;
  v31 = v25;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = sub_23E1FDCBC("State (WFAirDropState)", 22);
  v37 = v36;
  sub_23E1FDCBC("State", 5);
  sub_23E1FC14C();
  v38 = [v74 bundleURL];
  sub_23E1FBF9C();

  v39 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v35, v37);
  *(v26 + 144) = v65;
  *(v26 + 120) = v40;
  _s3__C3KeyVMa_0(0);
  sub_23DE71CF8(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v41 = sub_23E1FDABC();
  v42 = sub_23DF3BE9C(v41);
  v43 = v67;
  *(v67 + 32) = v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 200) = v43;
  v45 = *MEMORY[0x277D7CB98];
  *(inited + 224) = v44;
  *(inited + 232) = v45;
  v46 = v45;
  v47 = sub_23E1FDCBC("Set AirDrop Receiving to ${WFAirDropState} (Parameter Summary)", 62);
  v49 = v48;
  sub_23E1FDCBC("Set AirDrop Receiving to ${WFAirDropState}", 42);
  sub_23E1FC14C();
  v50 = [v74 bundleURL];
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v47, v49);
  v53 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v55 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 240) = v54;
  v56 = *MEMORY[0x277D7CF20];
  *(inited + 264) = v55;
  *(inited + 272) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = v68;
  v59 = v72;
  v58 = v73;
  *v72 = 3;
  (*(v70 + 104))(v59, *MEMORY[0x277D7BED8], v58);
  v60 = objc_allocWithZone(sub_23E1FC79C());
  v61 = v56;
  *(v57 + 32) = sub_23E1FC78C();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 280) = v57;
  type metadata accessor for Key(0);
  sub_23DE71CF8(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v62 = sub_23E1FDABC();
  return sub_23DF3BF9C(v62);
}

uint64_t sub_23DE71CF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DE71D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E1FBBDC();
  OUTLINED_FUNCTION_6_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = v28 - v16;
  v18 = 0;
  v29 = a1;
  v30 = a2;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v6 + 32;
  v28[3] = v6 + 16;
  v28[1] = v6 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v6 + 16))(v17, *(v29 + 48) + *(v6 + 72) * (v27 | (v26 << 6)), v4);
      (*(v6 + 32))(v10, v17, v4);
      sub_23DF0342C(v14, v10);
      result = (*(v6 + 8))(v14, v4);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return v30;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE71F48(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_23E1FB7BC();
    sub_23DF036C4(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

__n128 WFGenerativePromptProvider.init(model:session:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23DE36C8C(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

uint64_t WFGenerativePromptProvider.getUserPrompt(input:)()
{
  OUTLINED_FUNCTION_23();
  v1[18] = v2;
  v1[19] = v0;
  sub_23E1FDC6C();
  v1[20] = swift_task_alloc();
  v3 = sub_23E1FC0EC();
  v1[21] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[22] = v4;
  v1[23] = swift_task_alloc();
  v5 = sub_23E1FDA8C();
  v1[24] = v5;
  OUTLINED_FUNCTION_8(v5);
  v1[25] = v6;
  v1[26] = OUTLINED_FUNCTION_91();
  v1[27] = swift_task_alloc();
  v7 = sub_23E1FD03C();
  v1[28] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_23E1FBFBC();
  v1[33] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = sub_23E1FBA9C();
  v1[39] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[40] = v12;
  v1[41] = OUTLINED_FUNCTION_91();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23DE722C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_135();
  v101 = *MEMORY[0x277D85DE8];
  v24 = [*(v22 + 144) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_38();
  *(v22 + 352) = sub_23E1FDDEC();

  v25 = sub_23DE4D8B0();
  *(v22 + 360) = v25;
  v26 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D7A440];
  if (v25)
  {
    v28 = 0;
    v29 = 0;
    *(v22 + 608) = *MEMORY[0x277D42DD0];
    *(v22 + 612) = *MEMORY[0x277CFC050];
    *(v22 + 616) = *MEMORY[0x277CFC058];
    *(v22 + 368) = *v27;
    v30 = (v22 + 392);
    v31 = vdupq_n_s64(v26);
    v32 = v26;
    v99 = v22 + 368;
    while (1)
    {
      *(v22 + 408) = v32;
      *v30 = v31;
      *(v22 + 376) = v28;
      *(v22 + 384) = v26;
      OUTLINED_FUNCTION_95();
      if (v33)
      {
        OUTLINED_FUNCTION_34_0();
        if (v36)
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_145(v34, v35);
      }

      else
      {
        MEMORY[0x23EF04DD0](v29);
      }

      OUTLINED_FUNCTION_110();
      *(v22 + 416) = v37;
      *(v22 + 424) = v38;
      if (v39)
      {
        __break(1u);
LABEL_43:
        __break(1u);
      }

      objc_opt_self();
      if (OUTLINED_FUNCTION_120())
      {
        break;
      }

      ObjectType = swift_getObjectType();
      v41 = OUTLINED_FUNCTION_35_1(ObjectType);
      if (v29 != sub_23DE38DA8(v41, &unk_280DAE680, 0x277CFC3F0))
      {
        objc_opt_self();
        if (!OUTLINED_FUNCTION_120())
        {
          v95 = swift_task_alloc();
          v96 = OUTLINED_FUNCTION_100(v95);
          *v96 = v97;
          OUTLINED_FUNCTION_3_3(v96);
          OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_43_0();

          return WFContentItem.isImage()();
        }
      }

      if ((OUTLINED_FUNCTION_19_0() & 1) == 0)
      {
        goto LABEL_33;
      }

      v42 = [v32 preferredFileType];
      if (!v42)
      {
        goto LABEL_33;
      }

      v29 = v42;
      if (!OUTLINED_FUNCTION_144(v42, sel_fileRepresentationForType_))
      {

LABEL_33:
        v82 = swift_task_alloc();
        v83 = OUTLINED_FUNCTION_99(v82);
        *v83 = v84;
        OUTLINED_FUNCTION_2_7(v83);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_43_0();

        return sub_23DE77084();
      }

      OUTLINED_FUNCTION_33_1();
      v44 = [v43 fileURL];
      OUTLINED_FUNCTION_143();

      v45 = OUTLINED_FUNCTION_21_2();
      (v30)(v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D12C(v51, v52, v53, v26);
        v26 = v54;
      }

      OUTLINED_FUNCTION_38_1();
      if (v36)
      {
        OUTLINED_FUNCTION_28_1(v46);
        v26 = v55;
      }

      v47 = OUTLINED_FUNCTION_4_3();
      v48(v47);
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_111();
      if (v26)
      {
        OUTLINED_FUNCTION_9_2();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C738, &qword_23E224A88);
        v87 = OUTLINED_FUNCTION_147(v86);
        v88 = OUTLINED_FUNCTION_112(v87);
        v89 = OUTLINED_FUNCTION_20_1(v88, xmmword_23E222340);
        (v30)(v89);
        v90 = swift_task_alloc();
        v91 = OUTLINED_FUNCTION_78_0(v90);
        *v91 = v92;
        OUTLINED_FUNCTION_1_6(v91);
        OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_43_0();

        return MEMORY[0x28214EF48](v93);
      }

      v49 = OUTLINED_FUNCTION_37_0();
      v50(v49);

      sub_23DE5CB68(v22 + 56, &qword_27E32C730, &qword_23E224A80);
      v26 = *(v22 + 464);
      v32 = *(v22 + 408);
      v30 = (v22 + 392);
      OUTLINED_FUNCTION_109();
      if (v33)
      {
        v100 = v31.i64[0];
        goto LABEL_23;
      }
    }

    v78 = swift_task_alloc();
    v79 = OUTLINED_FUNCTION_101(v78);
    *v79 = v80;
    OUTLINED_FUNCTION_0_7(v79);
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_43_0();

    return sub_23DE76E1C();
  }

  else
  {
    v99 = MEMORY[0x277D7A440];
    v100 = MEMORY[0x277D84F90];
LABEL_23:

    sub_23E1FCB9C();
    v56 = sub_23E1FD02C();
    sub_23E1FE1AC();
    OUTLINED_FUNCTION_106();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v22 + 312);
      v59 = *(v22 + 232);
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_141();
      *v23 = 136315138;
      v60 = sub_23E1FB7BC();
      MEMORY[0x23EF045E0](v60, v58);
      OUTLINED_FUNCTION_115();

      v61 = OUTLINED_FUNCTION_87_0();
      sub_23DE56B40(v61, v62, v63);
      OUTLINED_FUNCTION_88_0();

      *(v23 + 1) = v58;
      OUTLINED_FUNCTION_42_0(&dword_23DE30000, v64, v65, "WFAskLLMAction user prompt: %s");
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_68_1();

      (*(v59 + 8))(v99, a15);
    }

    else
    {

      v66 = OUTLINED_FUNCTION_66();
      v68(v66, v67);
    }

    objc_allocWithZone(OUTLINED_FUNCTION_15_3());
    OUTLINED_FUNCTION_77_0();
    sub_23E1FBAAC();
    OUTLINED_FUNCTION_132();

    OUTLINED_FUNCTION_49_1();
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_43_0();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, v99, v100, a18, v101, a20, a21, a22);
  }
}

uint64_t sub_23DE7290C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = v3;
  *(v1 + 448) = v4;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE73098()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE7376C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[12] = v0;
  v1[13] = v3;
  v1[14] = v4;
  OUTLINED_FUNCTION_164();
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 504) = v7;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE73FB4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 620) = v3;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE748F8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 528) = v4;
  *(v2 + 536) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE75158()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE758A8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v2 + 576) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DE759F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_135();
  v108 = *MEMORY[0x277D85DE8];
  (*(*(v22 + 200) + 16))(*(v22 + 208), *(v22 + 216), *(v22 + 192));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v22 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v103 = OUTLINED_FUNCTION_6_1();
    sub_23DE4D0EC(v103, v104, v105, v25);
    v25 = v106;
  }

  v27 = v25[2];
  v26 = v25[3];
  v28 = (v27 + 1);
  if (v27 >= v26 >> 1)
  {
    sub_23DE4D0EC(v26 > 1, v27 + 1, 1, v25);
    v25 = v107;
  }

  v30 = *(v22 + 208);
  v29 = *(v22 + 216);
  v31 = *(v22 + 192);
  v32 = *(v22 + 200);

  (*(v32 + 8))(v29, v31);
  v25[2] = v28;
  (*(v32 + 32))(v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, v30, v31);
  for (i = (v22 + 384); ; i = (v22 + 464))
  {
    v34 = *i;
    OUTLINED_FUNCTION_109();
    if (v36)
    {
      break;
    }

    *(v22 + 384) = v34;
    *(v22 + 392) = v25;
    *(v22 + 376) = v35;
    OUTLINED_FUNCTION_95();
    if (v36)
    {
      OUTLINED_FUNCTION_34_0();
      if (v39)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_145(v37, v38);
    }

    else
    {
      MEMORY[0x23EF04DD0](v28);
    }

    OUTLINED_FUNCTION_110();
    *(v22 + 416) = v40;
    *(v22 + 424) = v41;
    if (v42)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    objc_opt_self();
    if (OUTLINED_FUNCTION_120())
    {
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_101(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_0_7(v71);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_43_0();

      return sub_23DE76E1C();
    }

    ObjectType = swift_getObjectType();
    v44 = OUTLINED_FUNCTION_35_1(ObjectType);
    if (v28 != sub_23DE38DA8(v44, &unk_280DAE680, 0x277CFC3F0))
    {
      objc_opt_self();
      if (!OUTLINED_FUNCTION_120())
      {
        v88 = swift_task_alloc();
        v89 = OUTLINED_FUNCTION_100(v88);
        *v89 = v90;
        OUTLINED_FUNCTION_3_3(v89);
        OUTLINED_FUNCTION_48_1();
        OUTLINED_FUNCTION_43_0();

        return WFContentItem.isImage()();
      }
    }

    if ((OUTLINED_FUNCTION_19_0() & 1) == 0)
    {
      goto LABEL_29;
    }

    v45 = [v25 preferredFileType];
    if (!v45)
    {
      goto LABEL_29;
    }

    v28 = v45;
    if (!OUTLINED_FUNCTION_144(v45, sel_fileRepresentationForType_))
    {

LABEL_29:
      v75 = swift_task_alloc();
      v76 = OUTLINED_FUNCTION_99(v75);
      *v76 = v77;
      OUTLINED_FUNCTION_2_7(v76);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_43_0();

      return sub_23DE77084();
    }

    OUTLINED_FUNCTION_33_1();
    v47 = [v46 fileURL];
    OUTLINED_FUNCTION_143();

    v48 = OUTLINED_FUNCTION_21_2();
    (v30)(v48);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = OUTLINED_FUNCTION_6_1();
      sub_23DE4D12C(v54, v55, v56, v34);
      v34 = v57;
    }

    OUTLINED_FUNCTION_38_1();
    if (v39)
    {
      OUTLINED_FUNCTION_28_1(v49);
      v34 = v58;
    }

    v50 = OUTLINED_FUNCTION_4_3();
    v51(v50);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_111();
    if (v34)
    {
      OUTLINED_FUNCTION_9_2();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C738, &qword_23E224A88);
      v80 = OUTLINED_FUNCTION_147(v79);
      v81 = OUTLINED_FUNCTION_112(v80);
      v82 = OUTLINED_FUNCTION_20_1(v81, xmmword_23E222340);
      (v30)(v82);
      v83 = swift_task_alloc();
      v84 = OUTLINED_FUNCTION_78_0(v83);
      *v84 = v85;
      OUTLINED_FUNCTION_1_6(v84);
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_43_0();

      return MEMORY[0x28214EF48](v86);
    }

    v52 = OUTLINED_FUNCTION_37_0();
    v53(v52);

    sub_23DE5CB68(v22 + 56, &qword_27E32C730, &qword_23E224A80);
    v25 = *(v22 + 392);
  }

  v59 = *(v22 + 408);

  OUTLINED_FUNCTION_82_0();
  v60 = sub_23E1FD02C();
  sub_23E1FE1AC();
  OUTLINED_FUNCTION_106();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = *(v22 + 312);
    v63 = *(v22 + 232);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_141();
    *v23 = 136315138;
    v64 = sub_23E1FB7BC();
    MEMORY[0x23EF045E0](v64, v62);
    OUTLINED_FUNCTION_88_0();

    v65 = OUTLINED_FUNCTION_87_0();
    sub_23DE56B40(v65, v66, v67);
    OUTLINED_FUNCTION_88_0();

    *(v23 + 1) = v62;
    OUTLINED_FUNCTION_42_0(&dword_23DE30000, v68, v69, "WFAskLLMAction user prompt: %s");
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_68_1();

    (*(v63 + 8))(a16, a15);
  }

  else
  {

    v92 = OUTLINED_FUNCTION_66();
    v94(v92, v93);
  }

  objc_allocWithZone(OUTLINED_FUNCTION_15_3());
  sub_23E1FBAAC();
  OUTLINED_FUNCTION_132();

  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_43_0();

  return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, a16, v59, a18, v108, a20, a21, a22);
}

uint64_t sub_23DE76044()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 600) = v5;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE769D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_142();

  v20 = OUTLINED_FUNCTION_50();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_0((v18 + 56));

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v29 = *MEMORY[0x277D85DE8];
  v19 = *(v18 + 528);

  __swift_destroy_boxed_opaque_existential_0((v18 + 16));

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, v29, a16, a17, a18);
}

uint64_t sub_23DE76D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_142();

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE76E1C()
{
  v1 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_23DE76ED4;

  return MEMORY[0x28214EF70](v1, 0, v1);
}

uint64_t sub_23DE76ED4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;

  if (v0)
  {

    OUTLINED_FUNCTION_116();

    return v5(0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_23DE77000()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_23E1FDC0C();
  }

  OUTLINED_FUNCTION_116();

  return v2();
}

uint64_t sub_23DE77084()
{
  v1[20] = v0;
  sub_23E1FDC6C();
  v1[21] = swift_task_alloc();
  sub_23E1FCC8C();
  v1[22] = swift_task_alloc();
  v2 = sub_23E1FD03C();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_23E1FC0EC();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE7723C, 0, 0);
}

uint64_t sub_23DE7723C()
{
  OUTLINED_FUNCTION_140();
  v1 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C750, &qword_23E224B18);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_158(inited, xmmword_23E222340);
  v3 = [v1 cachingIdentifier];
  sub_23E1FC0CC();

  v4 = sub_23E1FC0AC();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_54();
  v8(v7);
  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v6;
  v0[31] = sub_23E1FDABC();
  v9 = sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v0[32] = v9;
  sub_23DE38DA8(0, &qword_27E32C758, 0x277CFC298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C760, &qword_23E224B20);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23E222340;
  v11 = *MEMORY[0x277CFC5F8];
  *(v10 + 32) = *MEMORY[0x277CFC5F8];
  *(v10 + 64) = MEMORY[0x277D839B0];
  *(v10 + 40) = 1;
  type metadata accessor for WFCoercionOptionName(0);
  sub_23DE7E23C(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName);
  v12 = v11;
  v13 = sub_23E1FDABC();
  v0[33] = sub_23DE7DCB0(v13);
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = sub_23DE774B8;
  v15 = OUTLINED_FUNCTION_50();

  return MEMORY[0x28214EF70](v15, v16, v9);
}

uint64_t sub_23DE774B8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 280) = v7;

  v9 = *(v2 + 264);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE779FC()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v8 + 312) = v7;

  v9 = *(v2 + 296);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DE77E84()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DE78268()
{
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_54_0();
  v2 = *(v1 + 248);
  *(v1 + 288) = v2;
  OUTLINED_FUNCTION_133();
  if (v3)
  {

    *(v1 + 320) = v2;
    OUTLINED_FUNCTION_133();
    if (v4)
    {

      v5 = objc_opt_self();
      OUTLINED_FUNCTION_168(v5, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
      OUTLINED_FUNCTION_184();
      v7 = OUTLINED_FUNCTION_41_1();
      v9 = [v7 v8];

      v10 = *(v1 + 152);
      if (v9)
      {
        OUTLINED_FUNCTION_169();
        OUTLINED_FUNCTION_68();

        sub_23E1FDC5C();
        OUTLINED_FUNCTION_30_0();
        sub_23E1FDC3C();
        OUTLINED_FUNCTION_59_1();

        OUTLINED_FUNCTION_134();
      }

      else
      {
        v25 = v10;
        v26 = sub_23E1FBECC();

        swift_willThrow();

        OUTLINED_FUNCTION_130();
      }

      OUTLINED_FUNCTION_57_0();

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_162();

      __asm { BRAA            X3, X16 }
    }

    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_177(v15);
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_12_2(v16);
    OUTLINED_FUNCTION_98(v18, v19, v20);
    OUTLINED_FUNCTION_162();

    return MEMORY[0x28214EF70](v21, v22, v23);
  }

  else
  {
    v11 = *(v1 + 176);
    sub_23DE38DA8(0, &qword_27E32C770, 0x277D79F68);
    sub_23E1FCC3C();
    *(v1 + 296) = sub_23DE8928C(v11);
    v12 = swift_task_alloc();
    *(v1 + 304) = v12;
    *v12 = v1;
    OUTLINED_FUNCTION_76_0(v12);
    OUTLINED_FUNCTION_162();

    return MEMORY[0x28214EF60](v13);
  }
}

uint64_t sub_23DE78524()
{
  OUTLINED_FUNCTION_140();
  v1 = *(v0 + 288);
  *(v0 + 320) = v1;
  sub_23DE467E8(0x746E65746E6F63, 0xE700000000000000, v1);
  if (v2)
  {

    v3 = objc_opt_self();
    v5 = OUTLINED_FUNCTION_168(v3, MEMORY[0x277D837D0], v4, MEMORY[0x277D837E0]);
    *(v0 + 152) = 0;
    v6 = OUTLINED_FUNCTION_41_1();
    v8 = [v6 v7];

    v9 = *(v0 + 152);
    if (v8)
    {
      OUTLINED_FUNCTION_169();
      OUTLINED_FUNCTION_68();

      sub_23E1FDC5C();
      OUTLINED_FUNCTION_30_0();
      sub_23E1FDC3C();
      OUTLINED_FUNCTION_59_1();

      OUTLINED_FUNCTION_134();
    }

    else
    {
      v20 = v9;
      v21 = sub_23E1FBECC();

      swift_willThrow();

      OUTLINED_FUNCTION_130();
    }

    OUTLINED_FUNCTION_57_0();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_162();

    __asm { BRAA            X3, X16 }
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_177(v10);
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_12_2(v11);
  OUTLINED_FUNCTION_98(v13, v14, v15);
  OUTLINED_FUNCTION_162();

  return MEMORY[0x28214EF70](v16, v17, v18);
}

void sub_23DE78738()
{
  OUTLINED_FUNCTION_140();
  v1 = objc_opt_self();
  v3 = OUTLINED_FUNCTION_168(v1, MEMORY[0x277D837D0], v2, MEMORY[0x277D837E0]);
  *(v0 + 152) = 0;
  v4 = OUTLINED_FUNCTION_41_1();
  v6 = [v4 v5];

  v7 = *(v0 + 152);
  if (v6)
  {
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_68();

    sub_23E1FDC5C();
    OUTLINED_FUNCTION_30_0();
    sub_23E1FDC3C();
    OUTLINED_FUNCTION_59_1();

    OUTLINED_FUNCTION_134();
  }

  else
  {
    v8 = v7;
    v9 = sub_23E1FBECC();

    swift_willThrow();

    OUTLINED_FUNCTION_130();
  }

  OUTLINED_FUNCTION_57_0();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_162();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_23DE788B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[133] = v4;
  v5[132] = a4;
  v5[131] = a3;
  v5[130] = a2;
  v5[129] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C778, &unk_23E224B28);
  v5[134] = swift_task_alloc();
  v6 = sub_23E1FD81C();
  v5[135] = v6;
  v5[136] = *(v6 - 8);
  v5[137] = swift_task_alloc();
  v7 = sub_23E1FC0EC();
  v5[138] = v7;
  v5[139] = *(v7 - 8);
  v5[140] = swift_task_alloc();
  v8 = sub_23E1FD03C();
  v5[141] = v8;
  v5[142] = *(v8 - 8);
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE78AC0, 0, 0);
}

uint64_t sub_23DE78AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_126();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_165();
  a20 = v22;
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v28 = *(v22 + 1032);
    OUTLINED_FUNCTION_154();
    sub_23E1FCB9C();
    v29 = v23;
    v30 = sub_23E1FD02C();
    v31 = sub_23E1FE1AC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v22 + 1032);
      v33 = OUTLINED_FUNCTION_38_0();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v27;
      *v34 = v27;
      v35 = v32;
      _os_log_impl(&dword_23DE30000, v30, v31, "Taking serialization special-case for dictionary content item %@", v33, 0xCu);
      sub_23DE5CB68(v34, &unk_27E32C190, &qword_23E224B70);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_56();
    }

    v36 = *(v22 + 1192);
    v37 = *(v22 + 1136);
    v38 = *(v22 + 1128);

    (*(v37 + 8))(v36, v38);
    v39 = [v27 dictionary];
    *(v22 + 1200) = sub_23E1FDAAC();

    v40 = swift_task_alloc();
    *(v22 + 1208) = v40;
    *v40 = v22;
    OUTLINED_FUNCTION_175(v40);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE7C958(v41);
  }

  if (sub_23DF114B4(*(v22 + 1040), *(v22 + 1048), *(v22 + 1056)))
  {
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v44 = sub_23E1FD02C();
    v45 = sub_23E1FE1AC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v22 + 1048);
      v47 = *(v22 + 1040);
      v48 = OUTLINED_FUNCTION_38_0();
      v49 = OUTLINED_FUNCTION_49_0();
      a11 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_23DE56B40(v47, v46, &a11);
      _os_log_impl(&dword_23DE30000, v44, v45, "Item with UUID '%s' has already been encoded. Skipping.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_68_1();
      OUTLINED_FUNCTION_56();
    }

    v50 = OUTLINED_FUNCTION_50();
    v51(v50);
    v131 = 0;
    goto LABEL_11;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  *(v22 + 1224) = ObjCClassFromObject;
  v61 = [ObjCClassFromObject properties];
  sub_23DE38DA8(0, &qword_280DAE730, 0x277CFC330);
  *(v22 + 1232) = sub_23E1FDDEC();

  *(v22 + 1240) = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  sub_23E1FB7BC();
  v62 = sub_23E1FD02C();
  v63 = sub_23E1FE1AC();

  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v22 + 1184);
  v66 = *(v22 + 1136);
  v67 = *(v22 + 1128);
  if (v64)
  {
    v68 = *(v22 + 1048);
    v69 = *(v22 + 1040);
    a10 = *(v22 + 1184);
    v65 = swift_slowAlloc();
    v70 = OUTLINED_FUNCTION_49_0();
    a11 = v70;
    *v65 = 136315394;
    *(v65 + 4) = sub_23DE56B40(v69, v68, &a11);
    *(v65 + 12) = 2048;
    *(v65 + 14) = sub_23DE4D8B0();

    OUTLINED_FUNCTION_128(&dword_23DE30000, v71, v72, "Encoding content item with UUID '%s' into JSON representation with %ld properties");
    __swift_destroy_boxed_opaque_existential_0(v70);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    v73 = *(v66 + 8);
    v73(a10, v67);
  }

  else
  {

    v73 = *(v66 + 8);
    v73(v65, v67);
  }

  *(v22 + 1248) = v73;
  v74 = *(v22 + 1048);
  v75 = *(v22 + 1040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v76 = swift_allocObject();
  v77 = OUTLINED_FUNCTION_158(v76, xmmword_23E222340);
  v78 = MEMORY[0x277D837D0];
  v77[4].n128_u64[1] = MEMORY[0x277D837D0];
  v77[3].n128_u64[0] = v75;
  v77[3].n128_u64[1] = v74;
  sub_23E1FB7BC();
  v79 = sub_23E1FDABC();
  v80 = sub_23DE4D8B0();
  *(v22 + 1256) = v80;
  if (v80)
  {
    if (v80 >= 1)
    {
      *(v22 + 1280) = v79;
      *(v22 + 1272) = 0;
      *(v22 + 1264) = v79;
      v88 = *(v22 + 1232);
      if ((v88 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EF04DD0](0);
      }

      else
      {
        v113 = *(v88 + 32);
      }

      OUTLINED_FUNCTION_97();
      *(v22 + 1288) = v114;
      *(v22 + 16) = v115;
      *(v22 + 56) = v22 + 912;
      OUTLINED_FUNCTION_86_0();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
      OUTLINED_FUNCTION_18_3(v116);
      *(v22 + 88) = 1107296256;
      OUTLINED_FUNCTION_17_3(block_descriptor_3);
      OUTLINED_FUNCTION_131(v117, sel_getValueForObject_completionHandler_);
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x282200938](v118);
    }

    __break(1u);
    return MEMORY[0x2821E48A8](v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
  }

  v89 = *(v22 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  if (([v89 isKindOfClass_] & 1) != 0 || (v89 = *(v22 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), objc_msgSend(v89, sel_isKindOfClass_, swift_getObjCClassFromMetadata())))
  {
    v90 = OUTLINED_FUNCTION_50_0();
    sub_23DE4682C(v79, v92, v90, v91);
    v93 = *(v22 + 424);
    sub_23DE5CB68(v22 + 400, &qword_27E32C320, &unk_23E224B40);
    if (!v93)
    {
      [*(v22 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();

      OUTLINED_FUNCTION_102();
      if (v94)
      {
        [*(v22 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_172();
        *(v22 + 456) = v78;
        *(v22 + 432) = v75;
        *(v22 + 440) = v65;
        sub_23DE36CA4((v22 + 432), (v22 + 464));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a11 = v79;
        sub_23DE47BE4(v22 + 464, v89, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
        v79 = a11;
      }
    }

    *(v22 + 1352) = v79;
    *(v22 + 1344) = v79;
    v96 = OUTLINED_FUNCTION_31_1();
    sub_23DE4682C(v79, v98, v96, v97);
    v99 = *(v22 + 520);
    sub_23DE5CB68(v22 + 496, &qword_27E32C320, &unk_23E224B40);
    if (!v99)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v22 + 1360) = v125;
      *v125 = v126;
      OUTLINED_FUNCTION_11_0(v125);
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2821E48A8](v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
    }

    v100 = OUTLINED_FUNCTION_23_1();
    sub_23DE4682C(v79, v102, v100, v101);
    v103 = *(v22 + 552);
    sub_23DE5CB68(v22 + 528, &qword_27E32C320, &unk_23E224B40);
    if (!v103)
    {
      [*(v22 + 1224) localizedTypeDescription];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();
      *(v22 + 584) = v78;
      *(v22 + 560) = v75;
      *(v22 + 568) = v65;
      sub_23DE36CA4((v22 + 560), (v22 + 592));
      v104 = swift_isUniquelyReferenced_nonNull_native();
      a11 = v79;
      OUTLINED_FUNCTION_139(v22 + 592, v105, v106, v104);
      v79 = a11;
    }

    *(v22 + 1376) = v79;
    *(v22 + 1368) = v79;
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v107 = swift_dynamicCastObjCClass();
    if (v107)
    {
      if ([v107 outputsFileContent])
      {
        v108 = swift_task_alloc();
        v109 = OUTLINED_FUNCTION_160(v108);
        *v109 = v110;
        OUTLINED_FUNCTION_8_2();
LABEL_40:
        *(v111 + 8) = v112;
        OUTLINED_FUNCTION_81_0();
        OUTLINED_FUNCTION_72_0();

        return sub_23DE77084();
      }
    }
  }

  *(v22 + 1408) = v79;
  *(v22 + 1400) = v79;
  if (v79[2] != 1)
  {
    v131 = v79;
LABEL_11:
    OUTLINED_FUNCTION_6_5();

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, v131, a11, a12, a13, a14);
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v120 = swift_dynamicCastObjCClass();
  if (v120 && [v120 outputsFileContent])
  {
    v121 = swift_task_alloc();
    v122 = OUTLINED_FUNCTION_138(v121);
    *v122 = v123;
    OUTLINED_FUNCTION_7_2();
    goto LABEL_40;
  }

  v127 = swift_task_alloc();
  v128 = OUTLINED_FUNCTION_121(v127);
  *v128 = v129;
  OUTLINED_FUNCTION_5_4(v128);
  OUTLINED_FUNCTION_72_0();

  return sub_23DE76E1C();
}

uint64_t sub_23DE79478()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1216) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE79578()
{
  OUTLINED_FUNCTION_140();

  v3 = *(v0 + 1216);
  OUTLINED_FUNCTION_6_5();

  OUTLINED_FUNCTION_12_1();

  return v1(v3);
}

uint64_t sub_23DE79658()
{
  OUTLINED_FUNCTION_23();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE79728(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_27();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_32();
  a24 = v26;
  v29 = *(v26 + 928);
  *(v26 + 208) = *(v26 + 912);
  *(v26 + 224) = v29;
  if (*(v26 + 232))
  {
    sub_23DE36CA4((v26 + 208), (v26 + 144));
    sub_23DE48110(v26 + 144, v26 + 752);
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    if (swift_dynamicCast())
    {
      v30 = *(v26 + 1120);
      v31 = *(v26 + 1112);
      v32 = *(v26 + 1104);
      v33 = *(v26 + 1056);
      v34 = *(v26 + 1048);
      v35 = *(v26 + 1040);
      v36 = *(v26 + 1024);
      *(v26 + 1296) = v36;
      v37 = [v36 cachingIdentifier];
      sub_23E1FC0CC();

      sub_23E1FC0AC();
      *(v26 + 1304) = v38;
      (*(v31 + 8))(v30, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_23E222340;
      *(v39 + 32) = v35;
      *(v39 + 40) = v34;
      sub_23E1FB7BC();
      sub_23E1FB7BC();
      *(v26 + 1312) = sub_23DE71F48(v39, v33);
      v40 = swift_task_alloc();
      *(v26 + 1320) = v40;
      *v40 = v26;
      OUTLINED_FUNCTION_175(v40);
      OUTLINED_FUNCTION_26();

      return sub_23DE788B8(v41, v42, v43, v44);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v26 + 1336) = v71;
      *v71 = v72;
      OUTLINED_FUNCTION_69_1(v71);
      OUTLINED_FUNCTION_26();

      return sub_23DE7BF6C(v73, v74);
    }
  }

  v47 = *(v26 + 1288);
  v48 = *(v26 + 1032);
  sub_23DE5CB68(v26 + 208, &qword_27E32C320, &unk_23E224B40);
  sub_23E1FCB9C();
  v49 = v48;
  v50 = v47;
  v51 = sub_23E1FD02C();
  v52 = sub_23E1FE1BC();

  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v26 + 1288);
  v55 = *(v26 + 1248);
  v56 = *(v26 + 1152);
  v57 = *(v26 + 1128);
  if (v53)
  {
    a10 = *(v26 + 1032);
    a14 = *(v26 + 1136) + 8;
    a13 = *(v26 + 1152);
    v58 = swift_slowAlloc();
    a12 = v57;
    a15 = swift_slowAlloc();
    *v58 = 136315394;
    v59 = [v54 name];
    sub_23E1FDC1C();
    a11 = v55;

    v60 = OUTLINED_FUNCTION_50();
    v63 = sub_23DE56B40(v60, v61, v62);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2080;
    v64 = [a10 name];
    v65 = sub_23E1FDC1C();
    v67 = v66;

    v68 = sub_23DE56B40(v65, v67, &a15);

    *(v58 + 14) = v68;
    OUTLINED_FUNCTION_128(&dword_23DE30000, v69, v70, "Could not get value of property with name '%s' for content item %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    a11(a13, v57);
  }

  else
  {

    v55(v56, v57);
  }

  v76 = *(v26 + 1264);
  v77 = OUTLINED_FUNCTION_107();
  if (!v107)
  {
    v108 = OUTLINED_FUNCTION_105(v77);
    if (v107)
    {
      v115 = *(v109 + 8 * v108 + 32);
    }

    else
    {
      MEMORY[0x23EF04DD0](v108);
    }

    OUTLINED_FUNCTION_97();
    *(v26 + 1288) = v116;
    *(v26 + 16) = v117;
    *(v26 + 56) = v26 + 912;
    OUTLINED_FUNCTION_86_0();
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
    OUTLINED_FUNCTION_18_3(v118);
    *(v26 + 88) = 1107296256;
    OUTLINED_FUNCTION_17_3(block_descriptor_3);
    OUTLINED_FUNCTION_131(v119, sel_getValueForObject_completionHandler_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v120);
  }

  v78 = *(v26 + 1280);

  v79 = *(v26 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((OUTLINED_FUNCTION_188(ObjCClassFromMetadata) & 1) != 0 || (v79 = *(v26 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), [v79 v54 + 1528]))
  {
    v81 = OUTLINED_FUNCTION_50_0();
    sub_23DE4682C(v78, v83, v81, v82);
    v84 = *(v26 + 424);
    sub_23DE5CB68(v26 + 400, &qword_27E32C320, &unk_23E224B40);
    v85 = MEMORY[0x277D837D0];
    if (!v84)
    {
      [*(v26 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_172();

      OUTLINED_FUNCTION_102();
      if (v86)
      {
        v87 = [*(v26 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        *(v26 + 456) = v85;
        v88 = OUTLINED_FUNCTION_149();
        a15 = v76;
        sub_23DE47BE4(v26 + 464, v79, 0xE500000000000000, v88);
        v76 = a15;
        v78 = a15;
      }
    }

    *(v26 + 1352) = v78;
    *(v26 + 1344) = v76;
    v89 = OUTLINED_FUNCTION_31_1();
    sub_23DE4682C(v78, v91, v89, v90);
    v92 = *(v26 + 520);
    sub_23DE5CB68(v26 + 496, &qword_27E32C320, &unk_23E224B40);
    if (!v92)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v26 + 1360) = v130;
      *v130 = v131;
      OUTLINED_FUNCTION_11_0(v130);
      OUTLINED_FUNCTION_26();

      return MEMORY[0x2821E48A8](v132, v133, v134, v135, v136, v137, v138, v139, a9, a10, a11, a12, a13, a14);
    }

    v93 = OUTLINED_FUNCTION_23_1();
    sub_23DE4682C(v78, v95, v93, v94);
    v96 = *(v26 + 552);
    sub_23DE5CB68(v26 + 528, &qword_27E32C320, &unk_23E224B40);
    if (!v96)
    {
      v97 = [*(v26 + 1224) localizedTypeDescription];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_68();

      *(v26 + 584) = v85;
      OUTLINED_FUNCTION_89_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a15 = v76;
      OUTLINED_FUNCTION_139(v26 + 592, v99, v100, isUniquelyReferenced_nonNull_native);
    }

    OUTLINED_FUNCTION_190();
    v101 = OUTLINED_FUNCTION_120();
    if (v101 && [v101 outputsFileContent])
    {
      v102 = swift_task_alloc();
      v103 = OUTLINED_FUNCTION_160(v102);
      *v103 = v104;
      OUTLINED_FUNCTION_8_2();
LABEL_32:
      *(v105 + 8) = v106;
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_26();

      return sub_23DE77084();
    }
  }

  OUTLINED_FUNCTION_178();
  if (v107)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v110 = swift_dynamicCastObjCClass();
    if (v110 && [v110 outputsFileContent])
    {
      v111 = swift_task_alloc();
      v112 = OUTLINED_FUNCTION_138(v111);
      *v112 = v113;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_32;
    }

    v140 = swift_task_alloc();
    v141 = OUTLINED_FUNCTION_121(v140);
    *v141 = v142;
    OUTLINED_FUNCTION_5_4(v141);
    OUTLINED_FUNCTION_26();

    return sub_23DE76E1C();
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v144 = *(v26 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_26();

    return v124(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, a11, a12, a13, v144, a15, a16, a17, a18);
  }
}

uint64_t sub_23DE79FB0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1328) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE7A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_161();
  a22 = v24;
  v27 = *(v24 + 1328);
  if (v27)
  {
    v28 = *(v24 + 1288);
    sub_23E1FCB9C();
    v29 = v28;
    v30 = sub_23E1FD02C();
    v31 = sub_23E1FE1AC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v27;
      v33 = *(v24 + 1288);
      a11 = *(v24 + 1176);
      a12 = *(v24 + 1248);
      a9 = *(v24 + 1136) + 8;
      a10 = *(v24 + 1128);
      v34 = OUTLINED_FUNCTION_38_0();
      v35 = OUTLINED_FUNCTION_49_0();
      a13 = v35;
      *v34 = 136315138;
      v36 = [v33 name];
      v37 = sub_23E1FDC1C();
      v39 = v38;

      v40 = sub_23DE56B40(v37, v39, &a13);

      *(v34 + 4) = v40;
      v27 = v32;
      OUTLINED_FUNCTION_148();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_21_0();

      a12(a11, a10);
    }

    else
    {
      v31 = *(v24 + 1248);
      v34 = *(v24 + 1136);

      v52 = OUTLINED_FUNCTION_50();
      (v31)(v52);
    }

    v53 = *(v24 + 1296);
    v54 = *(v24 + 1288);
    v55 = [v54 name];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v24 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
    *(v24 + 176) = v27;
    sub_23DE36CA4((v24 + 176), (v24 + 784));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159();
    sub_23DE47BE4(v24 + 784, v31, v34, v56);

    v57 = a13;
    __swift_destroy_boxed_opaque_existential_0((v24 + 144));
    v58 = OUTLINED_FUNCTION_107();
    if (!v80)
    {
      *(v24 + 1280) = v57;
      v81 = OUTLINED_FUNCTION_105(v58);
      if (v80)
      {
        v88 = *(v82 + 8 * v81 + 32);
      }

      else
      {
        MEMORY[0x23EF04DD0](v81);
      }

      OUTLINED_FUNCTION_97();
      *(v24 + 1288) = v89;
      *(v24 + 16) = v90;
      OUTLINED_FUNCTION_83_0(v24 + 912);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
      OUTLINED_FUNCTION_18_3(v91);
      *(v24 + 88) = 1107296256;
      OUTLINED_FUNCTION_17_3(block_descriptor_3);
      OUTLINED_FUNCTION_131(v92, sel_getValueForObject_completionHandler_);
      OUTLINED_FUNCTION_56_1();

      return MEMORY[0x282200938](v93);
    }

    v59 = *(v24 + 1032);
    sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
    if (([v59 isKindOfClass_] & 1) != 0 || (v60 = *(v24 + 1032), sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8), objc_msgSend(v60, sel_isKindOfClass_, swift_getObjCClassFromMetadata())))
    {
      sub_23DE4682C(v57, (v24 + 400), 0x656C746974, 0xE500000000000000);
      v61 = *(v24 + 424);
      sub_23DE5CB68(v24 + 400, &qword_27E32C320, &unk_23E224B40);
      v62 = MEMORY[0x277D837D0];
      if (!v61)
      {
        v63 = [*(v24 + 1032) richListTitle];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        v64 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v64 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v64)
        {
          v65 = [*(v24 + 1032) richListTitle];
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_68();

          *(v24 + 456) = v62;
          OUTLINED_FUNCTION_149();
          OUTLINED_FUNCTION_159();
          sub_23DE47BE4(v24 + 464, 0x656C746974, 0xE500000000000000, v66);
          v57 = a13;
        }
      }

      *(v24 + 1352) = v57;
      *(v24 + 1344) = v57;
      v67 = OUTLINED_FUNCTION_31_1();
      sub_23DE4682C(v57, v69, v67, v68);
      v70 = *(v24 + 520);
      sub_23DE5CB68(v24 + 496, &qword_27E32C320, &unk_23E224B40);
      if (!v70)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        *(v24 + 1360) = v103;
        *v103 = v104;
        OUTLINED_FUNCTION_11_0(v103);
        OUTLINED_FUNCTION_56_1();

        return MEMORY[0x2821E48A8](v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
      }

      sub_23DE4682C(v57, (v24 + 528), 0x7954797469746E65, 0xEA00000000006570);
      v71 = *(v24 + 552);
      sub_23DE5CB68(v24 + 528, &qword_27E32C320, &unk_23E224B40);
      if (!v71)
      {
        v72 = [*(v24 + 1224) localizedTypeDescription];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_68();

        *(v24 + 584) = v62;
        OUTLINED_FUNCTION_89_0();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_159();
        sub_23DE47BE4(v24 + 592, 0x7954797469746E65, 0xEA00000000006570, v73);
        v57 = a13;
      }

      *(v24 + 1376) = v57;
      *(v24 + 1368) = v57;
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v74 = swift_dynamicCastObjCClass();
      if (v74 && [v74 outputsFileContent])
      {
        v75 = swift_task_alloc();
        v76 = OUTLINED_FUNCTION_160(v75);
        *v76 = v77;
        OUTLINED_FUNCTION_8_2();
LABEL_29:
        *(v78 + 8) = v79;
        OUTLINED_FUNCTION_81_0();
        OUTLINED_FUNCTION_56_1();

        return sub_23DE77084();
      }
    }

    *(v24 + 1408) = v57;
    *(v24 + 1400) = v57;
    if (v57[2] == 1)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v83 = swift_dynamicCastObjCClass();
      if (v83 && [v83 outputsFileContent])
      {
        v84 = swift_task_alloc();
        v85 = OUTLINED_FUNCTION_138(v84);
        *v85 = v86;
        OUTLINED_FUNCTION_7_2();
        goto LABEL_29;
      }

      v113 = swift_task_alloc();
      v114 = OUTLINED_FUNCTION_121(v113);
      *v114 = v115;
      OUTLINED_FUNCTION_5_4(v114);
      OUTLINED_FUNCTION_56_1();

      return sub_23DE76E1C();
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v117 = *(v24 + 1072);

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_56_1();

      return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, v117, a13, a14, a15, a16);
    }
  }

  else
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v24 + 1336) = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_69_1(v46);
    OUTLINED_FUNCTION_56_1();

    return sub_23DE7BF6C(v48, v49);
  }
}

uint64_t sub_23DE7A824()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE7A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t), uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_161();
  a22 = v24;
  v27 = *(v24 + 1288);
  if (*(v24 + 872))
  {
    sub_23DE36CA4((v24 + 848), (v24 + 816));
    sub_23E1FCB9C();
    v28 = v27;
    v29 = sub_23E1FD02C();
    v30 = sub_23E1FE1AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v24 + 1288);
      a11 = *(v24 + 1168);
      a12 = *(v24 + 1248);
      v32 = *(v24 + 1128);
      a10 = *(v24 + 1136) + 8;
      v33 = OUTLINED_FUNCTION_38_0();
      v34 = OUTLINED_FUNCTION_49_0();
      a13 = v34;
      *v33 = 136315138;
      v35 = [v31 name];
      v36 = sub_23E1FDC1C();
      v38 = v37;

      v39 = sub_23DE56B40(v36, v38, &a13);

      *(v33 + 4) = v39;
      OUTLINED_FUNCTION_148();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_21_0();

      a12(a11, v32);
    }

    else
    {
      v69 = *(v24 + 1248);

      v70 = OUTLINED_FUNCTION_50();
      v69(v70);
    }

    v71 = *(v24 + 1264);
    v72 = [*(v24 + 1288) name];
    v73 = sub_23E1FDC1C();
    v75 = v74;

    sub_23DE48110(v24 + 816, v24 + 880);
    swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 1016) = v71;
    v76 = OUTLINED_FUNCTION_35_0();
    v78 = sub_23DF1E154(v76, v77);
    if (__OFADD__(*(v71 + 16), (v79 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v51 = v78;
      v86 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      if (sub_23E1FE66C())
      {
        v87 = OUTLINED_FUNCTION_35_0();
        v89 = sub_23DF1E154(v87, v88);
        if ((v86 & 1) != (v90 & 1))
        {
          OUTLINED_FUNCTION_56_1();

          return sub_23E1FE7BC();
        }

        v51 = v89;
      }

      v94 = *(v24 + 1016);
      if (v86)
      {
        v95 = *(v24 + 1288);
        v96 = (v94[7] + 32 * v51);
        __swift_destroy_boxed_opaque_existential_0(v96);
        sub_23DE36CA4((v24 + 880), v96);

LABEL_20:

        __swift_destroy_boxed_opaque_existential_0((v24 + 816));
        __swift_destroy_boxed_opaque_existential_0((v24 + 144));
        v93 = v94;
        goto LABEL_21;
      }

      v94[(v51 >> 6) + 8] |= 1 << v51;
      v97 = (v94[6] + 16 * v51);
      *v97 = v73;
      v97[1] = v75;
      v78 = sub_23DE36CA4((v24 + 880), (v94[7] + 32 * v51));
      v98 = v94[2];
      v99 = __OFADD__(v98, 1);
      v100 = v98 + 1;
      if (!v99)
      {
        v95 = *(v24 + 1288);
        v94[2] = v100;
        goto LABEL_20;
      }
    }

    __break(1u);
    return MEMORY[0x2821E48A8](v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
  }

  v45 = *(v24 + 1032);
  sub_23DE5CB68(v24 + 848, &qword_27E32C320, &unk_23E224B40);
  sub_23E1FCB9C();
  v46 = v45;
  v47 = v27;
  v48 = sub_23E1FD02C();
  v49 = sub_23E1FE1AC();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v24 + 1288);
  v52 = *(v24 + 1248);
  v53 = *(v24 + 1160);
  v54 = *(v24 + 1128);
  if (v50)
  {
    v55 = *(v24 + 1032);
    a12 = (*(v24 + 1136) + 8);
    a11 = *(v24 + 1160);
    v56 = swift_slowAlloc();
    a10 = v54;
    a13 = swift_slowAlloc();
    *v56 = 136315394;
    v57 = [v51 name];
    sub_23E1FDC1C();
    a9 = v52;

    v58 = OUTLINED_FUNCTION_50();
    v61 = sub_23DE56B40(v58, v59, v60);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    v62 = [v55 name];
    v63 = sub_23E1FDC1C();
    v65 = v64;

    v66 = sub_23DE56B40(v63, v65, &a13);

    *(v56 + 14) = v66;
    OUTLINED_FUNCTION_128(&dword_23DE30000, v67, v68, "Could not encode property '%s' for content item %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    a9(a11, v54);
  }

  else
  {

    v52(v53, v54);
  }

  __swift_destroy_boxed_opaque_existential_0((v24 + 144));
  v93 = *(v24 + 1280);
  v94 = *(v24 + 1264);
LABEL_21:
  v101 = OUTLINED_FUNCTION_107();
  if (!v129)
  {
    *(v24 + 1280) = v93;
    v130 = OUTLINED_FUNCTION_105(v101);
    if (v129)
    {
      v137 = *(v131 + 8 * v130 + 32);
    }

    else
    {
      MEMORY[0x23EF04DD0](v130);
    }

    OUTLINED_FUNCTION_97();
    *(v24 + 1288) = v138;
    *(v24 + 16) = v139;
    OUTLINED_FUNCTION_83_0(v24 + 912);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C780, &qword_23E224B38);
    OUTLINED_FUNCTION_18_3(v140);
    *(v24 + 88) = 1107296256;
    OUTLINED_FUNCTION_17_3(block_descriptor_3);
    OUTLINED_FUNCTION_131(v141, sel_getValueForObject_completionHandler_);
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x282200938](v142);
  }

  v102 = *(v24 + 1032);
  sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ((OUTLINED_FUNCTION_188(ObjCClassFromMetadata) & 1) == 0)
  {
    v102 = *(v24 + 1032);
    sub_23DE38DA8(0, &qword_280DAE2F0, 0x277D7C5C8);
    if (![v102 (v51 + 1528)])
    {
      goto LABEL_36;
    }
  }

  v104 = OUTLINED_FUNCTION_50_0();
  sub_23DE4682C(v93, v106, v104, v105);
  v107 = *(v24 + 424);
  sub_23DE5CB68(v24 + 400, &qword_27E32C320, &unk_23E224B40);
  if (!v107)
  {
    [*(v24 + 1032) richListTitle];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_172();

    OUTLINED_FUNCTION_102();
    if (v108)
    {
      v109 = [*(v24 + 1032) richListTitle];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_68();

      *(v24 + 456) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_159();
      sub_23DE47BE4(v24 + 464, v102, 0xE500000000000000, v110);
      v94 = a13;
      v93 = a13;
    }
  }

  *(v24 + 1352) = v93;
  *(v24 + 1344) = v94;
  v111 = OUTLINED_FUNCTION_31_1();
  sub_23DE4682C(v93, v113, v111, v112);
  v114 = *(v24 + 520);
  sub_23DE5CB68(v24 + 496, &qword_27E32C320, &unk_23E224B40);
  if (!v114)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v24 + 1360) = v152;
    *v152 = v153;
    OUTLINED_FUNCTION_11_0(v152);
    OUTLINED_FUNCTION_56_1();

    return MEMORY[0x2821E48A8](v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
  }

  v115 = OUTLINED_FUNCTION_23_1();
  sub_23DE4682C(v93, v117, v115, v116);
  v118 = *(v24 + 552);
  sub_23DE5CB68(v24 + 528, &qword_27E32C320, &unk_23E224B40);
  if (!v118)
  {
    v119 = [*(v24 + 1224) localizedTypeDescription];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v24 + 584) = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_89_0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_139(v24 + 592, v120, v121, v122);
  }

  OUTLINED_FUNCTION_190();
  v123 = OUTLINED_FUNCTION_120();
  if (v123 && [v123 outputsFileContent])
  {
    v124 = swift_task_alloc();
    v125 = OUTLINED_FUNCTION_160(v124);
    *v125 = v126;
    OUTLINED_FUNCTION_8_2();
LABEL_41:
    *(v127 + 8) = v128;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_56_1();

    return sub_23DE77084();
  }

LABEL_36:
  OUTLINED_FUNCTION_178();
  if (v129)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v132 = swift_dynamicCastObjCClass();
    if (v132 && [v132 outputsFileContent])
    {
      v133 = swift_task_alloc();
      v134 = OUTLINED_FUNCTION_138(v133);
      *v134 = v135;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_41;
    }

    v154 = swift_task_alloc();
    v155 = OUTLINED_FUNCTION_121(v154);
    *v155 = v156;
    OUTLINED_FUNCTION_5_4(v155);
    OUTLINED_FUNCTION_56_1();

    return sub_23DE76E1C();
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v158 = *(v24 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_56_1();

    return v146(v144, v145, v146, v147, v148, v149, v150, v151, a9, a10, a11, v158, a13, a14, a15, a16);
  }
}

uint64_t sub_23DE7B290()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE7B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1080);
  v16 = *(v14 + 1072);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v15);
  v18 = MEMORY[0x277D837D0];
  if (EnumTagSinglePayload == 1)
  {
    sub_23DE5CB68(v16, &qword_27E32C778, &unk_23E224B28);
  }

  else
  {
    v19 = *(v14 + 1096);
    (*(*(v14 + 1088) + 32))(v19, v16, v15);
    sub_23E1FD80C();
    OUTLINED_FUNCTION_174();

    v20 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = *(v14 + 1344);
      v22 = *(v14 + 1096);
      v23 = *(v14 + 1088);
      v24 = *(v14 + 1080);
      v25 = sub_23E1FD80C();
      *(v14 + 712) = v18;
      *(v14 + 688) = v25;
      *(v14 + 696) = v26;
      sub_23DE36CA4((v14 + 688), (v14 + 720));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a11 = v21;
      sub_23DE47BE4(v14 + 720, 0x656C746974627573, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      (*(v23 + 8))(v22, v24);
      v28 = v21;
      goto LABEL_9;
    }

    (*(*(v14 + 1088) + 8))(*(v14 + 1096), *(v14 + 1080));
  }

  v28 = *(v14 + 1352);
  v21 = *(v14 + 1344);
LABEL_9:
  v29 = OUTLINED_FUNCTION_23_1();
  sub_23DE4682C(v28, v31, v29, v30);
  v32 = *(v14 + 552);
  sub_23DE5CB68(v14 + 528, &qword_27E32C320, &unk_23E224B40);
  if (!v32)
  {
    v33 = [*(v14 + 1224) localizedTypeDescription];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_68();

    *(v14 + 584) = v18;
    OUTLINED_FUNCTION_89_0();
    v34 = swift_isUniquelyReferenced_nonNull_native();
    a11 = v21;
    OUTLINED_FUNCTION_139(v14 + 592, v35, v36, v34);
    v28 = v21;
  }

  *(v14 + 1376) = v28;
  *(v14 + 1368) = v21;
  objc_opt_self();
  v37 = OUTLINED_FUNCTION_120();
  if (v37 && [v37 outputsFileContent])
  {
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_160(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_8_2();
LABEL_18:
    *(v41 + 8) = v42;
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_72_0();

    return sub_23DE77084();
  }

  *(v14 + 1408) = v28;
  *(v14 + 1400) = v21;
  if (*(v28 + 16) == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v43 = swift_dynamicCastObjCClass();
    if (v43 && [v43 outputsFileContent])
    {
      v44 = swift_task_alloc();
      v45 = OUTLINED_FUNCTION_138(v44);
      *v45 = v46;
      OUTLINED_FUNCTION_7_2();
      goto LABEL_18;
    }

    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_121(v57);
    *v58 = v59;
    OUTLINED_FUNCTION_5_4(v58);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE76E1C();
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v61 = *(v14 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, v61, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE7B710()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[118] = v0;
  v1[119] = v3;
  v1[120] = v4;
  OUTLINED_FUNCTION_164();
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 1392) = v7;

  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE7B7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1392);
  if (v15)
  {
    v16 = *(v14 + 952);
    *(v14 + 648) = MEMORY[0x277D837D0];
    *(v14 + 624) = v16;
    *(v14 + 632) = v15;
    sub_23DE36CA4((v14 + 624), (v14 + 656));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_137();
    sub_23DE47BE4(v14 + 656, v17, 0xE700000000000000, v18);
    v19 = a11;
    v20 = a11;
  }

  else
  {
    v20 = *(v14 + 1376);
    v19 = *(v14 + 1368);
  }

  *(v14 + 1408) = v20;
  *(v14 + 1400) = v19;
  if (*(v20 + 16) == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v21 = swift_dynamicCastObjCClass();
    if (v21 && [v21 outputsFileContent])
    {
      v22 = swift_task_alloc();
      v23 = OUTLINED_FUNCTION_138(v22);
      *v23 = v24;
      OUTLINED_FUNCTION_7_2();
      *(v25 + 8) = v26;
      OUTLINED_FUNCTION_81_0();
      OUTLINED_FUNCTION_72_0();

      return sub_23DE77084();
    }

    else
    {
      v37 = swift_task_alloc();
      v38 = OUTLINED_FUNCTION_121(v37);
      *v38 = v39;
      OUTLINED_FUNCTION_5_4(v38);
      OUTLINED_FUNCTION_72_0();

      return sub_23DE76E1C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v41 = *(v14 + 1072);

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, v41, a11, a12, a13, a14);
  }
}

uint64_t sub_23DE7B9EC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[121] = v0;
  v1[122] = v3;
  v1[123] = v4;
  OUTLINED_FUNCTION_164();
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 1424) = v7;

  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE7BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  v15 = *(v14 + 1424);
  if (v15)
  {
    v16 = *(v14 + 976);
    *(v14 + 360) = MEMORY[0x277D837D0];
    *(v14 + 336) = v16;
    *(v14 + 344) = v15;
    sub_23DE36CA4((v14 + 336), (v14 + 368));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_137();
    sub_23DE47BE4(v14 + 368, v17, 0xE700000000000000, v18);
    OUTLINED_FUNCTION_6_5();

    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_72_0();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a11, a11, a12, a13, a14);
  }

  else
  {
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_121(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_5_4(v29);
    OUTLINED_FUNCTION_72_0();

    return sub_23DE76E1C();
  }
}

uint64_t sub_23DE7BC24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[124] = v0;
  v1[125] = v3;
  v1[126] = v4;
  OUTLINED_FUNCTION_164();
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 1440) = v7;

  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE7BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_54_0();
  v16 = *(v15 + 1440);
  if (v16)
  {
    v17 = *(v15 + 1000);
    v18 = *(v15 + 1400);
    *(v15 + 264) = MEMORY[0x277D837D0];
    *(v15 + 240) = v17;
    *(v15 + 248) = v16;
    sub_23DE36CA4((v15 + 240), (v15 + 304));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a11 = v18;
    sub_23DE47BE4(v15 + 304, v14, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v34 = v18;
  }

  else
  {
    v20 = sub_23DF1E154(v14, 0xE700000000000000);
    if (v21)
    {
      v22 = v20;
      v23 = *(v15 + 1400);
      swift_isUniquelyReferenced_nonNull_native();
      a11 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      sub_23E1FE66C();
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((*(v23 + 56) + 32 * v22), (v15 + 272));
      v24 = v23;
      sub_23E1FE67C();
    }

    else
    {
      *(v15 + 272) = 0u;
      *(v15 + 288) = 0u;
      v24 = *(v15 + 1408);
    }

    v34 = v24;
    sub_23DE5CB68(v15 + 272, &qword_27E32C320, &unk_23E224B40);
  }

  OUTLINED_FUNCTION_6_5();

  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_72_0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, a11, a12, a13, a14);
}

uint64_t sub_23DE7BEEC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    *(&v8 + 1) = swift_getObjectType();
    *&v7 = a2;
    sub_23DE36CA4(&v7, &v5);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  swift_unknownObjectRetain();
  return sub_23DECD288(v3, &v7);
}

uint64_t sub_23DE7BF6C(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  return MEMORY[0x2822009F8](sub_23DE7BF94, 0, 0);
}

uint64_t sub_23DE7BF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_33_0();
  sub_23DE48110(*(v14 + 584), v14 + 112);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7A0, &qword_23E224B78);
  if (OUTLINED_FUNCTION_193(v14 + 64, v14 + 112, v16, v15))
  {
    v17 = *(v14 + 576);
    sub_23DE7E35C((v14 + 64), (v14 + 16));
    v18 = *(v14 + 40);
    v19 = __swift_project_boxed_opaque_existential_0((v14 + 16), v18);
    v17[3] = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v19, v18);
    __swift_destroy_boxed_opaque_existential_0((v14 + 16));
    goto LABEL_3;
  }

  v23 = *(v14 + 584);
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  sub_23DE5CB68(v14 + 64, &qword_27E32C7A8, &qword_23E224B80);
  sub_23DE48110(v23, v14 + 144);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  *(v14 + 600) = v24;
  if (OUTLINED_FUNCTION_193(v14 + 528, v14 + 144, v25, v24))
  {
    v26 = *(v14 + 528);
    *(v14 + 608) = v26;
    v27 = *(v26 + 16);
    *(v14 + 616) = v27;
    if (v27)
    {
      *(v14 + 632) = MEMORY[0x277D84F90];
      *(v14 + 624) = 0;
      sub_23DE48110(v26 + 32, v14 + 400);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v14 + 640) = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_70_0(v28);
      OUTLINED_FUNCTION_196();

      return sub_23DE7BF6C(v30, v31);
    }

    v42 = *(v14 + 576);
    v42[3] = *(v14 + 600);
    *v42 = MEMORY[0x277D84F90];
LABEL_3:
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_196();

    __asm { BRAA            X1, X16 }
  }

  sub_23DE48110(*(v14 + 584), v14 + 176);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B8, &unk_23E224B90);
  if (!OUTLINED_FUNCTION_193(v14 + 536, v14 + 176, v35, v34))
  {
    sub_23DE48110(*(v14 + 584), v14 + 208);
    v39 = sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v40 = *(v14 + 576);
      v41 = *(v14 + 544);
      v40[3] = v39;
      *v40 = v41;
      goto LABEL_3;
    }

    sub_23DE48110(*(v14 + 584), v14 + 240);
    v43 = MEMORY[0x277D839B0];
    if (swift_dynamicCast())
    {
      v44 = *(v14 + 576);
      v45 = *(v14 + 672);
      *(v44 + 24) = v43;
      *v44 = v45;
      goto LABEL_3;
    }

    sub_23DE48110(*(v14 + 584), v14 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7C8, &unk_23E224BA0);
    if (swift_dynamicCast())
    {
      v46 = [*(v14 + 552) wfName];
      if (v46)
      {
        v47 = v46;
        v48 = sub_23E1FDC1C();
        v50 = v49;

        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          v52 = *(v14 + 576);
          v52[3] = MEMORY[0x277D837D0];
          swift_unknownObjectRelease();
          *v52 = v48;
          v52[1] = v50;
          goto LABEL_3;
        }
      }

      swift_unknownObjectRelease();
    }

    sub_23DE48110(*(v14 + 584), v14 + 304);
    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    if (swift_dynamicCast())
    {
      v53 = *(v14 + 560);
      v54 = [v53 richListTitle];
      v55 = sub_23E1FDC1C();
      v57 = v56;

      v58 = HIBYTE(v57) & 0xF;
      if ((v57 & 0x2000000000000000) == 0)
      {
        v58 = v55 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v59 = *(v14 + 576);
        v60 = [v53 richListTitle];
        v61 = sub_23E1FDC1C();
        v63 = v62;

        v59[3] = MEMORY[0x277D837D0];
        *v59 = v61;
        v59[1] = v63;
        goto LABEL_3;
      }
    }

    sub_23DE48110(*(v14 + 584), v14 + 336);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C7D0, &unk_23E224BB0);
    if (OUTLINED_FUNCTION_193(v14 + 568, v14 + 336, v65, v64))
    {
      v66 = [*(v14 + 568) wfSerializedRepresentation];
      v67 = *(v14 + 576);
      if (v66)
      {
        v68 = v66;
        v69 = sub_23E1FDAAC();

        *(v67 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
        swift_unknownObjectRelease();
        *v67 = v69;
      }

      else
      {
        swift_unknownObjectRelease();
        *v67 = 0u;
        *(v67 + 16) = 0u;
      }
    }

    else
    {
      v70 = *(v14 + 576);
      sub_23DE48110(*(v14 + 584), v14 + 368);
      v71 = sub_23E1FDC7C();
      v70[3] = MEMORY[0x277D837D0];
      *v70 = v71;
      v70[1] = v72;
    }

    goto LABEL_3;
  }

  *(v14 + 648) = *(v14 + 536);
  v36 = swift_task_alloc();
  *(v14 + 656) = v36;
  *v36 = v14;
  v36[1] = sub_23DE7C7D4;
  OUTLINED_FUNCTION_196();

  return sub_23DE7C958(v37);
}

uint64_t sub_23DE7C550()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 400));
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DE7C638()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 488))
  {
    sub_23DE36CA4((v0 + 464), (v0 + 432));
    sub_23DE48110(v0 + 432, v0 + 496);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 632);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_6_1();
      sub_23DE4D024();
      v2 = v12;
    }

    v3 = *(v2 + 16);
    if (v3 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_103();
      sub_23DE4D024();
      v2 = v13;
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 432));
    *(v2 + 16) = v3 + 1;
    sub_23DE36CA4((v0 + 496), (v2 + 32 * v3 + 32));
  }

  else
  {
    sub_23DE5CB68(v0 + 464, &qword_27E32C320, &unk_23E224B40);
    v2 = *(v0 + 632);
  }

  v4 = *(v0 + 624) + 1;
  if (v4 == *(v0 + 616))
  {

    v5 = *(v0 + 576);
    v5[3] = *(v0 + 600);
    *v5 = v2;
    OUTLINED_FUNCTION_19();

    return v6();
  }

  else
  {
    *(v0 + 632) = v2;
    *(v0 + 624) = v4;
    sub_23DE48110(*(v0 + 608) + 32 * v4 + 32, v0 + 400);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 640) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_70_0(v8);

    return sub_23DE7BF6C(v10, v11);
  }
}

uint64_t sub_23DE7C7D4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 664) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE7C8D4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 664);
  v2 = *(v0 + 576);
  if (v1)
  {
    *(v2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
    *v2 = v1;
  }

  else
  {
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t sub_23DE7C958(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = sub_23E1FC0EC();
  v2[52] = v3;
  v2[53] = *(v3 - 8);
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE7CA18, 0, 0);
}

uint64_t sub_23DE7CA18()
{
  v1 = *(v0 + 400);
  v2 = *(v1 + 32);
  *(v0 + 552) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  result = sub_23E1FB7BC();
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 440) = v8;
    *(v0 + 448) = v9;
    if (!v5)
    {
      break;
    }

    v10 = *(v0 + 400);
LABEL_11:
    *(v0 + 456) = v5;
    *(v0 + 464) = v7;
    sub_23DE7E2AC(*(v10 + 48) + 40 * (__clz(__rbit64(v5)) | (v7 << 6)), v0 + 16);
    v12 = OUTLINED_FUNCTION_44_0();
    *(v0 + 472) = v12;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v25 = swift_task_alloc();
      v26 = OUTLINED_FUNCTION_78_0(v25);
      *v26 = v27;
      OUTLINED_FUNCTION_13_2(v26);
      OUTLINED_FUNCTION_191();

      return sub_23DE76E1C();
    }

    v13 = sub_23E1FE52C();
    v15 = v14;
    *(v0 + 496) = v13;
    *(v0 + 504) = v14;
    OUTLINED_FUNCTION_113();
    if (v16)
    {
      v17 = sub_23DF1E1CC();
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_40_0(v17);
        sub_23DE48110(v19, v0 + 96);
        sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
        OUTLINED_FUNCTION_151();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_55_1();
          v35 = [&unk_280DAE750 cachingIdentifier];
          OUTLINED_FUNCTION_154();
          sub_23E1FC0CC();

          v36 = sub_23E1FC0AC();
          v38 = OUTLINED_FUNCTION_30_1(v36, v37);
          v39(v38);
          v40 = swift_task_alloc();
          v41 = OUTLINED_FUNCTION_176(v40);
          *v41 = v42;
          OUTLINED_FUNCTION_14_2(v41);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_191();

          return sub_23DE788B8(v43, v44, v45, v46);
        }
      }

      OUTLINED_FUNCTION_113();
      if (v20)
      {
        v21 = sub_23DF1E1CC();
        if (v22)
        {
          v29 = OUTLINED_FUNCTION_40_0(v21);
          sub_23DE48110(v29, v0 + 128);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 544) = v30;
          *v30 = v31;
          OUTLINED_FUNCTION_10_4(v30);
          OUTLINED_FUNCTION_191();

          return sub_23DE7BF6C(v32, v33);
        }
      }
    }

    sub_23DE7E308(v0 + 56);

    v8 = *(v0 + 440);
    v9 = *(v0 + 448);
    v7 = *(v0 + 464);
    v5 = (*(v0 + 456) - 1) & *(v0 + 456);
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= (((1 << *(v0 + 552)) + 63) >> 6))
    {

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_191();

      __asm { BRAA            X2, X16 }
    }

    v10 = *(v0 + 400);
    v5 = *(v10 + 8 * v11 + 64);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE7CD44()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v1[44] = v0;
  v1[45] = v3;
  v1[46] = v4;
  OUTLINED_FUNCTION_164();
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v8 + 488) = v7;

  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_23DE7CE28()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *(v0 + 488);
  if (v2)
  {
    v3 = *(v0 + 360);
  }

  else
  {
    v4 = *(v0 + 472);
    v3 = v0 + 56;
    sub_23E1FE52C();
    OUTLINED_FUNCTION_174();
  }

  while (1)
  {
    *(v0 + 496) = v3;
    *(v0 + 504) = v2;
    OUTLINED_FUNCTION_113();
    if (v5)
    {
      v6 = sub_23DF1E1CC();
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_40_0(v6);
        sub_23DE48110(v8, v0 + 96);
        sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_55_1();
          v31 = [v2 cachingIdentifier];
          OUTLINED_FUNCTION_154();
          sub_23E1FC0CC();

          v32 = sub_23E1FC0AC();
          v34 = OUTLINED_FUNCTION_30_1(v32, v33);
          v35(v34);
          v36 = swift_task_alloc();
          v37 = OUTLINED_FUNCTION_176(v36);
          *v37 = v38;
          OUTLINED_FUNCTION_14_2(v37);
          OUTLINED_FUNCTION_53_0();
          OUTLINED_FUNCTION_196();

          sub_23DE788B8(v39, v40, v41, v42);
          return;
        }
      }

      OUTLINED_FUNCTION_113();
      if (v9)
      {
        v10 = sub_23DF1E1CC();
        if (v11)
        {
          v25 = OUTLINED_FUNCTION_40_0(v10);
          sub_23DE48110(v25, v0 + 128);
          swift_task_alloc();
          OUTLINED_FUNCTION_31();
          *(v0 + 544) = v26;
          *v26 = v27;
          OUTLINED_FUNCTION_10_4(v26);
          OUTLINED_FUNCTION_196();

          sub_23DE7BF6C(v28, v29);
          return;
        }
      }
    }

    sub_23DE7E308(v0 + 56);

    v12 = *(v0 + 464);
    if (((*(v0 + 456) - 1) & *(v0 + 456)) == 0)
    {
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_74_1(v12);
    sub_23DE7E2AC(v18 + 40 * v17, v0 + 16);
    v2 = OUTLINED_FUNCTION_44_0();
    *(v0 + 472) = v2;
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      v21 = swift_task_alloc();
      v22 = OUTLINED_FUNCTION_78_0(v21);
      *v22 = v23;
      OUTLINED_FUNCTION_13_2(v22);
      OUTLINED_FUNCTION_196();

      sub_23DE76E1C();
      return;
    }

    v3 = v0 + 56;
    sub_23E1FE52C();
    OUTLINED_FUNCTION_174();
  }

  while (!__OFADD__(v12, 1))
  {
    OUTLINED_FUNCTION_156();
    if (v13 == v14)
    {

      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_196();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_94();
    if (v16)
    {
      v12 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_23DE7D108()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 536) = v5;

  v7 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23DE7D208()
{
  v2 = *(v0 + 536);
  if (!v2)
  {
    v14 = OUTLINED_FUNCTION_50();
    v16 = sub_23DF1E154(v14, v15);
    v18 = v17;

    v19 = *(v0 + 512);
    if (v18)
    {
      v20 = *(v0 + 440);
      swift_isUniquelyReferenced_nonNull_native();
      v1 = v20[3];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      OUTLINED_FUNCTION_189(v21);
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((v20[7] + 32 * v16), (v0 + 288));
      sub_23E1FE67C();

      sub_23DE7E308(v0 + 56);
      v22 = v20;
    }

    else
    {
      sub_23DE7E308(v0 + 56);

      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      v20 = *(v0 + 440);
      v22 = *(v0 + 448);
    }

    sub_23DE5CB68(v0 + 288, &qword_27E32C320, &unk_23E224B40);
LABEL_18:
    while (1)
    {
      v29 = *(v0 + 456);
      v28 = *(v0 + 464);
      *(v0 + 440) = v20;
      *(v0 + 448) = v22;
      if (((v29 - 1) & v29) == 0)
      {
        break;
      }

LABEL_24:
      OUTLINED_FUNCTION_74_1(v28);
      sub_23DE7E2AC(v34 + 40 * v33, v0 + 16);
      v35 = OUTLINED_FUNCTION_44_0();
      *(v0 + 472) = v35;
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      if (swift_dynamicCastObjCClass())
      {
        v48 = swift_task_alloc();
        v49 = OUTLINED_FUNCTION_78_0(v48);
        *v49 = v50;
        OUTLINED_FUNCTION_13_2(v49);
        OUTLINED_FUNCTION_171();

        sub_23DE76E1C();
        return;
      }

      v36 = sub_23E1FE52C();
      v38 = v37;
      *(v0 + 496) = v36;
      *(v0 + 504) = v37;
      OUTLINED_FUNCTION_113();
      if (v39)
      {
        v40 = sub_23DF1E1CC();
        if (v41)
        {
          v42 = OUTLINED_FUNCTION_40_0(v40);
          sub_23DE48110(v42, v0 + 96);
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_151();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55_1();
            v58 = [v38 cachingIdentifier];
            OUTLINED_FUNCTION_154();
            sub_23E1FC0CC();

            v59 = sub_23E1FC0AC();
            v61 = OUTLINED_FUNCTION_30_1(v59, v60);
            v62(v61);
            v63 = swift_task_alloc();
            v64 = OUTLINED_FUNCTION_176(v63);
            *v64 = v65;
            OUTLINED_FUNCTION_14_2(v64);
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_171();

            sub_23DE788B8(v66, v67, v68, v69);
            return;
          }
        }

        OUTLINED_FUNCTION_113();
        if (v43)
        {
          v44 = sub_23DF1E1CC();
          if (v45)
          {
            v52 = OUTLINED_FUNCTION_40_0(v44);
            sub_23DE48110(v52, v0 + 128);
            swift_task_alloc();
            OUTLINED_FUNCTION_31();
            *(v0 + 544) = v53;
            *v53 = v54;
            OUTLINED_FUNCTION_10_4(v53);
            OUTLINED_FUNCTION_171();

            sub_23DE7BF6C(v55, v56);
            return;
          }
        }
      }

      sub_23DE7E308(v0 + 56);

      v20 = *(v0 + 440);
      v22 = *(v0 + 448);
    }

    while (!__OFADD__(v28, 1))
    {
      OUTLINED_FUNCTION_156();
      if (v30 == v8)
      {

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_171();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_94();
      if (v32)
      {
        v28 = v31;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v3 = *(v0 + 440);
  *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(v0 + 256) = v2;
  sub_23DE36CA4((v0 + 256), (v0 + 320));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 392) = v3;
  v4 = OUTLINED_FUNCTION_50();
  sub_23DF1E154(v4, v5);
  OUTLINED_FUNCTION_180();
  if (v8)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
LABEL_13:
    v20 = *(v0 + 392);
    v1 = *(v0 + 504);
    if (v10)
    {
      v23 = (v20[7] + 32 * v9);
      __swift_destroy_boxed_opaque_existential_0(v23);
      sub_23DE36CA4((v0 + 320), v23);

LABEL_17:

      sub_23DE7E308(v0 + 56);
      v22 = v20;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_104();
    *v25 = v24;
    v25[1] = v1;
    sub_23DE36CA4((v0 + 320), (v20[7] + 32 * v9));
    v26 = v20[2];
    v8 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v8)
    {
      v20[2] = v27;
      goto LABEL_17;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v11 = sub_23DF1E154(*(v0 + 496), *(v0 + 504));
  if ((v10 & 1) == (v12 & 1))
  {
    v9 = v11;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_171();

  sub_23E1FE7BC();
}

uint64_t sub_23DE7D6EC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_23DE7D7D0()
{
  OUTLINED_FUNCTION_140();
  if (!*(v0 + 184))
  {
    sub_23DE5CB68(v0 + 160, &qword_27E32C320, &unk_23E224B40);
    v12 = OUTLINED_FUNCTION_50();
    v14 = sub_23DF1E154(v12, v13);
    v16 = v15;

    if (v16)
    {
      v17 = *(v0 + 440);
      swift_isUniquelyReferenced_nonNull_native();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
      OUTLINED_FUNCTION_189(v18);
      OUTLINED_FUNCTION_167();
      sub_23DE36CA4((*(v17 + 56) + 32 * v14), (v0 + 192));
      sub_23E1FE67C();
      OUTLINED_FUNCTION_185();
      v19 = v17;
    }

    else
    {
      OUTLINED_FUNCTION_185();
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0u;
      v17 = *(v0 + 440);
      v19 = *(v0 + 448);
    }

    sub_23DE5CB68(v0 + 192, &qword_27E32C320, &unk_23E224B40);
LABEL_18:
    while (1)
    {
      v27 = *(v0 + 456);
      v26 = *(v0 + 464);
      *(v0 + 440) = v17;
      *(v0 + 448) = v19;
      if (((v27 - 1) & v27) == 0)
      {
        break;
      }

LABEL_23:
      OUTLINED_FUNCTION_74_1(v26);
      sub_23DE7E2AC(v31 + 40 * v30, v0 + 16);
      v32 = OUTLINED_FUNCTION_44_0();
      *(v0 + 472) = v32;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v45 = swift_task_alloc();
        v46 = OUTLINED_FUNCTION_78_0(v45);
        *v46 = v47;
        OUTLINED_FUNCTION_13_2(v46);
        OUTLINED_FUNCTION_124();

        sub_23DE76E1C();
        return;
      }

      v33 = sub_23E1FE52C();
      v35 = v34;
      *(v0 + 496) = v33;
      *(v0 + 504) = v34;
      OUTLINED_FUNCTION_113();
      if (v36)
      {
        v37 = sub_23DF1E1CC();
        if (v38)
        {
          v39 = OUTLINED_FUNCTION_40_0(v37);
          sub_23DE48110(v39, v0 + 96);
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_151();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_55_1();
            v55 = [&unk_280DAE750 cachingIdentifier];
            OUTLINED_FUNCTION_154();
            sub_23E1FC0CC();

            v56 = sub_23E1FC0AC();
            v58 = OUTLINED_FUNCTION_30_1(v56, v57);
            v59(v58);
            v60 = swift_task_alloc();
            v61 = OUTLINED_FUNCTION_176(v60);
            *v61 = v62;
            OUTLINED_FUNCTION_14_2(v61);
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_124();

            sub_23DE788B8(v63, v64, v65, v66);
            return;
          }
        }

        OUTLINED_FUNCTION_113();
        if (v40)
        {
          v41 = sub_23DF1E1CC();
          if (v42)
          {
            v49 = OUTLINED_FUNCTION_40_0(v41);
            sub_23DE48110(v49, v0 + 128);
            swift_task_alloc();
            OUTLINED_FUNCTION_31();
            *(v0 + 544) = v50;
            *v50 = v51;
            OUTLINED_FUNCTION_10_4(v50);
            OUTLINED_FUNCTION_124();

            sub_23DE7BF6C(v52, v53);
            return;
          }
        }
      }

      sub_23DE7E308(v0 + 56);

      v17 = *(v0 + 440);
      v19 = *(v0 + 448);
    }

    while (!__OFADD__(v26, 1))
    {
      if (v26 + 1 >= (((1 << *(v0 + 552)) + 63) >> 6))
      {

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_124();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_94();
      if (v29)
      {
        v26 = v28;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v1 = *(v0 + 440);
  sub_23DE36CA4((v0 + 160), (v0 + 224));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 376) = v1;
  v2 = OUTLINED_FUNCTION_50();
  sub_23DF1E154(v2, v3);
  OUTLINED_FUNCTION_180();
  if (v6)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
LABEL_13:
    if (v8)
    {

      v17 = *(v0 + 376);
      v20 = (*(v17 + 56) + 32 * v7);
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_23DE36CA4((v0 + 224), v20);
      OUTLINED_FUNCTION_185();
LABEL_17:
      v19 = v17;
      goto LABEL_18;
    }

    v17 = *(v0 + 376);
    OUTLINED_FUNCTION_104();
    *v23 = v22;
    v23[1] = v21;
    sub_23DE36CA4((v0 + 224), (*(v17 + 56) + 32 * v7));
    OUTLINED_FUNCTION_185();
    v24 = *(v17 + 16);
    v6 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v6)
    {
      *(v17 + 16) = v25;
      goto LABEL_17;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v9 = sub_23DF1E154(*(v0 + 496), *(v0 + 504));
  if ((v8 & 1) == (v10 & 1))
  {
    v7 = v9;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_124();

  sub_23E1FE7BC();
}

id sub_23DE7DCB0(uint64_t a1)
{
  type metadata accessor for WFCoercionOptionName(0);
  sub_23DE7E23C(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName);
  v1 = sub_23E1FDA9C();

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_23DE7DD6C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C740, &qword_23E224B10);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_59();
  v35 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = sub_23E1FD76C();
  OUTLINED_FUNCTION_6_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = *(v11 + 16);
  v33 = v2;
  v19(v15, v2, v9);
  v20 = MEMORY[0x277D73128];
  v31 = sub_23DE7E23C(&unk_280DAE590, MEMORY[0x277D73128]);
  sub_23E1FE4CC();
  v21 = v20;
  v22 = v34;
  sub_23DE7E23C(&unk_280DAE5A0, v21);
  v32 = a2;
  v23 = sub_23E1FDB2C();
  v24 = *(v22 + 48);
  *v8 = (v23 & 1) == 0;
  if (v23)
  {
    (*(v11 + 32))(&v8[v24], v18, v9);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_0();
    v26(v25);
    v27 = v32;
    v19(&v8[v24], v32, v9);
    v19(v15, v27, v9);
    sub_23E1FE4DC();
  }

  v28 = v35;
  sub_23DE7E1CC(v8, v35);
  v29 = *v28;
  (*(v11 + 32))(v36, &v28[*(v22 + 48)], v9);
  return v29;
}

uint64_t sub_23DE7E040(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_23DE7E098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C730, &qword_23E224A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10ContentKit28WFGenerativeSessionProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23DE7E128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DE7E168(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_23DE7E1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C740, &qword_23E224B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE7E23C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_23DE7E35C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t OUTLINED_FUNCTION_4_3()
{
  *(v2 + 464) = v0;
  v4 = *(v2 + 272);
  *(v0 + 16) = v1;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_23E1FBADC();
}

void OUTLINED_FUNCTION_17_3(uint64_t a1@<X8>)
{
  v1[12] = sub_23DE7BEEC;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 152), *(*(v0 + 152) + 24));

  return sub_23E1FBA3C();
}

void OUTLINED_FUNCTION_28_1(unint64_t a1@<X8>)
{

  sub_23DE4D12C(a1 > 1, v2, 1, v1);
}

void OUTLINED_FUNCTION_36_1()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_42_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_44_0()
{
  v2 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v2;
  *(v0 + 88) = *(v0 + 48);

  return MEMORY[0x28211F440]();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_1()
{
}

uint64_t OUTLINED_FUNCTION_57_0()
{
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_23DE7E040(v0, v1);
}

uint64_t OUTLINED_FUNCTION_66_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_1()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_82_0()
{

  return sub_23E1FCB9C();
}

uint64_t OUTLINED_FUNCTION_83_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 24) = sub_23DE79658;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_86_0()
{
  *(v0 + 24) = sub_23DE79658;

  return swift_continuation_init();
}

_OWORD *OUTLINED_FUNCTION_89_0()
{
  *(v0 + 560) = v1;
  *(v0 + 568) = v2;

  return sub_23DE36CA4((v0 + 560), (v0 + 592));
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

void OUTLINED_FUNCTION_92_0(__n128 a1)
{
  v3[25] = a1;
  v3[24].n128_u64[0] = v1;
  v3[24].n128_u64[1] = v2;
}

uint64_t OUTLINED_FUNCTION_105(uint64_t result)
{
  *(v2 + 1272) = result;
  *(v2 + 1264) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_dynamicCastObjCClass();
}

void OUTLINED_FUNCTION_128(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_131(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_133()
{

  return sub_23DE467E8(v0, 0xE700000000000000, v1);
}

_OWORD *OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return sub_23DE47BE4(a1, v4, 0xEA00000000006570, a4);
}

uint64_t OUTLINED_FUNCTION_143()
{

  return sub_23E1FBF9C();
}

id OUTLINED_FUNCTION_144(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_149()
{
  *(v0 + 432) = v1;
  *(v0 + 440) = v2;
  sub_23DE36CA4((v0 + 432), (v0 + 464));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_23DE7E098(v1 + 40, v0 + 56);
}

__n128 *OUTLINED_FUNCTION_158(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684632949;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_166()
{
}

uint64_t OUTLINED_FUNCTION_167()
{
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_23E1FDA9C();
}

uint64_t OUTLINED_FUNCTION_169()
{

  return sub_23E1FBFDC();
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_23E1FDC0C();
}

void OUTLINED_FUNCTION_172()
{
}

uint64_t OUTLINED_FUNCTION_185()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  return sub_23DE7E308(v0 + 56);
}

void OUTLINED_FUNCTION_187()
{
  v2 = *(v0 + 528);
}

id OUTLINED_FUNCTION_188(uint64_t a1)
{

  return [v1 isKindOfClass_];
}

uint64_t OUTLINED_FUNCTION_189(uint64_t a1)
{

  return sub_23E1FE66C();
}

uint64_t OUTLINED_FUNCTION_190()
{
  *(v2 + 1376) = v0;
  *(v2 + 1368) = v1;

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_193(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_194(float a1)
{
  *v1 = a1;

  return sub_23E1FB7BC();
}

void OUTLINED_FUNCTION_195()
{
}

uint64_t sub_23DE7F394()
{
  sub_23E1FDECC();
  *(v0 + 16) = sub_23E1FDEBC();
  v2 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE7F428, v2, v1);
}

uint64_t sub_23DE7F428()
{

  SBSLockDevice();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DE7F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE7F5BC, v5, v4);
}

uint64_t sub_23DE7F5BC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23DE7F680;

  return sub_23DE7F394();
}

uint64_t sub_23DE7F680()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 48);
  if (v2)
  {
    v9 = sub_23E1FBEBC();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_23DE7F880()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LockScreenAction();
  v1 = objc_msgSendSuper2(&v7, sel_disabledOnPlatforms);
  type metadata accessor for WFExecutionPlatform(0);
  v2 = sub_23E1FDDEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v4 = *MEMORY[0x277D7CC80];
  *(inited + 32) = *MEMORY[0x277D7CC80];
  v5 = v4;
  sub_23DE571A8(inited);
  return v2;
}

id sub_23DE7F93C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for LockScreenAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DE7FAB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE7FB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE7FB70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DE7F520(v2, v3, v4);
}

id sub_23DE7FC58()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v218 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277D7CB18];
  *(inited + 16) = xmmword_23E222360;
  v8 = *v7;
  v9 = MEMORY[0x277D837D0];
  *(inited + 32) = v8;
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24FB40;
  v10 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v8;
  v12 = v10;
  v13 = sub_23E1FDCBC("json|plist|xml|urlencoded|query|string|for|key", 46);
  v15 = v14;
  v16 = v5;
  sub_23E1FDCBC("json|plist|xml|urlencoded|query|string|for|key", 46);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v17 = qword_280DAE278;
  v18 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v19 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v21 = v20;
  v22 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v235 = v22;
  *(inited + 80) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v22;
  *(inited + 112) = v23;
  v233 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222370;
  v25 = *MEMORY[0x277D7CC20];
  *(v24 + 32) = *MEMORY[0x277D7CC20];
  v26 = v23;
  v27 = v25;
  v232 = sub_23E1FDCBC("You can reference values deep inside of a dictionary by providing multiple keys separated by dots. For example, to get the value soup from the dictionary {beverages: [{favorite: soup}]}, you can specify the key path beverages.1.favorite.", 247);
  v29 = v28;
  sub_23E1FDCBC("You can reference values deep inside of a dictionary by providing multiple keys separated by dots. For example, to get the value soup from the dictionary {beverages: [{favorite: soup}]}, you can specify the key path beverages.1.favorite.", 247);
  sub_23E1FC14C();
  v236 = v17;
  v30 = [v17 bundleURL];
  v234 = v2;
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v16;
  sub_23DE477A0(v232, v29);
  *(v24 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v235;
  *(v24 + 64) = v235;
  *(v24 + 72) = v34;
  v36 = v34;
  v232 = sub_23E1FDCBC("Gets the value for the specified key in the dictionary passed into the action.", 78);
  v38 = v37;
  sub_23E1FDCBC("Gets the value for the specified key in the dictionary passed into the action.", 78);
  v222 = v32;
  sub_23E1FC14C();
  v39 = [v17 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v232, v38);
  *(v24 + 104) = v35;
  *(v24 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v42 = sub_23E1FDABC();
  v43 = v233;
  v44 = sub_23DF3BE54(v42);
  v45 = MEMORY[0x277D7CB48];
  *(inited + 120) = v44;
  v46 = *v45;
  *(inited + 144) = v43;
  *(inited + 152) = v46;
  *(inited + 160) = 0x65676E61724FLL;
  *(inited + 168) = 0xE600000000000000;
  v47 = *MEMORY[0x277D7CB60];
  v48 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v47;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000023E24FCE0;
  v49 = *MEMORY[0x277D7CCC0];
  *(inited + 224) = v48;
  *(inited + 232) = v49;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v50 = swift_initStackObject();
  v231 = xmmword_23E222350;
  *(v50 + 16) = xmmword_23E222350;
  *(v50 + 32) = 0x656C7069746C754DLL;
  *(v50 + 40) = 0xE800000000000000;
  v51 = MEMORY[0x277D839B0];
  *(v50 + 48) = 0;
  *(v50 + 72) = v51;
  strcpy((v50 + 80), "ParameterKey");
  *(v50 + 93) = 0;
  *(v50 + 94) = -5120;
  *(v50 + 96) = 0x7475706E494657;
  *(v50 + 104) = 0xE700000000000000;
  *(v50 + 120) = v48;
  *(v50 + 128) = 0x6465726975716552;
  *(v50 + 136) = 0xE800000000000000;
  *(v50 + 144) = 1;
  *(v50 + 168) = v51;
  *(v50 + 176) = 0x7365707954;
  v52 = v51;
  *(v50 + 184) = 0xE500000000000000;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v50 + 216) = v227;
  *(v50 + 192) = &unk_2850236F8;
  v53 = v46;
  v54 = v47;
  v55 = v49;
  v56 = sub_23E1FDABC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v233 = v57;
  *(inited + 240) = v56;
  v58 = *MEMORY[0x277D7CCC8];
  *(inited + 264) = v57;
  *(inited + 272) = v58;
  *(inited + 280) = 0;
  v59 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v52;
  *(inited + 312) = v59;
  v60 = v58;
  v61 = v59;
  v62 = sub_23E1FDCBC("Get Dictionary Value (Action Name)", 34);
  v64 = v63;
  sub_23E1FDCBC("Get Dictionary Value", 20);
  sub_23E1FC14C();
  v65 = v236;
  v66 = [v236 bundleURL];
  sub_23E1FBF9C();

  v67 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v62, v64);
  *(inited + 320) = v68;
  v69 = *MEMORY[0x277D7CDD0];
  v70 = v235;
  *(inited + 344) = v235;
  *(inited + 352) = v69;
  v71 = swift_allocObject();
  *(v71 + 16) = v231;
  *(v71 + 32) = 0x75736F6C63736944;
  *(v71 + 40) = 0xEF6C6576654C6572;
  *(v71 + 48) = 0x63696C627550;
  *(v71 + 56) = 0xE600000000000000;
  *(v71 + 72) = MEMORY[0x277D837D0];
  *(v71 + 80) = 0x656C7069746C754DLL;
  *(v71 + 88) = 0xE800000000000000;
  *(v71 + 96) = 1;
  *(v71 + 120) = MEMORY[0x277D839B0];
  *(v71 + 128) = 0x614E74757074754FLL;
  *(v71 + 136) = 0xEA0000000000656DLL;
  v72 = v69;
  v232 = sub_23E1FDCBC("Dictionary Value (Default Output Name)", 38);
  v74 = v73;
  sub_23E1FDCBC("Dictionary Value", 16);
  sub_23E1FC14C();
  v75 = [v65 bundleURL];
  sub_23E1FBF9C();

  v76 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v232, v74);
  *(v71 + 144) = v77;
  *(v71 + 168) = v70;
  *(v71 + 176) = 0x7365707954;
  v78 = v227;
  *(v71 + 216) = v227;
  *(v71 + 184) = 0xE500000000000000;
  *(v71 + 192) = &unk_285023728;
  v79 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v80 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v233;
  *(inited + 392) = v80;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v232 = swift_allocObject();
  v230 = xmmword_23E224C00;
  *(v232 + 16) = xmmword_23E224C00;
  v233 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_23E224C10;
  v82 = *MEMORY[0x277D7CDF8];
  *(v81 + 32) = *MEMORY[0x277D7CDF8];
  *(v81 + 40) = 0xD000000000000016;
  *(v81 + 48) = 0x800000023E24FDA0;
  v83 = *MEMORY[0x277D7CE00];
  *(v81 + 64) = v79;
  *(v81 + 72) = v83;
  v84 = MEMORY[0x277D7CE20];
  *(v81 + 80) = 0x65756C6156;
  *(v81 + 88) = 0xE500000000000000;
  v85 = *v84;
  *(v81 + 104) = v79;
  *(v81 + 112) = v85;
  *(v81 + 120) = &unk_285023798;
  v86 = *MEMORY[0x277D7CE38];
  *(v81 + 144) = v78;
  *(v81 + 152) = v86;
  v226 = swift_allocObject();
  *(v226 + 16) = v230;
  v227 = v82;
  v87 = v80;
  v88 = v83;
  v89 = v85;
  v90 = v86;
  v91 = sub_23E1FDCBC("Value (WFGetDictionaryValueType)", 32);
  v93 = v92;
  sub_23E1FDCBC("Value", 5);
  sub_23E1FC14C();
  v94 = v236;
  v95 = [v236 bundleURL];
  v229 = inited;
  sub_23E1FBF9C();

  v96 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v91, v93);
  v97 = v226;
  *(v226 + 32) = v98;
  v99 = sub_23E1FDCBC("All Keys (WFGetDictionaryValueType)", 35);
  v225 = v100;
  sub_23E1FDCBC("All Keys", 8);
  sub_23E1FC14C();
  v101 = [v94 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v99, v225);
  *(v97 + 40) = v103;
  v104 = sub_23E1FDCBC("All Values (WFGetDictionaryValueType)", 37);
  v106 = v105;
  sub_23E1FDCBC("All Values", 10);
  sub_23E1FC14C();
  v107 = [v94 bundleURL];
  sub_23E1FBF9C();

  v108 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v104, v106);
  v109 = v226;
  *(v226 + 48) = v110;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v81 + 160) = v109;
  v112 = *MEMORY[0x277D7CE70];
  *(v81 + 184) = v111;
  *(v81 + 192) = v112;
  *(v81 + 200) = 0xD000000000000018;
  *(v81 + 208) = 0x800000023E24D6F0;
  v113 = *MEMORY[0x277D7CE80];
  *(v81 + 224) = MEMORY[0x277D837D0];
  *(v81 + 232) = v113;
  v114 = v112;
  v115 = v113;
  v116 = v114;
  v117 = v115;
  v223 = v116;
  v224 = v117;
  v118 = sub_23E1FDCBC("Get (WFGetDictionaryValueType)", 30);
  v120 = v119;
  sub_23E1FDCBC("Get", 3);
  sub_23E1FC14C();
  v121 = v236;
  v122 = [v236 bundleURL];
  sub_23E1FBF9C();

  v123 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v118, v120);
  *(v81 + 264) = v235;
  *(v81 + 240) = v124;
  _s3__C3KeyVMa_0(0);
  v226 = v125;
  v225 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v126 = sub_23E1FDABC();
  v127 = sub_23DF3BE9C(v126);
  *(v232 + 32) = v127;
  v128 = swift_allocObject();
  v129 = MEMORY[0x277D7CDF0];
  *(v128 + 16) = xmmword_23E224420;
  v130 = *v129;
  *(v128 + 32) = v130;
  *(v128 + 40) = 1701736270;
  *(v128 + 48) = 0xE400000000000000;
  v131 = MEMORY[0x277D837D0];
  v132 = v227;
  *(v128 + 64) = MEMORY[0x277D837D0];
  *(v128 + 72) = v132;
  *(v128 + 80) = 0xD000000000000014;
  *(v128 + 88) = 0x800000023E24EAF0;
  v133 = *MEMORY[0x277D7CE18];
  *(v128 + 104) = v131;
  *(v128 + 112) = v133;
  *(v128 + 120) = 1;
  v134 = v223;
  *(v128 + 144) = MEMORY[0x277D839B0];
  *(v128 + 152) = v134;
  *(v128 + 160) = 0x6F69746369444657;
  *(v128 + 168) = 0xEF79654B7972616ELL;
  v135 = v224;
  *(v128 + 184) = v131;
  *(v128 + 192) = v135;
  v136 = v130;
  v137 = v133;
  v138 = sub_23E1FDCBC("Key (WFDictionaryKey)", 21);
  v140 = v139;
  sub_23E1FDCBC("Key", 3);
  sub_23E1FC14C();
  v141 = [v121 bundleURL];
  sub_23E1FBF9C();

  v142 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v138, v140);
  *(v128 + 200) = v143;
  v144 = *MEMORY[0x277D7CEA8];
  v145 = v235;
  *(v128 + 224) = v235;
  *(v128 + 232) = v144;
  v219 = v144;
  v218 = sub_23E1FDCBC("Key (WFDictionaryKey)", 21);
  v147 = v146;
  sub_23E1FDCBC("Key", 3);
  sub_23E1FC14C();
  v148 = [v121 bundleURL];
  sub_23E1FBF9C();

  v149 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v218, v147);
  *(v128 + 240) = v150;
  v151 = *MEMORY[0x277D7CEE8];
  *(v128 + 264) = v145;
  *(v128 + 272) = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_23E222340;
  v153 = v151;
  v154 = MEMORY[0x277D837D0];
  *(v152 + 32) = sub_23E1FDABC();
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v128 + 280) = v152;
  v156 = *MEMORY[0x277D7CF10];
  *(v128 + 304) = v155;
  *(v128 + 312) = v156;
  *(v128 + 344) = v154;
  *(v128 + 320) = 0x7468676952;
  *(v128 + 328) = 0xE500000000000000;
  v157 = v156;
  v158 = sub_23E1FDABC();
  v159 = sub_23DF3BE9C(v158);
  *(v232 + 40) = v159;
  v160 = swift_allocObject();
  *(v160 + 16) = v231;
  *(v160 + 32) = v227;
  *(v160 + 40) = 0xD000000000000019;
  *(v160 + 48) = 0x800000023E24F180;
  v161 = v223;
  *(v160 + 64) = v154;
  *(v160 + 72) = v161;
  *(v160 + 80) = 0x7475706E494657;
  *(v160 + 88) = 0xE700000000000000;
  v162 = v224;
  *(v160 + 104) = v154;
  *(v160 + 112) = v162;
  v163 = sub_23E1FDCBC("Dictionary (WFInput)", 20);
  v165 = v164;
  sub_23E1FDCBC("Dictionary", 10);
  sub_23E1FC14C();
  v166 = v236;
  v167 = [v236 bundleURL];
  sub_23E1FBF9C();

  v168 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v163, v165);
  *(v160 + 120) = v169;
  v170 = v235;
  v171 = v219;
  *(v160 + 144) = v235;
  *(v160 + 152) = v171;
  v172 = sub_23E1FDCBC("Dictionary (WFInput)", 20);
  *&v231 = v173;
  sub_23E1FDCBC("Dictionary", 10);
  sub_23E1FC14C();
  v174 = [v166 bundleURL];
  sub_23E1FBF9C();

  v175 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v172, v231);
  *(v160 + 184) = v170;
  *(v160 + 160) = v176;
  v177 = sub_23E1FDABC();
  v178 = sub_23DF3BE9C(v177);
  v179 = v232;
  *(v232 + 48) = v178;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v181 = v229;
  *(v229 + 400) = v179;
  v182 = *MEMORY[0x277D7CB98];
  *(v181 + 424) = v180;
  *(v181 + 432) = v182;
  v235 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v183 = swift_allocObject();
  *(v183 + 16) = v230;
  v233 = "Dictionary (WFInput)";
  v184 = v182;
  v185 = sub_23E1FDCBC("Get ${WFGetDictionaryValueType} in ${WFInput}", 45);
  v187 = v186;
  sub_23E1FDCBC("Get ${WFGetDictionaryValueType} in ${WFInput}", 45);
  sub_23E1FC14C();
  v188 = v236;
  v189 = [v236 bundleURL];
  sub_23E1FBF9C();

  v190 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v185, v187);
  v192 = v191;
  v193 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v183 + 32) = sub_23DF34C40(0xD00000000000002ALL, v233 | 0x8000000000000000, v192);
  v233 = "onaryValueType} in ${WFInput}";
  v194 = sub_23E1FDCBC("Get ${WFGetDictionaryValueType} in ${WFInput}", 45);
  v196 = v195;
  sub_23E1FDCBC("Get ${WFGetDictionaryValueType} in ${WFInput}", 45);
  sub_23E1FC14C();
  v197 = [v188 bundleURL];
  sub_23E1FBF9C();

  v198 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v194, v196);
  v200 = v199;
  v201 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v183 + 40) = sub_23DF34C40(0xD00000000000002CLL, v233 | 0x8000000000000000, v200);
  v202 = sub_23E1FDCBC("Get ${WFGetDictionaryValueType} for ${WFDictionaryKey} in ${WFInput}", 68);
  v204 = v203;
  sub_23E1FDCBC("Get ${WFGetDictionaryValueType} for ${WFDictionaryKey} in ${WFInput}", 68);
  sub_23E1FC14C();
  v205 = [v236 bundleURL];
  sub_23E1FBF9C();

  v206 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v202, v204);
  v208 = v207;
  v209 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  *(v183 + 48) = sub_23DF34C40(0xD000000000000037, 0x800000023E24FF50, v208);
  v210 = v235;
  v211 = sub_23DF333E0(v183);
  v212 = MEMORY[0x277D7CB78];
  v213 = v229;
  *(v229 + 440) = v211;
  v214 = *v212;
  *(v213 + 464) = v210;
  *(v213 + 472) = v214;
  *(v213 + 504) = MEMORY[0x277D839B0];
  *(v213 + 480) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v215 = v214;
  v216 = sub_23E1FDABC();
  return sub_23DF3BF9C(v216);
}

id sub_23DE81380()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v138 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x800000023E250020;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("date|set|pass|time|zone|timezone|current|now|get", 48);
  v14 = v13;
  sub_23E1FDCBC("date|set|pass|time|zone|timezone|current|now|get", 48);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v153 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v152 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v150 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = v2;
  v23 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v24 = v20;
  v25 = v23;
  v26 = sub_23E1FDCBC("Converts the specified date and time from one time zone to another.", 67);
  v28 = v27;
  sub_23E1FDCBC("Converts the specified date and time from one time zone to another.", 67);
  sub_23E1FC14C();
  v29 = [v153 bundleURL];
  v151 = v22;
  sub_23E1FBF9C();

  v30 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v26, v28);
  *(v21 + 64) = v152;
  *(v21 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v32 = sub_23E1FDABC();
  v33 = v150;
  *(inited + 120) = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v33;
  *(inited + 152) = v34;
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v35;
  *(inited + 200) = 0x65626F6C67;
  *(inited + 208) = 0xE500000000000000;
  v37 = v5;
  v38 = *MEMORY[0x277D7CB58];
  *(inited + 224) = v36;
  *(inited + 232) = v38;
  *(inited + 240) = 6579538;
  *(inited + 248) = 0xE300000000000000;
  v39 = *MEMORY[0x277D7CCC0];
  *(inited + 264) = v36;
  *(inited + 272) = v39;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v40 = swift_initStackObject();
  v147 = xmmword_23E222350;
  *(v40 + 16) = xmmword_23E222350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x277D839B0];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 1702125892;
  *(v40 + 104) = 0xE400000000000000;
  *(v40 + 120) = v36;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v40 + 216) = v150;
  *(v40 + 192) = &unk_285023858;
  v42 = v34;
  v43 = v35;
  v44 = v38;
  v45 = v39;
  v46 = sub_23E1FDABC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v149 = v47;
  *(inited + 280) = v46;
  v48 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v47;
  *(inited + 312) = v48;
  v49 = v48;
  v50 = sub_23E1FDCBC("Convert Time Zone (Action Name)", 31);
  v52 = v51;
  sub_23E1FDCBC("Convert Time Zone", 17);
  sub_23E1FC14C();
  v53 = v153;
  v54 = [v153 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v56 = v37;
  sub_23DE477A0(v50, v52);
  *(inited + 320) = v57;
  v58 = *MEMORY[0x277D7CDD0];
  v59 = v152;
  *(inited + 344) = v152;
  *(inited + 352) = v58;
  v60 = swift_initStackObject();
  *(v60 + 16) = v147;
  *(v60 + 32) = 0x75736F6C63736944;
  *(v60 + 40) = 0xEF6C6576654C6572;
  *(v60 + 48) = 0x63696C627550;
  *(v60 + 56) = 0xE600000000000000;
  *(v60 + 72) = MEMORY[0x277D837D0];
  *(v60 + 80) = 0x656C7069746C754DLL;
  *(v60 + 88) = 0xE800000000000000;
  *(v60 + 96) = 0;
  *(v60 + 120) = MEMORY[0x277D839B0];
  *(v60 + 128) = 0x614E74757074754FLL;
  *(v60 + 136) = 0xEA0000000000656DLL;
  v61 = v58;
  v148 = sub_23E1FDCBC("Converted Date (Default Output Name)", 36);
  v63 = v62;
  sub_23E1FDCBC("Converted Date", 14);
  v141 = v56;
  sub_23E1FC14C();
  v64 = [v53 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v148, v63);
  *(v60 + 144) = v66;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v150;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_285023898;
  v67 = MEMORY[0x277D837D0];
  *(inited + 360) = sub_23E1FDABC();
  v68 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v149;
  *(inited + 392) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_23E224C00;
  v149 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_23E224710;
  v70 = *MEMORY[0x277D7CDF8];
  *(v69 + 32) = *MEMORY[0x277D7CDF8];
  *(v69 + 40) = 0xD000000000000014;
  *(v69 + 48) = 0x800000023E250150;
  v71 = *MEMORY[0x277D7CE70];
  *(v69 + 64) = v67;
  *(v69 + 72) = v71;
  *(v69 + 80) = 1702125892;
  *(v69 + 88) = 0xE400000000000000;
  v72 = *MEMORY[0x277D7CE80];
  *(v69 + 104) = v67;
  *(v69 + 112) = v72;
  v73 = v70;
  v74 = v71;
  v75 = v72;
  v76 = v73;
  v77 = v74;
  v78 = v75;
  v146 = v76;
  v145 = v77;
  *&v147 = v78;
  v79 = v68;
  v144 = sub_23E1FDCBC("Date (Date)", 11);
  v81 = v80;
  sub_23E1FDCBC("Date", 4);
  sub_23E1FC14C();
  v82 = v153;
  v83 = [v153 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v144, v81);
  *(v69 + 120) = v85;
  v86 = *MEMORY[0x277D7CEA8];
  v87 = v152;
  *(v69 + 144) = v152;
  *(v69 + 152) = v86;
  v88 = v86;
  v89 = sub_23E1FDCBC("June 29, 2007 (Date)", 20);
  v144 = v90;
  sub_23E1FDCBC("June 29, 2007", 13);
  sub_23E1FC14C();
  v91 = [v82 bundleURL];
  sub_23E1FBF9C();

  v92 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v89, v144);
  *(v69 + 184) = v87;
  *(v69 + 160) = v93;
  v94 = sub_23E1FDBDC();
  v95 = MEMORY[0x277D837D0];
  *(v69 + 224) = MEMORY[0x277D837D0];
  *(v69 + 192) = v94;
  *(v69 + 200) = 0x6E6F5A20656D6954;
  *(v69 + 208) = 0xE900000000000065;
  _s3__C3KeyVMa_0(0);
  v144 = v96;
  v143 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v97 = sub_23E1FDABC();
  v98 = sub_23DF3BE9C(v97);
  *(v150 + 32) = v98;
  v99 = swift_allocObject();
  v140 = xmmword_23E222380;
  *(v99 + 16) = xmmword_23E222380;
  v138 = 0xD000000000000019;
  v139 = 0x800000023E2501D0;
  v100 = v145;
  *(v99 + 32) = v146;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x800000023E2501D0;
  *(v99 + 64) = v95;
  *(v99 + 72) = v100;
  strcpy((v99 + 80), "SourceTimeZone");
  *(v99 + 95) = -18;
  v101 = v147;
  *(v99 + 104) = v95;
  *(v99 + 112) = v101;
  v102 = sub_23E1FDCBC("Time Zone (SourceTimeZone)", 26);
  v104 = v103;
  sub_23E1FDCBC("Time Zone", 9);
  sub_23E1FC14C();
  v105 = [v153 bundleURL];
  sub_23E1FBF9C();

  v106 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v102, v104);
  *(v99 + 144) = v152;
  *(v99 + 120) = v107;
  v108 = sub_23E1FDABC();
  v109 = sub_23DF3BE9C(v108);
  *(v150 + 40) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v140;
  v112 = v138;
  v111 = v139;
  *(v110 + 32) = v146;
  *(v110 + 40) = v112;
  *(v110 + 48) = v111;
  v113 = MEMORY[0x277D837D0];
  v114 = v145;
  *(v110 + 64) = MEMORY[0x277D837D0];
  *(v110 + 72) = v114;
  *(v110 + 80) = 0xD000000000000013;
  *(v110 + 88) = 0x800000023E250210;
  v115 = v147;
  *(v110 + 104) = v113;
  *(v110 + 112) = v115;
  v116 = sub_23E1FDCBC("Destination Time Zone (DestinationTimeZone)", 43);
  v118 = v117;
  sub_23E1FDCBC("Destination Time Zone", 21);
  sub_23E1FC14C();
  v119 = [v153 bundleURL];
  sub_23E1FBF9C();

  v120 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v116, v118);
  *(v110 + 144) = v152;
  *(v110 + 120) = v121;
  v122 = sub_23E1FDABC();
  v123 = sub_23DF3BE9C(v122);
  v124 = v150;
  *(v150 + 48) = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v124;
  v126 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v125;
  *(inited + 432) = v126;
  v127 = v126;
  v128 = sub_23E1FDCBC("Convert ${Date} from ${SourceTimeZone} to ${DestinationTimeZone} (Parameter Summary)", 84);
  v130 = v129;
  sub_23E1FDCBC("Convert ${Date} from ${SourceTimeZone} to ${DestinationTimeZone}", 64);
  sub_23E1FC14C();
  v131 = [v153 bundleURL];
  sub_23E1FBF9C();

  v132 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v128, v130);
  v134 = v133;
  v135 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 464) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v135;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v136 = sub_23E1FDABC();
  return sub_23DF3BF9C(v136);
}

id sub_23DE82378()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v278 = v267 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v267 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267[2] = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224C40;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x800000023E250370;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v280 = inited;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("between|after|before|seconds|minutes|hours|days|weeks|years|math|calculate|interval", 83);
  v13 = v12;
  sub_23E1FDCBC("between|after|before|seconds|minutes|hours|days|weeks|years|math|calculate|interval", 83);
  v14 = v4;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v15 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v11, v13);
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v279 = v20;
  v21 = v280;
  v280[10] = v19;
  v22 = *MEMORY[0x277D7CC18];
  v21[13] = v20;
  v21[14] = v22;
  *&v277 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_23E222370;
  v24 = *MEMORY[0x277D7CC20];
  *(v23 + 32) = *MEMORY[0x277D7CC20];
  v25 = v22;
  v26 = v24;
  v27 = sub_23E1FDCBC("This action outputs a negative number if the input date takes place before the specified date.", 94);
  v29 = v28;
  sub_23E1FDCBC("This action outputs a negative number if the input date takes place before the specified date.", 94);
  sub_23E1FC14C();
  v281 = v15;
  v30 = [v15 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v14;
  sub_23DE477A0(v27, v29);
  *(v23 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v279;
  *(v23 + 64) = v279;
  *(v23 + 72) = v34;
  v36 = v34;
  v276 = sub_23E1FDCBC("Subtracts the specified date from the date passed into the action. For example, this action could get the number of minutes from now until a calendar event passed in as input.", 175);
  v38 = v37;
  sub_23E1FDCBC("Subtracts the specified date from the date passed into the action. For example, this action could get the number of minutes from now until a calendar event passed in as input.", 175);
  v267[1] = v32;
  sub_23E1FC14C();
  v39 = [v15 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v276, v38);
  *(v23 + 104) = v35;
  *(v23 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v42 = sub_23E1FDABC();
  v43 = v277;
  v44 = sub_23DF3BE54(v42);
  v45 = v280;
  v280[15] = v44;
  v46 = *MEMORY[0x277D7CB48];
  v45[18] = v43;
  v45[19] = v46;
  v47 = MEMORY[0x277D7CB60];
  v45[20] = 1953392980;
  v45[21] = 0xE400000000000000;
  v48 = *v47;
  v49 = MEMORY[0x277D837D0];
  v45[23] = MEMORY[0x277D837D0];
  v45[24] = v48;
  v45[25] = 0xD000000000000014;
  v45[26] = 0x800000023E250500;
  v50 = *MEMORY[0x277D7CB58];
  v45[28] = v49;
  v45[29] = v50;
  v45[30] = 6579538;
  v45[31] = 0xE300000000000000;
  v51 = *MEMORY[0x277D7CCC0];
  v45[33] = v49;
  v45[34] = v51;
  v52 = v49;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v53 = swift_initStackObject();
  v277 = xmmword_23E222380;
  *(v53 + 16) = xmmword_23E222380;
  strcpy((v53 + 32), "ParameterKey");
  *(v53 + 45) = 0;
  *(v53 + 46) = -5120;
  *(v53 + 48) = 0x7475706E494657;
  *(v53 + 56) = 0xE700000000000000;
  *(v53 + 72) = v52;
  *(v53 + 80) = 0x6465726975716552;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x277D839B0];
  *(v53 + 96) = 1;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x7365707954;
  *(v53 + 136) = 0xE500000000000000;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v53 + 168) = v276;
  *(v53 + 144) = &unk_2850238C8;
  v55 = v46;
  v56 = v48;
  v57 = v50;
  v58 = v51;
  v59 = sub_23E1FDABC();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v275 = v60;
  v61 = v45;
  v45[35] = v59;
  v62 = *MEMORY[0x277D7CCC8];
  v45[38] = v60;
  v45[39] = v62;
  *(v45 + 320) = 0;
  v63 = *MEMORY[0x277D7CB90];
  v45[43] = v54;
  v45[44] = v63;
  v64 = v62;
  v65 = v63;
  v66 = sub_23E1FDCBC("Get Time Between Dates (Action Name)", 36);
  v68 = v67;
  sub_23E1FDCBC("Get Time Between Dates", 22);
  sub_23E1FC14C();
  v69 = v281;
  v70 = [v281 bundleURL];
  sub_23E1FBF9C();

  v71 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v66, v68);
  v61[45] = v72;
  v73 = *MEMORY[0x277D7CDD0];
  v61[48] = v279;
  v61[49] = v73;
  v74 = swift_initStackObject();
  *(v74 + 16) = v277;
  *(v74 + 32) = 0x75736F6C63736944;
  *(v74 + 40) = 0xEF6C6576654C6572;
  *(v74 + 48) = 0x63696C627550;
  *(v74 + 56) = 0xE600000000000000;
  *(v74 + 72) = MEMORY[0x277D837D0];
  *(v74 + 80) = 0x614E74757074754FLL;
  *(v74 + 88) = 0xEA0000000000656DLL;
  v75 = v73;
  v76 = sub_23E1FDCBC("Time Between Dates (Default Output Name)", 40);
  v78 = v77;
  sub_23E1FDCBC("Time Between Dates", 18);
  sub_23E1FC14C();
  v79 = [v69 bundleURL];
  sub_23E1FBF9C();

  v80 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v76, v78);
  *(v74 + 96) = v81;
  v82 = v279;
  *(v74 + 120) = v279;
  *(v74 + 128) = 0x7365707954;
  *(v74 + 168) = v276;
  *(v74 + 136) = 0xE500000000000000;
  *(v74 + 144) = &unk_2850238F8;
  v83 = MEMORY[0x277D837D0];
  v84 = sub_23E1FDABC();
  v85 = v280;
  v280[50] = v84;
  v86 = *MEMORY[0x277D7CBA0];
  v85[53] = v275;
  v85[54] = v86;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v270 = swift_allocObject();
  *(v270 + 16) = xmmword_23E224C00;
  v272 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  *&v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v87 = swift_allocObject();
  *(v87 + 16) = v277;
  v88 = *MEMORY[0x277D7CDF8];
  v267[0] = 0x800000023E250150;
  *(v87 + 32) = v88;
  *(v87 + 40) = 0xD000000000000014;
  *(v87 + 48) = 0x800000023E250150;
  v89 = *MEMORY[0x277D7CE70];
  *(v87 + 64) = v83;
  *(v87 + 72) = v89;
  *(v87 + 80) = 0xD000000000000013;
  *(v87 + 88) = 0x800000023E2505C0;
  v90 = *MEMORY[0x277D7CE80];
  *(v87 + 104) = v83;
  *(v87 + 112) = v90;
  v91 = v88;
  v92 = v89;
  v93 = v90;
  v94 = v91;
  v95 = v92;
  v96 = v93;
  v268 = v94;
  v274 = v95;
  v275 = v96;
  v97 = v86;
  v98 = sub_23E1FDCBC("First Date (WFTimeUntilFromDate)", 32);
  v100 = v99;
  sub_23E1FDCBC("First Date", 10);
  sub_23E1FC14C();
  v101 = [v281 bundleURL];
  sub_23E1FBF9C();

  v102 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v98, v100);
  *(v87 + 144) = v82;
  *(v87 + 120) = v103;
  _s3__C3KeyVMa_0(0);
  v271 = v104;
  v273 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v105 = sub_23E1FDABC();
  v106 = sub_23DF3BE9C(v105);
  v107 = v270;
  *(v270 + 32) = v106;
  v108 = swift_allocObject();
  *(v108 + 16) = v277;
  *(v108 + 32) = v268;
  *(v108 + 40) = 0xD000000000000014;
  *(v108 + 48) = v267[0];
  v109 = MEMORY[0x277D837D0];
  v110 = v274;
  *(v108 + 64) = MEMORY[0x277D837D0];
  *(v108 + 72) = v110;
  *(v108 + 80) = 0x7475706E494657;
  *(v108 + 88) = 0xE700000000000000;
  v111 = v275;
  *(v108 + 104) = v109;
  *(v108 + 112) = v111;
  *&v277 = sub_23E1FDCBC("Second Date (WFInput)", 21);
  v113 = v112;
  sub_23E1FDCBC("Second Date", 11);
  sub_23E1FC14C();
  v114 = [v281 bundleURL];
  sub_23E1FBF9C();

  v115 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v277, v113);
  *(v108 + 144) = v279;
  *(v108 + 120) = v116;
  v117 = sub_23E1FDABC();
  *(v107 + 40) = sub_23DF3BE9C(v117);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_23E224710;
  *(v118 + 32) = v268;
  *(v118 + 40) = 0xD000000000000016;
  v119 = MEMORY[0x277D7CE00];
  *(v118 + 48) = 0x800000023E24FDA0;
  v120 = *v119;
  v121 = MEMORY[0x277D837D0];
  *(v118 + 64) = MEMORY[0x277D837D0];
  *(v118 + 72) = v120;
  *(v118 + 80) = 0x736574756E694DLL;
  *(v118 + 88) = 0xE700000000000000;
  v122 = *MEMORY[0x277D7CE38];
  *(v118 + 104) = v121;
  *(v118 + 112) = v122;
  *&v277 = swift_allocObject();
  v269 = xmmword_23E224C50;
  *(v277 + 16) = xmmword_23E224C50;
  v123 = v120;
  v124 = v122;
  v125 = sub_23E1FDCBC("Total Time (WFTimeUntilUnit)", 28);
  v268 = v126;
  sub_23E1FDCBC("Total Time", 10);
  sub_23E1FC14C();
  v127 = v281;
  v128 = [v281 bundleURL];
  sub_23E1FBF9C();

  v129 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v125, v268);
  v130 = v277;
  *(v277 + 32) = v131;
  v132 = sub_23E1FDCBC("Seconds (WFTimeUntilUnit)", 25);
  v268 = v133;
  sub_23E1FDCBC("Seconds", 7);
  sub_23E1FC14C();
  v134 = [v127 bundleURL];
  sub_23E1FBF9C();

  v135 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v132, v268);
  *(v130 + 40) = v136;
  v137 = sub_23E1FDCBC("Minutes (WFTimeUntilUnit)", 25);
  v139 = v138;
  sub_23E1FDCBC("Minutes", 7);
  sub_23E1FC14C();
  v140 = [v127 bundleURL];
  sub_23E1FBF9C();

  v141 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v137, v139);
  v142 = v277;
  *(v277 + 48) = v143;
  v144 = sub_23E1FDCBC("Hours (WFTimeUntilUnit)", 23);
  v268 = v145;
  sub_23E1FDCBC("Hours", 5);
  sub_23E1FC14C();
  v146 = [v127 bundleURL];
  sub_23E1FBF9C();

  v147 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v144, v268);
  *(v142 + 56) = v148;
  v149 = sub_23E1FDCBC("Days (WFTimeUntilUnit)", 22);
  v151 = v150;
  sub_23E1FDCBC("Days", 4);
  sub_23E1FC14C();
  v152 = [v127 bundleURL];
  sub_23E1FBF9C();

  v153 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v149, v151);
  v154 = v277;
  *(v277 + 64) = v155;
  v156 = sub_23E1FDCBC("Weeks (WFTimeUntilUnit)", 23);
  v268 = v157;
  sub_23E1FDCBC("Weeks", 5);
  sub_23E1FC14C();
  v158 = [v127 bundleURL];
  sub_23E1FBF9C();

  v159 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v156, v268);
  *(v154 + 72) = v160;
  v161 = sub_23E1FDCBC("Months (WFTimeUntilUnit)", 24);
  v163 = v162;
  sub_23E1FDCBC("Months", 6);
  sub_23E1FC14C();
  v164 = [v127 bundleURL];
  sub_23E1FBF9C();

  v165 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v161, v163);
  v166 = v277;
  *(v277 + 80) = v167;
  v268 = sub_23E1FDCBC("Years (WFTimeUntilUnit)", 23);
  v169 = v168;
  sub_23E1FDCBC("Years", 5);
  sub_23E1FC14C();
  v170 = v281;
  v171 = [v281 bundleURL];
  sub_23E1FBF9C();

  v172 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v268, v169);
  *(v166 + 88) = v173;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v118 + 120) = v166;
  v175 = v274;
  *(v118 + 144) = v174;
  *(v118 + 152) = v175;
  *(v118 + 160) = 0x6E55656D69544657;
  *(v118 + 168) = 0xEF74696E556C6974;
  v176 = v275;
  *(v118 + 184) = MEMORY[0x277D837D0];
  *(v118 + 192) = v176;
  v177 = sub_23E1FDCBC("In (WFTimeUntilUnit)", 20);
  v179 = v178;
  sub_23E1FDCBC("In", 2);
  sub_23E1FC14C();
  v180 = [v170 bundleURL];
  sub_23E1FBF9C();

  v181 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v177, v179);
  *(v118 + 224) = v279;
  *(v118 + 200) = v182;
  v183 = sub_23E1FDABC();
  v184 = sub_23DF3BE9C(v183);
  v185 = v270;
  *(v270 + 48) = v184;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v187 = v280;
  v280[55] = v185;
  v188 = *MEMORY[0x277D7CB98];
  v187[58] = v186;
  v187[59] = v188;
  *&v277 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v279 = swift_allocObject();
  *(v279 + 16) = v269;
  v189 = v188;
  v190 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Total Time)", 101);
  v192 = v191;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v193 = [v170 bundleURL];
  sub_23E1FBF9C();

  v194 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v190, v192);
  v196 = v195;
  v197 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v198 = sub_23DF34C40(0xD000000000000037, 0x800000023E250780, v196);
  v199 = v279;
  *(v279 + 32) = v198;
  v276 = "Date} and ${WFInput}";
  v200 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Seconds)", 98);
  v202 = v201;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v203 = [v170 bundleURL];
  sub_23E1FBF9C();

  v204 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v200, v202);
  v206 = v205;
  v207 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v199[5] = sub_23DF34C40(0xD000000000000034, v276 | 0x8000000000000000, v206);
  v208 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Minutes)", 98);
  v210 = v209;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v211 = [v281 bundleURL];
  sub_23E1FBF9C();

  v212 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v208, v210);
  v214 = v213;
  v215 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v199[6] = sub_23DF34C40(0xD000000000000034, 0x800000023E250930, v214);
  v276 = "Summary - Minutes)";
  v216 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Hours)", 96);
  v218 = v217;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v219 = v281;
  v220 = [v281 bundleURL];
  sub_23E1FBF9C();

  v221 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v216, v218);
  v223 = v222;
  v224 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v199[7] = sub_23DF34C40(0xD000000000000032, v276 | 0x8000000000000000, v223);
  v225 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Days)", 95);
  v227 = v226;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v228 = [v219 bundleURL];
  sub_23E1FBF9C();

  v229 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v225, v227);
  v231 = v230;
  v232 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v233 = sub_23DF34C40(0xD000000000000031, 0x800000023E250A90, v231);
  v234 = v279;
  *(v279 + 64) = v233;
  v276 = "put} (Parameter Summary - Days)";
  v235 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Weeks)", 96);
  v237 = v236;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v238 = [v219 bundleURL];
  sub_23E1FBF9C();

  v239 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v235, v237);
  v241 = v240;
  v242 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v234[9] = sub_23DF34C40(0xD000000000000032, v276 | 0x8000000000000000, v241);
  v243 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Months)", 97);
  v245 = v244;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v246 = [v281 bundleURL];
  sub_23E1FBF9C();

  v247 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v243, v245);
  v249 = v248;
  v250 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v234[10] = sub_23DF34C40(0xD000000000000033, 0x800000023E250BE0, v249);
  v251 = sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput} (Parameter Summary - Years)", 96);
  v253 = v252;
  sub_23E1FDCBC("Get ${WFTimeUntilUnit} between ${WFTimeUntilFromDate} and ${WFInput}", 68);
  sub_23E1FC14C();
  v254 = [v281 bundleURL];
  sub_23E1FBF9C();

  v255 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v251, v253);
  v257 = v256;
  v258 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v234[11] = sub_23DF34C40(0xD000000000000032, 0x800000023E250C90, v257);
  v259 = v277;
  v260 = sub_23DF333E0(v234);
  v261 = MEMORY[0x277D7CB78];
  v262 = v280;
  v280[60] = v260;
  v263 = *v261;
  v262[63] = v259;
  v262[64] = v263;
  v262[68] = MEMORY[0x277D839B0];
  *(v262 + 520) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v264 = v263;
  v265 = sub_23E1FDABC();
  return sub_23DF3BF9C(v265);
}