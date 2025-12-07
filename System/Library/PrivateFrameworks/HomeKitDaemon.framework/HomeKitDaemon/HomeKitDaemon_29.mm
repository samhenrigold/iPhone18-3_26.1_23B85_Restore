uint64_t sub_22982B264()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22982B408;
  }

  else
  {
    v2 = sub_22982B378;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22982B378()
{
  sub_229839118(v0[13], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22982B408()
{
  v27 = v0;
  sub_229839118(v0[13], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  if (v8)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed unset thermostat suggested preset with error %@", v14, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22982B6F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v101 = a3;
  v99 = a2;
  v97 = a5;
  v6 = sub_22A4DC8AC();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v94 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v80 - v13;
  MEMORY[0x28223BE20](v12);
  v89 = (&v80 - v14);
  v90 = sub_22A4DC85C();
  v92 = *(v90 - 8);
  v15 = MEMORY[0x28223BE20](v90);
  v84 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v80 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  v24 = sub_22A4DC8EC();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v93 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v91 = &v80 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v80 - v30;
  v32 = sub_22A4DCA9C();
  v98 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v85 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229837B28([a1 state], v23);
  v34 = *(v25 + 48);
  if (v34(v23, 1, v24) == 1)
  {

    sub_22953EAE4(v23, &qword_27D881900, &unk_22A576E70);
    v35 = v97;
    return (*(v98 + 56))(v35, 1, 1, v32);
  }

  v81 = a1;
  v82 = v32;
  v36 = *(v25 + 32);
  v36(v31, v23, v24);
  v37 = HMHomeActivityStateToTopLevelState();
  sub_229837B28(v37, v21);
  if (v34(v21, 1, v24) == 1)
  {

    sub_22953EAE4(v21, &qword_27D881900, &unk_22A576E70);
    (*(v25 + 8))(v31, v24);
LABEL_7:
    v35 = v97;
    v32 = v82;
    return (*(v98 + 56))(v35, 1, 1, v32);
  }

  v80 = v25;
  v83 = v31;
  v38 = v91;
  v39 = (v36)(v91, v21, v24);
  MEMORY[0x28223BE20](v39);
  *(&v80 - 2) = v38;
  v40 = v89;
  v41 = v99;
  sub_229685338(sub_229839A18, v99, v89);
  v42 = v92;
  v43 = *(v92 + 48);
  v44 = v90;
  v45 = v24;
  if (v43(v40, 1, v90) == 1)
  {

    sub_22953EAE4(v40, &unk_27D8818D0, &qword_22A57A448);
    v46 = *(v80 + 8);
    v46(v38, v24);
    v46(v83, v24);
    goto LABEL_7;
  }

  v89 = *(v42 + 32);
  v48 = (v89)(v88, v40, v44);
  MEMORY[0x28223BE20](v48);
  *(&v80 - 2) = v83;
  v49 = v87;
  sub_229685338(sub_2298390D8, v41, v87);

  v50 = v49;
  v51 = v49;
  v52 = v86;
  sub_229564F88(v51, v86, &unk_27D8818D0, &qword_22A57A448);
  v53 = v43(v52, 1, v44);
  v54 = v100;
  if (v53 == 1)
  {

    sub_22953EAE4(v52, &unk_27D8818D0, &qword_22A57A448);
    v55 = v98;
    v56 = v81;
    v57 = v92;
    goto LABEL_26;
  }

  v58 = v84;
  (v89)(v84, v52, v44);
  v59 = sub_229837E30(v54);

  v60 = v101;
  if ((v59 & 1) != 0 && (v100 = *(v101 + 16)) != 0)
  {
    v50 = 0;
    v99 = v101 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v89 = (v96 + 16);
    v44 = (v80 + 8);
    v61 = (v96 + 8);
    v86 = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v50 < *(v60 + 16))
    {
      v58 = v95;
      v62 = v94;
      (*(v96 + 16))(v94, v99 + *(v96 + 72) * v50, v95);
      v63 = v93;
      sub_22A4DC89C();
      sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0], MEMORY[0x277D172F8]);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v64 = *v44;
      (*v44)(v63, v45);
      if (LOBYTE(v103[0]) == v102)
      {
        v65 = sub_22A4DC88C();
        (*v61)(v62, v58);
        if (v65)
        {

          v66 = v84;
          sub_22A4DC82C();
          v67 = v81;
          [v81 isHoldActive];
          v68 = v85;
          sub_22A4DCA8C();

          v69 = *(v92 + 8);
          v70 = v90;
          v69(v66, v90);
          sub_22953EAE4(v87, &unk_27D8818D0, &qword_22A57A448);
          v69(v88, v70);
          v71 = v97;
          v55 = v98;
          goto LABEL_27;
        }
      }

      else
      {
        (*v61)(v62, v58);
      }

      if (v100 == ++v50)
      {

        v44 = v90;
        v50 = v87;
        v58 = v84;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    if (qword_27D87BA98 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v72 = sub_22A4DD07C();
  __swift_project_value_buffer(v72, qword_27D8817F8);
  v73 = sub_22A4DD05C();
  v74 = sub_22A4DDCCC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v103[0] = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_2295A3E30(0xD000000000000041, 0x800000022A598080, v103);
    _os_log_impl(&dword_229538000, v73, v74, "%s Either presetTypeFeatures is false or automation is not enabled for the preset", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x22AAD4E50](v76, -1, -1);
    MEMORY[0x22AAD4E50](v75, -1, -1);
  }

  v57 = v92;
  (*(v92 + 8))(v58, v44);
  v55 = v98;
  v56 = v81;
LABEL_26:
  v77 = v44;
  v78 = v88;
  sub_22A4DC82C();
  [v56 isHoldActive];
  v68 = v85;
  sub_22A4DCA8C();

  sub_22953EAE4(v50, &unk_27D8818D0, &qword_22A57A448);
  (*(v57 + 8))(v78, v77);
  v64 = *(v80 + 8);
  v71 = v97;
LABEL_27:
  v64(v91, v45);
  v64(v83, v45);
  v79 = v82;
  (*(v55 + 32))(v71, v68, v82);
  return (*(v55 + 56))(v71, 0, 1, v79);
}

uint64_t sub_22982C2F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22A4DC70C();
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22A4DB74C();
  v43 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_22A4DC8EC();
  v46 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v25 = [a1 state];
  if (v25 > 3 && (v25 - 6) < 2)
  {
    v41 = v10;
    v42 = a3;
    v29 = v46;
    (*(v46 + 104))(v22, *MEMORY[0x277D172E0], v19);
    v30 = (*(v29 + 32))(v24, v22, v19);
    MEMORY[0x28223BE20](v30);
    *(&v40 - 2) = v24;
    sub_229685338(sub_2298390B8, a2, v18);

    v31 = sub_22A4DC85C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v18, 1, v31) == 1)
    {

      sub_22953EAE4(v18, &unk_27D8818D0, &qword_22A57A448);
      (*(v29 + 8))(v24, v19);
      v26 = 1;
      a3 = v42;
      goto LABEL_5;
    }

    v33 = sub_22A4DC82C();
    v40 = v34;
    (*(v32 + 8))(v18, v31);
    v35 = [a1 transitionalStateEndDate];
    a3 = v42;
    if (v35)
    {
      v36 = v35;
      sub_22A4DB70C();

      v37 = v43;
      v38 = v13;
      v39 = v45;
      (*(v43 + 32))(v15, v38, v45);
      (*(v37 + 16))(v41, v15, v39);
      sub_22A4DC71C();
      sub_22A4DCAFC();

      (*(v37 + 8))(v15, v39);
      (*(v46 + 8))(v24, v19);
      v26 = 0;
      goto LABEL_5;
    }

    sub_2295798D4(v33, v40);

    (*(v46 + 8))(v24, v19);
  }

  else
  {
  }

  v26 = 1;
LABEL_5:
  v27 = sub_22A4DCB1C();
  return (*(*(v27 - 8) + 56))(a3, v26, 1, v27);
}

uint64_t sub_22982C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v8[15] = swift_task_alloc();
  v11 = sub_22A4DB7DC();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v12 = sub_22A4DB74C();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818E0, &qword_22A585558);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v13 = sub_22A4DC70C();
  v8[33] = v13;
  v8[34] = *(v13 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818E8, &unk_22A585560);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[42] = v14;
  v8[43] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[44] = v15;
  *v15 = v8;
  v15[1] = sub_22982CBE4;

  return MEMORY[0x2821716F8](v14, a1, a2);
}

