void sub_237DDF848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  v86 = a8;
  v87 = a6;
  v90 = a7;
  v91 = a4;
  v98 = a5;
  v88 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3970, qword_237F16078);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v74 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58, &qword_237F17520);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAA0, &unk_237F07330);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v74 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v74 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v83 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA78, &qword_237F068D8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v74 - v29;
  v85 = a1;
  sub_237CBA478(a1, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3978, &qword_237F160B8);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v92, &v94);
    v31 = v96;
    v32 = v97;
    v33 = __swift_project_boxed_opaque_existential_1(&v94, v96);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910, &qword_237F16030);
    sub_237CF446C();
    sub_237CF0114(v33, a2, v88, v91, v98, v87, v90, v86, v34, v31, MEMORY[0x277D83B88], v32);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(&v94);
    return;
  }

  v74 = a2;
  v35 = v86;
  sub_237CBA478(v85, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3980, &qword_237F160C0);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v92, &v94);
    v36 = v96;
    v37 = v97;
    v38 = __swift_project_boxed_opaque_existential_1(&v94, v96);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910, &qword_237F16030);
    sub_237CE3484();
    v40 = MEMORY[0x277D83A90];
LABEL_7:
    sub_237CF04F0(v38, v74, v88, v91, v98, v87, v90, v35, v39, v36, v40, v37);
    goto LABEL_8;
  }

  sub_237CBA478(v85, v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3988, &qword_237F160C8);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v92, &v94);
    v36 = v96;
    v37 = v97;
    v38 = __swift_project_boxed_opaque_existential_1(&v94, v96);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910, &qword_237F16030);
    sub_237C65348();
    v40 = MEMORY[0x277D839F8];
    goto LABEL_7;
  }

  sub_237CBA478(v85, &v94);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
    (*(v28 + 32))(v30, v26, v27);
    sub_237DE0520(v30, v74, v88, v91, v98, v87, v90, v35);
    (*(v28 + 8))(v30, v27);
    return;
  }

  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  sub_237C863A0(v26, &qword_27DEAEA78, &qword_237F068D8);
  sub_237CBA478(v85, &v94);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    v41 = v83;
    (*(v83 + 32))(v23, v20, v21);
    sub_237DE08AC(v23, v74, v88, v91, v98, v87, v90, v35);
    (*(v41 + 8))(v23, v21);
    return;
  }

  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  sub_237C863A0(v20, &qword_27DEAD600, &unk_237F049C0);
  sub_237CBA478(v85, &v94);
  v42 = v82;
  v43 = v84;
  v44 = swift_dynamicCast();
  v45 = v90;
  v46 = v88;
  if (v44)
  {
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
    v47 = v81;
    v48 = v80;
    (*(v81 + 32))(v80, v42, v43);
    sub_237DE0C34(v48, v74, v46, v91, v98, v87, v45, v35);
    (*(v47 + 8))(v48, v43);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
    sub_237C863A0(v42, &qword_27DEAEAA0, &unk_237F07330);
    sub_237CBA478(v85, &v94);
    sub_237C75918(0, &qword_27DEAF160, 0x277CBFF48);
    v49 = swift_dynamicCast();
    v50 = v87;
    v51 = v98;
    v52 = v91;
    if (v49)
    {
      v53 = *&v92[0];
      v54 = v79;
      sub_237EF7EB0();
      sub_237DE0C34(v54, v74, v46, v52, v51, v50, v45, v35);
      (*(v81 + 8))(v54, v84);

      return;
    }

    v55 = v87;
    sub_237CBA478(v85, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3990, &qword_237F160D0);
    if (swift_dynamicCast())
    {
      sub_237C531B8(v92, &v94);
      v56 = v96;
      v57 = v97;
      v58 = __swift_project_boxed_opaque_existential_1(&v94, v96);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3910, &qword_237F16030);
      sub_237DE2228();
      sub_237CF04F0(v58, v74, v46, v91, v98, v55, v45, v35, v59, v56, MEMORY[0x277D84DC8], v57);
      goto LABEL_8;
    }

    sub_237CBA478(v85, &v94);
    v60 = v77;
    v61 = v78;
    v62 = swift_dynamicCast();
    v63 = v89;
    if (v62)
    {
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v61);
      v64 = v60;
      v65 = v75;
      v66 = v76;
      (*(v75 + 32))(v76, v64, v61);
      sub_237DE0FC0(v66, v74, v46, v91, v98, v55, v45, v35);
      (*(v65 + 8))(v76, v61);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v61);
      sub_237C863A0(v60, &qword_27DEB3970, qword_237F16078);
      v68 = *v63;
      v67 = v63[1];
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_237EF8260();
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000031, 0x8000000237EFFEF0);
      MEMORY[0x2383E0710](v74, v46);
      MEMORY[0x2383E0710](0x6720747562202C27, 0xEB0000000020746FLL);
      __swift_project_boxed_opaque_existential_1(v85, v85[3]);
      swift_getDynamicType();
      v69 = sub_237EFA220();
      MEMORY[0x2383E0710](v69);

      MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
      *&v92[0] = v45;
      v70 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v70);

      v71 = v94;
      v72 = v95;
      sub_237C84150();
      swift_allocError();
      *v73 = v68;
      *(v73 + 8) = v67;
      *(v73 + 16) = v71;
      *(v73 + 24) = v72;
      *(v73 + 32) = 4;
      swift_willThrow();
    }
  }
}

uint64_t sub_237DE0520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA50, &unk_237F068C0);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEB1968, &qword_27DEAEA50, &unk_237F068C0, MEMORY[0x277CBFD28]);
        sub_237EF7F60();

        v17 = SLODWORD(v31[0]);
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, MEMORY[0x277CBFD28]);
        sub_237EF7F60();

        v17 = v31[0];
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE0C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
        sub_237EF7F60();

        v17 = *v31;
        v18 = sub_237DDE784(v31, a7, a8 + v15);
        *v19 = v17;
        result = (v18)(v31, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = v8[1];
    v30 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v21 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v21);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v22 = MEMORY[0x2383E0A10]();
    v24 = v23;

    MEMORY[0x2383E0710](v22, v24);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v31[4] = a7;
    v25 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v25);

    sub_237C84150();
    swift_allocError();
    *v26 = v30;
    *(v26 + 8) = v20;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0xE000000000000000;
    *(v26 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  *(inited + 32) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA58, &qword_237F17520);
  v12 = sub_237EF7E20();
  v13 = sub_237C60C7C(inited, v12);

  result = swift_setDeallocating();
  if (v13)
  {
    if (a6 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    if (a6)
    {
      v15 = 0;
      while (!__OFADD__(a8, v15))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_237F03530;
        *(v16 + 32) = v15;
        sub_237C96710(&qword_27DEB39A0, &qword_27DEAEA58, &qword_237F17520, MEMORY[0x277CBFD28]);
        sub_237EF7F60();

        _H0 = v36[0];
        __asm { FCVT            S8, H0 }

        v23 = sub_237DDE784(v36, a7, a8 + v15);
        *v24 = _S8;
        result = (v23)(v36, 0);
        if (a6 == ++v15)
        {
          return result;
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v25 = v8[1];
    v35 = *v8;
    sub_237EF8260();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFFF30);
    v26 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v26);

    MEMORY[0x2383E0710](0x656620726F66205DLL, 0xEF27206572757461);
    MEMORY[0x2383E0710](a2, a3);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFFF60);
    sub_237EF7E20();
    v27 = MEMORY[0x2383E0A10]();
    v29 = v28;

    MEMORY[0x2383E0710](v27, v29);

    MEMORY[0x2383E0710](0x20776F7220746120, 0xE800000000000000);
    v36[4] = a7;
    v30 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v30);

    sub_237C84150();
    swift_allocError();
    *v31 = v35;
    *(v31 + 8) = v25;
    *(v31 + 16) = 0;
    *(v31 + 24) = 0xE000000000000000;
    *(v31 + 32) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DE134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v34 = a4;
  v9 = sub_237EF6310();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237EF6100();
  sub_237EF8260();
  sub_237EF8260();
  sub_237DDEBB4(v13, a1, a2, a3, &v29);
  v25 = 0;
  v26 = a1;
  v27 = 0;
  v14 = (v10 + 8);
  v28 = 0;
  sub_237EF8260();
  while (1)
  {
    sub_237E47668(v33);
    if (!v33[2])
    {

      v16 = v31;
      v17 = v32;
      v18 = *(&v32 + 1);
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v24 = v32;

      result = sub_237C863A0(&v21, &qword_27DEB3910, &qword_237F16030);
      v20 = v34;
      *v34 = v16;
      *(v20 + 16) = v17;
      *(v20 + 3) = v18;
      return result;
    }

    v15 = v33[0];
    sub_237EF61D0();
    sub_237C863A0(v33, &qword_27DEB3918, &qword_237F16038);
    sub_237DDED34(v12, v15);
    if (v5)
    {
      break;
    }

    (*v14)(v12, v9);
  }

  (*v14)(v12, v9);

  v21 = v29;
  v22 = v30;
  v23 = v31;
  v24 = v32;
  return sub_237C863A0(&v21, &qword_27DEB3910, &qword_237F16030);
}

uint64_t sub_237DE15C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17D0, &qword_237F0EF38);
  OUTLINED_FUNCTION_1();
  v22 = v1;
  v23 = v0;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF450, &qword_237F08850);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB17C8, &qword_237F0EF30);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB38F8, &qword_237F16028);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  sub_237EF62F0();
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    sub_237EF6280();
    (*(v7 + 8))(v10, v5);
LABEL_7:
    LODWORD(v25) = 2143289344;
    sub_237C96710(&qword_27DEB3900, &qword_27DEB17C8, &qword_237F0EF30, MEMORY[0x277CE18F0]);
    sub_237EF61F0();
    (*(v13 + 8))(v16, v11);
    sub_237C96710(&qword_27DEB3908, &qword_27DEB38F8, &qword_237F16028, MEMORY[0x277CE18A8]);
    return sub_237EF8720();
  }

  v19 = v22;
  v18 = v23;
  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    goto LABEL_7;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237EF62E0();
    sub_237EF6280();
    (*(v19 + 8))(v4, v18);
    goto LABEL_7;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_237EF9330();

  v25 = 0xD00000000000001ELL;
  v26 = 0x8000000237EFFEA0;
  v21 = sub_237EF6300();
  MEMORY[0x2383E0710](v21);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  result = sub_237EF9740("Fatal error", 11, 2, v25, v26, "CreateMLComponents/DataFrame+Matrix.swift", 41, 2, 61);
  __break(1u);
  return result;
}

float sub_237DE1A20@<S0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

float sub_237DE1A34@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_237DE1A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237EF6310();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237DE1A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED60, &unk_237F10530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

float sub_237DE1AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v40 = &v38 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = sub_237EF8140();
  v21 = sub_237EF8160();
  if (v20 == 11)
  {
    if (v21 == 52)
    {
      (*(v10 + 16))(v19, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v10 + 8))(a1, a2);
        return v43;
      }

      else
      {
        sub_237EF8360();
        sub_237EF8150();
        v29 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v38 + 8))(v9, v29);
        v30 = v40;
        sub_237EF8170();
        (*(v10 + 8))(a1, a2);
        v31 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v41 + 8))(v30, v31);
        sub_237EF8BF0();
      }

      return v28;
    }

LABEL_16:
    sub_237CE3484();
    sub_237EF8180();
LABEL_17:
    (*(v10 + 8))(a1, a2);
    return *&v43;
  }

  if (v20 == 8)
  {
    if (v21 == 23)
    {
      (*(v10 + 16))(v16, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_237EF8360();
        sub_237EF8150();
        v24 = v39;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v38 + 8))(v9, v24);
        v25 = v40;
        sub_237EF8170();
        (*(v10 + 8))(a1, a2);
        v26 = v42;
        swift_getAssociatedConformanceWitness();
        sub_237EF91F0();
        (*(v41 + 8))(v25, v26);
        sub_237EF8C40();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v20 != 5 || v21 != 10)
  {
    goto LABEL_16;
  }

  (*(v10 + 16))(v13, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(a1, a2);
    _H0 = LOWORD(v43);
  }

  else
  {
    sub_237EF8360();
    sub_237EF8150();
    v32 = v39;
    swift_getAssociatedConformanceWitness();
    sub_237EF91F0();
    (*(v38 + 8))(v9, v32);
    v33 = v40;
    sub_237EF8170();
    (*(v10 + 8))(a1, a2);
    v34 = v42;
    swift_getAssociatedConformanceWitness();
    sub_237EF91F0();
    (*(v41 + 8))(v33, v34);
    sub_237EFA1C0();
  }

  __asm { FCVT            S0, H0 }

  return result;
}

unint64_t sub_237DE21D4()
{
  result = qword_27DEB3968;
  if (!qword_27DEB3968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3968);
  }

  return result;
}

unint64_t sub_237DE2228()
{
  result = qword_27DEB3998;
  if (!qword_27DEB3998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3998);
  }

  return result;
}

uint64_t sub_237DE2280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = sub_237EF6FA0();
  MEMORY[0x28223BE20](v40);
  v47 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB39A8, &qword_237F160D8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v43 = sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  sub_237EF67E0();
  sub_237EF6A30();
  v25 = *(v18 + 8);
  v25(v24, v16);
  v26 = sub_237EF6470();
  v27 = v9 + 8;
  v28 = *(v9 + 8);
  v41 = v27;
  v42 = v26;
  v29 = v15;
  v30 = v16;
  v31 = v43;
  v28(v29, v43);
  sub_237EF67E0();
  sub_237EF6A30();
  v44 = v25;
  v48 = v18 + 8;
  v25(v21, v30);
  sub_237EF6470();
  v28(v12, v31);
  v32 = v45;
  sub_237EF6FF0();
  sub_237EF67B0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v30) == 1)
  {
    sub_237DE2714(v32);
    sub_237EF7010();
    v33 = v44;
  }

  else
  {
    sub_237EF6AB0();
    v34 = v32;
    v35 = v44;
    v44(v34, v30);
    sub_237EF7010();
    v36 = v39;
    sub_237EF6FB0();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v40);
    sub_237EF7000();
    v33 = v35;
  }

  sub_237EF67E0();
  sub_237EF6AB0();
  v33(v24, v30);
  sub_237EF6FB0();
  sub_237EF7020();
  v37 = sub_237EF6820();
  return (*(*(v37 - 8) + 8))(a1, v37);
}

uint64_t sub_237DE2714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TemporalTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[18] = v10;
  v9[19] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  v9[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v9[22] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v9[23] = v12;
  v9[24] = OUTLINED_FUNCTION_27_0();
  v13 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v13);
  v9[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[26] = v14;
  v9[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23_8();
  v9[28] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[29] = v15;
  v9[30] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237DE29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v16 = sub_237EF8110();
  OUTLINED_FUNCTION_22_14(v16);
  OUTLINED_FUNCTION_23_8();
  v15[23] = sub_237EF8A60();
  sub_237EF8970();
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  v19 = v15[17];
  v20 = v15[14];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = OUTLINED_FUNCTION_15_35();
    v22(v21);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[23] + 32))(v14[24], v14[25], v14[22]);
    sub_237EF8B90();
    v45 = v14[14] + 40;
    OUTLINED_FUNCTION_15_0();
    v46 = v32 + *v32;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[32] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_3_74(v33);
    OUTLINED_FUNCTION_18_3();

    return v43(v35, v36, v37, v38, v39, v40, v41, v42, v45, v46, a11, a12, a13, a14);
  }
}

