void sub_23DED5C4C()
{
  OUTLINED_FUNCTION_90();
  v44 = v0;
  v45 = v1;
  sub_23E1FBEEC();
  OUTLINED_FUNCTION_3_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v5 = sub_23E1FC1DC();
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v7 = sub_23E1FDBCC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_3();
  v9 = sub_23E1FBF0C();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v11 = *(v3 + 104);
  v12 = OUTLINED_FUNCTION_4_12();
  v11(v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v43 = sub_23E1FB58C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D260, &qword_23E228658);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v13 = OUTLINED_FUNCTION_4_12();
  v11(v13);
  v14 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8(v14, v15, v16);
  v42 = sub_23E1FB58C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v17 = OUTLINED_FUNCTION_4_12();
  v11(v17);
  v18 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8(v18, v19, v20);
  v41 = sub_23E1FB58C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v21 = OUTLINED_FUNCTION_4_12();
  v11(v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v39 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v22 = OUTLINED_FUNCTION_4_12();
  v11(v22);
  OUTLINED_FUNCTION_2_14();
  sub_23E1FBF1C();
  v40 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v23 = OUTLINED_FUNCTION_4_12();
  v11(v23);
  v24 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8(v24, v25, v26);
  v38 = sub_23E1FB59C();
  OUTLINED_FUNCTION_27_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v27 = OUTLINED_FUNCTION_4_12();
  v11(v27);
  v28 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_8(v28, v29, v30);
  v31 = sub_23E1FB59C();
  v32 = [v44 iccid];
  v37 = sub_23E1FDC1C();
  v34 = v33;

  v35 = [v44 label];
  sub_23E1FDC1C();

  sub_23E1FB56C();
  sub_23DEDA434(v44);
  sub_23E1FB56C();
  v36 = [v44 carrierName];
  sub_23E1FDC1C();

  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v44 isActive]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v44 isDefaultVoiceLine]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v44 isDefaultDataLine]);
  sub_23E1FB56C();
  OUTLINED_FUNCTION_21_7([v44 dataRoamingEnabled]);
  sub_23E1FB56C();

  v47[0] = v37;
  v47[1] = v34;
  v47[2] = v43;
  v47[3] = v42;
  v47[4] = v41;
  v47[5] = v39;
  v47[6] = v40;
  v47[7] = v38;
  v47[8] = v31;
  v48[0] = v37;
  v48[1] = v34;
  v48[2] = v43;
  v48[3] = v42;
  v48[4] = v41;
  v48[5] = v39;
  v48[6] = v40;
  v48[7] = v38;
  v48[8] = v31;
  sub_23DE99F40(v47, &v46);
  sub_23DEDA498(v48);
  memcpy(v45, v47, 0x48uLL);
  OUTLINED_FUNCTION_76();
}

void sub_23DED6258()
{
  v0 = [objc_allocWithZone(WFCellularPlansManager) init];
  v1 = [v0 allPlans];

  sub_23DED9464();
  v2 = sub_23E1FDDEC();

  v3 = sub_23DE4D8B0();
  if (v3)
  {
    v4 = v3;
    v11 = MEMORY[0x277D84F90];
    sub_23DE64094(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v11;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x23EF04DD0](v5, v2);
        }

        else
        {
          v7 = *(v2 + 8 * v5 + 32);
        }

        sub_23DED5C4C();
        v11 = v6;
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_23DE64094(v8 > 1, v9 + 1, 1);
          v6 = v11;
        }

        ++v5;
        *(v6 + 16) = v9 + 1;
        memcpy((v6 + 72 * v9 + 32), __src, 0x48uLL);
      }

      while (v4 != v5);
    }
  }

  else
  {
  }
}

unint64_t sub_23DED63EC()
{
  result = qword_280DAEF48;
  if (!qword_280DAEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF48);
  }

  return result;
}

unint64_t sub_23DED6440()
{
  result = qword_280DAEF40;
  if (!qword_280DAEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF40);
  }

  return result;
}

unint64_t sub_23DED6494()
{
  result = qword_280DAEF58;
  if (!qword_280DAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF58);
  }

  return result;
}

unint64_t sub_23DED64EC()
{
  result = qword_280DAEF38;
  if (!qword_280DAEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF38);
  }

  return result;
}

uint64_t sub_23DED6540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DED50AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DED65B0(uint64_t a1)
{
  v2 = sub_23DE99E98();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_23DED6600()
{
  result = qword_280DAEF30;
  if (!qword_280DAEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF30);
  }

  return result;
}

uint64_t sub_23DED6658(uint64_t a1)
{
  v2 = sub_23DED64EC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DED66A4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8;
  if (!*(v9 + 8))
  {
    OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v79, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    v35 = sub_23DE99F40(a1, &v86);
    v43 = OUTLINED_FUNCTION_19_3(v35, v36, v37, v38, v39, v40, v41, v42, v82, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    OUTLINED_FUNCTION_18_10(v43, v44, v45, v46, v47, v48, v49, v50, v83, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    sub_23DEDA498(v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
    if (swift_dynamicCast())
    {
      sub_23DEDA590(v9 + 16, &v99);
      if (v101)
      {
        if (swift_dynamicCast())
        {
          sub_23E1FB55C();
          v51 = sub_23E1FDC8C();
          v53 = v52;

          v99 = v51;
          v100 = v53;
          v54 = sub_23E1FDC8C();
          v56 = v55;

          v86 = v54;
          v87 = v56;
          sub_23DE655BC();
          v34 = sub_23E1FE48C();

          return v34 & 1;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

LABEL_22:
    v34 = 0;
    return v34 & 1;
  }

  if (*(v9 + 8) != 1)
  {
    OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v79, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    v57 = sub_23DE99F40(a1, &v86);
    v65 = OUTLINED_FUNCTION_19_3(v57, v58, v59, v60, v61, v62, v63, v64, v84, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    OUTLINED_FUNCTION_18_10(v65, v66, v67, v68, v69, v70, v71, v72, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    sub_23DEDA498(v102);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
    if (OUTLINED_FUNCTION_34_2(v73, v74, v75, v73, v76))
    {
      sub_23E1FB55C();

      v77 = v86;
      sub_23DEDA590(v9 + 16, &v99);
      if (!v101)
      {
LABEL_20:
        sub_23DECD040(&v99);
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        v34 = v77 ^ v95 ^ 1;
        return v34 & 1;
      }
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_12_10(a1, a2, a3, a4, a5, a6, a7, a8, v79, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  v11 = sub_23DE99F40(a1, &v86);
  v19 = OUTLINED_FUNCTION_19_3(v11, v12, v13, v14, v15, v16, v17, v18, v80, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  OUTLINED_FUNCTION_18_10(v19, v20, v21, v22, v23, v24, v25, v26, v81, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
  sub_23DEDA498(v102);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  if ((OUTLINED_FUNCTION_34_2(v27, v28, v29, v27, v30) & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_23DEDA590(v9 + 16, &v99);
  if (!v101)
  {
LABEL_19:

    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v31 = v86;
  v32 = v87;
  sub_23E1FB55C();
  if (v99 == v31 && v100 == v32)
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_23E1FE75C();
  }

  return v34 & 1;
}

uint64_t sub_23DED69CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A0, &qword_23E228788);
  __swift_allocate_value_buffer(v0, qword_27E33E150);
  __swift_project_value_buffer(v0, qword_27E33E150);
  sub_23DE99E98();
  return sub_23E1FB78C();
}

uint64_t sub_23DED6A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A8, &qword_23E228790);
  swift_getKeyPath();
  sub_23E1FB6DC();
  sub_23DE99E98();
  v0 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2B0, &qword_23E228798);
  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v1 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v2 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2B8, &qword_23E2287A0);
  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v3 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v4 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v5 = sub_23E1FB7CC();

  swift_getKeyPath();
  sub_23E1FB7CC();
  sub_23E1FB6DC();
  v6 = sub_23E1FB7CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23E228180;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  sub_23E1FB7CC();
  v8 = sub_23E1FB92C();

  return v8;
}

uint64_t sub_23DED6E00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D300, &qword_23E228888);
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D308, &qword_23E228890);
  swift_allocObject();
  sub_23E1FB66C();
  sub_23DE99E98();
  sub_23E1FB98C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D310, &qword_23E228898);
  swift_allocObject();
  sub_23DE66434(&qword_27E32D318, &qword_27E32D320, &qword_23E2288A0, MEMORY[0x277D84F60]);
  sub_23E1FB6BC();
  sub_23E1FB97C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D328, &qword_23E2288A8);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23E222370;
  v11 = v10 + v9;
  v12 = *(v2 + 16);
  v12(v11, v7, v0);
  v12(v11 + v8, v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D260, &qword_23E228658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D320, &qword_23E2288A0);
  sub_23DEDA654();
  v13 = sub_23E1FB96C();

  v14 = *(v2 + 8);
  v14(v5, v0);
  v14(v7, v0);
  return v13;
}

uint64_t sub_23DED712C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  KeyPath = swift_getKeyPath();
  v6 = MEMORY[0x277D837D0];
  *a2 = KeyPath;
  if (!v3)
  {
    v6 = 0;
  }

  *(a2 + 8) = 1;
  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 16) = v7;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;

  return sub_23E1FB7BC();
}

void sub_23DED71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_90();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2E0, &qword_23E228868);
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &a9 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &a9 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2E8, &qword_23E228870);
  swift_allocObject();
  v30 = OUTLINED_FUNCTION_30_4();
  sub_23DE99E98();
  OUTLINED_FUNCTION_31_4(v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2F0, &qword_23E228878);
  swift_allocObject();
  v31 = sub_23E1FB6AC();
  OUTLINED_FUNCTION_31_4(v31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2F8, &qword_23E228880);
  v32 = *(v23 + 72);
  v33 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_23E222370;
  v35 = v34 + v33;
  v36 = *(v24 + 16);
  v36(v35, v29, v22);
  v36(v35 + v32, v27, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D258, &qword_23E228650);
  sub_23DE712E4();
  sub_23E1FB96C();

  v37 = *(v24 + 8);
  v37(v27, v22);
  v37(v29, v22);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DED746C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  KeyPath = swift_getKeyPath();
  *(a3 + 40) = MEMORY[0x277D837D0];
  *(a3 + 16) = v5;
  *(a3 + 24) = v4;
  *a3 = KeyPath;
  *(a3 + 8) = 1;

  return sub_23E1FB7BC();
}

uint64_t sub_23DED74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a4 + 40) = MEMORY[0x277D837D0];
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *a4 = KeyPath;
  *(a4 + 8) = 0;

  return sub_23E1FB7BC();
}

uint64_t sub_23DED75C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2C0, &qword_23E228850);
  v1 = *(v0 - 8);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2C8, &qword_23E228858);
  swift_allocObject();
  OUTLINED_FUNCTION_30_4();
  sub_23DE99E98();
  sub_23E1FB98C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2D0, &qword_23E228860);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23E222340;
  (*(v1 + 16))(v6 + v5, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D268, &qword_23E228660);
  sub_23DEDA600();
  v7 = sub_23E1FB96C();

  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_23DED77CC@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = swift_getKeyPath();
  *(a3 + 40) = MEMORY[0x277D839B0];
  *(a3 + 16) = v4;
  *a3 = result;
  *(a3 + 8) = 2;
  return result;
}

uint64_t sub_23DED7814()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D278, &qword_23E2286F8);
  __swift_allocate_value_buffer(v0, qword_27E33E168);
  __swift_project_value_buffer(v0, qword_27E33E168);
  sub_23DE99E98();
  return sub_23E1FB8AC();
}

uint64_t sub_23DED7898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D280, &qword_23E228700);
  v34 = *(v0 - 8);
  v1 = v34;
  v32 = v34;
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v33 = &v27 - v11;
  swift_getKeyPath();
  sub_23DE99E98();
  v12 = MEMORY[0x277CB9E70];
  v30 = sub_23DE66434(&qword_27E32D288, &qword_27E32D258, &qword_23E228650, MEMORY[0x277CB9E70]);
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v13 = *(v1 + 8);
  v31 = v10;
  v13(v10, v0);
  swift_getKeyPath();
  sub_23DE66434(&qword_27E32D290, &qword_27E32D260, &qword_23E228658, v12);
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v28 = v7;
  v29 = v13;
  v13(v7, v0);
  swift_getKeyPath();
  sub_23E1FB99C();
  sub_23E1FB9DC();
  v13(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D298, &qword_23E228780);
  v14 = *(v34 + 72);
  v15 = v32;
  v16 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23E222380;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v20 = v33;
  v19(v18, v33, v0);
  v21 = v31;
  v19(v18 + v14, v31, v0);
  v22 = v18 + 2 * v14;
  v23 = v28;
  v19(v22, v28, v0);
  v24 = sub_23E1FB9CC();

  v25 = v29;
  v29(v23, v0);
  v25(v21, v0);
  v25(v20, v0);
  return v24;
}

void sub_23DED7C58()
{
  sub_23DED6258();
  v2 = v1;
  v3 = 0;
  v4 = *(v1 + 16);
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = 72 * v3 + 32;
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[22];
    memcpy(v0 + 2, (v2 + v5), 0x48uLL);
    v7 = v0[3];
    v0[20] = v0[2];
    v0[21] = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 20;
    sub_23DE99F40((v0 + 2), (v0 + 11));
    sub_23E1FB7BC();
    LOBYTE(v6) = sub_23DEDEAA0(sub_23DE482E4, v8, v6);

    if (v6)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23DE64094(0, *(v14 + 16) + 1, 1);
        v10 = v14;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23DE64094(v11 > 1, v12 + 1, 1);
        v10 = v14;
      }

      ++v3;
      *(v10 + 16) = v12 + 1;
      v14 = v10;
      memcpy((v10 + 72 * v12 + 32), v0 + 2, 0x48uLL);
      goto LABEL_2;
    }

    sub_23DEDA498((v0 + 2));
    v5 += 72;
    ++v3;
  }

  OUTLINED_FUNCTION_12_1();

  v13(v14);
}

uint64_t sub_23DED7EA0()
{
  sub_23DED6258();
  OUTLINED_FUNCTION_12_1();

  return v0();
}

uint64_t sub_23DED7F14()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 729) = v1;
  *(v0 + 696) = v2;
  *(v0 + 688) = v3;
  *(v0 + 728) = v4;
  *(v0 + 680) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  *(v0 + 704) = v6;
  *(v0 + 712) = *(v6 - 8);
  *(v0 + 720) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DED7FEC, 0, 0);
}

void sub_23DED7FEC()
{
  v118 = v0;
  v1 = 0;
  sub_23DED6258();
  v5 = v4;
  v105 = 0;
  v6 = 0;
  v7 = *(v0 + 680);
  v8 = *(v4 + 16);
  v9 = v4 + 32;
  for (i = MEMORY[0x277D84F90]; ; memcpy((i + 72 * v32 + 32), (v0 + 16), 0x48uLL))
  {
    v113 = i;
    while (1)
    {
      if (v6 == v8)
      {
        v33 = *(v0 + 688);

        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v0 + 712);
          v36 = *(v0 + 688);
          v37 = sub_23E1FE4BC();
          v38 = 0;
          v39 = *(v35 + 16);
          v35 += 16;
          v110 = v36 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
          v111 = v39;
          v108 = (v35 - 8);
          v109 = *(v35 + 56);
          v103 = v35;
          v104 = v34;
          v102 = v37;
          while (1)
          {
            v111(*(v0 + 720), v110 + v38 * v109, *(v0 + 704));
            sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v41 = v40;

            v42 = *(v0 + 720);
            if (v41)
            {
              v43 = swift_task_alloc();
              if ((OUTLINED_FUNCTION_17_8(v43, v44, v45, v46, v47, v48, v49, v50, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113) & 1) == 0)
              {
                sub_23DF31B20();
                v42 = v92;
              }

              v107 = v38;
              v51 = *(v42 + 16);
              v113 = v42;
              v115[0] = v42 + 32;
              v115[1] = v51;
              v52 = sub_23E1FE70C();
              v106 = v43;
              if (v52 < v51)
              {
                v53 = v52;
                v54 = MEMORY[0x277D84F90];
                if (v51 >= 2)
                {
                  v54 = sub_23E1FDE2C();
                  *(v54 + 16) = v51 >> 1;
                }

                __dst[0] = (v54 + 32);
                __dst[1] = (v51 >> 1);
                sub_23DED9748(__dst, v117, v115, sub_23DEDA570, v43, v53);
                *(v54 + 16) = 0;

                v105 = 0;
                goto LABEL_56;
              }

              if (v51 < 2)
              {
                goto LABEL_56;
              }

              v70 = 0;
              v71 = (v42 + 104);
              v72 = 1;
              v112 = v51;
              while (1)
              {
                v114 = v70;
                for (j = v71; ; j -= 72)
                {
                  memcpy((v0 + 304), j, 0x48uLL);
                  memcpy((v0 + 232), j - 72, 0x48uLL);
                  sub_23DE99F40(v0 + 304, v0 + 376);
                  sub_23DE99F40(v0 + 232, v0 + 448);
                  if ((sub_23E1FB5BC() & 1) == 0)
                  {
                    break;
                  }

                  sub_23E1FB55C();
                  v74 = *(v0 + 616);
                  v75 = *(v0 + 624);
                  sub_23E1FB55C();
                  if (*(v0 + 632) == v74 && *(v0 + 640) == v75)
                  {
                    goto LABEL_54;
                  }

LABEL_51:
                  v80 = sub_23E1FE75C();

                  sub_23DEDA498(v0 + 232);
                  sub_23DEDA498(v0 + 304);
                  if ((v80 & 1) == 0)
                  {
                    goto LABEL_55;
                  }

                  memcpy(__dst, j, sizeof(__dst));
                  memcpy(j, j - 72, 0x48uLL);
                  memcpy(j - 72, __dst, 0x48uLL);
                  if (!v70)
                  {
                    goto LABEL_55;
                  }

                  ++v70;
                }

                sub_23E1FB55C();
                v77 = *(v0 + 648);
                v78 = *(v0 + 656);
                sub_23E1FB55C();
                if (v77 != *(v0 + 664) || v78 != *(v0 + 672))
                {
                  goto LABEL_51;
                }

LABEL_54:

                sub_23DEDA498(v0 + 232);
                sub_23DEDA498(v0 + 304);
LABEL_55:
                ++v72;
                v71 += 72;
                v70 = v114 - 1;
                if (v72 == v112)
                {
LABEL_56:

                  v34 = v104;
                  v38 = v107;
                  goto LABEL_72;
                }
              }
            }

            v55 = sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v57 = v56;

            if (v57)
            {
              break;
            }

            v55 = sub_23E1FB5AC();
            swift_getKeyPath();
            OUTLINED_FUNCTION_11_7();
            v82 = v81;

            if (v82)
            {
              v58 = swift_task_alloc();
              if ((OUTLINED_FUNCTION_17_8(v58, v83, v84, v85, v86, v87, v88, v89, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113) & 1) == 0)
              {
                sub_23DF31B20();
              }

              v90 = OUTLINED_FUNCTION_20_5();
              if (v90 < v55)
              {
                v67 = v90;
                v68 = MEMORY[0x277D84F90];
                if (v55 >= 2)
                {
                  v68 = sub_23E1FDE2C();
                  *(v68 + 16) = v55 >> 1;
                }

                __dst[0] = (v68 + 32);
                __dst[1] = (v55 >> 1);
                v69 = sub_23DEDA530;
LABEL_64:
                sub_23DED9748(__dst, v117, v115, v69, v58, v67);
                *(v68 + 16) = 0;

LABEL_70:
                v105 = 0;
LABEL_71:

                goto LABEL_72;
              }

              if (!v55)
              {
                goto LABEL_71;
              }

              v91 = sub_23DEDA530;
LABEL_69:
              sub_23DED957C(0, v55, 1, v91);
              goto LABEL_70;
            }

LABEL_72:
            ++v38;
            (*v108)(*(v0 + 720), *(v0 + 704));
            if (v38 == v34)
            {
              goto LABEL_73;
            }
          }

          v58 = swift_task_alloc();
          if ((OUTLINED_FUNCTION_17_8(v58, v59, v60, v61, v62, v63, v64, v65, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113) & 1) == 0)
          {
            sub_23DF31B20();
          }

          v66 = OUTLINED_FUNCTION_20_5();
          if (v66 < v55)
          {
            v67 = v66;
            v68 = MEMORY[0x277D84F90];
            if (v55 >= 2)
            {
              v68 = sub_23E1FDE2C();
              *(v68 + 16) = v55 >> 1;
            }

            __dst[0] = (v68 + 32);
            __dst[1] = (v55 >> 1);
            v69 = sub_23DEDA550;
            goto LABEL_64;
          }

          if (!v55)
          {
            goto LABEL_71;
          }

          v91 = sub_23DEDA550;
          goto LABEL_69;
        }

LABEL_73:
        if (!*(v113 + 16))
        {

          sub_23DE99EEC();
          swift_allocError();
          *v96 = 3;
          swift_willThrow();

          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_29_2();

          __asm { BRAA            X1, X16 }
        }

        if (*(v0 + 729))
        {
          goto LABEL_84;
        }

        i = sub_23DED5BB8(*(v0 + 696), v113);
        v6 = v93;
        v1 = v94;
        v7 = v95;
        if ((v95 & 1) == 0)
        {
          goto LABEL_76;
        }

        sub_23E1FE77C();
        swift_unknownObjectRetain_n();
        v97 = swift_dynamicCastClass();
        if (!v97)
        {
          swift_unknownObjectRelease();
          v97 = MEMORY[0x277D84F90];
        }

        v98 = *(v97 + 16);

        if (__OFSUB__(v7 >> 1, v1))
        {
LABEL_88:
          __break(1u);
        }

        else if (v98 == (v7 >> 1) - v1)
        {
          v99 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v99)
          {
            goto LABEL_83;
          }

          goto LABEL_84;
        }

        swift_unknownObjectRelease();
LABEL_76:
        sub_23DED94A8(i, v6, v1, v7);
LABEL_83:
        swift_unknownObjectRelease();
LABEL_84:

        OUTLINED_FUNCTION_12_1();
        OUTLINED_FUNCTION_29_2();

        __asm { BRAA            X2, X16 }
      }

      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_88;
      }

      v11 = *(v0 + 728);
      memcpy((v0 + 16), (v9 + 72 * v6++), 0x48uLL);
      if ((v11 & 1) == 0)
      {
        break;
      }

      i = *(v7 + 16);
      sub_23DE99F40(v0 + 16, v0 + 88);
      v1 = i + 1;
      v12 = v7 + 32;
      while (--v1)
      {
        v13 = v12 + 48;
        sub_23DEDA4C8(v12, v0 + 520);
        i = sub_23DED66A4(v0 + 16, v14, v15, v16, v17, v18, v19, v20);
        sub_23DEDA500(v0 + 520);
        v12 = v13;
        if (i)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      sub_23DEDA498(v0 + 16);
    }

    v21 = *(v7 + 16);
    sub_23DE99F40(v0 + 16, v0 + 160);
    v1 = v21 + 1;
    v22 = v7 + 32;
    while (--v1)
    {
      v23 = v22 + 48;
      sub_23DEDA4C8(v22, v0 + 568);
      i = sub_23DED66A4(v0 + 16, v24, v25, v26, v27, v28, v29, v30);
      sub_23DEDA500(v0 + 568);
      v22 = v23;
      if ((i & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    i = v113;
    __dst[0] = v113;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE64094(0, *(v113 + 16) + 1, 1);
      i = __dst[0];
    }

    v32 = *(i + 16);
    v31 = *(i + 24);
    v1 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      sub_23DE64094(v31 > 1, v32 + 1, 1);
      i = __dst[0];
    }

    *(i + 16) = v1;
  }
}