uint64_t sub_22982CBE4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_22982EC78;
  }

  else
  {
    v2 = sub_22982CCF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22982CCF8()
{
  v300 = v0;
  v1 = v0;
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[41];
  v5 = v1[33];
  v6 = v1[34];
  sub_22957F2F8(v2, v3, &unk_27D8818E8, &unk_22A585560);
  sub_229564F88(v3, v4, &unk_27D8818E8, &unk_22A585560);
  v7 = *(v6 + 48);
  if (v7(v4, 1, v5) == 1)
  {
    sub_22953EAE4(v1[41], &unk_27D8818E8, &unk_22A585560);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v8 = v1[13];
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_27D8817F8);
    v10 = v8;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v1[43];
    if (v13)
    {
      v16 = v1[17];
      v15 = v1[18];
      v17 = v1[16];
      v18 = v1[13];
      v291 = v1;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v299[0] = v20;
      *v19 = 136315394;
      v21 = [v18 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_22A4DE5CC();
      v24 = v23;
      (*(v16 + 8))(v15, v17);
      v25 = sub_2295A3E30(v22, v24, v299);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
      _os_log_impl(&dword_229538000, v11, v12, "[%s] %s -> YES currentSuggestedPresetExpiration is nil", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v20, -1, -1);
      v26 = v19;
      v1 = v291;
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    v27 = v14;
    goto LABEL_64;
  }

  v28 = v1[11];
  v29 = *(v1[34] + 32);
  v29(v1[37], v1[41], v1[33]);
  v31 = sub_22A4DCA7C();
  v32 = v30;
  v33 = v28 >> 60;
  if (v28 >> 60 == 15)
  {
    if (v30 >> 60 == 15)
    {
      v35 = v1[10];
      v34 = v1[11];
      sub_2295AEF1C(v35, v34);
      sub_229590D18(v35, v34);
      goto LABEL_17;
    }

LABEL_11:
    v36 = v1[10];
    v37 = v1[11];
    sub_2295AEF1C(v36, v37);
    sub_229590D18(v36, v37);
    sub_229590D18(v31, v32);
    if (v33 > 0xE)
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v38 = v1[13];
      v39 = sub_22A4DD07C();
      __swift_project_value_buffer(v39, qword_27D8817F8);
      v40 = v38;
      v41 = sub_22A4DD05C();
      v42 = sub_22A4DDCCC();

      v43 = os_log_type_enabled(v41, v42);
      v44 = v1[43];
      v45 = v1[37];
      v46 = v1[33];
      v47 = v1[34];
      if (!v43)
      {
LABEL_40:

        (*(v47 + 8))(v45, v46);
LABEL_63:
        v27 = v44;
        goto LABEL_64;
      }

      v292 = v1[37];
      v296 = v1[43];
      v49 = v1[17];
      v48 = v1[18];
      v50 = v1[16];
      v51 = v1[13];
      v52 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      v299[0] = v286;
      *v52 = 136315394;
      v53 = [v51 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v54 = sub_22A4DE5CC();
      v280 = v46;
      v56 = v55;
      (*(v49 + 8))(v48, v50);
      v57 = sub_2295A3E30(v54, v56, v299);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
      _os_log_impl(&dword_229538000, v41, v42, "[%s] %s -> YES currentSuggestedPresetHandle is nil", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v286, -1, -1);
      MEMORY[0x22AAD4E50](v52, -1, -1);

      (*(v47 + 8))(v292, v280);
      goto LABEL_45;
    }

LABEL_19:
    sub_22956C148(v1[10], v1[11]);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v67 = v1[13];
    v68 = v1[10];
    v69 = v1[11];
    v70 = sub_22A4DD07C();
    __swift_project_value_buffer(v70, qword_27D8817F8);
    sub_2295AEF1C(v68, v69);
    v71 = v67;
    v72 = sub_22A4DD05C();
    v73 = sub_22A4DDCCC();

    sub_229590D18(v68, v69);
    if (!os_log_type_enabled(v72, v73))
    {
      v44 = v1[43];
      v98 = v1[37];
      v99 = v1[33];
      v100 = v1[34];
      v101 = v1;
      v104 = v1 + 10;
      v103 = v1[10];
      v102 = v104[1];

      v105 = v103;
      v1 = v101;
      sub_229590D18(v105, v102);
      goto LABEL_62;
    }

    v296 = v1[43];
    v275 = v1[34];
    v282 = v1[33];
    v287 = v1[37];
    v75 = v1[17];
    v74 = v1[18];
    v76 = v1[16];
    v77 = v1[13];
    v78 = v1[10];
    v268 = v1[11];
    v79 = swift_slowAlloc();
    v293 = v1;
    v80 = swift_slowAlloc();
    v299[0] = v80;
    *v79 = 136315650;
    v81 = [v77 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v82 = sub_22A4DE5CC();
    v84 = v83;
    (*(v75 + 8))(v74, v76);
    v85 = sub_2295A3E30(v82, v84, v299);

    *(v79 + 4) = v85;
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
    *(v79 + 22) = 2080;
    v86 = v78;
    v293[6] = sub_22966BC74(v78, v268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b", MEMORY[0x277D83958]);
    v87 = sub_22A4DD50C();
    v89 = v88;

    v90 = sub_2295A3E30(v87, v89, v299);

    *(v79 + 24) = v90;
    _os_log_impl(&dword_229538000, v72, v73, "[%s] %s -> YES currentSuggestedPresetHandle is 0x%s", v79, 0x20u);
    swift_arrayDestroy();
    v91 = v80;
    v1 = v293;
    MEMORY[0x22AAD4E50](v91, -1, -1);
    MEMORY[0x22AAD4E50](v79, -1, -1);

    sub_229590D18(v86, v268);
    (*(v275 + 8))(v287, v282);
LABEL_45:
    v27 = v296;
LABEL_64:
    sub_22953EAE4(v27, &unk_27D8818E8, &unk_22A585560);
    v298 = 1;
    goto LABEL_65;
  }

  if (v30 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v58 = v1[10];
  v59 = v1[11];
  sub_2295AEF1C(v58, v59);
  sub_22956C148(v31, v32);
  v60 = sub_2297B7550(v58, v59, v31, v32);
  sub_229590D18(v31, v32);
  sub_2295798D4(v31, v32);
  sub_229590D18(v58, v59);
  if (!v60)
  {
    goto LABEL_19;
  }

LABEL_17:
  v61 = v1[32];
  sub_229564F88(v1[12], v61, &qword_27D8818C0, &unk_22A5820B0);
  v62 = sub_22A4DCA3C();
  v63 = *(v62 - 8);
  v281 = *(v63 + 48);
  v64 = (v281)(v61, 1, v62);
  v65 = v1[32];
  v267 = v63;
  if (v64 == 1)
  {
    sub_22953EAE4(v65, &qword_27D8818C0, &unk_22A5820B0);
    v274 = 0;
    v66 = 0xF000000000000000;
  }

  else
  {
    v274 = sub_22A4DCA1C();
    v66 = v92;
    (*(v63 + 8))(v65, v62);
  }

  v261 = v29;
  v297 = v62;
  v93 = v1[27];
  sub_229564F88(v1[9], v93, &qword_27D8818B0, &qword_22A5854F8);
  v94 = sub_22A4DCB1C();
  v95 = *(v94 - 8);
  v263 = *(v95 + 48);
  v294 = v1;
  if (v263(v93, 1, v94) == 1)
  {
    sub_22953EAE4(v1[27], &qword_27D8818B0, &qword_22A5854F8);
    if (v66 >> 60 != 15)
    {
      v96 = 0;
      v97 = 0xF000000000000000;
LABEL_34:
      sub_229590D18(v274, v66);
      sub_229590D18(v96, v97);
LABEL_35:
      v111 = v1[28];
      sub_229564F88(v1[12], v111, &qword_27D8818C0, &unk_22A5820B0);
      v112 = (v281)(v111, 1, v297);
      v113 = v1[28];
      if (v112 == 1)
      {
        sub_22953EAE4(v1[28], &qword_27D8818C0, &unk_22A5820B0);
        if (qword_27D87BA98 != -1)
        {
          swift_once();
        }

        v114 = v1[13];
        v115 = sub_22A4DD07C();
        __swift_project_value_buffer(v115, qword_27D8817F8);
        v116 = v114;
        v41 = sub_22A4DD05C();
        v117 = sub_22A4DDCCC();

        v118 = os_log_type_enabled(v41, v117);
        v44 = v1[43];
        v45 = v1[37];
        v46 = v1[33];
        v47 = v1[34];
        if (v118)
        {
          v296 = v1[43];
          v119 = v1[18];
          v120 = v1[17];
          v121 = v294[16];
          v288 = v45;
          v122 = v294[13];
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v299[0] = v124;
          *v123 = 136315394;
          v125 = [v122 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v126 = sub_22A4DE5CC();
          v283 = v46;
          v128 = v127;
          (*(v120 + 8))(v119, v121);
          v1 = v294;
          v129 = sub_2295A3E30(v126, v128, v299);

          *(v123 + 4) = v129;
          *(v123 + 12) = 2080;
          *(v123 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
          _os_log_impl(&dword_229538000, v41, v117, "[%s] %s -> YES predictedSuggestedPreset.presetHandle is nil", v123, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v124, -1, -1);
          MEMORY[0x22AAD4E50](v123, -1, -1);

          (*(v47 + 8))(v288, v283);
          goto LABEL_45;
        }

        goto LABEL_40;
      }

      v130 = sub_22A4DCA1C();
      v132 = v131;
      (*(v267 + 8))(v113, v297);
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v133 = v1[13];
      v134 = sub_22A4DD07C();
      __swift_project_value_buffer(v134, qword_27D8817F8);
      v135 = v133;
      sub_22956C148(v130, v132);
      v136 = sub_22A4DD05C();
      v137 = sub_22A4DDCCC();

      sub_2295798D4(v130, v132);
      if (os_log_type_enabled(v136, v137))
      {
        v296 = v1[43];
        v276 = v1[34];
        v284 = v1[33];
        v289 = v1[37];
        v272 = v137;
        v139 = v1[17];
        v138 = v1[18];
        v140 = v1[16];
        v141 = v1[13];
        v142 = swift_slowAlloc();
        v269 = swift_slowAlloc();
        v299[0] = v269;
        *v142 = 136315650;
        v143 = [v141 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v144 = sub_22A4DE5CC();
        log = v136;
        v146 = v145;
        (*(v139 + 8))(v138, v140);
        v147 = sub_2295A3E30(v144, v146, v299);

        *(v142 + 4) = v147;
        *(v142 + 12) = 2080;
        *(v142 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
        *(v142 + 22) = 2080;
        v1[7] = sub_22966BC74(v130, v132);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
        sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b", MEMORY[0x277D83958]);
        v148 = sub_22A4DD50C();
        v150 = v149;

        v151 = sub_2295A3E30(v148, v150, v299);

        *(v142 + 24) = v151;
        _os_log_impl(&dword_229538000, log, v272, "[%s] %s -> YES predictedSuggestedPreset.presetHandle is 0x%s", v142, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v269, -1, -1);
        MEMORY[0x22AAD4E50](v142, -1, -1);

        sub_2295798D4(v130, v132);
        (*(v276 + 8))(v289, v284);
        goto LABEL_45;
      }

      v44 = v1[43];
      v98 = v1[37];
      v99 = v1[33];
      v100 = v1[34];

      sub_2295798D4(v130, v132);
LABEL_62:
      (*(v100 + 8))(v98, v99);
      goto LABEL_63;
    }

    goto LABEL_30;
  }

  v271 = v94;
  v106 = v1[27];
  v96 = sub_22A4DCA1C();
  v97 = v107;
  v108 = v106;
  v94 = v271;
  (*(v95 + 8))(v108, v271);
  if (v66 >> 60 == 15)
  {
    if (v97 >> 60 != 15)
    {
      goto LABEL_34;
    }

LABEL_30:
    v271 = v94;
    sub_229590D18(v274, v66);
    goto LABEL_31;
  }

  if (v97 >> 60 == 15)
  {
    goto LABEL_34;
  }

  sub_2295AEF1C(v274, v66);
  sub_2295AEF1C(v96, v97);
  v201 = sub_2297B7550(v274, v66, v96, v97);
  sub_229590D18(v96, v97);
  sub_229590D18(v96, v97);
  sub_229590D18(v274, v66);
  sub_229590D18(v274, v66);
  if (!v201)
  {
    goto LABEL_35;
  }

LABEL_31:
  v109 = v1[31];
  sub_229564F88(v1[12], v109, &qword_27D8818C0, &unk_22A5820B0);
  if ((v281)(v109, 1, v297) == 1)
  {
    sub_22953EAE4(v1[31], &qword_27D8818C0, &unk_22A5820B0);
    v110 = 1;
  }

  else
  {
    v152 = v1[31];
    sub_22A4DCA2C();
    (*(v267 + 8))(v152, v297);
    v110 = 0;
  }

  v153 = v1[26];
  v154 = v1[9];
  v155 = *(v1[34] + 56);
  v155(v1[40], v110, 1, v1[33]);
  sub_229564F88(v154, v153, &qword_27D8818B0, &qword_22A5854F8);
  if (v263(v153, 1, v271) == 1)
  {
    sub_22953EAE4(v1[26], &qword_27D8818B0, &qword_22A5854F8);
    v156 = 1;
  }

  else
  {
    v157 = v1[26];
    sub_22A4DCA2C();
    (*(v95 + 8))(v157, v271);
    v156 = 0;
  }

  v158 = v1[39];
  v159 = v1[40];
  v160 = v1[33];
  v161 = v1[24];
  v162 = v1[25];
  v155(v158, v156, 1, v160);
  v163 = *(v161 + 48);
  sub_229564F88(v159, v162, &unk_27D8818E8, &unk_22A585560);
  sub_229564F88(v158, v162 + v163, &unk_27D8818E8, &unk_22A585560);
  v164 = v7(v162, 1, v160);
  v165 = v1[33];
  if (v164 == 1)
  {
    v166 = v1[40];
    v167 = v1;
    sub_22953EAE4(v1[39], &unk_27D8818E8, &unk_22A585560);
    sub_22953EAE4(v166, &unk_27D8818E8, &unk_22A585560);
    if (v7(v162 + v163, 1, v165) == 1)
    {
      sub_22953EAE4(v1[25], &unk_27D8818E8, &unk_22A585560);
      v168 = v1;
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  sub_229564F88(v1[25], v1[38], &unk_27D8818E8, &unk_22A585560);
  v169 = v7(v162 + v163, 1, v165);
  v167 = v1;
  v170 = v1[39];
  v171 = v294[40];
  v172 = v294[38];
  if (v169 == 1)
  {
    v174 = v294[33];
    v173 = v294[34];
    sub_22953EAE4(v170, &unk_27D8818E8, &unk_22A585560);
    sub_22953EAE4(v171, &unk_27D8818E8, &unk_22A585560);
    (*(v173 + 8))(v172, v174);
LABEL_55:
    sub_22953EAE4(v167[25], &qword_27D8818E0, &qword_22A585558);
    v168 = v167;
LABEL_56:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v175 = v168[30];
    v177 = v168[12];
    v176 = v168[13];
    v178 = sub_22A4DD07C();
    __swift_project_value_buffer(v178, qword_27D8817F8);
    sub_229564F88(v177, v175, &qword_27D8818C0, &unk_22A5820B0);
    v179 = v176;
    v180 = sub_22A4DD05C();
    v181 = sub_22A4DDCCC();

    if (os_log_type_enabled(v180, v181))
    {
      v295 = v181;
      v182 = v168[29];
      v183 = v168[30];
      v184 = v168[17];
      v185 = v168[18];
      v186 = v168[16];
      v187 = v168[13];
      v1 = v168;
      v188 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v299[0] = v277;
      *v188 = 136315650;
      v189 = [v187 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v190 = sub_22A4DE5CC();
      v192 = v191;
      (*(v184 + 8))(v185, v186);
      v193 = sub_2295A3E30(v190, v192, v299);

      *(v188 + 4) = v193;
      *(v188 + 12) = 2080;
      *(v188 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
      *(v188 + 22) = 2080;
      sub_229564F88(v183, v182, &qword_27D8818C0, &unk_22A5820B0);
      if ((v281)(v182, 1, v297) == 1)
      {
        sub_22953EAE4(v1[29], &qword_27D8818C0, &unk_22A5820B0);
        v194 = 1;
      }

      else
      {
        v247 = v1[36];
        v249 = v1[33];
        v248 = v1[34];
        v250 = v1[29];
        sub_22A4DCA2C();
        (*(v267 + 8))(v250, v297);
        sub_22A4DC6FC();
        (*(v248 + 8))(v247, v249);
        v194 = 0;
      }

      v251 = v1[43];
      v252 = v1[37];
      v254 = v1[33];
      v253 = v1[34];
      v255 = v1[30];
      v298 = 1;
      (*(v1[20] + 56))(v1[15], v194, 1, v1[19]);
      v256 = sub_22A4DD64C();
      v258 = v257;
      sub_22953EAE4(v255, &qword_27D8818C0, &unk_22A5820B0);
      v259 = sub_2295A3E30(v256, v258, v299);

      *(v188 + 24) = v259;
      _os_log_impl(&dword_229538000, v180, v295, "[%s] %s -> YES predictedSuggestedPreset.predictedTime is %s", v188, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v277, -1, -1);
      MEMORY[0x22AAD4E50](v188, -1, -1);

      (*(v253 + 8))(v252, v254);
      sub_22953EAE4(v251, &unk_27D8818E8, &unk_22A585560);
      goto LABEL_65;
    }

    v44 = v168[43];
    v197 = v168[37];
    v198 = v294[34];
    v199 = v294[33];
    v200 = v294[30];

    sub_22953EAE4(v200, &qword_27D8818C0, &unk_22A5820B0);
    (*(v198 + 8))(v197, v199);
    v1 = v294;
    goto LABEL_63;
  }

  v202 = v294[36];
  v203 = v294[33];
  v204 = v294[34];
  v278 = v294[25];
  v261(v202, v162 + v163, v203);
  sub_229839520(&qword_27D8818F8, MEMORY[0x277D171F8], MEMORY[0x277D17210]);
  v205 = sub_22A4DD58C();
  v206 = *(v204 + 8);
  v206(v202, v203);
  sub_22953EAE4(v170, &unk_27D8818E8, &unk_22A585560);
  sub_22953EAE4(v171, &unk_27D8818E8, &unk_22A585560);
  v206(v172, v203);
  sub_22953EAE4(v278, &unk_27D8818E8, &unk_22A585560);
  v168 = v294;
  if ((v205 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_72:
  v208 = v168[22];
  v207 = v168[23];
  v210 = v168[20];
  v209 = v168[21];
  v211 = v168[19];
  v212 = v168[13];
  sub_22A4DC6FC();
  v213 = [objc_msgSend(v212 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  v214 = *(v210 + 8);
  v214(v209, v211);
  v215 = sub_22A4DB6BC();
  v214(v208, v211);
  v214(v207, v211);
  if ((v215 & 1) == 0)
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v1 = v294;
    v217 = v294[37];
    v219 = v294[34];
    v218 = v294[35];
    v220 = v294[33];
    v221 = v294[13];
    v222 = sub_22A4DD07C();
    __swift_project_value_buffer(v222, qword_27D8817F8);
    (*(v219 + 16))(v218, v217, v220);
    v223 = v221;
    v224 = sub_22A4DD05C();
    v225 = sub_22A4DDCCC();

    v226 = os_log_type_enabled(v224, v225);
    v227 = v294[43];
    v228 = v294[37];
    v229 = v294[34];
    v230 = v294[35];
    v231 = v294[33];
    if (!v226)
    {

      v260 = *(v229 + 8);
      v260(v230, v231);
      v260(v228, v231);
      v27 = v227;
      goto LABEL_64;
    }

    v264 = v294[23];
    loga = v294[19];
    v285 = v224;
    v290 = v294[37];
    v233 = v294[17];
    v232 = v294[18];
    v270 = v294[33];
    v234 = v294[16];
    v296 = v294[43];
    v235 = v294[13];
    v273 = v225;
    v236 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    v299[0] = v279;
    *v236 = 136315906;
    v237 = [v235 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v238 = sub_22A4DE5CC();
    v262 = v230;
    v240 = v239;
    (*(v233 + 8))(v232, v234);
    v241 = sub_2295A3E30(v238, v240, v299);

    *(v236 + 4) = v241;
    *(v236 + 12) = 2080;
    *(v236 + 14) = sub_2295A3E30(0xD000000000000094, 0x800000022A597FE0, v299);
    *(v236 + 22) = 2080;
    sub_22A4DC6FC();
    sub_229839520(&qword_281403890, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v242 = sub_22A4DE5CC();
    v244 = v243;
    v214(v264, loga);
    v245 = *(v229 + 8);
    v245(v262, v270);
    v246 = sub_2295A3E30(v242, v244, v299);

    *(v236 + 24) = v246;
    *(v236 + 32) = 2048;
    *(v236 + 34) = 0x40AC200000000000;
    _os_log_impl(&dword_229538000, v285, v273, "[%s] %s -> YES currentSuggestedPresetExpiration: %s, is within the refresh interval: %f", v236, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v279, -1, -1);
    MEMORY[0x22AAD4E50](v236, -1, -1);

    v245(v290, v270);
    goto LABEL_45;
  }

  v216 = v168[43];
  (*(v168[34] + 8))(v168[37], v168[33]);
  sub_22953EAE4(v216, &unk_27D8818E8, &unk_22A585560);
  v298 = 0;
  v1 = v168;
LABEL_65:

  v195 = v1[1];

  return v195(v298);
}

uint64_t sub_22982EC78()
{
  v28 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[13];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  if (v8)
  {
    v26 = v0[45];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    v16 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v11 + 8))(v10, v12);
    v20 = sub_2295A3E30(v17, v19, &v27);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_22A4DE6DC();
    v23 = sub_2295A3E30(v21, v22, &v27);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read currentSuggestedPresetExpiration with error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_22982F020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = v12;
  *(v8 + 56) = v13;
  *(v8 + 120) = a7;
  *(v8 + 32) = a6;
  *(v8 + 40) = a8;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = sub_22A4DB7DC();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22982F0F4, 0, 0);
}

uint64_t sub_22982F0F4()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22982F1B0;
  v6 = v0[3];
  v5 = v0[4];

  return sub_22982FA40(v6, v5, v3, v2);
}

uint64_t sub_22982F1B0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22982F4D8;
  }

  else
  {
    v2 = sub_22982F2C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22982F2C4()
{
  v1 = *(v0 + 120);
  if (v1 == 5 || v1 == 3)
  {
    sub_22982FCF0();
  }

  v3 = *(v0 + 16);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v5);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_22982F39C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);

  return sub_22983023C(v9, v7, v8, v5, v4);
}

uint64_t sub_22982F39C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22982F78C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22982F4D8()
{
  v25 = v0;
  v1 = v0[12];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v22 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed command with error %@", v12, 0x16u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22982F78C()
{
  v25 = v0;
  v1 = v0[14];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v22 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed command with error %@", v12, 0x16u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22982FA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x2822009F8](sub_22982FA68, 0, 0);
}

uint64_t sub_22982FA68()
{
  v1 = *(v0 + 88);
  v7 = *(v0 + 72);
  *(v0 + 40) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v1);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_22982FB50;
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  return MEMORY[0x282171680](v0 + 16, v4, v5);
}

uint64_t sub_22982FB50()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22982FC8C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22982FC8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_22982FCF0()
{
  v1 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB7DC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = [objc_msgSend(v1 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = [objc_msgSend(v1 dataSource)];
  swift_unknownObjectRelease();
  sub_229832324();
  v15 = sub_22A4DD5AC();

  v16 = sub_22A4DB6AC();
  v40[0] = 0;
  v17 = [v14 scheduleTaskWithIdentifier:v15 fireDate:v16 onObserver:v1 selector:sel_handleValenciaTimerFiredWithNotification_ error:v40];

  if (v17)
  {
    v18 = v40[0];
    v13(v11, v5);
  }

  else
  {
    v19 = v40[0];
    v20 = sub_22A4DB3EC();

    swift_willThrow();
    v13(v11, v5);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v21 = sub_22A4DD07C();
    __swift_project_value_buffer(v21, qword_27D8817F8);
    v22 = v1;
    v23 = v20;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40[0] = v28;
      *v26 = 136315650;
      v29 = [v22 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = v39;
      v31 = sub_22A4DE5CC();
      v33 = v32;
      (*(v38 + 8))(v4, v30);
      v34 = sub_2295A3E30(v31, v33, v40);

      *(v26 + 4) = v34;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD000000000000026, 0x800000022A597FB0, v40);
      *(v26 + 22) = 2112;
      v35 = v20;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v36;
      *v27 = v36;
      _os_log_impl(&dword_229538000, v24, v25, "[%s] %s Failed to start automation failure detection timer: %@", v26, 0x20u);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22983023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8);
  v6[18] = swift_task_alloc();
  v7 = sub_22A4DCB1C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22983033C, 0, 0);
}

uint64_t sub_22983033C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_229564F88(*(v0 + 104), v3, &qword_27D8818B0, &qword_22A5854F8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 112);
    sub_22953EAE4(*(v0 + 144), &qword_27D8818B0, &qword_22A5854F8);
    v5 = sub_22A4DCA3C();
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {

      v6 = *(v0 + 8);

      return v6();
    }

    else
    {
      v13 = *(v0 + 136);
      v18 = *(v0 + 120);
      *(v0 + 40) = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v13);
      v15 = swift_task_alloc();
      *(v0 + 192) = v15;
      *v15 = v0;
      v15[1] = sub_2298307A8;
      v16 = *(v0 + 96);

      return MEMORY[0x2821716F0](v0 + 16, v16);
    }
  }

  else
  {
    v8 = *(v0 + 136);
    v17 = *(v0 + 120);
    (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
    *(v0 + 80) = v17;
    v9 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v17 - 8) + 16))(v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_229830604;
    v11 = *(v0 + 168);
    v12 = *(v0 + 96);

    return MEMORY[0x2821716C0](v0 + 56, v12, v11);
  }
}

uint64_t sub_229830604()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2298308FC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = sub_229830720;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229830720()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2298307A8()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22983098C, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_2298308FC()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22983098C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229830A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 256) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 128) = swift_getObjectType();
  v6 = sub_22A4DB7DC();
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();
  sub_22A4DC8EC();
  *(v5 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  *(v5 + 168) = swift_task_alloc();
  v7 = sub_22A4DC85C();
  *(v5 + 176) = v7;
  *(v5 + 184) = *(v7 - 8);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229830BD4, 0, 0);
}

uint64_t sub_229830BD4()
{
  v44 = v0;
  v1 = *(v0 + 104);
  v2 = sub_22A4DCB1C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);
    *(swift_task_alloc() + 16) = v7;
    sub_229685338(sub_229839098, v6, v5);

    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_22953EAE4(*(v0 + 168), &unk_27D8818D0, &qword_22A57A448);
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 120);
      v9 = sub_22A4DD07C();
      __swift_project_value_buffer(v9, qword_27D8817F8);
      v10 = v8;
      v11 = sub_22A4DD05C();
      v12 = sub_22A4DDCEC();

      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v0 + 144);
        v13 = *(v0 + 152);
        v15 = *(v0 + 136);
        v16 = *(v0 + 120);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v43[0] = v18;
        *v17 = 136315394;
        v19 = [v16 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v20 = sub_22A4DE5CC();
        v22 = v21;
        (*(v14 + 8))(v13, v15);
        v23 = sub_2295A3E30(v20, v22, v43);

        *(v17 + 4) = v23;
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, v43);
        _os_log_impl(&dword_229538000, v11, v12, "[%s] %s Unable to find preset struct to log", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v18, -1, -1);
        MEMORY[0x22AAD4E50](v17, -1, -1);
      }

      v24 = *(v0 + 8);

      return v24();
    }

    v34 = *(v0 + 208);
    v35 = *(v0 + 160);
    v36 = *(v0 + 120);
    v37 = *(v0 + 256);
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    sub_22A4DC83C();
    v38 = sub_2296F027C(v35, v37 == 5);
    v39 = [objc_msgSend(v36 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    *v34 = v38;
    v34[1] = v37;
    v40 = [v36 swiftExtensions];
    _s15SwiftExtensionsCMa_1();
    v41 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
    os_unfair_lock_lock(v41);
    sub_22978620C(&v41[2], v36, (v0 + 16));
    os_unfair_lock_unlock(v41);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    v42[1] = sub_229831774;
    v33 = *(v0 + 208);
  }

  else
  {
    v26 = *(v0 + 216);
    v27 = *(v0 + 120);
    v28 = *(v0 + 256);
    v29 = [objc_msgSend(v27 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    *v26 = 6;
    v26[1] = v28;
    v30 = [v27 swiftExtensions];
    _s15SwiftExtensionsCMa_1();
    v31 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
    os_unfair_lock_lock(v31);
    sub_22978620C(&v31[2], v27, (v0 + 56));
    os_unfair_lock_unlock(v31);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v32 = swift_task_alloc();
    *(v0 + 224) = v32;
    *v32 = v0;
    v32[1] = sub_229831250;
    v33 = *(v0 + 216);
  }

  return sub_2296C7160(v33);
}

uint64_t sub_229831250()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_22983142C;
  }

  else
  {
    v2 = sub_229831364;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229831364()
{
  sub_229839118(v0[27], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22983142C()
{
  v25 = v0;
  sub_229839118(v0[27], type metadata accessor for ThermostatSuggestedPreset.Current);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[29];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, &v24);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v22 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed save thermostat suggested preset with error %@", v12, 0x20u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_229831774()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_229831970;
  }

  else
  {
    v2 = sub_229831888;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229831888()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_229839118(v0[26], type metadata accessor for ThermostatSuggestedPreset.Current);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_229831970()
{
  v28 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_229839118(v0[26], type metadata accessor for ThermostatSuggestedPreset.Current);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[31];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  v6 = sub_22A4DD07C();
  __swift_project_value_buffer(v6, qword_27D8817F8);
  v7 = v5;
  v8 = v4;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = v0[15];
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v15 = 136315650;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v27);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000046, 0x800000022A597F60, &v27);
    *(v15 + 22) = 2112;
    v21 = v4;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v22;
    *v25 = v22;
    _os_log_impl(&dword_229538000, v9, v10, "[%s] %s Failed save thermostat suggested preset with error %@", v15, 0x20u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

BOOL sub_229831CD8(uint64_t a1)
{
  v1 = sub_22A4DC82C();
  v3 = v2;
  v4 = sub_22A4DCA7C();
  v6 = v5;
  v7 = sub_2297B7550(v1, v3, v4, v5);
  sub_2295798D4(v4, v6);
  sub_2295798D4(v1, v3);
  return v7;
}

id HMDHAPAccessory.delegateQueue.getter()
{
  v1 = [v0 workQueue];

  return v1;
}

Swift::Void __swiftcall HMDHAPAccessory.homeActivityStateManager(_:didMoveToState:)(HMDHomeActivityStateManager *_, HMDHomeActivityStateDetails *didMoveToState)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = [v2 home];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22A4DD9DC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v2;
    v9[5] = v7;
    v10 = v2;
    sub_22957F3C0(0, 0, v5, &unk_22A585370, v9);
  }
}

uint64_t sub_229831EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_22981DFEC(a5, 3);
}

uint64_t sub_229831F98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229831EF8(a1, v4, v5, v7, v6);
}

unint64_t sub_2298321A0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_22A4DE1FC();

  v8 = 0xD00000000000001FLL;
  v9 = 0x800000022A5980F0;
  v5 = [v0 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v6 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v6);

  (*(v2 + 8))(v4, v1);
  return v8;
}

unint64_t sub_229832324()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_22A4DE1FC();

  v8 = 0xD000000000000029;
  v9 = 0x800000022A598140;
  v5 = [v0 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v6 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v6);

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_2298324A8(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v44 - v9;
  v11 = [a1 userInfo];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_22A4DD49C();

  v44[1] = sub_22A4DD5EC();
  v44[2] = v14;
  sub_22A4DE18C();
  if (!*(v13 + 16) || (v15 = sub_2295402E8(v45), (v16 & 1) == 0))
  {

    sub_22954045C(v45);
LABEL_11:
    v46 = 0u;
    v47 = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v13 + 56) + 32 * v15, &v46);
  sub_22954045C(v45);

  if (!*(&v47 + 1))
  {
LABEL_12:
    sub_22953EAE4(&v46, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D8817F8);
    v23 = v2;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45[0] = v27;
      *v26 = 136315394;
      v28 = [v23 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v29 = sub_22A4DE5CC();
      v31 = v30;
      (*(v5 + 8))(v7, v4);
      v32 = sub_2295A3E30(v29, v31, v45);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, v45);
      _os_log_impl(&dword_229538000, v24, v25, "[%s] %s Missing identifier from Background Task Manager payload", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    return;
  }

  v18 = v45[0];
  v17 = v45[1];
  v19 = [v2 home];
  if (v19)
  {
    v20 = v19;
    if (v18 == sub_2298321A0() && v17 == v21)
    {
    }

    else
    {
      v33 = sub_22A4DE60C();

      if ((v33 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v34 = sub_22A4DD9DC();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = v2;
    v35[5] = v20;
    v36 = v2;
    sub_22957F3C0(0, 0, v10, &unk_22A5854B0, v35);
  }

LABEL_21:
  v37 = [v2 home];
  if (!v37)
  {

    return;
  }

  v38 = v37;
  if (v18 == sub_229832324() && v17 == v39)
  {

LABEL_27:
    v41 = sub_22A4DD9DC();
    (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v2;
    v42[5] = v38;
    v43 = v2;
    sub_22957F3C0(0, 0, v10, &unk_22A5854A0, v42);

    return;
  }

  v40 = sub_22A4DE60C();

  if (v40)
  {
    goto LABEL_27;
  }
}

uint64_t sub_229832AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB7DC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229832B80, 0, 0);
}

uint64_t sub_229832B80()
{
  v21 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v20);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, &v20);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Valencia refresh timer fired", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_229839A40;
  v18 = v0[3];

  return sub_22981DFEC(v18, 4);
}

uint64_t sub_229832E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DB7DC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229832EE0, 0, 0);
}