uint64_t sub_237DE2C78()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 264) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_237DE2D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v15 = *(v14 + 80);
  sub_237EF8A20();
  if (v15)
  {
    v16 = *(v14 + 184);
    a9 = *(v14 + 176);
    a10 = *(v14 + 192);
    v18 = *(v14 + 80);
    v17 = *(v14 + 88);
    (*(*(v14 + 144) + 16))(*(v14 + 152), *(v14 + 136), *(v14 + 96));

    v19 = sub_237EF85D0();
    v21 = v20;
    v22 = sub_237EF8A00();
    v23 = sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v24 = sub_237EF8230();
    *(v14 + 16) = v19;
    *(v14 + 24) = v21;
    *(v14 + 32) = v22;
    *(v14 + 40) = v23;
    *(v14 + 48) = 0;
    *(v14 + 56) = v24;
    v18(v14 + 16);
    sub_237C5EE40(v18, v17);

    (*(v16 + 8))(a10, a9);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_10_47();
    v26(v25);
  }

  v27 = *(v14 + 264);
  v28 = *(v14 + 200);
  v29 = *(v14 + 176);
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v30 = OUTLINED_FUNCTION_15_35();
    v31(v30);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(*(v14 + 184) + 32))(*(v14 + 192), *(v14 + 200), *(v14 + 176));
    sub_237EF8B90();
    if (v27)
    {
      v41 = OUTLINED_FUNCTION_10_47();
      v42(v41);
      v43 = OUTLINED_FUNCTION_6_23();
      v44(v43);

      OUTLINED_FUNCTION_25_25();

      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_18_3();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v66 = *(v14 + 112) + 40;
      OUTLINED_FUNCTION_15_0();
      v67 = v53 + *v53;
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      *(v14 + 256) = v54;
      *v54 = v55;
      OUTLINED_FUNCTION_3_74(v54);
      OUTLINED_FUNCTION_18_3();

      return v64(v56, v57, v58, v59, v60, v61, v62, v63, v66, v67, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237DE3118(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_10_47();
  v2(v1);
  v3 = OUTLINED_FUNCTION_19_35();
  v4(v3);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t TemporalTransformer.applied<A, B, C>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v29;
  v9[19] = v8;
  v9[16] = a8;
  v9[17] = v28;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  OUTLINED_FUNCTION_1_1();
  v9[20] = v11;
  v9[21] = OUTLINED_FUNCTION_27_0();
  v9[22] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[23] = AssociatedTypeWitness;
  v14 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, a7, v13);
  v9[24] = v14;
  OUTLINED_FUNCTION_18(v14);
  v9[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[26] = v15;
  v9[27] = OUTLINED_FUNCTION_27_0();
  v9[28] = *(AssociatedTypeWitness - 8);
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_23_8();
  v9[31] = type metadata accessor for AnnotatedFeature(v16, v17, a7, v18);
  OUTLINED_FUNCTION_1_1();
  v9[32] = v19;
  v9[33] = OUTLINED_FUNCTION_27_0();
  v20 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v20);
  v9[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[35] = v21;
  v9[36] = OUTLINED_FUNCTION_27_0();
  v9[37] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[38] = v22;
  v9[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_237DE350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  v16 = sub_237EF8110();
  OUTLINED_FUNCTION_22_14(v16);
  OUTLINED_FUNCTION_23_8();
  v15[32] = sub_237EF8A60();
  sub_237EF8970();
  v17 = OUTLINED_FUNCTION_19_15();
  v18(v17);
  OUTLINED_FUNCTION_31_6();
  v19 = v15[26];
  v20 = v15[23];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v21 = v14[39];
    OUTLINED_FUNCTION_5_71();
    v50 = v14[21];
    (*(v22 + 8))(v21);
    v48 = v14[8];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30, v48, v50, a11, a12, a13, a14);
  }

  else
  {
    (*(v14[32] + 32))(v14[33], v14[34], v14[31]);
    sub_237EF8B90();
    v32 = OUTLINED_FUNCTION_29_20();
    v51 = v33;
    AnnotatedFeature.feature.getter(v32, v34);
    OUTLINED_FUNCTION_7_55(v51);
    v49 = v35 + *v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[41] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_2_74(v36);
    OUTLINED_FUNCTION_18_3();

    return v46(v38, v39, v40, v41, v42, v43, v44, v45, v49, v51, a11, a12, a13, a14);
  }
}

uint64_t sub_237DE3844()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  v3[42] = v0;

  (*(v3[26] + 8))(v3[27], v3[14]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_237DE397C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 80);
  (*(*(v0 + 224) + 16))(v2, *(v0 + 240), v4);
  AnnotatedFeature.annotation.getter(v1, v5);
  AnnotatedFeature.init(feature:annotation:)(v2, v5, v4, v6, v3);
  sub_237EF8A20();
  if (v7)
  {
    v41 = *(v0 + 248);
    v42 = *(v0 + 264);
    v39 = *(v0 + 240);
    v40 = *(v0 + 256);
    v8 = *(v0 + 224);
    v38 = *(v0 + 184);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 152), *(v0 + 96));

    v11 = sub_237EF85D0();
    v13 = v12;
    v14 = sub_237EF8A00();
    v15 = sub_237EF8710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
    sub_237C758C4();
    v16 = sub_237EF8230();
    *(v0 + 16) = v11;
    *(v0 + 24) = v13;
    *(v0 + 32) = v14;
    *(v0 + 40) = v15;
    *(v0 + 48) = 0;
    *(v0 + 56) = v16;
    v10(v0 + 16);
    sub_237C5EE40(v10, v9);

    (*(v8 + 8))(v39, v38);
    (*(v40 + 8))(v42, v41);
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 184));
    v17 = OUTLINED_FUNCTION_19_35();
    v18(v17);
  }

  v19 = *(v0 + 336);
  v20 = *(v0 + 272);
  v21 = *(v0 + 248);
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v22 = *(v0 + 312);
    OUTLINED_FUNCTION_5_71();
    (*(v23 + 8))(v22);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X2, X16 }
  }

  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 272), *(v0 + 248));
  sub_237EF8B90();
  if (v19)
  {
    v26 = OUTLINED_FUNCTION_11_44();
    v27(v26);
    v28 = OUTLINED_FUNCTION_6_23();
    v29(v28);

    OUTLINED_FUNCTION_5_71();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v32 = OUTLINED_FUNCTION_29_20();
  AnnotatedFeature.feature.getter(v32, v33);
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 328) = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_2_74(v34);
  OUTLINED_FUNCTION_58();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DE3E48(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_11_44();
  v2(v1);
  v3 = OUTLINED_FUNCTION_19_35();
  v4(v3);
  OUTLINED_FUNCTION_5_71();

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t TemporalTransformer.callAsFunction<A>(_:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_7_55(v15);
  v30 = v16 + *v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v14 + 16) = v17;
  *v17 = v18;
  v17[1] = sub_237C6A904;
  OUTLINED_FUNCTION_18_3();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v30, a12, a13, a14);
}

uint64_t TemporalTransformer.callAsFunction<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_0_66();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237D01354;
  OUTLINED_FUNCTION_14_44();

  return TemporalTransformer.applied<A>(to:eventHandler:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of TemporalTransformer.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_0_66();
  OUTLINED_FUNCTION_7_55(v15);
  v30 = v16 + *v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v14 + 16) = v17;
  *v17 = v18;
  v17[1] = sub_237C6A904;
  OUTLINED_FUNCTION_14_44();
  OUTLINED_FUNCTION_18_3();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v30, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_25_25()
{
}

uint64_t ComposedTabularTransformer.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComposedTabularTransformer(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ComposedTabularTransformer.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a5 + 24);
  OUTLINED_FUNCTION_1_1();
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  v6[11] = *(a5 + 16);
  OUTLINED_FUNCTION_1_1();
  v6[12] = v9;
  v6[13] = swift_task_alloc();
  v10 = sub_237EF61A0();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DE46D8, 0, 0);
}

uint64_t sub_237DE46D8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[6];
  ComposedTabularTransformer.inner.getter(v1, v0[13]);
  OUTLINED_FUNCTION_5_72(*(v1 + 32));
  v10 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_237DE47FC;
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return v10(v4, v8, v6, v7, v5, v1);
}

uint64_t sub_237DE47FC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237DE4CF8;
  }

  else
  {
    v8 = sub_237DE4960;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237DE4960(uint64_t a1)
{
  v2 = v1[18];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[15] + 8))(v1[16], v1[14]);

    OUTLINED_FUNCTION_3_0();

    return v3();
  }

  else
  {
    v5 = v1[6];
    ComposedTabularTransformer.outer.getter(v5, v1[10]);
    OUTLINED_FUNCTION_5_72(*(v5 + 40));
    v13 = (v6 + *v6);
    v7 = swift_task_alloc();
    v1[19] = v7;
    *v7 = v1;
    v7[1] = sub_237DE4B00;
    v8 = v1[16];
    v9 = v1[8];
    v10 = v1[4];
    v11 = v1[5];
    v12 = v1[2];

    return v13(v12, v8, v10, v11, v9, v5);
  }
}

uint64_t sub_237DE4B00()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v7 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_237DE4D74;
  }

  else
  {
    v8 = sub_237DE4C64;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237DE4C64()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DE4CF8()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DE4D74()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[14]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DE4E08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DE4E5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DE4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C78AF8;

  return ComposedTabularTransformer.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t ComposedTabularTransformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFFF80);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](8236, 0xE200000000000000);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t static ComposedTabularTransformer<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_237EF8520())
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a7;
    type metadata accessor for ComposedTabularTransformer(0, v14);
    v12 = sub_237EF8520();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ComposedTabularTransformer<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = *(a2 + 16);
  v17 = a3;
  v5 = *(a2 + 40);
  v18 = v16;
  v14 = *(a2 + 24);
  v19 = v14;
  v20 = v5;
  type metadata accessor for ComposedTabularTransformer.CodingKeys(255, &v18);
  OUTLINED_FUNCTION_1_84();
  swift_getWitnessTable();
  v6 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  LOBYTE(v18) = 0;
  v12 = v21;
  sub_237EF9A70();
  if (!v12)
  {
    LOBYTE(v18) = 1;
    sub_237EF9A70();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t ComposedTabularTransformer<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v47 = a7;
  v53 = a5;
  OUTLINED_FUNCTION_1_1();
  v45 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v50 = v16 - v15;
  OUTLINED_FUNCTION_1_1();
  v49 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v54 = v20 - v19;
  v57 = v21;
  v58 = v22;
  v59 = v23;
  v60 = v24;
  type metadata accessor for ComposedTabularTransformer.CodingKeys(255, &v57);
  OUTLINED_FUNCTION_1_84();
  swift_getWitnessTable();
  v56 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v48 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  v55 = a2;
  v57 = a2;
  v58 = a3;
  v51 = a3;
  v59 = a4;
  v60 = a6;
  v29 = type metadata accessor for ComposedTabularTransformer(0, &v57);
  OUTLINED_FUNCTION_1_1();
  v44 = v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v43 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v28;
  v34 = v61;
  sub_237EFA190();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v29;
  v35 = v49;
  v37 = v50;
  v36 = v51;
  LOBYTE(v57) = 0;
  sub_237EF9970();
  (*(v35 + 32))(v33, v54, v55);
  LOBYTE(v57) = 1;
  sub_237EF9970();
  v38 = OUTLINED_FUNCTION_7_2();
  v39(v38);
  v40 = v61;
  (*(v45 + 32))(&v33[*(v61 + 52)], v37, v36);
  v41 = v44;
  (*(v44 + 16))(v46, v33, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v41 + 8))(v33, v40);
}

uint64_t sub_237DE587C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DE5A44(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237DE5CD0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237DE5E24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v55 = a4;
  v56 = a5;
  v57 = a2;
  v58 = a3;
  v52 = a13;
  v53 = a8;
  v50 = a12;
  v51 = a14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D0, &unk_237F166A0);
  OUTLINED_FUNCTION_18(v18);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  v54 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2D8, &unk_237F06050);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298, &qword_237F18630);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[7];
  v59[0] = a6;
  v59[1] = a7;
  v59[2] = v53;
  v59[3] = a10;
  v29 = v51;
  v59[4] = a11;
  v59[5] = v50;
  v59[6] = v52;
  v59[7] = v51;
  v30 = type metadata accessor for FullyConnectedNetworkClassifierModel(0, v59);
  v53 = v30[21];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_237EF8260();
  v35 = sub_237E5E170(v57, v58, a7, a11, v29);
  sub_237C6C074(v27, v35, v28, a9);
  sub_237EF6580();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  sub_237EF6530();
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v44, v45, &unk_237F0361C);
  sub_237EF6680();

  __swift_storeEnumTagSinglePayload(v26, 0, 1, v52);
  result = sub_237DE8DEC(v26, &a9[v53]);
  v47 = &a9[v30[22]];
  v48 = v58;
  *v47 = v57;
  *(v47 + 1) = v48;
  v49 = v56;
  *&a9[v30[23]] = v55;
  *&a9[v30[24]] = v49;
  return result;
}

uint64_t sub_237DE6104(void x0_0, uint64_t a1)
{
  v3 = v2;
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v5, v6, &unk_237F0361C);
  sub_237EF6510();
  v7 = *(a1 + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  if (!__swift_getEnumTagSinglePayload(v3 + v7, 1, v8))
  {
    sub_237EF66A0();
  }
}

uint64_t FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  OUTLINED_FUNCTION_18(v8);
  v6[8] = swift_task_alloc();
  v6[9] = *(a5 + 16);
  v6[10] = *(a5 + 32);
  v9 = sub_237EF7E90();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = sub_237EF6B10();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DE636C, 0, 0);
}

uint64_t sub_237DE636C()
{
  v2 = v0[6];
  v1 = v0[7];
  if (*(v1 + *(v2 + 96)) < 1)
  {
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000014, 0x8000000237EFB950);
    MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237F163F0);
    MEMORY[0x2383E0710](0xD000000000000034, 0x8000000237EFB990);
    sub_237C6514C();
    swift_allocError();
    *v36 = 0;
    v36[1] = 0xE000000000000000;
  }

  else
  {
    v3 = sub_237EF7E20();
    v4 = *(v1 + *(v2 + 92));
    v5 = sub_237C60C7C(v3, v4);

    if (v5)
    {
      v7 = v0[17];
      v6 = v0[18];
      v9 = v0[15];
      v8 = v0[16];
      v11 = v0[14];
      v10 = v0[13];
      v12 = v0[9];
      v45 = v0[10];
      v42 = v12;
      v50 = v0[8];
      v48 = v0[7];
      v13 = v0[6];
      v47 = v0[4];
      (*(v0[12] + 16))(v10, v0[5], v0[11]);
      v44 = v13[5];
      sub_237D4A7B4(v10, v12, v8);
      sub_237EF69B0();
      v14 = *(v9 + 8);
      v15 = v8;
      v14(v8, v11);
      v46 = v6;
      v49 = v7;
      sub_237EF6AE0();
      v14(v7, v11);
      sub_237EF6950();
      v16 = *(type metadata accessor for FullyConnectedNetwork(0) + 28);
      v17 = sub_237EF64B0();
      OUTLINED_FUNCTION_4();
      (*(v18 + 16))(v50, v48 + v16, v17);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v17);
      v19 = swift_task_alloc();
      *(v19 + 16) = v48;
      *(v19 + 24) = v15;
      v43 = v11;
      sub_237EF6520();

      sub_237C65484(v50, &qword_27DEAD5F0, &unk_237F03680);
      v14(v15, v11);
      v0[2] = sub_237EF6AB0();
      v20 = swift_task_alloc();
      v20[2] = v12;
      v41 = v13[3];
      v20[3] = v41;
      v20[4] = v45;
      v20[5] = v44;
      v21 = v13[6];
      v20[6] = v21;
      v22 = v13[7];
      v20[7] = v22;
      v23 = v13[8];
      v20[8] = v23;
      v24 = v13[9];
      v20[9] = v24;
      v20[10] = v48;
      v25 = swift_task_alloc();
      v25[2] = v42;
      v25[3] = v41;
      v25[4] = v45;
      v25[5] = v44;
      v25[6] = v21;
      v25[7] = v22;
      v25[8] = v23;
      v25[9] = v24;
      v25[10] = sub_237DE6B4C;
      v25[11] = v20;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3C0, &qword_237F05670);
      v27 = v24;
      v29 = type metadata accessor for Classification(0, v41, v24, v28);
      v30 = sub_237C96060();
      sub_237C9339C(sub_237DE6B84, v25, v26, v29, MEMORY[0x277D84A98], v30);
      v32 = v31;

      v0[3] = v32;
      v33 = sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      WitnessTable = swift_getWitnessTable();
      ClassificationDistribution.init<A>(_:)((v0 + 3), v41, v33, v27, WitnessTable, v47);
      v14(v49, v43);
      v14(v46, v43);

      v35 = v0[1];
      goto LABEL_7;
    }

    v37 = sub_237EF7E20();
    sub_237EF9330();

    v38 = MEMORY[0x2383E0A10](v4, MEMORY[0x277D83B88]);
    MEMORY[0x2383E0710](v38);

    MEMORY[0x2383E0710](0x7078652073617720, 0xEE002E6465746365);
    sub_237C84150();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = 0xD000000000000025;
    *(v39 + 16) = 0x8000000237EFFFA0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 6;
  }

  swift_willThrow();

  v35 = v0[1];
LABEL_7:

  return v35();
}

uint64_t sub_237DE6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a8;
  v30 = a2;
  v31 = a1;
  v27 = a9;
  v17 = sub_237EF90F0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v26 - v22;
  v32[0] = a3;
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = v28;
  v32[4] = a7;
  v32[5] = v29;
  v32[6] = a11;
  v32[7] = a12;
  v24 = type metadata accessor for FullyConnectedNetworkClassifierModel(0, v32);
  sub_237E5E174(v31, *(v30 + *(v24 + 88)), *(v30 + *(v24 + 88) + 8), a4, v23);
  (*(v18 + 16))(v20, v23, v17);
  result = __swift_getEnumTagSinglePayload(v20, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v23, v17);
    return Classification.init(label:probability:)(v20, a4, a12, v27, a10);
  }

  return result;
}

uint64_t sub_237DE6BC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_237EF6B10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  sub_237EF6420();
  type metadata accessor for FullyConnectedNetwork(0);
  sub_237DE8DA4(&qword_27DEAD2E8, type metadata accessor for FullyConnectedNetwork, &unk_237F0361C);
  sub_237EF6850();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_237EF6400();
  v11 = *MEMORY[0x277D2CD58];
  v12 = sub_237EF64D0();
  (*(*(v12 - 8) + 104))(v2, v11, v12);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v12);
  sub_237EF6570();
  sub_237C65484(v2, &qword_27DEB24C8, &unk_237F16690);
  v10(v6, v3);
  return (v10)(v9, v3);
}