uint64_t sub_23DED88C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED50DC(v1, v2);
}

uint64_t sub_23DED8904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  sub_23E1FB5BC();
  sub_23E1FB55C();
  sub_23E1FB55C();

  return 0;
}

uint64_t sub_23DED89FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED5168(v1, v2);
}

uint64_t sub_23DED8A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  if ((sub_23E1FB5BC() & 1) == 0)
  {
    sub_23E1FB55C();
    if (v13)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0;
    }

    if (v13)
    {
      v6 = v13;
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    sub_23E1FB55C();
    if (v13)
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    if (v13)
    {
      v8 = v13;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    if (v5 != v7 || v6 != v8)
    {
      goto LABEL_35;
    }

LABEL_36:
    v10 = 0;
    goto LABEL_37;
  }

  sub_23E1FB55C();
  if (v13)
  {
    v0 = v12;
  }

  else
  {
    v0 = 0;
  }

  if (v13)
  {
    v1 = v13;
  }

  else
  {
    v1 = 0xE000000000000000;
  }

  sub_23E1FB55C();
  if (v13)
  {
    v2 = v12;
  }

  else
  {
    v2 = 0;
  }

  if (v13)
  {
    v3 = v13;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  if (v2 == v0 && v3 == v1)
  {
    goto LABEL_36;
  }

LABEL_35:
  v10 = sub_23E1FE75C();
LABEL_37:

  return v10 & 1;
}

uint64_t sub_23DED8B6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23E1FB7BC();
  return sub_23DED51F4(v1, v2);
}

uint64_t sub_23DED8BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D270, &qword_23E228678);
  sub_23E1FB5BC();
  sub_23E1FB55C();
  sub_23E1FB55C();

  return 0;
}

uint64_t sub_23DED8CA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B948 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D2A0, &qword_23E228788);
  v3 = __swift_project_value_buffer(v2, qword_27E33E150);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DED8D58@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B950 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D278, &qword_23E2286F8);
  v3 = __swift_project_value_buffer(v2, qword_27E33E168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23DED8E10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DED7F14();
}

unint64_t sub_23DED8EDC()
{
  result = qword_280DAEFA8;
  if (!qword_280DAEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFA8);
  }

  return result;
}

unint64_t sub_23DED8F34()
{
  result = qword_280DAEFA0;
  if (!qword_280DAEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFA0);
  }

  return result;
}

uint64_t sub_23DED8F8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE6B9E8;

  return sub_23DED7C40(a1);
}

uint64_t sub_23DED9020(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4D8B4;

  return sub_23DED7E8C();
}

uint64_t sub_23DED90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23DE6AECC;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

unint64_t sub_23DED9174()
{
  result = qword_280DAEFB0;
  if (!qword_280DAEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEFB0);
  }

  return result;
}

unint64_t sub_23DED91CC()
{
  result = qword_27E32D240;
  if (!qword_27E32D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D248, qword_23E228498);
    sub_23DED6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D240);
  }

  return result;
}

uint64_t sub_23DED9250(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DED4B80();
  *v5 = v2;
  v5[1] = sub_23DE47040;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23DED931C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23DED935C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23DED93C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_23DED9408(uint64_t result, int a2, int a3)
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

unint64_t sub_23DED9464()
{
  result = qword_27E32D250;
  if (!qword_27E32D250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32D250);
  }

  return result;
}

void sub_23DED94A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_23DED957C(char *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = (*v4 + 72 * a3);
    v10 = &result[-a3 + 1];
    while (2)
    {
      v14 = v10;
      v22 = v9;
      while (1)
      {
        memcpy(__dst, v9, sizeof(__dst));
        memcpy(v19, v9, sizeof(v19));
        memcpy(v21, v9 - 72, 0x48uLL);
        memcpy(__src, v9 - 72, sizeof(__src));
        sub_23DE99F40(__dst, v17);
        sub_23DE99F40(v21, v17);
        v11 = a4(v19, __src);
        if (v5)
        {
          memcpy(v16, __src, sizeof(v16));
          sub_23DEDA498(v16);
          memcpy(v17, v19, sizeof(v17));
          return sub_23DEDA498(v17);
        }

        v12 = v11;
        memcpy(v16, __src, sizeof(v16));
        sub_23DEDA498(v16);
        memcpy(v17, v19, sizeof(v17));
        result = sub_23DEDA498(v17);
        if ((v12 & 1) == 0)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        memcpy(v15, v9, sizeof(v15));
        memcpy(v9, v9 - 72, 0x48uLL);
        result = memcpy(v9 - 72, v15, 0x48uLL);
        if (!v10)
        {
          break;
        }

        ++v10;
        v9 -= 72;
      }

      ++v7;
      v9 = v22 + 72;
      v10 = v14 - 1;
      if (v7 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DED9748(char **result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v117 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v102 = *result;
    if (*result)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_95;
    }

    goto LABEL_137;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_24;
    }

    v102 = v10;
    v13 = *a3;
    v14 = v9 + 1;
    v15 = (*a3 + 72 * (v9 + 1));
    memcpy(__dst, v15, sizeof(__dst));
    memcpy(v114, v15, sizeof(v114));
    memcpy(v116, (v13 + 72 * v11), 0x48uLL);
    memcpy(__src, (v13 + 72 * v11), sizeof(__src));
    sub_23DE99F40(__dst, v112);
    sub_23DE99F40(v116, v112);
    v16 = a4(v114, __src);
    if (v7)
    {
LABEL_105:
      memcpy(v111, __src, sizeof(v111));
      sub_23DEDA498(v111);
      memcpy(v112, v114, sizeof(v112));
      sub_23DEDA498(v112);
      goto LABEL_106;
    }

    v17 = v16;
    memcpy(v111, __src, sizeof(v111));
    sub_23DEDA498(v111);
    memcpy(v112, v114, sizeof(v112));
    sub_23DEDA498(v112);
    v18 = v13 + 72 * v11;
    v19 = v11;
    v20 = 72 * v11;
    v21 = (v18 + 144);
    v99 = v19;
    v22 = v19 + 2;
    v12 = v14;
    while (1)
    {
      v23 = v12;
      v24 = v22;
      if (v12 + 1 >= v8)
      {
        break;
      }

      memcpy(v109, v21, sizeof(v109));
      memcpy(v108, v21, sizeof(v108));
      memcpy(v110, v21 - 72, sizeof(v110));
      memcpy(v107, v21 - 72, sizeof(v107));
      sub_23DE99F40(v109, v106);
      sub_23DE99F40(v110, v106);
      v25 = a4(v108, v107);
      memcpy(v105, v107, sizeof(v105));
      sub_23DEDA498(v105);
      memcpy(v106, v108, sizeof(v106));
      sub_23DEDA498(v106);
      v21 += 72;
      ++v12;
      v22 = v24 + 1;
      if ((v17 ^ v25))
      {
        if (v17)
        {
          goto LABEL_9;
        }

LABEL_13:
        v10 = v102;
LABEL_23:
        v11 = v99;
        goto LABEL_24;
      }
    }

    v12 = v8;
    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v12 < v99)
    {
      goto LABEL_131;
    }

    v10 = v102;
    if (v99 <= v23)
    {
      if (v8 >= v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v8;
      }

      v27 = v12;
      v28 = 72 * v26 - 72;
      v29 = v27;
      v30 = v99;
      do
      {
        if (v30 != --v27)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          memcpy(v110, (v31 + v20), sizeof(v110));
          memmove((v31 + v20), (v31 + v28), 0x48uLL);
          memcpy((v31 + v28), v110, 0x48uLL);
        }

        ++v30;
        v28 -= 72;
        v20 += 72;
      }

      while (v30 < v27);
      v12 = v29;
      goto LABEL_23;
    }

    v11 = v99;
LABEL_24:
    v32 = a3[1];
    if (v12 < v32)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_127;
      }

      if (v12 - v11 < a6)
      {
        v33 = v11 + a6;
        if (!__OFADD__(v11, a6))
        {
          if (v33 >= v32)
          {
            v33 = a3[1];
          }

          if (v33 < v11)
          {
            goto LABEL_130;
          }

          if (v12 != v33)
          {
            v101 = v11;
            v102 = v10;
            v79 = *a3;
            v80 = (*a3 + 72 * v12);
            v81 = v11 - v12 + 1;
            v95 = v33;
            do
            {
              v82 = v12;
              v96 = v81;
              v83 = v80;
              while (1)
              {
                memcpy(__dst, v80, sizeof(__dst));
                memcpy(v114, v80, sizeof(v114));
                memcpy(v116, v80 - 72, 0x48uLL);
                memcpy(__src, v80 - 72, sizeof(__src));
                sub_23DE99F40(__dst, v112);
                sub_23DE99F40(v116, v112);
                v84 = a4(v114, __src);
                if (v7)
                {
                  goto LABEL_105;
                }

                v85 = v84;
                memcpy(v111, __src, sizeof(v111));
                sub_23DEDA498(v111);
                memcpy(v112, v114, sizeof(v112));
                sub_23DEDA498(v112);
                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v79)
                {
                  goto LABEL_134;
                }

                memcpy(v110, v80, sizeof(v110));
                memcpy(v80, v80 - 72, 0x48uLL);
                memcpy(v80 - 72, v110, 0x48uLL);
                if (!v81)
                {
                  break;
                }

                ++v81;
                v80 -= 72;
              }

              ++v12;
              v80 = v83 + 72;
              v81 = v96 - 1;
            }

            while (v82 + 1 != v95);
            v12 = v95;
            v11 = v101;
            v10 = v102;
          }

          goto LABEL_32;
        }

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
        return;
      }
    }

LABEL_32:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v100 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23DE4CE18(0, *(v10 + 2) + 1, 1, v10);
      v10 = v86;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_23DE4CE18(v34 > 1, v35 + 1, 1, v10);
      v10 = v87;
    }

    *(v10 + 2) = v36;
    v37 = v10 + 32;
    v38 = &v10[16 * v35 + 32];
    *v38 = v11;
    *(v38 + 1) = v100;
    v102 = *result;
    if (!*result)
    {
      goto LABEL_136;
    }

    if (v35)
    {
      break;
    }

LABEL_81:
    v8 = a3[1];
    v9 = v100;
    if (v100 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    v40 = &v37[16 * v36 - 16];
    v41 = &v10[16 * v36];
    if (v36 >= 4)
    {
      v46 = &v37[16 * v36];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_114;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_115;
      }

      v53 = *(v41 + 1);
      v54 = v53 - *v41;
      if (__OFSUB__(v53, *v41))
      {
        goto LABEL_117;
      }

      v52 = __OFADD__(v44, v54);
      v55 = v44 + v54;
      if (v52)
      {
        goto LABEL_120;
      }

      if (v55 >= v49)
      {
        v69 = *v40;
        v68 = *(v40 + 1);
        v52 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v52)
        {
          goto LABEL_125;
        }

        if (v44 < v70)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v36 == 3)
    {
      v42 = *(v10 + 4);
      v43 = *(v10 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_52:
      if (v45)
      {
        goto LABEL_116;
      }

      v57 = *v41;
      v56 = *(v41 + 1);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      v60 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v61 = *(v40 + 1);
      v62 = v61 - *v40;
      if (__OFSUB__(v61, *v40))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v59, v62))
      {
        goto LABEL_124;
      }

      if (v59 + v62 >= v44)
      {
        if (v44 < v62)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v36 < 2)
    {
      goto LABEL_118;
    }

    v64 = *v41;
    v63 = *(v41 + 1);
    v52 = __OFSUB__(v63, v64);
    v59 = v63 - v64;
    v60 = v52;
LABEL_67:
    if (v60)
    {
      goto LABEL_121;
    }

    v66 = *v40;
    v65 = *(v40 + 1);
    v52 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v52)
    {
      goto LABEL_123;
    }

    if (v67 < v59)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v71 = &v37[16 * v39 - 16];
    v72 = *v71;
    v73 = v39;
    v74 = &v37[16 * v39];
    v75 = *(v74 + 1);
    sub_23DED9FEC((*a3 + 72 * *v71), (*a3 + 72 * *v74), *a3 + 72 * v75, v102, a4);
    if (v7)
    {
      goto LABEL_106;
    }

    if (v75 < v72)
    {
      goto LABEL_108;
    }

    v7 = v37;
    v76 = v10;
    v10 = *(v10 + 2);
    if (v73 > v10)
    {
      goto LABEL_109;
    }

    *v71 = v72;
    *(v71 + 1) = v75;
    if (v73 >= v10)
    {
      goto LABEL_110;
    }

    v77 = v73;
    v36 = (v10 - 1);
    sub_23DF20C0C(v74 + 16, &v10[-v77 - 1], v74);
    *(v76 + 2) = v10 - 1;
    v78 = v10 > 2;
    v10 = v76;
    v37 = v7;
    v7 = 0;
    if (!v78)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
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
  v10 = sub_23DF20AE8(v10);
LABEL_95:
  v88 = v10 + 16;
  v89 = *(v10 + 2);
  while (v89 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_133;
    }

    v90 = v10;
    v10 += 16 * v89;
    v91 = *v10;
    v92 = &v88[2 * v89];
    v93 = *(v92 + 1);
    sub_23DED9FEC((*a3 + 72 * *v10), (*a3 + 72 * *v92), *a3 + 72 * v93, v102, a4);
    if (v7)
    {
      break;
    }

    if (v93 < v91)
    {
      goto LABEL_111;
    }

    if (v89 - 2 >= *v88)
    {
      goto LABEL_112;
    }

    *v10 = v91;
    *(v10 + 1) = v93;
    v94 = *v88 - v89;
    if (*v88 < v89)
    {
      goto LABEL_113;
    }

    v89 = *v88 - 1;
    sub_23DF20C0C(v92 + 16, v94, v92);
    *v88 = v89;
    v10 = v90;
  }

LABEL_106:
}

uint64_t sub_23DED9FEC(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  v46 = a5;
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 72;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    sub_23DF318CC(a1, (a2 - a1) / 72, a4);
    v12 = v6 + 72 * v9;
    while (1)
    {
      if (v6 >= v12 || v7 >= a3)
      {
        v28 = v8;
        goto LABEL_41;
      }

      memcpy(__dst, v7, sizeof(__dst));
      memmove(v43, v7, 0x48uLL);
      memcpy(v45, v6, 0x48uLL);
      memmove(__src, v6, 0x48uLL);
      sub_23DE99F40(__dst, v41);
      sub_23DE99F40(v45, v41);
      v14 = v46(v43, __src);
      if (v5)
      {
        memcpy(v40, __src, sizeof(v40));
        sub_23DEDA498(v40);
        memcpy(v41, v43, sizeof(v41));
        sub_23DEDA498(v41);
        v32 = (v12 - v6) / 72;
        v33 = v8 < v6 || v8 >= v6 + 72 * v32;
        if (v33 || v8 != v6)
        {
          v31 = 72 * v32;
          v28 = v8;
LABEL_53:
          v34 = v6;
LABEL_60:
          memmove(v28, v34, v31);
        }

        return 1;
      }

      v15 = v14;
      memcpy(v40, __src, sizeof(v40));
      sub_23DEDA498(v40);
      memcpy(v41, v43, sizeof(v41));
      sub_23DEDA498(v41);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v7;
      v17 = v8 == v7;
      v7 += 72;
      if (!v17)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 72;
    }

    v16 = v6;
    v17 = v8 == v6;
    v6 += 72;
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v8, v16, 0x48uLL);
    goto LABEL_14;
  }

  sub_23DF318CC(a2, (a3 - a2) / 72, a4);
  v12 = v6 + 72 * v11;
  v38 = v6;
  v18 = -v6;
  v19 = a3;
LABEL_16:
  v39 = v7;
  v37 = v7 - 72;
  v20 = (v19 - 72);
  for (i = v18 + v12; ; i -= 72)
  {
    if (v12 <= v38 || v39 <= v8)
    {
      v6 = v38;
      v28 = v39;
LABEL_41:
      v29 = (v12 - v6) / 72;
      v30 = v28 < v6 || v28 >= v6 + 72 * v29;
      if (v30 || v28 != v6)
      {
        v31 = 72 * v29;
        goto LABEL_53;
      }

      return 1;
    }

    v23 = v20;
    memcpy(__dst, (v12 - 72), sizeof(__dst));
    memmove(v43, (v12 - 72), 0x48uLL);
    memcpy(v45, v37, 0x48uLL);
    memcpy(__src, v37, sizeof(__src));
    sub_23DE99F40(__dst, v41);
    sub_23DE99F40(v45, v41);
    v24 = v46(v43, __src);
    if (v5)
    {
      break;
    }

    v25 = v24;
    memcpy(v40, __src, sizeof(v40));
    sub_23DEDA498(v40);
    memcpy(v41, v43, sizeof(v41));
    sub_23DEDA498(v41);
    if (v25)
    {
      v19 = v23;
      v27 = (v23 + 72) < v39 || v23 >= v39;
      if (!v27 && v23 + 72 == v39)
      {
        v7 = v37;
      }

      else
      {
        v7 = v37;
        memmove(v23, v37, 0x48uLL);
      }

      goto LABEL_16;
    }

    v26 = (v23 + 72) < v12 || v23 >= v12;
    if (v26 || v12 != v23 + 72)
    {
      memmove(v23, (v12 - 72), 0x48uLL);
    }

    v20 = v23 - 72;
    v12 -= 72;
  }

  memcpy(v40, __src, sizeof(v40));
  sub_23DEDA498(v40);
  memcpy(v41, v43, sizeof(v41));
  sub_23DEDA498(v41);
  v34 = v38;
  v28 = v39;
  v35 = v39 < v38 || v39 >= &v38[72 * (i / 72)];
  if (v35 || v39 != v38)
  {
    v31 = 72 * (i / 72);
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_23DEDA434(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DEDA590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C320, &unk_23E224B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DEDA600()
{
  result = qword_27E32D2D8;
  if (!qword_27E32D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D2D8);
  }

  return result;
}

unint64_t sub_23DEDA654()
{
  result = qword_27E32D330;
  if (!qword_27E32D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D320, &qword_23E2288A0);
    sub_23DE712E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D330);
  }

  return result;
}