uint64_t sub_229832EE0()
{
  v21 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v20);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000027, 0x800000022A597ED0, &v20);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Valencia automation failure detection timer fired", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[7] = v17;
  *v17 = v0;
  v17[1] = sub_22983317C;
  v18 = v0[3];

  return sub_22983328C(v18);
}

uint64_t sub_22983317C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22983328C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_22A4DB7DC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881910, &qword_22A5855A0);
  v2[26] = swift_task_alloc();
  v4 = sub_22A4DCA4C();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v5 = sub_22A4DCD0C();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229833460, 0, 0);
}

uint64_t sub_229833460()
{
  v48 = v0;
  v1 = [*(v0 + 176) matterAdapter];
  *(v0 + 288) = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 matterDevice];
  *(v0 + 296) = v3;
  if (!v3)
  {

LABEL_8:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 176);
    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8817F8);
    v14 = v12;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v20 = *(v0 + 176);
      v19 = *(v0 + 184);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v47 = v22;
      *v21 = 136315394;
      v23 = [v20 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      v27 = sub_2295A3E30(v24, v26, &v47);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v47);
      _os_log_impl(&dword_229538000, v15, v16, "[[%s]] %s Invalid matter accessory", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = [*(v0 + 176) valenciaMatterEndpoint];
  *(v0 + 304) = v5;
  if (v5)
  {
    [v5 unsignedShortValue];
    sub_22A4DCCEC();
    v6 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v7 = MEMORY[0x277D17450];
    *(v0 + 120) = v6;
    *(v0 + 128) = v7;
    *(v0 + 96) = v4;
    v8 = v4;
    v9 = swift_task_alloc();
    *(v0 + 312) = v9;
    *v9 = v0;
    v9[1] = sub_229833A34;
    v10 = *(v0 + 280);
    v11 = *(v0 + 208);

    return MEMORY[0x282171700](v11, v0 + 96, v10);
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 176);
  v30 = sub_22A4DD07C();
  __swift_project_value_buffer(v30, qword_27D8817F8);
  v31 = v29;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v45 = v33;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v38 = 136315394;
    v39 = [v37 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = sub_22A4DE5CC();
    v42 = v41;
    (*(v35 + 8))(v34, v36);
    v43 = sub_2295A3E30(v40, v42, &v47);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v47);
    _os_log_impl(&dword_229538000, v32, v45, "[%s] %s No Valencia Thermostat Endpoints", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v46, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

LABEL_13:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_229833A34()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_229834434;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v3 = sub_229833B50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229833B50()
{
  v96 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

    sub_22953EAE4(v3, &qword_27D881910, &qword_22A5855A0);
  }

  else
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    (*(v2 + 32))(v7, v3, v1);
    v9 = *(v2 + 16);
    v9(v8, v7, v1);
    v10 = (*(v2 + 88))(v8, v1);
    v11 = *MEMORY[0x277D17340];
    if (v10 == *MEMORY[0x277D17340] || v10 == *MEMORY[0x277D17338])
    {
      v13 = v10;
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 176);
      v15 = sub_22A4DD07C();
      __swift_project_value_buffer(v15, qword_27D8817F8);
      v16 = v14;
      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCCC();

      if (os_log_type_enabled(v17, v18))
      {
        v92 = v18;
        v20 = *(v0 + 192);
        v19 = *(v0 + 200);
        v22 = *(v0 + 176);
        v21 = *(v0 + 184);
        v23 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v95 = v89;
        *v23 = 136315650;
        v24 = [v22 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v25 = sub_22A4DE5CC();
        v27 = v26;
        (*(v20 + 8))(v19, v21);
        v28 = sub_2295A3E30(v25, v27, &v95);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v95);
        *(v23 + 22) = 2080;
        *(v0 + 328) = v13 == v11;
        v29 = sub_22A4DD64C();
        v31 = sub_2295A3E30(v29, v30, &v95);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_229538000, v17, v92, "[%s] %s Posting notification with reason: %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v89, -1, -1);
        MEMORY[0x22AAD4E50](v23, -1, -1);
      }

      v81 = *(v0 + 304);
      v32 = v13 == v11;
      v87 = *(v0 + 296);
      v33 = *(v0 + 288);
      v93 = *(v0 + 280);
      v34 = *(v0 + 272);
      v90 = *(v0 + 264);
      v35 = *(v0 + 224);
      v83 = *(v0 + 216);
      v85 = *(v0 + 256);
      v36 = *(v0 + 176);
      v37 = [*(v0 + 168) notificationCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 72) = MEMORY[0x277D83B88];
      *(inited + 40) = v39;
      *(inited + 48) = v32;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      v40 = sub_22A4DD47C();

      logAndPostNotificationWithNotificationCenter(v37, @"HMDAccessoryAdaptiveTemperatureAutomationFailureDetected", v36, v40);

      (*(v35 + 8))(v85, v83);
      (*(v34 + 8))(v93, v90);
    }

    else
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 256);
      v42 = *(v0 + 240);
      v43 = *(v0 + 216);
      v44 = *(v0 + 176);
      v45 = sub_22A4DD07C();
      __swift_project_value_buffer(v45, qword_27D8817F8);
      v9(v42, v41, v43);
      v46 = v44;
      v47 = sub_22A4DD05C();
      v48 = sub_22A4DDCCC();

      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v0 + 296);
      v91 = *(v0 + 304);
      v51 = *(v0 + 280);
      v53 = *(v0 + 264);
      v52 = *(v0 + 272);
      v94 = *(v0 + 256);
      v88 = *(v0 + 240);
      if (v49)
      {
        v76 = *(v0 + 224);
        v74 = *(v0 + 232);
        v75 = *(v0 + 216);
        v80 = v48;
        v86 = *(v0 + 280);
        v55 = *(v0 + 192);
        v54 = *(v0 + 200);
        log = v47;
        v56 = *(v0 + 176);
        v57 = *(v0 + 184);
        v82 = *(v0 + 288);
        v84 = *(v0 + 264);
        v58 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v95 = v78;
        *v58 = 136315650;
        v59 = [v56 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v60 = sub_22A4DE5CC();
        v77 = v50;
        v62 = v61;
        (*(v55 + 8))(v54, v57);
        v63 = sub_2295A3E30(v60, v62, &v95);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_2295A3E30(0xD00000000000002CLL, 0x800000022A598110, &v95);
        *(v58 + 22) = 2080;
        v9(v74, v88, v75);
        v64 = sub_22A4DD64C();
        v66 = v65;
        v67 = *(v76 + 8);
        v67(v88, v75);
        v68 = sub_2295A3E30(v64, v66, &v95);

        *(v58 + 24) = v68;
        _os_log_impl(&dword_229538000, log, v80, "[%s] %s Not handling notFollowingReason %s.", v58, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v78, -1, -1);
        MEMORY[0x22AAD4E50](v58, -1, -1);

        v67(v94, v75);
        (*(v52 + 8))(v86, v84);
        v67(*(v0 + 248), *(v0 + 216));
      }

      else
      {
        v69 = *(v0 + 216);
        v70 = *(v0 + 224);

        v71 = *(v70 + 8);
        v71(v88, v69);
        v71(v94, v69);
        (*(v52 + 8))(v51, v53);
        v71(*(v0 + 248), *(v0 + 216));
      }
    }
  }

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_229834434()
{
  v39 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 176);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  if (v8)
  {
    v36 = *(v0 + 264);
    v37 = *(v0 + 280);
    v33 = *(v0 + 288);
    v34 = *(v0 + 304);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v35 = *(v0 + 296);
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v19 = 136315394;
    v20 = [v17 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_22A4DE5CC();
    v31 = v7;
    v22 = v9;
    v24 = v23;
    (*(v16 + 8))(v15, v18);
    v25 = sub_2295A3E30(v21, v24, &v38);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v26 = sub_22A4DE6DC();
    v28 = sub_2295A3E30(v26, v27, &v38);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_229538000, v6, v31, "[%s] Failed to read Valencia not following reason or hold context: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v32, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v14 + 8))(v37, v36);
  }

  else
  {

    (*(v14 + 8))(v12, v13);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t _s27UpdateSuggestedPresetReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s27UpdateSuggestedPresetReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_229834948()
{
  result = qword_27D881878;
  if (!qword_27D881878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881878);
  }

  return result;
}

uint64_t sub_22983499C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = sub_22A4DBC7C();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, &v37, &qword_27D880BF0, &unk_22A585580);
  if (v38)
  {
    return sub_229557188(&v37, a3);
  }

  v35 = a1;
  v36 = v3;
  sub_22953EAE4(a1, &qword_27D880BF0, &unk_22A585580);
  sub_22953EAE4(&v37, &qword_27D880BF0, &unk_22A585580);
  v15 = [a2 swiftExtensions];
  swift_unknownObjectRelease();
  v16 = sub_229834DF4();
  v33 = v17;
  v34 = v16;
  *&v37 = 91;
  *(&v37 + 1) = 0xE100000000000000;
  v18 = [a2 uuid];
  sub_22A4DB79C();

  sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v19 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v19);

  (*(v11 + 8))(v13, v10);
  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  v32 = *(&v37 + 1);
  v20 = v37;
  sub_22A4DBC6C();
  v21 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
  v38 = v7;
  v39 = sub_229839520(&qword_281403838, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  v23 = v40;
  (*(v40 + 16))(boxed_opaque_existential_1, v9, v7);
  v24 = _s32DefaultAccessoryPresenceObserverCMa(0);
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  v26 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerContinuation;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881920, &qword_22A57CA70);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  *(v25 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_observerTask) = 0;
  v28 = v25 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_keepOccupiedTimer;
  *(v28 + 32) = 0;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  v29 = v33;
  *(v25 + 112) = v34;
  *(v25 + 120) = v29;
  sub_229557188(&v37, v25 + 128);
  *(v25 + 168) = v21;
  *(v25 + 176) = v20;
  *(v25 + 184) = v32;
  v30 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  (*(*(v31 - 8) + 56))(v25 + v30, 1, 2, v31);
  (*(v23 + 8))(v9, v7);
  a3[3] = v24;
  a3[4] = &off_283CDF900;
  *a3 = v25;
  return sub_22957F1C4(a3, v35);
}

uint64_t sub_229834DF4()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_msgSend(v0 dataSource)];
  swift_unknownObjectRelease();
  v6 = sub_22A4DD5AC();
  v7 = [v5 preferenceForKey_];

  v8 = [v7 numberValue];
  if (v8)
  {
    v9 = v8;
    v46 = v7;
    v10 = [v8 unsignedIntegerValue];
    v45 = 1000000000000000000 * v10;
    v47 = (v10 * 0xDE0B6B3A7640000uLL) >> 64;
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8817F8);
    v12 = v0;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = v2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48 = v17;
      *v16 = 136315650;
      v18 = [v12 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_22A4DE5CC();
      v21 = v20;
      v15[1](v4, v1);
      v22 = sub_2295A3E30(v19, v21, &v48);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5982C0, &v48);
      *(v16 + 22) = 2080;
      v23 = v45;
      v24 = sub_22A4DE82C();
      v26 = sub_2295A3E30(v24, v25, &v48);

      *(v16 + 24) = v26;
      v27 = v14;
      v28 = v23;
      _os_log_impl(&dword_229538000, v13, v27, "[%s] %s Using duration in preference: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    else
    {

      return v45;
    }
  }

  else
  {
    v46 = v2;
    v28 = sub_22A4DE88C();
    v47 = v29;
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v30 = sub_22A4DD07C();
    __swift_project_value_buffer(v30, qword_27D8817F8);
    v31 = v0;
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCCC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315650;
      v36 = [v31 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_22A4DE5CC();
      v39 = v38;
      v46[1](v4, v1);
      v40 = sub_2295A3E30(v37, v39, &v48);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A5982C0, &v48);
      *(v34 + 22) = 2080;
      v41 = sub_22A4DE82C();
      v43 = sub_2295A3E30(v41, v42, &v48);

      *(v34 + 24) = v43;
      _os_log_impl(&dword_229538000, v32, v33, "[%s] %s Using default duration: %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }
  }

  return v28;
}

uint64_t sub_229835414(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v26 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v27 = &v26 - v6;
  v30 = sub_22A4DB7DC();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v29 = &v26 - v14;
  v16 = sub_22A4DD9DC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = [v2 uuid];
  sub_22A4DB79C();

  (*(v4 + 16))(v7, v31, v3);
  v18 = *(v8 + 32);
  v19 = v30;
  v18(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v30);
  v20 = v4;
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = (v5 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 8) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v20 + 32))(v24 + v21, v27, v26);
  *(v24 + v22) = v28;
  v18((v24 + v23), &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  return sub_22957F3C0(0, 0, v29, &unk_22A585600, v24);
}

uint64_t sub_229835750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_22A4DB74C();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_22A4DB7DC();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v9 = _s13PresenceStateOMa(0);
  v6[20] = v9;
  v6[21] = *(v9 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EBB0, &qword_22A57C720);
  v6[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EA20, &unk_22A585610);
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229835990, 0, 0);
}

uint64_t sub_229835990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  sub_22A4DDA3C();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_229835A74;
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_229835A74()
{

  return MEMORY[0x2822009F8](sub_229835B70, 0, 0);
}

uint64_t sub_229835B70()
{
  v65 = v0;
  v1 = v0[25];
  if ((*(v0[21] + 48))(v1, 1, v0[20]) == 1)
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    v5 = v0[12];
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8817F8);
    (*(v3 + 16))(v2, v5, v4);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64 = v14;
      *v13 = 136315394;
      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_22A4DE5CC();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      v18 = sub_2295A3E30(v15, v17, &v64);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2295A3E30(0xD000000000000025, 0x800000022A598210, &v64);
      _os_log_impl(&dword_229538000, v7, v8, "[%s] %s RoomPresencePublisher stopped the stream", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    goto LABEL_21;
  }

  sub_2296986F8(v1, v0[24]);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
LABEL_20:
    v47 = v0[27];
    v46 = v0[28];
    v48 = v0[26];
    sub_229839118(v0[24], _s13PresenceStateOMa);
    (*(v47 + 8))(v46, v48);