unint64_t sub_237DE6E58(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237DE6EA8(char a1)
{
  result = 0x6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x636E456C6562616CLL;
      break;
    case 2:
      result = 0x6168537475706E69;
      break;
    case 3:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237DE6F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(a1, a2, v9, v10, a5);
}

uint64_t sub_237DE6FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237DE7064(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_237DE70D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_237DE7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_237DE71B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237DE6E58(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237DE71E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237DE6EA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237DE7240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DE6EA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DE727C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DE72D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FullyConnectedNetworkClassifierModel.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 64);
  v6 = *(a2 + 72);
  *v27 = *(a2 + 16);
  v21 = *(a2 + 24);
  *&v27[8] = v21;
  v28 = v4;
  v20 = *(a2 + 48);
  v29 = v20;
  v22 = v6;
  v23 = v5;
  v30 = v5;
  v31 = v6;
  type metadata accessor for FullyConnectedNetworkClassifierModel.CodingKeys(255, v27);
  OUTLINED_FUNCTION_5_73();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v24;
  sub_237EFA1B0();
  v27[0] = 0;
  type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_0_67();
  sub_237DE8DA4(v14, v15, &unk_237F035F4);
  v16 = v25;
  sub_237EF9A70();
  if (!v16)
  {
    *v27 = *(v13 + *(a2 + 88));
    v32 = 1;
    type metadata accessor for LabelEncoder(0, v21, v20, v22);
    v26 = v23;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_9_47(WitnessTable);
    *v27 = *(v13 + *(a2 + 92));
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    v18 = sub_237DA21D0(&qword_280C8CD30, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_9_47(v18);
    v27[0] = 3;
    sub_237EF9A50();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t FullyConnectedNetworkClassifierModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v63 = a5;
  v64 = a8;
  v51 = a9;
  v56 = type metadata accessor for FullyConnectedNetwork(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v59 = v19;
  *&v66 = a2;
  *(&v66 + 1) = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v72 = a10;
  type metadata accessor for FullyConnectedNetworkClassifierModel.CodingKeys(255, &v66);
  OUTLINED_FUNCTION_5_73();
  WitnessTable = swift_getWitnessTable();
  v57 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v52 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  *&v66 = a2;
  *(&v66 + 1) = a3;
  v53 = a3;
  v67 = a4;
  v68 = v63;
  v54 = a6;
  v55 = a7;
  v69 = a6;
  v70 = a7;
  v71 = v64;
  v72 = a10;
  type metadata accessor for FullyConnectedNetworkClassifierModel(0, &v66);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v63 = v29;
  v30 = *(v29 + 84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  v60 = v30;
  OUTLINED_FUNCTION_37_1();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  v58 = v23;
  v36 = v62;
  sub_237EFA190();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_237C65484(&v28[v60], &qword_27DEAD298, &qword_237F18630);
  }

  else
  {
    v37 = v53;
    v38 = v54;
    v39 = v55;
    v62 = v25;
    LOBYTE(v66) = 0;
    OUTLINED_FUNCTION_0_67();
    sub_237DE8DA4(v40, v41, &unk_237F035CC);
    sub_237EF9970();
    sub_237DE7AF8(v59, v28);
    type metadata accessor for LabelEncoder(0, v37, v38, a10);
    v73 = 1;
    v65 = v39;
    v42 = swift_getWitnessTable();
    OUTLINED_FUNCTION_8_60(v42);
    v43 = v63;
    *&v28[*(v63 + 88)] = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    v73 = 2;
    v44 = sub_237DA21D0(&qword_280C8CD28, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_8_60(v44);
    *&v28[*(v43 + 92)] = v66;
    LOBYTE(v66) = 3;
    v45 = sub_237EF9950();
    v46 = OUTLINED_FUNCTION_11_45();
    v47(v46);
    *&v28[*(v43 + 96)] = v45;
    v48 = v62;
    (*(v62 + 16))(v51, v28, v43);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return (*(v48 + 8))(v28, v43);
  }
}

uint64_t sub_237DE7AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullyConnectedNetwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237DE7B5C(uint64_t a1)
{
  v2 = type metadata accessor for FullyConnectedNetwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237DE7C24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DE7C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v122 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v6);
  v120 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v119 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v9);
  v10 = sub_237EF7210();
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v12);
  v130 = sub_237EF6FC0();
  OUTLINED_FUNCTION_1();
  v129 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v15);
  v135 = sub_237EF7260();
  OUTLINED_FUNCTION_1();
  v134 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v18);
  v127 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v126 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_2();
  v124 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22_2(v109 - v23);
  v24 = sub_237EF6E60();
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_3();
  v138 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  OUTLINED_FUNCTION_18(v27);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v30 = v109 - v29;
  v31 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v141 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  v35 = v34;
  sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v142 = v36;
  v143 = v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_2();
  v123 = v38;
  MEMORY[0x28223BE20](v39);
  v41 = v109 - v40;
  sub_237EF7720();
  sub_237EF7620();
  v42 = a1;
  v43 = sub_237EF7EF0();
  sub_237E5E9F0(v43, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_237C65484(v30, &qword_27DEB0E78, &qword_237F0CCF8);
    type metadata accessor for SerializationError(0);
    sub_237DE8DA4(qword_280C8E658, type metadata accessor for SerializationError, &protocol conformance descriptor for SerializationError);
    swift_allocError();
    v45 = v44;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v145 = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v46 = __dst[1];
    *v45 = __dst[0];
    v45[1] = v46;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v143 + 8))(v41, v142);
  }

  else
  {
    v111 = v3;
    v136 = "tworkClassifierModel ";
    v48 = *(v141 + 32);
    v137 = v35;
    v48(v35, v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v114 = sub_237EF70E0();
    OUTLINED_FUNCTION_1();
    v50 = *(v49 + 72);
    v113 = v51;
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    v116 = v31;
    *(v53 + 16) = xmmword_237F03530;
    v112 = *(v140 + *(v42 + 92));
    sub_237EF6CF0();
    OUTLINED_FUNCTION_27_9();
    sub_237EF7090();
    v117 = v41;
    sub_237EF76B0();
    v115 = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_237F04760;
    v55 = v54 + v52;
    v56 = *(v42 + 24);
    v58 = *(v42 + 48);
    v57 = *(v42 + 56);
    v59 = *(v42 + 64);
    v60 = *(v42 + 72);
    v138 = v55;
    OUTLINED_FUNCTION_10_48();
    v61 = v139;
    sub_237DA0968(v62, v63, v64, v65);
    if (v61)
    {
      (*(v141 + 8))(v137, v116);
      (*(v143 + 8))(v117, v142);
      *(v54 + 16) = 0;
    }

    else
    {
      v110 = v42;
      v66 = v117;
      OUTLINED_FUNCTION_10_48();
      sub_237DA0AC0(v67, v68, v69, v70);
      v139 = 0;
      v109[1] = v56;
      v113 = v60;
      v114 = v59;
      v115 = v57;
      v138 = v58;
      v71 = v66;
      sub_237EF7700();
      sub_237EF7600();
      sub_237EF7640();
      sub_237EF75E0();
      if (*(v112 + 16) < 2uLL)
      {
        OUTLINED_FUNCTION_27_9();
        v83 = v140;
        sub_237C6CEB4();
        v147 = v84;
        v82 = v142;
        v79 = v143;
      }

      else
      {
        v72 = v125;
        sub_237EF6FD0();
        sub_237C6CEB4();
        v74 = v73;
        (*(v126 + 16))(v124, v72, v127);
        sub_237D0BC38(0, 1, 1, MEMORY[0x277D84F90]);
        v76 = v75;
        v78 = *(v75 + 16);
        v77 = *(v75 + 24);
        v79 = v143;
        if (v78 >= v77 >> 1)
        {
          sub_237D0BC38(v77 > 1, v78 + 1, 1, v75);
          v76 = v108;
        }

        *(v76 + 16) = v78 + 1;
        v80 = v126;
        v81 = v127;
        (*(v126 + 32))(v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v78, v124, v127);
        v147 = v76;
        sub_237E4868C(v74);
        (*(v80 + 8))(v125, v81);
        v82 = v142;
        v83 = v140;
      }

      v85 = v133;
      sub_237EF7250();
      (*(v129 + 104))(v128, *MEMORY[0x277D25168], v130);
      sub_237EF7230();
      sub_237EF7240();
      __dst[11] = *(v83 + *(v110 + 88));
      v86 = sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      WitnessTable = swift_getWitnessTable();
      v88 = v139;
      sub_237DA0C74(v86, WitnessTable, v131);
      v139 = v88;
      if (v88)
      {
        (*(v134 + 8))(v85, v135);
        v89 = OUTLINED_FUNCTION_14_45();
        v90(v89);
        return (*(v79 + 8))(v71, v82);
      }

      else
      {
        sub_237EF7220();
        v91 = v118;
        (*(v134 + 16))(v118, v85, v135);
        (*(v119 + 104))(v91, *MEMORY[0x277D25398], v120);
        sub_237EF7660();
        v92 = *(v79 + 16);
        v93 = v123;
        v92();
        sub_237EF7810();
        v94 = type metadata accessor for CoreMLPackage(0);
        v95 = v121;
        v96 = v121 + *(v94 + 24);
        *(v96 + 80) = 0;
        *(v96 + 48) = 0u;
        *(v96 + 64) = 0u;
        *(v96 + 16) = 0u;
        *(v96 + 32) = 0u;
        *v96 = 0u;
        (v92)(v95, v93, v82);
        memcpy(__dst, v96, 0x58uLL);
        sub_237C65484(__dst, &unk_27DEAD7B0, &unk_237F03CA0);
        *v96 = 0u;
        *(v96 + 16) = 0u;
        *(v96 + 32) = 0u;
        *(v96 + 48) = 0u;
        *(v96 + 64) = 0u;
        *(v96 + 80) = 0;
        v97 = v122;
        v98 = v111;
        (*(v122 + 16))(v95 + *(v94 + 20), v132, v111);
        v99 = sub_237E34060();
        v101 = v100;
        v102 = sub_237EF7780();
        v104 = v103;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v144 = *v104;
        sub_237C91098(v99, v101, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
        *v104 = v144;
        v102(&v145, 0);
        (*(v97 + 8))(v132, v98);
        v106 = *(v79 + 8);
        v107 = v142;
        v106(v123, v142);
        (*(v134 + 8))(v133, v135);
        (*(v141 + 8))(v137, v116);
        return (v106)(v117, v107);
      }
    }
  }
}

void sub_237DE8B28(void *a1)
{
  type metadata accessor for FullyConnectedNetwork(319);
  if (v2 <= 0x3F)
  {
    sub_237DE8C18(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for LabelEncoder(319, a1[3], a1[6], a1[9]);
      if (v4 <= 0x3F)
      {
        sub_237CFF010();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237DE8C18(uint64_t a1)
{
  if (!qword_27DEB3AC0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAD2A0, &qword_237F135A0);
    v1 = sub_237EF90F0();
    if (!v2)
    {
      atomic_store(v1, qword_27DEB3AC0);
    }
  }
}

_BYTE *sub_237DE8C7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_237DE8DA4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237DE8DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD298, &qword_237F18630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_8_60(uint64_t a1)
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_9_47(uint64_t a1)
{

  return sub_237EF9A70();
}

uint64_t Transformer.adaptedAsAnnotatedFeatureTransformer<A>(annotationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, a2, v7);
  return (*(v6 + 32))(a3, v9, a2);
}

uint64_t sub_237DE901C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_237DE9158(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DE935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v10 = a5[3];
  v5[4] = v10;
  v5[5] = *(v10 - 8);
  v5[6] = swift_task_alloc();
  v11 = a5[4];
  v5[7] = v11;
  v12 = a5[2];
  v5[8] = v12;
  v5[9] = swift_getAssociatedTypeWitness();
  v13 = swift_task_alloc();
  v5[10] = v13;
  v16 = (*(v11 + 24) + **(v11 + 24));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_237DE9558;

  return v16(v13, a2, a3, a4, v12, v11);
}

uint64_t sub_237DE9558()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_237D60E04;
  }

  else
  {
    v2 = sub_237DE966C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237DE966C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v5, v9);
  (*(v4 + 16))(v3, v6 + *(v10 + 36), v5);
  AnnotatedFeature.init(feature:annotation:)(v2, v3, v1, v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_237DE9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return sub_237DE935C(a1, a2, a3, a4, a5);
}

uint64_t HumanBodyActionCounter.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a2;
  v7[6] = *(a5 - 8);
  v7[7] = swift_task_alloc();
  v7[8] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3BC8, &qword_237F16728);
  v7[9] = *(a6 + 8);
  v9 = sub_237EF9AE0();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *v6;
  v12 = v6[1];
  v7[13] = v10;
  v7[14] = v11;
  v13 = v6[2];
  v7[15] = v12;
  v7[16] = v13;

  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DE99AC, 0, 0);
}

uint64_t sub_237DE99AC()
{
  v1 = *(v0 + 128);
  v14 = *(v0 + 112);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v15 = *(v0 + 96);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v16 = *(v0 + 16);
  (*(*(v0 + 48) + 16))();
  v7 = swift_allocObject();
  *(v7 + 16) = v14;
  *(v7 + 32) = v1;
  sub_237EF8BD0();

  (*(v3 + 16))(v15, v2, v4);
  v8 = (*(v5 + 24))(v6, v5);
  LOBYTE(v5) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3D8, &qword_237F07050);
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v15, v8, v5 & 1, v10, v4, WitnessTable, v16);
  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_237DE9B9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = a2[1];
  *(v5 + 40) = a1;
  *(v5 + 48) = v6;
  *(v5 + 56) = v7;
  *(v5 + 64) = *(a2 + 1);
  v8 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  v9 = swift_task_alloc();
  *(v5 + 88) = v9;
  *v9 = v5;
  v9[1] = sub_237DE9C54;

  return sub_237CC4F40(v8);
}

uint64_t sub_237DE9C54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_237DE9EC8;
  }

  else
  {
    v4 = sub_237DE9D68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_237DE9D68()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_237EF8260();
    sub_237C63670(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 36);
    do
    {
      v5 = *(v4 - 1);
      v6 = 0.0;
      if (v5 != 0.0 && (*v4 & 0x7FFFFFFF) != 0)
      {
        v6 = 1.0 / v5;
      }

      v8 = *(v15 + 16);
      v7 = *(v15 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_237C63670(v7 > 1, v8 + 1, 1);
      }

      *(v15 + 16) = v8 + 1;
      *(v15 + 4 * v8 + 32) = v6;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    sub_237EF8260();

    v3 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 64);
  *v11 = *(v0 + 48);
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = v3;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_237DE9EE0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_237C5FFA4;

  return sub_237DE9B9C(a1, a2, v6, v7, v8);
}

unint64_t sub_237DE9FA8()
{
  result = qword_27DEB3BD0[0];
  if (!qword_27DEB3BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3BD0);
  }

  return result;
}

uint64_t sub_237DE9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C5FFA4;

  return HumanBodyActionCounter.applied<A>(to:eventHandler:)(a1, a2, v11, v12, a5, a6);
}