_BYTE *sub_23DEDA6D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DEDA7B4()
{
  result = qword_27E32D340;
  if (!qword_27E32D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D340);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_23E1FBF1C();
}

void OUTLINED_FUNCTION_11_7()
{

  JUMPOUT(0x23EF04C90);
}

void *OUTLINED_FUNCTION_12_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return memcpy(va, v22, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(a1 + 16) = v20;

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_18_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(__srca, a22);
  __src = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);

  return memcpy((v22 - 136), __srca, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return MEMORY[0x2821FE9A8](va, v22);
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return sub_23E1FE70C();
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return sub_23E1FB66C();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{

  return sub_23E1FB98C();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t PersistableDynamicOptionsProvider.results()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[35] = a2;
  v3[36] = a3;
  v3[34] = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[37] = AssociatedConformanceWitness;
  v3[38] = OUTLINED_FUNCTION_19_4(AssociatedConformanceWitness, v6, v7, v8, MEMORY[0x277D83390]);
  OUTLINED_FUNCTION_6_0();
  v3[39] = v9;
  v3[40] = OUTLINED_FUNCTION_42();
  sub_23E1FE42C();
  v3[41] = OUTLINED_FUNCTION_42();
  v3[42] = swift_checkMetadataState();
  OUTLINED_FUNCTION_6_0();
  v3[43] = v10;
  v11 = OUTLINED_FUNCTION_42();
  v3[44] = v11;
  v15 = OUTLINED_FUNCTION_19_4(v11, v12, v13, v14, MEMORY[0x277D833C8]);
  v3[45] = v15;
  v3[46] = *(v15 - 8);
  v3[47] = OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_12_11(a3);
  v16 = swift_task_alloc();
  v3[48] = v16;
  *v16 = v3;
  v16[1] = sub_23DEDAC94;
  OUTLINED_FUNCTION_9_7();

  return v17();
}

uint64_t sub_23DEDAC94()
{
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_19();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23DEDADE8, 0, 0);
  }
}

uint64_t sub_23DEDADE8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = objc_opt_self();
  v0[49] = v3;
  v4 = [v3 standardClient];
  v0[50] = v4;
  v5 = *(v2 + 32);
  v0[51] = v5;
  v0[52] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x98EB000000000000;
  v5(v1, v2);
  v6 = sub_23E1FDBDC();
  v0[53] = v6;

  v0[2] = v0;
  v0[3] = sub_23DEDAF78;
  v7 = swift_continuation_init();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  v0[54] = v8;
  v0[25] = v8;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23DEDB89C;
  v0[21] = &block_descriptor_14;
  v0[22] = v7;
  [v4 removeAllSerializedParametersForQueryName:v6 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DEDAF78()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 440) = v4;
  if (v4)
  {
    v5 = sub_23DEDB6A8;
  }

  else
  {
    v5 = sub_23DEDB080;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEDB080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v19 = *(v18 + 424);
  v21 = *(v18 + 344);
  v20 = *(v18 + 352);
  v22 = *(v18 + 336);
  v23 = *(v18 + 296);
  v24 = *(v18 + 272);

  (*(v21 + 16))(v20, v24, v22);
  sub_23E1FDD9C();
  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedConformanceWitness();
  sub_23E1FE44C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v25 = OUTLINED_FUNCTION_7_8();
    v26(v25);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v52 = *(v18 + 432);
    OUTLINED_FUNCTION_5_9();
    (*(v36 + 32))(v24);
    v51 = [v20 standardClient];
    *(v18 + 448) = v51;
    OUTLINED_FUNCTION_16_9(v51, v37, v38, &protocol requirements base descriptor for PersistableDynamicOptionsProvider);
    v39 = OUTLINED_FUNCTION_0_19();
    v40(v39);
    v41 = sub_23E1FBFCC();
    OUTLINED_FUNCTION_18_11(v41);
    v42 = OUTLINED_FUNCTION_0_19();
    v43(v42);
    *(v18 + 464) = sub_23E1FDBDC();

    v44 = OUTLINED_FUNCTION_11_8();
    v45(v44);
    *(v18 + 472) = sub_23E1FDBDC();

    v46 = OUTLINED_FUNCTION_0_19();
    v47(v46);
    *(v18 + 80) = v18;
    OUTLINED_FUNCTION_3_8();
    *(v18 + 264) = v52;
    OUTLINED_FUNCTION_2_15();
    *(v18 + 216) = 1107296256;
    OUTLINED_FUNCTION_1_15(v48, &block_descriptor_5);
    OUTLINED_FUNCTION_17_9(v51, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v49);
  }
}

uint64_t sub_23DEDB320()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 480) = v4;
  if (v4)
  {
    v5 = sub_23DEDB778;
  }

  else
  {
    v5 = sub_23DEDB428;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23DEDB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v20 = v18[58];
  v21 = v18[59];
  v23 = v18[56];
  v22 = v18[57];
  (*(v18[39] + 8))(v18[40], v18[38]);

  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedConformanceWitness();
  sub_23E1FE44C();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    v24 = OUTLINED_FUNCTION_7_8();
    v25(v24);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_26();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v51 = v18[54];
    OUTLINED_FUNCTION_5_9();
    (*(v35 + 32))(v19);
    v50 = [v21 standardClient];
    v18[56] = v50;
    OUTLINED_FUNCTION_16_9(v50, v36, v37, &protocol requirements base descriptor for PersistableDynamicOptionsProvider);
    v38 = OUTLINED_FUNCTION_0_19();
    v39(v38);
    v40 = sub_23E1FBFCC();
    OUTLINED_FUNCTION_18_11(v40);
    v41 = OUTLINED_FUNCTION_0_19();
    v42(v41);
    v18[58] = sub_23E1FDBDC();

    v43 = OUTLINED_FUNCTION_11_8();
    v44(v43);
    v18[59] = sub_23E1FDBDC();

    v45 = OUTLINED_FUNCTION_0_19();
    v46(v45);
    v18[10] = v18;
    OUTLINED_FUNCTION_3_8();
    v18[33] = v51;
    OUTLINED_FUNCTION_2_15();
    v18[27] = 1107296256;
    OUTLINED_FUNCTION_1_15(v47, &block_descriptor_5);
    OUTLINED_FUNCTION_17_9(v50, sel_storeSerializedParameters_forAppEntityIdentifier_queryName_badgeType_completion_);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x282200938](v48);
  }
}

uint64_t sub_23DEDB6A8(uint64_t a1)
{
  v2 = v1[53];
  v3 = v1[50];
  v4 = v1[42];
  v5 = v1[43];
  v6 = v1[34];
  swift_willThrow();
  (*(v5 + 8))(v6, v4);

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23DEDB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v38 = v18[59];
  v39 = v18[58];
  v40 = v18[57];
  v20 = v18[46];
  v19 = v18[47];
  v21 = v18[45];
  v22 = v18[43];
  v36 = v18[42];
  v37 = v18[56];
  v23 = v18[39];
  v24 = v18[40];
  v25 = v18[38];
  v26 = v18[34];
  swift_willThrow();
  (*(v23 + 8))(v24, v25);
  (*(v20 + 8))(v19, v21);
  (*(v22 + 8))(v26, v36);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, v38, v39, v40, a15, a16, a17, a18);
}

uint64_t sub_23DEDB89C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_23DEEC878();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t dispatch thunk of PersistableDynamicOptionsProvider.fetchResults()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_12_11(a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23DEDBA88;
  OUTLINED_FUNCTION_9_7();

  return v5();
}

uint64_t sub_23DEDBA88()
{
  OUTLINED_FUNCTION_28();
  v1 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;

  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  *(v0 + 88) = sub_23DEDB320;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getAssociatedConformanceWitness();
}

id OUTLINED_FUNCTION_17_9(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{
  *(v3 + 456) = a1;

  return sub_23DE7E040(v1, v2);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

id sub_23DEDBD0C()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v148 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v7 = *MEMORY[0x277D7CB18];
  v8 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  strcpy((inited + 40), "WFAlertAction");
  *(inited + 54) = -4864;
  v9 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = v7;
  v11 = v9;
  v12 = sub_23E1FDCBC("message|ask|display|prompt|show|confirmation", 44);
  v14 = v13;
  sub_23E1FDCBC("message|ask|display|prompt|show|confirmation", 44);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v166 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v12, v14);
  v18 = v17;
  v19 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v165 = v19;
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v164 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_23E222340;
  v22 = v2;
  v23 = v5;
  v24 = *MEMORY[0x277D7CC30];
  *(v21 + 32) = *MEMORY[0x277D7CC30];
  v25 = v20;
  v26 = v24;
  v27 = sub_23E1FDCBC("Displays an alert with a title, a message, and two buttons. If the user selects the OK button, the shortcut continues. The cancel button stops the shortcut.", 156);
  v29 = v28;
  sub_23E1FDCBC("Displays an alert with a title, a message, and two buttons. If the user selects the OK button, the shortcut continues. The cancel button stops the shortcut.", 156);
  sub_23E1FC14C();
  v30 = [v166 bundleURL];
  sub_23E1FBF9C();

  v31 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v32 = v23;
  v33 = v22;
  sub_23DE477A0(v27, v29);
  v34 = v165;
  *(v21 + 64) = v165;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v36 = sub_23E1FDABC();
  v37 = v164;
  *(inited + 120) = sub_23DF3BE54(v36);
  v38 = *MEMORY[0x277D7CB48];
  *(inited + 144) = v37;
  *(inited + 152) = v38;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x800000023E2558B0;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v39;
  *(inited + 200) = 0x6F646E697763616DLL;
  *(inited + 208) = 0xE900000000000077;
  v41 = *MEMORY[0x277D7CCC8];
  *(inited + 224) = v40;
  *(inited + 232) = v41;
  v42 = MEMORY[0x277D839B0];
  *(inited + 240) = 1;
  v43 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v42;
  *(inited + 272) = v43;
  v44 = v38;
  v45 = v39;
  v46 = v41;
  v47 = v43;
  v48 = sub_23E1FDCBC("Show Alert (Action Name)", 24);
  v50 = v49;
  sub_23E1FDCBC("Show Alert", 10);
  v148 = v32;
  sub_23E1FC14C();
  v51 = [v166 bundleURL];
  sub_23E1FBF9C();

  v52 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v48, v50);
  *(inited + 280) = v53;
  v54 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v34;
  *(inited + 312) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_23E224C00;
  v163 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v55 = swift_initStackObject();
  v152 = xmmword_23E224710;
  *(v55 + 16) = xmmword_23E224710;
  v56 = *MEMORY[0x277D7CDF8];
  v151 = 0x800000023E24EAF0;
  *(v55 + 32) = v56;
  *(v55 + 40) = 0xD000000000000014;
  *(v55 + 48) = 0x800000023E24EAF0;
  v57 = *MEMORY[0x277D7CE20];
  v58 = MEMORY[0x277D837D0];
  *(v55 + 64) = MEMORY[0x277D837D0];
  *(v55 + 72) = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  v164 = v59;
  *(v55 + 80) = &unk_2850249B8;
  v60 = *MEMORY[0x277D7CE70];
  *(v55 + 104) = v59;
  *(v55 + 112) = v60;
  *(v55 + 120) = 0xD000000000000012;
  *(v55 + 128) = 0x800000023E255D20;
  v61 = *MEMORY[0x277D7CE80];
  *(v55 + 144) = v58;
  *(v55 + 152) = v61;
  v62 = v56;
  v63 = v57;
  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v68 = v64;
  v69 = v65;
  v156 = v66;
  v158 = v67;
  v157 = v68;
  v159 = v69;
  v70 = v54;
  v71 = sub_23E1FDCBC("Title (WFAlertActionTitle)", 26);
  v73 = v72;
  sub_23E1FDCBC("Title", 5);
  sub_23E1FC14C();
  v74 = [v166 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v76 = v33;
  sub_23DE477A0(v71, v73);
  *(v55 + 160) = v77;
  v78 = *MEMORY[0x277D7CEA8];
  v79 = v165;
  *(v55 + 184) = v165;
  *(v55 + 192) = v78;
  v150 = v78;
  v155 = sub_23E1FDCBC("optional (WFAlertActionTitle)", 29);
  v81 = v80;
  sub_23E1FDCBC("optional", 8);
  sub_23E1FC14C();
  v82 = [v166 bundleURL];
  v162 = v76;
  sub_23E1FBF9C();

  v83 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v155, v81);
  *(v55 + 224) = v79;
  *(v55 + 200) = v84;
  _s3__C3KeyVMa_0(0);
  v155 = v85;
  v154 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v86 = sub_23E1FDABC();
  v87 = sub_23DF3BE9C(v86);
  *(v161 + 32) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_23E224700;
  *(v88 + 32) = v156;
  *(v88 + 40) = 0xD000000000000014;
  *(v88 + 48) = v151;
  v89 = *MEMORY[0x277D7CE00];
  *(v88 + 64) = MEMORY[0x277D837D0];
  *(v88 + 72) = v89;
  v151 = v89;
  v149 = sub_23E1FDCBC("Do you want to continue? (WFAlertActionMessage)", 47);
  v91 = v90;
  sub_23E1FDCBC("Do you want to continue?", 24);
  sub_23E1FC14C();
  v92 = v166;
  v93 = [v166 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v149, v91);
  *(v88 + 80) = v95;
  v96 = v158;
  *(v88 + 104) = v165;
  *(v88 + 112) = v96;
  *(v88 + 120) = &unk_2850249E8;
  v97 = v157;
  *(v88 + 144) = v164;
  *(v88 + 152) = v97;
  *(v88 + 160) = 0xD000000000000014;
  *(v88 + 168) = 0x800000023E255DD0;
  v98 = v159;
  *(v88 + 184) = MEMORY[0x277D837D0];
  *(v88 + 192) = v98;
  v99 = sub_23E1FDCBC("Message (WFAlertActionMessage)", 30);
  v101 = v100;
  sub_23E1FDCBC("Message", 7);
  v149 = inited;
  sub_23E1FC14C();
  v102 = [v92 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v99, v101);
  *(v88 + 200) = v104;
  v105 = *MEMORY[0x277D7CE98];
  v106 = v165;
  *(v88 + 224) = v165;
  *(v88 + 232) = v105;
  *(v88 + 240) = 1;
  v107 = v150;
  *(v88 + 264) = MEMORY[0x277D839B0];
  *(v88 + 272) = v107;
  v108 = v105;
  v109 = sub_23E1FDCBC("Informational message (WFAlertActionMessage)", 44);
  v111 = v110;
  sub_23E1FDCBC("Informational message", 21);
  sub_23E1FC14C();
  v112 = [v92 bundleURL];
  sub_23E1FBF9C();

  v113 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v109, v111);
  *(v88 + 304) = v106;
  *(v88 + 280) = v114;
  v115 = sub_23E1FDABC();
  v116 = sub_23DF3BE9C(v115);
  v117 = v161;
  *(v161 + 40) = v116;
  v118 = swift_initStackObject();
  *(v118 + 16) = v152;
  *(v118 + 32) = v156;
  *(v118 + 40) = 0xD000000000000011;
  *(v118 + 48) = 0x800000023E250E40;
  v119 = MEMORY[0x277D837D0];
  v120 = v151;
  *(v118 + 64) = MEMORY[0x277D837D0];
  *(v118 + 72) = v120;
  *(v118 + 80) = 1;
  v121 = v158;
  *(v118 + 104) = MEMORY[0x277D839B0];
  *(v118 + 112) = v121;
  *(v118 + 120) = &unk_285024A18;
  v122 = v157;
  *(v118 + 144) = v164;
  *(v118 + 152) = v122;
  *(v118 + 160) = 0xD00000000000001ELL;
  *(v118 + 168) = 0x800000023E255E60;
  v123 = v159;
  *(v118 + 184) = v119;
  *(v118 + 192) = v123;
  v124 = sub_23E1FDCBC("Show Cancel Button (WFAlertActionCancelButtonShown)", 51);
  v126 = v125;
  sub_23E1FDCBC("Show Cancel Button", 18);
  sub_23E1FC14C();
  v127 = [v166 bundleURL];
  sub_23E1FBF9C();

  v128 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v124, v126);
  *(v118 + 224) = v165;
  *(v118 + 200) = v129;
  v130 = sub_23E1FDABC();
  *(v117 + 48) = sub_23DF3BE9C(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v132 = v149;
  v149[40] = v117;
  v133 = *MEMORY[0x277D7CB98];
  v132[43] = v131;
  v132[44] = v133;
  v134 = v133;
  v135 = sub_23E1FDCBC("Show alert ${WFAlertActionMessage} (Parameter Summary)", 54);
  v137 = v136;
  sub_23E1FDCBC("Show alert ${WFAlertActionMessage}", 34);
  sub_23E1FC14C();
  v138 = [v166 bundleURL];
  sub_23E1FBF9C();

  v139 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v135, v137);
  v141 = v140;
  v142 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v143 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v132[45] = v142;
  v144 = *MEMORY[0x277D7CF20];
  v132[48] = v143;
  v132[49] = v144;
  v132[53] = v164;
  v132[50] = &unk_285024A48;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v145 = v144;
  v146 = sub_23E1FDABC();
  return sub_23DF3BF9C(v146);
}

ActionKit::PhysicalActivity __swiftcall PhysicalActivity.init(motionActivity:)(CMMotionActivity motionActivity)
{
  isa = motionActivity.super.super.isa;
  v3 = v1;
  v4 = sub_23E1FD03C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([(objc_class *)isa walking])
  {

    v9 = 2;
  }

  else if ([(objc_class *)isa running])
  {

    v9 = 3;
  }

  else if ([(objc_class *)isa cycling])
  {

    v9 = 4;
  }

  else
  {
    v10 = [(objc_class *)isa automotive];
    v11 = [(objc_class *)isa stationary];
    v12 = v11;
    if (v10)
    {

      if (v12)
      {
        v9 = 5;
      }

      else
      {
        v9 = 6;
      }
    }

    else if (v11)
    {

      v9 = 1;
    }

    else if (CMMotionActivity.isEmpty.getter())
    {

      v9 = 7;
    }

    else
    {
      sub_23E1FCB9C();
      v13 = isa;
      v14 = sub_23E1FD02C();
      v15 = sub_23E1FE1AC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136315138;
        v18 = CMMotionActivity.debugString.getter();
        v20 = sub_23DE56B40(v18, v19, &v23);
        v22 = v13;
        v21 = v20;

        *(v16 + 4) = v21;
        _os_log_impl(&dword_23DE30000, v14, v15, "Received %s, returning .unknown", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x23EF074C0](v17, -1, -1);
        MEMORY[0x23EF074C0](v16, -1, -1);
      }

      else
      {
      }

      result = (*(v5 + 8))(v7, v4);
      v9 = 0;
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_23DEDCEB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  MEMORY[0x28223BE20](v0 - 8);
  v61 = v48 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v48 - v3;
  v5 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E1FBEEC();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D380, &qword_23E228C78);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D388, &unk_23E228C80);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v60 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23E224420;
  v17 = v16 + v15;
  v57 = v14;
  v49 = *(v14 + 48);
  v50 = v16;
  *(v16 + v15) = 0;
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v8, qword_280DB7710);
  v56 = *(v63 + 16);
  v63 += 16;
  v56(v10, v18, v8);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v62);
  v59 = sub_23E1FB75C();
  v19 = v61;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v59);
  sub_23E1FB76C();
  v20 = v17;
  v53 = v17;
  v55 = v8;
  v49 = *(v57 + 48);
  *(v17 + v60) = 1;
  sub_23E1FDB5C();
  v54 = v18;
  v21 = v8;
  v22 = v56;
  v56(v10, v18, v21);
  v58 = v7;
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v62);
  v23 = v59;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v59);
  sub_23E1FB76C();
  v24 = v60;
  v25 = (v20 + 2 * v60);
  v26 = v57;
  v27 = *(v57 + 48);
  v48[1] = v25;
  v49 = v27;
  *v25 = 2;
  sub_23E1FDB5C();
  v28 = v18;
  v29 = v22;
  v22(v10, v28, v55);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v52 = v4;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v62);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v23);
  sub_23E1FB76C();
  v30 = v53;
  v49 = *(v26 + 48);
  *(v53 + 3 * v24) = 3;
  v51 = v13;
  sub_23E1FDB5C();
  v32 = v54;
  v31 = v55;
  v29(v10, v54, v55);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v33 = v62;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v62);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v59);
  sub_23E1FB76C();
  v34 = v57;
  v49 = *(v57 + 48);
  *(v30 + 4 * v60) = 4;
  sub_23E1FDB5C();
  v35 = v32;
  v36 = v31;
  v37 = v56;
  v56(v10, v35, v31);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v33);
  v38 = v59;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v59);
  sub_23E1FB76C();
  v39 = v60;
  v40 = v53;
  v49 = *(v34 + 48);
  *(v53 + 5 * v60) = 5;
  sub_23E1FDB5C();
  v41 = v54;
  v37(v10, v54, v36);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v42 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v62);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v38);
  sub_23E1FB76C();
  v49 = *(v57 + 48);
  *(v40 + 6 * v39) = 6;
  sub_23E1FDB5C();
  v43 = v41;
  v44 = v55;
  v56(v10, v43, v55);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  v45 = v62;
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v62);
  v46 = v61;
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v59);
  sub_23E1FB76C();
  *(v53 - v60 + 8 * v60) = 7;
  sub_23E1FDB5C();
  v56(v10, v54, v44);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v59);
  sub_23E1FB76C();
  sub_23E1FB77C();
  sub_23DEDE8A0();
  result = sub_23E1FDABC();
  qword_27E32D348 = result;
  return result;
}