LABEL_21:

    v49 = v0[1];

    return v49();
  }

  v20 = Strong;
  v21 = [Strong home];
  v0[31] = v21;
  if (!v21)
  {

    goto LABEL_20;
  }

  v22 = v21;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v24 = v0[23];
  v23 = v0[24];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[12];
  v29 = sub_22A4DD07C();
  __swift_project_value_buffer(v29, qword_27D8817F8);
  (*(v27 + 16))(v25, v28, v26);
  sub_229696298(v23, v24);
  v30 = sub_22A4DD05C();
  v31 = sub_22A4DDCCC();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v0[23];
  if (v32)
  {
    v62 = v31;
    log = v30;
    v34 = v0[19];
    v35 = v0[16];
    v36 = v0[17];
    v60 = v0[22];
    v37 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v0[9] = v61;
    *v37 = 136315650;
    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v38 = sub_22A4DE5CC();
    v40 = v39;
    (*(v36 + 8))(v34, v35);
    v41 = sub_2295A3E30(v38, v40, v0 + 9);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2295A3E30(0xD000000000000025, 0x800000022A598210, v0 + 9);
    *(v37 + 22) = 2080;
    sub_229696298(v33, v60);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v43 = (*(*(v42 - 8) + 48))(v60, 2, v42);
    if (v43)
    {
      if (v43 == 1)
      {
        v44 = 0x6E776F6E6B6E75;
      }

      else
      {
        v44 = 0x646569707563636FLL;
      }

      if (v43 == 1)
      {
        v45 = 0xE700000000000000;
      }

      else
      {
        v45 = 0xE800000000000000;
      }
    }

    else
    {
      v54 = v0[14];
      v55 = v0[15];
      v56 = v0[13];
      (*(v54 + 32))(v55, v0[22], v56);
      v0[7] = 0;
      v0[8] = 0xE000000000000000;
      sub_22A4DE1FC();

      v0[5] = 0xD000000000000016;
      v0[6] = 0x800000022A590330;
      sub_229839520(&qword_281403890, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v57 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v57);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);
      v44 = v0[5];
      v45 = v0[6];
      (*(v54 + 8))(v55, v56);
    }

    sub_229839118(v0[23], _s13PresenceStateOMa);
    v58 = sub_2295A3E30(v44, v45, v0 + 9);

    *(v37 + 24) = v58;
    _os_log_impl(&dword_229538000, log, v62, "[%s] %s %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v61, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  else
  {
    v51 = v0[19];
    v52 = v0[16];
    v53 = v0[17];

    sub_229839118(v33, _s13PresenceStateOMa);
    (*(v53 + 8))(v51, v52);
  }

  v59 = swift_task_alloc();
  v0[32] = v59;
  *v59 = v0;
  v59[1] = sub_22983638C;

  return sub_22981DFEC(v22, 5);
}

uint64_t sub_22983638C()
{

  return MEMORY[0x2822009F8](sub_229836488, 0, 0);
}

uint64_t sub_229836488(uint64_t a1)
{
  if ((isInternalBuild() & 1) != 0 && (v2 = [*(v1 + 240) valenciaMatterEndpoint], (*(v1 + 264) = v2) != 0))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D240, &qword_22A578188);
    v4 = sub_22A4DCD0C();
    *(v1 + 272) = v4;
    v5 = *(v4 - 8);
    *(v1 + 280) = v5;
    *(v1 + 304) = *(v5 + 80);
    v6 = swift_allocObject();
    *(v1 + 288) = v6;
    *(v6 + 16) = xmmword_22A576180;
    [v3 unsignedShortValue];
    sub_22A4DCCEC();
    v7 = swift_task_alloc();
    *(v1 + 296) = v7;
    *v7 = v1;
    v7[1] = sub_2298366B8;
    v8 = *(v1 + 248);
    v9 = *(v1 + 192);

    return sub_229836914(v9, v8, v6);
  }

  else
  {
    v11 = *(v1 + 240);
    v12 = *(v1 + 248);
    sub_229839118(*(v1 + 192), _s13PresenceStateOMa);

    v13 = swift_task_alloc();
    *(v1 + 232) = v13;
    *v13 = v1;
    v13[1] = sub_229835A74;
    v14 = *(v1 + 200);
    v15 = *(v1 + 208);

    return MEMORY[0x2822003E8](v14, 0, 0, v15);
  }
}

uint64_t sub_2298366B8()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = (*(*v0 + 304) + 32) & ~*(*v0 + 304);

  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_229836834, 0, 0);
}

uint64_t sub_229836834()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 192);

  sub_229839118(v3, _s13PresenceStateOMa);
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_229835A74;
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);

  return MEMORY[0x2822003E8](v5, 0, 0, v6);
}

uint64_t sub_229836914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = swift_getObjectType();
  _s13PresenceStateOMa(0);
  v4[34] = swift_task_alloc();
  v5 = sub_22A4DCD0C();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[38] = v6;
  v4[39] = *(v6 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229836A78, 0, 0);
}

uint64_t sub_229836A78()
{
  v1 = v0[32];
  v2 = [v1 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v3 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v3);
  sub_22978620C(&v3[2], v1, v0 + 24);
  os_unfair_lock_unlock(v3);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v0 + 24, v0[27]);
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_229836BC0;

  return sub_2296C31A8();
}

uint64_t sub_229836BC0(uint64_t a1, uint64_t a2)
{
  *(*v3 + 344) = a2;

  if (v2)
  {

    v4 = sub_2298377BC;
  }

  else
  {
    v4 = sub_229836CDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229836CDC()
{
  v100 = v0;
  v1 = v0[43];
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = v0[43];
  if (!*(v2 + 16))
  {

LABEL_18:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v35 = v0[32];
    v36 = sub_22A4DD07C();
    __swift_project_value_buffer(v36, qword_27D8817F8);
    v37 = v35;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = v0[39];
      v40 = v0[40];
      v42 = v0[38];
      v43 = v0[32];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v99 = v45;
      *v44 = 136315394;
      v46 = [v43 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = sub_22A4DE5CC();
      v49 = v48;
      (*(v41 + 8))(v40, v42);
      v50 = sub_2295A3E30(v47, v49, &v99);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v99);
      _os_log_impl(&dword_229538000, v38, v39, "[%s] %s Could not get room from adaptive temperature driver settings", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    goto LABEL_28;
  }

  v3 = v0[30];
  (*(v0[39] + 16))(v0[41], v2 + ((*(v0[39] + 80) + 32) & ~*(v0[39] + 80)), v0[38]);

  v4 = sub_22A4DB77C();
  v5 = [v3 roomWithUUID_];

  if (!v5)
  {
    (*(v0[39] + 8))(v0[41], v0[38]);
    goto LABEL_18;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v6 = v0[32];
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D8817F8);
  v8 = v6;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  v97 = v5;
  v98 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[39];
    v12 = v0[40];
    v13 = v0[38];
    v14 = v0[32];
    v15 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v99 = v93;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v11 + 8))(v12, v13);
    v20 = sub_2295A3E30(v17, v19, &v99);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v99);
    _os_log_impl(&dword_229538000, v9, v10, "[%s] %s Posting presence state changed notification", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v93, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  v21 = v0[31];
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[36];
    v26 = *(v23 + 16);
    v25 = v23 + 16;
    v24 = v26;
    v27 = v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v28 = *(v25 + 56);
    v29 = MEMORY[0x277D84F90];
    do
    {
      v30 = v98[37];
      v31 = v98[35];
      v24(v30, v27, v31);
      v32 = sub_22A4DCCFC();
      (*(v25 - 8))(v30, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22958BBE4(0, *(v29 + 2) + 1, 1, v29);
      }

      v34 = *(v29 + 2);
      v33 = *(v29 + 3);
      if (v34 >= v33 >> 1)
      {
        v29 = sub_22958BBE4((v33 > 1), v34 + 1, 1, v29);
      }

      *(v29 + 2) = v34 + 1;
      *&v29[2 * v34 + 32] = v32;
      v27 += v28;
      --v22;
    }

    while (v22);
    goto LABEL_24;
  }

  v29 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_24:
    v51 = v98[34];
    v52 = v98[29];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A5761B0;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v54;
    sub_229696298(v52, v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
    v56 = (*(*(v55 - 8) + 48))(v51, 2, v55);
    v57 = v98[34];
    if (v56)
    {
      sub_229839118(v98[34], _s13PresenceStateOMa);
    }

    else
    {
      v58 = sub_22A4DB74C();
      (*(*(v58 - 8) + 8))(v57, v58);
    }

    v59 = v98[39];
    v94 = v98[38];
    v95 = v98[41];
    v92 = v98[32];
    v60 = v98[30];
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = v56 == 0;
    *(inited + 80) = sub_22A4DD5EC();
    *(inited + 88) = v61;
    v62 = [v97 name];
    v63 = sub_22A4DD5EC();
    v65 = v64;

    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v63;
    *(inited + 104) = v65;
    *(inited + 128) = sub_22A4DD5EC();
    *(inited + 136) = v66;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881918, &qword_22A585630);
    *(inited + 144) = v29;
    v67 = sub_22956AC5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();
    v68 = [v60 notificationCenter];
    sub_2296F7AE8(v67);

    v0 = v98;
    v69 = sub_22A4DD47C();

    logAndPostNotificationWithNotificationCenter(v68, @"HMDAccessoryAdaptiveTemperaturePresenceStateChanged", v92, v69);

    (*(v59 + 8))(v95, v94);
    goto LABEL_28;
  }

  v72 = v0[32];

  v73 = v72;
  v74 = sub_22A4DD05C();
  v75 = sub_22A4DDCEC();

  v76 = os_log_type_enabled(v74, v75);
  v77 = v0[41];
  if (v76)
  {
    v96 = v0[41];
    v79 = v0[39];
    v78 = v0[40];
    v80 = v0[38];
    v81 = v0[32];
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v99 = v83;
    *v82 = 136315394;
    v84 = [v81 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v85 = sub_22A4DE5CC();
    v87 = v86;
    v88 = *(v79 + 8);
    v88(v78, v80);
    v89 = sub_2295A3E30(v85, v87, &v99);

    *(v82 + 4) = v89;
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v99);
    _os_log_impl(&dword_229538000, v74, v75, "[%s] %s No thermostat endpoints", v82, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v83, -1, -1);
    MEMORY[0x22AAD4E50](v82, -1, -1);

    v88(v96, v80);
  }

  else
  {
    v91 = v0[38];
    v90 = v0[39];

    (*(v90 + 8))(v77, v91);
  }

LABEL_28:

  v70 = v0[1];

  return v70();
}

uint64_t sub_2298377BC()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = v0[38];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v19);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000042, 0x800000022A598240, &v19);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Could not get room from adaptive temperature driver settings", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_229837A4C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_229838C58(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_229837B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        goto LABEL_13;
      }

      if (a1 != 7)
      {
        goto LABEL_15;
      }
    }

    else if (a1 != 4)
    {
      v3 = MEMORY[0x277D172C8];
      goto LABEL_14;
    }

    v3 = MEMORY[0x277D172E8];
    goto LABEL_14;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v3 = MEMORY[0x277D172D8];
      goto LABEL_14;
    }

LABEL_13:
    v3 = MEMORY[0x277D172B8];
    goto LABEL_14;
  }

  if (a1 == 1)
  {
    v3 = MEMORY[0x277D172E0];
LABEL_14:
    v4 = *v3;
    v5 = sub_22A4DC8EC();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a2, v4, v5);
    v6 = *(v12 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
    goto LABEL_16;
  }

LABEL_15:
  v10 = sub_22A4DC8EC();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_16:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_229837CBC()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22A4DC84C();
  if (v4 == 2)
  {
    return 0;
  }

  v6 = v4;
  sub_22A4DC83C();
  sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0], MEMORY[0x277D172F8]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v3, v0);
  return (v7[15] == v7[14]) & v6;
}

uint64_t sub_229837E30(uint64_t a1)
{
  v2 = v1;
  v55[3] = *MEMORY[0x277D85DE8];
  v4 = sub_22A4DC96C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v9 = v11;
  v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v13 = *(v10 + 56);
  v14 = (v10 - 8);
  v47 = v10;
  v48 = v2;
  v53 = v11;
  v51 = 0;
  v52 = v13;
  v11(v7, v12, v4);
  while (1)
  {
    if ((sub_22A4DC95C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v15 = sub_22A4DC94C();
    v17 = v16;
    v18 = sub_22A4DC82C();
    v20 = v17 >> 62;
    v21 = v19 >> 62;
    if (v17 >> 62 == 3)
    {
      v22 = 0;
      if (!v15 && v17 == 0xC000000000000000 && v19 >> 62 == 3)
      {
        v22 = 0;
        if (!v18 && v19 == 0xC000000000000000)
        {
          sub_2295798D4(0, 0xC000000000000000);
          v43 = 0;
          v44 = 0xC000000000000000;
          goto LABEL_60;
        }
      }

LABEL_25:
      if (v21 > 1)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v28 = *(v15 + 16);
        v27 = *(v15 + 24);
        v25 = __OFSUB__(v27, v28);
        v22 = v27 - v28;
        if (v25)
        {
          goto LABEL_65;
        }

        goto LABEL_25;
      }

      v22 = 0;
      if (v21 > 1)
      {
        goto LABEL_19;
      }
    }

    else if (v20)
    {
      LODWORD(v22) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_64;
      }

      v22 = v22;
      if (v21 > 1)
      {
LABEL_19:
        if (v21 != 2)
        {
          if (!v22)
          {
            break;
          }

LABEL_4:
          sub_2295798D4(v18, v19);
          sub_2295798D4(v15, v17);
          v13 = v52;
          v9 = v53;
LABEL_5:
          (*v14)(v7, v4);
          goto LABEL_6;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        v25 = __OFSUB__(v23, v24);
        v26 = v23 - v24;
        if (v25)
        {
          goto LABEL_63;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v22 = BYTE6(v17);
      if (v21 > 1)
      {
        goto LABEL_19;
      }
    }

LABEL_26:
    if (!v21)
    {
      v26 = BYTE6(v19);
LABEL_28:
      if (v22 != v26)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }

    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    if (v22 != HIDWORD(v18) - v18)
    {
      goto LABEL_4;
    }

LABEL_32:
    if (v22 < 1)
    {
      break;
    }

    if (v20 > 1)
    {
      v49 = v18;
      v50 = v19;
      if (v20 != 2)
      {
        memset(v55, 0, 14);
        v29 = v49;
        v30 = v50;
        goto LABEL_53;
      }

      v31 = *(v15 + 16);
      v46 = *(v15 + 24);
      v32 = sub_22A4DB24C();
      if (v32)
      {
        v33 = sub_22A4DB27C();
        if (__OFSUB__(v31, v33))
        {
          goto LABEL_68;
        }

        v32 += v31 - v33;
      }

      if (__OFSUB__(v46, v31))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (!v20)
      {
        v55[0] = v15;
        LOWORD(v55[1]) = v17;
        BYTE2(v55[1]) = BYTE2(v17);
        BYTE3(v55[1]) = BYTE3(v17);
        BYTE4(v55[1]) = BYTE4(v17);
        BYTE5(v55[1]) = BYTE5(v17);
        v29 = v18;
        v30 = v19;
LABEL_53:
        v36 = v51;
        sub_229838464(v55, v29, v30, &v54);
        v51 = v36;
        sub_2295798D4(v29, v30);
        sub_2295798D4(v15, v17);
        v37 = v54;
        goto LABEL_56;
      }

      if (v15 >> 32 < v15)
      {
        goto LABEL_66;
      }

      v49 = v18;
      v50 = v19;
      v34 = sub_22A4DB24C();
      if (v34)
      {
        v46 = v34;
        v35 = sub_22A4DB27C();
        if (__OFSUB__(v15, v35))
        {
          goto LABEL_69;
        }

        v32 = v15 - v35 + v46;
      }

      else
      {
        v32 = 0;
      }
    }

    sub_22A4DB26C();
    v38 = v32;
    v39 = v49;
    v40 = v50;
    v41 = v51;
    sub_229838464(v38, v49, v50, v55);
    v51 = v41;
    sub_2295798D4(v39, v40);
    sub_2295798D4(v15, v17);
    v37 = v55[0];
LABEL_56:
    (*v14)(v7, v4);
    v13 = v52;
    v9 = v53;
    if (v37)
    {
      return 1;
    }

LABEL_6:
    v12 += v13;
    if (!--v8)
    {
      return 0;
    }

    v9(v7, v12, v4);
  }

  sub_2295798D4(v18, v19);
  v43 = v15;
  v44 = v17;
LABEL_60:
  sub_2295798D4(v43, v44);
  (*v14)(v7, v4);
  return 1;
}

BOOL sub_229838314()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC83C();
  sub_229839520(&qword_27D87C398, MEMORY[0x277D172F0], MEMORY[0x277D172F8]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v3, v0);
  return v7 == v6;
}

uint64_t sub_229838464@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22A4DB24C();
    if (v10)
    {
      v11 = sub_22A4DB27C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22A4DB26C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22A4DB24C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22A4DB27C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22A4DB26C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL sub_229838694()
{
  v0 = sub_22A4DCDAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DCD7C();
  sub_229839520(&unk_27D881930, MEMORY[0x277D17430], MEMORY[0x277D17440]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v4 = *(v1 + 8);
  v4(v3, v0);
  if (v8 == v7)
  {
    return 1;
  }

  sub_22A4DCD3C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v4(v3, v0);
  if (v8 == v7)
  {
    return 1;
  }

  sub_22A4DCD4C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v4(v3, v0);
  if (v8 == v7)
  {
    return 1;
  }

  sub_22A4DCD1C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v4(v3, v0);
  if (v8 == v7)
  {
    return 1;
  }

  sub_22A4DCD5C();
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v4(v3, v0);
  return v8 == v7;
}

uint64_t sub_229838920(char *a1)
{
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  (*(v3 + 16))(&v16 - v7, a1, v2);
  sub_22A4DCD7C();
  sub_229839520(&qword_27D87F288, MEMORY[0x277D17430], MEMORY[0x277D17438]);
  v9 = sub_22A4DD58C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(a1, v2);
    v10(v8, v2);
    return 6;
  }

  else
  {
    sub_22A4DCD3C();
    v12 = sub_22A4DD58C();
    v10(v6, v2);
    if (v12)
    {
      v10(a1, v2);
      v10(v8, v2);
      return 7;
    }

    else
    {
      sub_22A4DCD1C();
      v13 = sub_22A4DD58C();
      v10(v6, v2);
      if (v13)
      {
        v10(a1, v2);
        v10(v8, v2);
        return 9;
      }

      else
      {
        sub_22A4DCD5C();
        v14 = sub_22A4DD58C();
        v10(v6, v2);
        if (v14)
        {
          v10(a1, v2);
          v10(v8, v2);
          return 8;
        }

        else
        {
          sub_22A4DCD4C();
          v15 = sub_22A4DD58C();
          v10(a1, v2);
          v10(v6, v2);
          v10(v8, v2);
          if (v15)
          {
            return 10;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

uint64_t sub_229838C58(uint64_t result)
{
  if (result >= 0xDu)
  {
    return 13;
  }

  else
  {
    return result;
  }
}

unint64_t sub_229838C6C()
{
  result = qword_27D881880;
  if (!qword_27D881880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881880);
  }

  return result;
}

uint64_t sub_229838CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229832E20(a1, v4, v5, v7, v6);
}

uint64_t sub_229838D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229832AC0(a1, v4, v5, v7, v6);
}

uint64_t sub_229838E40(uint64_t a1)
{
  v3 = *(sub_22A4DCD0C() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22A4DCA9C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_229569B30;

  return sub_22982F020(a1, v9, v10, v1 + 32, v1 + v4, v1 + v7, v12, v11);
}

uint64_t sub_229839118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_229839178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2298222C4(a1, v4, v5, v6);
}

uint64_t sub_22983922C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229820EB0();
}

uint64_t sub_2298392E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22A4DB7DC() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_229586D38;

  return sub_229835750(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_229839458(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_229820D1C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229839520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229839568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2298200D8(a1, v4, v5, v7, v6);
}

uint64_t sub_229839628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22981FDB4();
}

uint64_t sub_2298396EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_22981BF48(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_100Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_229839818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229586D38;

  return sub_2298192FC(a1, v4, v5, v6, v7, v9, v8);
}

_BYTE *sub_2298398EC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_2298399C4()
{
  result = qword_27D881950;
  if (!qword_27D881950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881950);
  }

  return result;
}

void sub_229839A44(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_229839B44(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_27D87CEF0, off_278666100);
    sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
    sub_22A4DDBAC();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_22A4DE12C())
        {
          goto LABEL_19;
        }

        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_22953EE84(v18);
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_229839DDC(uint64_t a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, a3, a4);
    sub_22959E62C(a5, a3, a4);
    sub_22A4DDBAC();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_22953EE84(v8);
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_229839FD8()
{
  result = sub_22A4DD5AC();
  qword_27D8AB9C0 = result;
  return result;
}

void sub_22983A244()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger, v2);
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_229538000, v6, v7, "Configuring local presence notification coordinator", v8, 2u);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [objc_msgSend(Strong dataSource)];
    swift_unknownObjectRelease();
    if (v11)
    {
      [*(v1 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_notificationCenter) addObserver:v1 selector:sel_handlePresenceStateChanged_ name:@"HMDAccessoryAdaptiveTemperaturePresenceStateChanged" object:v10];
    }
  }

  sub_22983A6C0();
}