uint64_t PreprocessingSupervisedEstimator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for PreprocessingSupervisedEstimator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t PreprocessingSupervisedEstimator.preprocessed<A>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[12] = a6;
  v7[13] = v6;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[7] = a1;
  v7[14] = a4[4];
  v7[15] = a4[2];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_13();
  v9 = sub_237EF8A60();
  v7[16] = v9;
  v7[17] = a4[5];
  v7[18] = a4[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[19] = AssociatedTypeWitness;
  v11 = sub_237EF9640();
  v7[20] = v11;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v7[21] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v13 = swift_getWitnessTable();
  v7[22] = v13;
  v7[2] = v9;
  v7[3] = v11;
  v7[4] = WitnessTable;
  v7[5] = v13;
  v7[23] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v7[24] = swift_getWitnessTable();
  v14 = sub_237EF9340();
  v7[25] = v14;
  OUTLINED_FUNCTION_6_1(v14);
  v7[26] = v15;
  v7[27] = OUTLINED_FUNCTION_27_0();
  v7[28] = *(v11 - 8);
  v7[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[30] = v16;
  v7[31] = OUTLINED_FUNCTION_27_0();
  v17 = OUTLINED_FUNCTION_43_13();
  v7[32] = type metadata accessor for AnnotatedFeature(v17, v18, AssociatedTypeWitness, v19);
  v7[33] = sub_237EF9640();
  v7[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v7[35] = v20;
  v7[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v21 = sub_237EF9340();
  v7[37] = v21;
  OUTLINED_FUNCTION_6_1(v21);
  v7[38] = v22;
  v7[39] = OUTLINED_FUNCTION_27_0();
  v7[40] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v23 = sub_237EF9640();
  v7[41] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v7[42] = v24;
  v7[43] = OUTLINED_FUNCTION_27_0();
  v25 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_237DEA64C()
{
  v1 = v0[38];
  v26 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  v24 = v2;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[11];
  v25 = v0[10];
  v8 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v8);
  v9 = swift_task_alloc();
  *v9 = v5;
  v9[1] = v3;
  v9[2] = v7;
  v9[3] = v4;
  v9[4] = v2;
  v9[5] = v6;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v7;
  v11[5] = v4;
  v11[6] = v24;
  v11[7] = v6;
  v11[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  v0[44] = swift_getWitnessTable();
  sub_237EF9860();

  v0[45] = *(v1 + 8);
  v0[46] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_31_0();
  v13(v12);
  PreprocessingSupervisedEstimator.preprocessor.getter(v25, v26);
  v14 = swift_task_alloc();
  v0[47] = v14;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v14 = v16;
  v14[1] = sub_237DEA830;
  v17 = v0[43];
  v18 = v0[41];
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[8];
  v22 = v0[9];

  return Transformer.applied<A>(to:eventHandler:)(v17, v21, v22, v19, v18, v20, v15);
}

uint64_t sub_237DEA830(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *v6 = *v2;
  v5[48] = v1;

  v7 = v4[36];
  v8 = v4[35];
  v9 = v4[15];
  if (!v1)
  {
    v5[49] = a1;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_237DEA9AC()
{
  v18 = v0[45];
  v25 = v0[42];
  v26 = v0[41];
  v27 = v0[43];
  v30 = v0[39];
  v15 = v0[37];
  v28 = v0[31];
  v22 = v0[30];
  v29 = v0[29];
  v17 = v0[28];
  v21 = v0[27];
  v24 = v0[26];
  v23 = v0[25];
  v19 = v0[23];
  v20 = v0[24];
  v16 = v0[20];
  v1 = v0[17];
  v2 = v0[18];
  v0[6] = v0[49];
  v3 = v0[15];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  MEMORY[0x2383E08A0](v6, v5);
  v7 = swift_task_alloc();
  *v7 = v3;
  v7[1] = v2;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v2;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v1;
  v9[7] = v5;
  v9[8] = KeyPath;
  sub_237EF9860();

  v18(v30, v15);
  sub_237EFA000();
  (*(v17 + 8))(v29, v16);

  MEMORY[0x2383E08A0](v19, v20);
  (*(v22 + 8))(v28, v19);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v1;
  v10[7] = v5;
  OUTLINED_FUNCTION_70();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v2;
  v11[4] = v6;
  v11[5] = v4;
  v11[6] = v1;
  v11[7] = v5;
  v11[8] = sub_237DEB128;
  v11[9] = v10;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v24 + 8))(v21, v23);
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  v12 = sub_237EF92D0();
  (*(v25 + 8))(v27, v26);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_237DEAD7C()
{
  (*(v0[42] + 8))(v0[43], v0[41]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DEAE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v10, v11);
  return AnnotatedFeature.feature.setter(v8, v12);
}

uint64_t sub_237DEAF78()
{
  OUTLINED_FUNCTION_42_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v2, v3);
  return v0(v4);
}

uint64_t sub_237DEB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, v10, AssociatedTypeWitness, v11);
  return AnnotatedFeature.annotation.setter(v8, v12);
}

uint64_t sub_237DEB12C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t PreprocessingSupervisedEstimator.fitted<A>(toPreprocessed:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v2;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v1[10] = *(v2 + 16);
  v1[11] = OUTLINED_FUNCTION_27_0();
  v1[12] = *(v3 + 24);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v3 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_40_11();
  v1[19] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_237DEB344()
{
  OUTLINED_FUNCTION_12_2();
  PreprocessingSupervisedEstimator.estimator.getter(v0[6], v0[14]);
  OUTLINED_FUNCTION_15_0();
  v12 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_237DEB46C;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return v12(v3, v10, v8, v9, v6, v7, v5, v4);
}

uint64_t sub_237DEB46C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  v7 = OUTLINED_FUNCTION_13_6();
  v8(v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DEB6B0()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A, B>(toPreprocessed:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  v11[11] = a10;
  v11[12] = v10;
  v11[9] = v14;
  v11[10] = a9;
  v11[7] = v12;
  v11[8] = v15;
  v11[5] = v16;
  v11[6] = v17;
  v11[3] = v18;
  v11[4] = v19;
  v11[2] = v20;
  v11[13] = *(v12 + 16);
  v11[14] = OUTLINED_FUNCTION_27_0();
  v11[15] = *(v13 + 24);
  OUTLINED_FUNCTION_1_1();
  v11[16] = v21;
  v11[17] = OUTLINED_FUNCTION_27_0();
  v11[18] = *(v13 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[20] = v23;
  v11[21] = OUTLINED_FUNCTION_40_11();
  v11[22] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v24, v25, v26);
}

void sub_237DEB880()
{
  OUTLINED_FUNCTION_2_0();
  PreprocessingSupervisedEstimator.estimator.getter(v0[7], v0[17]);
  OUTLINED_FUNCTION_15_0();
  v3 = v1 + *v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_237DEB9BC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DEB9BC()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 192) = v0;

  v7 = OUTLINED_FUNCTION_13_6();
  v8(v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DEBC00()
{
  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_3();
  v3 = v2;
  v1[13] = v4;
  v1[14] = v0;
  v1[11] = v2;
  v1[12] = v5;
  v1[9] = v6;
  v1[10] = v7;
  v1[7] = v8;
  v1[8] = v9;
  v1[15] = *(v2 + 32);
  v1[16] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_237EF8A60();
  v1[17] = v11;
  v1[18] = *(v3 + 40);
  v1[19] = *(v3 + 24);
  v12 = swift_getAssociatedTypeWitness();
  v1[20] = v12;
  v13 = sub_237EF9640();
  v1[21] = v13;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v1[22] = WitnessTable;
  OUTLINED_FUNCTION_1_5();
  v15 = swift_getWitnessTable();
  v1[23] = v15;
  v1[2] = v11;
  v1[3] = v13;
  v1[4] = WitnessTable;
  v1[5] = v15;
  v1[24] = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  v1[25] = swift_getWitnessTable();
  v16 = sub_237EF9340();
  v1[26] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v1[27] = v17;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[29] = v18;
  v1[30] = OUTLINED_FUNCTION_27_0();
  v1[31] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v12, v19);
  v20 = sub_237EF9640();
  v1[32] = v20;
  OUTLINED_FUNCTION_6_1(v20);
  v1[33] = v21;
  v1[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[35] = v22;
  v1[36] = OUTLINED_FUNCTION_27_0();
  v23 = swift_getAssociatedTypeWitness();
  v1[37] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v1[38] = v24;
  v1[39] = OUTLINED_FUNCTION_40_11();
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v1[41] = v25;
  v1[42] = OUTLINED_FUNCTION_40_11();
  v1[43] = swift_task_alloc();
  v1[44] = *(v13 - 8);
  v1[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_43_0();
  v26 = sub_237EF9340();
  v1[46] = v26;
  OUTLINED_FUNCTION_6_1(v26);
  v1[47] = v27;
  v1[48] = OUTLINED_FUNCTION_27_0();
  v1[49] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43_0();
  v28 = sub_237EF9640();
  v1[50] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v1[51] = v29;
  v1[52] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_18_3();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_237DEC110()
{
  v31 = v0[48];
  v32 = v0[46];
  v33 = v0[47];
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v30 = v0[43];
  v6 = v0[12];
  v29 = v0[11];
  v7 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v7);
  v8 = swift_task_alloc();
  *v8 = v3;
  v8[1] = v1;
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v5;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v1;
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v2;
  v10[7] = v5;
  v10[8] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v28 = *(v33 + 8);
  v28(v31, v32);
  v11 = OUTLINED_FUNCTION_11_19();
  MEMORY[0x2383E08A0](v11);
  v12 = swift_task_alloc();
  *v12 = v3;
  v12[1] = v1;
  v12[2] = v6;
  v12[3] = v4;
  v13 = v4;
  v12[4] = v2;
  v12[5] = v5;
  v14 = swift_getKeyPath();

  OUTLINED_FUNCTION_75();
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = v1;
  v15[4] = v6;
  v15[5] = v13;
  v15[6] = v2;
  v15[7] = v5;
  v15[8] = v14;
  sub_237EF9860();

  v16 = OUTLINED_FUNCTION_31_0();
  (v28)(v16);
  PreprocessingSupervisedEstimator.preprocessor.getter(v29, v30);
  v17 = swift_task_alloc();
  v0[53] = v17;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v17 = v18;
  v17[1] = sub_237DEC3D4;
  OUTLINED_FUNCTION_65_1();

  return Transformer.applied<A>(to:eventHandler:)(v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_237DEC3D4()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;
  *(v8 + 432) = v7;
  *(v8 + 440) = v0;

  (*(v2[41] + 8))(v2[43], v2[16]);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_237DEC52C(uint64_t a1)
{
  v2 = v1[55];
  sub_237EF8B90();
  if (v2)
  {

    (*(v1[44] + 8))(v1[45], v1[21]);
    v3 = OUTLINED_FUNCTION_31_0();
    v4(v3);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_65_1();

    __asm { BRAA            X1, X16 }
  }

  v7 = v1[54];
  v8 = v1[30];
  v9 = v1[28];
  v10 = v1[29];
  v24 = v1[27];
  v23 = v1[26];
  v11 = v1[24];
  v17 = v1[25];
  v22 = v1[19];
  v25 = v1[18];
  v21 = v1[15];
  v19 = v1[16];
  v20 = v1[13];
  v18 = v1[12];
  PreprocessingSupervisedEstimator.estimator.getter(v1[11], v1[36]);
  v1[6] = v7;
  sub_237EFA000();

  MEMORY[0x2383E08A0](v11, v17);
  (*(v10 + 8))(v8, v11);
  v12 = swift_allocObject();
  v12[2] = v19;
  v12[3] = v22;
  v12[4] = v18;
  v12[5] = v21;
  v12[6] = v25;
  v12[7] = v20;
  OUTLINED_FUNCTION_70();
  v13 = swift_allocObject();
  v13[2] = v19;
  v13[3] = v22;
  v13[4] = v18;
  v13[5] = v21;
  v13[6] = v25;
  v13[7] = v20;
  v13[8] = sub_237DF008C;
  v13[9] = v12;
  swift_getWitnessTable();
  sub_237EF9860();

  (*(v24 + 8))(v9, v23);
  OUTLINED_FUNCTION_15_0();
  v14 = swift_task_alloc();
  v1[56] = v14;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  *v14 = v1;
  v14[1] = sub_237DEC90C;
  OUTLINED_FUNCTION_65_1();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DEC90C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  v5 = v2[36];
  v6 = v2[35];
  v7 = v2[19];
  (*(v2[33] + 8))(v2[34], v2[32]);
  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237DECAC4()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];
  v4 = v0[42];
  v5 = v0[39];
  v12 = v0[40];
  v6 = v0[37];
  v7 = v0[38];
  v14 = v0[16];
  v15 = v0[15];
  v8 = v0[11];
  v13 = v0[7];
  (*(v0[44] + 8))();
  (*(v2 + 8))(v1, v3);
  PreprocessingSupervisedEstimator.preprocessor.getter(v8, v4);
  (*(v7 + 32))(v5, v12, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v4, v5, v14, v6, v15, AssociatedConformanceWitness, v13);

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_237DECC88()
{
  v0 = OUTLINED_FUNCTION_9_48();
  v1(v0);
  v2 = OUTLINED_FUNCTION_13_6();
  v3(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DECD80()
{
  v0 = OUTLINED_FUNCTION_9_48();
  v1(v0);
  v2 = OUTLINED_FUNCTION_13_6();
  v3(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DECE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_37_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = OUTLINED_FUNCTION_21_33(v8, v14);
  v10(v9);
  v11 = OUTLINED_FUNCTION_46_13();
  v12(v11);
  return OUTLINED_FUNCTION_39_12();
}

uint64_t PreprocessingSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[21] = a10;
  v11[22] = v10;
  v11[19] = a8;
  v11[20] = a9;
  v11[17] = a6;
  v11[18] = a7;
  v11[15] = a4;
  v11[16] = a5;
  v11[13] = a2;
  v11[14] = a3;
  v11[12] = a1;
  v11[23] = a6[4];
  v11[24] = a6[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_237EF8A60();
  v11[25] = v14;
  v11[26] = a6[5];
  v11[27] = a6[3];
  v15 = swift_getAssociatedTypeWitness();
  v11[28] = v15;
  OUTLINED_FUNCTION_43_13();
  v16 = sub_237EF9640();
  v11[29] = v16;
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  v11[30] = WitnessTable;
  v18 = swift_getWitnessTable();
  v11[31] = v18;
  v11[2] = v14;
  v11[3] = v16;
  v11[4] = WitnessTable;
  v11[5] = v18;
  v11[32] = sub_237EF9380();
  v11[33] = swift_getWitnessTable();
  OUTLINED_FUNCTION_65_2();
  v19 = sub_237EF9340();
  v11[34] = v19;
  OUTLINED_FUNCTION_6_1(v19);
  v11[35] = v20;
  v11[36] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[37] = v21;
  v11[38] = OUTLINED_FUNCTION_27_0();
  v11[39] = type metadata accessor for AnnotatedFeature(255, AssociatedTypeWitness, v15, v22);
  OUTLINED_FUNCTION_65_2();
  v23 = sub_237EF9640();
  v11[40] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v11[41] = v24;
  v11[42] = OUTLINED_FUNCTION_27_0();
  v25 = sub_237EF9640();
  v11[43] = v25;
  v26 = swift_getWitnessTable();
  v11[44] = v26;
  v11[6] = v14;
  v11[7] = v25;
  v11[8] = WitnessTable;
  v11[9] = v26;
  v11[45] = sub_237EF9380();
  v11[46] = swift_getWitnessTable();
  v27 = sub_237EF9340();
  v11[47] = v27;
  OUTLINED_FUNCTION_6_1(v27);
  v11[48] = v28;
  v11[49] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[50] = v29;
  v11[51] = OUTLINED_FUNCTION_27_0();
  v30 = sub_237EF9640();
  v11[52] = v30;
  OUTLINED_FUNCTION_6_1(v30);
  v11[53] = v31;
  v11[54] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v11[55] = v32;
  v11[56] = OUTLINED_FUNCTION_27_0();
  v33 = swift_getAssociatedTypeWitness();
  v11[57] = v33;
  OUTLINED_FUNCTION_6_1(v33);
  v11[58] = v34;
  v11[59] = OUTLINED_FUNCTION_40_11();
  v11[60] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[61] = v35;
  v11[62] = OUTLINED_FUNCTION_40_11();
  v11[63] = swift_task_alloc();
  v11[64] = swift_task_alloc();
  v11[65] = *(v16 - 8);
  v11[66] = OUTLINED_FUNCTION_27_0();
  v36 = sub_237EF9340();
  v11[67] = v36;
  OUTLINED_FUNCTION_6_1(v36);
  v11[68] = v37;
  v11[69] = OUTLINED_FUNCTION_27_0();
  v11[70] = swift_getAssociatedTypeWitness();
  v38 = sub_237EF9640();
  v11[71] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v11[72] = v39;
  v11[73] = OUTLINED_FUNCTION_27_0();
  v11[74] = *(v25 - 8);
  v11[75] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v40 = sub_237EF9340();
  v11[76] = v40;
  OUTLINED_FUNCTION_6_1(v40);
  v11[77] = v41;
  v11[78] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_65_2();
  v42 = sub_237EF9640();
  v11[79] = v42;
  OUTLINED_FUNCTION_6_1(v42);
  v11[80] = v43;
  v11[81] = OUTLINED_FUNCTION_27_0();
  v44 = OUTLINED_FUNCTION_6_2();
  return OUTLINED_FUNCTION_23_2(v44, v45, v46);
}

uint64_t sub_237DED754()
{
  v46 = v0[77];
  v40 = v0[76];
  v47 = v0[69];
  v48 = v0[68];
  v42 = v0[67];
  v38 = v0[64];
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v45 = v0[21];
  v6 = v0[19];
  v5 = v0[20];
  v41 = v6;
  v7 = v0[18];
  v37 = v0[17];
  MEMORY[0x2383E08A0](v7, v5);
  v8 = swift_task_alloc();
  *v8 = v4;
  v8[1] = v1;
  v49 = v1;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v3;
  v8[5] = v2;
  v9 = v3;
  v39 = v3;
  v10 = v2;
  v44 = v2;
  v8[6] = v5;
  v8[7] = v45;
  KeyPath = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v1;
  v12[4] = v7;
  v12[5] = v41;
  v12[6] = v9;
  v12[7] = v10;
  v12[8] = v5;
  v12[9] = v45;
  v12[10] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  swift_getWitnessTable();
  sub_237EF9860();

  v36 = *(v46 + 8);
  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  MEMORY[0x2383E08A0](v7, v5);
  v15 = swift_task_alloc();
  *v15 = v4;
  v15[1] = v1;
  v15[2] = v7;
  v15[3] = v41;
  v15[4] = v39;
  v15[5] = v44;
  v15[6] = v5;
  v15[7] = v45;
  v35 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v1;
  v16[4] = v7;
  v16[5] = v41;
  v16[6] = v39;
  v16[7] = v44;
  v16[8] = v5;
  v16[9] = v45;
  v16[10] = v35;
  sub_237EF9860();

  v17 = OUTLINED_FUNCTION_31_0();
  v36(v17);
  OUTLINED_FUNCTION_56_10();
  v18 = swift_task_alloc();
  *v18 = v4;
  v18[1] = v1;
  v18[2] = v7;
  v18[3] = v41;
  v18[4] = v39;
  v18[5] = v44;
  v18[6] = v5;
  v18[7] = v40;
  v19 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = v49;
  v20[4] = v7;
  v20[5] = v41;
  v20[6] = v39;
  v20[7] = v44;
  v20[8] = v5;
  v20[9] = v45;
  v20[10] = v19;
  swift_getWitnessTable();
  sub_237EF9860();

  v43 = *(v48 + 8);
  v43(v47, v42);
  OUTLINED_FUNCTION_56_10();
  v21 = swift_task_alloc();
  *v21 = v4;
  v21[1] = v49;
  v21[2] = v7;
  v21[3] = v41;
  v21[4] = v39;
  v21[5] = v44;
  v21[6] = v5;
  v21[7] = v19;
  v22 = swift_getKeyPath();

  OUTLINED_FUNCTION_79();
  v23 = swift_allocObject();
  v23[2] = v4;
  v23[3] = v49;
  v23[4] = v7;
  v23[5] = v41;
  v23[6] = v39;
  v23[7] = v44;
  v23[8] = v5;
  v23[9] = v19;
  v23[10] = v22;
  sub_237EF9860();

  v24 = OUTLINED_FUNCTION_31_0();
  (v43)(v24);
  PreprocessingSupervisedEstimator.preprocessor.getter(v37, v38);
  v25 = swift_task_alloc();
  v0[82] = v25;
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_2();
  *v25 = v27;
  v25[1] = sub_237DEDC84;
  v28 = v0[81];
  v29 = v0[79];
  v31 = v0[23];
  v30 = v0[24];
  v32 = v0[15];
  v33 = v0[16];

  return Transformer.applied<A>(to:eventHandler:)(v28, v32, v33, v30, v29, v31, v26);
}

uint64_t sub_237DEDC84()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v3[83] = v7;
  v3[84] = v0;

  v8 = v2[64];
  v9 = v2[61];
  v10 = v2[24];
  v13 = *(v9 + 8);
  v11 = v9 + 8;
  v12 = v13;
  if (!v0)
  {
    v3[85] = v12;
    v3[86] = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v12(v8, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237DEDDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v32 = v29[84];
  sub_237EF8B90();
  v77 = v32;
  if (v32)
  {

    OUTLINED_FUNCTION_44_12();
    v63 = v34;
    v64 = v33;
    v35 = v29[75];
    v36 = v29[74];
    v37 = v29[73];
    v38 = v29[72];
    OUTLINED_FUNCTION_33_16();
    v65 = v39;
    v66 = v40;
    v67 = v41;
    v68 = v29[62];
    v69 = v29[60];
    v70 = v29[59];
    v71 = v29[56];
    v72 = v29[54];
    v73 = v29[51];
    v74 = v29[49];
    v42 = v29[43];
    v75 = v29[42];
    v76 = v29[38];
    v43 = OUTLINED_FUNCTION_38_10();
    v44(v43);
    (*(v38 + 8))(v37, v31);
    (*(v36 + 8))(v35, v42);
    (*(v30 + 8))(v28, v63);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_50_3();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a23, v77, a25, a26, a27, a28);
  }

  else
  {
    PreprocessingSupervisedEstimator.preprocessor.getter(v29[17], v29[63]);
    v54 = swift_task_alloc();
    v29[87] = v54;
    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    *v54 = v29;
    v54[1] = sub_237DEE058;
    OUTLINED_FUNCTION_50_3();

    return Transformer.applied<A>(to:eventHandler:)(v55, v56, v57, v58, v59, v60, v61);
  }
}

uint64_t sub_237DEE058()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v6 = v5;
  v3[88] = v7;
  v3[89] = v0;

  (v2[85])(v3[63], v3[24]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237DEE1B4(uint64_t a1)
{
  v4 = v1[89];
  sub_237EF8B90();
  if (!v4)
  {
    v16 = v1[83];
    v38 = v1[88];
    v17 = v1[51];
    v18 = v1[50];
    v30 = v1[49];
    v33 = v1[48];
    v32 = v1[47];
    v19 = v1[45];
    v31 = v1[46];
    v35 = v1[38];
    v44 = v1[36];
    v41 = v1[35];
    v39 = v1[37];
    v40 = v1[34];
    v37 = v1[33];
    v36 = v1[32];
    v29 = v1[27];
    v43 = v1[24];
    v28 = v1[21];
    v27 = v1[20];
    v20 = v1[18];
    v42 = v1[19];
    PreprocessingSupervisedEstimator.estimator.getter(v1[17], v1[56]);
    v1[10] = v16;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v19, v31);
    (*(v18 + 8))(v17, v19);
    OUTLINED_FUNCTION_70();
    v21 = swift_allocObject();
    v21[2] = v43;
    v21[3] = v29;
    v21[4] = v20;
    v21[5] = v42;
    v21[7] = OUTLINED_FUNCTION_51_8(v21);
    v21[8] = v27;
    v21[9] = v28;
    v22 = swift_allocObject();
    v22[2] = v43;
    v22[3] = v29;
    v22[4] = v20;
    v22[5] = v42;
    v22[7] = OUTLINED_FUNCTION_51_8(v22);
    v22[8] = v27;
    v22[9] = v28;
    v22[10] = sub_237DEF2F8;
    v22[11] = v21;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v33 + 8))(v30, v32);
    v1[11] = v38;
    sub_237EFA000();

    MEMORY[0x2383E08A0](v36, v37);
    (*(v39 + 8))(v35, v36);
    OUTLINED_FUNCTION_70();
    v23 = swift_allocObject();
    v23[2] = v43;
    v23[3] = v29;
    v23[4] = v20;
    v23[5] = v42;
    v23[7] = OUTLINED_FUNCTION_51_8(v23);
    v23[8] = v27;
    v23[9] = v28;
    v24 = swift_allocObject();
    v24[2] = v43;
    v24[3] = v29;
    v24[4] = v20;
    v24[5] = v42;
    v24[7] = OUTLINED_FUNCTION_51_8(v24);
    v24[8] = v27;
    v24[9] = v28;
    v24[10] = sub_237DF0090;
    v24[11] = v23;
    swift_getWitnessTable();
    sub_237EF9860();

    (*(v41 + 8))(v44, v40);
    OUTLINED_FUNCTION_15_0();
    v45 = v25 + *v25;
    v26 = swift_task_alloc();
    v1[90] = v26;
    swift_getWitnessTable();
    swift_getWitnessTable();
    *v26 = v1;
    v26[1] = sub_237DEE810;

    __asm { BRAA            X8, X16 }
  }

  v5 = v1[88];

  OUTLINED_FUNCTION_44_12();
  v34 = v6;
  v7 = v1[75];
  v8 = v1[74];
  v9 = v1[73];
  v10 = v1[72];
  OUTLINED_FUNCTION_33_16();
  v11 = v1[43];
  v12 = OUTLINED_FUNCTION_38_10();
  v13(v12);
  (*(v10 + 8))(v9, v3);
  (*(v8 + 8))(v7, v11);
  (*(v2 + 8))(v5, v34);

  OUTLINED_FUNCTION_3_0();

  return v14();
}

uint64_t sub_237DEE810()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 728) = v0;

  v5 = v2[56];
  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[53];
  v9 = v2[52];
  v10 = v2[27];
  (*(v2[41] + 8))(v2[42], v2[40]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v10);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237DEEA24()
{
  v1 = v0[80];
  v18 = v0[79];
  v19 = v0[81];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v14 = v0[71];
  v15 = v0[62];
  v17 = v0[59];
  v6 = v0[57];
  v7 = v0[43];
  v20 = v0[24];
  v21 = v0[23];
  v8 = v0[17];
  v16 = v0[12];
  (*(v0[65] + 8))();
  (*(v5 + 8))(v4, v14);
  (*(v3 + 8))(v2, v7);
  (*(v1 + 8))(v19, v18);
  PreprocessingSupervisedEstimator.preprocessor.getter(v8, v15);
  v9 = OUTLINED_FUNCTION_31_0();
  v10(v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTransformer.init(_:_:)(v15, v17, v20, v6, v21, AssociatedConformanceWitness, v16);

  OUTLINED_FUNCTION_3_0();

  return v12();
}

uint64_t sub_237DEEC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 672));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 712));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEEEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_45_11();
  v29 = OUTLINED_FUNCTION_2_75(*(v28 + 728));
  v30(v29);
  v31 = OUTLINED_FUNCTION_29_21();
  v32(v31);
  v33 = OUTLINED_FUNCTION_27_22();
  v34(v33);
  v35 = OUTLINED_FUNCTION_28_22();
  v36(v35);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_50_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_237DEF028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v10, v11);
  return AnnotatedFeature.feature.setter(v8, v12);
}

uint64_t sub_237DEF148()
{
  OUTLINED_FUNCTION_42_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for AnnotatedFeature(0, AssociatedTypeWitness, v2, v3);
  return v0(v4);
}

uint64_t sub_237DEF1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  (*(v9 + 16))(&v14 - v7, a1, AssociatedTypeWitness, v6);
  v10 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for AnnotatedFeature(0, v10, AssociatedTypeWitness, v11);
  return AnnotatedFeature.annotation.setter(v8, v12);
}

uint64_t sub_237DEF2FC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237DEF3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_37_14();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = OUTLINED_FUNCTION_21_33(v9, v15);
  v11(v10);
  v12 = OUTLINED_FUNCTION_46_13();
  v13(v12);
  return OUTLINED_FUNCTION_39_12();
}

uint64_t PreprocessingSupervisedEstimator.encode(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[5];
  v6 = a3[2];
  v7 = a3[3];
  OUTLINED_FUNCTION_43_13();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = a3[4];
  v13[0] = v6;
  v13[1] = AssociatedTypeWitness;
  v13[2] = v9;
  v13[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for ComposedTransformer(0, v13);
  return (*(v5 + 56))(a1 + *(v10 + 52), a2, v7, v5);
}

uint64_t PreprocessingSupervisedEstimator.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v32 = a3;
  v33 = v6;
  OUTLINED_FUNCTION_1_1();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v34 = v10 - v9;
  v12 = *(v11 + 40);
  v13 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v30 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = v3;
  v24 = v35;
  result = (*(v12 + 64))(a1, v13, v12, v20);
  if (!v24)
  {
    v26 = v33;
    (*(v31 + 16))(v34, v23, v33);
    (*(v30 + 32))(v18, v22, AssociatedTypeWitness);
    v27 = *(a2 + 32);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return ComposedTransformer.init(_:_:)(v34, v18, v26, AssociatedTypeWitness, v27, AssociatedConformanceWitness, v32);
  }

  return result;
}

uint64_t sub_237DEF89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237DF0088;

  return PreprocessingSupervisedEstimator.fitted<A>(to:eventHandler:)();
}