uint64_t *sub_23DEDD9A4()
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27E32B958);
  }

  return &qword_27E32D348;
}

uint64_t static PhysicalActivity.caseDisplayRepresentations.getter()
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27E32B958);
  }

  swift_beginAccess();
  return sub_23E1FB7BC();
}

uint64_t static PhysicalActivity.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27E32B958);
  }

  swift_beginAccess();
  qword_27E32D348 = a1;
}

uint64_t (*static PhysicalActivity.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E32B958 != -1)
  {
    OUTLINED_FUNCTION_1_16(&qword_27E32B958);
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_23DEDDB34@<X0>(void *a1@<X8>)
{
  sub_23DEDD9A4();
  swift_beginAccess();
  *a1 = qword_27E32D348;
  return sub_23E1FB7BC();
}

uint64_t sub_23DEDDB88(uint64_t *a1)
{
  v1 = *a1;
  sub_23E1FB7BC();
  sub_23DEDD9A4();
  swift_beginAccess();
  qword_27E32D348 = v1;
}

uint64_t sub_23DEDDBE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23E1FBEEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v10, qword_27E32D350);
  __swift_project_value_buffer(v10, qword_27E32D350);
  sub_23E1FDB5C();
  if (qword_280DAE5D0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280DB7710);
  (*(v5 + 16))(v7, v11, v4);
  sub_23E1FC19C();
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_23E1FB8EC();
}

uint64_t sub_23DEDDED0()
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27E32B960);
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32D350);
}

uint64_t static PhysicalActivity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27E32B960);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D350);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PhysicalActivity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27E32B960);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D350);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PhysicalActivity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E32B960 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_27E32B960);
  }

  v1 = sub_23E1FB8FC();
  __swift_project_value_buffer(v1, qword_27E32D350);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DEDE13C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEDDED0();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEDE1B8(uint64_t a1)
{
  v2 = sub_23DEDDED0();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

ActionKit::PhysicalActivity_optional __swiftcall PhysicalActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E1FE6EC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PhysicalActivity.rawValue.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      return 0x616E6F6974617453;
    case 2:
      v2 = 1802264919;
      goto LABEL_6;
    case 3:
      v2 = 1852732754;
      goto LABEL_6;
    case 4:
      v2 = 1818458435;
LABEL_6:
      result = v2 | 0x676E6900000000;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x676E69766F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23DEDE3A4@<X0>(uint64_t *a1@<X8>)
{
  result = PhysicalActivity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEDE3E0(uint64_t a1)
{
  v2 = sub_23DEDE798();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_23DEDE430(uint64_t a1)
{
  v2 = sub_23DEDE6F4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DEDE480()
{
  result = qword_280DAE9C8;
  if (!qword_280DAE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9C8);
  }

  return result;
}

unint64_t sub_23DEDE4D8()
{
  result = qword_280DAEA08;
  if (!qword_280DAEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA08);
  }

  return result;
}

unint64_t sub_23DEDE530()
{
  result = qword_280DAE9E0;
  if (!qword_280DAE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9E0);
  }

  return result;
}

unint64_t sub_23DEDE588()
{
  result = qword_280DAE9C0;
  if (!qword_280DAE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9C0);
  }

  return result;
}

unint64_t sub_23DEDE5E0()
{
  result = qword_27E32D368;
  if (!qword_27E32D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D370, &qword_23E228A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D368);
  }

  return result;
}

unint64_t sub_23DEDE648()
{
  result = qword_280DAE9F0;
  if (!qword_280DAE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9F0);
  }

  return result;
}

unint64_t sub_23DEDE69C()
{
  result = qword_280DAE9E8;
  if (!qword_280DAE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9E8);
  }

  return result;
}

unint64_t sub_23DEDE6F4()
{
  result = qword_280DAE9F8;
  if (!qword_280DAE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9F8);
  }

  return result;
}

unint64_t sub_23DEDE798()
{
  result = qword_27E32D378;
  if (!qword_27E32D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D378);
  }

  return result;
}

unint64_t sub_23DEDE7F0()
{
  result = qword_280DAE9D8;
  if (!qword_280DAE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9D8);
  }

  return result;
}

unint64_t sub_23DEDE848()
{
  result = qword_280DAE9B8;
  if (!qword_280DAE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9B8);
  }

  return result;
}

unint64_t sub_23DEDE8A0()
{
  result = qword_280DAE9D0;
  if (!qword_280DAE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicalActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhysicalActivity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return swift_once();
}

BOOL sub_23DEDEAA0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_23E1FB7BC();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_23DEDEB50()
{
  v23 = sub_23E1FDB4C();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FDBAC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v18 - v4;
  v5 = sub_23E1FBEEC();
  v19 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_23E1FDBCC();
  MEMORY[0x28223BE20](v10 - 8);
  v21 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v21);
  v11 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v11, qword_27E32D390);
  v20 = __swift_project_value_buffer(v11, qword_27E32D390);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v18 = v6 + 104;
  v13(v8, v12, v5);
  sub_23E1FBF1C();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v14 = v22;
  v15 = v23;
  (*(v0 + 104))(v22, *MEMORY[0x277CC9BD8], v23);
  sub_23E1FDB6C();
  (*(v0 + 8))(v14, v15);
  sub_23E1FDB8C();
  sub_23E1FDBBC();
  sub_23E1FC19C();
  v13(v8, v12, v19);
  v16 = v24;
  sub_23E1FBF1C();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
  return sub_23E1FB8EC();
}

uint64_t sub_23DEDEFD4()
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_27E32B968);
  }

  v0 = sub_23E1FB8FC();

  return __swift_project_value_buffer(v0, qword_27E32D390);
}

uint64_t static AppShortcutEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_27E32B968);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D390);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AppShortcutEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_27E32B968);
  }

  v2 = sub_23E1FB8FC();
  v3 = __swift_project_value_buffer(v2, qword_27E32D390);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AppShortcutEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27E32B968 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_27E32B968);
  }

  v1 = sub_23E1FB8FC();
  __swift_project_value_buffer(v1, qword_27E32D390);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23DEDF240@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DEDEFD4();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DEDF2BC(uint64_t a1)
{
  v2 = sub_23DEDEFD4();
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t AppShortcutEntity.id.getter()
{
  v1 = [*v0 id];
  v2 = sub_23E1FDC1C();

  return v2;
}

uint64_t AppShortcutEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v61 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15();
  v64 = v7 - v6;
  v8 = sub_23E1FDBAC();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_15();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v53 - v12;
  v13 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_6_0();
  v56 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  sub_23E1FB75C();
  OUTLINED_FUNCTION_6_0();
  v59 = v25;
  v60 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v28 = (v27 - v26);
  v29 = *v1;
  v30 = [*v1 shortTitle];
  v57 = sub_23E1FDC1C();
  v58 = v31;

  v32 = [v29 entityInfo];
  if (v32)
  {
    v33 = v32;
    v53 = v28;
    v54 = v5;
    v55 = a1;
    v28 = &off_278C24000;
    v34 = [v32 icon];
    v35 = [v34 imageURL];

    if (v35)
    {
      sub_23E1FBF9C();

      v36 = v56;
      (*(v56 + 32))(v23, v21, v13);
      (*(v36 + 16))(v18, v23, v13);
      OUTLINED_FUNCTION_9_8();
      sub_23E1FB72C();
      (*(v36 + 8))(v23, v13);
      v5 = v54;
    }

    else
    {
      sub_23DEE144C([v33 &selRef_JSONKeyPathsByPropertyKey], &selRef_systemName);
      if (v41)
      {
        OUTLINED_FUNCTION_9_8();
        sub_23E1FB71C();
        v5 = v54;
      }

      else
      {
        sub_23DEE1304([v33 &selRef_JSONKeyPathsByPropertyKey]);
        v5 = v54;
        if (v42 >> 60 == 15)
        {
          v43 = [v29 underlyingAutoShortcut];
          v44 = [v43 systemImageName];

          sub_23E1FDC1C();
          OUTLINED_FUNCTION_9_8();
          sub_23E1FB71C();
        }

        else
        {
          OUTLINED_FUNCTION_9_8();
          sub_23E1FB73C();
        }
      }
    }

    v45 = [v33 subtitle];
    if (!v45)
    {

      v49 = 1;
      v48 = v62;
      goto LABEL_16;
    }

    v46 = v45;
    sub_23E1FDC1C();
    v40 = v47;
  }

  else
  {
    v37 = [v29 underlyingAutoShortcut];
    v38 = [v37 systemImageName];

    sub_23E1FDC1C();
    sub_23E1FB71C();
    sub_23DEE144C([v29 underlyingAutoShortcut], &selRef_localizedAutoShortcutDescription);
    v40 = v39;
  }

  v48 = v62;
  if (v40)
  {
    sub_23E1FB7BC();
    sub_23E1FDB9C();
    OUTLINED_FUNCTION_11_9();
    sub_23E1FDB7C();
    OUTLINED_FUNCTION_11_9();
    sub_23E1FBEFC();
    swift_bridgeObjectRelease_n();
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

LABEL_16:
  __swift_storeEnumTagSinglePayload(v48, v49, 1, v61);
  sub_23E1FDB9C();
  OUTLINED_FUNCTION_11_9();
  sub_23E1FDB7C();

  OUTLINED_FUNCTION_11_9();
  sub_23E1FBEFC();
  sub_23DEE1374(v48, v63);
  v51 = v59;
  v50 = v60;
  (*(v59 + 16))(v5, v28, v60);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v50);
  sub_23E1FB76C();
  sub_23DEE13E4(v48);
  return (*(v51 + 8))(v28, v50);
}

uint64_t AppShortcutEntity.AppShortcutQuery.entities(for:)()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DEDFAA8;

  return sub_23DEDFE94();
}

uint64_t sub_23DEDFAA8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23DEDFBAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v31 = MEMORY[0x277D84F90];
  v3 = 0;
  v28 = v1 & 0xC000000000000001;
  v29 = sub_23DE4D8B0();
  v27 = v1 + 32;
LABEL_2:
  while (v3 != v29)
  {
    sub_23DE59014();
    if (v28)
    {
      v4 = MEMORY[0x23EF04DD0](v3, *(v30 + 32));
    }

    else
    {
      v4 = *(v27 + 8 * v3);
    }

    v5 = v4;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v7 = *(v2 + 16) + 1;
    v8 = (v2 + 40);
    while (1)
    {
      if (!--v7)
      {

        goto LABEL_2;
      }

      v10 = *(v8 - 1);
      v9 = *v8;
      sub_23E1FB7BC();
      v11 = [v5 id];
      v12 = sub_23E1FDC1C();
      v14 = v13;

      if (v12 == v10 && v14 == v9)
      {
        break;
      }

      v8 += 2;
      v16 = sub_23E1FE75C();

      if (v16)
      {
        goto LABEL_16;
      }
    }

LABEL_16:
    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
  }

  v17 = v31;
  v18 = sub_23DE4D8B0();
  if (v18)
  {
    v19 = v18;
    v32 = MEMORY[0x277D84F90];
    sub_23DE640B4(0, v18 & ~(v18 >> 63), 0);
    if (v19 < 0)
    {
LABEL_31:
      __break(1u);
      return;
    }

    for (i = 0; i != v19; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x23EF04DD0](i, v17);
      }

      else
      {
        v21 = *(v17 + 8 * i + 32);
      }

      v22 = v21;
      v24 = *(v32 + 16);
      v23 = *(v32 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_23DE640B4(v23 > 1, v24 + 1, 1);
      }

      *(v32 + 16) = v24 + 1;
      *(v32 + 8 * v24 + 32) = v22;
    }
  }

  v25 = OUTLINED_FUNCTION_171_0();

  v26(v25);
}

uint64_t sub_23DEDFE94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D3D8, &qword_23E229098);
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DEDFF5C, 0, 0);
}

uint64_t sub_23DEDFF5C()
{
  OUTLINED_FUNCTION_23();
  v0[9] = [objc_allocWithZone(MEMORY[0x277D23B78]) initWithOptions_];
  v0[10] = sub_23E1FDECC();
  v0[11] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v1 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE0008()
{
  OUTLINED_FUNCTION_23();

  objc_allocWithZone(sub_23E1FC76C());
  *(v0 + 96) = sub_23E1FC75C();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE0094()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 104) = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v1 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE0114()
{

  sub_23E1FC74C();
  *(v0 + 112) = 0;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE01B8()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 120) = sub_23E1FDEBC();
  sub_23E1FDE6C();
  v1 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE0238()
{
  OUTLINED_FUNCTION_23();

  *(v0 + 128) = sub_23E1FC73C();
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23DEE02A4()
{
  v1 = *(v0 + 128);
  v36 = *(v1 + 16);
  if (!v36)
  {

    v6 = MEMORY[0x277D84F90];
LABEL_35:

    v30 = *(v0 + 8);

    return v30(v6);
  }

  v2 = 0;
  v3 = (v0 + 16);
  v4 = *(v0 + 56);
  v5 = *(v4 + 16);
  v4 += 16;
  v34 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v35 = v5;
  v32 = (v4 - 8);
  v33 = *(v4 + 56);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v35(v7, v34 + v2 * v33, v8);
    v9 = sub_23E1FC70C();
    (*v32)(v7, v8);
    v10 = v9 >> 62 ? sub_23E1FE6AC() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6 >> 62;
    result = v6 >> 62 ? sub_23E1FE6AC() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v10;
    if (__OFADD__(result, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v11)
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v15 >= v13)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_13:
      sub_23E1FE6AC();
      goto LABEL_14;
    }

    if (v11)
    {
      goto LABEL_13;
    }

LABEL_14:
    result = sub_23E1FE5FC();
    v6 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_15:
    v38 = v6;
    v39 = v10;
    v37 = v2;
    v16 = *(v14 + 16);
    v17 = v15 - v16;
    v18 = v14 + 8 * v16;
    if (v9 >> 62)
    {
      v20 = sub_23E1FE6AC();
      if (v20)
      {
        v21 = v20;
        result = sub_23E1FE6AC();
        if (v17 < result)
        {
          goto LABEL_41;
        }

        if (v21 < 1)
        {
          goto LABEL_43;
        }

        v19 = result;
        v22 = v18 + 32;
        sub_23DE66434(&qword_27E32D3F0, &qword_27E32D3E8, &unk_23E2290A0, MEMORY[0x277D83988]);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D3E8, &unk_23E2290A0);
          v24 = sub_23DE5890C(v3, i, v9);
          v26 = *v25;
          (v24)(v3, 0);
          *(v22 + 8 * i) = v26;
        }

        v0 = v31;
        goto LABEL_25;
      }
    }

    else
    {
      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        if (v17 < v19)
        {
          goto LABEL_42;
        }

        sub_23DEE17E4();
        swift_arrayInitWithCopy();
LABEL_25:

        if (v19 < v39)
        {
          goto LABEL_39;
        }

        if (v19 > 0)
        {
          v27 = *(v14 + 16);
          v28 = __OFADD__(v27, v19);
          v29 = v27 + v19;
          if (v28)
          {
            goto LABEL_40;
          }

          *(v14 + 16) = v29;
        }

        goto LABEL_30;
      }
    }

    if (v39 > 0)
    {
      goto LABEL_39;
    }

LABEL_30:
    v2 = v37 + 1;
    v6 = v38;
    if (v37 + 1 == v36)
    {

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_23DEE066C()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppShortcutEntity.AppShortcutQuery.entities(matching:)()
{
  OUTLINED_FUNCTION_23();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_23DEE0764;

  return sub_23DEDFE94();
}

uint64_t sub_23DEE0764()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23DEE0868()
{
  v1 = v0[5];
  v27 = MEMORY[0x277D84F90];
  v2 = sub_23DE4D8B0();
  v3 = 0;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xC000000000000001;
  v4 = v1 + 32;
  while (v2 != v3)
  {
    if (v26)
    {
      v5 = MEMORY[0x23EF04DD0](v3, v0[5]);
    }

    else
    {
      if (v3 >= *(v25 + 16))
      {
        goto LABEL_30;
      }

      v5 = *(v4 + 8 * v3);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v8 = v0[2];
    v7 = v0[3];
    v9 = [v5 shortTitle];
    v10 = sub_23E1FDC1C();
    v12 = v11;

    if (v10 == v8 && v12 == v7)
    {
    }

    else
    {
      v14 = sub_23E1FE75C();

      if ((v14 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    sub_23E1FE61C();
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
LABEL_15:
    ++v3;
  }

  v15 = v27;
  v16 = sub_23DE4D8B0();
  if (v16)
  {
    v17 = v16;
    v28 = MEMORY[0x277D84F90];
    sub_23DE640B4(0, v16 & ~(v16 >> 63), 0);
    if (v17 < 0)
    {
      goto LABEL_31;
    }

    for (i = 0; i != v17; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EF04DD0](i, v15);
      }

      else
      {
        v19 = *(v15 + 8 * i + 32);
      }

      v20 = v19;
      v22 = *(v28 + 16);
      v21 = *(v28 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23DE640B4(v21 > 1, v22 + 1, 1);
      }

      *(v28 + 16) = v22 + 1;
      *(v28 + 8 * v22 + 32) = v20;
    }
  }

  v23 = OUTLINED_FUNCTION_171_0();

  v24(v23);
}

uint64_t AppShortcutEntity.AppShortcutQuery.suggestedEntities()()
{
  OUTLINED_FUNCTION_23();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DEE0B84;

  return sub_23DEDFE94();
}

uint64_t sub_23DEE0B84()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_23DEE0C88()
{
  v1 = sub_23DE4D8B0();
  if (v1)
  {
    v2 = v1;
    v13 = MEMORY[0x277D84F90];
    sub_23DE640B4(0, v1 & ~(v1 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = *(v0 + 24);
    v5 = v4 & 0xC000000000000001;
    v6 = v4 + 32;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x23EF04DD0](v3, *(v0 + 24));
      }

      else
      {
        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_23DE640B4(v9 > 1, v10 + 1, 1);
      }

      ++v3;
      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8;
    }

    while (v2 != v3);
  }

  v11 = OUTLINED_FUNCTION_171_0();

  v12(v11);
}

uint64_t sub_23DEE0DEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEE0E8C;

  return AppShortcutEntity.AppShortcutQuery.entities(matching:)();
}

uint64_t sub_23DEE0E8C(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_23DEE0F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return AppShortcutEntity.AppShortcutQuery.entities(for:)();
}

uint64_t sub_23DEE1020(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEE182C;

  return AppShortcutEntity.AppShortcutQuery.suggestedEntities()();
}

uint64_t sub_23DEE10B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_23DEE14B8();
  *v5 = v2;
  v5[1] = sub_23DE933A0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_23DEE1164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23DEE1828;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DEE123C@<X0>(uint64_t *a1@<X8>)
{
  result = AppShortcutEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEE1268(uint64_t a1)
{
  v2 = sub_23DEE15C0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DEE12B8(uint64_t a1)
{
  v2 = sub_23DE33EEC();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DEE1304(void *a1)
{
  v2 = [a1 imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FBFDC();

  return v3;
}

uint64_t sub_23DEE1374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DEE13E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DEE144C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_23E1FDC1C();

  return v4;
}

unint64_t sub_23DEE14B8()
{
  result = qword_27E32D3A8;
  if (!qword_27E32D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3A8);
  }

  return result;
}

unint64_t sub_23DEE1510()
{
  result = qword_280DAE9A8;
  if (!qword_280DAE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9A8);
  }

  return result;
}

unint64_t sub_23DEE1568()
{
  result = qword_280DAE9A0;
  if (!qword_280DAE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9A0);
  }

  return result;
}

unint64_t sub_23DEE15C0()
{
  result = qword_27E32D3B0;
  if (!qword_27E32D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3B0);
  }

  return result;
}