id sub_22983A430(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultSecurePolicy];
    v5 = [objc_opt_self() userMessagePolicyWithHome:v3 userPrivilege:3 remoteAccessRequired:0];
    v6 = [objc_msgSend(v3 featuresDataSource)];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = [a1 name];
      if (qword_27D87BAA0 != -1)
      {
        swift_once();
      }

      v8 = sub_22A4DD5EC();
      v10 = v9;
      if (v8 == sub_22A4DD5EC() && v10 == v11)
      {

LABEL_9:
        v13 = [a1 name];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_22A582080;
        *(v14 + 32) = v4;
        *(v14 + 40) = v5;
        sub_229562F68(0, qword_281401B40, 0x277D0F838);
        v15 = v4;
        v16 = v5;
        v17 = sub_22A4DD81C();

        v18 = HMFCreateMessageBindingWithReceiver();

        return v18;
      }

      v12 = sub_22A4DE60C();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_22983A6C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher);
    if (v2)
    {
      v14 = Strong;
      v3 = v2;
      v4 = [objc_msgSend(v14 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = v14;
        v14 = v3;
      }

      else
      {
        v6 = [objc_opt_self() defaultSecurePolicy];
        v7 = [objc_opt_self() userMessagePolicyWithHome:v14 userPrivilege:3 remoteAccessRequired:0];
        v8 = [objc_msgSend(v14 featuresDataSource)];
        swift_unknownObjectRelease();
        if (v8)
        {
          if (qword_27D87BAA0 != -1)
          {
            swift_once();
          }

          v9 = qword_27D8AB9C0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_22A582080;
          *(v10 + 32) = v6;
          *(v10 + 40) = v7;
          sub_229562F68(0, qword_281401B40, 0x277D0F838);
          v11 = v6;
          v12 = v7;
          v13 = sub_22A4DD81C();

          [v3 registerForMessage:v9 receiver:v0 policies:v13 selector:sel_handlePresenceStateChangedMessage_];
        }

        v5 = v3;
      }

      Strong = v14;
    }
  }
}

void sub_22983A908()
{
  v1 = sub_22A4DB7DC();
  v89 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v2 = sub_22A4DCD0C();
  v91 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v90 = &v75 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  if ([objc_opt_self() supportsBulletinBoard])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v86 = v5;
      v87 = v6;
      v88 = Strong;
      v15 = [Strong supportsAdaptiveTemperatureAutomations];
      v16 = [v15 BOOLValue];

      if (v16 && (v17 = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v85 = v17;
        v18 = *&v0[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher];
        if (v18)
        {
          v82 = v0;
          v19 = v18;
          v20 = sub_22A4DB20C();
          if (v20)
          {
            v84 = v19;
            sub_22976EEB8(v20);
            v22 = v21;

            if (v22)
            {
              v23 = sub_22A4DD5EC();
              if (v22[2])
              {
                v25 = sub_229543DBC(v23, v24);
                v27 = v26;

                if (v27)
                {
                  sub_2295404B0(v22[7] + 32 * v25, v94);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881918, &qword_22A585630);
                  if (swift_dynamicCast())
                  {
                    v80 = v93;
                    v28 = *(v87 + 16);
                    v76 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger;
                    v29 = v86;
                    v78 = v87 + 16;
                    v77 = v28;
                    v28(v13, &v82[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger], v86);

                    v30 = sub_22A4DD05C();
                    v31 = sub_22A4DDCCC();
                    v81 = v22;

                    LODWORD(v83) = v31;
                    v32 = v31;
                    v33 = v30;
                    if (!os_log_type_enabled(v30, v32))
                    {

                      v43 = *(v87 + 8);
                      v44 = v13;
                      v42 = v29;
                      goto LABEL_27;
                    }

                    v34 = swift_slowAlloc();
                    v79 = swift_slowAlloc();
                    v94[0] = v79;
                    *v34 = 136315394;
                    if (qword_27D87BAA0 == -1)
                    {
                      goto LABEL_13;
                    }

                    while (1)
                    {
                      swift_once();
LABEL_13:
                      v35 = sub_22A4DD5EC();
                      v37 = sub_2295A3E30(v35, v36, v94);

                      *(v34 + 4) = v37;
                      *(v34 + 12) = 2080;
                      v93 = v81;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                      v38 = sub_22A4DBA6C();
                      v40 = sub_2295A3E30(v38, v39, v94);

                      *(v34 + 14) = v40;
                      _os_log_impl(&dword_229538000, v33, v83, "Sending %s message with payload: %s", v34, 0x16u);
                      v41 = v79;
                      swift_arrayDestroy();
                      MEMORY[0x22AAD4E50](v41, -1, -1);
                      MEMORY[0x22AAD4E50](v34, -1, -1);

                      v42 = v86;
                      v43 = *(v87 + 8);
                      v44 = v13;
LABEL_27:
                      v79 = v43;
                      v43(v44, v42);
                      v47 = v80[2];
                      if (v47)
                      {
                        v48 = (v80 + 4);
                        v83 = v91 + 32;
                        v49 = MEMORY[0x277D84F90];
                        do
                        {
                          v48 += 2;
                          sub_22A4DCCEC();
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v49 = sub_22958BCE0(0, v49[2] + 1, 1, v49);
                          }

                          v51 = v49[2];
                          v50 = v49[3];
                          if (v51 >= v50 >> 1)
                          {
                            v49 = sub_22958BCE0((v50 > 1), v51 + 1, 1, v49);
                          }

                          v49[2] = v51 + 1;
                          (*(v91 + 32))(v49 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v51, v4, v2);
                          --v47;
                        }

                        while (v47);
                      }

                      else
                      {
                        v49 = MEMORY[0x277D84F90];
                      }

                      if (!v49[2])
                      {

                        v52 = v86;
                        v77(v9, &v82[v76], v86);
                        v53 = v80;

                        v54 = sub_22A4DD05C();
                        v55 = sub_22A4DDCEC();

                        if (os_log_type_enabled(v54, v55))
                        {
                          v56 = swift_slowAlloc();
                          v57 = swift_slowAlloc();
                          v94[0] = v57;
                          *v56 = 136315138;
                          v58 = MEMORY[0x22AAD0A20](v53, MEMORY[0x277D84C58]);
                          v60 = v59;

                          v61 = sub_2295A3E30(v58, v60, v94);

                          *(v56 + 4) = v61;
                          _os_log_impl(&dword_229538000, v54, v55, "endpoints are empty %s", v56, 0xCu);
                          __swift_destroy_boxed_opaque_existential_0(v57);
                          MEMORY[0x22AAD4E50](v57, -1, -1);
                          MEMORY[0x22AAD4E50](v56, -1, -1);

                          v62 = v85;
                        }

                        else
                        {

                          v62 = v88;
                        }

                        v79(v9, v52);
                        return;
                      }

                      v9 = 0;
                      sub_22983C2D4(v88, v85, v49);
                      v64 = v63;

                      if ((v64 & 0xC000000000000001) != 0)
                      {
                        swift_unknownObjectRetain();
                        sub_22A4DE09C();
                        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
                        sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
                        sub_22A4DDBAC();
                        v65 = v94[0];
                        v34 = v94[1];
                        v66 = v94[2];
                        v4 = v94[3];
                        v13 = v94[4];
                      }

                      else
                      {
                        v67 = -1 << *(v64 + 32);
                        v34 = v64 + 56;
                        v66 = ~v67;
                        v68 = -v67;
                        v69 = v68 < 64 ? ~(-1 << v68) : -1;
                        v13 = (v69 & *(v64 + 56));

                        v4 = 0;
                        v65 = v64;
                      }

                      v91 = v66;
                      v2 = (v66 + 64) >> 6;
                      if (v65 < 0)
                      {
                        break;
                      }

LABEL_49:
                      v70 = v4;
                      v71 = v13;
                      v33 = v4;
                      if (v13)
                      {
LABEL_53:
                        v72 = (v71 - 1) & v71;
                        v73 = *(*(v65 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v71)))));
                        goto LABEL_56;
                      }

                      while (1)
                      {
                        v33 = (&v70->isa + 1);
                        if (__OFADD__(v70, 1))
                        {
                          break;
                        }

                        if (v33 >= v2)
                        {
                          goto LABEL_59;
                        }

                        v71 = *(v34 + 8 * v33);
                        v70 = (v70 + 1);
                        if (v71)
                        {
                          goto LABEL_53;
                        }
                      }

                      __break(1u);
                    }

                    while (1)
                    {
                      v74 = sub_22A4DE12C();
                      if (!v74)
                      {
                        break;
                      }

                      v92 = v74;
                      sub_229562F68(0, &qword_27D87CEF0, off_278666100);
                      swift_dynamicCast();
                      v73 = v93;
                      v33 = v4;
                      v72 = v13;
LABEL_56:
                      if (!v73)
                      {
                        break;
                      }

                      v93 = v73;
                      sub_22983C970(&v93, v82, v81, v84);

                      v4 = v33;
                      v13 = v72;
                      if ((v65 & 0x8000000000000000) == 0)
                      {
                        goto LABEL_49;
                      }
                    }

LABEL_59:
                    sub_22953EE84(v65);

                    v46 = v85;
                  }

                  else
                  {

                    v46 = v85;
                  }

                  goto LABEL_23;
                }
              }

              else
              {
              }

              v46 = v88;
LABEL_23:

              return;
            }

            v45 = v85;
          }

          else
          {

            v45 = v85;
          }
        }

        else
        {

          v45 = v85;
        }
      }

      else
      {
        v45 = v88;
      }
    }
  }
}

uint64_t sub_22983B668(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB57C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 messagePayload];
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = v12;
  v54 = v8;
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v15 = sub_22A4DD49C();

  v16 = sub_22A4DD5EC();
  if (!*(v15 + 16))
  {

    goto LABEL_14;
  }

  v53 = v9;
  v18 = sub_229543DBC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v18, v57);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v21 = v55;
  v22 = sub_22A4DD5EC();
  if (!*(v15 + 16))
  {

    goto LABEL_14;
  }

  v52[3] = v21;
  v24 = sub_229543DBC(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_2295404B0(*(v15 + 56) + 32 * v24, v57);

  v27 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    v29 = v55;
    v28 = v56;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v32 = [Strong home];
      if (v32)
      {
        v33 = v32;
        v34 = v31;
        v35 = [v34 name];
        sub_22A4DD5EC();

        sub_2295575D8(v34, v33, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_22A576180;
        *(v36 + 56) = v27;
        *(v36 + 64) = sub_229562E8C();
        *(v36 + 32) = v29;
        *(v36 + 40) = v28;
        v37 = sub_22A4DD5AC();
        v38 = HMDLocalizedStringForKey(v37);

        sub_22A4DD5EC();
        sub_22A4DD5BC();

        v39 = [v34 bulletinBoard];
        v40 = [v34 name];
        if (!v40)
        {
          sub_22A4DD5EC();
          v40 = sub_22A4DD5AC();
        }

        v41 = sub_22A4DD5AC();

        v42 = sub_22A4DB4EC();
        [v39 insertClimateBulletinForAccessory:v34 title:v40 body:v41 actionURL:v42];

        return (*(v53 + 8))(v11, v54);
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  v4 = v14;
LABEL_16:
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger, v4);
  v44 = v2;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDCEC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57[0] = v48;
    *v47 = 136315138;
    v49 = sub_22A4DB76C();
    v51 = sub_2295A3E30(v49, v50, v57);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_229538000, v45, v46, "%s Could not get payload from message", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id sub_22983BCF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalPresenceBulletinNotificationCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LocalPresenceBulletinNotificationCoordinator(uint64_t a1)
{
  result = qword_27D8819D0;
  if (!qword_27D8819D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22983BEA0(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    result = sub_22A4DD07C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_22983BF90(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AAD13F0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_229572000(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_22A4DE0EC();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

id sub_22983C084(void *a1, void *a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v19[1] = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_home;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_msgDispatcher] = 0;
  sub_22A4DD5EC();
  sub_22A4DD06C();
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_notificationCenter] = a2;
  v10 = a2;
  v11 = [a1 uuid];
  sub_22A4DB79C();

  v12 = *(v6 + 32);
  v12(&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID], v8, v5);
  swift_unknownObjectWeakAssign();
  v13 = [a1 uuid];
  sub_22A4DB79C();

  v12(&v2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_accessoryUUID], v8, v5);
  v14 = [a1 home];
  swift_unknownObjectWeakAssign();

  v15 = [a1 msgDispatcher];
  v16 = *&v2[v9];
  *&v2[v9] = v15;

  v17 = type metadata accessor for LocalPresenceBulletinNotificationCoordinator(0);
  v20.receiver = v2;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

void sub_22983C2D4(uint64_t a1, id a2, uint64_t a3)
{
  v47 = [a2 accessoryBulletinNotificationManager];
  if (!v47)
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    return;
  }

  v44 = *(a3 + 16);
  if (!v44)
  {
    goto LABEL_55;
  }

  v43 = objc_opt_self();
  sub_22A4DCD0C();
  v4 = 0;
  v5 = MEMORY[0x277D84FA0];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v8 = [v43 bulletinSupportedMatterPathsForAccessory:a1 endpointID:v7];

    if (!v8)
    {
      goto LABEL_5;
    }

    v46 = v4;
    sub_229562F68(0, &qword_27D87E358, off_278666270);
    sub_22959E62C(&qword_27D8819F0, &qword_27D87E358, off_278666270);
    v9 = sub_22A4DDB6C();

    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_22A4DE09C();
      sub_22A4DDBAC();
      v9 = v56;
      v10 = v57;
      v11 = v58;
      v12 = v59;
      v13 = v60;
    }

    else
    {
      v12 = 0;
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);
    }

    v17 = (v11 + 64) >> 6;
    v49 = v10;
    v50 = v9;
    v48 = v17;
LABEL_15:
    if ((v9 & 0x8000000000000000) == 0)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (v13)
      {
LABEL_20:
        v21 = (v19 - 1) & v19;
        v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
        if (v22)
        {
          break;
        }
      }

      else
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v17)
          {
            break;
          }

          v19 = *(v10 + 8 * v20);
          ++v18;
          if (v19)
          {
            goto LABEL_20;
          }
        }
      }

      goto LABEL_4;
    }

    v23 = sub_22A4DE12C();
    if (v23)
    {
      v55 = v23;
      swift_dynamicCast();
      v22 = v66;
      v20 = v12;
      v21 = v13;
      if (v66)
      {
        break;
      }
    }

LABEL_4:
    sub_22953EE84(v9);
    v4 = v46;