uint64_t sub_237DEF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_237CEF6D4;

  return PreprocessingSupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v21, a6, a7, a8, v20);
}

uint64_t sub_237DEFC34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DEFDFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_75@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = v1[66];
  v4 = v1[36];
  *(v2 - 96) = v1[38];
  *(v2 - 88) = v4;
  return v3;
}

uint64_t OUTLINED_FUNCTION_31_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return ComposedTransformer.init(_:_:)(v13, v11, a10, v12, v10, a1, a9);
}

uint64_t OUTLINED_FUNCTION_39_12()
{

  return AnnotatedFeature.init(feature:annotation:)(v3, v4, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_40_11()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_56_10()
{

  JUMPOUT(0x2383E08A0);
}

uint64_t LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v6;
  v1[10] = v4;
  v1[7] = v8;
  v1[8] = v9;
  OUTLINED_FUNCTION_1_1();
  v1[13] = v10;
  v11 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_20_31(v11);
  v1[15] = v12;
  v1[16] = OUTLINED_FUNCTION_27_0();
  v13 = v7[3];
  v1[17] = v13;
  v14 = v7[4];
  v1[18] = v14;
  v15 = v7[5];
  v1[19] = v15;
  v1[2] = v13;
  v1[3] = v5;
  v1[4] = v14;
  v1[5] = v15;
  v1[6] = v3;
  v1[20] = _s18PredictionSequenceVMa_0(0, (v1 + 2));
  v1[21] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237DF0488()
{
  v1 = v0[21];
  v2 = v0[18];
  v14 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[8];
  v15 = v0[7];
  v16 = v0[20];
  (*(v0[15] + 16))(v3, v0[12], v0[9]);
  (*(v6 + 16))(v5, v9, v8);
  sub_237DF05F4(v3, v5, v4, v8, v2, v14, v7, v1);
  v10 = sub_237EF7E90();
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:)(v1, v10, v16, WitnessTable, v15);

  OUTLINED_FUNCTION_10_3();

  return v12();
}

uint64_t sub_237DF05F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, a3, a5, a6);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v17 = _s18PredictionSequenceVMa_0(0, v19);
  return (*(*(a4 - 8) + 32))(a8 + *(v17 + 60), a2, a4);
}

uint64_t sub_237DF06E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6B728;

  return LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)();
}

uint64_t sub_237DF07B0(uint64_t *a1)
{
  result = type metadata accessor for LinearTimeSeriesForecaster.Model(319, a1[2], a1[4], a1[5]);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237DF08C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 48);
  v25[1] = *(v12 + 8);
  v26 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = v25 - v14;
  v16 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  type metadata accessor for LinearTimeSeriesForecaster.Model(0, v16, v17, v18);
  OUTLINED_FUNCTION_1_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v25 - v21;
  (*(v23 + 16))(v25 - v21, v3, v20);
  (*(v7 + 16))(v10, v3 + *(a1 + 60), v5);
  sub_237EF8BC0();
  return sub_237DF0ACC(v22, v15, v16, v5, v17, v18, v26, v27);
}

uint64_t sub_237DF0ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  v13 = _s18PredictionSequenceV13AsyncIteratorVMa_0(0, v25);
  *(a8 + v13[18]) = 0;
  v14 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, a3, a5, a6);
  OUTLINED_FUNCTION_77();
  v16 = v15;
  (*(v15 + 16))(a8, a1, v14);
  v17 = v13[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_77();
  v20 = v19;
  (*(v19 + 16))(a8 + v17, a2, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237F04760;
  *(v21 + 32) = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v14);
  *(v21 + 40) = *(a1 + *(v14 + 44));
  sub_237D14E78(v21);
  (*(v20 + 8))(a2, AssociatedTypeWitness);
  result = (*(v16 + 8))(a1, v14);
  v23 = (a8 + v13[17]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = 1;
  return result;
}

uint64_t sub_237DF0CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237DF08C8(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_237DF0D74(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = a2[2];
  v3[6] = a2[4];
  v5 = sub_237EF7E90();
  v3[7] = v5;
  OUTLINED_FUNCTION_1_1();
  v3[8] = v6;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for TemporalFeature(255, v5, v7, v8);
  OUTLINED_FUNCTION_23_8();
  v9 = sub_237EF90F0();
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v10 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_20_31(v10);
  v3[15] = v11;
  v3[16] = OUTLINED_FUNCTION_27_0();
  v3[17] = a2[6];
  v3[18] = a2[3];
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v3[19] = v14;
  *v14 = v15;
  v14[1] = sub_237DF0FB4;

  return MEMORY[0x282200308](v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_237DF0FB4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF10B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 16);
    (*(*(v0 + 104) + 8))(v1, *(v0 + 96));
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v2);
    OUTLINED_FUNCTION_17_38();

    OUTLINED_FUNCTION_10_3();
LABEL_5:

    return v4();
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 24);
  (*(*(v0 + 120) + 32))(v6, v1, v2);
  sub_237DF1A4C(v6 + *(v2 + 28), v7);
  v8 = *(v0 + 128);
  if (v5)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 88));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_5;
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v10 + 68);
  *(v0 + 216) = v12;
  v13 = v11 + v12;
  v14 = *(v11 + v12);
  v15 = *(v11 + v12 + 8);
  if (v14 != *v8 || v15 != v8[1])
  {
    v17 = sub_237EF9D40();
    v18 = *(v0 + 128);
    v10 = *(v0 + 24);
    if (v17)
    {
      v8 = *(v0 + 128);
    }

    else
    {
      *(*(v0 + 32) + *(v10 + 72)) = 0;
      v19 = *v18;
      v20 = v8[1];
      v23 = *(v18 + 1);
      v21 = v18[4];
      sub_237EF8260();

      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v23;
      *(v13 + 32) = v21;
      v8 = *(v0 + 128);
      v10 = *(v0 + 24);
    }
  }

  sub_237DF1C24(v8, v10);
  v22 = swift_task_alloc();
  *(v0 + 168) = v22;
  *v22 = v0;
  v22[1] = sub_237DF1324;

  return sub_237DF1EDC();
}

uint64_t sub_237DF1324()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF1420()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[4] + *(v3 + 72));
  v5 = *(v3 + 40);
  v0[23] = v5;
  v6 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, v1, v2, v5);
  v0[24] = v6;
  if (v4 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v6))
  {
    v11 = v0[4];
    v12 = *(v0[3] + 64);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[25] = v13;
    *v13 = v14;
    v13[1] = sub_237DF1588;
    v15 = v0[10];

    return LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(v15, v11 + v12, 0, 0, v6);
  }

  else
  {
    v7 = v0[11];
    v8 = v0[2];
    (*(v0[15] + 8))(v0[16], v7);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v7);
    OUTLINED_FUNCTION_17_38();

    OUTLINED_FUNCTION_10_3();

    return v9();
  }
}

uint64_t sub_237DF1588()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF1684()
{
  v27 = v0;
  v1 = *(*(v0 + 32) + *(v0 + 216) + 16);
  result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(*(v0 + 192));
  v3 = v1 + result;
  if (__OFADD__(v1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  result = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(*(v0 + 192));
  if (__OFADD__(v3, result))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 + result < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v0 + 192);
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  v24 = *(v0 + 184);
  v5 = *(v0 + 120);
  v6 = *(v0 + 80);
  v20 = *(v0 + 88);
  v7 = *(v0 + 64);
  v18 = *(v0 + 72);
  v8 = *(v0 + 56);
  v21 = *(v0 + 48);
  v9 = *(v0 + 32);
  v19 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = (v9 + *(v0 + 216));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[4];
  v25 = *(v0 + 128);
  v26[0] = v12;
  v26[1] = v13;
  v26[2] = v3;
  v26[3] = v3 + result;
  v26[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_237F04760;
  sub_237EF8260();
  *(v15 + 32) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v4);
  *(v15 + 40) = *(v9 + *(v4 + 48));
  sub_237EF7E60();

  (*(v7 + 8))(v6, v8);
  TemporalFeature.init(id:feature:)(v26, v18, v8, v10, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  sub_237DF24A8(v9, v19, v22, v21, v24, v23);
  (*(v5 + 8))(v25, v20);
  OUTLINED_FUNCTION_17_38();

  OUTLINED_FUNCTION_10_3();

  return v17();
}

uint64_t sub_237DF1898()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DF1910()
{
  OUTLINED_FUNCTION_12_2();
  (*(v0[15] + 8))(v0[16], v0[11]);
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DF19A0()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  sub_237DF24A8(v0[4], v0[5], v0[18], v0[6], v0[23], v0[17]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_16_40();

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t sub_237DF1A4C(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  sub_237EF7E90();
  v6 = sub_237EF7E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F03530;
  v8 = *(v2 + *(type metadata accessor for LinearTimeSeriesForecaster.Model(0, v4, v5, a2[5]) + 44));
  *(inited + 32) = v8;
  v9 = sub_237C60C7C(v6, inited);

  result = swift_setDeallocating();
  if ((v9 & 1) == 0)
  {
    v11 = sub_237EF7E20();
    sub_237EF9330();

    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_237F03530;
    *(v12 + 32) = v8;
    v13 = MEMORY[0x2383E0A10]();
    v15 = v14;

    MEMORY[0x2383E0710](v13, v15);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    sub_237C84150();
    swift_allocError();
    *v16 = v11;
    *(v16 + 8) = 0xD00000000000001CLL;
    *(v16 + 16) = 0x8000000237EFFCB0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 6;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DF1C24(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_34_0();
  sub_237EF7EE0();
  OUTLINED_FUNCTION_1_1();
  v29 = v6;
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237F04760;
  v27 = *(a2 + 72);
  v11 = *(v2 + v27);
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3698, &qword_237F16A80);
  *(v10 + 64) = sub_237C96710(qword_27DEB36A0, &qword_27DEB3698, &qword_237F16A80, MEMORY[0x277CBFDB0]);
  *(v10 + 32) = v11;
  *(v10 + 40) = v11;
  v28 = v11;
  v12 = OUTLINED_FUNCTION_34_0();
  v15 = *(v2 + *(type metadata accessor for LinearTimeSeriesForecaster.Model(v12, v13, v4, v14) + 44));
  *(v10 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  OUTLINED_FUNCTION_6_15();
  result = sub_237C96710(v16, &qword_27DEADDA0, &qword_237F0A6B0, v17);
  *(v10 + 104) = result;
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v10 + 72) = 0;
  *(v10 + 80) = v15;
  v19 = sub_237EF7E90();
  type metadata accessor for TemporalFeature(0, v19, v20, v21);
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  v22 = v31;
  sub_237EF7FC0();
  v23 = v30;
  sub_237EF7EC0();
  (*(v29 + 8))(v8, v23);
  result = sub_237EF7FB0();
  v24 = v2 + *(a2 + 68);
  v25 = *(v22 + 24);
  if (v25 < *(v24 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v24 + 24) = v25;
  if (!__OFADD__(v28, 1))
  {
    *(v2 + v27) = v28 + 1;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237DF1EDC()
{
  OUTLINED_FUNCTION_2_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *(v2 + 16);
  v1[5] = *(v2 + 32);
  v3 = sub_237EF7E90();
  v6 = type metadata accessor for TemporalFeature(255, v3, v4, v5);
  v1[6] = v6;
  OUTLINED_FUNCTION_34_0();
  v7 = sub_237EF90F0();
  v1[7] = v7;
  v1[8] = *(v7 - 8);
  v1[9] = OUTLINED_FUNCTION_27_0();
  v1[10] = *(v6 - 8);
  v1[11] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_237DF2000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v0 + 120) = v3;
  v4 = *(v1 + 40);
  *(v0 + 96) = v4;
  v5 = *(v2 + v3);
  v6 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, *(v0 + 32), *(v0 + 40), v4);
  if (v5 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v6))
  {

    OUTLINED_FUNCTION_10_3();

    return v12();
  }

  else
  {
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_34_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_29_19();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    *(v0 + 104) = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_2_76(v7);

    return MEMORY[0x282200308](v9, v10, v11);
  }
}

uint64_t sub_237DF2134()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF2230()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 64) + 8))(v1, *(v0 + 56));
    goto LABEL_3;
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 16);
  (*(*(v0 + 80) + 32))(v5, v1, v2);
  sub_237DF1A4C(v5 + *(v2 + 28), v6);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 48);
  if (v4)
  {
    (*(v8 + 8))(*(v0 + 88), *(v0 + 48));

    OUTLINED_FUNCTION_3_0();
    goto LABEL_6;
  }

  sub_237DF1C24(*(v0 + 88), *(v0 + 16));
  (*(v8 + 8))(v7, v9);
  v11 = *(*(v0 + 24) + *(v0 + 120));
  v12 = type metadata accessor for LinearTimeSeriesForecaster.Model(0, *(v0 + 32), *(v0 + 40), *(v0 + 96));
  if (v11 >= LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v12))
  {
LABEL_3:

    OUTLINED_FUNCTION_10_3();
LABEL_6:

    return v3();
  }

  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_19();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 104) = v13;
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_2_76(v13);

  return MEMORY[0x282200308](v15, v16, v17);
}