unint64_t sub_23DEE1618()
{
  result = qword_280DAE9B0;
  if (!qword_280DAE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE9B0);
  }

  return result;
}

unint64_t sub_23DEE1670()
{
  result = qword_27E32D3B8;
  if (!qword_27E32D3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D3C0, qword_23E228D60);
    sub_23DE33E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutEntity.AppShortcutQuery(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_23DEE17E4()
{
  result = qword_27E32D3E0;
  if (!qword_27E32D3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32D3E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_23E1FDB8C();
}

uint64_t sub_23DEE18EC()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
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

id sub_23DEE19A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v17 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v18 = sub_23E1FDA9C();
  }

  else
  {
    v18 = 0;
  }

  v21.receiver = v9;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_initWithIdentifier_definition_serializedParameters_schema_intent_resolvedIntentDescriptor_stringLocalizer_, v17, a3, v18, a5, a6, a7, a8);

  if (v19)
  {
  }

  return v19;
}

uint64_t sub_23DEE1BE0()
{
  v0 = sub_23E1FBEEC();
  __swift_allocate_value_buffer(v0, qword_280DB7710);
  v1 = __swift_project_value_buffer(v0, qword_280DB7710);
  *v1 = type metadata accessor for _ActionKitBundleClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

unint64_t sub_23DEE1CB4()
{
  result = qword_280DAF278;
  if (!qword_280DAF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF278);
  }

  return result;
}

unint64_t sub_23DEE1D0C()
{
  result = qword_280DAF288;
  if (!qword_280DAF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF288);
  }

  return result;
}

uint64_t sub_23DEE1D98()
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
  OUTLINED_FUNCTION_7_4();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v2 + 104))(v6, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

uint64_t sub_23DEE1F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  v3 = sub_23E1FBEEC();
  OUTLINED_FUNCTION_6_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v7 = sub_23E1FC1DC();
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FDBCC();
  v10 = OUTLINED_FUNCTION_25(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v11 = sub_23E1FBF0C();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v5 + 104))(v0, *MEMORY[0x277CC9110], v3);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  sub_23E1FB69C();
  v15 = sub_23E1FB67C();
  return OUTLINED_FUNCTION_9_0(v15);
}

uint64_t sub_23DEE2154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D430, &qword_23E2293C8);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D438, &qword_23E2293D0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v2);
  sub_23DEE3820();
  sub_23E1FB81C();
  OUTLINED_FUNCTION_5();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D440, &qword_23E229400);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D448, &unk_23E229408);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FB7DC();
}

uint64_t sub_23DEE2334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
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

uint64_t sub_23DEE2524(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_23DE99F40(__src, &v3);
  sub_23E1FB5EC();
  return sub_23DEDA498(__src);
}

uint64_t sub_23DEE257C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return OUTLINED_FUNCTION_12_3();
}

void sub_23DEE2594(uint64_t a1)
{
  sub_23E1FB5DC();
  sub_23DED4C08(v1 + 2);
  v3 = v2;
  sub_23DEDA498((v1 + 2));
  if (v3)
  {
    v4 = [v3 availableRATModes];
    sub_23DEE37DC();
    v5 = sub_23E1FDDEC();

    v6 = sub_23DE4D8B0();
    for (i = 0; ; ++i)
    {
      if (v6 == i)
      {

        sub_23DE99EEC();
        swift_allocError();
        *v18 = 2;
        swift_willThrow();

        goto LABEL_17;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EF04DD0](i, v5);
      }

      else
      {
        if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = v3;
      v11 = [v3 labelForRATMode_];
      v12 = sub_23E1FDC1C();
      v14 = v13;

      sub_23E1FB5DC();
      if (v12 == v1[11] && v14 == v1[12])
      {

LABEL_19:

        [v10 setCurrentRATMode_];
        sub_23E1FB54C();

        OUTLINED_FUNCTION_19();
        goto LABEL_20;
      }

      v16 = sub_23E1FE75C();

      if (v16)
      {
        goto LABEL_19;
      }

      v3 = v10;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    sub_23DE99EEC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
LABEL_17:
    OUTLINED_FUNCTION_19();
LABEL_20:

    v19();
  }
}

uint64_t sub_23DEE283C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D410, &qword_23E229378);
  OUTLINED_FUNCTION_25(v0);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v1);
  v55 = &v45 - v2;
  sub_23E1FB84C();
  OUTLINED_FUNCTION_6_0();
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v54 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v8 = OUTLINED_FUNCTION_25(v7);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v10);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v11);
  v47 = sub_23E1FBEEC();
  v12 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  v16 = sub_23E1FC1DC();
  v17 = OUTLINED_FUNCTION_25(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  v18 = sub_23E1FDBCC();
  v19 = OUTLINED_FUNCTION_25(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v20 = sub_23E1FBF0C();
  v49 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D418, &qword_23E229380);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  HIDWORD(v45) = *MEMORY[0x277CC9110];
  v21 = *(v12 + 104);
  v46 = v12 + 104;
  v48 = v21;
  v21(v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
  v25 = sub_23E1FB51C();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
  v51 = *MEMORY[0x277CBA308];
  v32 = *(v57 + 104);
  v57 += 104;
  v52 = v32;
  v33 = v54;
  v32(v54);
  sub_23DE99E98();
  v53 = sub_23E1FB61C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D420, &qword_23E229388);
  OUTLINED_FUNCTION_5();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v48(v15, HIDWORD(v45), v47);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v49);
  sub_23E1FDB3C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D428, &qword_23E229390);
  swift_getKeyPath();
  *&v58 = sub_23E1FB8CC();
  v52(v33, v51, v56);
  sub_23DEE3874();
  sub_23E1FB63C();
  return v53;
}

uint64_t sub_23DEE2DCC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23DE47040;

  return sub_23DEE257C(a1, v5, v4);
}

uint64_t sub_23DEE2E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DEE283C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DEE2EA4(uint64_t a1)
{
  v2 = sub_23DEE3820();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_23DEE2EE4()
{
  result = qword_280DAE480;
  if (!qword_280DAE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE480);
  }

  return result;
}

unint64_t sub_23DEE2F40()
{
  result = qword_27E32D3F8;
  if (!qword_27E32D3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32BA60, &unk_23E222770);
    sub_23DE712E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D3F8);
  }

  return result;
}

uint64_t sub_23DEE3008(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_23DE99F40(__dst, &v2);
  return sub_23DEE2524(__dst);
}

void sub_23DEE3070()
{
  if (sub_23E1FB8BC() && (swift_getKeyPath(), sub_23DED6494(), sub_23E1FB65C(), , memcpy(v0 + 2, v0 + 11, 0x48uLL), sub_23DED4C08(v0 + 2), v2 = v1, , sub_23DEDA498((v0 + 2)), v2))
  {
    v3 = [v2 availableRATModes];
    sub_23DEE37DC();
    v4 = sub_23E1FDDEC();

    v5 = sub_23DE4D8B0();
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 == v6)
      {

        goto LABEL_17;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EF04DD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v2 labelForRATMode_];
      v12 = sub_23E1FDC1C();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DE4CB98();
        v7 = v17;
      }

      v15 = *(v7 + 16);
      if (v15 >= *(v7 + 24) >> 1)
      {
        sub_23DE4CB98();
        v7 = v18;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      ++v6;
      v2 = v10;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_17:
    v19 = v0[1];

    v19(v7);
  }
}

uint64_t sub_23DEE32E4()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_23DEE3374;

  return sub_23DEE305C(v2);
}

uint64_t sub_23DEE3374()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  *(v2 + 24) = v1;
  *(v2 + 32) = v0;

  if (v0)
  {
    v3 = sub_23DEE351C;
  }

  else
  {
    v3 = sub_23DEE3480;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23DEE3480()
{
  v1 = *(v0 + 24);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    sub_23E1FB7BC();
  }

  else
  {

    v3 = 0;
    v2 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_23DEE351C()
{
  OUTLINED_FUNCTION_23();

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t sub_23DEE3580(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23DE4BE7C;

  return sub_23DEE305C(v3);
}

uint64_t sub_23DEE3618(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DEE36B0;

  return sub_23DEE32E4();
}

uint64_t sub_23DEE36B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  *v6 = a1;
  v6[1] = a2;
  OUTLINED_FUNCTION_19();

  return v9();
}

unint64_t sub_23DEE37DC()
{
  result = qword_27E32C7C0;
  if (!qword_27E32C7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E32C7C0);
  }

  return result;
}

unint64_t sub_23DEE3820()
{
  result = qword_280DAF280;
  if (!qword_280DAF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF280);
  }

  return result;
}

unint64_t sub_23DEE3874()
{
  result = qword_280DAE488;
  if (!qword_280DAE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE488);
  }

  return result;
}

id sub_23DEE38FC()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v100 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E2561B0;
  v7 = *MEMORY[0x277D7CC18];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v99 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_23E222340;
  v9 = *MEMORY[0x277D7CC30];
  *(v8 + 32) = *MEMORY[0x277D7CC30];
  v10 = v5;
  v11 = v7;
  v12 = v9;
  v13 = sub_23E1FDCBC("Gets the names of emoji passed into the action.", 47);
  v15 = v14;
  sub_23E1FDCBC("Gets the names of emoji passed into the action.", 47);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v103 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  v102 = v2;
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v13, v15);
  v19 = v18;
  v101 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  *(v8 + 64) = v101;
  *(v8 + 40) = v19;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v20 = sub_23E1FDABC();
  v21 = v99;
  *(inited + 80) = sub_23DF3BE54(v20);
  v22 = *MEMORY[0x277D7CB50];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  *(inited + 120) = 0x79656C696D53;
  *(inited + 128) = 0xE600000000000000;
  v23 = *MEMORY[0x277D7CCC0];
  v24 = MEMORY[0x277D837D0];
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 152) = v23;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_23E222380;
  strcpy((v26 + 32), "ParameterKey");
  *(v26 + 45) = 0;
  *(v26 + 46) = -5120;
  *(v26 + 48) = 0x7475706E494657;
  *(v26 + 56) = 0xE700000000000000;
  *(v26 + 72) = v25;
  *(v26 + 80) = 0x6465726975716552;
  *(v26 + 88) = 0xE800000000000000;
  v27 = MEMORY[0x277D839B0];
  *(v26 + 96) = 1;
  *(v26 + 120) = v27;
  *(v26 + 128) = 0x7365707954;
  *(v26 + 136) = 0xE500000000000000;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v26 + 168) = v99;
  *(v26 + 144) = &unk_285024B80;
  v28 = v22;
  v29 = v23;
  v30 = sub_23E1FDABC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v98 = v31;
  *(inited + 160) = v30;
  v32 = *MEMORY[0x277D7CCC8];
  *(inited + 184) = v31;
  *(inited + 192) = v32;
  *(inited + 200) = 0;
  v33 = *MEMORY[0x277D7CB90];
  *(inited + 224) = v27;
  *(inited + 232) = v33;
  v34 = v32;
  v35 = v33;
  v36 = sub_23E1FDCBC("Get Name of Emoji (Action Name)", 31);
  v38 = v37;
  sub_23E1FDCBC("Get Name of Emoji", 17);
  sub_23E1FC14C();
  v39 = [v103 bundleURL];
  sub_23E1FBF9C();

  v40 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v36, v38);
  *(inited + 240) = v41;
  v42 = *MEMORY[0x277D7CDD0];
  v43 = v101;
  *(inited + 264) = v101;
  *(inited + 272) = v42;
  v44 = swift_initStackObject();
  v97 = xmmword_23E222350;
  *(v44 + 16) = xmmword_23E222350;
  *(v44 + 32) = 0x75736F6C63736944;
  *(v44 + 40) = 0xEF6C6576654C6572;
  *(v44 + 48) = 0x63696C627550;
  *(v44 + 56) = 0xE600000000000000;
  *(v44 + 72) = MEMORY[0x277D837D0];
  *(v44 + 80) = 0x656C7069746C754DLL;
  *(v44 + 88) = 0xE800000000000000;
  *(v44 + 96) = 1;
  *(v44 + 120) = MEMORY[0x277D839B0];
  *(v44 + 128) = 0x614E74757074754FLL;
  *(v44 + 136) = 0xEA0000000000656DLL;
  v45 = v42;
  v96 = sub_23E1FDCBC("Name of Emoji (Default Output Name)", 35);
  v47 = v46;
  sub_23E1FDCBC("Name of Emoji", 13);
  sub_23E1FC14C();
  v48 = [v103 bundleURL];
  sub_23E1FBF9C();

  v49 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v96, v47);
  *(v44 + 144) = v50;
  *(v44 + 168) = v43;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 216) = v99;
  *(v44 + 184) = 0xE500000000000000;
  *(v44 + 192) = &unk_285024BB0;
  v51 = MEMORY[0x277D837D0];
  *(inited + 280) = sub_23E1FDABC();
  v52 = *MEMORY[0x277D7CBA0];
  *(inited + 304) = v98;
  *(inited + 312) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_23E2235B0;
  v98 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v53 = swift_allocObject();
  *(v53 + 16) = v97;
  v54 = *MEMORY[0x277D7CDF8];
  *(v53 + 32) = *MEMORY[0x277D7CDF8];
  *(v53 + 40) = 0xD000000000000014;
  *(v53 + 48) = 0x800000023E24EAF0;
  v55 = *MEMORY[0x277D7CE70];
  *(v53 + 64) = v51;
  *(v53 + 72) = v55;
  *(v53 + 80) = 0x7475706E494657;
  *(v53 + 88) = 0xE700000000000000;
  v56 = *MEMORY[0x277D7CE80];
  *(v53 + 104) = v51;
  *(v53 + 112) = v56;
  v57 = v52;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = sub_23E1FDCBC("Text (WFInput)", 14);
  *&v97 = v62;
  sub_23E1FDCBC("Text", 4);
  sub_23E1FC14C();
  v63 = v103;
  v64 = [v103 bundleURL];
  sub_23E1FBF9C();

  v65 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v61, v97);
  *(v53 + 120) = v66;
  v67 = *MEMORY[0x277D7CEA8];
  v68 = v101;
  *(v53 + 144) = v101;
  *(v53 + 152) = v67;
  v69 = v67;
  v70 = sub_23E1FDCBC("Text (WFInput)", 14);
  v96 = v71;
  *&v97 = v70;
  sub_23E1FDCBC("Text", 4);
  sub_23E1FC14C();
  v72 = [v63 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v97, v96);
  *(v53 + 184) = v68;
  *(v53 + 160) = v74;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v75 = sub_23E1FDABC();
  v76 = sub_23DF3BE9C(v75);
  v77 = v99;
  *(v99 + 32) = v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 320) = v77;
  v79 = *MEMORY[0x277D7CB98];
  *(inited + 344) = v78;
  *(inited + 352) = v79;
  v80 = v79;
  v81 = sub_23E1FDCBC("Get name of emoji in ${WFInput} (Parameter Summary)", 51);
  v83 = v82;
  sub_23E1FDCBC("Get name of emoji in ${WFInput}", 31);
  sub_23E1FC14C();
  v84 = [v103 bundleURL];
  sub_23E1FBF9C();

  v85 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v81, v83);
  v87 = v86;
  v88 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v89 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v90 = MEMORY[0x277D7CB78];
  *(inited + 360) = v88;
  v91 = *v90;
  *(inited + 384) = v89;
  *(inited + 392) = v91;
  *(inited + 424) = MEMORY[0x277D839B0];
  *(inited + 400) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v92 = v91;
  v93 = sub_23E1FDABC();
  return sub_23DF3BF9C(v93);
}

id sub_23DEE44E8()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E224420;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x800000023E24FAE0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v62 = sub_23E1FDCBC("display", 7);
  v11 = v10;
  sub_23E1FDCBC("display", 7);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v63 = qword_280DAE278;
  v12 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v13 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v59[1] = v3;
  sub_23DE477A0(v62, v11);
  v15 = v14;
  v16 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v62 = v16;
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v60 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_23E222340;
  v19 = *MEMORY[0x277D7CC30];
  *(v18 + 32) = *MEMORY[0x277D7CC30];
  v20 = v17;
  v21 = v19;
  v22 = sub_23E1FDCBC("Locks the screen of this device.", 32);
  v24 = v23;
  sub_23E1FDCBC("Locks the screen of this device.", 32);
  sub_23E1FC14C();
  v25 = [v63 bundleURL];
  sub_23E1FBF9C();

  v26 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v22, v24);
  *(v18 + 64) = v62;
  *(v18 + 40) = v27;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v28 = sub_23E1FDABC();
  v29 = v60;
  *(inited + 120) = sub_23DF3BE54(v28);
  v30 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v29;
  *(inited + 152) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_285024BE0;
  v32 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v31;
  *(inited + 192) = v32;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v33 = *MEMORY[0x277D7CB60];
  v34 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v33;
  *(inited + 240) = 0x6C69662E6B636F6CLL;
  *(inited + 248) = 0xE90000000000006CLL;
  v35 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v34;
  *(inited + 272) = v35;
  v36 = v30;
  v37 = v32;
  v38 = v33;
  v39 = v35;
  v40 = sub_23E1FDCBC("Lock Screen (Action Name)", 25);
  v42 = v41;
  sub_23E1FDCBC("Lock Screen", 11);
  sub_23E1FC14C();
  v43 = v63;
  v44 = [v63 bundleURL];
  sub_23E1FBF9C();

  v45 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v40, v42);
  *(inited + 280) = v46;
  v47 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v62;
  *(inited + 312) = v47;
  v48 = v47;
  v49 = sub_23E1FDCBC("Lock the screen (Parameter Summary)", 35);
  v51 = v50;
  sub_23E1FDCBC("Lock the screen", 15);
  sub_23E1FC14C();
  v52 = [v43 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v49, v51);
  v55 = v54;
  v56 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  *(inited + 344) = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v56;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v57 = sub_23E1FDABC();
  return sub_23DF3BF9C(v57);
}

uint64_t sub_23DEE4BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  v5 = OUTLINED_FUNCTION_31_5(v4, MEMORY[0x277D84950]);
  *v6 = a2;

  return MEMORY[0x282200958](a1, v5);
}

uint64_t sub_23DEE4C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_23DEE4C9C(char a1)
{
  switch(a1)
  {
    case 1:
      sub_23E1FDCBC("The announcement could not be sent because an internal error occurred.", 70);
      break;
    case 2:
      sub_23E1FDCBC("Please provide an input to the Intercom action.", 47);
      break;
    case 3:
      sub_23E1FDCBC("The announcement could not be sent because an invalid audio file was provided.", 78);
      break;
    default:
      sub_23E1FDCBC("Please provide a destination to the Intercom action.", 52);
      break;
  }

  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DAE278;
  v2 = sub_23E1FDBDC();
  v3 = sub_23E1FDBDC();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_23E1FDC1C();
  return v5;
}