LABEL_5:
    if (++v4 == v44)
    {
      goto LABEL_55;
    }
  }

  v51 = v22;
  v24 = [v47 devicesToNotifyForMatterPath_];
  sub_229562F68(0, &qword_27D87CEF0, off_278666100);
  sub_22959E62C(&qword_27D8819E0, &qword_27D87CEF0, off_278666100);
  v25 = sub_22A4DDB6C();

  v66 = v6;
  v52 = v5;
  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v26 = v61;
    v27 = v62;
    v29 = v63;
    v28 = v64;
    v30 = v65;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v27 = v25 + 56;
    v29 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v25 + 56);

    v28 = 0;
    v26 = v25;
  }

  v53 = v6;
  v54 = v26;
  while (2)
  {
    v34 = v28;
    v35 = v30;
LABEL_35:
    if (v26 < 0)
    {
      if (!sub_22A4DE12C() || (swift_dynamicCast(), v38 = v55, v28 = v34, v30 = v35, !v55))
      {
LABEL_14:
        sub_22953EE84(v54);

        v5 = sub_22983BF90(v53, v52);

        v12 = v20;
        v13 = v21;
        v6 = MEMORY[0x277D84F90];
        v10 = v49;
        v9 = v50;
        v17 = v48;
        goto LABEL_15;
      }

LABEL_44:
      v39 = [v38 account];
      v40 = [objc_opt_self() sharedManager];
      v41 = [v40 account];

      if (v39)
      {
        if (v41)
        {
          sub_229562F68(0, &qword_27D8819F8, off_278666000);
          v42 = sub_22A4DDEDC();

          if (v42)
          {
LABEL_49:
            MEMORY[0x22AAD09E0]();
            if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v53 = v66;
            v26 = v54;
            continue;
          }

          goto LABEL_34;
        }

        v41 = v39;
      }

      else if (!v41)
      {
        goto LABEL_49;
      }

LABEL_34:
      v34 = v28;
      v35 = v30;
      v26 = v54;
      goto LABEL_35;
    }

    break;
  }

  v36 = v34;
  v37 = v35;
  v28 = v34;
  if (v35)
  {
LABEL_40:
    v30 = (v37 - 1) & v37;
    v38 = *(*(v26 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  while (1)
  {
    v28 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v28 >= ((v29 + 64) >> 6))
    {
      goto LABEL_14;
    }

    v37 = *(v27 + 8 * v28);
    ++v36;
    if (v37)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_55:
}

void sub_22983C970(void **a1, char *a2, uint64_t a3, void *a4)
{
  v75 = a4;
  v76 = a3;
  v6 = sub_22A4DD07C();
  v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_messageTargetUUID;
  swift_beginAccess();
  v15 = *(v10 + 16);
  v66 = v10 + 16;
  v67 = v14;
  v65 = v15;
  v15(v12, v14 + a2, v9);
  v16 = objc_allocWithZone(HMDRemoteDeviceMessageDestination);
  v17 = sub_22A4DB77C();
  v73 = v13;
  v18 = [v16 initWithTarget:v17 device:v13];

  v19 = *(v10 + 8);
  v62 = v12;
  v70 = v10 + 8;
  v71 = v9;
  v69 = v19;
  v19(v12, v9);
  if (qword_27D87BAA0 != -1)
  {
    swift_once();
  }

  v20 = qword_27D8AB9C0;
  v21 = objc_allocWithZone(HMDRemoteMessage);
  v22 = v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v23 = sub_22A4DD47C();
  v24 = [v21 initWithName:v20 destination:v22 payload:v23];
  v74 = v22;

  v25 = v77;
  (*(v77 + 16))(v8, &a2[OBJC_IVAR____TtC13HomeKitDaemon44LocalPresenceBulletinNotificationCoordinator_logger], v6);
  v26 = a2;
  v72 = v6;
  v27 = v26;
  v28 = v24;
  v29 = v8;
  v30 = v73;

  v31 = sub_22A4DD05C();
  LODWORD(v24) = sub_22A4DDCCC();

  v63 = v30;

  v73 = v28;
  v64 = v24;
  if (os_log_type_enabled(v31, v24))
  {
    v32 = swift_slowAlloc();
    v61 = v29;
    v33 = v32;
    v34 = swift_slowAlloc();
    v59 = v34;
    v60 = swift_slowAlloc();
    v78 = v60;
    *v33 = 136316162;
    v35 = sub_22A4DB76C();
    v37 = sub_2295A3E30(v35, v36, &v78);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2112;
    v38 = v73;
    *(v33 + 14) = v73;
    *v34 = v38;
    *(v33 + 22) = 2080;
    v39 = v67 + a2;
    v40 = v62;
    v67 = v31;
    v41 = v71;
    v65(v62, v39, v71);
    sub_229586A3C();
    v42 = v38;
    v43 = sub_22A4DE5CC();
    v45 = v44;
    v46 = v69;
    v69(v40, v41);
    v47 = sub_2295A3E30(v43, v45, &v78);

    *(v33 + 24) = v47;
    *(v33 + 32) = 2080;
    v48 = [v63 identifier];
    sub_22A4DB79C();

    v49 = sub_22A4DE5CC();
    v51 = v50;
    v46(v40, v41);
    v52 = sub_2295A3E30(v49, v51, &v78);

    *(v33 + 34) = v52;
    *(v33 + 42) = 2080;
    v53 = sub_22A4DD4AC();
    v55 = sub_2295A3E30(v53, v54, &v78);

    *(v33 + 44) = v55;
    v56 = v67;
    _os_log_impl(&dword_229538000, v67, v64, "%s Sending %@ to target=%s for device=%s with payload=%s", v33, 0x34u);
    v57 = v59;
    sub_2295A1C40(v59);
    MEMORY[0x22AAD4E50](v57, -1, -1);
    v58 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v58, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);

    (*(v77 + 8))(v61, v72);
  }

  else
  {

    (*(v25 + 8))(v29, v72);
    v38 = v73;
  }

  [v75 sendMessage_];
}

unint64_t sub_22983CF80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_229583714(0, v1, 0);
  v2 = v49;
  v4 = v3 + 64;
  v5 = sub_22A4DE04C();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  v42 = v3;
  v8 = 0;
  v38 = v3 + 72;
  v39 = v1;
  v40 = v3 + 64;
  v41 = v6;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v43 = v8;
    v11 = (*(v3 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v47[0] = 1701667182;
    v47[1] = 0xE400000000000000;
    v47[2] = v12;
    v47[3] = v13;
    v47[5] = MEMORY[0x277D837D0];
    v48[0] = 0x65756C6176;
    v48[1] = 0xE500000000000000;
    v48[5] = MEMORY[0x277D839F8];
    v48[2] = v14;
    v15 = sub_22A4DE40C();
    swift_bridgeObjectRetain_n();

    sub_229564F88(v47, &v44, &unk_27D87DE50, &qword_22A577CD0);
    v16 = v44;
    v17 = v45;
    result = sub_229543DBC(v44, v45);
    if (v18)
    {
      goto LABEL_25;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v15[6] + 16 * result);
    *v19 = v16;
    v19[1] = v17;
    result = sub_229543C58(v46, v15[7] + 32 * result);
    v20 = v15[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v22;
    sub_229564F88(v48, &v44, &unk_27D87DE50, &qword_22A577CD0);
    v23 = v44;
    v24 = v45;
    result = sub_229543DBC(v44, v45);
    if (v25)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v26 = (v15[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    result = sub_229543C58(v46, v15[7] + 32 * result);
    v27 = v15[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();

    v49 = v2;
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_229583714((v29 > 1), v30 + 1, 1);
      v2 = v49;
    }

    *(v2 + 16) = v30 + 1;
    *(v2 + 8 * v30 + 32) = v15;
    LODWORD(v6) = v41;
    v3 = v42;
    v9 = 1 << *(v42 + 32);
    if (v5 >= v9)
    {
      goto LABEL_30;
    }

    v4 = v40;
    v31 = *(v40 + 8 * v10);
    if ((v31 & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    if (v41 != *(v42 + 36))
    {
      goto LABEL_32;
    }

    v32 = v31 & (-2 << (v5 & 0x3F));
    if (v32)
    {
      v9 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v10 << 6;
      v34 = v10 + 1;
      v35 = (v38 + 8 * v10);
      while (v34 < (v9 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_22962F424(v5, v41, 0);
          v9 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_22962F424(v5, v41, 0);
    }

LABEL_4:
    v8 = v43 + 1;
    v5 = v9;
    if (v43 + 1 == v39)
    {
      return v2;
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
  return result;
}

unint64_t sub_22983D390(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_229583714(0, v1, 0);
  v2 = v49;
  v4 = v3 + 64;
  v5 = sub_22A4DE04C();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
  v42 = v3;
  v8 = 0;
  v38 = v3 + 72;
  v39 = v1;
  v40 = v3 + 64;
  v41 = v6;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_28;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_29;
    }

    v43 = v8;
    v11 = (*(v3 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v47[0] = 1701667182;
    v47[1] = 0xE400000000000000;
    v47[2] = v12;
    v47[3] = v13;
    v47[5] = MEMORY[0x277D837D0];
    v48[0] = 0x65756C6176;
    v48[5] = MEMORY[0x277D83B88];
    v48[1] = 0xE500000000000000;
    v48[2] = v14;
    v15 = sub_22A4DE40C();
    swift_bridgeObjectRetain_n();

    sub_229564F88(v47, &v44, &unk_27D87DE50, &qword_22A577CD0);
    v16 = v44;
    v17 = v45;
    result = sub_229543DBC(v44, v45);
    if (v18)
    {
      goto LABEL_25;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v15[6] + 16 * result);
    *v19 = v16;
    v19[1] = v17;
    result = sub_229543C58(v46, v15[7] + 32 * result);
    v20 = v15[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v22;
    sub_229564F88(v48, &v44, &unk_27D87DE50, &qword_22A577CD0);
    v23 = v44;
    v24 = v45;
    result = sub_229543DBC(v44, v45);
    if (v25)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      break;
    }

    *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v26 = (v15[6] + 16 * result);
    *v26 = v23;
    v26[1] = v24;
    result = sub_229543C58(v46, v15[7] + 32 * result);
    v27 = v15[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    v15[2] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
    swift_arrayDestroy();

    v49 = v2;
    v30 = *(v2 + 16);
    v29 = *(v2 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_229583714((v29 > 1), v30 + 1, 1);
      v2 = v49;
    }

    *(v2 + 16) = v30 + 1;
    *(v2 + 8 * v30 + 32) = v15;
    LODWORD(v6) = v41;
    v3 = v42;
    v9 = 1 << *(v42 + 32);
    if (v5 >= v9)
    {
      goto LABEL_30;
    }

    v4 = v40;
    v31 = *(v40 + 8 * v10);
    if ((v31 & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    if (v41 != *(v42 + 36))
    {
      goto LABEL_32;
    }

    v32 = v31 & (-2 << (v5 & 0x3F));
    if (v32)
    {
      v9 = __clz(__rbit64(v32)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v10 << 6;
      v34 = v10 + 1;
      v35 = (v38 + 8 * v10);
      while (v34 < (v9 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_22962F424(v5, v41, 0);
          v9 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_22962F424(v5, v41, 0);
    }

LABEL_4:
    v8 = v43 + 1;
    v5 = v9;
    if (v43 + 1 == v39)
    {
      return v2;
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
  return result;
}

uint64_t sub_22983D944()
{
  v1 = v0;
  v2 = [v0 legacyCountersManager];
  [v2 delegate];

  _s16CoreDataDelegateCMa();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + 24);

    swift_unknownObjectRelease();
    v5 = [v0 internalSwiftData];
    _s9SwiftDataCMa();
    v6 = swift_dynamicCastClassUnconditional();
    sub_22957F1C4(v6 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    swift_retain_n();
    sub_22A4DC0DC();

    __swift_destroy_boxed_opaque_existential_0(v13);
    v7 = [v0 dateProvider];
    v8 = [v1 internalSwiftData];
    v9 = swift_dynamicCastClassUnconditional();
    sub_22957F1C4(v9 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler, v13);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v4;

    v11 = v7;
    sub_22A4DC0DC();

    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_22983DC40()
{
  sub_22A4DBF2C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22983DCC0()
{
  sub_22A4DBF4C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22983DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_22A4DB74C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22983DDEC, 0, 0);
}

uint64_t sub_22983DDEC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = [v5 startOfDayByAddingDayCount_];
  sub_22A4DB70C();

  v7 = [v5 startOfDayByAddingDayCount_];
  sub_22A4DB70C();

  sub_22A4DBF7C();
  sub_22A4DBF6C();
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);

  v9 = v0[1];

  return v9();
}

void sub_22983DF50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_22A4DD5AC();
  v8 = [a1 stringForKey_];

  if (v8)
  {
    v9 = sub_22A4DD5EC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v11;
  v12 = sub_22A4DD5AC();
  v13 = [a1 stringForKey_];

  if (v13)
  {
    v14 = sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  a2[2] = v14;
  a2[3] = v16;
  v17 = sub_22A4DD5AC();
  v18 = [a1 stringForKey_];

  if (v18)
  {
    v19 = sub_22A4DD5EC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  a2[4] = v19;
  a2[5] = v21;
  v22 = sub_22A4DD5AC();
  v23 = [a1 stringForKey_];

  if (v23)
  {
    v24 = sub_22A4DD5EC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  a2[6] = v24;
  a2[7] = v26;
  v27 = sub_22A4DD5AC();
  v28 = [a1 stringForKey_];

  if (v28)
  {
    v29 = sub_22A4DD5EC();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  a2[8] = v29;
  a2[9] = v31;
  v32 = sub_22A4DD5AC();
  v33 = [a1 stringForKey_];

  if (v33)
  {
    v34 = sub_22A4DD5EC();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  a2[10] = v34;
  a2[11] = v36;
  v37 = sub_22A4DD5AC();
  v38 = [a1 dateForKey_];

  if (v38)
  {
    sub_22A4DB70C();

    v39 = sub_22A4DB74C();
    (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  }

  else
  {
    v40 = sub_22A4DB74C();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
  }

  v41 = _s11GroupFilterVMa(0);
  sub_2296692F8(v6, a2 + *(v41 + 40));
  v42 = sub_22A4DD5AC();
  v43 = [a1 stringForKey_];

  if (v43)
  {
    v44 = sub_22A4DD5EC();
    v46 = v45;
  }

  else
  {

    v44 = 0;
    v46 = 0;
  }

  v47 = (a2 + *(v41 + 44));
  *v47 = v44;
  v47[1] = v46;
}

uint64_t sub_22983E3B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DC02C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = v2[1];
  if (!v14)
  {
LABEL_9:
    v22 = v2[3];
    if (!v22)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v15 = *v2;
  (*(v5 + 104))(&v42 - v12, *MEMORY[0x277D17D20], v4);
  if (!*(a1 + 16) || (v16 = sub_2296DC140(v13), (v17 & 1) == 0))
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_30;
  }

  v18 = (*(a1 + 56) + 16 * v16);
  v44 = *v18;
  v45 = v8;
  v19 = v18[1];
  v43 = *(v5 + 8);

  v43(v13, v4);
  if (v15 != v44 || v14 != v19)
  {
    v21 = sub_22A4DE60C();

    v8 = v45;
    if (v21)
    {
      goto LABEL_9;
    }

LABEL_30:
    v40 = 0;
    return v40 & 1;
  }

  v8 = v45;
  v22 = v2[3];
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_10:
  v23 = v2[2];
  (*(v5 + 104))(v11, *MEMORY[0x277D17D18], v4);
  if (!*(a1 + 16) || (v24 = sub_2296DC140(v11), (v25 & 1) == 0))
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_30;
  }

  v26 = (*(a1 + 56) + 16 * v24);
  v27 = v26[1];
  v44 = *v26;
  v45 = v8;
  v28 = *(v5 + 8);

  v28(v11, v4);
  if (v23 == v44 && v22 == v27)
  {

    v8 = v45;
    v31 = v2[5];
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_33:
    v40 = 1;
    return v40 & 1;
  }

  v30 = sub_22A4DE60C();

  v8 = v45;
  if ((v30 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  v31 = v2[5];
  if (!v31)
  {
    goto LABEL_33;
  }

LABEL_22:
  v32 = v2[4];
  (*(v5 + 104))(v8, *MEMORY[0x277D17D10], v4);
  if (!*(a1 + 16) || (v33 = sub_2296DC140(v8), (v34 & 1) == 0))
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_30;
  }

  v35 = (*(a1 + 56) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];
  v38 = *(v5 + 8);

  v38(v8, v4);
  if (v32 == v37 && v31 == v36)
  {

    v40 = 1;
  }

  else
  {
    v40 = sub_22A4DE60C();
  }

  return v40 & 1;
}

uint64_t sub_22983E750()
{
  v3 = MEMORY[0x277D84F90];
  v1 = objc_allocWithZone(type metadata accessor for CharacteristicReadWriteLogEventObserver());
  sub_2298438AC(v0, v1);
  MEMORY[0x22AAD09E0]();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22A4DD85C();
  }

  sub_22A4DD87C();
  return v3;
}

unint64_t sub_22983E86C()
{
  v1 = v0;
  v2 = sub_22956BA70(MEMORY[0x277D84F90]);
  v3 = sub_22A4DD5EC();
  v5 = v4;
  v6 = [v1 legacyCountersManager];
  v7 = [v6 delegate];

  _s16CoreDataDelegateCMa();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRelease();
  v10 = [v1 logEventDispatcher];
  v11 = objc_allocWithZone(type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory());
  v12 = sub_2298439DC(v1, v9, v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v2;
  sub_229843F0C(v12, v3, v5, isUniquelyReferenced_nonNull_native, &v15);

  return v15;
}

void sub_22983EA34()
{
  v1 = v0;
  v2 = [v0 homeManager];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 homes];
    if (!v4)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v5 = v4;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v6 = sub_22A4DD83C();

    if (v6 >> 62)
    {
      v7 = sub_22A4DE0EC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        if (v7 >= 1)
        {
          v8 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x22AAD13F0](v8, v6);
            }

            else
            {
              v13 = *(v6 + 8 * v8 + 32);
            }

            v14 = v13;
            v15 = [v13 currentUser];
            if (!v15)
            {
              goto LABEL_10;
            }

            v16 = v15;
            if ([v15 isOwner])
            {
              v9 = [v1 logEventSubmitter];
              v10 = objc_allocWithZone(type metadata accessor for RestrictedGuestFeatureLogEvent());
              v11 = RestrictedGuestFeatureLogEvent.init(home:)(v14);
            }

            else
            {
              if (![v16 isRestrictedGuest])
              {
                goto LABEL_9;
              }

              v9 = [v1 logEventSubmitter];
              v17 = objc_allocWithZone(type metadata accessor for RestrictedGuestInfoLogEvent());
              v11 = RestrictedGuestInfoLogEvent.init(home:)(v14);
            }

            v12 = v11;
            [v9 submitLogEvent_];
            swift_unknownObjectRelease();

LABEL_9:
LABEL_10:
            ++v8;

            if (v7 == v8)
            {
              goto LABEL_20;
            }
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

LABEL_20:
  }
}

uint64_t sub_22983ECEC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  v10 = a1;
  v11 = [v10 legacyCountersManager];
  v12 = [v11 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    a4(v9);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_22983F06C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = _s11GroupFilterVMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 legacyCountersManager];
  v10 = [v9 delegate];

  _s16CoreDataDelegateCMa();
  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = a1;
    sub_22983DF50(v12, v8);
    sub_229564F88(v8 + *(v6 + 40), v5, &unk_27D881AA0, &qword_22A57BC20);
    v13 = sub_22A4DB74C();
    v14 = (*(*(v13 - 8) + 48))(v5, 1, v13);
    sub_22953EAE4(v5, &unk_27D881AA0, &qword_22A57BC20);
    if (v14 == 1 || !*(v8 + *(v6 + 44) + 8))
    {
      sub_22983F388(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v18 = sub_22A4DD47C();

      [v12 respondWithPayload_];
    }

    else
    {
      v15 = objc_opt_self();
      v16 = sub_22A4DD5AC();
      v17 = [v15 hmfErrorWithCode:3 reason:v16];

      v18 = sub_22A4DB3DC();
      [v12 respondWithError_];
    }

    sub_229843E8C(v8);
  }

  else
  {
    v19 = [v1 notEnabledError];
    v22 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v20 = v22;
  }
}

void sub_22983F388(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E338, &qword_22A57BB48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_22A4DB82C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = _s11GroupFilterVMa(0);
  sub_229564F88(a1 + *(v12 + 40), v11, &unk_27D881AA0, &qword_22A57BC20);
  v13 = sub_22A4DB74C();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_22953EAE4(v11, &unk_27D881AA0, &qword_22A57BC20);
  if (v14 != 1 && *(a1 + *(v12 + 44) + 8))
  {
    goto LABEL_29;
  }

  v15 = [v54 legacyCountersManager];
  v16 = [v15 delegate];

  _s16CoreDataDelegateCMa();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_29:
    sub_22956AC5C(MEMORY[0x277D84F90]);
    return;
  }

  v51 = v12;
  v52 = a1;
  v18 = *(v17 + 24);

  swift_unknownObjectRelease();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22A4DB7EC();
  v20 = sub_22A4DB7FC();
  (*(v6 + 8))(v8, v5);
  [v19 setLocale_];

  v21 = sub_22A4DD5AC();
  v53 = v19;
  [v19 setDateFormat_];

  sub_22A4DB8DC();
  v22 = sub_22A4DB91C();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v4, 1, v22) != 1)
  {
    v24 = sub_22A4DB8EC();
    (*(v23 + 8))(v4, v22);
  }

  [v53 setTimeZone_];

  v50 = v18;
  v25 = sub_22A4DBFFC();
  v26 = v25;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v30)
  {
LABEL_15:
    v35 = (v32 << 9) | (8 * __clz(__rbit64(v30)));
    v36 = *(*(v26 + 48) + v35);
    v37 = *(*(v26 + 56) + v35);

    v38 = sub_229840D40(v36, v37, v52, v54, v53);

    v39 = *(v38 + 16);
    v40 = v33[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 > v33[3] >> 1)
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      v33 = sub_22958A770(isUniquelyReferenced_nonNull_native, v43, 1, v33);
    }

    v30 &= v30 - 1;
    if (*(v38 + 16))
    {
      if ((v33[3] >> 1) - v33[2] < v39)
      {
        goto LABEL_34;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v44 = v33[2];
        v45 = __OFADD__(v44, v39);
        v46 = v44 + v39;
        if (v45)
        {
          goto LABEL_35;
        }

        v33[2] = v46;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A5761A0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022A598760;
      v48 = sub_2298429B0(*(v52 + *(v51 + 44)), *(v52 + *(v51 + 44) + 8));
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      *(inited + 48) = v48;
      *(inited + 72) = v49;
      *(inited + 80) = 0x7370756F7267;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      *(inited + 96) = v33;
      sub_22956AC5C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
      swift_arrayDestroy();

      return;
    }

    v30 = *(v27 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_22983FA6C(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    sub_22A4DBFBC();
    [a1 respondWithSuccess];
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = [v1 notEnabledError];
    v6 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_22983FBFC(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v45 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v46 = v43 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  MEMORY[0x28223BE20](v21);
  v47 = v43 - v24;
  v25 = [v2 legacyCountersManager];
  v26 = [v25 delegate];

  _s16CoreDataDelegateCMa();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = *(v27 + 24);
    v43[0] = v8;
    v43[1] = v28;

    swift_unknownObjectRelease();
    v29 = sub_22A4DD5AC();
    v30 = a1;
    v31 = [a1 dateForKey_];

    if (v31)
    {
      sub_22A4DB70C();

      v32 = *(v5 + 56);
      v32(v23, 0, 1, v4);
    }

    else
    {
      v32 = *(v5 + 56);
      v32(v23, 1, 1, v4);
    }

    v35 = v46;
    sub_2296692F8(v23, v47);
    v36 = sub_22A4DD5AC();
    v37 = [v30 dateForKey_];

    if (v37)
    {
      sub_22A4DB70C();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v32(v18, v38, 1, v4);
    sub_2296692F8(v18, v35);
    sub_229564F88(v47, v15, &unk_27D881AA0, &qword_22A57BC20);
    v39 = *(v5 + 48);
    if (v39(v15, 1, v4) == 1)
    {
      sub_22953EAE4(v15, &unk_27D881AA0, &qword_22A57BC20);
    }

    else
    {
      v40 = v44;
      (*(v5 + 32))(v44, v15, v4);
      sub_22A4DBF7C();
      (*(v5 + 8))(v40, v4);
    }

    v41 = v45;
    sub_229564F88(v35, v45, &unk_27D881AA0, &qword_22A57BC20);
    if (v39(v41, 1, v4) == 1)
    {
      sub_22953EAE4(v41, &unk_27D881AA0, &qword_22A57BC20);
    }

    else
    {
      v42 = v43[0];
      (*(v5 + 32))(v43[0], v41, v4);
      sub_22A4DBF6C();
      (*(v5 + 8))(v42, v4);
    }

    [v30 respondWithSuccess];

    sub_22953EAE4(v35, &unk_27D881AA0, &qword_22A57BC20);
    sub_22953EAE4(v47, &unk_27D881AA0, &qword_22A57BC20);
  }

  else
  {
    swift_unknownObjectRelease();
    v33 = [v2 notEnabledError];
    v47 = sub_22A4DB3DC();

    [a1 respondWithError_];
    v34 = v47;
  }
}

void sub_2298402E0(void *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = [v2 legacyCountersManager];
  v6 = [v5 delegate];

  _s16CoreDataDelegateCMa();
  if (swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    v7 = sub_22A4DD5AC();
    v8 = [a1 stringForKey_];

    if (v8)
    {
      v9 = sub_22A4DD5EC();
      v11 = v10;

      a2(v9, v11);

      [a1 respondWithSuccess];

      return;
    }

    v13 = [v2 ephemeralContainNameRequiredError];
    v14 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = [v2 notEnabledError];
    v14 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_229840550(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = sub_22A4DD5AC();
    v7 = [a1 stringForKey_];

    v8 = [v1 userDefaults];
    v9 = v8;
    if (v7)
    {
      [v8 setObject:v7 forKey:@"HMDStartupEphemeralContainer"];

      v9 = v7;
    }

    else
    {
      [v8 removeObjectForKey_];
    }

    [a1 respondWithSuccess];
  }

  else
  {
    v10 = [v1 notEnabledError];
    v11 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

void sub_22984076C(void *a1)
{
  v3 = [v1 legacyCountersManager];
  v4 = [v3 delegate];

  _s16CoreDataDelegateCMa();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    v53 = [v1 notEnabledError];
    v61 = sub_22A4DB3DC();

    [a1 respondWithError_];

    return;
  }

  v56 = a1;

  swift_unknownObjectRelease();
  v5 = sub_22A4DBFAC();
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v57 = v5;

  v11 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = v26)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22A576180;
          *(inited + 32) = 0xD000000000000013;
          *(inited + 40) = 0x800000022A5986D0;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881A98, &qword_22A585810);
          *(inited + 48) = i;

          sub_22956AC5C(inited);
          swift_setDeallocating();
          sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          v52 = sub_22A4DD47C();

          [v56 respondWithPayload_];

          return;
        }

        v9 = *(v6 + 8 * v13);
        ++v11;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v13 = v11;
LABEL_13:
    v14 = __clz(__rbit64(v9)) | (v13 << 6);
    v15 = (*(v57 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v57 + 56) + 8 * v14);

    v58 = v18;
    v59 = sub_22A4DC12C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v16;
    v21 = sub_229543DBC(v16, v17);
    v22 = *(i + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_45;
    }

    v25 = v20;
    if (*(i + 24) >= v24)
    {
      break;
    }

    sub_229897420(v24, isUniquelyReferenced_nonNull_native);
    v26 = i;
    v27 = v60;
    v28 = sub_229543DBC(v60, v17);
    if ((v25 & 1) != (v29 & 1))
    {
      goto LABEL_48;
    }

    v21 = v28;
LABEL_20:
    v9 &= v9 - 1;
    if (v25)
    {
      *(*(v26 + 56) + v21) = v59 & 1;
    }

    else
    {
      *(v26 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v30 = (*(v26 + 48) + 16 * v21);
      *v30 = v27;
      v30[1] = v17;
      *(*(v26 + 56) + v21) = v59 & 1;
      v31 = *(v26 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_46;
      }

      *(v26 + 16) = v33;
    }

    v11 = v13;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v26 = i;
LABEL_19:
    v27 = v60;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
  v34 = sub_22A4DE3DC();
  v26 = v34;
  if (!*(i + 16))
  {
LABEL_39:

    goto LABEL_19;
  }

  v35 = (v34 + 64);
  v36 = (i + 64);
  v37 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != i || v35 >= &v36[8 * v37])
  {
    memmove(v35, v36, 8 * v37);
  }

  v38 = 0;
  *(v26 + 16) = *(i + 16);
  v39 = 1 << *(i + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(i + 64);
  v42 = (v39 + 63) >> 6;
  v54 = v42;
  if (v41)
  {
    do
    {
      v43 = __clz(__rbit64(v41));
      v55 = (v41 - 1) & v41;
LABEL_37:
      v46 = v43 | (v38 << 6);
      v47 = (*(i + 48) + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      LOBYTE(v47) = *(*(i + 56) + v46);
      v50 = (*(v26 + 48) + 16 * v46);
      *v50 = v49;
      v50[1] = v48;
      *(*(v26 + 56) + v46) = v47;

      v42 = v54;
      v41 = v55;
    }

    while (v55);
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v42)
    {
      goto LABEL_39;
    }

    v45 = *(i + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v55 = (v45 - 1) & v45;
      goto LABEL_37;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  sub_22A4DE67C();
  __break(1u);
}

uint64_t sub_229840D40(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v105 = a5;
  v106 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v101 - v9;
  v11 = sub_22A4DC09C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - v19;
  if ((sub_22983E3B4(a1) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v103 = v12;
  v21 = _s11GroupFilterVMa(0);
  v22 = (a3 + *(v21 + 44));
  v23 = v22[1];
  v104 = a1;
  v107 = a2;
  if (!v23)
  {
    v103 = *(v21 + 40);
    sub_229564F88(a3 + v103, v20, &unk_27D881AA0, &qword_22A57BC20);
    v28 = sub_22A4DB74C();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    v31 = v30(v20, 1, v28);
    sub_22953EAE4(v20, &unk_27D881AA0, &qword_22A57BC20);
    if (v31 == 1)
    {
      v32 = v107;
      v33 = sub_22A4DBE7C();
      v34 = v33;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AB0, &qword_22A578548);
      v78 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_22A576180;
      sub_229564F88(a3 + v103, v18, &unk_27D881AA0, &qword_22A57BC20);
      result = v30(v18, 1, v28);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v33 = (*(v29 + 32))(v34 + v78, v18, v28);
      v32 = v107;
    }

    MEMORY[0x28223BE20](v33);
    *(&v101 - 6) = a3;
    *(&v101 - 5) = v32;
    v80 = v106;
    *(&v101 - 4) = v105;
    *(&v101 - 3) = v80;
    *(&v101 - 2) = v81;
    v82 = sub_229716E90(sub_229843EE8, (&v101 - 8), v34);

    return v82;
  }

  v24 = *v22;
  v106 = a3[7];
  if (v106)
  {
    v25 = a3[6];

    v26 = sub_22A4DBE9C();
    if ((v27 & 1) == 0)
    {
      v36 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AD8, &qword_22A585830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = v25;
      v38 = inited + 32;
      *(inited + 40) = v106;
      *(inited + 48) = v36;
      v105 = sub_22956BB80(inited);
      swift_setDeallocating();
      sub_22953EAE4(v38, &unk_27D881AE0, &qword_22A585838);
      v35 = a3[9];
      if (!v35)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v105 = 0;
  v35 = a3[9];
  if (!v35)
  {
LABEL_14:
    v102 = 0;
    v42 = a3[11];
    if (v42)
    {
      goto LABEL_15;
    }

LABEL_18:
    v45 = 0;
    goto LABEL_20;
  }

LABEL_12:
  v39 = a3[8];

  v40 = sub_22A4DBEEC();
  if (v41)
  {

    goto LABEL_14;
  }

  v46 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AC8, &qword_22A585820);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_22A576180;
  v101 = v24;
  *(v47 + 32) = v39;
  v48 = v47 + 32;
  *(v47 + 40) = v35;
  *(v47 + 48) = v46;
  v102 = sub_22956BC7C(v47);
  swift_setDeallocating();
  v49 = v48;
  v24 = v101;
  sub_22953EAE4(v49, &qword_27D881AD0, &qword_22A585828);
  v42 = a3[11];
  if (!v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v43 = a3[10];

  sub_22A4DBE2C();
  v44 = v103;
  if ((*(v103 + 48))(v10, 1, v11) == 1)
  {

    sub_22953EAE4(v10, &qword_27D881420, qword_22A583C08);
    v45 = 0;
  }

  else
  {
    (*(v44 + 32))(v14, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AB8, &qword_22A585818);
    v101 = v24;
    v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38) - 8);
    v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_22A576180;
    v53 = (v52 + v51);
    v54 = v50[14];
    *v53 = v43;
    *(v53 + 1) = v42;
    (*(v44 + 16))(&v53[v54], v14, v11);
    v45 = sub_22956BD80(v52);
    swift_setDeallocating();
    sub_22953EAE4(v53, &qword_27D87CDC0, &qword_22A577C38);
    v24 = v101;
    swift_deallocClassInstance();
    (*(v44 + 8))(v14, v11);
  }

LABEL_20:
  v55 = v102;
  v56 = v105;
  if (v35 | v106 | v42)
  {
    if (v105 && *(v105 + 16))
    {
      goto LABEL_29;
    }
  }

  else
  {

    v56 = sub_22A4DBECC();
    v57 = v24;
    v58 = sub_22A4DBF0C();

    v59 = sub_22A4DBE4C();

    v45 = v59;
    v55 = v58;
    v24 = v57;
    if (*(v56 + 16))
    {
      goto LABEL_29;
    }
  }

  if ((!v55 || !*(v55 + 16)) && (!v45 || !*(v45 + 16)))
  {

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v112 = MEMORY[0x277D837D0];
  v111[0] = v24;
  v111[1] = v23;
  sub_229543C58(v111, v109);
  v60 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v108 = v60;
  v62 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
  MEMORY[0x28223BE20](v62);
  v64 = (&v101 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  sub_2297FE940(*v64, v64[1], 0x656E6961746E6F63, 0xE900000000000072, isUniquelyReferenced_nonNull_native, &v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  v66 = v108;
  v67 = sub_229844088(v104);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B0, &qword_22A584538);
  v111[0] = v67;
  sub_229543C58(v111, v109);
  LOBYTE(v67) = swift_isUniquelyReferenced_nonNull_native();
  v108 = v66;
  v68 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
  MEMORY[0x28223BE20](v68);
  v70 = (&v101 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  sub_2297FF234(*v70, 0x7470697263736564, 0xEA0000000000726FLL, v67, &v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  v72 = v108;
  if (v56)
  {
    if (*(v56 + 16))
    {
      v73 = sub_22983D390(v56);

      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v111[0] = v73;
      sub_229543C58(v111, v109);
      LOBYTE(v73) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v72;
      v74 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
      MEMORY[0x28223BE20](v74);
      v76 = (&v101 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v77 + 16))(v76);
      sub_2297FED58(*v76, 0x737265746E756F63, 0xE800000000000000, v73, &v108);
      __swift_destroy_boxed_opaque_existential_0(v109);
      v72 = v108;
      if (!v55)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (*(v55 + 16))
      {
        v83 = sub_22983CF80(v55);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        v111[0] = v83;
        sub_229543C58(v111, v109);
        LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native();
        v108 = v72;
        v84 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
        MEMORY[0x28223BE20](v84);
        v86 = (&v101 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v87 + 16))(v86);
        sub_2297FED58(*v86, 0x6E6F697461727564, 0xE900000000000073, v83, &v108);
        __swift_destroy_boxed_opaque_existential_0(v109);
        v72 = v108;
      }

      goto LABEL_42;
    }
  }

  if (v55)
  {
    goto LABEL_40;
  }

LABEL_42:
  if (v45)
  {
    if (*(v45 + 16))
    {
      v88 = sub_2298444E0(v45, sub_2298433F0);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v112 = v89;
      v111[0] = v88;
      sub_229543C58(v111, v109);
      LOBYTE(v88) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v72;
      v90 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
      MEMORY[0x28223BE20](v90);
      v92 = (&v101 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v93 + 16))(v92);
      sub_2297FED58(*v92, 0x7562697274736964, 0xED0000736E6F6974, v88, &v108);
      __swift_destroy_boxed_opaque_existential_0(v109);
      v94 = v108;
      v95 = sub_2298444E0(v45, sub_229843668);
      v112 = v89;
      v111[0] = v95;
      sub_229543C58(v111, v109);
      LOBYTE(v89) = swift_isUniquelyReferenced_nonNull_native();
      v108 = v94;
      v96 = __swift_mutable_project_boxed_opaque_existential_0(v109, v110);
      MEMORY[0x28223BE20](v96);
      v98 = (&v101 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v99 + 16))(v98);
      sub_2297FED58(*v98, 0x6974736974617473, 0xEA00000000007363, v89, &v108);
      __swift_destroy_boxed_opaque_existential_0(v109);
      v72 = v108;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D380, &unk_22A578500);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_22A576180;
  *(v100 + 32) = v72;

  return v100;
}

uint64_t sub_229841C90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v92 = a5;
  v91 = a4;
  v93 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - v11;
  v90 = sub_22A4DC09C();
  v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[7];
  v98 = a1;
  v95 = v6;
  v97 = a3;
  v94 = v14;
  if (v14)
  {
    v15 = a2[6];

    v16 = sub_22A4DBEAC();
    if (v17)
    {

      v18 = 0;
    }

    else
    {
      v19 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AD8, &qword_22A585830);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = v15;
      v21 = inited + 32;
      *(inited + 40) = v14;
      *(inited + 48) = v19;
      v18 = sub_22956BB80(inited);
      swift_setDeallocating();
      sub_22953EAE4(v21, &unk_27D881AE0, &qword_22A585838);
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = v96;
  v23 = a2[9];
  if (v23)
  {
    v24 = a2[8];

    v25 = sub_22A4DBEFC();
    if (v26)
    {

      v27 = 0;
    }

    else
    {
      v30 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AC8, &qword_22A585820);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_22A576180;
      v32 = v18;
      *(v31 + 32) = v24;
      v33 = v31 + 32;
      *(v31 + 40) = v23;
      *(v31 + 48) = v30;
      v27 = sub_22956BC7C(v31);
      v22 = v96;
      swift_setDeallocating();
      v34 = v33;
      v18 = v32;
      sub_22953EAE4(v34, &qword_27D881AD0, &qword_22A585828);
    }

    v28 = a2[11];
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_10:
    v29 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  v28 = a2[11];
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_13:
  v35 = a2[10];

  sub_22A4DBE3C();
  v36 = v90;
  if ((*(v22 + 48))(v12, 1, v90) == 1)
  {

    sub_22953EAE4(v12, &qword_27D881420, qword_22A583C08);
    v29 = 0;
  }

  else
  {
    v37 = v89;
    (*(v22 + 32))(v89, v12, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AB8, &qword_22A585818);
    v96 = v18;
    v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38) - 8);
    v39 = *(*v38 + 80);
    v88 = v27;
    v40 = (v39 + 32) & ~v39;
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_22A576180;
    v42 = (v41 + v40);
    v43 = v38[14];
    *v42 = v35;
    *(v42 + 1) = v28;
    (*(v22 + 16))(&v42[v43], v37, v36);
    v29 = sub_22956BD80(v41);
    swift_setDeallocating();
    v44 = v42;
    v27 = v88;
    sub_22953EAE4(v44, &qword_27D87CDC0, &qword_22A577C38);
    v18 = v96;
    swift_deallocClassInstance();
    (*(v22 + 8))(v37, v36);
  }

LABEL_16:
  if (v23 | v94 | v28)
  {
    if (v18 && *(v18 + 16))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v18 = sub_22A4DBEDC();
    v45 = sub_22A4DBF1C();

    v46 = sub_22A4DBE5C();

    v29 = v46;
    v27 = v45;
    if (*(v18 + 16))
    {
      goto LABEL_25;
    }
  }

  if (!v27 || !*(v27 + 16))
  {
    if (v29)
    {
      if (*(v29 + 16))
      {
        goto LABEL_25;
      }
    }

    v64 = 0;
    goto LABEL_40;
  }

LABEL_25:
  v47 = sub_22A4DB6AC();
  v48 = [v91 stringFromDate_];

  v49 = sub_22A4DD5EC();
  v50 = v18;
  v52 = v51;

  v102 = MEMORY[0x277D837D0];
  v101[0] = v49;
  v101[1] = v52;
  sub_229543C58(v101, v99);
  v53 = MEMORY[0x277D84F98];
  LOBYTE(v48) = swift_isUniquelyReferenced_nonNull_native();
  v103 = v53;
  v54 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
  MEMORY[0x28223BE20](v54);
  v56 = (&v88 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  sub_2297FE940(*v56, v56[1], 0x6F69746974726170, 0xE90000000000006ELL, v48, &v103);
  __swift_destroy_boxed_opaque_existential_0(v99);
  v58 = v103;
  v59 = sub_229844088(v92);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8815B0, &qword_22A584538);
  v101[0] = v59;
  sub_229543C58(v101, v99);
  LOBYTE(v59) = swift_isUniquelyReferenced_nonNull_native();
  v103 = v58;
  v60 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
  MEMORY[0x28223BE20](v60);
  v62 = (&v88 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  sub_2297FF234(*v62, 0x7470697263736564, 0xEA0000000000726FLL, v59, &v103);
  __swift_destroy_boxed_opaque_existential_0(v99);
  v64 = v103;
  if (v50)
  {
    if (!*(v50 + 16))
    {

      if (!v27)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v65 = sub_22983D390(v50);

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v101[0] = v65;
    sub_229543C58(v101, v99);
    LOBYTE(v65) = swift_isUniquelyReferenced_nonNull_native();
    v103 = v64;
    v66 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
    MEMORY[0x28223BE20](v66);
    v68 = (&v88 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v69 + 16))(v68);
    sub_2297FED58(*v68, 0x737265746E756F63, 0xE800000000000000, v65, &v103);
    __swift_destroy_boxed_opaque_existential_0(v99);
    v64 = v103;
  }

  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(v27 + 16))
  {
    v70 = sub_22983CF80(v27);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v101[0] = v70;
    sub_229543C58(v101, v99);
    LOBYTE(v70) = swift_isUniquelyReferenced_nonNull_native();
    v103 = v64;
    v71 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
    MEMORY[0x28223BE20](v71);
    v73 = (&v88 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v74 + 16))(v73);
    sub_2297FED58(*v73, 0x6E6F697461727564, 0xE900000000000073, v70, &v103);
    __swift_destroy_boxed_opaque_existential_0(v99);
    v64 = v103;
  }

LABEL_31:
  if (!v29)
  {
LABEL_37:

    goto LABEL_40;
  }

  if (!*(v29 + 16))
  {

    goto LABEL_37;
  }

  v75 = sub_2298444E0(v29, sub_2298433F0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  v102 = v76;
  v101[0] = v75;
  sub_229543C58(v101, v99);
  LOBYTE(v75) = swift_isUniquelyReferenced_nonNull_native();
  v103 = v64;
  v77 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
  MEMORY[0x28223BE20](v77);
  v79 = (&v88 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v80 + 16))(v79);
  sub_2297FED58(*v79, 0x7562697274736964, 0xED0000736E6F6974, v75, &v103);
  __swift_destroy_boxed_opaque_existential_0(v99);
  v81 = v103;
  v82 = sub_2298444E0(v29, sub_229843668);
  v102 = v76;
  v101[0] = v82;
  sub_229543C58(v101, v99);
  LOBYTE(v76) = swift_isUniquelyReferenced_nonNull_native();
  v103 = v81;
  v83 = __swift_mutable_project_boxed_opaque_existential_0(v99, v100);
  MEMORY[0x28223BE20](v83);
  v85 = (&v88 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85);
  sub_2297FED58(*v85, 0x6974736974617473, 0xEA00000000007363, v76, &v103);

  result = __swift_destroy_boxed_opaque_existential_0(v99);
  v64 = v103;
LABEL_40:
  *v93 = v64;
  return result;
}

unint64_t sub_2298429B0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() productInfo];
  v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22A577B20;
  *(v5 + 32) = 0x646C697562;
  *(v5 + 40) = 0xE500000000000000;
  v6 = [v3 softwareVersion];
  v7 = [v6 buildVersion];

  if (v7)
  {
    v8 = sub_22A4DD5EC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  *(v5 + 48) = v8;
  *(v5 + 56) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = 0x6C65646F6DLL;
  *(v5 + 88) = 0xE500000000000000;
  v12 = [v3 modelIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22A4DD5EC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v5 + 96) = v14;
  *(v5 + 104) = v16;
  *(v5 + 120) = v11;
  strcpy((v5 + 128), "serialNumber");
  *(v5 + 141) = 0;
  *(v5 + 142) = -5120;
  v17 = [v4 serialNumber];
  if (v17)
  {
    v18 = v17;
    v19 = sub_22A4DD5EC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v5 + 144) = v19;
  *(v5 + 152) = v21;
  *(v5 + 168) = v11;
  *(v5 + 176) = 0x6D726F6674616C70;
  *(v5 + 184) = 0xE800000000000000;
  [v3 productPlatform];
  v22 = HMFProductPlatformToString();
  if (v22)
  {
    v23 = v22;
    v24 = sub_22A4DD5EC();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v5 + 192) = v24;
  *(v5 + 200) = v26;
  *(v5 + 216) = v11;
  strcpy((v5 + 224), "isHH2Enabled");
  *(v5 + 237) = 0;
  *(v5 + 238) = -5120;
  v27 = MEMORY[0x277D839B0];
  *(v5 + 264) = MEMORY[0x277D839B0];
  *(v5 + 240) = 1;
  v28 = sub_22956AC5C(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = [v2 cachedConfiguration];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 totalHomes];
    v32 = MEMORY[0x277D83B88];
    v97 = MEMORY[0x277D83B88];
    v96[0] = v31;
    sub_229543C58(v96, v94);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v28;
    v34 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v34, 0x6D6F486C61746F74, 0xEA00000000007365, isUniquelyReferenced_nonNull_native, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v35 = v93;
    v36 = [v30 totalUsers];
    v97 = v32;
    v96[0] = v36;
    sub_229543C58(v96, v94);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v35;
    v38 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v38, 0x6573556C61746F74, 0xEA00000000007372, v37, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v39 = v93;
    v40 = [v30 totalAccessories];
    v97 = v32;
    v96[0] = v40;
    sub_229543C58(v96, v94);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v39;
    v42 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v42, 0xD000000000000010, 0x800000022A598780, v41, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v43 = v93;
    v44 = [v30 totalHAPAccessories];
    v97 = v32;
    v96[0] = v44;
    sub_229543C58(v96, v94);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v43;
    v46 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v46, 0xD000000000000013, 0x800000022A5987A0, v45, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v47 = v93;
    v48 = [v30 totalCHIPAccessories];
    v97 = v32;
    v96[0] = v48;
    sub_229543C58(v96, v94);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v47;
    v50 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v50, 0xD000000000000016, 0x800000022A5987C0, v49, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v51 = v93;
    v52 = [v30 totalThreadAccessories];
    v97 = v32;
    v96[0] = v52;
    sub_229543C58(v96, v94);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v51;
    v54 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v54, 0xD000000000000016, 0x800000022A5987E0, v53, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v55 = v93;
    v56 = [v30 totalCameraAccessories];
    v97 = v32;
    v96[0] = v56;
    sub_229543C58(v96, v94);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v55;
    v58 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v58, 0xD000000000000016, 0x800000022A598800, v57, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v59 = v93;
    v60 = [v30 totalAppleAudioAccessories];
    v97 = v32;
    v96[0] = v60;
    sub_229543C58(v96, v94);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v59;
    v62 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v62, 0xD00000000000001ALL, 0x800000022A598820, v61, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v63 = v93;
    v64 = [v30 totalAppleTVAccessories];
    v97 = v32;
    v96[0] = v64;
    sub_229543C58(v96, v94);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v63;
    v66 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v66, 0xD000000000000017, 0x800000022A598840, v65, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v67 = v93;
    v68 = [v30 totalScenes];
    v97 = v32;
    v96[0] = v68;
    sub_229543C58(v96, v94);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v67;
    v70 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v70, 0x6563536C61746F74, 0xEB0000000073656ELL, v69, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v71 = v93;
    v72 = [v30 totalTriggers];
    v97 = v32;
    v96[0] = v72;
    sub_229543C58(v96, v94);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v71;
    v74 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v74, 0x6972546C61746F74, 0xED00007372656767, v73, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v75 = v93;
    v76 = [v30 totalWidgets];
    v97 = v32;
    v96[0] = v76;
    sub_229543C58(v96, v94);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v75;
    v78 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FF0D4(*v78, 0x6469576C61746F74, 0xEC00000073746567, v77, &v93);
    __swift_destroy_boxed_opaque_existential_0(v94);
    v79 = v93;
    v80 = [v30 isFMFDevice];
    v97 = v27;
    LOBYTE(v96[0]) = v80;
    sub_229543C58(v96, v94);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v79;
    v82 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
    sub_2297FEF7C(*v82, 0x766544464D467369, 0xEB00000000656369, v81, &v93);

    __swift_destroy_boxed_opaque_existential_0(v94);
    v28 = v93;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  v83 = [v2 legacyCountersManager];
  v84 = [v83 delegate];

  _s16CoreDataDelegateCMa();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    return v28;
  }

  swift_unknownObjectRelease();
  v85 = sub_22A4DBF9C();
  if (!v85)
  {

LABEL_21:

    return v28;
  }

  v86 = v85;
  sub_22A4DC11C();
  v88 = lround(v87);
  v97 = MEMORY[0x277D83B88];
  v96[0] = v88;
  sub_229543C58(v96, v94);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v28;
  v90 = __swift_mutable_project_boxed_opaque_existential_0(v94, v95);
  sub_2297FF0D4(*v90, 0x6E6F697461727564, 0xEC00000073636553, v89, &v93);

  __swift_destroy_boxed_opaque_existential_0(v94);
  return v93;
}

unint64_t sub_2298433F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC03C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_22A57CFE0;
    *(inited + 32) = 1701667182;
    v6 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_22A4DC07C();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_22A4DC04C();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    *(inited + 240) = sub_22A4DC03C();
    *(inited + 264) = v8;
    *(inited + 272) = 0x65636E6169726176;
    *(inited + 280) = 0xE800000000000000;
    sub_22A4DC08C();
    *(inited + 288) = v11;
    *(inited + 312) = v9;
    *(inited + 320) = 0x766564647473;
    *(inited + 328) = 0xE600000000000000;
    sub_22A4DC05C();
    *(inited + 360) = v9;
    *(inited + 336) = v12;
  }

  else
  {
    *(inited + 16) = xmmword_22A5779B0;
    *(inited + 32) = 1701667182;
    v14 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v14;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v15 = sub_22A4DC07C();
    v16 = MEMORY[0x277D83B88];
    *(inited + 96) = v15;
    *(inited + 120) = v16;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v16;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v17 = sub_22A4DC03C();
    *(inited + 216) = v16;
    *(inited + 192) = v17;
  }

  v13 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v13;
}

unint64_t sub_229843668(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DC03C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  if (v4)
  {
    *(inited + 16) = xmmword_22A577B20;
    strcpy((inited + 32), "statisticsName");
    v6 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v6;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v7 = sub_22A4DC07C();
    v8 = MEMORY[0x277D83B88];
    *(inited + 96) = v7;
    *(inited + 120) = v8;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v8;
    *(inited + 176) = 0x65676172657661;
    *(inited + 184) = 0xE700000000000000;
    sub_22A4DC04C();
    v9 = MEMORY[0x277D839F8];
    *(inited + 192) = v10;
    *(inited + 216) = v9;
    *(inited + 224) = 0x746E756F63;
    *(inited + 232) = 0xE500000000000000;
    v11 = sub_22A4DC03C();
    *(inited + 264) = v8;
    *(inited + 240) = v11;
  }

  else
  {
    *(inited + 16) = xmmword_22A5779B0;
    strcpy((inited + 32), "statisticsName");
    v13 = MEMORY[0x277D837D0];
    *(inited + 47) = -18;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 72) = v13;
    *(inited + 80) = 7235949;
    *(inited + 88) = 0xE300000000000000;

    v14 = sub_22A4DC07C();
    v15 = MEMORY[0x277D83B88];
    *(inited + 96) = v14;
    *(inited + 120) = v15;
    *(inited + 128) = 7889261;
    *(inited + 136) = 0xE300000000000000;
    *(inited + 144) = sub_22A4DC06C();
    *(inited + 168) = v15;
    *(inited + 176) = 0x746E756F63;
    *(inited + 184) = 0xE500000000000000;
    v16 = sub_22A4DC03C();
    *(inited + 216) = v15;
    *(inited + 192) = v16;
  }

  v12 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v12;
}

id sub_2298438AC(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_eventBuilders;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881B18, &qword_22A585868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22A576180;
  *(v5 + 56) = &type metadata for TemperatureHumidityReadWriteLogEvent.Builder;
  *(v5 + 64) = &off_283CE81B0;
  *&a2[v4] = v5;
  v6 = [a1 logEventSubmitter];
  *&a2[OBJC_IVAR____TtC13HomeKitDaemon39CharacteristicReadWriteLogEventObserver_logEventSubmitter] = v6;
  v10.receiver = a2;
  v10.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = [a1 logEventDispatcher];
  sub_229562F68(0, &qword_281401800, off_2786660C8);
  [v8 addObserver:v7 forEventClass:swift_getObjCClassFromMetadata()];

  swift_unknownObjectRelease();
  return v7;
}

id sub_2298439DC(void *a1, uint64_t a2, void *a3, char *a4)
{
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_dataSource] = a1;
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_countersManager] = a2;
  *&a4[OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_logEventDispatcher] = a3;
  v11.receiver = a4;
  v11.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory();
  v6 = a1;

  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v7;
  [a3 addObserver:v9 forEventClass:{ObjCClassFromMetadata, v11.receiver, v11.super_class}];

  swift_unknownObjectRelease();
  return v9;
}

id sub_229843ACC(uint64_t a1)
{
  v1 = sub_22A4DC10C();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DD9DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DC16C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC15C();
  sub_22A4DD96C();
  v12 = sub_22A4DC14C();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_22A4DC0FC();
  v13 = sub_22A4DC0EC();
  (*(v18 + 8))(v3, v19);
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881A78, &qword_22A585800);
  v22[4] = sub_229590C00(&unk_281401D10, &unk_27D881A78, &qword_22A585800, MEMORY[0x277D17D58]);
  v22[0] = v12;
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881A88, &qword_22A585808);
  v21[4] = sub_229590C00(qword_281401D20, &unk_27D881A88, &qword_22A585808, MEMORY[0x277D17CB8]);
  v21[0] = v13;
  v14 = _s9SwiftDataCMa();
  v15 = objc_allocWithZone(v14);
  sub_22957F1C4(v22, v15 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_repeatingScheduler);
  sub_22957F1C4(v21, v15 + OBJC_IVAR____TtCE13HomeKitDaemonCSo17HMDMetricsManager9SwiftData_dailyScheduler);
  v20.receiver = v15;
  v20.super_class = v14;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v16;
}

uint64_t _s11GroupFilterVMa(uint64_t a1)
{
  result = qword_27D881B20;
  if (!qword_27D881B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229843E8C(uint64_t a1)
{
  v2 = _s11GroupFilterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_229843F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_229543DBC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_229897178(v16, a4 & 1);
      v11 = sub_229543DBC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22A4DE67C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22989A2E0();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_229844088(uint64_t a1)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AF8, &qword_22A585848);
  v2 = MEMORY[0x28223BE20](v59);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v68 = &v54 - v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v57 = v5 + 8;
  v58 = v5;
  v11 = (v8 + 63) >> 6;
  v60 = a1;

  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v55 = v11;
  v56 = a1 + 64;
  while (v10)
  {
    v66 = v13;
LABEL_12:
    v17 = __clz(__rbit64(v10)) | (v12 << 6);
    v18 = v60;
    v19 = *(v60 + 48);
    v20 = sub_22A4DC02C();
    v65 = *(v20 - 8);
    v21 = v68;
    (*(v65 + 16))(v68, v19 + *(v65 + 72) * v17, v20);
    v22 = (*(v18 + 56) + 16 * v17);
    v23 = *v22;
    v24 = v22[1];
    v25 = v58;
    v26 = v59;
    v27 = (v21 + *(v59 + 48));
    *v27 = v23;
    v27[1] = v24;
    sub_229564F88(v21, v25, &unk_27D881AF8, &qword_22A585848);

    v28 = sub_22A4DC01C();
    v64 = v29;
    v61 = *(v65 + 8);
    v62 = v20;
    v61(v25, v20);
    v30 = v67;
    v31 = v28;
    v32 = v64;
    sub_229564F88(v21, v67, &unk_27D881AF8, &qword_22A585848);
    v33 = (v30 + *(v26 + 48));
    v35 = *v33;
    v34 = v33[1];
    v63 = v35;
    v65 = v34;
    v36 = v66;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v36;
    v39 = sub_229543DBC(v31, v32);
    v40 = v36[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_25;
    }

    v43 = v38;
    if (v36[3] >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_22989A450();
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2298976C0(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_229543DBC(v31, v32);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_27;
      }

      v39 = v44;
      if (v43)
      {
LABEL_4:

        v13 = v69;
        v14 = (v69[7] + 16 * v39);
        v15 = v65;
        *v14 = v63;
        v14[1] = v15;

        sub_22953EAE4(v68, &unk_27D881AF8, &qword_22A585848);
        goto LABEL_5;
      }
    }

    v46 = v68;
    v13 = v69;
    v69[(v39 >> 6) + 8] |= 1 << v39;
    v47 = (v13[6] + 16 * v39);
    *v47 = v31;
    v47[1] = v32;
    v48 = (v13[7] + 16 * v39);
    v49 = v65;
    *v48 = v63;
    v48[1] = v49;
    sub_22953EAE4(v46, &unk_27D881AF8, &qword_22A585848);
    v50 = v13[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_26;
    }

    v13[2] = v52;
LABEL_5:
    v10 &= v10 - 1;
    v61(v67, v62);
    v11 = v55;
    v7 = v56;
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v11)
    {

      return v13;
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      v66 = v13;
      v12 = v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2298444E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881AF0, &qword_22A585840);
  v3 = MEMORY[0x28223BE20](v30);
  v29 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v37 = MEMORY[0x277D84F90];
  sub_229583714(0, v6, 0);
  v7 = v37;
  v8 = a1 + 64;
  result = sub_22A4DE04C();
  v10 = result;
  v26 = a1 + 64;
  v27 = a1;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_14;
    }

    v34 = 1 << v10;
    v35 = v10 >> 6;
    v32 = v6;
    v33 = *(a1 + 36);
    v11 = v30;
    v12 = *(v30 + 48);
    v13 = *(a1 + 56);
    v14 = (*(a1 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_22A4DC09C();
    v18 = *(v17 - 8);
    v36 = v7;
    v19 = v18;
    v20 = v28;
    (*(v18 + 16))(&v28[v12], v13 + *(v18 + 72) * v10, v17);
    v21 = v29;
    *v29 = v15;
    *(v21 + 8) = v16;
    v22 = *(v11 + 48);
    (*(v19 + 32))(v21 + v22, &v20[v12], v17);
    v7 = v36;

    v23 = (v31)(v15, v16, v21 + v22);
    result = sub_22953EAE4(v21, &qword_27D881AF0, &qword_22A585840);
    v37 = v7;
    v25 = *(v7 + 16);
    v24 = *(v7 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_229583714((v24 > 1), v25 + 1, 1);
      v7 = v37;
    }

    *(v7 + 16) = v25 + 1;
    *(v7 + 8 * v25 + 32) = v23;
    a1 = v27;
    if (v10 >= -(-1 << *(v27 + 32)))
    {
      goto LABEL_15;
    }

    v8 = v26;
    if ((*(v26 + 8 * v35) & v34) == 0)
    {
      goto LABEL_16;
    }

    if (v33 != *(v27 + 36))
    {
      goto LABEL_17;
    }

    result = sub_22A4DE06C();
    v10 = result;
    v6 = v32 - 1;
    if (v32 == 1)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2298447EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229586D38;

  return sub_22983DC20(a1, v1);
}

uint64_t sub_229844884(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_229569B30;

  return sub_22983DCA0(a1, v1);
}

uint64_t sub_22984491C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22983DD20(a1, v5, v4);
}

void sub_2298449EC(uint64_t a1)
{
  sub_2295C10D0();
  if (v1 <= 0x3F)
  {
    sub_2296A9F44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}