uint64_t sub_237DF2440()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DF24A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v6 = _s18PredictionSequenceV13AsyncIteratorVMa_0(0, v8);
  return sub_237DF24EC(v6);
}

uint64_t sub_237DF24EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v23 = *(a1 + 16);
  v4 = sub_237EF7EE0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
  v7 = swift_allocObject();
  v22 = xmmword_237F04760;
  *(v7 + 16) = xmmword_237F04760;
  v8 = *(a1 + 72);
  v9 = *(v1 + v8);
  result = sub_237DF0D48(a1);
  v11 = v9 - result;
  if (__OFSUB__(v9, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v21[0] = v8;
  v21[1] = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADDA0, &qword_237F0A6B0);
  *(v7 + 56) = v12;
  OUTLINED_FUNCTION_6_15();
  result = sub_237C96710(v13, &qword_27DEADDA0, &qword_237F0A6B0, v14);
  *(v7 + 64) = result;
  if (v11 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = result;
  *(v7 + 32) = 0;
  *(v7 + 40) = v11;
  result = type metadata accessor for LinearTimeSeriesForecaster.Model(0, v23, v3, *(a1 + 40));
  v16 = *(v1 + *(result + 44));
  *(v7 + 96) = v12;
  *(v7 + 104) = v15;
  if (v16 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v7 + 72) = 0;
  *(v7 + 80) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  result = sub_237DF0D48(a1);
  *(v17 + 56) = v12;
  *(v17 + 64) = v15;
  if (v9 < result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v17 + 32) = result;
  *(v17 + 40) = v9;
  *(v17 + 96) = v12;
  *(v17 + 104) = v15;
  *(v17 + 72) = 0;
  *(v17 + 80) = v16;
  sub_237EF7E90();
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7FB0();
  result = sub_237DF0D48(a1);
  if (__OFSUB__(v9, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + v21[0]) = v9 - result;
  v18 = v1 + *(a1 + 68);
  v19 = *(v18 + 16);
  result = sub_237DF0D48(a1);
  v20 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v18 + 24) >= v20)
  {
    *(v18 + 16) = v20;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237DF275C(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C6A904;

  return sub_237DF0D74(a1, a2);
}

uint64_t sub_237DF2804(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DF2858(void *a1)
{
  result = type metadata accessor for LinearTimeSeriesForecaster.Model(319, a1[2], a1[4], a1[5]);
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = sub_237EF7E90();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_40()
{
}

uint64_t OUTLINED_FUNCTION_17_38()
{
}

uint64_t sub_237DF2A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_237DF2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_98_1();
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  (*(*(a4 - 8) + 8))(a1, a4);
  v12 = OUTLINED_FUNCTION_20_3();
  v14 = type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor(v12, v13);
  OUTLINED_FUNCTION_0_68();
  v17[0] = v14;
  v17[1] = a3;
  v17[2] = swift_getWitnessTable();
  v17[3] = a5;
  v15 = type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator(0, v17);
  return (*(*(a3 - 8) + 32))(a6 + *(v15 + 52), a2, a3);
}

uint64_t sub_237DF2C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_73();
  v12 = v11;
  v10[12] = a9;
  v10[13] = v9;
  v10[10] = v11;
  v10[11] = v13;
  v10[8] = v14;
  v10[9] = v15;
  v10[6] = v16;
  v10[7] = v17;
  v10[4] = v18;
  v10[5] = v19;
  v10[14] = *(*(v14 + 40) + 8);
  v10[15] = *(v14 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[16] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v10[17] = v21;
  v10[18] = swift_task_alloc();
  v10[19] = swift_task_alloc();
  OUTLINED_FUNCTION_84_3();
  v22 = swift_getAssociatedTypeWitness();
  v10[20] = v22;
  OUTLINED_FUNCTION_1();
  v10[21] = v23;
  v10[22] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_84_3();
  swift_getAssociatedTypeWitness();
  v10[23] = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  v10[24] = v24;
  OUTLINED_FUNCTION_42();
  v29 = type metadata accessor for AnnotatedFeature(v25, v26, v27, v28);
  v10[25] = v29;
  OUTLINED_FUNCTION_18(v29);
  v10[26] = OUTLINED_FUNCTION_27_0();
  v10[27] = *(v24 - 8);
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v10[30] = type metadata accessor for AnnotatedFeature(0, v12, v22, v30);
  OUTLINED_FUNCTION_1();
  v10[31] = v31;
  v10[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_9_24();
  v32 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v32);
  v10[33] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v10[34] = v33;
  v10[35] = OUTLINED_FUNCTION_27_0();
  v34 = swift_getAssociatedTypeWitness();
  v10[36] = v34;
  OUTLINED_FUNCTION_6_1(v34);
  v10[37] = v35;
  v10[38] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v36 = swift_checkMetadataState();
  v10[39] = v36;
  OUTLINED_FUNCTION_6_1(v36);
  v10[40] = v37;
  v10[41] = swift_task_alloc();
  v10[42] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v10[43] = v38;
  *v38 = v39;
  v38[1] = sub_237DF30F4;
  OUTLINED_FUNCTION_68_4();

  return v42(v40, v41);
}

uint64_t sub_237DF30F4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_237DF31F4(uint64_t a1)
{
  v2 = v1[44];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[40] + 8))(v1[42], v1[39]);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v1[2] = sub_237EF8110();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  OUTLINED_FUNCTION_48();
  v7 = v1[33];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_5(v7);
  if (!v9)
  {
    v10 = OUTLINED_FUNCTION_56_6();
    v11(v10);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v1[45] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_28_23(v12);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v1[37] + 8))(v1[38], v1[36]);
  sub_237EF8B90();
  v16 = v1[2];
  v1[3] = v16;
  v1[47] = v16;
  OUTLINED_FUNCTION_15_0();
  v17 = swift_task_alloc();
  v1[48] = v17;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_2();
  *v17 = v18;
  OUTLINED_FUNCTION_27_23();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DF359C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_237DF369C()
{
  v1 = v0[27];
  v26 = v0[29];
  v2 = v0[24];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v26, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[46];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (!v11)
  {
    v16 = OUTLINED_FUNCTION_56_6();
    v17(v16);
    OUTLINED_FUNCTION_15_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[45] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_28_23(v18);
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X8, X16 }
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_237EF8B90();
  if (v9)
  {

    v12 = OUTLINED_FUNCTION_31_0();
    v13(v12);
    OUTLINED_FUNCTION_14_28();
    OUTLINED_FUNCTION_74_1();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_54_3();

    __asm { BRAA            X1, X16 }
  }

  v22 = v0[2];
  v0[3] = v22;
  v0[47] = v22;
  OUTLINED_FUNCTION_15_0();
  v23 = swift_task_alloc();
  v0[48] = v23;
  OUTLINED_FUNCTION_23_8();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_94_2();
  *v23 = v24;
  OUTLINED_FUNCTION_27_23();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DF3A74()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 392) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF3B7C()
{
  v1 = v0[41];
  v2 = v0[39];
  v11 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[4];
  (*(v0[40] + 32))(v1);
  (*(v5 + 32))(v4, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v4, v2, v6, v11, AssociatedConformanceWitness, v7);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237DF3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73();
  v11[17] = a10;
  v11[18] = v10;
  v11[15] = v48;
  v11[16] = a9;
  v11[13] = v12;
  v11[14] = v47;
  v11[11] = v13;
  v11[12] = v14;
  v11[9] = v15;
  v11[10] = v16;
  v11[7] = v17;
  v11[8] = v18;
  v11[6] = v19;
  v11[19] = *(*(v13 + 40) + 8);
  v11[20] = *(v13 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[21] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v11[22] = v21;
  v11[23] = swift_task_alloc();
  v11[24] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[25] = v22;
  v11[26] = OUTLINED_FUNCTION_27_0();
  v23 = swift_getAssociatedTypeWitness();
  v11[27] = v23;
  OUTLINED_FUNCTION_6_1(v23);
  v11[28] = v24;
  v11[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_83_3();
  v25 = swift_getAssociatedTypeWitness();
  v11[30] = v25;
  OUTLINED_FUNCTION_1();
  v11[31] = v26;
  v11[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_83_3();
  swift_getAssociatedTypeWitness();
  v11[33] = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v11[34] = v27;
  v28 = OUTLINED_FUNCTION_23_8();
  v31 = type metadata accessor for AnnotatedFeature(v28, v29, v25, v30);
  v11[35] = v31;
  OUTLINED_FUNCTION_18(v31);
  v11[36] = OUTLINED_FUNCTION_27_0();
  v11[37] = *(v27 - 8);
  v11[38] = swift_task_alloc();
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = type metadata accessor for AnnotatedFeature(0, v47, v25, v32);
  OUTLINED_FUNCTION_1();
  v11[42] = v33;
  v11[43] = swift_task_alloc();
  v11[44] = swift_task_alloc();
  OUTLINED_FUNCTION_23_8();
  v34 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v34);
  v11[45] = swift_task_alloc();
  v11[46] = swift_task_alloc();
  OUTLINED_FUNCTION_1_1();
  v11[47] = v35;
  v11[48] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_9_24();
  v36 = swift_getAssociatedTypeWitness();
  v11[49] = v36;
  OUTLINED_FUNCTION_6_1(v36);
  v11[50] = v37;
  v11[51] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v38 = swift_checkMetadataState();
  v11[52] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v11[53] = v39;
  v11[54] = swift_task_alloc();
  v11[55] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v11[56] = v40;
  *v40 = v41;
  v40[1] = sub_237DF42B8;
  OUTLINED_FUNCTION_68_4();

  return v44(v42, v43);
}

uint64_t sub_237DF42B8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 456) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237DF43B8()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[57];
  sub_237EF8B90();
  if (v1)
  {
    (*(v0[53] + 8))(v0[55], v0[52]);
    OUTLINED_FUNCTION_11_29();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_39_7();

    return v2();
  }

  else
  {
    v0[2] = sub_237EF8110();
    v5 = OUTLINED_FUNCTION_44();
    v6(v5);
    OUTLINED_FUNCTION_48();
    v7 = v0[46];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
    OUTLINED_FUNCTION_46_5(v7);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_69_3();
      (*(v11 + 8))(v10);
      v0[3] = sub_237EF8110();
      OUTLINED_FUNCTION_89_0();
      v12();
      sub_237EF86F0();
      v13 = v0[45];
      v14 = v0[41];
      v15 = v0[27];
      swift_getAssociatedConformanceWitness();
      sub_237EF91A0();
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
      {
        v16 = OUTLINED_FUNCTION_53_5();
        v17(v16);
        sub_237EF8B90();
        OUTLINED_FUNCTION_8_38();
        v44 = swift_task_alloc();
        OUTLINED_FUNCTION_44_6(v44);
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_71_2();
        v45 = swift_getAssociatedConformanceWitness();
        *v15 = v0;
        OUTLINED_FUNCTION_6_31(v45);
        OUTLINED_FUNCTION_81();

        __asm { BRAA            X8, X16 }
      }

      v30 = OUTLINED_FUNCTION_19_23();
      v32 = v31(v30);
      OUTLINED_FUNCTION_12_29(v32, v33, v34, v35, v36, v37, v38, v39, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[60] = v40;
      *v40 = v41;
      OUTLINED_FUNCTION_10_49(v40);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_48_6();
      v20 = v19(v18);
      OUTLINED_FUNCTION_12_29(v20, v21, v22, v23, v24, v25, v26, v27, v48, v49, v50, v51, v52, v53, v54, v55, 0);
      swift_task_alloc();
      OUTLINED_FUNCTION_30_0();
      v0[58] = v28;
      *v28 = v29;
      OUTLINED_FUNCTION_34_11(v28);
    }

    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v42();
  }
}

uint64_t sub_237DF48A8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 472) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF49A8()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[37];
  v60 = v0[36];
  v2 = v0[34];
  v61 = v0[35];
  v62 = v0[40];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v62, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[59];
  v10 = v0[49];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (!v12)
  {
    v24 = OUTLINED_FUNCTION_48_6();
    v26 = v25(v24);
    OUTLINED_FUNCTION_12_29(v26, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[58] = v34;
    *v34 = v35;
    OUTLINED_FUNCTION_34_11(v34);
LABEL_9:
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v48();
  }

  v13 = OUTLINED_FUNCTION_69_3();
  v14 = v0[26];
  (*(v15 + 8))(v13);
  v0[3] = sub_237EF8110();
  OUTLINED_FUNCTION_42();
  v16();
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v10);
  if (!v12)
  {
    v36 = OUTLINED_FUNCTION_19_23();
    v38 = v37(v36);
    OUTLINED_FUNCTION_12_29(v38, v39, v40, v41, v42, v43, v44, v45, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[60] = v46;
    *v46 = v47;
    OUTLINED_FUNCTION_10_49(v46);
    goto LABEL_9;
  }

  v17 = OUTLINED_FUNCTION_53_5();
  v18(v17);
  sub_237EF8B90();
  if (!v9)
  {
    OUTLINED_FUNCTION_8_38();
    v50 = swift_task_alloc();
    OUTLINED_FUNCTION_44_6(v50);
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_71_2();
    v51 = swift_getAssociatedConformanceWitness();
    *v14 = v0;
    OUTLINED_FUNCTION_6_31(v51);
    OUTLINED_FUNCTION_81();

    __asm { BRAA            X8, X16 }
  }

  v19 = OUTLINED_FUNCTION_31_0();
  v20(v19);
  OUTLINED_FUNCTION_11_29();
  OUTLINED_FUNCTION_33_10();

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_39_7();

  return v21();
}

uint64_t sub_237DF4E68()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF4F70()
{
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_40_8();
  v1 = v0[43];
  v2 = v0[37];
  v43 = v0[36];
  v3 = v0[34];
  v44 = v0[35];
  v45 = v0[38];
  v4 = OUTLINED_FUNCTION_26_23();
  v5(v4);
  v6 = OUTLINED_FUNCTION_27_16();
  v7(v6);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v2 + 8))(v45, v3);
  v8 = OUTLINED_FUNCTION_51_9();
  v9(v8);
  v10 = v0[61];
  OUTLINED_FUNCTION_50_6();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  OUTLINED_FUNCTION_46_5(v2 + 8);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_53_5();
    v13(v12);
    sub_237EF8B90();
    if (!v10)
    {
      OUTLINED_FUNCTION_8_38();
      v33 = swift_task_alloc();
      OUTLINED_FUNCTION_44_6(v33);
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_71_2();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *v1 = v0;
      OUTLINED_FUNCTION_6_31(AssociatedConformanceWitness);
      OUTLINED_FUNCTION_81();

      __asm { BRAA            X8, X16 }
    }

    v14 = OUTLINED_FUNCTION_31_0();
    v15(v14);
    OUTLINED_FUNCTION_11_29();
    OUTLINED_FUNCTION_33_10();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_39_7();

    return v16();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_19_23();
    v21 = v20(v19);
    OUTLINED_FUNCTION_12_29(v21, v22, v23, v24, v25, v26, v27, v28, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[60] = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_10_49(v29);
    OUTLINED_FUNCTION_18_23();
    OUTLINED_FUNCTION_39_7();

    return v31();
  }
}