uint64_t sub_23DEE4DD4(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v3;
  v4 = sub_23DEE4C9C(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  return sub_23E1FDABC();
}

uint64_t sub_23DEE4E74(uint64_t a1)
{
  v2 = sub_23DEEC7F4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23DEE4EB0(uint64_t a1)
{
  v2 = sub_23DEEC7F4();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_23DEE4F00()
{
  v1 = OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer;
  v2 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SpeechSynthesizerAsyncWrapper(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23DEE4F74()
{
  v1 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  v2 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce);
  }

  else
  {
    v4 = [objc_allocWithZone(WFAnnounceWrapper) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_23DEE5010(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = sub_23E1FD03C();
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v4 = sub_23E1FBFBC();
  v2[61] = v4;
  v2[62] = *(v4 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = sub_23E1FDECC();
  v2[67] = sub_23E1FDEBC();
  v6 = sub_23E1FDE6C();
  v2[68] = v6;
  v2[69] = v5;

  return MEMORY[0x2822009F8](sub_23DEE5198, v6, v5);
}

uint64_t sub_23DEE5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  if ([*(v10 + 432) numberOfItems] < 1)
  {

    sub_23E1FCB9C();
    v15 = sub_23E1FD02C();
    v16 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v16))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v22 = OUTLINED_FUNCTION_50();
    v23(v22);
    v24 = sub_23DEEC230();
    OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v24);
    *v25 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    v11 = [objc_opt_self() sharedManager];
    *(v10 + 560) = v11;
    *(v10 + 16) = v10;
    *(v10 + 24) = sub_23DEE53E4;
    v12 = swift_continuation_init();
    *(v10 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5B8, &qword_23E2294D8);
    *(v10 + 208) = MEMORY[0x277D85DD0];
    *(v10 + 216) = 1107296256;
    *(v10 + 224) = sub_23DEEF88C;
    *(v10 + 232) = &block_descriptor_36;
    *(v10 + 240) = v12;
    [v11 ensureHomesAreLoadedWithCompletionHandler_];
    OUTLINED_FUNCTION_171();

    return MEMORY[0x282200938](v13);
  }
}

uint64_t sub_23DEE53E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v1 = v0;
  v3 = *(v2 + 552);
  v4 = *(v2 + 544);

  return MEMORY[0x2822009F8](sub_23DEE54E0, v4, v3);
}

uint64_t sub_23DEE54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();

  sub_23DE38DA8(0, &qword_27E32D5C0, 0x277D7C4B0);
  OUTLINED_FUNCTION_50();
  v11 = sub_23E1FE3FC();
  *(v10 + 568) = v11;
  if (v11)
  {
    v12 = *(v10 + 432);
    v13 = sub_23DEE4F74();
    [v13 prewarmWithHandler_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5C8, &unk_23E2294E0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_23E222370;
    *(v14 + 32) = sub_23DE38DA8(0, &qword_27E32D5D0, 0x277CFC208);
    *(v14 + 40) = sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
    v15 = sub_23E1FDDCC();
    *(v10 + 576) = v15;

    *(v10 + 80) = v10;
    *(v10 + 120) = v10 + 400;
    *(v10 + 88) = sub_23DEE57F8;
    v16 = swift_continuation_init();
    *(v10 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5D8, &unk_23E2294F0);
    *(v10 + 272) = MEMORY[0x277D85DD0];
    *(v10 + 280) = 1107296256;
    *(v10 + 288) = sub_23DEE722C;
    *(v10 + 296) = &block_descriptor_39;
    *(v10 + 304) = v16;
    [v12 generateCollectionByCoercingToItemClasses:v15 completionHandler:v10 + 272];
    OUTLINED_FUNCTION_171();

    return MEMORY[0x282200938](v17);
  }

  else
  {

    sub_23E1FCB9C();
    v19 = sub_23E1FD02C();
    v20 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v20))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v26 = OUTLINED_FUNCTION_50();
    v27(v26);
    v28 = sub_23DEEC230();
    OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v28);
    *v29 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_7_9();

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_171();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_23DEE57F8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 584) = v4;
  v5 = v3[69];
  v6 = v3[68];
  if (v4)
  {
    v7 = sub_23DEE6DF4;
  }

  else
  {
    v7 = sub_23DEE591C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DEE591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  v21 = *(v16 + 576);
  v66 = *(v16 + 400);
  *(v16 + 592) = v66;

  v22 = MEMORY[0x277D84F90];
  *(v16 + 416) = MEMORY[0x277D84F90];
  v23 = [v66 items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  OUTLINED_FUNCTION_38();
  *(v16 + 608) = sub_23E1FDDEC();

  v24 = sub_23DE4D8B0();
  *(v16 + 616) = v24;
  if (v24)
  {
    v25 = 0;
    v19 = 0x277CFC000;
    v23 = &selRef_string;
    do
    {
      *(v16 + 632) = v22;
      *(v16 + 624) = v22;
      v26 = *(v16 + 608);
      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x23EF04DD0](v25);
      }

      else
      {
        if (v25 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v27 = *(v26 + 8 * v25 + 32);
      }

      v28 = v27;
      *(v16 + 640) = v27;
      *(v16 + 648) = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      objc_opt_self();
      v29 = OUTLINED_FUNCTION_120();
      if (v29)
      {
        v30 = v29;
        v18 = v28;
        v31 = sub_23DE5C91C(v30, &selRef_string);
        *(v16 + 656) = v32;
        if (v32)
        {
          v17 = v31;
          OUTLINED_FUNCTION_13_7();
          if (v33)
          {
            *(v16 + 664) = sub_23DEE4F00();
            v62 = swift_task_alloc();
            *(v16 + 672) = v62;
            *v62 = v16;
            OUTLINED_FUNCTION_4_13(v62);
            OUTLINED_FUNCTION_56_1();

            return sub_23DEEAD6C(v63, v64);
          }
        }
      }

      objc_opt_self();
      v34 = OUTLINED_FUNCTION_120();
      if (v34)
      {
        v47 = v34;
        v48 = sub_23E1FDEBC();
        v49 = OUTLINED_FUNCTION_34_3(v48);
        *(v16 + 704) = v49;
        *(v49 + 16) = v47;
        v50 = swift_task_alloc();
        *(v16 + 712) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
        OUTLINED_FUNCTION_26_3();
        *v50 = v51;
        OUTLINED_FUNCTION_5_10();
        OUTLINED_FUNCTION_3_9();
        OUTLINED_FUNCTION_56_1();

        return MEMORY[0x2822008A0](v52);
      }

      v25 = *(v16 + 648);
    }

    while (v25 != *(v16 + 616));
  }

  *(v16 + 728) = v22;

  v35 = sub_23DE4D8B0();
  *(v16 + 736) = v35;
  v36 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 752) = *MEMORY[0x277D7A440];
  if (v35)
  {
    v37 = *(v16 + 728) & 0xC000000000000001;
    sub_23DE59014();
    v26 = *(v16 + 728);
    if (v37)
    {
LABEL_32:
      v38 = MEMORY[0x23EF04DD0](0, v26);
    }

    else
    {
      v38 = *(v26 + 32);
    }

    v39 = [OUTLINED_FUNCTION_16_10(v38) fileURL];
    OUTLINED_FUNCTION_48_4(v39);

    v40 = swift_task_alloc();
    v41 = OUTLINED_FUNCTION_15_10(v40);
    *v41 = v42;
    OUTLINED_FUNCTION_1_17(v41);
    OUTLINED_FUNCTION_56_1();

    return sub_23DEE77CC(v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*(v17 + v36) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_1();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, v66, *(&v66 + 1), a13, a14, a15, a16);
  }
}

uint64_t sub_23DEE5CF4()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v6 = v5;
  *(v3 + 680) = v7;
  *(v3 + 688) = v0;

  v8 = *(v2 + 664);
  if (v0)
  {

    OUTLINED_FUNCTION_36_4();
    v11 = sub_23DEE6EB8;
  }

  else
  {

    OUTLINED_FUNCTION_36_4();
    v11 = sub_23DEE5E74;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_23DEE5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126();
  v20 = *(v16 + 680);
  if (v20)
  {
    v21 = v20;
    MEMORY[0x23EF045A0]();
    OUTLINED_FUNCTION_39_2();
    if (v22)
    {
LABEL_36:
      OUTLINED_FUNCTION_33_4();
    }

    OUTLINED_FUNCTION_46_3();

    v23 = *(v16 + 416);
    v24 = v23;
  }

  else
  {

    v24 = *(v16 + 632);
    v23 = *(v16 + 624);
  }

  v21 = &selRef_string;
  while (1)
  {
    v17 = *(v16 + 648);
    if (v17 == *(v16 + 616))
    {
      break;
    }

    *(v16 + 632) = v24;
    *(v16 + 624) = v23;
    v25 = *(v16 + 608);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23EF04DD0](v17);
    }

    else
    {
      if (v17 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v26 = *(v25 + 8 * v17 + 32);
    }

    v27 = v26;
    *(v16 + 640) = v26;
    *(v16 + 648) = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    objc_opt_self();
    v28 = OUTLINED_FUNCTION_120();
    if (v28)
    {
      v29 = v28;
      v19 = v27;
      v30 = sub_23DE5C91C(v29, &selRef_string);
      *(v16 + 656) = v31;
      if (v31)
      {
        v18 = v30;
        OUTLINED_FUNCTION_13_7();
        if (v32)
        {
          *(v16 + 664) = sub_23DEE4F00();
          v54 = swift_task_alloc();
          *(v16 + 672) = v54;
          *v54 = v16;
          OUTLINED_FUNCTION_4_13(v54);
          OUTLINED_FUNCTION_72_0();

          return sub_23DEEAD6C(v55, v56);
        }
      }
    }

    objc_opt_self();
    v33 = OUTLINED_FUNCTION_120();
    if (v33)
    {
      v47 = v33;
      v48 = sub_23E1FDEBC();
      v49 = OUTLINED_FUNCTION_34_3(v48);
      *(v16 + 704) = v49;
      *(v49 + 16) = v47;
      v50 = swift_task_alloc();
      *(v16 + 712) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
      OUTLINED_FUNCTION_26_3();
      *v50 = v51;
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_3_9();
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2822008A0](v52);
    }
  }

  *(v16 + 728) = v24;

  v34 = sub_23DE4D8B0();
  *(v16 + 736) = v34;
  v35 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v16 + 752) = *MEMORY[0x277D7A440];
  if (v34)
  {
    v36 = *(v16 + 728) & 0xC000000000000001;
    sub_23DE59014();
    v37 = *(v16 + 728);
    if (v36)
    {
      v38 = MEMORY[0x23EF04DD0](0, v37);
    }

    else
    {
      v38 = *(v37 + 32);
    }

    v39 = [OUTLINED_FUNCTION_16_10(v38) fileURL];
    OUTLINED_FUNCTION_48_4(v39);

    v40 = swift_task_alloc();
    v41 = OUTLINED_FUNCTION_15_10(v40);
    *v41 = v42;
    OUTLINED_FUNCTION_1_17(v41);
    OUTLINED_FUNCTION_72_0();

    return sub_23DEE77CC(v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*(v18 + v35) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEE6220()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 720) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_36_4();
    v6 = sub_23DEE6F7C;
  }

  else
  {

    OUTLINED_FUNCTION_36_4();
    v6 = sub_23DEE6390;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_23DEE6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126();
  v22 = *(v17 + 424);
  if (v22)
  {
    v16 = v22;
    MEMORY[0x23EF045A0]();
    OUTLINED_FUNCTION_39_2();
    if (v23)
    {
      goto LABEL_35;
    }

    goto LABEL_3;
  }

  v24 = *(v17 + 632);
  v25 = *(v17 + 624);
  while (1)
  {
    v26 = *(v17 + 648);
    if (v26 == *(v17 + 616))
    {
      break;
    }

    *(v17 + 632) = v24;
    *(v17 + 624) = v25;
    v27 = *(v17 + 608);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23EF04DD0](v26);
    }

    else
    {
      if (v26 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v28 = *(v27 + 8 * v26 + 32);
    }

    v16 = v28;
    *(v17 + 640) = v28;
    *(v17 + 648) = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_33_4();
LABEL_3:
      OUTLINED_FUNCTION_46_3();

      v24 = *(v17 + 416);
      v25 = v24;
      continue;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v19 = v16;
      v31 = sub_23DE5C91C(v30, &selRef_string);
      *(v17 + 656) = v32;
      if (v32)
      {
        v18 = v31;
        OUTLINED_FUNCTION_13_7();
        if (v33)
        {
          *(v17 + 664) = sub_23DEE4F00();
          v55 = swift_task_alloc();
          *(v17 + 672) = v55;
          *v55 = v17;
          OUTLINED_FUNCTION_4_13(v55);
          OUTLINED_FUNCTION_72_0();

          return sub_23DEEAD6C(v56, v57);
        }
      }
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v48 = v34;
      v49 = sub_23E1FDEBC();
      v50 = OUTLINED_FUNCTION_34_3(v49);
      *(v17 + 704) = v50;
      *(v50 + 16) = v48;
      v51 = swift_task_alloc();
      *(v17 + 712) = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
      OUTLINED_FUNCTION_26_3();
      *v51 = v52;
      OUTLINED_FUNCTION_5_10();
      OUTLINED_FUNCTION_3_9();
      OUTLINED_FUNCTION_72_0();

      return MEMORY[0x2822008A0](v53);
    }
  }

  *(v17 + 728) = v24;

  v35 = sub_23DE4D8B0();
  *(v17 + 736) = v35;
  v36 = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v17 + 744) = OBJC_IVAR___WFIntercomAction____lazy_storage___announce;
  *(v17 + 752) = *MEMORY[0x277D7A440];
  if (v35)
  {
    v37 = *(v17 + 728) & 0xC000000000000001;
    sub_23DE59014();
    v38 = *(v17 + 728);
    if (v37)
    {
      v39 = MEMORY[0x23EF04DD0](0, v38);
    }

    else
    {
      v39 = *(v38 + 32);
    }

    v40 = [OUTLINED_FUNCTION_16_10(v39) fileURL];
    OUTLINED_FUNCTION_48_4(v40);

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_15_10(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_1_17(v42);
    OUTLINED_FUNCTION_72_0();

    return sub_23DEE77CC(v44, v45);
  }

  else
  {
    OUTLINED_FUNCTION_2_16();

    [*&v19[v36] invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_23DEE6740()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[98] = v0;

  if (v0)
  {
    (*(v3[62] + 8))(v3[64], v3[61]);

    v7 = v3[69];
    v8 = v3[68];
    v9 = sub_23DEE703C;
  }

  else
  {
    v10 = v3[64];
    v11 = v3[61];
    v12 = v3[62];
    v13 = *(v12 + 8);
    v3[99] = v13;
    v3[100] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    v7 = v3[69];
    v8 = v3[68];
    v9 = sub_23DEE6894;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DEE6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_127();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[65];
  v29 = v24[62];
  v28 = v24[63];
  v30 = v24[61];
  sub_23E1FCB9C();
  (*(v29 + 16))(v28, v27, v30);
  v31 = sub_23E1FD02C();
  v32 = sub_23E1FE19C();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v24[99];
  v35 = v24[60];
  v37 = v24[56];
  v36 = v24[57];
  if (v33)
  {
    v56 = v24[56];
    v38 = swift_slowAlloc();
    v54 = v32;
    v39 = swift_slowAlloc();
    a13 = v39;
    *v38 = 136315138;
    v40 = sub_23E1FBF3C();
    v55 = v35;
    v42 = v41;
    v43 = OUTLINED_FUNCTION_158_0();
    v34(v43);
    v44 = sub_23DE56B40(v40, v42, &a13);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_23DE30000, v31, v54, "Making Intercom announcement with file at URL: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();

    (*(v36 + 8))(v55, v56);
  }

  else
  {

    v45 = OUTLINED_FUNCTION_158_0();
    v34(v45);
    (*(v36 + 8))(v35, v37);
  }

  v46 = v24[71];
  v47 = *(v24[55] + v24[93]);
  v24[101] = v47;
  v48 = v47;
  v49 = sub_23E1FBF6C();
  v24[102] = v49;
  v24[18] = v24;
  v24[19] = sub_23DEE6B28;
  v50 = swift_continuation_init();
  v24[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D080, &qword_23E227C60);
  v24[42] = MEMORY[0x277D85DD0];
  v24[43] = 1107296256;
  v24[44] = sub_23DEE74E8;
  v24[45] = &block_descriptor_43;
  v24[46] = v50;
  [v48 requestAnnouncementWithAudioFileURL:v49 homeAreaDescriptor:v46 completionHandler:v24 + 42];
  OUTLINED_FUNCTION_56_1();

  return MEMORY[0x282200938](v51);
}

uint64_t sub_23DEE6B28()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 176);
  v2[103] = v5;
  if (v5)
  {

    v6 = v2[69];
    v7 = v2[68];
    v8 = sub_23DEE7110;
  }

  else
  {
    v6 = v2[69];
    v7 = v2[68];
    v8 = sub_23DEE6C3C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

id sub_23DEE6C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126();
  v19 = *(v16 + 816);
  v20 = *(v16 + 808);
  v21 = *(v16 + 800);
  v22 = *(v16 + 792);
  v23 = *(v16 + 520);
  v24 = *(v16 + 488);

  v22(v23, v24);
  v25 = *(v16 + 768);
  if (v25 == *(v16 + 736))
  {
    v26 = *(v16 + 744);
    OUTLINED_FUNCTION_2_16();

    [*(v21 + v26) invalidate];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_72_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v36 = (*(v16 + 728) & 0xC000000000000001);
    sub_23DE59014();
    v37 = *(v16 + 728);
    if (v36)
    {
      result = MEMORY[0x23EF04DD0](v25, v37);
    }

    else
    {
      result = *(v37 + 8 * v25 + 32);
    }

    *(v16 + 760) = result;
    *(v16 + 768) = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_48_4([result fileURL]);

      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_15_10(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_1_17(v39);
      OUTLINED_FUNCTION_72_0();

      return sub_23DEE77CC(v41, v42);
    }
  }

  return result;
}

uint64_t sub_23DEE6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  v11 = v10[72];
  v12 = v10[71];
  v13 = v10[55];

  swift_willThrow();

  [*(v13 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];
  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_171();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_23DEE6EB8()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_27_6();

  [*(v3 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];

  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEE6F7C()
{
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_27_6();

  [*(v3 + OBJC_IVAR___WFIntercomAction____lazy_storage___announce) invalidate];

  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEE703C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 600);
  v4 = *(v0 + 568);
  v5 = *(v0 + 440);

  [*(v5 + v2) invalidate];

  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_23DEE7110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_127();
  v33 = v16[101];
  v17 = v16[99];
  v18 = v16[95];
  v34 = v16[93];
  v35 = v16[102];
  v19 = v16[75];
  v20 = v16[74];
  v36 = v16[71];
  v21 = v16[65];
  v22 = v16[61];
  v23 = v16[55];

  swift_willThrow();

  v17(v21, v22);
  [*(v23 + v34) invalidate];

  OUTLINED_FUNCTION_7_9();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_56_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, a13, a14, a15, a16);
}

uint64_t *sub_23DEE722C(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_23DEE4BA0(v8, a4);
  }

  if (a2)
  {
    if (a3)
    {
      return sub_23DEE4C2C(v8, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23DEE72B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_23DEEC634;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEBE4C4;
  aBlock[3] = &block_descriptor_52;
  v10 = _Block_copy(aBlock);

  [a2 getFileRepresentation:v10 forType:0];
  _Block_release(v10);
}

uint64_t sub_23DEE7464(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
    return sub_23E1FDE7C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
    return sub_23E1FDE8C();
  }
}

uint64_t sub_23DEE74E8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_23DEE4BA0(*v3, a2);
  }

  v5 = *v3;

  return j__swift_continuation_throwingResume(v5);
}

uint64_t sub_23DEE75D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DEE7670, v5, v4);
}

uint64_t sub_23DEE7670()
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
  v6[1] = sub_23DE520D4;
  v7 = v0[2];

  return sub_23DEE5010(v7);
}

void sub_23DEE7734()
{
  v0 = [objc_opt_self() sharedAnnouncementsDirectoryURL];
  if (v0)
  {
    v1 = v0;
    sub_23E1FBF9C();
  }

  else
  {
    sub_23DEEC230();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }
}

uint64_t sub_23DEE77CC(uint64_t a1, uint64_t a2)
{
  v3[80] = v2;
  v3[79] = a2;
  v3[78] = a1;
  v4 = sub_23E1FE23C();
  v3[81] = v4;
  v3[82] = *(v4 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = sub_23E1FE22C();
  v3[85] = swift_task_alloc();
  sub_23E1FDA6C();
  v3[86] = swift_task_alloc();
  v5 = sub_23E1FC0EC();
  v3[87] = v5;
  v3[88] = *(v5 - 8);
  v3[89] = swift_task_alloc();
  v6 = sub_23E1FD03C();
  v3[90] = v6;
  v3[91] = *(v6 - 8);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v7 = sub_23E1FBFBC();
  v3[96] = v7;
  v3[97] = *(v7 - 8);
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = sub_23E1FDECC();
  v3[105] = sub_23E1FDEBC();
  v8 = sub_23E1FDE6C();
  v3[106] = v8;
  v3[107] = v9;

  return MEMORY[0x2822009F8](sub_23DEE7AD4, v8, v9);
}

uint64_t sub_23DEE7AD4()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[103];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[79];
  sub_23DE38DA8(0, &qword_27E32D528, 0x277CE63D8);
  v5 = *(v2 + 16);
  v0[108] = v5;
  v0[109] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v0[110] = sub_23DEE9FB0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D530, &qword_23E229488);
  v0[111] = sub_23E1FCA1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D538, &qword_23E229490);
  v0[112] = sub_23E1FCA2C();
  v0[113] = sub_23E1FDEBC();
  v6 = swift_task_alloc();
  v0[114] = v6;
  *v6 = v0;
  v6[1] = sub_23DEE7C98;
  OUTLINED_FUNCTION_171();

  return MEMORY[0x2821FAF08]();
}