void sub_237DF5308()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = *(v1 + 40);
  v15 = v4;
  v14 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_56_11();
  v7 = *(v2 + 32);
  OUTLINED_FUNCTION_23_8();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_45_1();
  v10 = OUTLINED_FUNCTION_98_1();
  v11(v10, v7);
  (*(v3 + 16))(v14, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(&associated type descriptor for SupervisedTemporalEstimator.Transformer, v0, v8, AssociatedTypeWitness, AssociatedConformanceWitness, v13, v15);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DF549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_40_8();
  v72 = v29;
  v32 = v31;
  v70 = v33;
  v71 = v34;
  v68 = v35;
  v69 = v36;
  v30[16] = a29;
  v30[17] = v29;
  v30[14] = v31;
  v30[15] = v37;
  v30[12] = v38;
  v30[13] = v39;
  v30[10] = v33;
  v30[11] = v34;
  v30[8] = v35;
  v30[9] = v36;
  v40 = *(v38 + 32);
  OUTLINED_FUNCTION_9_24();
  OUTLINED_FUNCTION_84_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[18] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_1();
  v30[19] = v42;
  v30[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_89_0();
  v30[21] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56_0();
  v30[22] = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v30[23] = v43;
  v44 = OUTLINED_FUNCTION_9_24();
  v47 = type metadata accessor for AnnotatedFeature(v44, v45, AssociatedTypeWitness, v46);
  v30[24] = v47;
  OUTLINED_FUNCTION_18(v47);
  v30[25] = OUTLINED_FUNCTION_27_0();
  v30[26] = *(v43 - 8);
  v30[27] = swift_task_alloc();
  v30[28] = swift_task_alloc();
  v30[29] = type metadata accessor for AnnotatedFeature(0, v32, AssociatedTypeWitness, v48);
  OUTLINED_FUNCTION_1();
  v30[30] = v49;
  v30[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v50 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v50);
  v30[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v30[33] = v51;
  v30[34] = OUTLINED_FUNCTION_27_0();
  v52 = swift_getAssociatedTypeWitness();
  v30[35] = v52;
  OUTLINED_FUNCTION_6_1(v52);
  v30[36] = v53;
  v30[37] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_15_0();
  v67 = v54 + *v54;
  v55 = swift_task_alloc();
  v30[38] = v55;
  *v55 = v30;
  v55[1] = sub_237DF5864;
  OUTLINED_FUNCTION_81();

  return v64(v56, v57, v58, v59, v60, v61, v62, v63, a9, v40 + 24, v67, v68, v69, v70, v71, a29, v72, a18, a19, a20, a21, a22);
}

uint64_t sub_237DF5864()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_106_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DF59E0()
{
  OUTLINED_FUNCTION_73();
  v1 = v0[39];
  sub_237EF8B90();
  if (v1)
  {
    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_4();

    return v2();
  }

  else
  {
    v0[6] = sub_237EF8110();
    v5 = OUTLINED_FUNCTION_44();
    v6(v5);
    OUTLINED_FUNCTION_48();
    v7 = v0[32];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_51_3(AssociatedConformanceWitness);
    OUTLINED_FUNCTION_46_5(v7);
    if (v9)
    {
      (*(v0[36] + 8))(v0[37], v0[35]);
      sub_237EF8B90();
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_107_1(v16, v17, v18, v19, &associated type descriptor for SupervisedTemporalEstimator.Transformer);
      OUTLINED_FUNCTION_71_2();
      v20 = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_89_2(v20);
      OUTLINED_FUNCTION_15_0();
      v34 = v21 + *v21;
      v22 = swift_task_alloc();
      v0[43] = v22;
      OUTLINED_FUNCTION_9_24();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_94_2();
      *v22 = v23;
      OUTLINED_FUNCTION_25_26(v24, v25, v26, v27, v28, v29, v30, v31, 24, v34, v35, v36);
      OUTLINED_FUNCTION_68_4();

      __asm { BRAA            X8, X16 }
    }

    v10 = OUTLINED_FUNCTION_86_1();
    v11(v10);
    OUTLINED_FUNCTION_34_0();
    swift_checkMetadataState();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[40] = v12;
    *v12 = v13;
    OUTLINED_FUNCTION_29_22(v12);
    OUTLINED_FUNCTION_68_4();

    return v14();
  }
}

uint64_t sub_237DF5D5C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF5E5C()
{
  OUTLINED_FUNCTION_73();
  v1 = v0[26];
  v41 = v0[25];
  v42 = v0[28];
  v2 = v0[23];
  v3 = OUTLINED_FUNCTION_26_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_27_16();
  v6(v5);
  OUTLINED_FUNCTION_35_7();
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v1 + 8))(v42, v2);
  v7 = OUTLINED_FUNCTION_51_9();
  v8(v7);
  v9 = v0[41];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_50_4(AssociatedConformanceWitness);
  OUTLINED_FUNCTION_46_3();
  if (v11)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    sub_237EF8B90();
    if (!v9)
    {
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_107_1(v21, v22, v23, v24, &associated type descriptor for SupervisedTemporalEstimator.Transformer);
      OUTLINED_FUNCTION_71_2();
      v25 = swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_89_2(v25);
      OUTLINED_FUNCTION_15_0();
      v39 = v26 + *v26;
      v27 = swift_task_alloc();
      v0[43] = v27;
      OUTLINED_FUNCTION_9_24();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_2();
      swift_getWitnessTable();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_94_2();
      *v27 = v28;
      OUTLINED_FUNCTION_25_26(v29, v30, v31, v32, v33, v34, v35, v36, 24, v39, v40, v41);
      OUTLINED_FUNCTION_68_4();

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_76_4();

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_4();

    return v12();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_86_1();
    v16(v15);
    OUTLINED_FUNCTION_34_0();
    swift_checkMetadataState();
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[40] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_29_22(v17);
    OUTLINED_FUNCTION_68_4();

    return v19();
  }
}

uint64_t sub_237DF6220()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 352) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DF6328()
{
  OUTLINED_FUNCTION_19_18();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

void sub_237DF63E8()
{
  OUTLINED_FUNCTION_19_18();
  (*(v0[30] + 8))(v0[31], v0[29]);
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_106_1();

  __asm { BRAA            X1, X16 }
}

void sub_237DF64C8()
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_106_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_237DF6574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(*(a3 + 32) + 8) + 56))(a1, a2, *(a3 + 16), *(*(a3 + 32) + 8));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(*(a3 + 40) + 8);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTemporalTransformer(0, v12);
    return (*(v9 + 56))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237DF66E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = a2[3];
  v40 = *(a2[5] + 8);
  v42 = v5;
  OUTLINED_FUNCTION_40_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v35 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v33 - v12;
  v13 = *(a2[4] + 8);
  v14 = a2[2];
  OUTLINED_FUNCTION_40_0();
  v15 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v38 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v33 - v23;
  v25 = *(v13 + 64);
  v39 = a1;
  v26 = v43;
  result = v25(a1, v14, v13, v22);
  if (!v26)
  {
    v33 = v14;
    v34 = v20;
    v43 = v15;
    v28 = AssociatedTypeWitness;
    (*(v40 + 64))(v39, v42, v40);
    v29 = v34;
    v30 = v43;
    (*(v38 + 32))(v34, v24, v43);
    (*(v35 + 32))(v10, v41, v28);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v29, v10, v30, v28, AssociatedConformanceWitness, v32, v36);
  }

  return result;
}

uint64_t sub_237DF69CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_84_3();
  result = v7();
  if (!v3)
  {
    v13[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(a3 + 40);
    v9 = *(a3 + 24);
    v13[0] = AssociatedTypeWitness;
    v13[1] = swift_getAssociatedTypeWitness();
    v13[2] = swift_getAssociatedConformanceWitness();
    v13[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTemporalTransformer(0, v13);
    return (*(v12 + 32))(a1 + *(v10 + 52), a2, v9);
  }

  return result;
}

uint64_t sub_237DF6B3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v48 = a2[5];
  v7 = a2[3];
  v40 = *(v48 + 8);
  v49 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v39 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  v43 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v46 = &v36 - v13;
  v14 = *(a2[4] + 8);
  v15 = a2[2];
  v16 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v42 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v47 = a1;
  v45 = v4;
  v25 = v50;
  OUTLINED_FUNCTION_42();
  result = v26();
  if (!v25)
  {
    v37 = v21;
    v38 = v15;
    v36 = v14;
    v50 = v16;
    v28 = v42;
    v29 = v43;
    v30 = AssociatedTypeWitness;
    v31 = v46;
    (*(v48 + 40))(v47, v49);
    v32 = v37;
    v33 = v50;
    (*(v28 + 32))(v37, v24, v50);
    (*(v39 + 32))(v29, v31, v30);
    OUTLINED_FUNCTION_40_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_40_0();
    v35 = swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v32, v29, v33, v30, AssociatedConformanceWitness, v35, v41);
  }

  return result;
}

uint64_t sub_237DF6E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v38 = swift_task_alloc();
  *(v29 + 16) = v38;
  *v38 = v29;
  v38[1] = sub_237C6A904;

  return sub_237DF549C(a1, a2, a3, a4, a9, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_237DF6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_237C6B728;

  return sub_237DF2C2C(a1, a2, a3, a4, a9, a5, a6, a7, a8);
}

uint64_t sub_237DF7070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_task_alloc();
  *(v10 + 16) = v16;
  *v16 = v10;
  v16[1] = sub_237C6B728;

  return sub_237DF3D0C(a1, a2, a3, a4, a5, a10, a6, a7, a8, v22);
}

void UpdatableTemporalEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_37_15();
  v10 = type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor(v6, v7, v8, v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_89_0();
  swift_getAssociatedConformanceWitness();
  v12 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_56_11();
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v5, v3);
  OUTLINED_FUNCTION_0_68();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v1, v0, v12, v10, WitnessTable, v15, v16);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v14 + 16))(v0, v15, v4);
  (*(v8 + 16))(v12, v6, v2);
  v16 = OUTLINED_FUNCTION_58_7();
  sub_237DF2AD0(v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_38_0();
}

void UpdatableSupervisedTemporalEstimator.appending<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v39 = v0;
  v36 = v3;
  v37 = v4;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_37_15();
  v13 = type metadata accessor for TransformerToTemporalAdaptor(v9, v10, v11, v12);
  OUTLINED_FUNCTION_1();
  v38 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_42_13();
  WitnessTable = swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_23_8();
  v20 = type metadata accessor for TemporalTransformerToUpdatableEstimatorAdaptor(v16, v17, v18, v19);
  OUTLINED_FUNCTION_1();
  v35 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_52_3();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v23 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  (*(v28 + 16))(v27 - v26, v39, v8);
  Transformer.adaptedAsTemporal()(v6, v37);
  TemporalTransformer.adaptedAsUpdatableEstimator()(v13, WitnessTable);
  (*(v38 + 8))(v2, v13);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  (*(v35 + 8))(v1, v20);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_89_0();
  sub_237DF2A08(v29, v30, v31, v23, v36, v32, v33);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_37_15();
  type metadata accessor for UpdatableSupervisedEstimatorToTemporalAdaptor(v5, v6, v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_79_3();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v0, v4);
  v14 = OUTLINED_FUNCTION_56_0();
  UpdatableSupervisedEstimator<>.adaptedAsTemporal()(v14, v15);
  OUTLINED_FUNCTION_1_85();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_83_3();
  sub_237DF2A08(v16, v17, v18, v19, v2, v20, v21);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  v5 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_45_1();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, v0, v5);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  sub_237DF2A08(v11, v1, v5, v6, v3, v13, v14);
  OUTLINED_FUNCTION_38_0();
}

{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v14 + 16))(v0, v15, v4);
  (*(v8 + 16))(v12, v6, v2);
  v16 = OUTLINED_FUNCTION_58_7();
  sub_237DF2A08(v16, v17, v18, v19, v20, v21, v22);
  OUTLINED_FUNCTION_38_0();
}

void UpdatableSupervisedTemporalEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237DF7F98();
}

{
  sub_237DF7F98();
}

void sub_237DF7F98()
{
  OUTLINED_FUNCTION_37_0();
  v23 = v3;
  v24 = v4;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_37_15();
  v9 = v8(v7);
  OUTLINED_FUNCTION_1();
  v22 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_18();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_56_11();
  (*(v14 + 16))(v1, v0, v6);
  v15 = OUTLINED_FUNCTION_101_2();
  v24(v15);
  UpdatableTemporalEstimator.adaptedAsSupervised<A>(annotationType:)();
  (*(v22 + 8))(v2, v9);
  OUTLINED_FUNCTION_0_68();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_83_3();
  sub_237DF2A08(v16, v17, v18, v19, v23, v20, v21);
  OUTLINED_FUNCTION_38_0();
}

void get_witness_table_18CreateMLComponents36UpdatableSupervisedTemporalEstimatorRzAA0cF0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcdeF0VyxAA0cef2ToD7AdaptorVyAA0cfkeL0Vyqd__G10AnnotationQzGGAaBHPyHCTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_69_6();
  a21 = v22;
  a22 = v23;
  v25 = *v24;
  v26 = v24[2];
  v28 = v27(255, v24[1], v24[3]);
  OUTLINED_FUNCTION_97_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a9 = v28;
  a10 = AssociatedTypeWitness;
  a11 = WitnessTable;
  a12 = AssociatedConformanceWitness;
  v32 = OUTLINED_FUNCTION_20_3();
  v34 = type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor(v32, v33);
  OUTLINED_FUNCTION_0_68();
  v35 = swift_getWitnessTable();
  a9 = v25;
  a10 = v34;
  a11 = v26;
  a12 = v35;
  OUTLINED_FUNCTION_2_77(v35, &a9);
  OUTLINED_FUNCTION_72_3();
}

uint64_t sub_237DF8584(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DF874C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DF89FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_77(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ComposedUpdatableSupervisedTemporalEstimator(255, a2);

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v14 + 8) = sub_237DF6220;
  *(v16 + 16) = v12;
  *(v16 + 24) = v13;
  return a12 + v15;
}

uint64_t OUTLINED_FUNCTION_27_23()
{
  *(v0 + 8) = sub_237DF3A74;
  result = v1[19];
  v4 = v1[14];
  *(v2 + 16) = v1[15];
  *(v2 + 24) = v4;
  return result;
}

void OUTLINED_FUNCTION_36_15()
{
  v1 = v0[6];
  v0[42] = v1;
  v0[7] = v1;
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_76_4()
{
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return type metadata accessor for UpdatableTemporalEstimatorToSupervisedAdaptor(0, v0 - 112);
}

uint64_t OUTLINED_FUNCTION_89_2(uint64_t a1)
{
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v2;
  v1[5] = a1;

  return type metadata accessor for ComposedTemporalTransformer(0, (v1 + 2));
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_237DF8F60(uint64_t a1)
{
  v2 = sub_237CA6780(a1, a1);
  result = sub_237CA6020(a1);
  if (__OFADD__(v2, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_237CA6780(a1 & 1, a1 & 1);
  result = sub_237CA6120(a1 & 1);
  if (__OFADD__(v4, result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9014(char a1)
{
  v2 = *(v1 + 24);
  if (*(v2 + 16) && (v3 = sub_237D30084(a1 & 1), (v4 & 1) != 0))
  {
    return *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t MultiLabelClassificationMetrics.truePositiveCount(of:)()
{
  OUTLINED_FUNCTION_4_69();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8, &qword_237F18FA0);
  OUTLINED_FUNCTION_2_78(v0);
  if (!v4)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_0_69();
  v2 = sub_237CA6780(v1, 1);
  OUTLINED_FUNCTION_1_86();
  return v2;
}

uint64_t sub_237DF90F0(int a1)
{
  result = 0;
  v4 = 0;
  v5 = *(v1 + 40);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v4 << 6);
    v13 = (*(v5 + 48) + 2 * v12);
    if (*v13 != (a1 & 1) && ((v13[1] ^ a1) & 1) != 0)
    {
      v14 = *(*(v5 + 56) + 8 * v12);
      v15 = __OFADD__(result, v14);
      result += v14;
      if (v15)
      {
        __break(1u);
        return result;
      }
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return result;
    }

    v8 = *(v5 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237DF91D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8, &qword_237F18FA0);
  sub_237EF82F0();
  if (!v7)
  {
    return 0;
  }

  v4 = a3(1);
  sub_237CA67D4(v6, v7, v8, v9, v10, v11);
  return v4;
}

void MultiLabelClassificationMetrics.f1Score(for:)()
{
  OUTLINED_FUNCTION_4_69();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8, &qword_237F18FA0);
  OUTLINED_FUNCTION_2_78(v0);
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_0_69();
    sub_237DF8F60(v1);
    OUTLINED_FUNCTION_1_86();
  }
}

unint64_t sub_237DF9340@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, float a6@<S0>)
{
  v9 = type metadata accessor for ClassificationDistribution(0, a2, a4, a3);
  result = ClassificationDistribution.subscript.getter(a1, v9, v10, v11);
  if ((result & 0x100000000) != 0)
  {
    if (a6 <= 0.0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  if (*&result < a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 1;
LABEL_6:
  *a5 = v13;
  return result;
}

uint64_t sub_237DF93FC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237EF8CD0();
  *a2 = result & 1;
  return result;
}

void OUTLINED_FUNCTION_1_86()
{

  sub_237CA67D4(v5, v0, v4, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_2_78(uint64_t a1)
{

  return sub_237EF82F0();
}

void OUTLINED_FUNCTION_5_74(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5)
{

  sub_237C9339C(v5, &a5, a4, a1, a2, a3);
}

uint64_t ShuffleRandomly.init<A>(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v14[0] = a2;
  v14[1] = a2;
  OUTLINED_FUNCTION_1_0();
  swift_getExtendedExistentialTypeMetadata();
  *a5 = sub_237EF89A0();
  v14[3] = a3;
  v14[4] = a4;
  __swift_allocate_boxed_opaque_existential_1(v14);
  a1();
  v12 = type metadata accessor for ShuffleRandomly(0, a2, v10, v11);
  sub_237DF95B8(v14, v12);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_237DF95B8(uint64_t a1, uint64_t a2)
{
  sub_237C66728(a1, v12);
  swift_getExtendedExistentialTypeMetadata();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    sub_237C6678C(&v11, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v5 + 64);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v6(v4, v5);
    sub_237DF95B8(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = v16;
    v8 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v8 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v12);
    v9(v7, v8);
    sub_237DF95B8(v12, a2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_237C66728(a1, v15);
    sub_237EF8A60();
    return sub_237EF8A20();
  }
}

uint64_t ShuffleRandomly.applied<A>(to:generator:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[16] = v2;
  v1[17] = v3;
  v1[14] = v4;
  v1[15] = v5;
  v1[12] = v6;
  v1[13] = v7;
  v1[11] = v8;
  v10 = *(v9 + 16);
  v1[18] = v10;
  v1[19] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *v0;
  v1[20] = v11;
  v1[21] = v12;
  sub_237EF8260();

  return MEMORY[0x2822009F8](sub_237DF98B4, 0, 0);
}

uint64_t sub_237DF98B4()
{
  v1 = v0[21];
  v2 = v0[18];
  (*(v0[19] + 16))(v0[11], v0[12], v2);
  v0[10] = v1;
  v0[7] = v2;
  v0[8] = v2;
  OUTLINED_FUNCTION_1_0();
  v0[22] = swift_getExtendedExistentialTypeMetadata();
  sub_237EF8A60();
  swift_getWitnessTable();
  v0[23] = sub_237EF8820();

  sub_237EF8260();
  v3 = sub_237EF8920();

  v0[9] = v3;
  if (v3 == sub_237EF8A00())
  {

    OUTLINED_FUNCTION_3_0();

    return v4();
  }

  else
  {
    v6 = sub_237EF89D0();
    sub_237EF8960();
    if (v6)
    {
      sub_237C66728(v0[23] + 40 * v3 + 32, (v0 + 2));
      OUTLINED_FUNCTION_26_5();
      sub_237EF8A40();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_2_79();
      v7 = swift_task_alloc();
      v0[24] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_0_70(v7);

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_26_5();
    result = sub_237EF93A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9B40()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  *(*v1 + 200) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {

    v3 = sub_237DF9E74;
  }

  else
  {
    v3 = sub_237DF9C6C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237DF9C6C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[11];
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[9];
  if (v5 == sub_237EF8A00())
  {

    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {
    v8 = sub_237EF89D0();
    sub_237EF8960();
    if (v8)
    {
      sub_237C66728(v0[23] + 40 * v5 + 32, (v0 + 2));
      OUTLINED_FUNCTION_26_5();
      sub_237EF8A40();
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      OUTLINED_FUNCTION_2_79();
      v9 = swift_task_alloc();
      v0[24] = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_0_70(v9);

      __asm { BRAA            X8, X16 }
    }

    OUTLINED_FUNCTION_26_5();
    result = sub_237EF93A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_237DF9E74()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[19] + 8))(v0[11], v0[18]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DF9EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return ShuffleRandomly.applied<A>(to:generator:eventHandler:)();
}

uint64_t sub_237DF9FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_0_70(uint64_t a1)
{
  *(a1 + 8) = sub_237DF9B40;
  result = *(v2 + 160);
  *(v3 + 16) = v1;
  return result;
}

uint64_t CategoricalImputer.strategy.getter@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>, __n128 a10@<Q2>, __n128 a11@<Q3>, __n128 a12@<Q4>, __n128 a13@<Q5>)
{
  OUTLINED_FUNCTION_2_80(a1[1], a1[2], a1, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  OUTLINED_FUNCTION_5_58();
  return (*(v15 + 16))(a2, v13);
}

uint64_t CategoricalImputer.strategy.setter(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  OUTLINED_FUNCTION_2_80(a2[1], a2[2], a1, a2, a3, a4, a5, a6, a7, a8, a11, a12, a13, a14);
  OUTLINED_FUNCTION_5_58();
  return (*(v16 + 40))(v14, a1);
}

uint64_t CategoricalImputer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  type metadata accessor for CategoricalImputer.Strategy(0, v10);
  OUTLINED_FUNCTION_5_58();
  return (*(v8 + 32))(a6, a1);
}

uint64_t CategoricalImputer.init(constant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

uint64_t CategoricalImputer.fitted<A>(to:eventHandler:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t (**a3)(char *, char *, uint64_t)@<X5>, uint64_t a4@<X8>, uint64_t a5@<X4>)
{
  v6 = v5;
  v26 = a3;
  v11 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v27[0] = v11;
  v27[1] = v18;
  v25 = *(v17 + 32);
  v28 = v25;
  type metadata accessor for CategoricalImputer.Strategy(0, v27);
  OUTLINED_FUNCTION_1_1();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v25 - v21;
  (*(v23 + 16))(&v25 - v21, v6, v20);
  if (__swift_getEnumTagSinglePayload(v22, 1, v11) == 1)
  {
    return sub_237DFA42C(a1, a2, a5, v26, a4);
  }

  (*(v13 + 32))(v16, v22, v11);
  return ImputeTransformer.init(value:)(v16, v11, a4, v18, v25);
}

uint64_t sub_237DFA42C@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (**a4)(char *, char *, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v70 = a4;
  v72 = a1;
  v58 = a5;
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v68 = v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v57 - v12;
  v13 = sub_237EF90F0();
  v14 = sub_237EF90F0();
  MEMORY[0x28223BE20](v14 - 8);
  v71 = &v57 - v15;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v59 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  OUTLINED_FUNCTION_1_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v61 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v57 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  v57 = a2;
  v35 = *(a2 + 40);
  v37 = v36;
  v74 = v35;
  v77 = sub_237EF8100();
  v63 = v34;
  v73 = v7;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v7);
  (*(v17 + 16))(v20, v72, a3);
  v38 = v62;
  v39 = v24;
  sub_237EF86F0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = (v26 + 32);
  v60 = v26;
  v72 = (v26 + 8);
  v69 = 0;
  v70 = (v65 + 4);
  v66 = v31;
  v67 = (v65 + 2);
  ++v65;
LABEL_2:
  v42 = v73;
  v43 = v71;
  while (1)
  {
    sub_237EF91A0();
    if (__swift_getEnumTagSinglePayload(v43, 1, v13) == 1)
    {
      break;
    }

    (*v41)(v31, v43, v13);
    if (__swift_getEnumTagSinglePayload(v31, 1, v42) == 1)
    {
      (*v72)(v31, v13);
    }

    else
    {
      v64 = *v70;
      result = v64(v38, v31, v42);
      v45 = v77;
      v46 = *(v77 + 16);
      if (v46)
      {
        result = sub_237E2A148(v38, v42, v74);
        if (v47)
        {
          v46 = *(*(v45 + 56) + 8 * result);
        }

        else
        {
          v46 = 0;
        }
      }

      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      v49 = v41;
      v50 = AssociatedConformanceWitness;
      v51 = v39;
      v52 = v37;
      v42 = v73;
      (*v67)(v68, v38, v73);
      v75 = v48;
      v76 = 0;
      sub_237EF82B0();
      sub_237EF8300();
      if (v69 < v48)
      {
        v53 = v63;
        (*v72)(v63, v13);
        v64(v53, v38, v42);
        __swift_storeEnumTagSinglePayload(v53, 0, 1, v42);
        v69 = v48;
        v37 = v52;
        v39 = v51;
        AssociatedConformanceWitness = v50;
        v41 = v49;
        v31 = v66;
        goto LABEL_2;
      }

      (*v65)(v38, v42);
      v39 = v51;
      v43 = v71;
      AssociatedConformanceWitness = v50;
      v41 = v49;
      v31 = v66;
    }
  }

  (*(v59 + 8))(v39, v37);
  v54 = sub_237D0510C();
  v55 = v61;
  if ((v54 & 1) == 0)
  {
    sub_237D05198(0xD000000000000012, 0x8000000237F16C30);
  }

  v56 = v63;
  (*(v60 + 16))(v55, v63, v13);
  result = __swift_getEnumTagSinglePayload(v55, 1, v42);
  if (result != 1)
  {
    (*v72)(v56, v13);
    ImputeTransformer.init(value:)(v55, v42, v58, *(v57 + 24), *(v57 + 32));
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_237DFAA70(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(char *, char *, uint64_t), uint64_t a7)
{
  CategoricalImputer.fitted<A>(to:eventHandler:)(a2, a7, a6, a1, a5);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t CategoricalImputer.debugDescription.getter(__n128 *a1)
{
  sub_237EF9330();
  v2 = MEMORY[0x2383E0710](0xD00000000000001DLL, 0x8000000237F00030);
  OUTLINED_FUNCTION_2_80(a1[1], a1[2], v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237DFABA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for CategoricalImputer.Strategy(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237DFAC30(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_237DFAC8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_237DFAE04(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_80(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  a13 = a1;
  a14 = a2;

  return type metadata accessor for CategoricalImputer.Strategy(0, &a13);
}

uint64_t TransformerToTemporalAdaptor.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  OUTLINED_FUNCTION_1_1();
  v8[10] = v11;
  v8[11] = OUTLINED_FUNCTION_27_0();
  v8[12] = *(a5 + 24);
  v12 = *(a5 + 16);
  v8[13] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v8[15] = type metadata accessor for TemporalFeature(255, AssociatedTypeWitness, v14, v15);
  v8[16] = *(a7 + 8);
  OUTLINED_FUNCTION_43_0();
  v16 = sub_237EF9AE0();
  v8[17] = v16;
  OUTLINED_FUNCTION_6_1(v16);
  v8[18] = v17;
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v18 = *(v12 - 8);
  v8[21] = v18;
  v8[22] = *(v18 + 64);
  v8[23] = OUTLINED_FUNCTION_40_11();
  v8[24] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_237DFB238()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v18 = v0[22];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v23 = v0[20];
  v4 = v0[13];
  v28 = v0[14];
  v5 = v0[7];
  v19 = v0[8];
  v20 = v0[12];
  v21 = v0[4];
  v22 = v0[5];
  v27 = v0[2];
  EstimatorToTemporalAdaptor.base.getter(v0[6], v1);
  v6 = OUTLINED_FUNCTION_144();
  v7(v6);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = v5;
  *(v9 + 4) = v20;
  *(v9 + 5) = v19;
  (*(v3 + 32))(&v9[v8], v2, v4);
  v10 = &v9[(v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v10 = v21;
  v10[1] = v22;
  sub_237C70604(v21, v22);
  sub_237EF8BD0();

  v11 = OUTLINED_FUNCTION_9_9();
  v12(v11);
  v13 = (*(v19 + 24))(v5, v19);
  LOBYTE(v5) = v14;
  WitnessTable = swift_getWitnessTable();
  AnyTemporalSequence.init<A>(_:count:)(v25, v13, v5 & 1, v28, v26, WitnessTable, v27);
  (*(v24 + 8))(v23, v26);
  (*(v3 + 8))(v1, v4);

  OUTLINED_FUNCTION_10_3();

  return v16();
}

uint64_t sub_237DFB4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a6;
  v8[13] = a8;
  v8[10] = a4;
  v8[11] = a5;
  v8[8] = a2;
  v8[9] = a3;
  v8[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v8[15] = *(AssociatedTypeWitness - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_getAssociatedTypeWitness();
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237DFB620, 0, 0);
}

uint64_t sub_237DFB620()
{
  OUTLINED_FUNCTION_39_0();
  v1 = v0[16];
  v4 = type metadata accessor for TemporalFeature(0, v0[14], v2, v3);
  TemporalFeature.id.getter((v0 + 2));
  TemporalFeature.feature.getter(v4, v1);
  OUTLINED_FUNCTION_15_0();
  v15 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v6;
  *v6 = v7;
  v6[1] = sub_237DFB764;
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[10];
  v13 = v0[11];

  return v15(v8, v9, v12, v13, v10, v11);
}

uint64_t sub_237DFB764()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFB8B8()
{
  OUTLINED_FUNCTION_2_0();
  TemporalFeature.init(id:feature:)((v0 + 2), v0[18], v0[17], v0[7], v1);

  OUTLINED_FUNCTION_10_3();

  return v2();
}

uint64_t sub_237DFB930()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DFB998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return TransformerToTemporalAdaptor.applied<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t EstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v5 + 24);
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_137(AssociatedTypeWitness);
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_116();
  v1[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[20] = OUTLINED_FUNCTION_27_0();
  v14 = OUTLINED_FUNCTION_34_0();
  v1[21] = type metadata accessor for TemporalFeature(v14, v15, v16, v17);
  OUTLINED_FUNCTION_1();
  v1[22] = v18;
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  v1[24] = OUTLINED_FUNCTION_27_0();
  v20 = OUTLINED_FUNCTION_43_0();
  v1[25] = OUTLINED_FUNCTION_140(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_1();
  v1[26] = v25;
  v26 = OUTLINED_FUNCTION_27_0();
  v1[27] = v26;
  v27 = *(v3 + 8);
  v1[28] = v27;
  v29 = OUTLINED_FUNCTION_159(v26, v27, v28, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v1[29] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v1[30] = v30;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v31 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v31);
  v1[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[33] = v32;
  v1[34] = OUTLINED_FUNCTION_27_0();
  v33 = OUTLINED_FUNCTION_43_0();
  v38 = OUTLINED_FUNCTION_140(v33, v34, v35, v36, v37);
  v1[35] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v1[36] = v39;
  v1[37] = OUTLINED_FUNCTION_27_0();
  v40 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_237DFBFF0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFC340()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_83_4();
  v22 = v12[14];
  (*(v12[17] + 32))(v12[4], v12[18]);

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

uint64_t sub_237DFC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v13 = OUTLINED_FUNCTION_104_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_31_0();
  v16(v15);
  v26 = *(v12 + 312);
  OUTLINED_FUNCTION_83_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t sub_237DFC680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_26_2();
  v22 = *(v12 + 336);
  OUTLINED_FUNCTION_83_4();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

void EstimatorToTemporalAdaptor.encode(_:to:)()
{
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_145(v2, v3);
  OUTLINED_FUNCTION_135();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_56();
  EstimatorToTemporalAdaptor.base.getter(v0, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_134(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = OUTLINED_FUNCTION_30_27();
  v10(v9);
  v11 = OUTLINED_FUNCTION_152();
  v12(v11);
  v13 = OUTLINED_FUNCTION_100_2();
  v14(v13);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

void EstimatorToTemporalAdaptor.decode(from:)()
{
  OUTLINED_FUNCTION_13_4();
  v3 = OUTLINED_FUNCTION_8_61(v1, v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_56();
  OUTLINED_FUNCTION_43_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52_10();
  OUTLINED_FUNCTION_96_2();
  v5 = OUTLINED_FUNCTION_20_33();
  v6(v5);
  v7 = OUTLINED_FUNCTION_47_9();
  v8(v7);
  if (!v0)
  {
    v9 = OUTLINED_FUNCTION_48_10();
    v10(v9);
  }

  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DFC9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return EstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)();
}

uint64_t UpdatableEstimatorToTemporalAdaptor.makeTransformer()(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_138(v7, v8, v9, &protocol requirements base descriptor for Estimator, &associated type descriptor for Estimator.Transformer);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52_10();
  EstimatorToTemporalAdaptor.base.getter(a1, v1);
  v11 = OUTLINED_FUNCTION_122();
  v12(v11);
  (*(v5 + 8))(v1, v3);
  v13 = OUTLINED_FUNCTION_149();
  return v14(v13);
}

uint64_t UpdatableEstimatorToTemporalAdaptor.fitted<A>(to:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(*(v5 + 24) + 8);
  OUTLINED_FUNCTION_23_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_137(AssociatedTypeWitness);
  v1[18] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_116();
  v1[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[20] = OUTLINED_FUNCTION_27_0();
  v14 = OUTLINED_FUNCTION_34_0();
  v1[21] = type metadata accessor for TemporalFeature(v14, v15, v16, v17);
  OUTLINED_FUNCTION_1();
  v1[22] = v18;
  v1[23] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  v1[24] = OUTLINED_FUNCTION_27_0();
  v20 = OUTLINED_FUNCTION_43_0();
  v1[25] = OUTLINED_FUNCTION_140(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_1();
  v1[26] = v25;
  v26 = OUTLINED_FUNCTION_27_0();
  v1[27] = v26;
  v27 = *(v3 + 8);
  v1[28] = v27;
  v29 = OUTLINED_FUNCTION_159(v26, v27, v28, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v1[29] = v29;
  OUTLINED_FUNCTION_6_1(v29);
  v1[30] = v30;
  v1[31] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v31 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v31);
  v1[32] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[33] = v32;
  v1[34] = OUTLINED_FUNCTION_27_0();
  v33 = OUTLINED_FUNCTION_43_0();
  v38 = OUTLINED_FUNCTION_140(v33, v34, v35, v36, v37);
  v1[35] = v38;
  OUTLINED_FUNCTION_6_1(v38);
  v1[36] = v39;
  v1[37] = OUTLINED_FUNCTION_27_0();
  v40 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_237DFD1D8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFD528()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 336) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t UpdatableEstimatorToTemporalAdaptor.update<A>(_:with:eventHandler:)()
{
  OUTLINED_FUNCTION_19_18();
  v3 = v2;
  v5 = v4;
  v1[10] = v6;
  v1[11] = v0;
  v1[8] = v4;
  v1[9] = v7;
  v1[6] = v8;
  v1[7] = v9;
  v1[4] = v10;
  v1[5] = v11;
  v1[12] = *(v4 + 16);
  OUTLINED_FUNCTION_1_1();
  v1[13] = v12;
  v1[14] = OUTLINED_FUNCTION_27_0();
  v1[15] = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_116();
  v1[16] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v1[17] = OUTLINED_FUNCTION_27_0();
  v13 = OUTLINED_FUNCTION_34_0();
  v1[18] = type metadata accessor for TemporalFeature(v13, v14, v15, v16);
  OUTLINED_FUNCTION_1();
  v1[19] = v17;
  v1[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v18 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v18);
  v1[21] = OUTLINED_FUNCTION_27_0();
  v19 = OUTLINED_FUNCTION_43_0();
  v1[22] = OUTLINED_FUNCTION_140(v19, v20, v21, v22, v23);
  OUTLINED_FUNCTION_1();
  v1[23] = v24;
  v25 = OUTLINED_FUNCTION_27_0();
  v1[24] = v25;
  v26 = *(v3 + 8);
  v1[25] = v26;
  v28 = OUTLINED_FUNCTION_159(v25, v26, v27, MEMORY[0x277D85850], MEMORY[0x277D85620]);
  v1[26] = v28;
  OUTLINED_FUNCTION_6_1(v28);
  v1[27] = v29;
  v1[28] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_34_0();
  v30 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v30);
  v1[29] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v1[30] = v31;
  v1[31] = OUTLINED_FUNCTION_27_0();
  v32 = OUTLINED_FUNCTION_43_0();
  v37 = OUTLINED_FUNCTION_140(v32, v33, v34, v35, v36);
  v1[32] = v37;
  OUTLINED_FUNCTION_6_1(v37);
  v1[33] = v38;
  v1[34] = OUTLINED_FUNCTION_27_0();
  v39 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v39, v40, v41);
}

uint64_t sub_237DFDBF8()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DFDF64()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_5_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  v7 = OUTLINED_FUNCTION_7_3();
  v8(v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_59();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DFE0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_19_18();

  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_106_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}