uint64_t sub_23DEE7C98()
{
  OUTLINED_FUNCTION_45_3();
  OUTLINED_FUNCTION_142_0();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 920) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DEE7E48()
{
  if ((*(v0 + 1288) & 1) == 0)
  {
    v26 = *(v0 + 880);

    sub_23E1FCB9C();
    v27 = v26;
    v28 = sub_23E1FD02C();
    LOBYTE(v26) = sub_23E1FE1BC();

    if (os_log_type_enabled(v28, v26))
    {
      v29 = *(v0 + 880);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_23DEEC284(v31, &unk_27E32C190, &qword_23E224B70);
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_16_1();
    }

    v38 = *(v0 + 880);

    v39 = OUTLINED_FUNCTION_50();
    v40(v39);
    v41 = sub_23DEEC230();
    OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v41);
    *v42 = 3;
    goto LABEL_17;
  }

  sub_23E1FE35C();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 defaultManager];
  sub_23E1FBFAC();
  v5 = sub_23E1FDBDC();

  *(v0 + 608) = 0;
  v6 = [v4 attributesOfItemAtPath:v5 error:v0 + 608];

  v7 = *(v0 + 608);
  if (!v6)
  {
    v38 = *(v0 + 880);
    v43 = v7;

    sub_23E1FBECC();

LABEL_17:
    swift_willThrow();

    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_23DEEC534(&qword_27E32BDA0, type metadata accessor for FileAttributeKey, &unk_23E2234A0);
  v8 = sub_23E1FDAAC();
  v9 = v7;

  sub_23DE468D8(v8, (v0 + 528));

  if (!*(v0 + 552))
  {
    sub_23DEEC284(v0 + 528, &qword_27E32C320, &unk_23E224B40);
LABEL_23:
    if (v2 <= 60.0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v2 <= 60.0 && *(v0 + 560) < 0xF4241uLL)
  {
LABEL_9:
    v70 = v3;

    sub_23E1FCB9C();
    v11 = sub_23E1FD02C();
    v12 = sub_23E1FE1AC();
    if (os_log_type_enabled(v11, v12))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_44_4(&dword_23DE30000, v13, v14, "Returning audio file URL as-is: it doesn't require compressing or trimming");
      OUTLINED_FUNCTION_56();
    }

    v71 = *(v0 + 920);
    v15 = *(v0 + 736);
    v16 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = *(v0 + 696);

    (*(v16 + 8))(v15, v17);
    sub_23E1FC0DC();
    v21 = sub_23E1FC0AC();
    v23 = v22;
    (*(v19 + 8))(v18, v20);
    sub_23DEEA048(0xD000000000000011, 0x800000023E256510, v21, v23);

    OUTLINED_FUNCTION_158_0();
    v24 = sub_23E1FDBDC();

    sub_23DEE7734();
    if (v71)
    {
      v25 = *(v0 + 880);
    }

    else
    {
      v49 = *(v0 + 784);
      v50 = *(v0 + 776);
      v51 = *(v0 + 768);
      v52 = objc_opt_self();
      v53 = sub_23E1FBF6C();
      v54 = v51;
      v55 = *(v50 + 8);
      v55(v49, v54);
      v56 = [v52 proposedFileURLForFilename:v24 inDirectory:v53];

      sub_23E1FBF9C();
      v57 = [v70 defaultManager];
      v58 = sub_23E1FBF6C();
      v59 = sub_23E1FBF6C();
      *(v0 + 600) = 0;
      v60 = [v57 copyItemAtURL:v58 toURL:v59 error:v0 + 600];

      v61 = *(v0 + 600);
      v62 = *(v0 + 880);
      v63 = *(v0 + 792);
      if (v60)
      {
        v64 = *(v0 + 776);
        v65 = *(v0 + 768);
        v66 = *(v0 + 624);
        v67 = v61;

        (*(v64 + 32))(v66, v63, v65);
        OUTLINED_FUNCTION_12_12();
        OUTLINED_FUNCTION_30_5();

        OUTLINED_FUNCTION_19();
        goto LABEL_19;
      }

      v68 = *(v0 + 768);
      v69 = v61;
      sub_23E1FBECC();

      swift_willThrow();
      v55(v63, v68);
    }

LABEL_18:
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();
LABEL_19:

    return v44();
  }

LABEL_24:
  v46 = *(v0 + 880);
  v47 = *MEMORY[0x277CE5E48];
  *(v0 + 928) = *MEMORY[0x277CE5E48];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_23DEE86E8;
  v48 = swift_continuation_init();
  *(v0 + 488) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D550, &qword_23E229498);
  *(v0 + 432) = MEMORY[0x277D85DD0];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_23DEEA0C8;
  *(v0 + 456) = &block_descriptor_15;
  *(v0 + 464) = v48;
  [v46 loadTracksWithMediaType:v47 completionHandler:v0 + 432];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23DEE86E8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 936) = v4;
  v5 = v3[107];
  v6 = v3[106];
  if (v4)
  {
    v7 = sub_23DEE9D4C;
  }

  else
  {
    v7 = sub_23DEE883C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DEE883C()
{
  v68 = v0;
  v67 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 592);
  v2 = [objc_allocWithZone(MEMORY[0x277CE6548]) init];
  *(v0 + 944) = v2;
  v3 = 0;
  v62 = v1 & 0xC000000000000001;
  v63 = sub_23DE4D8B0();
  v4 = MEMORY[0x277CC08F0];
  v64 = v1;
  v5 = *MEMORY[0x277CC08F0];
  *(v0 + 952) = *MEMORY[0x277CC08F0];
  v6 = *(v4 + 8);
  v7 = *(v4 + 12);
  *(v0 + 1280) = v6;
  *(v0 + 1284) = v7;
  v8 = *(v4 + 16);
  *(v0 + 960) = v8;
  v61 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v63 != v3)
  {
    if (v62)
    {
      v9 = MEMORY[0x23EF04DD0](v3, v64);
    }

    else
    {
      if (v3 >= *(v61 + 16))
      {
        goto LABEL_27;
      }

      v9 = *(v64 + 8 * v3 + 32);
    }

    v10 = v9;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
    }

    v11 = [v2 addMutableTrackWithMediaType:*(v0 + 928) preferredTrackID:0];
    if (!v11)
    {

      sub_23E1FCB9C();
      v34 = sub_23E1FD02C();
      v35 = sub_23E1FE1BC();
      if (os_log_type_enabled(v34, v35))
      {
        *OUTLINED_FUNCTION_74_0() = 0;
        OUTLINED_FUNCTION_44_4(&dword_23DE30000, v36, v37, "Could not create audio track for trimmed audio");
        OUTLINED_FUNCTION_56();
      }

      v38 = *(v0 + 880);
      v39 = *(v0 + 752);
      v40 = *(v0 + 728);
      v41 = *(v0 + 720);

      (*(v40 + 8))(v39, v41);
      v42 = sub_23DEEC230();
      OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v42);
      *v43 = 3;
      swift_willThrow();

      goto LABEL_20;
    }

    v12 = v11;
    v13 = v2;
    CMTimeMake(&v66.start, 60, 1);
    value = v66.start.value;
    epoch = v66.start.epoch;
    v16 = *&v66.start.timescale;
    *(v0 + 1208) = v5;
    *(v0 + 1216) = v6;
    *(v0 + 1220) = v7;
    *(v0 + 1224) = v8;
    *(v0 + 1232) = value;
    *(v0 + 1240) = v16;
    *(v0 + 1248) = epoch;
    CMTimeRangeMake(&v66, (v0 + 1208), (v0 + 1232));
    v17 = v66.start.value;
    v18 = v66.duration.epoch;
    v19 = *&v66.duration.timescale;
    v20 = *&v66.start.epoch;
    v21 = *&v66.start.timescale;
    *(v0 + 584) = 0;
    *(v0 + 1080) = v17;
    *(v0 + 1088) = v21;
    *(v0 + 1096) = v20;
    *(v0 + 1112) = v19;
    *(v0 + 1120) = v18;
    *(v0 + 1256) = v5;
    *(v0 + 1264) = v6;
    *(v0 + 1268) = v7;
    *(v0 + 1272) = v8;
    v22 = [v12 insertTimeRange:v0 + 1080 ofTrack:v10 atTime:v0 + 1256 error:v0 + 584];
    v23 = *(v0 + 584);
    if (!v22)
    {
      v44 = *(v0 + 880);
      v45 = v23;

      sub_23E1FBECC();

      swift_willThrow();
      goto LABEL_19;
    }

    v24 = v23;

    ++v3;
    v2 = v13;
  }

  [v2 copy];
  sub_23E1FE49C();
  swift_unknownObjectRelease();
  sub_23DE38DA8(0, &qword_27E32D558, 0x277CE64B0);
  if (!swift_dynamicCast())
  {
    v13 = *(v0 + 880);

    v46 = sub_23DEEC230();
    OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v46);
    *v47 = 1;
    swift_willThrow();

LABEL_19:
LABEL_20:
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();

    return v48();
  }

  v65 = v2;
  v25 = *(v0 + 920);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  v28 = *(v0 + 696);
  v29 = *(v0 + 568);
  *(v0 + 968) = v29;
  sub_23E1FC0DC();
  v30 = sub_23E1FC0AC();
  v32 = v31;
  (*(v27 + 8))(v26, v28);
  sub_23DEEA048(0x736572706D6F632DLL, 0xEF6661632E646573, v30, v32);

  OUTLINED_FUNCTION_158_0();
  v33 = sub_23E1FDBDC();

  sub_23DEE7734();
  if (v25)
  {

    goto LABEL_20;
  }

  v50 = *(v0 + 808);
  v51 = *(v0 + 776);
  v52 = *(v0 + 768);
  v53 = objc_opt_self();
  v54 = sub_23E1FBF6C();
  v55 = *(v51 + 8);
  *(v0 + 976) = v55;
  *(v0 + 984) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v50, v52);
  v56 = [v53 proposedFileURLForFilename:v33 inDirectory:v54];

  sub_23E1FBF9C();
  v57 = objc_allocWithZone(MEMORY[0x277CE6410]);
  v58 = v29;
  *(v0 + 992) = sub_23DEEBE94(v58);
  *(v0 + 1000) = 0;
  v59 = *(v0 + 928);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 576;
  *(v0 + 88) = sub_23DEE8FF0;
  v60 = swift_continuation_init();
  *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D560, &unk_23E2294A0);
  *(v0 + 368) = MEMORY[0x277D85DD0];
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_23DEEA0DC;
  *(v0 + 392) = &block_descriptor_18_0;
  *(v0 + 400) = v60;
  [v58 loadTracksWithMediaType:v59 completionHandler:v0 + 368];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23DEE8FF0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_0_3();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 1008) = v4;
  v5 = v3[107];
  v6 = v3[106];
  if (v4)
  {
    v7 = sub_23DEE9E64;
  }

  else
  {
    v7 = sub_23DEE9144;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23DEE9144()
{
  v1 = *(v0 + 576);
  if (!sub_23DE4D8B0())
  {

    sub_23E1FCB9C();
    v22 = sub_23E1FD02C();
    v23 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_118(v23))
    {
      *OUTLINED_FUNCTION_74_0() = 0;
      OUTLINED_FUNCTION_14_5();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v67 = *(v0 + 992);
    v69 = *(v0 + 976);
    v29 = *(v0 + 968);
    v30 = *(v0 + 944);
    v31 = *(v0 + 880);
    v32 = *(v0 + 816);
    v33 = *(v0 + 768);
    v34 = *(v0 + 744);
    v35 = *(v0 + 728);
    v36 = *(v0 + 720);

    (*(v35 + 8))(v34, v36);
    v37 = sub_23DEEC230();
    OUTLINED_FUNCTION_31_5(&type metadata for IntercomAction.ActionError, v37);
    *v38 = 3;
    swift_willThrow();

    v69(v32, v33);
    goto LABEL_9;
  }

  sub_23DE59014();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x23EF04DD0](0, v1);
  }

  else
  {
    v2 = *(v1 + 32);
  }

  v3 = v2;
  *(v0 + 1016) = v2;
  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 864);
  v7 = *(v0 + 816);
  v8 = *(v0 + 800);
  v9 = *(v0 + 768);

  v10 = objc_allocWithZone(MEMORY[0x277CE6430]);
  v11 = v3;
  v12 = sub_23DEEC0B8(v11, 0, &selRef_initWithTrack_outputSettings_);
  *(v0 + 1024) = v12;
  v70 = v12;
  [v5 addOutput_];
  v6(v8, v7, v9);
  v13 = *MEMORY[0x277CE5D78];
  v14 = objc_allocWithZone(MEMORY[0x277CE6460]);
  v15 = sub_23DEEBF5C(v8, v13);
  *(v0 + 1032) = v15;
  v16 = *(v0 + 816);
  if (v4)
  {
    v17 = *(v0 + 992);
    v18 = *(v0 + 976);
    v19 = *(v0 + 968);
    v20 = *(v0 + 944);
    v21 = *(v0 + 768);

    v18(v16, v21);
LABEL_9:
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_30_5();

    OUTLINED_FUNCTION_19();

    return v39();
  }

  v41 = v15;
  v42 = *(v0 + 992);
  v43 = *(v0 + 952);
  v44 = *(v0 + 928);
  v68 = *(v0 + 816);
  v63 = *(v0 + 960);
  v64 = *(v0 + 656);
  v65 = *(v0 + 664);
  v66 = *(v0 + 648);
  *(v0 + 1156) = 0;
  *(v0 + 1140) = 0;
  *(v0 + 1148) = 0;
  *(v0 + 1132) = 0;
  *(v0 + 1128) = 6553601;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v45 = *(v0 + 1280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222350;
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v47;
  v48 = MEMORY[0x277D83B88];
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 48) = 1633772320;
  *(inited + 80) = sub_23E1FDC1C();
  *(inited + 88) = v49;
  *(inited + 120) = v48;
  *(inited + 96) = 44100;
  *(inited + 128) = sub_23E1FDC1C();
  *(inited + 136) = v50;
  *(inited + 168) = v48;
  *(inited + 144) = 1;
  *(inited + 176) = sub_23E1FDC1C();
  *(inited + 184) = v51;
  v52 = MEMORY[0x23EF027D0](v0 + 1128, 32);
  *(inited + 216) = MEMORY[0x277CC9318];
  *(inited + 192) = v52;
  *(inited + 200) = v53;
  v54 = sub_23E1FDABC();
  v55 = objc_allocWithZone(MEMORY[0x277CE6468]);
  v56 = sub_23DEEC0B8(v44, v54, &selRef_initWithMediaType_outputSettings_);
  *(v0 + 1040) = v56;
  [v56 setExpectsMediaDataInRealTime_];
  [v41 addInput_];
  [v41 startWriting];
  *(v0 + 1160) = v43;
  *(v0 + 1168) = v45;
  *(v0 + 1176) = v63;
  [v41 startSessionAtSourceTime_];
  [v42 startReading];
  sub_23DE38DA8(0, &qword_27E32D570, 0x277D85C78);
  sub_23E1FDA5C();
  *(v0 + 616) = MEMORY[0x277D84F90];
  sub_23DEEC534(&qword_27E32D578, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D580, &qword_23E2294B0);
  sub_23DEEC2F0();
  sub_23E1FE4EC();
  (*(v64 + 104))(v65, *MEMORY[0x277D85260], v66);
  v57 = sub_23E1FE24C();
  *(v0 + 1048) = v57;
  v58 = sub_23E1FDEBC();
  *(v0 + 1056) = v58;
  v59 = swift_task_alloc();
  *(v0 + 1064) = v59;
  v59[2] = v56;
  v59[3] = v57;
  v59[4] = v70;
  v59[5] = v42;
  v59[6] = v41;
  v59[7] = v68;
  v60 = swift_task_alloc();
  *(v0 + 1072) = v60;
  *v60 = v0;
  v60[1] = sub_23DEE98CC;
  v61 = MEMORY[0x277D85700];
  v62 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v60, v58, v61, 0xD000000000000025, 0x800000023E256560, sub_23DEEC354, v59, v62);
}

uint64_t sub_23DEE98CC()
{
  OUTLINED_FUNCTION_33_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v1 + 856);
  v5 = *(v1 + 848);

  return MEMORY[0x2822009F8](sub_23DEE9A54, v5, v4);
}

uint64_t sub_23DEE9A54()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 992);
  v16 = *(v0 + 976);
  v6 = *(v0 + 968);
  v13 = *(v0 + 944);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 864);
  v7 = *(v0 + 816);
  v8 = *(v0 + 768);
  v12 = *(v0 + 624);

  v15(v12, v7, v8);
  v9 = OUTLINED_FUNCTION_50();
  v16(v9);
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_30_5();

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_23DEE9C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v34 = *MEMORY[0x277D85DE8];

  OUTLINED_FUNCTION_0_22();
  v29 = v19;
  v30 = *(v18 + 712);
  v31 = *(v18 + 688);
  v32 = *(v18 + 680);
  v33 = *(v18 + 664);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, v33, v34, a16, a17, a18);
}

uint64_t sub_23DEE9D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v29 = *MEMORY[0x277D85DE8];
  v19 = *(v18 + 880);

  swift_willThrow();

  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_8();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, v29, a16, a17, a18);
}

uint64_t sub_23DEE9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  v35 = *MEMORY[0x277D85DE8];
  v19 = v18[124];
  v20 = v18[122];
  v21 = v18[121];
  v22 = v18[118];
  v23 = v18[110];
  v24 = v18[102];
  v25 = v18[96];

  swift_willThrow();

  v20(v24, v25);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_21_8();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, v35, a16, a17, a18);
}

id sub_23DEE9FB0(uint64_t a1)
{
  v2 = sub_23E1FBF6C();
  v3 = [swift_getObjCClassFromMetadata() assetWithURL_];

  v4 = sub_23E1FBFBC();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_23DEEA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23E1FB7BC();
  v5 = sub_23E1FDD7C();
  sub_23E1FDCFC();
  return v5;
}

uint64_t sub_23DEEA0F0(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v8 = a3;
    v9 = OUTLINED_FUNCTION_38();
    return sub_23DEE4BA0(v9, v10);
  }

  else
  {
    sub_23DE38DA8(0, a4, a5);
    sub_23E1FDDEC();
    v12 = OUTLINED_FUNCTION_38();
    return sub_23DEE4C4C(v12, v13);
  }
}

void sub_23DEEA174(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v34 = a3;
  v35 = a6;
  v32 = a2;
  v33 = a5;
  v30 = a4;
  v31 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  v29 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = sub_23E1FBFBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a7, v13);
  (*(v10 + 16))(v12, v31, v9);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = (v15 + *(v10 + 80) + v17) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = v32;
  *(v19 + 2) = v32;
  *(v19 + 3) = a4;
  v21 = v33;
  v22 = v35;
  *(v19 + 4) = v33;
  *(v19 + 5) = v22;
  (*(v14 + 32))(&v19[v17], v16, v13);
  (*(v10 + 32))(&v19[v18], v12, v29);
  aBlock[4] = sub_23DEEC364;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DEEAB60;
  aBlock[3] = &block_descriptor_22;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v30;
  v26 = v21;
  v27 = v35;

  [v24 requestMediaDataWhenReadyOnQueue:v34 usingBlock:v23];
  _Block_release(v23);
}

void sub_23DEEA43C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v30 = a4;
  v23 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v27 = &v23 - v9;
  v24 = sub_23E1FBFBC();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  while ([a1 isReadyForMoreMediaData])
  {
    v13 = [a2 copyNextSampleBuffer];
    if (!v13)
    {
      [a1 markAsFinished];
      [v23 cancelReading];
      v15 = v24;
      (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v24);
      v17 = v27;
      v16 = v28;
      v18 = v29;
      (*(v28 + 16))(v27, v26, v29);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = (v11 + *(v16 + 80) + v19) & ~*(v16 + 80);
      v21 = swift_allocObject();
      (*(v10 + 32))(v21 + v19, v12, v15);
      (*(v16 + 32))(v21 + v20, v17, v18);
      aBlock[4] = sub_23DEEC45C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23DEEAB60;
      aBlock[3] = &block_descriptor_28;
      v22 = _Block_copy(aBlock);

      [v30 finishWritingWithCompletionHandler_];
      _Block_release(v22);
      return;
    }

    v14 = v13;
    [a1 appendSampleBuffer_];
  }
}

uint64_t sub_23DEEA738(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E1FBFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E1FD03C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E1FCB9C();
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_23E1FD02C();
  v13 = sub_23E1FE1AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = v8;
    v15 = v14;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v15 = 136315138;
    sub_23DEEC534(&qword_27E32C820, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v16 = sub_23E1FE71C();
    v24 = a2;
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_23DE56B40(v16, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_23DE30000, v12, v13, "Finished writing compressed audio to %s", v15, 0xCu);
    v20 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EF074C0](v20, -1, -1);
    MEMORY[0x23EF074C0](v15, -1, -1);

    (*(v9 + 8))(v11, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  return sub_23E1FDE8C();
}

id sub_23DEEAA44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR___WFIntercomAction_homeParameterKey];
  *v7 = 0x656D6F484657;
  *(v7 + 1) = 0xE600000000000000;
  *&v4[OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer] = 0;
  *&v4[OBJC_IVAR___WFIntercomAction____lazy_storage___announce] = 0;
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
  v12.super_class = type metadata accessor for IntercomAction();
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_23DEEAB60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_23E1FB7CC();
  v1(v2);
}

id sub_23DEEAC3C()
{
  v1 = &v0[OBJC_IVAR___WFIntercomAction_homeParameterKey];
  *v1 = 0x656D6F484657;
  *(v1 + 1) = 0xE600000000000000;
  *&v0[OBJC_IVAR___WFIntercomAction____lazy_storage___speechSynthesizer] = 0;
  *&v0[OBJC_IVAR___WFIntercomAction____lazy_storage___announce] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for IntercomAction();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_23DEEAD6C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_23DEEAD90, 0, 0);
}

uint64_t sub_23DEEAD90()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D520, &qword_23E229480);
  *v5 = v0;
  v5[1] = sub_23DEEAEA4;

  return MEMORY[0x2822008A0](v0 + 2);
}

uint64_t sub_23DEEAEA4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = sub_23DEEAFAC;
  }

  else
  {

    v7 = sub_23DEC69A8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23DEEAFAC()
{
  OUTLINED_FUNCTION_23();

  OUTLINED_FUNCTION_19();

  return v0();
}

void sub_23DEEB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  swift_beginAccess();
  sub_23DEEC1C0(v8, a2 + v10);
  swift_endAccess();
  v11 = *(a2 + OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_synthesizer);
  [v11 setDelegate_];
  sub_23DEEB188();
  v13 = v12;
  v14 = sub_23E1FDBDC();
  [v11 speakUtteranceIntoFile:v14 usingVoice:v13 rate:0.5 pitch:1.0];
}

void sub_23DEEB188()
{
  v0 = objc_opt_self();
  v1 = [v0 currentLanguageCode];
  sub_23E1FDC1C();

  v2 = objc_opt_self();
  sub_23DE5C91C(v2, &selRef_afPreferencesLanguageCode);
  if (v3)
  {
  }

  v4 = sub_23E1FDBDC();

  v29 = v0;
  v5 = [v0 voicesForLanguageCode_];

  sub_23DE38DA8(0, &qword_27E32D518, off_278C017D8);
  v6 = sub_23E1FDDEC();

  v30 = sub_23DE5C91C(v2, &selRef_currentSiriVoiceVSAssetName);
  v8 = v7;
  v9 = sub_23DE4D8B0();
  v10 = 0;
  v11 = v6 & 0xC000000000000001;
  v12 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v9 == v10)
    {
      v21 = sub_23DE4D8B0();
      for (i = 0; ; ++i)
      {
        if (v21 == i)
        {

          v25 = [v29 currentLanguageCode];
          v26 = sub_23E1FDC1C();
          v28 = v27;

          sub_23DEEC150(v26, v28, v29);

          return;
        }

        if (v11)
        {
          v23 = MEMORY[0x23EF04DD0](i, v6);
        }

        else
        {
          if (i >= *(v12 + 16))
          {
            goto LABEL_40;
          }

          v23 = *(v6 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          goto LABEL_39;
        }

        if ([v23 isSiriVoice])
        {
          break;
        }
      }

      goto LABEL_36;
    }

    if (v11)
    {
      v13 = MEMORY[0x23EF04DD0](v10, v6);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_38;
      }

      v13 = *(v6 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v15 = sub_23DE5C91C(v13, &selRef_vsVoiceName);
    if (v16)
    {
      if (v8)
      {
        if (v15 == v30 && v16 == v8)
        {
        }

        else
        {
          v18 = v6;
          v19 = v8;
          v20 = sub_23E1FE75C();

          if ((v20 & 1) == 0)
          {

            v8 = v19;
            v6 = v18;
            goto LABEL_20;
          }
        }

LABEL_36:

        return;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_36;
      }
    }

LABEL_20:
    ++v10;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_23DEEB4C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_23E1FD03C();
  result = MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v36 = v15;
    v37 = result;
    v38 = v4;
    v35 = v9;
    v18 = a4;
    sub_23E1FCB9C();
    v19 = a4;
    v20 = sub_23E1FD02C();
    v21 = sub_23E1FE1BC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v7;
      v23 = v22;
      v24 = swift_slowAlloc();
      v39 = a4;
      v40[0] = v24;
      *v23 = 136315138;
      v25 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
      v26 = sub_23E1FDC7C();
      v28 = sub_23DE56B40(v26, v27, v40);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_23DE30000, v20, v21, "didFailSpeakingUtterance: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23EF074C0](v24, -1, -1);
      v29 = v23;
      v7 = v34;
      MEMORY[0x23EF074C0](v29, -1, -1);
    }

    (*(v36 + 8))(v17, v37);
    v30 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
    v31 = v38;
    swift_beginAccess();
    sub_23DEEBE24(v31 + v30, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v6))
    {

      return sub_23DEEC284(v12, &unk_27E32D508, &unk_23E229470);
    }

    else
    {
      v32 = v35;
      (*(v7 + 16))(v35, v12, v6);
      sub_23DEEC284(v12, &unk_27E32D508, &unk_23E229470);
      v39 = a4;
      sub_23E1FDE7C();
      return (*(v7 + 8))(v32, v6);
    }
  }

  return result;
}

uint64_t sub_23DEEB900(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  swift_beginAccess();
  sub_23DEEBE24(v4 + v13, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v6))
  {
    return sub_23DEEC284(v12, &unk_27E32D508, &unk_23E229470);
  }

  (*(v7 + 16))(v9, v12, v6);
  sub_23DEEC284(v12, &unk_27E32D508, &unk_23E229470);
  v16 = a4;
  v15 = a4;
  sub_23E1FDE8C();
  return (*(v7 + 8))(v9, v6);
}

id sub_23DEEBB68()
{
  v1 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_synthesizer;
  *&v0[v1] = [objc_allocWithZone(WFSpeechSynthesizer) init];
  v2 = OBJC_IVAR____TtC9ActionKitP33_3FD069E75236963E75C4BE2D87E9ECB629SpeechSynthesizerAsyncWrapper_continuation;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SpeechSynthesizerAsyncWrapper(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_23DEEBC3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SpeechSynthesizerAsyncWrapper(uint64_t a1)
{
  result = qword_27E32D4E8;
  if (!qword_27E32D4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DEEBD20(uint64_t a1)
{
  sub_23DEEBDC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DEEBDC0(uint64_t a1)
{
  if (!qword_27E32D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D500, &qword_23E229468);
    v1 = sub_23E1FE42C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E32D4F8);
    }
  }
}

uint64_t sub_23DEEBE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_23DEEBE94(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v4 = [v2 initWithAsset:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_23E1FBECC();

    swift_willThrow();
  }

  return v4;
}

id sub_23DEEBF5C(uint64_t a1, void *a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23E1FBF6C();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 fileType:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_23E1FBFBC();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_23E1FBECC();

    swift_willThrow();
    v13 = sub_23E1FBFBC();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

id sub_23DEEC0B8(void *a1, uint64_t a2, SEL *a3)
{
  if (a2)
  {
    v6 = sub_23E1FDA9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 *a3];

  return v7;
}

id sub_23DEEC150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();

  v5 = [a3 defaultVoiceForLanguageCode_];

  return v5;
}

uint64_t sub_23DEEC1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D508, &unk_23E229470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23DEEC230()
{
  result = qword_27E32D540;
  if (!qword_27E32D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D540);
  }

  return result;
}

uint64_t sub_23DEEC284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_37_2();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_23DEEC2F0()
{
  result = qword_27E32D588;
  if (!qword_27E32D588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32D580, &qword_23E2294B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D588);
  }

  return result;
}

void sub_23DEEC364()
{
  v1 = *(sub_23E1FBFBC() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_23DEEA43C(v5, v6, v7, v8, v0 + v2, v9);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

uint64_t sub_23DEEC45C()
{
  v1 = *(sub_23E1FBFBC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_23DEEA738(v0 + v2, v5);
}

uint64_t sub_23DEEC534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DEEC57C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE47040;
  v2 = OUTLINED_FUNCTION_50();

  return v3(v2);
}

uint64_t sub_23DEEC634(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);

  return sub_23DEE7464(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for IntercomAction.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23DEEC7A0()
{
  result = qword_27E32D5E0;
  if (!qword_27E32D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5E0);
  }

  return result;
}

unint64_t sub_23DEEC7F4()
{
  result = qword_27E32D5E8;
  if (!qword_27E32D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32D5E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t result)
{
  *(v1 + 760) = result;
  *(v1 + 768) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_8()
{
}

void OUTLINED_FUNCTION_27_6()
{
  v2 = *(v0 + 592);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_33_4()
{

  return sub_23E1FDE0C();
}

uint64_t OUTLINED_FUNCTION_34_3(uint64_t a1)
{
  *(v1 + 696) = a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_44_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_23E1FDE3C();
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t a1)
{

  return sub_23E1FBF9C();
}

id sub_23DEECBD0()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v3 - 8);
  v72 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v5 = *MEMORY[0x277D7CB18];
  v6 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E2536A0;
  v7 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = v5;
  v9 = v7;
  v10 = sub_23E1FDCBC("finding|matching|searching|regular|expression|regexp", 52);
  v12 = v11;
  sub_23E1FDCBC("finding|matching|searching|regular|expression|regexp", 52);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v75 = qword_280DAE278;
  v13 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v14 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v10, v12);
  v16 = v15;
  v17 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v74 = v17;
  *(inited + 80) = v16;
  v18 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  *&v73 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_23E222340;
  v20 = *MEMORY[0x277D7CC28];
  *(v19 + 32) = *MEMORY[0x277D7CC28];
  v21 = v18;
  v22 = v20;
  v23 = sub_23E1FDCBC("A list of text items that matched the regular expression", 56);
  v25 = v24;
  sub_23E1FDCBC("A list of text items that matched the regular expression", 56);
  sub_23E1FC14C();
  v26 = [v75 bundleURL];
  v71 = v2;
  sub_23E1FBF9C();

  v27 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v23, v25);
  *(v19 + 64) = v74;
  *(v19 + 40) = v28;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v29 = sub_23E1FDABC();
  v30 = v73;
  *(inited + 120) = sub_23DF3BE54(v29);
  v31 = *MEMORY[0x277D7CB50];
  *(inited + 144) = v30;
  *(inited + 152) = v31;
  v32 = MEMORY[0x277D837D0];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  v33 = v31;
  *(inited + 192) = sub_23E1FDBDC();
  *(inited + 224) = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  *(inited + 232) = sub_23E1FDBDC();
  *(inited + 240) = 0xD00000000000004FLL;
  *(inited + 248) = 0x800000023E256760;
  v34 = *MEMORY[0x277D7CDD0];
  *(inited + 264) = v32;
  *(inited + 272) = v34;
  v35 = v34;
  v36 = sub_23E1FDABC();
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 280) = v36;
  *(inited + 312) = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v37 = swift_initStackObject();
  v73 = xmmword_23E222370;
  *(v37 + 16) = xmmword_23E222370;
  strcpy((v37 + 32), "caseSensitive");
  *(v37 + 46) = -4864;
  v69 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v38 = swift_initStackObject();
  *(v38 + 16) = v73;
  v39 = *MEMORY[0x277D7CE08];
  *(v38 + 32) = *MEMORY[0x277D7CE08];
  v40 = v39;
  v68 = sub_23E1FDCBC("Case Sensitive Parameter Description (WFHandleCustomIntentAction is.workflow.actions.text.match)", 96);
  v42 = v41;
  sub_23E1FDCBC("When disabled, the capitalization of letters is ignored.", 56);
  sub_23E1FC14C();
  v43 = [v75 bundleURL];
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v68, v42);
  v45 = MEMORY[0x277D7CE70];
  *(v38 + 40) = v46;
  v47 = *v45;
  *(v38 + 64) = v74;
  *(v38 + 72) = v47;
  v48 = MEMORY[0x277D837D0];
  *(v38 + 104) = MEMORY[0x277D837D0];
  *(v38 + 80) = 0xD000000000000018;
  *(v38 + 88) = 0x800000023E256860;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v49 = v47;
  v50 = sub_23E1FDABC();
  *(v37 + 48) = sub_23DF3BE9C(v50);
  *(v37 + 56) = 0x6E726574746170;
  *(v37 + 64) = 0xE700000000000000;
  v51 = swift_initStackObject();
  *(v51 + 16) = v73;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0xD000000000000012;
  *(v51 + 48) = 0x800000023E256880;
  v52 = *MEMORY[0x277D7CDF8];
  *(v51 + 64) = v48;
  *(v51 + 72) = v52;
  sub_23DE38DA8(0, &qword_27E32D5F0, 0x277D7C7A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = v52;
  v55 = NSStringFromClass(ObjCClassFromMetadata);
  v56 = sub_23E1FDC1C();
  v58 = v57;

  *(v51 + 104) = MEMORY[0x277D837D0];
  *(v51 + 80) = v56;
  *(v51 + 88) = v58;
  v59 = sub_23E1FDABC();
  *(v37 + 72) = sub_23DF3BE9C(v59);
  v60 = sub_23E1FDABC();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v62 = MEMORY[0x277D7CB78];
  *(inited + 320) = v60;
  v63 = *v62;
  *(inited + 344) = v61;
  *(inited + 352) = v63;
  *(inited + 384) = MEMORY[0x277D839B0];
  *(inited + 360) = 1;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v64 = v63;
  v65 = sub_23E1FDABC();
  return sub_23DF3BF9C(v65);
}

id sub_23DEED4D4()
{
  v0 = sub_23E1FBFBC();
  MEMORY[0x28223BE20](v0 - 8);
  v134 = &v124 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FC1DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E225EA0;
  v6 = *MEMORY[0x277D7CB18];
  v7 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x800000023E2568D0;
  v8 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_23E1FDCBC("reboot|restart|turn|off|halt|power|down", 39);
  v13 = v12;
  sub_23E1FDCBC("reboot|restart|turn|off|halt|power|down", 39);
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v135 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v127 = v4;
  sub_23DE477A0(v11, v13);
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v133 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = v19;
  v21 = sub_23E1FDABC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v21;
  v23 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v131 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_23E222340;
  v25 = *MEMORY[0x277D7CC30];
  *(v24 + 32) = *MEMORY[0x277D7CC30];
  v26 = v23;
  v27 = v25;
  v28 = sub_23E1FDCBC("Shuts down or restarts your device.", 35);
  v30 = v29;
  sub_23E1FDCBC("Shuts down or restarts your device.", 35);
  sub_23E1FC14C();
  v31 = [v135 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v28, v30);
  v33 = v133;
  *(v24 + 64) = v133;
  *(v24 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey, &unk_23E223528);
  v35 = sub_23E1FDABC();
  v36 = v131;
  *(inited + 160) = sub_23DF3BE54(v35);
  v37 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v36;
  *(inited + 192) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_285024C90;
  v39 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v38;
  *(inited + 232) = v39;
  *(inited + 240) = 2036429383;
  *(inited + 248) = 0xE400000000000000;
  v40 = *MEMORY[0x277D7CB60];
  v41 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v40;
  *(inited + 280) = 0x7265776F70;
  *(inited + 288) = 0xE500000000000000;
  v42 = *MEMORY[0x277D7CB90];
  *(inited + 304) = v41;
  *(inited + 312) = v42;
  v43 = v37;
  v44 = v39;
  v45 = v40;
  v46 = v42;
  v47 = sub_23E1FDCBC("Shut Down (Action Name)", 23);
  v49 = v48;
  sub_23E1FDCBC("Shut Down", 9);
  sub_23E1FC14C();
  v50 = [v135 bundleURL];
  sub_23E1FBF9C();

  v51 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v47, v49);
  *(inited + 320) = v52;
  v53 = *MEMORY[0x277D7CBA0];
  *(inited + 344) = v33;
  *(inited + 352) = v53;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_23E2235B0;
  v130 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_23E224C10;
  v55 = *MEMORY[0x277D7CDF8];
  *(v54 + 32) = *MEMORY[0x277D7CDF8];
  *(v54 + 40) = 0xD000000000000016;
  *(v54 + 48) = 0x800000023E24FDA0;
  v56 = *MEMORY[0x277D7CE00];
  v57 = MEMORY[0x277D837D0];
  *(v54 + 64) = MEMORY[0x277D837D0];
  *(v54 + 72) = v56;
  *(v54 + 80) = 0x776F442074756853;
  *(v54 + 88) = 0xE90000000000006ELL;
  v58 = *MEMORY[0x277D7CE38];
  *(v54 + 104) = v57;
  *(v54 + 112) = v58;
  v126 = swift_allocObject();
  v128 = xmmword_23E2246F0;
  *(v126 + 16) = xmmword_23E2246F0;
  v59 = v53;
  v60 = v55;
  v61 = v56;
  v62 = v58;
  v125 = sub_23E1FDCBC("Shut Down (WFShutdownMode)", 26);
  v64 = v63;
  sub_23E1FDCBC("Shut Down", 9);
  sub_23E1FC14C();
  v65 = v135;
  v66 = [v135 bundleURL];
  sub_23E1FBF9C();

  v67 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v125, v64);
  v68 = v126;
  *(v126 + 32) = v69;
  v70 = sub_23E1FDCBC("Restart (WFShutdownMode)", 24);
  v124 = v71;
  v125 = v70;
  sub_23E1FDCBC("Restart", 7);
  sub_23E1FC14C();
  v72 = [v65 bundleURL];
  sub_23E1FBF9C();

  v73 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v125, v124);
  *(v68 + 40) = v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  *(v54 + 120) = v68;
  v76 = *MEMORY[0x277D7CE70];
  *(v54 + 144) = v75;
  *(v54 + 152) = v76;
  strcpy((v54 + 160), "WFShutdownMode");
  *(v54 + 175) = -18;
  v77 = *MEMORY[0x277D7CE80];
  *(v54 + 184) = MEMORY[0x277D837D0];
  *(v54 + 192) = v77;
  v78 = v76;
  v79 = v77;
  v126 = sub_23E1FDCBC("Mode (WFShutdownMode)", 21);
  v81 = v80;
  sub_23E1FDCBC("Mode", 4);
  sub_23E1FC14C();
  v82 = v135;
  v83 = [v135 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v126, v81);
  *(v54 + 200) = v85;
  v86 = *MEMORY[0x277D7CEC8];
  v87 = v133;
  *(v54 + 224) = v133;
  *(v54 + 232) = v86;
  v88 = v86;
  v89 = sub_23E1FDCBC("What would you like to do? (WFShutdownMode)", 43);
  v126 = v90;
  sub_23E1FDCBC("What would you like to do?", 26);
  sub_23E1FC14C();
  v91 = [v82 bundleURL];
  sub_23E1FBF9C();

  v92 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v89, v126);
  *(v54 + 264) = v87;
  *(v54 + 240) = v93;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0, &unk_23E2234E4);
  v94 = sub_23E1FDABC();
  v95 = sub_23DF3BE9C(v94);
  v96 = v131;
  *(v131 + 32) = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 360) = v96;
  v98 = *MEMORY[0x277D7CB98];
  *(inited + 384) = v97;
  *(inited + 392) = v98;
  v131 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v133 = swift_allocObject();
  *(v133 + 16) = v128;
  v130 = "What would you like to do?";
  v99 = v98;
  v100 = sub_23E1FDCBC("${WFShutdownMode} this device", 29);
  v102 = v101;
  sub_23E1FDCBC("${WFShutdownMode} this device", 29);
  sub_23E1FC14C();
  v103 = v135;
  v104 = [v135 bundleURL];
  sub_23E1FBF9C();

  v105 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v100, v102);
  v107 = v106;
  v108 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v109 = sub_23DF34C40(0xD000000000000017, v130 | 0x8000000000000000, v107);
  *(v133 + 32) = v109;
  v130 = "${WFShutdownMode} this device";
  v110 = sub_23E1FDCBC("${WFShutdownMode} this device", 29);
  v112 = v111;
  sub_23E1FDCBC("${WFShutdownMode} this device", 29);
  sub_23E1FC14C();
  v113 = [v103 bundleURL];
  sub_23E1FBF9C();

  v114 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0(v110, v112);
  v116 = v115;
  v117 = objc_allocWithZone(MEMORY[0x277D7C0C8]);
  v118 = sub_23DF34C40(0xD000000000000019, v130 | 0x8000000000000000, v116);
  v119 = v133;
  *(v133 + 40) = v118;
  v120 = v131;
  v121 = sub_23DF333E0(v119);
  *(inited + 424) = v120;
  *(inited + 400) = v121;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key, &unk_23E222710);
  v122 = sub_23E1FDABC();
  return sub_23DF3BF9C(v122);
}