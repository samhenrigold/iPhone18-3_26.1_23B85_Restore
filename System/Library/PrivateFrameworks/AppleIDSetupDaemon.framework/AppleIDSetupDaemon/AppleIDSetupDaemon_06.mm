uint64_t sub_240886538()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_240886878;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_240886660;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240886660()
{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[7];
  v5 = v0[3];
  v6 = *(v0[6] + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v7 - 8) + 32))(v5, &v4[v6], v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_240886878()
{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[16];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240886A44()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_240886D08;
  }

  else
  {
    v4 = sub_240886B70;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240886B70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240886D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240886EA8()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_24088728C;
  }

  else
  {
    v4 = sub_240886FD4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240886FD4(uint64_t a1)
{
  v38 = v1;
  v3 = v1[18];
  v2 = v1[19];
  v4 = v1[16];
  v5 = v1[17];
  sub_2408D4910();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[44];
  v11 = v1[32];
  v35 = v1[30];
  if (v9)
  {
    v33 = v1[32];
    v34 = v1[44];
    v12 = v1[21];
    v14 = v1[17];
    v13 = v1[18];
    v15 = v1[16];
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v16 = 136315138;
    log = v7;
    v17 = v13;
    v6(v12, v13, v15);
    v18 = sub_2408D4D40();
    v19 = v8;
    v21 = v20;
    v22 = *(v14 + 8);
    v22(v17, v15);
    v23 = sub_2408CC504(v18, v21, &v37);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2407CF000, log, v19, "Intercepted BLE client: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);

    v34(v33, v35);
  }

  else
  {
    v24 = v1[17];
    v25 = v1[18];
    v26 = v1[16];

    v22 = *(v24 + 8);
    v22(v25, v26);
    v10(v11, v35);
  }

  v1[57] = v22;
  v27 = v1[19];
  v28 = swift_task_alloc();
  v1[58] = v28;
  *(v28 + 16) = v27;
  v36 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v29 = swift_task_alloc();
  v1[59] = v29;
  *v29 = v1;
  v29[1] = sub_24088742C;

  return v36(sub_2408B315C, v28);
}

uint64_t sub_24088728C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24088742C()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_2408876F0, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[61] = v4;
    *v4 = v2;
    v4[1] = sub_2408875C4;
    v5 = v2[4];
    v6 = v2[3];

    return sub_2408849B4(v6, v5);
  }
}

uint64_t sub_2408875C4()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_240887A6C;
  }

  else
  {
    v4 = sub_2408878B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408876F0()
{
  v1 = v0[57];
  v2 = v0[19];
  v3 = v0[16];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408878B8()
{
  (*(v0 + 456))(*(v0 + 152), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240887A6C()
{
  (*(v0 + 456))(*(v0 + 152), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240887C28(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t (*a4)(_BYTE *))
{
  v17 = a3;
  v18 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_2408D34E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2408D49A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v11, a2, v12);
  (*(v9 + 104))(v11, *MEMORY[0x277CED250], v8);
  v17(v11);
  v14(v7, a2, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v15 = v18(v19);
  sub_2408D40C0();
  sub_2407D9440(v7, &qword_27E5079F0, &qword_2408D91D8);
  return v15(v19, 0);
}

uint64_t sub_240887E4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v94 = a3;
  v99 = a1;
  v5 = sub_2408D3490();
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v83 - v9;
  v10 = sub_2408D49A0();
  v11 = *(v10 - 8);
  v95 = v10;
  v96 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v14);
  v85 = &v83 - v17;
  v18 = sub_2408D4B20();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v83 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  v28 = sub_2408D4970();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v89 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v83 - v32;
  v34 = a2;
  sub_2408D4980();
  v35 = sub_2408D4960();
  v36 = *(v29 + 8);
  v90 = v28;
  v88 = v36;
  v36(v33, v28);
  if (v35 <= 0x2Eu)
  {
    if (v35 == 32 || v35 == 43)
    {
      sub_2408D4910();
      v38 = v95;
      v37 = v96;
      (*(v96 + 16))(v16, v34, v95);
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F10();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 16777472;
        v91 = v34;
        v42 = v89;
        sub_2408D4980();
        v43 = sub_2408D4960();
        v44 = v42;
        v34 = v91;
        v88(v44, v90);
        (*(v37 + 8))(v16, v38);
        v41[4] = v43;
        _os_log_impl(&dword_2407CF000, v39, v40, "Handling SF authenticate accounts nearby action type: %hhu", v41, 5u);
        MEMORY[0x245CC9F60](v41, -1, -1);
      }

      else
      {
        (*(v37 + 8))(v16, v38);
      }

      (*(v97 + 8))(v25, v98);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v71 = *(v70 - 8);
      v72 = v92;
      (*(v71 + 16))(v92, v99, v70);
      (*(v71 + 56))(v72, 0, 1, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
      v73 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
      v74 = swift_allocObject();
      *(v74 + ((*(*v74 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_2407EEE04(v72, v74 + *(*v74 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
      sub_2407D9440(v72, &qword_27E506EA8, &unk_2408D9130);
      *(v73 + 16) = v74;
      sub_240893B70(v34, v93, v73, &unk_285284D80, sub_2408B3D9C, &unk_285284DA8, &unk_2408D92C0);
    }

    goto LABEL_12;
  }

  if (v35 != 47 && v35 != 95)
  {
LABEL_12:
    sub_2408D4910();
    v60 = v95;
    v61 = v96;
    v62 = v85;
    (*(v96 + 16))(v85, v34, v95);
    v63 = sub_2408D4B10();
    v64 = sub_2408D4F30();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 16777472;
      v66 = v62;
      v67 = v89;
      sub_2408D4980();
      v68 = sub_2408D4960();
      v88(v67, v90);
      (*(v61 + 8))(v66, v60);
      v65[4] = v68;
      _os_log_impl(&dword_2407CF000, v63, v64, "Unable to handle unknown nearbyAction type: %hhu", v65, 5u);
      v69 = v65;
LABEL_22:
      MEMORY[0x245CC9F60](v69, -1, -1);
      goto LABEL_23;
    }

    (*(v61 + 8))(v62, v60);
    goto LABEL_23;
  }

  v45 = v87;
  v46 = *(v87 + 104);
  v46(v7, *MEMORY[0x277CED208], v5);
  v47 = sub_2408D3480();
  v48 = *(v45 + 8);
  v48(v7, v5);
  v49 = v96;
  if (v47 & 1) != 0 || (v46(v7, *MEMORY[0x277CED1F0], v5), v50 = sub_2408D3480(), v48(v7, v5), (v50))
  {
    sub_2408D4910();
    v51 = v86;
    v52 = v34;
    v53 = v95;
    (*(v49 + 16))(v86, v34, v95);
    v54 = sub_2408D4B10();
    v55 = sub_2408D4F10();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v51;
      v57 = swift_slowAlloc();
      *v57 = 16777472;
      v58 = v89;
      sub_2408D4980();
      v59 = sub_2408D4960();
      v88(v58, v90);
      (*(v49 + 8))(v56, v53);
      v57[4] = v59;
      _os_log_impl(&dword_2407CF000, v54, v55, "Handling appleIDSignInFamily nearby action type with SetupKit: %hhu", v57, 5u);
      MEMORY[0x245CC9F60](v57, -1, -1);
    }

    else
    {
      (*(v49 + 8))(v51, v53);
    }

    (*(v97 + 8))(v91, v98);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v76 = *(v75 - 8);
    v77 = v92;
    (*(v76 + 16))(v92, v99, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
    v78 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
    v79 = swift_allocObject();
    *(v79 + ((*(*v79 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_2407EEE04(v77, v79 + *(*v79 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
    sub_2407D9440(v77, &qword_27E506EA8, &unk_2408D9130);
    *(v78 + 16) = v79;
    sub_24088AA5C(v52, v93, v78, &unk_285284E20, sub_2408B42AC, &unk_285284E48, &unk_2408D92F0);
  }

  v27 = v84;
  sub_2408D4910();
  v63 = sub_2408D4B10();
  v81 = sub_2408D4F30();
  if (os_log_type_enabled(v63, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_2407CF000, v63, v81, "Unable to handle appleIDSignInFamily type because a feature flag does not allow it.", v82, 2u);
    v69 = v82;
    goto LABEL_22;
  }

LABEL_23:

  (*(v97 + 8))(v27, v98);
  sub_2407F11F8();
  v100 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  return sub_2408D4E10();
}

uint64_t sub_240888A70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v94 = a3;
  v99 = a1;
  v5 = sub_2408D3490();
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v83 - v9;
  v10 = sub_2408D49A0();
  v11 = *(v10 - 8);
  v95 = v10;
  v96 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v14);
  v85 = &v83 - v17;
  v18 = sub_2408D4B20();
  v97 = *(v18 - 8);
  v98 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v84 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v83 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  v28 = sub_2408D4970();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v89 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v83 - v32;
  v34 = a2;
  sub_2408D4980();
  v35 = sub_2408D4960();
  v36 = *(v29 + 8);
  v90 = v28;
  v88 = v36;
  v36(v33, v28);
  if (v35 <= 0x2Eu)
  {
    if (v35 == 32 || v35 == 43)
    {
      sub_2408D4910();
      v38 = v95;
      v37 = v96;
      (*(v96 + 16))(v16, v34, v95);
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F10();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 16777472;
        v91 = v34;
        v42 = v89;
        sub_2408D4980();
        v43 = sub_2408D4960();
        v44 = v42;
        v34 = v91;
        v88(v44, v90);
        (*(v37 + 8))(v16, v38);
        v41[4] = v43;
        _os_log_impl(&dword_2407CF000, v39, v40, "Handling SF authenticate accounts nearby action type: %hhu", v41, 5u);
        MEMORY[0x245CC9F60](v41, -1, -1);
      }

      else
      {
        (*(v37 + 8))(v16, v38);
      }

      (*(v97 + 8))(v25, v98);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v71 = *(v70 - 8);
      v72 = v92;
      (*(v71 + 16))(v92, v99, v70);
      (*(v71 + 56))(v72, 0, 1, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
      v73 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
      v74 = swift_allocObject();
      *(v74 + ((*(*v74 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_2407EEE04(v72, v74 + *(*v74 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
      sub_2407D9440(v72, &qword_27E506EA8, &unk_2408D9130);
      *(v73 + 16) = v74;
      sub_240893B70(v34, v93, v73, &unk_285284BC8, sub_2408B31AC, &unk_285284BF0, &unk_2408D9158);
    }

    goto LABEL_12;
  }

  if (v35 != 47 && v35 != 95)
  {
LABEL_12:
    sub_2408D4910();
    v60 = v95;
    v61 = v96;
    v62 = v85;
    (*(v96 + 16))(v85, v34, v95);
    v63 = sub_2408D4B10();
    v64 = sub_2408D4F30();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 16777472;
      v66 = v62;
      v67 = v89;
      sub_2408D4980();
      v68 = sub_2408D4960();
      v88(v67, v90);
      (*(v61 + 8))(v66, v60);
      v65[4] = v68;
      _os_log_impl(&dword_2407CF000, v63, v64, "Unable to handle unknown nearbyAction type: %hhu", v65, 5u);
      v69 = v65;
LABEL_22:
      MEMORY[0x245CC9F60](v69, -1, -1);
      goto LABEL_23;
    }

    (*(v61 + 8))(v62, v60);
    goto LABEL_23;
  }

  v45 = v87;
  v46 = *(v87 + 104);
  v46(v7, *MEMORY[0x277CED208], v5);
  v47 = sub_2408D3480();
  v48 = *(v45 + 8);
  v48(v7, v5);
  v49 = v96;
  if (v47 & 1) != 0 || (v46(v7, *MEMORY[0x277CED1F0], v5), v50 = sub_2408D3480(), v48(v7, v5), (v50))
  {
    sub_2408D4910();
    v51 = v86;
    v52 = v34;
    v53 = v95;
    (*(v49 + 16))(v86, v34, v95);
    v54 = sub_2408D4B10();
    v55 = sub_2408D4F10();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v51;
      v57 = swift_slowAlloc();
      *v57 = 16777472;
      v58 = v89;
      sub_2408D4980();
      v59 = sub_2408D4960();
      v88(v58, v90);
      (*(v49 + 8))(v56, v53);
      v57[4] = v59;
      _os_log_impl(&dword_2407CF000, v54, v55, "Handling appleIDSignInFamily nearby action type with SetupKit: %hhu", v57, 5u);
      MEMORY[0x245CC9F60](v57, -1, -1);
    }

    else
    {
      (*(v49 + 8))(v51, v53);
    }

    (*(v97 + 8))(v91, v98);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v76 = *(v75 - 8);
    v77 = v92;
    (*(v76 + 16))(v92, v99, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
    v78 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
    v79 = swift_allocObject();
    *(v79 + ((*(*v79 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_2407EEE04(v77, v79 + *(*v79 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
    sub_2407D9440(v77, &qword_27E506EA8, &unk_2408D9130);
    *(v78 + 16) = v79;
    sub_24088AA5C(v52, v93, v78, &unk_285284C68, sub_2408B3570, &unk_285284C90, &unk_2408D9228);
  }

  v27 = v84;
  sub_2408D4910();
  v63 = sub_2408D4B10();
  v81 = sub_2408D4F30();
  if (os_log_type_enabled(v63, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_2407CF000, v63, v81, "Unable to handle appleIDSignInFamily type because a feature flag does not allow it.", v82, 2u);
    v69 = v82;
    goto LABEL_22;
  }

LABEL_23:

  (*(v97 + 8))(v27, v98);
  sub_2407F11F8();
  v100 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  return sub_2408D4E10();
}

uint64_t sub_240889694(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[6] = swift_task_alloc();
  v4 = sub_2408D4350();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v5 = swift_task_alloc();
  v3[9] = v5;
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_2408897EC;

  return v8(v5);
}

uint64_t sub_2408897EC()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_2408898FC, v1, 0);
}

uint64_t sub_2408898FC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = 1;
  v4 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2408899EC;

  return v4(sub_2408B37D4, v1);
}

uint64_t sub_2408899EC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_240889D70;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_240889B14;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240889B14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_240889C48;
  v7 = v0[5];
  v6 = v0[6];

  return MEMORY[0x2822008A0](v6, v1, v3, 0xD000000000000022, 0x80000002408DB360, sub_2408B37DC, v4, v7);
}

uint64_t sub_240889C48()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_240889EC8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_240889DF4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240889D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240889DF4()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = *(v0[5] + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v4 - 8) + 32))(v2, &v1[v3], v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_240889EC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240889F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_2408D4E60();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
  v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v16;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v9 + 32))(&v18[v17], v11, v8);
  swift_retain_n();

  sub_24083AB60(0, 0, v14, v21, v18);
}

uint64_t sub_24088A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v6[5] = swift_task_alloc();
  v8 = sub_2408D4B20();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088A284, a4, 0);
}

uint64_t sub_24088A284(uint64_t a1)
{
  sub_2408D4910();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Establishing router with SetupKit server", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[4];

  (*(v6 + 8))(v5, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
  v12 = swift_allocObject();
  v1[9] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v7, v13 + *(*v13 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
  sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  *(v12 + 16) = v13;
  v14 = swift_task_alloc();
  v1[10] = v14;
  *v14 = v1;
  v14[1] = sub_2408B5318;
  v15 = v1[3];

  return sub_24088CAF4(v15, v12);
}

uint64_t sub_24088A548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v6[5] = swift_task_alloc();
  v8 = sub_2408D4B20();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088A648, a4, 0);
}

uint64_t sub_24088A648(uint64_t a1)
{
  sub_2408D4910();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Establishing router with SetupKit server", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[4];

  (*(v6 + 8))(v5, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
  v12 = swift_allocObject();
  v1[9] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
  v13 = swift_allocObject();
  *(v13 + ((*(*v13 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v7, v13 + *(*v13 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
  sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  *(v12 + 16) = v13;
  v14 = swift_task_alloc();
  v1[10] = v14;
  *v14 = v1;
  v14[1] = sub_24088A90C;
  v15 = v1[3];

  return sub_24088E78C(v15, v12);
}

uint64_t sub_24088A90C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24088AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v67 = a6;
  v79 = a5;
  v81 = a4;
  v8 = v7;
  v73 = a2;
  v71 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v62 - v13;
  v63 = sub_2408D4B20();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2408D4710();
  MEMORY[0x28223BE20](v15 - 8);
  v77 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2408D4FD0();
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v72);
  v70 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2408D4C70();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_2408D40F0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v62 - v26;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v29 = &v62 - v28;
  v30 = sub_2408D49A0();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v27, v71, v30);
  (*(v31 + 56))(v27, 0, 1, v30);
  (*(v22 + 104))(v24, *MEMORY[0x277CED790], v21);
  v32 = swift_allocObject();
  v71 = v8;
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v73;
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = a3;
  sub_2408B31E8();

  v81 = a3;

  sub_2408D4C60();
  v83[0] = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  v35 = v29;
  sub_2408D5080();
  (*(v75 + 104))(v74, *MEMORY[0x277D85260], v76);
  sub_2408D4FF0();
  sub_2408D46E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038, MEMORY[0x277CEDD78]);
  sub_2408D3470();
  swift_beginAccess();
  v36 = off_28130F0B0;
  if (off_28130F0B0)
  {
    v37 = qword_28130F0B8;

    v36(v82, v35);
    sub_2407D1854(v36, v37);
    sub_2407D2554(v82, v83);
    v38 = sub_2408D4E60();
    v39 = v66;
    (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
    sub_2407D91C4(v83, v82);
    v40 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
    v41 = swift_allocObject();
    v42 = v71;
    v41[2] = v71;
    v41[3] = v40;
    sub_2407D2554(v82, (v41 + 4));
    v43 = v81;
    v41[9] = v42;
    v41[10] = v43;
    swift_retain_n();

    sub_24083AB60(0, 0, v39, v68, v41);

    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    return (*(v80 + 8))(v35, v78);
  }

  else
  {
    v45 = v62;
    v46 = v63;
    v47 = v78;
    v48 = v81;
    v49 = v65;
    v50 = v64;
    sub_2408D4910();
    v51 = sub_2408D4B10();
    v52 = sub_2408D4F40();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_2407CF000, v51, v52, "Unexpectedly found no V1AppleIDSetupClientInit", v53, 2u);
      MEMORY[0x245CC9F60](v53, -1, -1);
    }

    (*(v45 + 8))(v50, v46);
    v54 = *(v48 + 16);
    v55 = *(*v54 + *MEMORY[0x277D841D0] + 16);
    v56 = (*(*v54 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v54 + v56));
    sub_24080F060(v54 + v55, v49, &qword_27E506EA8, &unk_2408D9130);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v58 = *(v57 - 8);
    (*(v58 + 56))(v54 + v55, 1, 1, v57);
    os_unfair_lock_unlock((v54 + v56));

    v59 = (*(v58 + 48))(v49, 1, v57);
    v60 = v47;
    v61 = v80;
    if (v59 == 1)
    {
      (*(v80 + 8))(v35, v60);
      return sub_2407D9440(v49, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      v83[0] = swift_allocError();
      sub_2408D4E10();
      (*(v61 + 8))(v35, v60);
      return (*(v58 + 8))(v49, v57);
    }
  }
}

uint64_t sub_24088B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a6;
  v73 = a8;
  v69 = a7;
  v71 = a5;
  v76 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = sub_2408D4B20();
  v74 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - v22;
  sub_2408D4910();
  sub_2407D91C4(a1, v79);
  v75 = v13;
  v24 = *(v13 + 16);
  v24(v18, a3, v12);
  v25 = sub_2408D4B10();
  v65 = sub_2408D4F20();
  v26 = os_log_type_enabled(v25, v65);
  v68 = v16;
  v66 = v24;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v63 = a1;
    v28 = v27;
    v29 = swift_slowAlloc();
    v62 = a3;
    v60 = v29;
    v78 = v29;
    *v28 = 136315394;
    sub_2407D91C4(v79, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v30 = sub_2408D4D40();
    v61 = v19;
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    v33 = sub_2408CC504(v30, v32, &v78);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v24(v16, v18, v12);
    v34 = sub_2408D4D40();
    v36 = v35;
    v37 = v75;
    (*(v75 + 8))(v18, v12);
    v38 = sub_2408CC504(v34, v36, &v78);
    v19 = v61;

    *(v28 + 14) = v38;
    _os_log_impl(&dword_2407CF000, v25, v65, "BLE client (%s changed to state: %s", v28, 0x16u);
    v39 = v60;
    swift_arrayDestroy();
    v40 = v39;
    a3 = v62;
    MEMORY[0x245CC9F60](v40, -1, -1);
    v41 = v28;
    a1 = v63;
    MEMORY[0x245CC9F60](v41, -1, -1);

    v42 = *(v74 + 8);
    v42(v23, v19);
    v43 = v37;
  }

  else
  {

    v43 = v75;
    (*(v75 + 8))(v18, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    v42 = *(v74 + 8);
    v42(v23, v19);
  }

  v44 = v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = sub_2408D4E60();
    v48 = v70;
    (*(*(v47 - 8) + 56))(v70, 1, 1, v47);
    v49 = v68;
    v66(v68, a3, v44);
    sub_2407D91C4(a1, v79);
    v50 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v51 = (v67 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    *(v53 + 4) = v46;
    (*(v43 + 32))(&v53[v50], v49, v44);
    *&v53[v51] = v71;
    sub_2407D2554(v79, &v53[v52]);
    *&v53[(v52 + 47) & 0xFFFFFFFFFFFFFFF8] = v72;

    sub_24083AB60(0, 0, v48, v73, v53);
  }

  else
  {
    v55 = v64;
    sub_2408D4910();
    v56 = sub_2408D4B10();
    v57 = sub_2408D4F30();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2407CF000, v56, v57, "Cannot handle state change, self is released", v58, 2u);
      MEMORY[0x245CC9F60](v58, -1, -1);
    }

    return (v42)(v55, v19);
  }
}

uint64_t sub_24088BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[15] = v12;
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v13 = sub_2408D4B20();
  v8[20] = v13;
  v8[21] = *(v13 - 8);
  v8[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[23] = v14;
  v8[24] = *(v14 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[26] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[27] = v15;
  v16 = swift_task_alloc();
  v8[28] = v16;
  *v16 = v8;
  v16[1] = sub_24088BE78;

  return sub_240895734(v15, a5, 0, a6, a7);
}

uint64_t sub_24088BE78()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24088C394;
  }

  else
  {
    v2 = sub_24088BF8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24088BF8C()
{
  v1 = v0[26];
  sub_2407EEE04(v0[27], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[26];
    sub_2407D9440(v0[27], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
    v5 = &qword_27E5079A0;
    v6 = &qword_2408D9180;
LABEL_5:
    sub_2407D9440(v4, v5, v6);
    goto LABEL_7;
  }

  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[19];
  v12 = v0[12];
  v13 = *(v2 + 48);
  sub_2407D2554(v7, (v0 + 2));
  (*(v10 + 32))(v8, v7 + v13, v9);
  v14 = *(v12 + 16);
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  sub_24080F060(v14 + v15, v11, &qword_27E506EA8, &unk_2408D9130);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v14 + v15, 1, 1, v17);
  os_unfair_lock_unlock((v14 + v16));

  v19 = (*(v18 + 48))(v11, 1, v17);
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[25];
  v23 = v0[23];
  v24 = v0[19];
  if (v19 == 1)
  {
    (*(v21 + 8))(v0[25], v0[23]);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2407D9440(v20, &qword_27E5079A0, &qword_2408D9180);
    v5 = &qword_27E506EA8;
    v6 = &unk_2408D9130;
    v4 = v24;
    goto LABEL_5;
  }

  v34 = v0[27];
  v25 = v0[16];
  v26 = v0[17];
  v27 = v0[14];
  v32 = v0[13];
  v33 = v0[15];
  sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030, MEMORY[0x277CEDD10]);
  v31 = v24;
  sub_2408D43D0();
  v28 = *(v32 + 48);
  sub_2407D91C4((v0 + 2), v27);
  (*(v25 + 32))(v27 + v28, v26, v33);
  sub_2408D4E20();
  (*(v21 + 8))(v22, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2407D9440(v34, &qword_27E5079A0, &qword_2408D9180);
  (*(v18 + 8))(v31, v17);
LABEL_7:

  v29 = v0[1];

  return v29();
}

uint64_t sub_24088C394(uint64_t a1)
{
  v30 = v1;
  v2 = v1[29];
  sub_2408D4920();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[21];
    v6 = v1[22];
    v8 = v1[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2408D5290();
    v13 = sub_2408CC504(v11, v12, &v29);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "handleBlePairingState createTransportForBleClient caught: error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[21];
    v14 = v1[22];
    v16 = v1[20];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v1[18];
  v18 = *(v1[12] + 16);
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v18 + v20));
  sub_24080F060(v18 + v19, v17, &qword_27E506EA8, &unk_2408D9130);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v18 + v19, 1, 1, v21);
  os_unfair_lock_unlock((v18 + v20));

  v23 = (*(v22 + 48))(v17, 1, v21);
  v24 = v1[29];
  v25 = v1[18];
  if (v23 == 1)
  {

    sub_2407D9440(v25, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v1[10] = v24;
    v26 = v24;
    sub_2408D4E10();

    (*(v22 + 8))(v25, v21);
  }

  v27 = v1[1];

  return v27();
}

uint64_t sub_24088C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[15] = v12;
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v13 = sub_2408D4B20();
  v8[20] = v13;
  v8[21] = *(v13 - 8);
  v8[22] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[23] = v14;
  v8[24] = *(v14 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[26] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[27] = v15;
  v16 = swift_task_alloc();
  v8[28] = v16;
  *v16 = v8;
  v16[1] = sub_24088C9E0;

  return sub_240897BA8(v15, a5, 0, a6, a7);
}

uint64_t sub_24088C9E0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_2408B5334;
  }

  else
  {
    v2 = sub_2408B5330;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24088CAF4(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v4 = sub_2408D4FD0();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = sub_2408D4FC0();
  v3[55] = swift_task_alloc();
  sub_2408D4C70();
  v3[56] = swift_task_alloc();
  sub_2408D40F0();
  v3[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  v3[58] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v3[59] = v5;
  v3[60] = *(v5 - 8);
  v3[61] = swift_task_alloc();
  v6 = sub_2408D4B20();
  v3[62] = v6;
  v3[63] = *(v6 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v7 = sub_2408D4710();
  v3[68] = v7;
  v3[69] = *(v7 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v8 = sub_2408D3630();
  v3[73] = v8;
  v3[74] = *(v8 - 8);
  v3[75] = swift_task_alloc();
  v9 = sub_2408D4130();
  v3[76] = v9;
  v3[77] = *(v9 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088CEDC, v2, 0);
}

uint64_t sub_24088CEDC()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = swift_allocObject();
  v0[80] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_24088CFE4;

  return v6(v0 + 2, sub_2408B47A0, v3);
}

uint64_t sub_24088CFE4()
{
  v1 = *v0;
  v2 = *v0;

  v6 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v3 = swift_task_alloc();
  *(v1 + 656) = v3;
  *v3 = v2;
  v3[1] = sub_24088D170;
  v4 = *(v1 + 600);

  return v6(v4);
}

uint64_t sub_24088D170()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_24088D280, v1, 0);
}

uint64_t sub_24088D280(uint64_t a1)
{
  v95 = v1;
  v2 = *(v1 + 632);
  v3 = *(v1 + 616);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);
  v6 = *(v1 + 592);
  v7 = *(v1 + 584);
  v8 = *(v1 + 576);
  v90 = *(v1 + 568);
  v9 = *(v1 + 552);
  v86 = *(v1 + 624);
  v88 = *(v1 + 544);
  sub_2408D3570();
  (*(v6 + 8))(v5, v7);
  sub_2407F0568();
  sub_2408D4910();
  (*(v3 + 16))(v86, v2, v4);
  v87 = *(v9 + 16);
  v87(v90, v8, v88);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v1 + 624);
  v14 = *(v1 + 616);
  v15 = *(v1 + 608);
  v16 = *(v1 + 552);
  v17 = *(v1 + 536);
  v18 = *(v1 + 504);
  v91 = *(v1 + 496);
  if (v12)
  {
    v83 = *(v1 + 544);
    v82 = *(v1 + 568);
    v85 = *(v1 + 536);
    v19 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v94[0] = v84;
    *v19 = 136315394;
    sub_2408B4B40(&qword_27E507A08, 255, MEMORY[0x277CED7B0], MEMORY[0x277CED7B8]);
    v81 = v11;
    v20 = sub_2408D5220();
    v22 = v21;
    log = v10;
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = sub_2408CC504(v20, v22, v94);

    *(v19 + 4) = v24;
    *(v19 + 12) = 256;
    LOBYTE(v24) = sub_2408D46F0();
    v25 = *(v16 + 8);
    v25(v82, v83);
    *(v19 + 14) = v24;
    _os_log_impl(&dword_2407CF000, log, v81, "Creating transport for SK server with discoveryModel: %s and advertisementFlags: %hhu", v19, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    MEMORY[0x245CC9F60](v84, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);

    v26 = *(v18 + 8);
    v26(v85, v91);
  }

  else
  {
    v25 = *(v16 + 8);
    v25(*(v1 + 568), *(v1 + 544));

    v23 = *(v14 + 8);
    v23(v13, v15);
    v26 = *(v18 + 8);
    v26(v17, v91);
  }

  v75 = v25;
  v76 = v23;
  v92 = v26;
  *(v1 + 680) = v26;
  *(v1 + 672) = v25;
  *(v1 + 664) = v23;
  v27 = *(v1 + 576);
  v28 = *(v1 + 560);
  v29 = *(v1 + 544);
  v30 = *(v1 + 464);
  v77 = *(v1 + 416);
  v78 = *(v1 + 424);
  v79 = *(v1 + 408);
  v31 = *(v1 + 376);
  v32 = *(v1 + 368);
  v33 = sub_2408D49A0();
  (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  sub_2408D4110();
  sub_2408D3FF0();
  v87(v28, v27, v29);
  sub_2408D4100();
  v34 = swift_allocObject();
  swift_weakInit();
  sub_2407D91C4(v1 + 16, v1 + 56);
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v32;
  sub_2407D2554((v1 + 56), (v35 + 4));
  v35[9] = v31;
  sub_2408B31E8();

  sub_2408D4C60();
  *(v1 + 344) = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v77 + 104))(v78, *MEMORY[0x277D85260], v79);
  sub_2408D4FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038, MEMORY[0x277CEDD78]);
  sub_2408D3470();
  swift_beginAccess();
  v36 = off_28130F0A0;
  if (off_28130F0A0)
  {
    v37 = *(v1 + 488);
    v38 = qword_28130F0A8;

    v36(v37);
    sub_2407D1854(v36, v38);
    sub_2407D2554((v1 + 136), v1 + 96);
    sub_2408D4910();
    sub_2407D91C4(v1 + 96, v1 + 176);
    v39 = sub_2408D4B10();
    v40 = sub_2408D4F20();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v1 + 520);
    v43 = *(v1 + 496);
    if (v41)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v94[0] = v45;
      *v44 = 136315138;
      sub_2407D91C4(v1 + 176, v1 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A00, &qword_2408D9260);
      v46 = sub_2408D4D40();
      v48 = v47;
      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));
      v49 = sub_2408CC504(v46, v48, v94);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_2407CF000, v39, v40, "Activating SetupKit server %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x245CC9F60](v45, -1, -1);
      MEMORY[0x245CC9F60](v44, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));
    }

    v92(v42, v43);
    v69 = *(v1 + 120);
    v70 = *(v1 + 128);
    __swift_project_boxed_opaque_existential_1((v1 + 96), v69);
    v71 = *(v70 + 8);
    v72 = swift_task_alloc();
    *(v1 + 688) = v72;
    *v72 = v1;
    v72[1] = sub_24088DE80;

    return MEMORY[0x28213F250](v69, v71);
  }

  else
  {
    sub_2408D4910();
    v50 = sub_2408D4B10();
    v51 = sub_2408D4F40();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2407CF000, v50, v51, "Unexpectedly found no V1AppleIDSetupServerInit", v52, 2u);
      MEMORY[0x245CC9F60](v52, -1, -1);
    }

    v53 = *(v1 + 528);
    v54 = *(v1 + 496);
    v55 = *(v1 + 400);
    v56 = *(v1 + 376);

    v92(v53, v54);
    v57 = *(v56 + 16);
    v58 = *(*v57 + *MEMORY[0x277D841D0] + 16);
    v59 = (*(*v57 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v57 + v59));
    sub_24080F060(v57 + v58, v55, &qword_27E506EA8, &unk_2408D9130);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v61 = *(v60 - 8);
    (*(v61 + 56))(v57 + v58, 1, 1, v60);
    os_unfair_lock_unlock((v57 + v59));

    v62 = (*(v61 + 48))(v55, 1, v60);
    v89 = *(v1 + 608);
    v93 = *(v1 + 632);
    v63 = *(v1 + 576);
    v64 = *(v1 + 544);
    v65 = *(v1 + 480);
    v66 = *(v1 + 488);
    v67 = *(v1 + 472);
    v68 = *(v1 + 400);
    if (v62 == 1)
    {
      (*(v65 + 8))(*(v1 + 488), *(v1 + 472));
      v75(v63, v64);
      v76(v93, v89);
      sub_2407D9440(v68, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      *(v1 + 360) = swift_allocError();
      sub_2408D4E10();
      (*(v65 + 8))(v66, v67);
      v75(v63, v64);
      v76(v93, v89);
      (*(v61 + 8))(v68, v60);
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

    v73 = *(v1 + 8);

    return v73();
  }
}

uint64_t sub_24088DE80()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    v4 = sub_24088E230;
  }

  else
  {
    v4 = sub_24088DFAC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24088DFAC()
{
  v15 = v0[79];
  v16 = v0[83];
  v13 = v0[84];
  v14 = v0[76];
  v12 = v0[72];
  v1 = v0[68];
  v2 = v0[60];
  v3 = v0[61];
  v4 = v0[59];
  v5 = v0[48];
  v7 = v0[15];
  v6 = v0[16];
  v8 = __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
  v0[30] = v7;
  v0[31] = *(v6 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v8, v7);
  (*(v2 + 8))(v3, v4);
  v13(v12, v1);
  v16(v15, v14);
  swift_beginAccess();
  sub_2408B3974((v0 + 27), v5 + 120, &qword_27E506E98, &qword_2408D7FA0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24088E230(uint64_t a1)
{
  v2 = v1[87];
  sub_2408D4910();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[87];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Caught error while attempting to activate server %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v1[85];
  v12 = v1[64];
  v13 = v1[62];
  v14 = v1[49];
  v15 = v1[47];

  v11(v12, v13);
  v16 = v1[5];
  v17 = __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
  v18 = *(v16 - 8);
  v19 = swift_task_alloc();
  (*(v18 + 16))(v19, v17, v16);
  sub_2408D4670();

  v20 = *(v15 + 16);
  v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  sub_24080F060(v20 + v21, v14, &qword_27E506EA8, &unk_2408D9130);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v24 = *(v23 - 8);
  (*(v24 + 56))(v20 + v21, 1, 1, v23);
  os_unfair_lock_unlock((v20 + v22));

  v25 = (*(v24 + 48))(v14, 1, v23);
  v26 = v1[87];
  v27 = v1[83];
  v39 = v1[84];
  v40 = v1[76];
  v41 = v1[79];
  v38 = v1[72];
  v28 = v1[68];
  v29 = v1[60];
  v30 = v1[61];
  v31 = v1[59];
  v32 = v1[49];
  if (v25 == 1)
  {

    (*(v29 + 8))(v30, v31);
    v39(v38, v28);
    v27(v41, v40);
    sub_2407D9440(v32, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v1[44] = v26;
    v37 = v27;
    v33 = v26;
    v34 = v26;
    sub_2408D4E10();

    (*(v29 + 8))(v30, v31);
    v39(v38, v28);
    v37(v41, v40);
    (*(v24 + 8))(v32, v23);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 12);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

  v35 = v1[1];

  return v35();
}

uint64_t sub_24088E78C(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v4 = sub_2408D4FD0();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = sub_2408D4FC0();
  v3[55] = swift_task_alloc();
  sub_2408D4C70();
  v3[56] = swift_task_alloc();
  sub_2408D40F0();
  v3[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  v3[58] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v3[59] = v5;
  v3[60] = *(v5 - 8);
  v3[61] = swift_task_alloc();
  v6 = sub_2408D4B20();
  v3[62] = v6;
  v3[63] = *(v6 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v7 = sub_2408D4710();
  v3[68] = v7;
  v3[69] = *(v7 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v8 = sub_2408D4350();
  v3[73] = v8;
  v3[74] = *(v8 - 8);
  v3[75] = swift_task_alloc();
  v9 = sub_2408D4130();
  v3[76] = v9;
  v3[77] = *(v9 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088EB74, v2, 0);
}

uint64_t sub_24088EB74()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = swift_allocObject();
  v0[80] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v4 = swift_task_alloc();
  v0[81] = v4;
  *v4 = v0;
  v4[1] = sub_24088EC7C;

  return v6(v0 + 2, sub_2408B3924, v3);
}

uint64_t sub_24088EC7C()
{
  v1 = *v0;
  v2 = *v0;

  v6 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v3 = swift_task_alloc();
  *(v1 + 656) = v3;
  *v3 = v2;
  v3[1] = sub_24088EE08;
  v4 = *(v1 + 600);

  return v6(v4);
}

uint64_t sub_24088EE08()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x2822009F8](sub_24088EF18, v1, 0);
}

uint64_t sub_24088EF18()
{
  v94 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v89 = *(v0 + 568);
  v8 = *(v0 + 552);
  v85 = *(v0 + 624);
  v87 = *(v0 + 544);
  sub_2408D42B0();
  (*(v5 + 8))(v4, v6);
  sub_2407F0568();
  sub_2408D4910();
  (*(v2 + 16))(v85, v1, v3);
  v86 = *(v8 + 16);
  v86(v89, v7, v87);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F10();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 624);
  v13 = *(v0 + 616);
  v14 = *(v0 + 608);
  v15 = *(v0 + 552);
  v16 = *(v0 + 536);
  v17 = *(v0 + 504);
  v90 = *(v0 + 496);
  if (v11)
  {
    v82 = *(v0 + 544);
    v81 = *(v0 + 568);
    v84 = *(v0 + 536);
    v18 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v93[0] = v83;
    *v18 = 136315394;
    sub_2408B4B40(&qword_27E507A08, 255, MEMORY[0x277CED7B0], MEMORY[0x277CED7B8]);
    v80 = v10;
    v19 = sub_2408D5220();
    v21 = v20;
    log = v9;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_2408CC504(v19, v21, v93);

    *(v18 + 4) = v23;
    *(v18 + 12) = 256;
    LOBYTE(v23) = sub_2408D46F0();
    v24 = *(v15 + 8);
    v24(v81, v82);
    *(v18 + 14) = v23;
    _os_log_impl(&dword_2407CF000, log, v80, "Creating transport for SK server with discoveryModel: %s and advertisementFlags: %hhu", v18, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    MEMORY[0x245CC9F60](v83, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);

    v25 = *(v17 + 8);
    v25(v84, v90);
  }

  else
  {
    v24 = *(v15 + 8);
    v24(*(v0 + 568), *(v0 + 544));

    v22 = *(v13 + 8);
    v22(v12, v14);
    v25 = *(v17 + 8);
    v25(v16, v90);
  }

  v74 = v24;
  v75 = v22;
  v91 = v25;
  *(v0 + 680) = v25;
  *(v0 + 672) = v24;
  *(v0 + 664) = v22;
  v26 = *(v0 + 576);
  v27 = *(v0 + 560);
  v28 = *(v0 + 544);
  v29 = *(v0 + 464);
  v76 = *(v0 + 416);
  v77 = *(v0 + 424);
  v78 = *(v0 + 408);
  v30 = *(v0 + 376);
  v31 = *(v0 + 368);
  v32 = sub_2408D49A0();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  sub_2408D4110();
  sub_2408D3FF0();
  v86(v27, v26, v28);
  sub_2408D4100();
  v33 = swift_allocObject();
  swift_weakInit();
  sub_2407D91C4(v0 + 16, v0 + 56);
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v31;
  sub_2407D2554((v0 + 56), (v34 + 4));
  v34[9] = v30;
  sub_2408B31E8();

  sub_2408D4C60();
  *(v0 + 344) = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v76 + 104))(v77, *MEMORY[0x277D85260], v78);
  sub_2408D4FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038, MEMORY[0x277CEDD78]);
  sub_2408D3470();
  swift_beginAccess();
  v35 = off_28130F0A0;
  if (off_28130F0A0)
  {
    v36 = *(v0 + 488);
    v37 = qword_28130F0A8;

    v35(v36);
    sub_2407D1854(v35, v37);
    sub_2407D2554((v0 + 136), v0 + 96);
    sub_2408D4910();
    sub_2407D91C4(v0 + 96, v0 + 176);
    v38 = sub_2408D4B10();
    v39 = sub_2408D4F20();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 520);
    v42 = *(v0 + 496);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v93[0] = v44;
      *v43 = 136315138;
      sub_2407D91C4(v0 + 176, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A00, &qword_2408D9260);
      v45 = sub_2408D4D40();
      v47 = v46;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v48 = sub_2408CC504(v45, v47, v93);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_2407CF000, v38, v39, "Activating SetupKit server %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x245CC9F60](v44, -1, -1);
      MEMORY[0x245CC9F60](v43, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    }

    v91(v41, v42);
    v68 = *(v0 + 120);
    v69 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v68);
    v70 = *(v69 + 8);
    v71 = swift_task_alloc();
    *(v0 + 688) = v71;
    *v71 = v0;
    v71[1] = sub_24088FB18;

    return MEMORY[0x28213F250](v68, v70);
  }

  else
  {
    sub_2408D4910();
    v49 = sub_2408D4B10();
    v50 = sub_2408D4F40();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2407CF000, v49, v50, "Unexpectedly found no V1AppleIDSetupServerInit", v51, 2u);
      MEMORY[0x245CC9F60](v51, -1, -1);
    }

    v52 = *(v0 + 528);
    v53 = *(v0 + 496);
    v54 = *(v0 + 400);
    v55 = *(v0 + 376);

    v91(v52, v53);
    v56 = *(v55 + 16);
    v57 = *(*v56 + *MEMORY[0x277D841D0] + 16);
    v58 = (*(*v56 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v56 + v58));
    sub_24080F060(v56 + v57, v54, &qword_27E506EA8, &unk_2408D9130);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v60 = *(v59 - 8);
    (*(v60 + 56))(v56 + v57, 1, 1, v59);
    os_unfair_lock_unlock((v56 + v58));

    v61 = (*(v60 + 48))(v54, 1, v59);
    v88 = *(v0 + 608);
    v92 = *(v0 + 632);
    v62 = *(v0 + 576);
    v63 = *(v0 + 544);
    v64 = *(v0 + 480);
    v65 = *(v0 + 488);
    v66 = *(v0 + 472);
    v67 = *(v0 + 400);
    if (v61 == 1)
    {
      (*(v64 + 8))(*(v0 + 488), *(v0 + 472));
      v74(v62, v63);
      v75(v92, v88);
      sub_2407D9440(v67, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      *(v0 + 360) = swift_allocError();
      sub_2408D4E10();
      (*(v64 + 8))(v65, v66);
      v74(v62, v63);
      v75(v92, v88);
      (*(v60 + 8))(v67, v59);
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v72 = *(v0 + 8);

    return v72();
  }
}

uint64_t sub_24088FB18()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    v4 = sub_2408B5310;
  }

  else
  {
    v4 = sub_2408B5340;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24088FC44(void *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v149 = a4;
  v148 = a3;
  v6 = sub_2408D35B0();
  MEMORY[0x28223BE20](v6 - 8);
  v151 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2408D3500();
  v160 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v143 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v142 = &v137 - v11;
  v147 = sub_2408D3FD0();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v138 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v141 = &v137 - v17;
  MEMORY[0x28223BE20](v16);
  v139 = &v137 - v18;
  v158 = sub_2408D4090();
  v167 = *(v158 - 8);
  v19 = MEMORY[0x28223BE20](v158);
  v154 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v157 = &v137 - v21;
  v166 = sub_2408D4130();
  v156 = *(v166 - 8);
  v22 = MEMORY[0x28223BE20](v166);
  v153 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v137 - v24;
  v161 = sub_2408D3FC0();
  v164 = *(v161 - 8);
  v25 = MEMORY[0x28223BE20](v161);
  v152 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v159 = &v137 - v27;
  v28 = sub_2408D3630();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2408D4B20();
  v165 = *(v163 - 8);
  v32 = MEMORY[0x28223BE20](v163);
  v137 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v140 = &v137 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v137 - v36;
  sub_2408D4910();
  v38 = *(v29 + 16);
  v168 = a2;
  v38(v31, a2, v28);
  v39 = sub_2408D4B10();
  v40 = sub_2408D4F20();
  v41 = os_log_type_enabled(v39, v40);
  v150 = a1;
  v162 = v8;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v169 = v43;
    *v42 = 136315138;
    sub_2408B4B40(&qword_27E507A30, 255, MEMORY[0x277CED360], MEMORY[0x277CED370]);
    v44 = sub_2408D5220();
    v46 = v45;
    (*(v29 + 8))(v31, v28);
    v47 = sub_2408CC504(v44, v46, &v169);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_2407CF000, v39, v40, "Received updated model via tap: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x245CC9F60](v43, -1, -1);
    v48 = v42;
    v8 = v162;
    MEMORY[0x245CC9F60](v48, -1, -1);
  }

  else
  {

    (*(v29 + 8))(v31, v28);
  }

  v144 = *(v165 + 8);
  v144(v37, v163);
  v49 = v155;
  sub_2408D3570();
  v50 = v157;
  sub_2408D40A0();
  v51 = *(v156 + 8);
  v51(v49, v166);
  v52 = v167;
  v53 = *(v167 + 88);
  v54 = v158;
  v55 = v53(v50, v158);
  v56 = *MEMORY[0x277CED758];
  v57 = v161;
  if (v55 == *MEMORY[0x277CED758])
  {
    (*(v52 + 96))(v50, v54);
    (*(v164 + 32))(v159, v50, v57);
    v58 = sub_2408D3FB0();
    if (v58 != 2 && (v58 & 1) != 0)
    {
      v59 = v57;
      v60 = v163;
      if (qword_27E506920 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v60, qword_27E506E60);
      v61 = sub_2408D4B10();
      v62 = sub_2408D4F20();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v160;
      v65 = v139;
      v66 = v150;
      if (v63)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2407CF000, v61, v62, "Proximity connector detected manual selection, invalidating, untapping, resuming", v67, 2u);
        MEMORY[0x245CC9F60](v67, -1, -1);
      }

      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v68 = swift_allocError();
      (*(v64 + 104))(v69, *MEMORY[0x277CED2D8], v8);
      sub_2407F0D64();

      v70 = *(v149 + 16);
      v71 = *(*v70 + *MEMORY[0x277D841D0] + 16);
      v72 = (*(*v70 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v70 + v72));
      sub_24080F060(v70 + v71, v65, &qword_27E506EA8, &unk_2408D9130);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v74 = *(v73 - 8);
      (*(v74 + 56))(v70 + v71, 1, 1, v73);
      os_unfair_lock_unlock((v70 + v72));

      if ((*(v74 + 48))(v65, 1, v73) == 1)
      {
        sub_2407D9440(v65, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        sub_2408B3B50();
        v169 = swift_allocError();
        sub_2408D4E10();
        (*(v74 + 8))(v65, v73);
      }

      v129 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      MEMORY[0x28223BE20](v129);
      (*(v131 + 16))(&v137 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v164 + 8))(v159, v59);
    }

    v75 = v57;
    (*(v164 + 8))(v159, v57);
  }

  else
  {
    v75 = v161;
    (*(v52 + 8))(v50, v54);
  }

  v76 = v153;
  sub_2408D3570();
  v77 = v154;
  sub_2408D40A0();
  v51(v76, v166);
  if (v53(v77, v54) == v56)
  {
    (*(v167 + 96))(v77, v54);
    v78 = v77;
    v79 = v164;
    v80 = v152;
    (*(v164 + 32))(v152, v78, v75);
    v81 = v145;
    sub_2408D3FA0();
    v82 = v146;
    v83 = v147;
    v84 = (*(v146 + 88))(v81, v147);
    v85 = v160;
    if (v84 == *MEMORY[0x277CED6B8])
    {
      (*(v82 + 8))(v81, v83);
      v86 = v140;
      sub_2408D4910();
      v87 = sub_2408D4B10();
      v88 = sub_2408D4F20();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v162;
      if (v89)
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2407CF000, v87, v88, "Proximity connector detected cancellation, invalidating, untapping.", v91, 2u);
        MEMORY[0x245CC9F60](v91, -1, -1);
      }

      v144(v86, v163);
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v92 = swift_allocError();
      v93 = *(v85 + 104);
      v93(v94, *MEMORY[0x277CED2D8], v90);
      sub_2407F0D64();

      v95 = *(v149 + 16);
      v96 = *(*v95 + *MEMORY[0x277D841D0] + 16);
      v97 = (*(*v95 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v95 + v97));
      v98 = v141;
      sub_24080F060(v95 + v96, v141, &qword_27E506EA8, &unk_2408D9130);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v100 = *(v99 - 8);
      (*(v100 + 56))(v95 + v96, 1, 1, v99);
      os_unfair_lock_unlock((v95 + v97));

      if ((*(v100 + 48))(v98, 1, v99) == 1)
      {
        sub_2407D9440(v98, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v124 = swift_allocError();
        v93(v125, *MEMORY[0x277CED270], v90);
        v169 = v124;
        sub_2408D4E10();
        (*(v100 + 8))(v98, v99);
      }

      v126 = __swift_project_boxed_opaque_existential_1(v150, v150[3]);
      MEMORY[0x28223BE20](v126);
      (*(v128 + 16))(&v137 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v164 + 8))(v152, v161);
    }

    (*(v79 + 8))(v80, v75);
    (*(v82 + 8))(v81, v83);
  }

  else
  {
    (*(v167 + 8))(v77, v54);
    v85 = v160;
  }

  v101 = v162;
  v102 = v151;
  sub_2408D35C0();
  if ((*(v85 + 48))(v102, 6, v101))
  {
    return sub_2408B4AE0(v102, MEMORY[0x277CED338]);
  }

  v104 = v142;
  (*(v85 + 32))(v142, v102, v101);
  v105 = *MEMORY[0x277CED270];
  v106 = *(v85 + 104);
  v107 = v143;
  v106(v143, v105, v101);
  v108 = sub_2408D34F0();
  v109 = *(v85 + 8);
  v109(v107, v101);
  result = (v109)(v104, v101);
  if (v108)
  {
    v110 = v137;
    sub_2408D4910();
    v111 = sub_2408D4B10();
    v112 = sub_2408D4F20();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_2407CF000, v111, v112, "Proximity connector detected failed state (User cancelled), untapping, resuming", v113, 2u);
      MEMORY[0x245CC9F60](v113, -1, -1);
    }

    v144(v110, v163);
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    v114 = swift_allocError();
    v106(v115, *MEMORY[0x277CED2D8], v101);
    sub_2407F0D64();

    v116 = *(v149 + 16);
    v117 = *(*v116 + *MEMORY[0x277D841D0] + 16);
    v118 = *(*v116 + 48) + 3;
    v119 = v101;
    v168 = v106;
    v120 = v118 & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v116 + v120));
    v121 = v138;
    sub_24080F060(v116 + v117, v138, &qword_27E506EA8, &unk_2408D9130);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v123 = *(v122 - 8);
    (*(v123 + 56))(v116 + v117, 1, 1, v122);
    os_unfair_lock_unlock((v116 + v120));

    if ((*(v123 + 48))(v121, 1, v122) == 1)
    {
      sub_2407D9440(v121, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v132 = swift_allocError();
      v168(v133, v105, v119);
      v169 = v132;
      sub_2408D4E10();
      (*(v123 + 8))(v121, v122);
    }

    v134 = __swift_project_boxed_opaque_existential_1(v150, v150[3]);
    MEMORY[0x28223BE20](v134);
    (*(v136 + 16))(&v137 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_2408D4670();
  }

  return result;
}

uint64_t sub_24089116C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v135 = a4;
  v134 = a3;
  v136 = a1;
  v137 = sub_2408D42F0();
  MEMORY[0x28223BE20](v137);
  v138 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2408D3FD0();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v127 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v129 = &v125 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v125 - v12;
  v148 = sub_2408D4090();
  v153 = *(v148 - 8);
  v14 = MEMORY[0x28223BE20](v148);
  v141 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v125 - v16;
  v151 = sub_2408D4130();
  v144 = *(v151 - 8);
  v17 = MEMORY[0x28223BE20](v151);
  v140 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v142 = &v125 - v19;
  v20 = sub_2408D3FC0();
  v150 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v146 = &v125 - v24;
  v25 = sub_2408D4350();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2408D4B20();
  v152 = *(v149 - 8);
  v29 = MEMORY[0x28223BE20](v149);
  v126 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v128 = &v125 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v125 - v33;
  sub_2408D4910();
  v35 = *(v26 + 16);
  v145 = a2;
  v35(v28, a2, v25);
  v36 = sub_2408D4B10();
  v37 = sub_2408D4F20();
  v38 = os_log_type_enabled(v36, v37);
  v147 = v20;
  v139 = v23;
  v125 = v13;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v157 = v40;
    *v39 = 136315138;
    sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v41 = sub_2408D5220();
    v43 = v42;
    (*(v26 + 8))(v28, v25);
    v44 = sub_2408CC504(v41, v43, &v157);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_2407CF000, v36, v37, "Received updated model via tap: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    MEMORY[0x245CC9F60](v40, -1, -1);
    MEMORY[0x245CC9F60](v39, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v28, v25);
  }

  v130 = *(v152 + 8);
  v130(v34, v149);
  v45 = v142;
  sub_2408D42B0();
  v46 = v143;
  sub_2408D40A0();
  v47 = *(v144 + 8);
  v47(v45, v151);
  v48 = v153;
  v49 = *(v153 + 88);
  v50 = v148;
  v51 = v49(v46, v148);
  v52 = *MEMORY[0x277CED758];
  v53 = v150;
  if (v51 == *MEMORY[0x277CED758])
  {
    (*(v48 + 96))(v46, v50);
    v54 = v46;
    v55 = v147;
    (*(v53 + 32))(v146, v54, v147);
    v56 = sub_2408D3FB0();
    if (v56 != 2 && (v56 & 1) != 0)
    {
      v57 = v53;
      if (qword_27E506920 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v149, qword_27E506E60);
      v58 = sub_2408D4B10();
      v59 = sub_2408D4F20();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v125;
      if (v60)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_2407CF000, v58, v59, "Proximity connector detected manual selection, invalidating, untapping, resuming", v62, 2u);
        MEMORY[0x245CC9F60](v62, -1, -1);
      }

      v63 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v64 = swift_allocError();
      (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277CED2D8], v63);
      sub_2407F0D64();

      v66 = *(v135 + 16);
      v67 = *(*v66 + *MEMORY[0x277D841D0] + 16);
      v68 = (*(*v66 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v66 + v68));
      sub_24080F060(v66 + v67, v61, &qword_27E506EA8, &unk_2408D9130);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v70 = *(v69 - 8);
      (*(v70 + 56))(v66 + v67, 1, 1, v69);
      os_unfair_lock_unlock((v66 + v68));

      if ((*(v70 + 48))(v61, 1, v69) == 1)
      {
        sub_2407D9440(v61, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        sub_2408B3B50();
        *&v157 = swift_allocError();
        sub_2408D4E10();
        (*(v70 + 8))(v61, v69);
      }

      v122 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
      MEMORY[0x28223BE20](v122);
      (*(v124 + 16))(&v125 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v57 + 8))(v146, v55);
    }

    (*(v53 + 8))(v146, v55);
    v50 = v148;
  }

  else
  {
    (*(v48 + 8))(v46, v50);
  }

  v71 = v140;
  sub_2408D42B0();
  v72 = v141;
  sub_2408D40A0();
  v47(v71, v151);
  if (v49(v72, v50) == v52)
  {
    (*(v153 + 96))(v72, v50);
    v73 = v150;
    v74 = v139;
    v75 = v147;
    (*(v150 + 32))(v139, v72, v147);
    v76 = v131;
    sub_2408D3FA0();
    v77 = v132;
    v78 = v133;
    if ((*(v132 + 88))(v76, v133) == *MEMORY[0x277CED6B8])
    {
      (*(v77 + 8))(v76, v78);
      v79 = v128;
      sub_2408D4910();
      v80 = sub_2408D4B10();
      v81 = sub_2408D4F20();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_2407CF000, v80, v81, "Proximity connector detected cancellation, invalidating, untapping.", v82, 2u);
        MEMORY[0x245CC9F60](v82, -1, -1);
      }

      v130(v79, v149);
      v83 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v84 = swift_allocError();
      v85 = *(*(v83 - 8) + 104);
      v85(v86, *MEMORY[0x277CED2D8], v83);
      sub_2407F0D64();

      v87 = *(v135 + 16);
      v88 = *(*v87 + *MEMORY[0x277D841D0] + 16);
      v89 = (*(*v87 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v87 + v89));
      v90 = v129;
      sub_24080F060(v87 + v88, v129, &qword_27E506EA8, &unk_2408D9130);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v92 = *(v91 - 8);
      (*(v92 + 56))(v87 + v88, 1, 1, v91);
      os_unfair_lock_unlock((v87 + v89));

      if ((*(v92 + 48))(v90, 1, v91) == 1)
      {
        sub_2407D9440(v90, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v111 = swift_allocError();
        v85(v112, *MEMORY[0x277CED270], v83);
        *&v157 = v111;
        sub_2408D4E10();
        (*(v92 + 8))(v90, v91);
      }

      v113 = v147;
      v114 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
      MEMORY[0x28223BE20](v114);
      (*(v116 + 16))(&v125 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v150 + 8))(v139, v113);
    }

    (*(v73 + 8))(v74, v75);
    (*(v77 + 8))(v76, v78);
  }

  else
  {
    (*(v153 + 8))(v72, v50);
  }

  v93 = v138;
  sub_2408D4300();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_2408B4AE0(v93, MEMORY[0x277CED950]);
  }

  v94 = *(v93 + 16);
  v155[0] = *v93;
  v155[1] = v94;
  v156 = *(v93 + 32);
  v157 = xmmword_2408D73A0;
  v159 = 0;
  v160 = 0;
  v158 = 0;
  v95 = MEMORY[0x245CC8890](v155, &v157);
  result = sub_2408B2E38(v155);
  if (v95)
  {
    v97 = v126;
    sub_2408D4910();
    v98 = sub_2408D4B10();
    v99 = sub_2408D4F20();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2407CF000, v98, v99, "Proximity connector detected failed state (User cancelled), untapping, resuming", v100, 2u);
      MEMORY[0x245CC9F60](v100, -1, -1);
    }

    v130(v97, v149);
    v101 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    v102 = swift_allocError();
    v103 = *(*(v101 - 8) + 104);
    v103(v104, *MEMORY[0x277CED2D8], v101);
    sub_2407F0D64();

    v105 = *(v135 + 16);
    v106 = *(*v105 + *MEMORY[0x277D841D0] + 16);
    v107 = (*(*v105 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v105 + v107));
    v108 = v127;
    sub_24080F060(v105 + v106, v127, &qword_27E506EA8, &unk_2408D9130);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v110 = *(v109 - 8);
    (*(v110 + 56))(v105 + v106, 1, 1, v109);
    os_unfair_lock_unlock((v105 + v107));

    if ((*(v110 + 48))(v108, 1, v109) == 1)
    {
      sub_2407D9440(v108, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v117 = swift_allocError();
      v103(v118, *MEMORY[0x277CED270], v101);
      v154 = v117;
      sub_2408D4E10();
      (*(v110 + 8))(v108, v109);
    }

    v119 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
    MEMORY[0x28223BE20](v119);
    (*(v121 + 16))(&v125 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_2408D4670();
  }

  return result;
}

uint64_t sub_240892648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v72 = a8;
  v73 = a5;
  v74 = a7;
  v77 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v61[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v61[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v61[-v19];
  v21 = sub_2408D4B20();
  v75 = *(v21 - 8);
  v76 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v65 = &v61[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v25 = &v61[-v24];
  sub_2408D4910();
  v71 = a1;
  sub_2407D91C4(a1, v81);
  v26 = *(v15 + 16);
  v70 = a3;
  v26(v20, a3, v14);
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F20();
  v29 = os_log_type_enabled(v27, v28);
  v69 = v14;
  v67 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v62 = v28;
    v31 = v30;
    v32 = swift_slowAlloc();
    v66 = v15;
    v63 = v32;
    v80[0] = v32;
    *v31 = 136315394;
    sub_2407D91C4(v81, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v33 = sub_2408D4D40();
    v64 = a6;
    v34 = v33;
    v35 = v18;
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
    v38 = sub_2408CC504(v34, v37, v80);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    v26(v35, v20, v14);
    v18 = v35;
    v39 = sub_2408D4D40();
    v41 = v40;
    (*(v66 + 8))(v20, v14);
    v42 = v39;
    a6 = v64;
    v43 = sub_2408CC504(v42, v41, v80);

    *(v31 + 14) = v43;
    _os_log_impl(&dword_2407CF000, v27, v62, "BLE server (%s changed to state: %s", v31, 0x16u);
    v44 = v63;
    swift_arrayDestroy();
    v15 = v66;
    MEMORY[0x245CC9F60](v44, -1, -1);
    MEMORY[0x245CC9F60](v31, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
    __swift_destroy_boxed_opaque_existential_0Tm(v81);
  }

  v45 = v76;
  v46 = *(v75 + 8);
  v46(v25, v76);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v77 = a9;
    v49 = sub_2408D4E60();
    (*(*(v49 - 8) + 56))(v78, 1, 1, v49);
    v50 = v69;
    v67(v18, v70, v69);
    sub_2407D91C4(v71, v81);
    sub_2407D91C4(a6, v79);
    v51 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 47) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 2) = 0;
    *(v55 + 3) = 0;
    *(v55 + 4) = v48;
    (*(v15 + 32))(&v55[v51], v18, v50);
    *&v55[v52] = v73;
    sub_2407D2554(v81, &v55[v53]);
    sub_2407D2554(v79, &v55[v54]);
    *&v55[(v54 + 47) & 0xFFFFFFFFFFFFFFF8] = v74;

    sub_2408938C4(0, 0, v78, v77, v55);
  }

  else
  {
    v57 = v65;
    sub_2408D4910();
    v58 = sub_2408D4B10();
    v59 = sub_2408D4F30();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2407CF000, v58, v59, "Cannot handle state change, self is released", v60, 2u);
      MEMORY[0x245CC9F60](v60, -1, -1);
    }

    return (v46)(v57, v45);
  }
}

uint64_t sub_240892CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v18;
  v8[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[15] = v13;
  v8[16] = *(v13 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[18] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[19] = v14;
  v15 = swift_task_alloc();
  v8[20] = v15;
  *v15 = v8;
  v15[1] = sub_240892F0C;

  return sub_240895734(v14, a5, 1, a6, a7);
}

uint64_t sub_240892F0C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2408934A8;
  }

  else
  {
    v2 = sub_240893020;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240893020()
{
  v1 = v0[18];
  sub_2407EEE04(v0[19], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    sub_2407D9440(v0[19], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
    v5 = &qword_27E5079A0;
    v6 = &qword_2408D9180;
LABEL_5:
    sub_2407D9440(v4, v5, v6);
    goto LABEL_7;
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[7];
  v13 = v0[8];
  v14 = *(v2 + 48);
  sub_2407D2554(v7, (v0 + 2));
  (*(v10 + 32))(v8, v7 + v14, v9);
  v15 = v12[3];
  v16 = __swift_project_boxed_opaque_existential_1(v12, v15);
  v17 = *(v15 - 8);
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v16, v15);
  sub_2408D4670();

  v19 = *(v13 + 16);
  v20 = *(*v19 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v19 + v21));
  sub_24080F060(v19 + v20, v11, &qword_27E506EA8, &unk_2408D9130);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v19 + v20, 1, 1, v22);
  os_unfair_lock_unlock((v19 + v21));

  v24 = (*(v23 + 48))(v11, 1, v22);
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[15];
  if (v24 == 1)
  {
    (*(v26 + 8))(v0[17], v0[15]);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2407D9440(v25, &qword_27E5079A0, &qword_2408D9180);
    v5 = &qword_27E506EA8;
    v6 = &unk_2408D9130;
    v4 = v28;
    goto LABEL_5;
  }

  v39 = v0[19];
  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[10];
  v37 = v0[9];
  v38 = v0[11];
  sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030, MEMORY[0x277CEDD10]);
  v36 = v28;
  sub_2408D43D0();
  v33 = *(v37 + 48);
  sub_2407D91C4((v0 + 2), v32);
  (*(v30 + 32))(v32 + v33, v31, v38);
  sub_2408D4E20();
  (*(v26 + 8))(v27, v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2407D9440(v39, &qword_27E5079A0, &qword_2408D9180);
  (*(v23 + 8))(v36, v22);
LABEL_7:

  v34 = v0[1];

  return v34();
}

uint64_t sub_2408934A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240893550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v18;
  v8[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[10] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[15] = v13;
  v8[16] = *(v13 - 8);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[18] = swift_task_alloc();
  v14 = swift_task_alloc();
  v8[19] = v14;
  v15 = swift_task_alloc();
  v8[20] = v15;
  *v15 = v8;
  v15[1] = sub_2408937B0;

  return sub_240897BA8(v14, a5, 1, a6, a7);
}

uint64_t sub_2408937B0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_2408B5314;
  }

  else
  {
    v2 = sub_2408B52FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408938C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2407EEE04(a3, v22 - v9, &unk_27E506BD0, &qword_2408D7AB0);
  v11 = sub_2408D4E60();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2407D9440(v10, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2408D4E00();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2408D4D50() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_240893B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a4;
  v43 = a7;
  v51 = a6;
  v49 = a5;
  v8 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = v41 - v15;
  v16 = sub_2408D4FD0();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v46 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v44);
  v45 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2408D4C70();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_2408D4780();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2408D4990();
  if (v24)
  {
    v25 = v24;
    v52 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507990, &qword_2408D9150);
    swift_allocObject();

    v26 = sub_2408D4A70();
    v41[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
    (*(v21 + 104))(v23, *MEMORY[0x277CEDCF0], v20);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = a2;
    v28[4] = v26;
    v29 = objc_allocWithZone(MEMORY[0x277D54CE8]);
    v42 = v25;

    v41[1] = [v29 init];
    v41[0] = sub_2408B31E8();
    sub_2408D4C60();
    v52 = MEMORY[0x277D84F90];
    sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
    sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
    sub_2408D5080();
    (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
    sub_2408D4FF0();
    v30 = v42;
    v31 = sub_2408D43C0();
    v32 = sub_2408D4E60();
    v33 = v50;
    (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
    v34 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
    v35 = swift_allocObject();
    v35[2] = v8;
    v35[3] = v34;
    v35[4] = v31;
    v35[5] = v8;
    v35[6] = v26;
    swift_retain_n();

    sub_24083AB60(0, 0, v33, v43, v35);
  }

  else
  {
    v36 = *(a3 + 16);
    v37 = *(*v36 + *MEMORY[0x277D841D0] + 16);
    v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v36 + v38));
    sub_24080F060(v36 + v37, v13, &qword_27E506EA8, &unk_2408D9130);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v40 = *(v39 - 8);
    (*(v40 + 56))(v36 + v37, 1, 1, v39);
    os_unfair_lock_unlock((v36 + v38));

    if ((*(v40 + 48))(v13, 1, v39) == 1)
    {
      sub_2407D9440(v13, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      v52 = swift_allocError();
      sub_2408D4E10();
      (*(v40 + 8))(v13, v39);
    }
  }
}

uint64_t sub_2408942B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a6;
  v72 = a8;
  v67 = a7;
  v70 = a5;
  v75 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - v17;
  v19 = sub_2408D4B20();
  v73 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  sub_2408D4910();
  v74 = v13;
  v24 = *(v13 + 16);
  v66 = a3;
  v24(v18, a3, v12);

  v25 = sub_2408D4B10();
  v26 = sub_2408D4F20();

  v27 = os_log_type_enabled(v25, v26);
  v69 = a1;
  v65 = v16;
  v63 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v76 = v12;
    v29 = v28;
    v60 = swift_slowAlloc();
    v77 = a1;
    v78[0] = v60;
    *v29 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
    v30 = sub_2408D4D40();
    v61 = v19;
    v32 = sub_2408CC504(v30, v31, v78);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v24(v16, v18, v76);
    v33 = sub_2408D4D40();
    v35 = v34;
    v36 = v74;
    (*(v74 + 8))(v18, v76);
    v37 = sub_2408CC504(v33, v35, v78);
    v19 = v61;

    *(v29 + 14) = v37;
    _os_log_impl(&dword_2407CF000, v25, v26, "BLE client (%s changed to state: %s", v29, 0x16u);
    v38 = v60;
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v38, -1, -1);
    v39 = v29;
    v12 = v76;
    MEMORY[0x245CC9F60](v39, -1, -1);

    v40 = *(v73 + 8);
    v40(v23, v19);
    v41 = v36;
  }

  else
  {

    v42 = v74;
    (*(v74 + 8))(v18, v12);
    v40 = *(v73 + 8);
    v40(v23, v19);
    v41 = v42;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v45 = sub_2408D4E60();
    v46 = v68;
    (*(*(v45 - 8) + 56))(v68, 1, 1, v45);
    v47 = v65;
    v63(v65, v66, v12);
    v48 = v12;
    v49 = v41;
    v50 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v51 = (v64 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    *(v53 + 2) = 0;
    *(v53 + 3) = 0;
    *(v53 + 4) = v44;
    (*(v49 + 32))(&v53[v50], v47, v48);
    v54 = v69;
    *&v53[v51] = v70;
    *&v53[v52] = v54;
    *&v53[(v52 + 15) & 0xFFFFFFFFFFFFFFF8] = v71;

    sub_24083AB60(0, 0, v46, v72, v53);
  }

  else
  {
    v56 = v62;
    sub_2408D4910();
    v57 = sub_2408D4B10();
    v58 = sub_2408D4F30();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2407CF000, v57, v58, "Cannot handle state change, self is released", v59, 2u);
      MEMORY[0x245CC9F60](v59, -1, -1);
    }

    return (v40)(v56, v19);
  }
}

uint64_t sub_2408948A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v8[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240894AA8, 0, 0);
}

uint64_t sub_240894AA8()
{
  v1 = v0[20];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018, MEMORY[0x277CED9F8]);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_240894BB8;
  v3 = v0[33];
  v4 = v0[18];
  v5 = v0[19];

  return sub_240895734(v3, v4, 0, v5, (v0 + 2));
}

uint64_t sub_240894BB8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_2408950B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = sub_240894CD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240894CD4()
{
  v1 = v0[32];
  sub_2407EEE04(v0[33], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[32];
    sub_2407D9440(v0[33], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
  }

  else
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[29];
    v8 = v0[30];
    v9 = *(v2 + 48);
    sub_2407D2554(v5, (v0 + 7));
    (*(v8 + 32))(v6, v5 + v9, v7);
    sub_2408D4A90();
    v10 = v0[15];
    if (v10)
    {
      v11 = v0[27];
      v12 = *(v10 + 16);

      v13 = *(*v12 + *MEMORY[0x277D841D0] + 16);
      v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v12 + v14));
      sub_24080F060(v12 + v13, v11, &qword_27E506EA8, &unk_2408D9130);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12 + v13, 1, 1, v15);
      os_unfair_lock_unlock((v12 + v14));

      if ((*(v16 + 48))(v11, 1, v15) == 1)
      {
        sub_2407D9440(v0[27], &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v18 = v0[26];
        v17 = v0[27];
        v19 = v0[25];
        v29 = v0[24];
        v20 = v0[22];
        v21 = v0[23];
        sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030, MEMORY[0x277CEDD10]);
        sub_2408D43D0();
        v22 = *(v20 + 48);
        sub_2407D91C4((v0 + 7), v21);
        (*(v19 + 32))(v21 + v22, v18, v29);
        sub_2408D4E20();
        (*(v16 + 8))(v17, v15);
      }
    }

    v23 = v0[33];
    v25 = v0[30];
    v24 = v0[31];
    v26 = v0[29];
    v0[16] = 0;
    sub_2408D4AA0();
    (*(v25 + 8))(v24, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v4 = v23;
  }

  sub_2407D9440(v4, &qword_27E5079A0, &qword_2408D9180);

  v27 = v0[1];

  return v27();
}

uint64_t sub_2408950B4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2408D4A90();
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[28];
    v3 = *(v1 + 16);

    v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
    v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v3 + v5));
    sub_24080F060(v3 + v4, v2, &qword_27E506EA8, &unk_2408D9130);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3 + v4, 1, 1, v6);
    os_unfair_lock_unlock((v3 + v5));

    if ((*(v7 + 48))(v2, 1, v6) == 1)
    {
      sub_2407D9440(v0[28], &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v8 = v0[35];
      v9 = v0[28];
      v0[14] = v8;
      v10 = v8;
      sub_2408D4E10();
      (*(v7 + 8))(v9, v6);
    }
  }

  v11 = v0[35];
  v0[13] = 0;
  sub_2408D4AA0();

  v12 = v0[1];

  return v12();
}

uint64_t sub_240895308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v8[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240895508, 0, 0);
}

uint64_t sub_240895508()
{
  v1 = v0[20];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018, MEMORY[0x277CED9F8]);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_240895618;
  v3 = v0[33];
  v4 = v0[18];
  v5 = v0[19];

  return sub_240897BA8(v3, v4, 0, v5, (v0 + 2));
}

uint64_t sub_240895618()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_2408B5320;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v3 = sub_2408B532C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240895734(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = v5;
  *(v6 + 168) = a2;
  *(v6 + 176) = a4;
  *(v6 + 154) = a3;
  *(v6 + 160) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v8 = sub_2408D40F0();
  *(v6 + 240) = v8;
  v9 = *(v8 - 8);
  *(v6 + 248) = v9;
  *(v6 + 256) = *(v9 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  *(v6 + 320) = v10;
  *(v6 + 328) = *(v10 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v11 = sub_2408D4B20();
  *(v6 + 408) = v11;
  *(v6 + 416) = *(v11 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240895A90, v5, 0);
}

uint64_t sub_240895A90(uint64_t a1)
{
  v239 = v1;
  v2 = *(v1 + 400);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 184);
  v6 = *(v1 + 168);
  sub_2408D4910();
  v7 = v2;
  v8 = *(v4 + 16);
  v8(v7, v6, v3);
  sub_2407D91C4(v5, v1 + 16);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  v234 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v225 = *(v1 + 504);
    v217 = *(v1 + 416);
    v220 = *(v1 + 408);
    v12 = *(v1 + 392);
    v11 = *(v1 + 400);
    v14 = *(v1 + 320);
    v13 = *(v1 + 328);
    v213 = *(v1 + 154);
    v15 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v238[0] = v215;
    *v15 = 136315650;
    v8(v12, v11, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2408CC504(v16, v18, v238);

    *(v1 + 153) = v213 & 1;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, v238);

    *(v15 + 14) = v23;
    v24 = v19;
    *(v15 + 22) = 2080;
    sub_2407D91C4(v1 + 16, v1 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v25 = sub_2408D4D40();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v28 = sub_2408CC504(v25, v27, v238);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_2407CF000, v9, v10, "Handling BLE state: %s, role: %s, base: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v215, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    v29 = *(v217 + 8);
    v29(v225, v220);
  }

  else
  {
    v30 = *(v1 + 504);
    v31 = *(v1 + 408);
    v32 = *(v1 + 416);
    v33 = *(v1 + 400);
    v34 = *(v1 + 320);
    v35 = *(v1 + 328);

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v24 = *(v35 + 8);
    v24(v33, v34);
    v29 = *(v32 + 8);
    v29(v30, v31);
  }

  *(v1 + 512) = v24;
  v36 = *(v1 + 384);
  v37 = *(v1 + 320);
  v38 = *(v1 + 328);
  v234(v36, *(v1 + 168), v37);
  v39 = (*(v38 + 88))(v36, v37);
  if (v39 == *MEMORY[0x277CEDA68])
  {
    v40 = *(v1 + 352);
    v41 = *(v1 + 320);
    v42 = *(v1 + 328);
    v234(v40, *(v1 + 384), v41);
    (*(v42 + 96))(v40, v41);
    v43 = *v40;
    if (*(v40 + 8) == 1)
    {
      v226 = v29;
      v44 = v43;
      sub_2408D4920();
      v45 = v43;
      v46 = sub_2408D4B10();
      v47 = sub_2408D4F30();
      sub_24080F17C(v43, 1);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v43;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_2407CF000, v46, v47, "BLE state: Completed result: %@", v48, 0xCu);
        sub_2407D9440(v49, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v49, -1, -1);
        MEMORY[0x245CC9F60](v48, -1, -1);
      }

      v52 = *(v1 + 424);
      v53 = *(v1 + 408);
      v54 = *(v1 + 384);
      v55 = *(v1 + 320);

      v226(v52, v53);
      v56 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v57 = swift_allocError();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277CED2D8], v56);
      sub_2407F0D64();

      swift_willThrow();
      sub_24080F17C(v43, 1);
      v24(v54, v55);
      goto LABEL_9;
    }

    sub_2408D4920();
    v78 = sub_2408D4B10();
    v79 = sub_2408D4F20();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2407CF000, v78, v79, "BLE state: Completed success", v80, 2u);
      MEMORY[0x245CC9F60](v80, -1, -1);

      sub_24080F17C(v43, 0);
    }

    else
    {
    }

    v102 = *(v1 + 384);
    v103 = *(v1 + 320);
    v29(*(v1 + 432), *(v1 + 408));
    v104 = v102;
    v105 = v103;
    goto LABEL_27;
  }

  if (v39 != *MEMORY[0x277CEDA58])
  {
    if (v39 == *MEMORY[0x277CEDA50])
    {
      v81 = *(v1 + 368);
      v82 = *(v1 + 320);
      v83 = *(v1 + 328);
      v234(v81, *(v1 + 384), v82);
      (*(v83 + 96))(v81, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B0, &qword_2408D91A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2407D9440(*(v1 + 368), &qword_27E5079B0, &qword_2408D91A0);
        goto LABEL_36;
      }

      v130 = *(v1 + 368);
      v132 = *(v1 + 224);
      v131 = *(v1 + 232);
      v133 = *(v1 + 200);
      v134 = *(v1 + 208);
      v135 = *(v134 + 32);
      *(v1 + 600) = v135;
      *(v1 + 608) = (v134 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v135(v131, v130, v133);
      sub_2408D4910();
      v136 = *(v134 + 16);
      v136(v132, v131, v133);
      v137 = sub_2408D4B10();
      v138 = sub_2408D4F20();
      v139 = os_log_type_enabled(v137, v138);
      v140 = *(v1 + 456);
      v141 = *(v1 + 408);
      v142 = *(v1 + 224);
      if (v139)
      {
        v229 = v29;
        v233 = *(v1 + 408);
        v222 = *(v1 + 456);
        v143 = *(v1 + 208);
        v144 = *(v1 + 216);
        v145 = *(v1 + 200);
        v146 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v238[0] = v218;
        *v146 = 136315138;
        v136(v144, v142, v145);
        v147 = sub_2408D4D40();
        v148 = v138;
        v150 = v149;
        v151 = *(v143 + 8);
        v151(v142, v145);
        v152 = sub_2408CC504(v147, v150, v238);

        *(v146 + 4) = v152;
        _os_log_impl(&dword_2407CF000, v137, v148, "BLE state: Successfully paired and got final transport: %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v218);
        MEMORY[0x245CC9F60](v218, -1, -1);
        MEMORY[0x245CC9F60](v146, -1, -1);

        v229(v222, v233);
      }

      else
      {
        v201 = *(v1 + 200);
        v200 = *(v1 + 208);

        v151 = *(v200 + 8);
        v151(v142, v201);
        v29(v140, v141);
      }

      *(v1 + 616) = v151;
      v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v202 = swift_task_alloc();
      *(v1 + 624) = v202;
      *v202 = v1;
      v202[1] = sub_2408977C4;
      v178 = sub_24089D208;
    }

    else
    {
      if (v39 == *MEMORY[0x277CEDA48])
      {
        v106 = *(v1 + 360);
        v107 = *(v1 + 320);
        v108 = *(v1 + 328);
        v110 = *(v1 + 304);
        v109 = *(v1 + 312);
        v234(v106, *(v1 + 384), v107);
        (*(v108 + 96))(v106, v107);
        sub_24080F060(v106, v109, &qword_27E506EF8, &qword_2408D76B0);
        sub_2408D4910();
        sub_2407EEE04(v109, v110, &qword_27E506EF8, &qword_2408D76B0);
        v111 = sub_2408D4B10();
        v112 = sub_2408D4F10();
        v113 = os_log_type_enabled(v111, v112);
        v114 = *(v1 + 488);
        v115 = *(v1 + 408);
        v116 = *(v1 + 304);
        if (v113)
        {
          v221 = v24;
          v228 = v29;
          v117 = *(v1 + 296);
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v238[0] = v119;
          *v118 = 136315138;
          v232 = v114;
          sub_2407EEE04(v116, v117, &qword_27E506EF8, &qword_2408D76B0);
          v120 = sub_2408D4D40();
          v122 = v121;
          sub_2407D9440(v116, &qword_27E506EF8, &qword_2408D76B0);
          v123 = v120;
          v24 = v221;
          v124 = sub_2408CC504(v123, v122, v238);

          *(v118 + 4) = v124;
          _os_log_impl(&dword_2407CF000, v111, v112, "BLE state: Legacy setup finished with result: %s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v119);
          MEMORY[0x245CC9F60](v119, -1, -1);
          MEMORY[0x245CC9F60](v118, -1, -1);

          v228(v232, v115);
        }

        else
        {

          sub_2407D9440(v116, &qword_27E506EF8, &qword_2408D76B0);
          v29(v114, v115);
        }

        v196 = *(v1 + 384);
        v197 = *(v1 + 320);
        v198 = *(v1 + 312);
        type metadata accessor for ProximityTransportConnector.LegacySetupCompleted(0);
        sub_2408B4B40(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted, &unk_2408D70E4);
        swift_allocError();
        sub_2407EEE04(v198, v199, &qword_27E506EF8, &qword_2408D76B0);
        swift_willThrow();
        sub_2407D9440(v198, &qword_27E506EF8, &qword_2408D76B0);
        v24(v196, v197);
LABEL_9:

        v59 = *(v1 + 8);
LABEL_41:

        return v59();
      }

      if (v39 == *MEMORY[0x277CEDA28] || v39 == *MEMORY[0x277CEDA18] || v39 == *MEMORY[0x277CEDA60] || v39 == *MEMORY[0x277CEDA38])
      {
        v179 = *(v1 + 336);
        v180 = *(v1 + 320);
        v181 = *(v1 + 168);
        v24(*(v1 + 384), v180);
        sub_2408D4910();
        v234(v179, v181, v180);
        v182 = sub_2408D4B10();
        v183 = sub_2408D4F20();
        v184 = os_log_type_enabled(v182, v183);
        v185 = *(v1 + 440);
        v186 = *(v1 + 408);
        if (v184)
        {
          v212 = *(v1 + 408);
          v214 = *(v1 + 440);
          v187 = *(v1 + 392);
          v188 = *(v1 + 336);
          v224 = v24;
          v189 = *(v1 + 320);
          v190 = swift_slowAlloc();
          v231 = v29;
          v191 = swift_slowAlloc();
          v238[0] = v191;
          *v190 = 136315138;
          v234(v187, v188, v189);
          v192 = sub_2408D4D40();
          v194 = v193;
          v224(v188, v189);
          v195 = sub_2408CC504(v192, v194, v238);

          *(v190 + 4) = v195;
          _os_log_impl(&dword_2407CF000, v182, v183, "BLE state: Ignoring state: %s", v190, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v191);
          MEMORY[0x245CC9F60](v191, -1, -1);
          MEMORY[0x245CC9F60](v190, -1, -1);

          v231(v214, v212);
        }

        else
        {
          v203 = *(v1 + 336);
          v204 = *(v1 + 320);

          v24(v203, v204);
          v29(v185, v186);
        }

        goto LABEL_40;
      }

      if (v39 != *MEMORY[0x277CEDA30])
      {
        if (v39 == *MEMORY[0x277CEDA40])
        {
          sub_2408D4910();
          v205 = sub_2408D4B10();
          v206 = sub_2408D4F20();
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            *v207 = 0;
            _os_log_impl(&dword_2407CF000, v205, v206, "BLE state: Received a legacy setup started state update", v207, 2u);
            MEMORY[0x245CC9F60](v207, -1, -1);
          }

          v208 = *(v1 + 496);
          v209 = *(v1 + 408);
          v210 = *(v1 + 384);
          v211 = *(v1 + 320);

          v29(v208, v209);
          v104 = v210;
          v105 = v211;
LABEL_27:
          v24(v104, v105);
LABEL_40:
          v170 = *(v1 + 160);
          v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
          (*(*(v171 - 8) + 56))(v170, 1, 1, v171);

          v59 = *(v1 + 8);
          goto LABEL_41;
        }

        if (v39 != *MEMORY[0x277CEDA20])
        {
LABEL_36:
          v153 = *(v1 + 344);
          v154 = *(v1 + 320);
          v155 = *(v1 + 168);
          sub_2408D4910();
          v234(v153, v155, v154);
          v156 = sub_2408D4B10();
          v157 = sub_2408D4F20();
          v158 = os_log_type_enabled(v156, v157);
          v216 = *(v1 + 408);
          v219 = *(v1 + 464);
          if (v158)
          {
            v159 = *(v1 + 392);
            v223 = v24;
            v230 = v29;
            v160 = *(v1 + 344);
            v161 = *(v1 + 320);
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v238[0] = v163;
            *v162 = 136315138;
            v234(v159, v160, v161);
            v164 = sub_2408D4D40();
            v166 = v165;
            v223(v160, v161);
            v167 = sub_2408CC504(v164, v166, v238);

            *(v162 + 4) = v167;
            _os_log_impl(&dword_2407CF000, v156, v157, "BLE state Unhandled state: %s", v162, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v163);
            MEMORY[0x245CC9F60](v163, -1, -1);
            MEMORY[0x245CC9F60](v162, -1, -1);

            v230(v219, v216);
            v223(*(v1 + 384), *(v1 + 320));
          }

          else
          {
            v168 = *(v1 + 344);
            v169 = *(v1 + 320);

            v24(v168, v169);
            v29(v219, v216);
            v24(*(v1 + 384), *(v1 + 320));
          }

          goto LABEL_40;
        }
      }

      v24(*(v1 + 384), *(v1 + 320));
      sub_2408D4910();
      v172 = sub_2408D4B10();
      v173 = sub_2408D4F10();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_2407CF000, v172, v173, "Handling BLE connection invalidation", v174, 2u);
        MEMORY[0x245CC9F60](v174, -1, -1);
      }

      v175 = *(v1 + 448);
      v176 = *(v1 + 408);

      v29(v175, v176);
      v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v177 = swift_task_alloc();
      *(v1 + 640) = v177;
      *v177 = v1;
      v177[1] = sub_2408978F0;
      v178 = sub_24089D4FC;
    }

    v128 = v178;
    v129 = 0;
LABEL_59:

    return v237(v128, v129);
  }

  v60 = *(v1 + 376);
  v61 = *(v1 + 320);
  v62 = *(v1 + 328);
  v234(v60, *(v1 + 384), v61);
  (*(v62 + 96))(v60, v61);
  v63 = sub_2408D4800();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 88))(v60, v63);
  if (v65 == *MEMORY[0x277CEDD20])
  {
    v66 = *(v1 + 376);
    (*(v64 + 96))(v66, v63);
    v68 = *v66;
    v67 = *(v66 + 8);
    *(v1 + 520) = v67;
    v69 = *(v66 + 16);
    sub_2408D4910();

    v70 = sub_2408D4B10();
    v71 = sub_2408D4F20();

    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v1 + 480);
    v74 = *(v1 + 408);
    if (v72)
    {
      v235 = *(v1 + 480);
      v75 = v69;
      v76 = swift_slowAlloc();
      v227 = v29;
      v77 = swift_slowAlloc();
      v238[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_2408CC504(v68, v67, v238);
      *(v76 + 12) = 1024;
      *(v76 + 14) = v75;
      _os_log_impl(&dword_2407CF000, v70, v71, "BLE state:  Presenting pin code: %s of type: %d", v76, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x245CC9F60](v77, -1, -1);
      MEMORY[0x245CC9F60](v76, -1, -1);

      v227(v235, v74);
    }

    else
    {

      v29(v73, v74);
    }

    v125 = *(v1 + 272);

    sub_2408D4F70();

    v126 = swift_task_alloc();
    *(v1 + 544) = v126;
    v126[2] = v68;
    v126[3] = v67;
    v126[4] = v125;
    v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v127 = swift_task_alloc();
    *(v1 + 552) = v127;
    *v127 = v1;
    v127[1] = sub_24089755C;
    v128 = sub_2408B4258;
    v129 = v126;
    goto LABEL_59;
  }

  if (v65 != *MEMORY[0x277CEDD28])
  {
    (*(v64 + 8))(*(v1 + 376), v63);
    goto LABEL_36;
  }

  v84 = *(v1 + 376);
  (*(v64 + 96))(v84, v63);
  v85 = *v84;
  *(v1 + 528) = *(v84 + 3);
  *(v1 + 536) = *(v84 + 4);
  sub_2408D4F70();
  sub_2408D4910();
  v86 = sub_2408D4B10();
  v87 = sub_2408D4F20();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 67109120;
    *(v88 + 4) = v85;
    _os_log_impl(&dword_2407CF000, v86, v87, "BLE state:  Request pin code of type: %d", v88, 8u);
    MEMORY[0x245CC9F60](v88, -1, -1);
  }

  v89 = *(v1 + 472);
  v90 = *(v1 + 408);
  v91 = *(v1 + 280);
  v92 = *(v1 + 264);
  v93 = *(v1 + 240);
  v94 = *(v1 + 248);
  v95 = *(v1 + 184);

  v29(v89, v90);
  v96 = swift_task_alloc();
  *(v1 + 568) = v96;
  *(v96 + 16) = v91;
  sub_2407D91C4(v95, v1 + 56);
  (*(v94 + 16))(v92, v91, v93);
  v97 = (*(v94 + 80) + 56) & ~*(v94 + 80);
  v98 = swift_allocObject();
  *(v1 + 576) = v98;
  sub_2407D2554((v1 + 56), v98 + 16);
  (*(v94 + 32))(v98 + v97, v92, v93);
  v236 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v99 = swift_task_alloc();
  *(v1 + 584) = v99;
  *v99 = v1;
  v99[1] = sub_240897690;
  v100 = MEMORY[0x277CEDD30];

  return v236(v1 + 136, sub_2408B40A4, v96, &unk_2408D92E8, v98, v100);
}

uint64_t sub_24089755C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_2408B5324;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_2408B5338;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240897690()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_2408B530C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_2408B531C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408977C4()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_2408B5328;
  }

  else
  {
    v4 = sub_2408B5300;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408978F0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_2408B533C, v6, 0);
  }
}

uint64_t sub_240897BA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = v5;
  *(v6 + 168) = a2;
  *(v6 + 176) = a4;
  *(v6 + 154) = a3;
  *(v6 + 160) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v8 = sub_2408D40F0();
  *(v6 + 240) = v8;
  v9 = *(v8 - 8);
  *(v6 + 248) = v9;
  *(v6 + 256) = *(v9 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  *(v6 + 320) = v10;
  *(v6 + 328) = *(v10 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v11 = sub_2408D4B20();
  *(v6 + 408) = v11;
  *(v6 + 416) = *(v11 - 8);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240897F04, v5, 0);
}

uint64_t sub_240897F04(uint64_t a1)
{
  v239 = v1;
  v2 = *(v1 + 400);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 184);
  v6 = *(v1 + 168);
  sub_2408D4910();
  v7 = v2;
  v8 = *(v4 + 16);
  v8(v7, v6, v3);
  sub_2407D91C4(v5, v1 + 16);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  v234 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v225 = *(v1 + 504);
    v217 = *(v1 + 416);
    v220 = *(v1 + 408);
    v12 = *(v1 + 392);
    v11 = *(v1 + 400);
    v14 = *(v1 + 320);
    v13 = *(v1 + 328);
    v213 = *(v1 + 154);
    v15 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v238[0] = v215;
    *v15 = 136315650;
    v8(v12, v11, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2408CC504(v16, v18, v238);

    *(v1 + 153) = v213 & 1;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, v238);

    *(v15 + 14) = v23;
    v24 = v19;
    *(v15 + 22) = 2080;
    sub_2407D91C4(v1 + 16, v1 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v25 = sub_2408D4D40();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v28 = sub_2408CC504(v25, v27, v238);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_2407CF000, v9, v10, "Handling BLE state: %s, role: %s, base: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v215, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    v29 = *(v217 + 8);
    v29(v225, v220);
  }

  else
  {
    v30 = *(v1 + 504);
    v31 = *(v1 + 408);
    v32 = *(v1 + 416);
    v33 = *(v1 + 400);
    v34 = *(v1 + 320);
    v35 = *(v1 + 328);

    __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
    v24 = *(v35 + 8);
    v24(v33, v34);
    v29 = *(v32 + 8);
    v29(v30, v31);
  }

  *(v1 + 512) = v24;
  v36 = *(v1 + 384);
  v37 = *(v1 + 320);
  v38 = *(v1 + 328);
  v234(v36, *(v1 + 168), v37);
  v39 = (*(v38 + 88))(v36, v37);
  if (v39 == *MEMORY[0x277CEDA68])
  {
    v40 = *(v1 + 352);
    v41 = *(v1 + 320);
    v42 = *(v1 + 328);
    v234(v40, *(v1 + 384), v41);
    (*(v42 + 96))(v40, v41);
    v43 = *v40;
    if (*(v40 + 8) == 1)
    {
      v226 = v29;
      v44 = v43;
      sub_2408D4920();
      v45 = v43;
      v46 = sub_2408D4B10();
      v47 = sub_2408D4F30();
      sub_24080F17C(v43, 1);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v43;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_2407CF000, v46, v47, "BLE state: Completed result: %@", v48, 0xCu);
        sub_2407D9440(v49, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v49, -1, -1);
        MEMORY[0x245CC9F60](v48, -1, -1);
      }

      v52 = *(v1 + 424);
      v53 = *(v1 + 408);
      v54 = *(v1 + 384);
      v55 = *(v1 + 320);

      v226(v52, v53);
      v56 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
      v57 = swift_allocError();
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277CED2D8], v56);
      sub_2407F0D64();

      swift_willThrow();
      sub_24080F17C(v43, 1);
      v24(v54, v55);
      goto LABEL_9;
    }

    sub_2408D4920();
    v78 = sub_2408D4B10();
    v79 = sub_2408D4F20();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2407CF000, v78, v79, "BLE state: Completed success", v80, 2u);
      MEMORY[0x245CC9F60](v80, -1, -1);

      sub_24080F17C(v43, 0);
    }

    else
    {
    }

    v102 = *(v1 + 384);
    v103 = *(v1 + 320);
    v29(*(v1 + 432), *(v1 + 408));
    v104 = v102;
    v105 = v103;
    goto LABEL_27;
  }

  if (v39 != *MEMORY[0x277CEDA58])
  {
    if (v39 == *MEMORY[0x277CEDA50])
    {
      v81 = *(v1 + 368);
      v82 = *(v1 + 320);
      v83 = *(v1 + 328);
      v234(v81, *(v1 + 384), v82);
      (*(v83 + 96))(v81, v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B0, &qword_2408D91A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2407D9440(*(v1 + 368), &qword_27E5079B0, &qword_2408D91A0);
        goto LABEL_36;
      }

      v130 = *(v1 + 368);
      v132 = *(v1 + 224);
      v131 = *(v1 + 232);
      v133 = *(v1 + 200);
      v134 = *(v1 + 208);
      v135 = *(v134 + 32);
      *(v1 + 600) = v135;
      *(v1 + 608) = (v134 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v135(v131, v130, v133);
      sub_2408D4910();
      v136 = *(v134 + 16);
      v136(v132, v131, v133);
      v137 = sub_2408D4B10();
      v138 = sub_2408D4F20();
      v139 = os_log_type_enabled(v137, v138);
      v140 = *(v1 + 456);
      v141 = *(v1 + 408);
      v142 = *(v1 + 224);
      if (v139)
      {
        v229 = v29;
        v233 = *(v1 + 408);
        v222 = *(v1 + 456);
        v143 = *(v1 + 208);
        v144 = *(v1 + 216);
        v145 = *(v1 + 200);
        v146 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v238[0] = v218;
        *v146 = 136315138;
        v136(v144, v142, v145);
        v147 = sub_2408D4D40();
        v148 = v138;
        v150 = v149;
        v151 = *(v143 + 8);
        v151(v142, v145);
        v152 = sub_2408CC504(v147, v150, v238);

        *(v146 + 4) = v152;
        _os_log_impl(&dword_2407CF000, v137, v148, "BLE state: Successfully paired and got final transport: %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v218);
        MEMORY[0x245CC9F60](v218, -1, -1);
        MEMORY[0x245CC9F60](v146, -1, -1);

        v229(v222, v233);
      }

      else
      {
        v201 = *(v1 + 200);
        v200 = *(v1 + 208);

        v151 = *(v200 + 8);
        v151(v142, v201);
        v29(v140, v141);
      }

      *(v1 + 616) = v151;
      v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v202 = swift_task_alloc();
      *(v1 + 624) = v202;
      *v202 = v1;
      v202[1] = sub_24089A594;
      v178 = sub_24089D398;
    }

    else
    {
      if (v39 == *MEMORY[0x277CEDA48])
      {
        v106 = *(v1 + 360);
        v107 = *(v1 + 320);
        v108 = *(v1 + 328);
        v110 = *(v1 + 304);
        v109 = *(v1 + 312);
        v234(v106, *(v1 + 384), v107);
        (*(v108 + 96))(v106, v107);
        sub_24080F060(v106, v109, &qword_27E506EF8, &qword_2408D76B0);
        sub_2408D4910();
        sub_2407EEE04(v109, v110, &qword_27E506EF8, &qword_2408D76B0);
        v111 = sub_2408D4B10();
        v112 = sub_2408D4F10();
        v113 = os_log_type_enabled(v111, v112);
        v114 = *(v1 + 488);
        v115 = *(v1 + 408);
        v116 = *(v1 + 304);
        if (v113)
        {
          v221 = v24;
          v228 = v29;
          v117 = *(v1 + 296);
          v118 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v238[0] = v119;
          *v118 = 136315138;
          v232 = v114;
          sub_2407EEE04(v116, v117, &qword_27E506EF8, &qword_2408D76B0);
          v120 = sub_2408D4D40();
          v122 = v121;
          sub_2407D9440(v116, &qword_27E506EF8, &qword_2408D76B0);
          v123 = v120;
          v24 = v221;
          v124 = sub_2408CC504(v123, v122, v238);

          *(v118 + 4) = v124;
          _os_log_impl(&dword_2407CF000, v111, v112, "BLE state: Legacy setup finished with result: %s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v119);
          MEMORY[0x245CC9F60](v119, -1, -1);
          MEMORY[0x245CC9F60](v118, -1, -1);

          v228(v232, v115);
        }

        else
        {

          sub_2407D9440(v116, &qword_27E506EF8, &qword_2408D76B0);
          v29(v114, v115);
        }

        v196 = *(v1 + 384);
        v197 = *(v1 + 320);
        v198 = *(v1 + 312);
        type metadata accessor for ProximityTransportConnector.LegacySetupCompleted(0);
        sub_2408B4B40(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted, &unk_2408D70E4);
        swift_allocError();
        sub_2407EEE04(v198, v199, &qword_27E506EF8, &qword_2408D76B0);
        swift_willThrow();
        sub_2407D9440(v198, &qword_27E506EF8, &qword_2408D76B0);
        v24(v196, v197);
LABEL_9:

        v59 = *(v1 + 8);
LABEL_41:

        return v59();
      }

      if (v39 == *MEMORY[0x277CEDA28] || v39 == *MEMORY[0x277CEDA18] || v39 == *MEMORY[0x277CEDA60] || v39 == *MEMORY[0x277CEDA38])
      {
        v179 = *(v1 + 336);
        v180 = *(v1 + 320);
        v181 = *(v1 + 168);
        v24(*(v1 + 384), v180);
        sub_2408D4910();
        v234(v179, v181, v180);
        v182 = sub_2408D4B10();
        v183 = sub_2408D4F20();
        v184 = os_log_type_enabled(v182, v183);
        v185 = *(v1 + 440);
        v186 = *(v1 + 408);
        if (v184)
        {
          v212 = *(v1 + 408);
          v214 = *(v1 + 440);
          v187 = *(v1 + 392);
          v188 = *(v1 + 336);
          v224 = v24;
          v189 = *(v1 + 320);
          v190 = swift_slowAlloc();
          v231 = v29;
          v191 = swift_slowAlloc();
          v238[0] = v191;
          *v190 = 136315138;
          v234(v187, v188, v189);
          v192 = sub_2408D4D40();
          v194 = v193;
          v224(v188, v189);
          v195 = sub_2408CC504(v192, v194, v238);

          *(v190 + 4) = v195;
          _os_log_impl(&dword_2407CF000, v182, v183, "BLE state: Ignoring state: %s", v190, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v191);
          MEMORY[0x245CC9F60](v191, -1, -1);
          MEMORY[0x245CC9F60](v190, -1, -1);

          v231(v214, v212);
        }

        else
        {
          v203 = *(v1 + 336);
          v204 = *(v1 + 320);

          v24(v203, v204);
          v29(v185, v186);
        }

        goto LABEL_40;
      }

      if (v39 != *MEMORY[0x277CEDA30])
      {
        if (v39 == *MEMORY[0x277CEDA40])
        {
          sub_2408D4910();
          v205 = sub_2408D4B10();
          v206 = sub_2408D4F20();
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            *v207 = 0;
            _os_log_impl(&dword_2407CF000, v205, v206, "BLE state: Received a legacy setup started state update", v207, 2u);
            MEMORY[0x245CC9F60](v207, -1, -1);
          }

          v208 = *(v1 + 496);
          v209 = *(v1 + 408);
          v210 = *(v1 + 384);
          v211 = *(v1 + 320);

          v29(v208, v209);
          v104 = v210;
          v105 = v211;
LABEL_27:
          v24(v104, v105);
LABEL_40:
          v170 = *(v1 + 160);
          v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
          (*(*(v171 - 8) + 56))(v170, 1, 1, v171);

          v59 = *(v1 + 8);
          goto LABEL_41;
        }

        if (v39 != *MEMORY[0x277CEDA20])
        {
LABEL_36:
          v153 = *(v1 + 344);
          v154 = *(v1 + 320);
          v155 = *(v1 + 168);
          sub_2408D4910();
          v234(v153, v155, v154);
          v156 = sub_2408D4B10();
          v157 = sub_2408D4F20();
          v158 = os_log_type_enabled(v156, v157);
          v216 = *(v1 + 408);
          v219 = *(v1 + 464);
          if (v158)
          {
            v159 = *(v1 + 392);
            v223 = v24;
            v230 = v29;
            v160 = *(v1 + 344);
            v161 = *(v1 + 320);
            v162 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v238[0] = v163;
            *v162 = 136315138;
            v234(v159, v160, v161);
            v164 = sub_2408D4D40();
            v166 = v165;
            v223(v160, v161);
            v167 = sub_2408CC504(v164, v166, v238);

            *(v162 + 4) = v167;
            _os_log_impl(&dword_2407CF000, v156, v157, "BLE state Unhandled state: %s", v162, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v163);
            MEMORY[0x245CC9F60](v163, -1, -1);
            MEMORY[0x245CC9F60](v162, -1, -1);

            v230(v219, v216);
            v223(*(v1 + 384), *(v1 + 320));
          }

          else
          {
            v168 = *(v1 + 344);
            v169 = *(v1 + 320);

            v24(v168, v169);
            v29(v219, v216);
            v24(*(v1 + 384), *(v1 + 320));
          }

          goto LABEL_40;
        }
      }

      v24(*(v1 + 384), *(v1 + 320));
      sub_2408D4910();
      v172 = sub_2408D4B10();
      v173 = sub_2408D4F10();
      if (os_log_type_enabled(v172, v173))
      {
        v174 = swift_slowAlloc();
        *v174 = 0;
        _os_log_impl(&dword_2407CF000, v172, v173, "Handling BLE connection invalidation", v174, 2u);
        MEMORY[0x245CC9F60](v174, -1, -1);
      }

      v175 = *(v1 + 448);
      v176 = *(v1 + 408);

      v29(v175, v176);
      v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v177 = swift_task_alloc();
      *(v1 + 640) = v177;
      *v177 = v1;
      v177[1] = sub_24089AB54;
      v178 = sub_24089D6C4;
    }

    v128 = v178;
    v129 = 0;
LABEL_59:

    return v237(v128, v129);
  }

  v60 = *(v1 + 376);
  v61 = *(v1 + 320);
  v62 = *(v1 + 328);
  v234(v60, *(v1 + 384), v61);
  (*(v62 + 96))(v60, v61);
  v63 = sub_2408D4800();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 88))(v60, v63);
  if (v65 == *MEMORY[0x277CEDD20])
  {
    v66 = *(v1 + 376);
    (*(v64 + 96))(v66, v63);
    v68 = *v66;
    v67 = *(v66 + 8);
    *(v1 + 520) = v67;
    v69 = *(v66 + 16);
    sub_2408D4910();

    v70 = sub_2408D4B10();
    v71 = sub_2408D4F20();

    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v1 + 480);
    v74 = *(v1 + 408);
    if (v72)
    {
      v235 = *(v1 + 480);
      v75 = v69;
      v76 = swift_slowAlloc();
      v227 = v29;
      v77 = swift_slowAlloc();
      v238[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_2408CC504(v68, v67, v238);
      *(v76 + 12) = 1024;
      *(v76 + 14) = v75;
      _os_log_impl(&dword_2407CF000, v70, v71, "BLE state:  Presenting pin code: %s of type: %d", v76, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      MEMORY[0x245CC9F60](v77, -1, -1);
      MEMORY[0x245CC9F60](v76, -1, -1);

      v227(v235, v74);
    }

    else
    {

      v29(v73, v74);
    }

    v125 = *(v1 + 272);

    sub_2408D4F70();

    v126 = swift_task_alloc();
    *(v1 + 544) = v126;
    v126[2] = v68;
    v126[3] = v67;
    v126[4] = v125;
    v237 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v127 = swift_task_alloc();
    *(v1 + 552) = v127;
    *v127 = v1;
    v127[1] = sub_2408999D0;
    v128 = sub_2408B3564;
    v129 = v126;
    goto LABEL_59;
  }

  if (v65 != *MEMORY[0x277CEDD28])
  {
    (*(v64 + 8))(*(v1 + 376), v63);
    goto LABEL_36;
  }

  v84 = *(v1 + 376);
  (*(v64 + 96))(v84, v63);
  v85 = *v84;
  *(v1 + 528) = *(v84 + 3);
  *(v1 + 536) = *(v84 + 4);
  sub_2408D4F70();
  sub_2408D4910();
  v86 = sub_2408D4B10();
  v87 = sub_2408D4F20();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 67109120;
    *(v88 + 4) = v85;
    _os_log_impl(&dword_2407CF000, v86, v87, "BLE state:  Request pin code of type: %d", v88, 8u);
    MEMORY[0x245CC9F60](v88, -1, -1);
  }

  v89 = *(v1 + 472);
  v90 = *(v1 + 408);
  v91 = *(v1 + 280);
  v92 = *(v1 + 264);
  v93 = *(v1 + 240);
  v94 = *(v1 + 248);
  v95 = *(v1 + 184);

  v29(v89, v90);
  v96 = swift_task_alloc();
  *(v1 + 568) = v96;
  *(v96 + 16) = v91;
  sub_2407D91C4(v95, v1 + 56);
  (*(v94 + 16))(v92, v91, v93);
  v97 = (*(v94 + 80) + 56) & ~*(v94 + 80);
  v98 = swift_allocObject();
  *(v1 + 576) = v98;
  sub_2407D2554((v1 + 56), v98 + 16);
  (*(v94 + 32))(v98 + v97, v92, v93);
  v236 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v99 = swift_task_alloc();
  *(v1 + 584) = v99;
  *v99 = v1;
  v99[1] = sub_240899F88;
  v100 = MEMORY[0x277CEDD30];

  return v236(v1 + 136, sub_2408B3464, v96, &unk_2408D91B0, v98, v100);
}

uint64_t sub_2408999D0()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_240899D5C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_240899B04;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240899B04()
{
  v1 = v0[64];
  v2 = v0[48];
  v3 = v0[40];
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1(v2, v3);
  v4 = v0[20];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_240899D5C()
{
  v1 = v0[64];
  v2 = v0[48];
  v3 = v0[40];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[31];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_240899F88()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_24089A35C;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_24089A0BC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24089A0BC()
{
  v12 = *(v0 + 384);
  v13 = *(v0 + 512);
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  (*(v0 + 528))(v5, v6, v7);

  sub_2408B3554(v5, v6, v7);
  (*(v3 + 8))(v2, v4);
  v13(v12, v1);
  v8 = *(v0 + 160);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24089A35C()
{
  v1 = v0[64];
  v2 = v0[48];
  v3 = v0[40];
  v4 = v0[35];
  v5 = v0[30];
  v6 = v0[31];

  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24089A594()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_24089A940;
  }

  else
  {
    v4 = sub_24089A6C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24089A6C0()
{
  v1 = v0[75];
  v11 = v0[48];
  v12 = v0[64];
  v10 = v0[40];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[20];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  v7 = *(v6 + 48);
  sub_2407D91C4(v4, v5);
  v1(v5 + v7, v2, v3);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v12(v11, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24089A940()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  (*(v0 + 616))(*(v0 + 232), *(v0 + 200));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24089AB54()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 192);

    return MEMORY[0x2822009F8](sub_24089AE0C, v6, 0);
  }
}

uint64_t sub_24089AE0C()
{
  v1 = *(v0 + 160);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24089B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v27 = a2;
  v28 = a3;
  v31 = sub_2408D3FD0();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2408D35F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v26 = sub_2408D4090();
  v13 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2408D35B0();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2408D3500();
  (*(*(v19 - 8) + 56))(v18, 2, 6, v19);
  sub_2408D35D0();
  sub_2408D3610();
  (*(v7 + 104))(v10, *MEMORY[0x277CED350], v6);
  sub_2408D35E0();
  v20 = *(v7 + 8);
  v20(v10, v6);
  v20(v12, v6);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  v22 = v28;
  *v5 = v27;
  v5[1] = v22;
  v23 = sub_2408D40F0();
  (*(*(v23 - 8) + 16))(v5 + v21, v30, v23);
  (*(v29 + 104))(v5, *MEMORY[0x277CED6A0], v31);

  sub_2408D3F90();
  (*(v13 + 104))(v15, *MEMORY[0x277CED758], v26);
  v24 = sub_2408D3560();
  sub_2408D40B0();
  return v24(v32, 0);
}

uint64_t sub_24089B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v6 = sub_2408D3FD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2408D4090();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D42F0();
  MEMORY[0x28223BE20](v14);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  *v9 = a2;
  *(v9 + 1) = a3;
  v16 = sub_2408D40F0();
  (*(*(v16 - 8) + 16))(&v9[v15], v20, v16);
  (*(v7 + 104))(v9, *MEMORY[0x277CED6A0], v6);

  sub_2408D3F90();
  (*(v11 + 104))(v13, *MEMORY[0x277CED758], v10);
  v17 = sub_2408D42A0();
  sub_2408D40B0();
  return v17(v21, 0);
}

uint64_t sub_24089B67C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3FD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2408D4090();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2408D35B0();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2408D3500();
  (*(*(v14 - 8) + 56))(v13, 2, 6, v14);
  sub_2408D35D0();
  v15 = sub_2408D40F0();
  (*(*(v15 - 8) + 16))(v6, a2, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277CED698], v3);
  sub_2408D3F70();
  (*(v8 + 104))(v10, *MEMORY[0x277CED750], v7);
  v16 = sub_2408D3560();
  sub_2408D40B0();
  return v16(v18, 0);
}

uint64_t sub_24089B914(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3FD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2408D4090();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2408D42F0();
  MEMORY[0x28223BE20](v11);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v12 = sub_2408D40F0();
  (*(*(v12 - 8) + 16))(v6, a2, v12);
  (*(v4 + 104))(v6, *MEMORY[0x277CED698], v3);
  sub_2408D3F70();
  (*(v8 + 104))(v10, *MEMORY[0x277CED750], v7);
  v13 = sub_2408D42A0();
  sub_2408D40B0();
  return v13(v15, 0);
}

uint64_t sub_24089BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4B20();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D40F0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_2408D3FD0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_2408D4090();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_2408D4130();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_2408D3F80();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089BE28, 0, 0);
}

uint64_t sub_24089BE28(uint64_t a1)
{
  v83 = v1;
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v5 = *(v1 + 152);
  v4 = *(v1 + 160);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  sub_2408D3570();
  sub_2408D40A0();
  (*(v3 + 8))(v2, v4);
  if ((*(v7 + 88))(v5, v6) != *MEMORY[0x277CED750])
  {
    (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C8, &qword_2408D91C8);
    sub_2407D917C(&qword_27E5079D0, &qword_27E5079C8, &qword_2408D91C8, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277CED520], v43);
    swift_willThrow();
LABEL_6:

    v45 = *(v1 + 8);
    goto LABEL_13;
  }

  v9 = *(v1 + 192);
  v8 = *(v1 + 200);
  v10 = *(v1 + 184);
  v11 = *(v1 + 152);
  v12 = *(v1 + 128);
  v13 = *(v1 + 112);
  v14 = *(v1 + 120);
  (*(*(v1 + 144) + 96))(v11, *(v1 + 136));
  (*(v9 + 32))(v8, v11, v10);
  sub_2408D3F50();
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == *MEMORY[0x277CED6A8])
  {
    v16 = *(v1 + 128);
    v17 = *(v1 + 104);
    v19 = *(v1 + 88);
    v18 = *(v1 + 96);
    v20 = *(v1 + 72);
    v21 = *(v1 + 80);
    v22 = *(v1 + 40);
    (*(*(v1 + 120) + 96))(v16, *(v1 + 112));
    (*(v21 + 32))(v17, v16, v20);
    sub_2408D4920();
    v23 = *(v21 + 16);
    v23(v18, v22, v20);
    v23(v19, v17, v20);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v1 + 96);
    v81 = *(v1 + 88);
    v28 = *(v1 + 72);
    v29 = *(v1 + 80);
    v31 = *(v1 + 56);
    v30 = *(v1 + 64);
    v32 = *(v1 + 48);
    if (v26)
    {
      log = v24;
      v33 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82[0] = v79;
      *v33 = 136315394;
      sub_2408B4B40(&qword_27E5079E0, 255, MEMORY[0x277CED798], MEMORY[0x277CED7A0]);
      v80 = v30;
      v77 = v32;
      v34 = sub_2408D5220();
      v76 = v25;
      v36 = v35;
      v37 = *(v29 + 8);
      v37(v27, v28);
      v38 = sub_2408CC504(v34, v36, v82);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = sub_2408D5220();
      v41 = v40;
      v37(v81, v28);
      v42 = sub_2408CC504(v39, v41, v82);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2407CF000, log, v76, "Code type changed from: %s to %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v79, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);

      (*(v31 + 8))(v80, v77);
    }

    else
    {

      v37 = *(v29 + 8);
      v37(v81, v28);
      v37(v27, v28);
      (*(v31 + 8))(v30, v32);
    }

    v58 = *(v1 + 192);
    v57 = *(v1 + 200);
    v59 = *(v1 + 184);
    v60 = *(v1 + 104);
    v61 = *(v1 + 72);
    v62 = *(v1 + 16);
    v63 = sub_2408D40E0();
    v37(v60, v61);
    (*(v58 + 8))(v57, v59);
    *v62 = v63;
    *(v62 + 8) = 0;
    *(v62 + 16) = 1;
    v64 = *MEMORY[0x277CEDCB0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v65 - 8) + 104))(v62, v64, v65);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B0])
  {
    v47 = *(v1 + 120);
    v46 = *(v1 + 128);
    v48 = *(v1 + 112);
    v49 = *(v1 + 72);
    v50 = *(v1 + 80);
    v51 = *(v1 + 16);
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
    (*(v47 + 96))(v46, v48);
    v52 = *v46;
    v53 = *(v46 + 1);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
    *v51 = v52;
    *(v51 + 8) = v53;
    *(v51 + 16) = 0;
    v55 = *MEMORY[0x277CEDCB0];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v56 - 8) + 104))(v51, v55, v56);
    (*(v50 + 8))(&v46[v54], v49);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B8])
  {
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
LABEL_19:
    v68 = *(v1 + 192);
    v67 = *(v1 + 200);
    v69 = *(v1 + 184);
    __swift_project_boxed_opaque_existential_1(*(v1 + 32), *(*(v1 + 32) + 24));
    sub_2408D3CE0();
    sub_2408D4E30();
    sub_2408B4B40(&qword_27E5079E8, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_2408D4C80();
    swift_willThrow();
    (*(v68 + 8))(v67, v69);
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277CED690])
  {
    goto LABEL_19;
  }

  v71 = *(v1 + 120);
  v70 = *(v1 + 128);
  v72 = *(v1 + 112);
  v73 = *(v1 + 16);
  (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  v74 = *MEMORY[0x277CEDCA8];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
  (*(*(v75 - 8) + 104))(v73, v74, v75);
  (*(v71 + 8))(v70, v72);
LABEL_12:

  v45 = *(v1 + 8);
LABEL_13:

  return v45();
}

uint64_t sub_24089C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4B20();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2408D40F0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_2408D3FD0();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_2408D4090();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_2408D4130();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_2408D3F80();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089C96C, 0, 0);
}

uint64_t sub_24089C96C(uint64_t a1)
{
  v83 = v1;
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v5 = *(v1 + 152);
  v4 = *(v1 + 160);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  sub_2408D42B0();
  sub_2408D40A0();
  (*(v3 + 8))(v2, v4);
  if ((*(v7 + 88))(v5, v6) != *MEMORY[0x277CED750])
  {
    (*(*(v1 + 144) + 8))(*(v1 + 152), *(v1 + 136));
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C8, &qword_2408D91C8);
    sub_2407D917C(&qword_27E5079D0, &qword_27E5079C8, &qword_2408D91C8, MEMORY[0x277CED528]);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277CED520], v43);
    swift_willThrow();
LABEL_6:

    v45 = *(v1 + 8);
    goto LABEL_13;
  }

  v9 = *(v1 + 192);
  v8 = *(v1 + 200);
  v10 = *(v1 + 184);
  v11 = *(v1 + 152);
  v12 = *(v1 + 128);
  v13 = *(v1 + 112);
  v14 = *(v1 + 120);
  (*(*(v1 + 144) + 96))(v11, *(v1 + 136));
  (*(v9 + 32))(v8, v11, v10);
  sub_2408D3F50();
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == *MEMORY[0x277CED6A8])
  {
    v16 = *(v1 + 128);
    v17 = *(v1 + 104);
    v19 = *(v1 + 88);
    v18 = *(v1 + 96);
    v20 = *(v1 + 72);
    v21 = *(v1 + 80);
    v22 = *(v1 + 40);
    (*(*(v1 + 120) + 96))(v16, *(v1 + 112));
    (*(v21 + 32))(v17, v16, v20);
    sub_2408D4920();
    v23 = *(v21 + 16);
    v23(v18, v22, v20);
    v23(v19, v17, v20);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v1 + 96);
    v81 = *(v1 + 88);
    v28 = *(v1 + 72);
    v29 = *(v1 + 80);
    v31 = *(v1 + 56);
    v30 = *(v1 + 64);
    v32 = *(v1 + 48);
    if (v26)
    {
      log = v24;
      v33 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82[0] = v79;
      *v33 = 136315394;
      sub_2408B4B40(&qword_27E5079E0, 255, MEMORY[0x277CED798], MEMORY[0x277CED7A0]);
      v80 = v30;
      v77 = v32;
      v34 = sub_2408D5220();
      v76 = v25;
      v36 = v35;
      v37 = *(v29 + 8);
      v37(v27, v28);
      v38 = sub_2408CC504(v34, v36, v82);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = sub_2408D5220();
      v41 = v40;
      v37(v81, v28);
      v42 = sub_2408CC504(v39, v41, v82);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2407CF000, log, v76, "Code type changed from: %s to %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v79, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);

      (*(v31 + 8))(v80, v77);
    }

    else
    {

      v37 = *(v29 + 8);
      v37(v81, v28);
      v37(v27, v28);
      (*(v31 + 8))(v30, v32);
    }

    v58 = *(v1 + 192);
    v57 = *(v1 + 200);
    v59 = *(v1 + 184);
    v60 = *(v1 + 104);
    v61 = *(v1 + 72);
    v62 = *(v1 + 16);
    v63 = sub_2408D40E0();
    v37(v60, v61);
    (*(v58 + 8))(v57, v59);
    *v62 = v63;
    *(v62 + 8) = 0;
    *(v62 + 16) = 1;
    v64 = *MEMORY[0x277CEDCB0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v65 - 8) + 104))(v62, v64, v65);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B0])
  {
    v47 = *(v1 + 120);
    v46 = *(v1 + 128);
    v48 = *(v1 + 112);
    v49 = *(v1 + 72);
    v50 = *(v1 + 80);
    v51 = *(v1 + 16);
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
    (*(v47 + 96))(v46, v48);
    v52 = *v46;
    v53 = *(v46 + 1);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
    *v51 = v52;
    *(v51 + 8) = v53;
    *(v51 + 16) = 0;
    v55 = *MEMORY[0x277CEDCB0];
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v56 - 8) + 104))(v51, v55, v56);
    (*(v50 + 8))(&v46[v54], v49);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B8])
  {
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
LABEL_19:
    v68 = *(v1 + 192);
    v67 = *(v1 + 200);
    v69 = *(v1 + 184);
    __swift_project_boxed_opaque_existential_1(*(v1 + 32), *(*(v1 + 32) + 24));
    sub_2408D3CE0();
    sub_2408D4E30();
    sub_2408B4B40(&qword_27E5079E8, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_2408D4C80();
    swift_willThrow();
    (*(v68 + 8))(v67, v69);
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277CED690])
  {
    goto LABEL_19;
  }

  v71 = *(v1 + 120);
  v70 = *(v1 + 128);
  v72 = *(v1 + 112);
  v73 = *(v1 + 16);
  (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  v74 = *MEMORY[0x277CEDCA8];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
  (*(*(v75 - 8) + 104))(v73, v74, v75);
  (*(v71 + 8))(v70, v72);
LABEL_12:

  v45 = *(v1 + 8);
LABEL_13:

  return v45();
}

uint64_t sub_24089D208()
{
  v0 = sub_2408D4090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2408D35B0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2408D3500();
  (*(*(v7 - 8) + 56))(v6, 2, 6, v7);
  sub_2408D35D0();
  (*(v1 + 104))(v3, *MEMORY[0x277CED760], v0);
  v8 = sub_2408D3560();
  sub_2408D40B0();
  return v8(v10, 0);
}

uint64_t sub_24089D398()
{
  v0 = sub_2408D4090();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_2408D42F0();
  MEMORY[0x28223BE20](v4);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  (*(v1 + 104))(v3, *MEMORY[0x277CED760], v0);
  v5 = sub_2408D42A0();
  sub_2408D40B0();
  return v5(v7, 0);
}

uint64_t sub_24089D4FC()
{
  v0 = sub_2408D35B0();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2408D4130();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D3570();
  v7 = sub_2408B5344();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *MEMORY[0x277CED2A0];
    v10 = sub_2408D3500();
    v11 = *(v10 - 8);
    (*(v11 + 104))(v2, v9, v10);
    (*(v11 + 56))(v2, 0, 6, v10);
    return sub_2408D35D0();
  }

  return result;
}

uint64_t sub_24089D6C4()
{
  v0 = sub_2408D42F0();
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2408D4130();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D42B0();
  v7 = sub_2408B5344();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    *v2 = xmmword_2408D8E50;
    *(v2 + 3) = 0;
    *(v2 + 4) = 0;
    *(v2 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    return sub_2408D4310();
  }

  return result;
}

uint64_t sub_24089D828(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D35F0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_2408D3630();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[10] = v5;
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v2;
  v6[1] = sub_24089D9A8;

  return v8(v5);
}

uint64_t sub_24089D9A8()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_24089DAB8, v1, 0);
}

uint64_t sub_24089DAB8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[4];
  sub_2408D3610();
  (*(v7 + 104))(v6, *MEMORY[0x277CED350], v8);
  v9 = sub_2408D35E0();
  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  (*(v3 + 8))(v2, v4);
  v11 = swift_task_alloc();
  v1[12] = v11;
  *(v11 + 16) = v9 & 1;
  v14 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v12 = swift_task_alloc();
  v1[13] = v12;
  *v12 = v1;
  v12[1] = sub_24089DC40;

  return v14(sub_2408B4B88, v11);
}

uint64_t sub_24089DC40()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x2822009F8](sub_24089DDAC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_24089DDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24089DE38(uint64_t a1, uint64_t a2)
{
  v2 = sub_2408D3FD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2408D4090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2408D35B0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2408D3500();
  (*(*(v13 - 8) + 56))(v12, 2, 6, v13);
  sub_2408D35D0();
  (*(v3 + 104))(v5, *MEMORY[0x277CED690], v2);
  sub_2408D3F90();
  (*(v7 + 104))(v9, *MEMORY[0x277CED758], v6);
  v14 = sub_2408D3560();
  sub_2408D40B0();
  return v14(v16, 0);
}

uint64_t sub_24089E08C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2408D3FD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2408D4090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2408D42F0();
  MEMORY[0x28223BE20](v10);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  (*(v3 + 104))(v5, *MEMORY[0x277CED690], v2);
  sub_2408D3F90();
  (*(v7 + 104))(v9, *MEMORY[0x277CED758], v6);
  v11 = sub_2408D42A0();
  sub_2408D40B0();
  return v11(v13, 0);
}

uint64_t sub_24089E2B4()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E5078C0);
  __swift_project_value_buffer(v0, qword_27E5078C0);
  return sub_2408D48F0();
}

uint64_t sub_24089E300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E50, &unk_2408D6ED0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
  (*(v1 + 104))(v3, *MEMORY[0x277CED808], v0);
  result = sub_2408D41F0();
  qword_27E5078D8 = result;
  return result;
}

uint64_t sub_24089E3F8()
{
  result = sub_2408D4A10();
  qword_28130F620 = result;
  *algn_28130F628 = v1;
  return result;
}

uint64_t sub_24089E41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = sub_2408D47A0();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A48, &qword_2408D9350);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_2408D4B20();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089E5C8, 0, 0);
}

uint64_t sub_24089E5C8(uint64_t a1)
{
  v42 = v1;
  v2 = v1[14];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[3];
  sub_2408D4900();
  v6 = *(v4 + 16);
  v1[20] = v6;
  v1[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v40 = v6;
  v6(v2, v5, v3);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();

  if (os_log_type_enabled(v7, v8))
  {
    v37 = v1[16];
    v38 = v1[15];
    v39 = v1[19];
    v9 = v1[13];
    v34 = v1[14];
    v10 = v1[10];
    v11 = v1[11];
    v35 = v8;
    v12 = v1[4];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v13 = 136315394;
    v1[2] = v12;
    sub_2408D4B70();

    v14 = sub_2408D4D40();
    v16 = sub_2408CC504(v14, v15, &v41);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v40(v9, v34, v10);
    v17 = sub_2408D4D40();
    v19 = v18;
    v20 = *(v11 + 8);
    v20(v34, v10);
    v21 = sub_2408CC504(v17, v19, &v41);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2407CF000, v7, v35, "Sending coordinated model update to session (%s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v36, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);

    v22 = *(v37 + 8);
    v22(v39, v38);
  }

  else
  {
    v23 = v1[19];
    v24 = v1[15];
    v25 = v1[16];
    v26 = v1[14];
    v27 = v1[10];
    v28 = v1[11];

    v20 = *(v28 + 8);
    v20(v26, v27);
    v22 = *(v25 + 8);
    v22(v23, v24);
  }

  v1[22] = v20;
  v1[23] = v22;
  v40(v1[8], v1[3], v1[10]);
  swift_storeEnumTagMultiPayload();
  v29 = swift_task_alloc();
  v1[24] = v29;
  v30 = MEMORY[0x277CEDCF8];
  sub_2408B4B40(&qword_27E507448, 255, MEMORY[0x277CEDCF8], MEMORY[0x277CEDD00]);
  sub_2408B4B40(&qword_27E507438, 255, v30, MEMORY[0x277CEDD08]);
  *v29 = v1;
  v29[1] = sub_24089E97C;
  v32 = v1[8];
  v31 = v1[9];

  return MEMORY[0x282140020](v31, v32);
}

uint64_t sub_24089E97C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_2408B4AE0(*(v2 + 64), MEMORY[0x277CEDCF8]);
  if (v0)
  {
    v3 = sub_24089F014;
  }

  else
  {
    v3 = sub_24089EAC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24089EAC4()
{
  v42 = v0;
  v1 = v0[7];
  sub_2408B3C58(v0[9], v1, MEMORY[0x277CEDCF8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2408B4AE0(v1, MEMORY[0x277CEDCF8]);
  if (EnumCaseMultiPayload == 7)
  {
    v3 = v0[20];
    v4 = v0[12];
    v5 = v0[10];
    v6 = v0[3];
    sub_2408D4900();
    v3(v4, v6, v5);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[22];
    v11 = v0[12];
    v12 = v0[10];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      v14 = sub_2408D3CA0() & 1;
      v10(v11, v12);
      *(v13 + 4) = v14;
      _os_log_impl(&dword_2407CF000, v7, v8, "Sent model update and received receipt back (expectsResponse: %{BOOL}d)", v13, 8u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    else
    {
      v10(v0[12], v0[10]);
    }

    v30 = v0[23];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[9];

    v30(v31, v32);
    sub_2408B4AE0(v33, MEMORY[0x277CEDCF8]);

    v34 = v0[1];
  }

  else
  {
    v15 = v0[9];
    v16 = v0[6];
    sub_2408D4900();
    sub_2408B3C58(v15, v16, MEMORY[0x277CEDCF8]);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F30();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[23];
    v21 = v0[17];
    v22 = v0[15];
    v23 = v0[6];
    if (v19)
    {
      v40 = v0[23];
      v24 = swift_slowAlloc();
      v39 = v21;
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      v26 = sub_2408D4790();
      v28 = v27;
      sub_2408B4AE0(v23, MEMORY[0x277CEDCF8]);
      v29 = sub_2408CC504(v26, v28, &v41);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2407CF000, v17, v18, "Failed to send model update via session, got unexpected response back: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x245CC9F60](v25, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);

      v40(v39, v22);
    }

    else
    {

      sub_2408B4AE0(v23, MEMORY[0x277CEDCF8]);
      v20(v21, v22);
    }

    v35 = v0[9];
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A50, &qword_2408D9358);
    sub_2407D917C(&qword_27E507A58, &qword_27E507A50, &qword_2408D9358, MEMORY[0x277CED528]);
    swift_allocError();
    *v37 = 0xD000000000000031;
    v37[1] = 0x80000002408DAEE0;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277CED518], v36);
    swift_willThrow();
    sub_2408B4AE0(v35, MEMORY[0x277CEDCF8]);

    v34 = v0[1];
  }

  return v34();
}

uint64_t sub_24089F014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24089F0FC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_2408D4B20();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A20, &qword_2408D92A0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_2408D4220();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = sub_2408D4350();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_2408D3490();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_2408D47A0();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089F3E0, 0, 0);
}

uint64_t sub_24089F3E0()
{
  v99 = v0;
  if (qword_27E506958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 120);
  *(v0 + 328) = __swift_project_value_buffer(*(v0 + 136), qword_27E5078C0);
  sub_2408B3C58(v2, v1, MEMORY[0x277CEDCF8]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 320);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v98[0] = v8;
    *v7 = 136315138;
    v9 = sub_2408D4790();
    v11 = v10;
    sub_2408B4AE0(v6, MEMORY[0x277CEDCF8]);
    v12 = sub_2408CC504(v9, v11, v98);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received age migration message %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v6, MEMORY[0x277CEDCF8]);
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v15 = *(v0 + 264);
  (*(v14 + 104))(v13, *MEMORY[0x277CED1F0], v15);
  v16 = sub_2408D3480();
  (*(v14 + 8))(v13, v15);
  if ((v16 & 1) == 0)
  {
    sub_2408D4930();
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F30();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2407CF000, v30, v31, "Not allowing mach age migration service calls, disabled", v32, 2u);
      MEMORY[0x245CC9F60](v32, -1, -1);
    }

    v34 = *(v0 + 144);
    v33 = *(v0 + 152);
    v35 = *(v0 + 136);

    (*(v34 + 8))(v33, v35);
    sub_2408B3CC0();
    v36 = swift_allocError();
    swift_willThrow();
    v37 = *(v0 + 288);
    v38 = *(v0 + 296);
    v39 = *(v0 + 112);
    sub_2408D4440();

    v40 = *(v0 + 16);
    v41 = *(v0 + 32);
    *(v39 + 32) = *(v0 + 48);
    *v39 = v40;
    *(v39 + 16) = v41;
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v39, 0, 1, v37);
    goto LABEL_42;
  }

  sub_2408B3C58(*(v0 + 120), *(v0 + 312), MEMORY[0x277CEDCF8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_31;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 312), *(v0 + 208));
      v42 = sub_2408D4B10();
      v43 = sub_2408D4F10();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2407CF000, v42, v43, "Forwarding anisette request to AgeMigrationService", v44, 2u);
        MEMORY[0x245CC9F60](v44, -1, -1);
      }

      v45 = swift_task_alloc();
      *(v0 + 360) = v45;
      *v45 = v0;
      v45[1] = sub_2408A0278;
      v46 = *(v0 + 224);
      v47 = *(v0 + 112);

      return sub_2408A1C1C(v47, v46);
    }

    else
    {
      v58 = *(v0 + 248);
      v57 = *(v0 + 256);
      v59 = *(v0 + 232);
      v60 = *(v0 + 240);
      (*(v60 + 32))(v57, *(v0 + 312), v59);
      (*(v60 + 16))(v58, v57, v59);
      v61 = sub_2408D4B10();
      v62 = sub_2408D4F10();
      v63 = os_log_type_enabled(v61, v62);
      v65 = *(v0 + 240);
      v64 = *(v0 + 248);
      v66 = *(v0 + 232);
      if (v63)
      {
        v67 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98[0] = v96;
        *v67 = 136315138;
        sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960], MEMORY[0x277CED970]);
        v68 = sub_2408D5220();
        v70 = v69;
        v71 = *(v65 + 8);
        v71(v64, v66);
        v72 = sub_2408CC504(v68, v70, v98);

        *(v67 + 4) = v72;
        _os_log_impl(&dword_2407CF000, v61, v62, "Migrating using model %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        MEMORY[0x245CC9F60](v96, -1, -1);
        MEMORY[0x245CC9F60](v67, -1, -1);
      }

      else
      {

        v71 = *(v65 + 8);
        v71(v64, v66);
      }

      *(v0 + 336) = v71;
      v88 = swift_task_alloc();
      *(v0 + 344) = v88;
      *v88 = v0;
      v88[1] = sub_2408A0004;
      v89 = *(v0 + 256);

      return sub_2408A0B3C(v0 + 56, v89);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2408B4AE0(*(v0 + 312), MEMORY[0x277CEDCF8]);
      sub_2408D4930();
      v24 = sub_2408D4B10();
      v49 = sub_2408D4F30();
      if (os_log_type_enabled(v24, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_2407CF000, v24, v49, "Receiving a report is unexpected.", v50, 2u);
        MEMORY[0x245CC9F60](v50, -1, -1);
      }

      v51 = *(v0 + 288);
      v52 = *(v0 + 296);
      v53 = *(v0 + 176);
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v18 = *(v0 + 312);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        sub_2408D4930();
        sub_2408B3C10(v19, v20, v21, v22, v23);
        v24 = sub_2408D4B10();
        v25 = sub_2408D4F30();
        sub_2408B2DE8(v19, v20, v21, v22, v23);
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412290;
          sub_2408B2C28();
          swift_allocError();
          *v28 = v19;
          v28[1] = v20;
          v28[2] = v21;
          v28[3] = v22;
          v28[4] = v23;
          v29 = _swift_stdlib_bridgeErrorToNSError();
          *(v26 + 4) = v29;
          *v27 = v29;
          _os_log_impl(&dword_2407CF000, v24, v25, "Received error message: %@", v26, 0xCu);
          sub_2407D9440(v27, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v27, -1, -1);
          MEMORY[0x245CC9F60](v26, -1, -1);
        }

        else
        {
          sub_2408B2DE8(v19, v20, v21, v22, v23);
        }

        v51 = *(v0 + 288);
        v52 = *(v0 + 296);
        v53 = *(v0 + 168);
LABEL_39:
        v90 = *(v0 + 136);
        v91 = *(v0 + 144);
        v92 = *(v0 + 112);

        (*(v91 + 8))(v53, v90);
        (*(v52 + 56))(v92, 1, 1, v51);
LABEL_42:

        v94 = *(v0 + 8);

        return v94();
      }

LABEL_31:
      v73 = *(v0 + 304);
      v74 = *(v0 + 120);
      sub_2408D4930();
      sub_2408B3C58(v74, v73, MEMORY[0x277CEDCF8]);
      v75 = sub_2408D4B10();
      v76 = sub_2408D4F30();
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 304);
      v79 = *(v0 + 160);
      v81 = *(v0 + 136);
      v80 = *(v0 + 144);
      if (v77)
      {
        v97 = *(v0 + 160);
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v98[0] = v83;
        *v82 = 136315138;
        v84 = sub_2408D4790();
        v86 = v85;
        sub_2408B4AE0(v78, MEMORY[0x277CEDCF8]);
        v87 = sub_2408CC504(v84, v86, v98);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_2407CF000, v75, v76, "Received unknown message %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x245CC9F60](v83, -1, -1);
        MEMORY[0x245CC9F60](v82, -1, -1);

        (*(v80 + 8))(v97, v81);
      }

      else
      {

        sub_2408B4AE0(v78, MEMORY[0x277CEDCF8]);
        (*(v80 + 8))(v79, v81);
      }

      v93 = *(v0 + 312);
      (*(*(v0 + 296) + 56))(*(v0 + 112), 1, 1, *(v0 + 288));
      sub_2408B4AE0(v93, MEMORY[0x277CEDCF8]);
      goto LABEL_42;
    }

    v54 = *(v0 + 128);
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 312), *(v0 + 184));
    *(v0 + 376) = *(v54 + 64);
    v95 = (*MEMORY[0x277CED878] + MEMORY[0x277CED878]);

    v55 = swift_task_alloc();
    *(v0 + 384) = v55;
    *v55 = v0;
    v55[1] = sub_2408A04D4;
    v56 = *(v0 + 200);

    return v95(v56);
  }
}

uint64_t sub_2408A0004()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_2408A0858;
  }

  else
  {
    v2 = sub_2408A0118;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408A0118()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 112);
  (*(v0 + 336))(*(v0 + 256), *(v0 + 232));
  v4 = *(v0 + 56);
  v5 = *(v0 + 72);
  *(v3 + 32) = *(v0 + 88);
  *v3 = v4;
  *(v3 + 16) = v5;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2408A0278()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2408A09CC;
  }

  else
  {
    v2 = sub_2408A038C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408A038C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[14];
  (*(v0[27] + 8))(v0[28], v0[26]);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A04D4(char a1)
{
  v2 = *v1;
  *(v2 + 104) = a1;
  *(v2 + 96) = v1;

  return MEMORY[0x2822009F8](sub_2408A05F4, 0, 0);
}

uint64_t sub_2408A05F4(uint64_t a1)
{
  v21 = v1;
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 104);
    v6 = *(v1 + 192);
    v5 = *(v1 + 200);
    v7 = *(v1 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = 0x6465747065636361;
    }

    else
    {
      v10 = 0x64657463656A6572;
    }

    v11 = sub_2408CC504(v10, 0xE800000000000000, &v20);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v2, v3, "Model update was %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = *(v1 + 192);
    v12 = *(v1 + 200);
    v14 = *(v1 + 184);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v1 + 288);
  v16 = *(v1 + 296);
  v17 = *(v1 + 112);
  swift_storeEnumTagMultiPayload();
  (*(v16 + 56))(v17, 0, 1, v15);

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2408A0858()
{
  (*(v0 + 336))(*(v0 + 256), *(v0 + 232));
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 112);
  sub_2408D4440();

  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v4 + 32) = *(v0 + 48);
  *v4 = v5;
  *(v4 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v4, 0, 1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408A09CC()
{
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 112);
  sub_2408D4440();

  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v4 + 32) = *(v0 + 48);
  *v4 = v5;
  *(v4 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v4, 0, 1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408A0B3C(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v3[46] = swift_task_alloc();
  sub_2408D4260();
  v3[47] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v5 = sub_2408D4350();
  v3[52] = v5;
  v3[53] = *(v5 - 8);
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A0CD8, 0, 0);
}

uint64_t sub_2408A0CD8()
{
  v23 = v0;
  if (qword_27E506958 != -1)
  {
    swift_once();
  }

  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[44];
  v5 = sub_2408D4B20();
  v0[55] = __swift_project_value_buffer(v5, qword_27E5078C0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960], MEMORY[0x277CED970]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Received migrate request with model %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[56] = *(v0[45] + 64);
  v21 = (*MEMORY[0x277CED868] + MEMORY[0x277CED868]);

  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = sub_2408A0F7C;
  v19 = v0[44];

  return v21(v19);
}

uint64_t sub_2408A0F7C()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_2408A19C8;
  }

  else
  {

    v2 = sub_2408A1098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_2408A1098()
{
  if (qword_27E506960 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v7 = qword_27E5078D8;
  type metadata accessor for ProximityTransportConnector();
  v8 = swift_allocObject();
  v0[59] = v8;

  swift_defaultActor_initialize();
  *(v8 + 152) = 0;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 112) = v7;
  sub_2408B4B40(&qword_27E506EA0, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6F70);
  sub_2408D4280();
  sub_2408D3F40();
  v31 = *(v3 + 16);
  v31(v5, v1, v2);
  v9 = *(v3 + 56);
  v0[60] = v9;
  v0[61] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30 = v9;
  v9(v5, 0, 1, v2);
  swift_beginAccess();
  sub_2408C70EC(v5, v4);
  swift_endAccess();
  v10 = *(v6 + 64);
  v11 = objc_opt_self();
  v29 = v10;

  v28 = [v11 sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v13 = result;
    v14 = v0[50];
    v15 = v0[48];
    v26 = v0[47];
    v16 = v0[45];
    v27 = v0[46];
    v17 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    v19 = swift_allocObject();
    v0[62] = v19;

    swift_defaultActor_initialize();
    v20 = *(*v19 + 144);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
    (*(*(v21 - 8) + 56))(&v19[v20], 1, 1, v21);
    *&v19[*(*v19 + 152)] = 0;
    *(v19 + 14) = v29;
    *(v19 + 15) = v28;
    *(v19 + 16) = v13;
    *(v19 + 17) = v8;
    *(v19 + 18) = v17;
    v0[10] = v18;
    v0[11] = sub_2407D917C(&qword_27E507900, &qword_27E5078F8, &unk_2408D9040, &unk_2408D9970);
    v0[7] = v19;
    swift_beginAccess();

    sub_2408B3974((v0 + 7), v16 + 72, &qword_27E5078E8, &qword_2408D9028);
    swift_endAccess();
    sub_2407D917C(&qword_27E507908, &qword_27E5078F8, &unk_2408D9040, &unk_2408D9930);
    sub_2408D4280();
    sub_2408D3F40();
    v31(v27, v14, v15);
    v30(v27, 0, 1, v15);
    swift_beginAccess();
    sub_2408C70EC(v27, v26);
    swift_endAccess();
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2407CF000, v22, v23, "Beginning migration", v24, 2u);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    v25 = swift_task_alloc();
    v0[63] = v25;
    *v25 = v0;
    v25[1] = sub_2408A15EC;

    return sub_2408A2B10((v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2408A15EC()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_2408A1A6C;
  }

  else
  {
    v2 = sub_2408A1700;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408A1700()
{
  v23 = v0;
  sub_2408B2C7C(v0 + 16, v0 + 96);
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();
  sub_2408B2CD8(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136315138;
    sub_2408B2C7C(v0 + 16, v0 + 136);
    v5 = sub_2408D4430();
    v7 = v6;
    sub_2408B2CD8(v0 + 16);
    v8 = sub_2408CC504(v5, v7, &v22);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Received migration report %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x245CC9F60](v4, -1, -1);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  v9 = *(v0 + 480);
  v10 = *(v0 + 400);
  v20 = *(v0 + 408);
  v12 = *(v0 + 384);
  v11 = *(v0 + 392);
  v13 = *(v0 + 368);
  v14 = *(v0 + 376);
  v21 = *(v0 + 344);
  sub_2408D3F40();
  v9(v13, 1, 1, v12);
  swift_beginAccess();
  sub_2408C70EC(v13, v14);
  swift_endAccess();

  v15 = *(v11 + 8);
  v15(v10, v12);
  sub_2408D3F40();
  v9(v13, 1, 1, v12);
  swift_beginAccess();
  sub_2408C70EC(v13, v14);
  swift_endAccess();

  v15(v20, v12);
  v16 = *(v0 + 16);
  v17 = *(v0 + 32);
  *(v21 + 32) = *(v0 + 48);
  *v21 = v16;
  *(v21 + 16) = v17;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2408A19C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A1A6C()
{
  v1 = v0[60];
  v2 = v0[50];
  v10 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  sub_2408D3F40();
  v1(v6, 1, 1, v3);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v7 = *(v4 + 8);
  v7(v2, v3);
  sub_2408D3F40();
  v1(v6, 1, 1, v3);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v7(v10, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408A1C1C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2408A1C40, 0, 0);
}

uint64_t sub_2408A1C40()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_2407EEE04(v1 + 72, v0 + 56, &qword_27E5078E8, &qword_2408D9028);
  if (*(v0 + 80))
  {
    sub_2407D2554((v0 + 56), v0 + 16);
    if (qword_27E506958 != -1)
    {
      swift_once();
    }

    v2 = sub_2408D4B20();
    __swift_project_value_buffer(v2, qword_27E5078C0);
    v3 = sub_2408D4B10();
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Performing anisette request", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v18 = (*(v7 + 24) + **(v7 + 24));
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_2408A1F9C;
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);

    return v18(v9, v10, v6, v7);
  }

  else
  {
    sub_2407D9440(v0 + 56, &qword_27E5078E8, &qword_2408D9028);
    if (qword_27E506958 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E5078C0);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F40();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "We should only be performing an anisette request as part of migration, which should have established the AgeMigrationService", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    sub_2408B2C28();
    swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0;
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2408A1F9C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2408A2114;
  }

  else
  {
    v2 = sub_2408A20B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2408A20B0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A2114()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A2178()
{

  sub_2407D9440(v0 + 72, &qword_27E5078E8, &qword_2408D9028);
  return v0;
}

uint64_t sub_2408A21E0()
{
  sub_2408A2178();

  return swift_deallocClassInstance();
}

double sub_2408A2284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2408D4C40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = *v2;
  v12 = sub_2408D4E60();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v6 + 32))(v14 + v13, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;

  sub_24083AB60(0, 0, v10, &unk_2408D9020, v14);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_2408A2488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_2408C4014(a1, a2, WitnessTable);
}

uint64_t sub_2408A255C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_2408B4B40(&qword_27E5078E0, a2, type metadata accessor for MachAgeMigrationService, &unk_2408D8F70);
  result = sub_2408B4B40(&qword_27E506F88, v3, type metadata accessor for MachAgeMigrationService, &unk_2408D8FCC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2408A25E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v11 = sub_2408D4B20();
  __swift_project_value_buffer(v11, qword_27E507CB8);
  v12 = a1;
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F10();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v15 = 136315394;
    v16 = sub_2408D53B0();
    v29 = v13;
    v18 = a1;
    v19 = v4;
    v20 = sub_2408CC504(v16, v17, v33);

    *(v15 + 4) = v20;
    v4 = v19;
    a1 = v18;
    *(v15 + 12) = 2112;
    v21 = v18;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    v13 = v29;
    v23 = v30;
    *v30 = v22;
    _os_log_impl(&dword_2407CF000, v13, v14, "%s handling isolated cancellation with error: %@", v15, 0x16u);
    sub_2407D9440(v23, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v23, -1, -1);
    v24 = v31;
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v24, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v25 = *(*v2 + 144);
  swift_beginAccess();
  sub_2407EEE04(v2 + v25, v10, &qword_27E507328, &qword_2408D7900);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2407D9440(v10, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_2407D9440(v10, &qword_27E507328, &qword_2408D7900);
    v32 = a1;
    v26 = a1;
    sub_2408D4E90();
    (*(v5 + 8))(v7, v4);
  }

  v32 = a1;
  type metadata accessor for ProximityTransportConnector();
  sub_2408B4B40(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6F38);
  sub_2408D3640();
  if (*(v2 + *(*v2 + 152)))
  {
    v32 = a1;
    sub_2408D3D80();
    sub_2408B4B40(&qword_27E506DB8, 255, MEMORY[0x277CED5B0], MEMORY[0x277CED5A8]);

    sub_2408D4270();
  }

  v32 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068, MEMORY[0x277CED888]);
  sub_2408D4270();
}

uint64_t sub_2408A2B10(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_2408D4B20();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A2BD0, v1, 0);
}

uint64_t sub_2408A2BD0()
{
  sub_2408D34B0();
  swift_allocObject();
  v0[36] = sub_2408D34C0();
  sub_2408D49F0();
  sub_2408D48E0();
  swift_allocObject();
  v0[37] = sub_2408D48C0();
  sub_2408D48D0();
  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_2408A2CF8;
  v2 = v0[32];
  v3 = MEMORY[0x277CEDA10];

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D9060, v2, v3);
}

uint64_t sub_2408A2CF8()
{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_2408A2E08, v1, 0);
}

uint64_t sub_2408A2E08(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 328) = v4;
  *(v1 + 336) = v5;
  v6 = *(v1 + 48);
  *(v1 + 344) = v6;
  v7 = *(v1 + 56);
  sub_2408D48B0();
  sub_2408D34A0();
  if ((v7 & 1) == 0)
  {

LABEL_17:
    v29 = *(v1 + 248);

    *v29 = v2;
    v29[1] = v3;
    v29[2] = v4;
    v29[3] = v5;
    v29[4] = v6;
    v22 = *(v1 + 8);
LABEL_18:

    return v22();
  }

  *(v1 + 224) = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2408B2DDC(v2, v3, v4, v5, v6, 1);
  *(v1 + 232) = v2;
  v9 = v2;
  if (swift_dynamicCast())
  {
    v10 = *(v1 + 120);
    *(v1 + 64) = *(v1 + 104);
    *(v1 + 80) = v10;
    *(v1 + 96) = *(v1 + 136);
    if (sub_240880F60())
    {
      sub_2408B2DDC(v2, v3, v4, v5, v6, 1);
      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v1 + 264), qword_27E507CB8);
      sub_2408B2E8C(v1 + 64, v1 + 144);
      v11 = sub_2408D4B10();
      v12 = sub_2408D4F30();
      sub_2408B2E38(v1 + 64);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v45 = v14;
        *v13 = 136315138;
        v15 = *(v1 + 80);
        *(v1 + 184) = *(v1 + 64);
        *(v1 + 200) = v15;
        *(v1 + 216) = *(v1 + 96);
        sub_2408B2C28();
        v16 = sub_2408D5290();
        v18 = sub_2408CC504(v16, v17, &v45);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_2407CF000, v11, v12, "Age migration flow cancelled with error %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x245CC9F60](v14, -1, -1);
        MEMORY[0x245CC9F60](v13, -1, -1);
      }

      sub_2408B2C28();
      swift_allocError();
      v19 = *(v1 + 96);
      v20 = *(v1 + 80);
      *v21 = *(v1 + 64);
      *(v21 + 16) = v20;
      *(v21 + 32) = v19;
      swift_willThrow();

      v22 = *(v1 + 8);
      goto LABEL_18;
    }

    sub_2408B2E38(v1 + 64);
  }

  *(v1 + 240) = v2;
  v23 = v2;
  if (swift_dynamicCast())
  {
    sub_2408B2DDC(v2, v3, v4, v5, v6, 1);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 264), qword_27E507CB8);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2407CF000, v24, v25, "AgeMigrationService caught user selected manual", v26, 2u);
      MEMORY[0x245CC9F60](v26, -1, -1);
    }

    sub_2408B2C28();
    v27 = swift_allocError();
    *v28 = xmmword_2408D73A0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 0;
    sub_2408A25E0(v27);

    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v3 = 1;
    goto LABEL_17;
  }

  sub_2408D48F0();
  v31 = v2;
  v32 = sub_2408D4B10();
  v33 = sub_2408D4F30();
  sub_2408B2DDC(v2, v3, v4, v5, v6, 1);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    v36 = v2;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_2407CF000, v32, v33, "Received error during migration: %@", v34, 0xCu);
    sub_2407D9440(v35, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v35, -1, -1);
    MEMORY[0x245CC9F60](v34, -1, -1);
  }

  v39 = *(v1 + 272);
  v38 = *(v1 + 280);
  v41 = *(v1 + 256);
  v40 = *(v1 + 264);

  (*(v39 + 8))(v38, v40);
  *(v1 + 352) = *(v41 + 112);
  v42 = swift_task_alloc();
  *(v1 + 360) = v42;
  *(v42 + 16) = v2;
  v44 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v43 = swift_task_alloc();
  *(v1 + 368) = v43;
  *v43 = v1;
  v43[1] = sub_2408A34B0;

  return v44();
}

uint64_t sub_2408A34B0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = sub_2408A3654;
  }

  else
  {
    v5 = *(v2 + 256);

    v4 = sub_2408A35E0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A35E0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_2408A3654()
{
  sub_2408B2DDC(*(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), 1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A36E0(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40);
  v2[19] = swift_task_alloc();
  v3 = sub_2408D3D60();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A37FC, v1, 0);
}

uint64_t sub_2408A37FC()
{
  v0[26] = *(v0[18] + 112);
  v0[15] = sub_2408D4350();
  v0[16] = sub_2408B4B40(&qword_27E507928, 255, MEMORY[0x277CED960], &unk_2408D942C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_2408A3918;

  return v4(boxed_opaque_existential_1);
}

uint64_t sub_2408A3918()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_2408A3A44, v1, 0);
}

uint64_t sub_2408A3A44()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_2408A3AE4;
  v2 = *(v0 + 152);

  return sub_2407EF354(v2, v0 + 96);
}

uint64_t sub_2408A3AE4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return MEMORY[0x2822009F8](sub_2408A3BFC, v2, 0);
}

uint64_t sub_2408A3BFC()
{
  v55 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
    sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080, &unk_2408D9A80);
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  v8 = v0[24];
  v7 = v0[25];
  (*(v2 + 32))(v7, v3, v1);
  v9 = *(v2 + 16);
  v9(v8, v7, v1);
  v10 = (*(v2 + 88))(v8, v1);
  if (v10 == *MEMORY[0x277CED560])
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E507CB8);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F10();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Beginning migration from parent device", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[36] = v15;
    *v15 = v0;
    v15[1] = sub_2408A46A8;

    return sub_2408A6704((v0 + 2));
  }

  else
  {
    if (v10 != *MEMORY[0x277CED568])
    {
      if (v10 == *MEMORY[0x277CED558])
      {
        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v21 = sub_2408D4B20();
        __swift_project_value_buffer(v21, qword_27E507CB8);
        v22 = sub_2408D4B10();
        v23 = sub_2408D4F30();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2407CF000, v22, v23, "Unexpected role 'none', failing", v24, 2u);
          MEMORY[0x245CC9F60](v24, -1, -1);
        }

        v25 = v0[25];
        v26 = v0[20];
        v27 = v0[21];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
        sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080, &unk_2408D9A80);
        swift_allocError();
        *v28 = 0;
        swift_willThrow();
        (*(v27 + 8))(v25, v26);
      }

      else
      {
        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v29 = v0[25];
        v30 = v0[23];
        v31 = v0[20];
        v32 = sub_2408D4B20();
        __swift_project_value_buffer(v32, qword_27E507CB8);
        v9(v30, v29, v31);
        v33 = sub_2408D4B10();
        v34 = sub_2408D4F30();
        v35 = os_log_type_enabled(v33, v34);
        v36 = v0[23];
        if (v35)
        {
          v37 = v0[21];
          v38 = v0[22];
          v39 = v0[20];
          v40 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54 = v53;
          *v40 = 136315138;
          v9(v38, v36, v39);
          v41 = sub_2408D4D40();
          v43 = v42;
          v44 = v39;
          v45 = *(v37 + 8);
          v45(v36, v44);
          v46 = sub_2408CC504(v41, v43, &v54);

          *(v40 + 4) = v46;
          _os_log_impl(&dword_2407CF000, v33, v34, "Unexpected role '%s', failing", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x245CC9F60](v53, -1, -1);
          MEMORY[0x245CC9F60](v40, -1, -1);
        }

        else
        {
          v47 = v0[20];
          v48 = v0[21];

          v45 = *(v48 + 8);
          v45(v36, v47);
        }

        v50 = v0[24];
        v49 = v0[25];
        v51 = v0[20];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
        sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080, &unk_2408D9A80);
        swift_allocError();
        *v52 = 0;
        swift_willThrow();
        v45(v49, v51);
        v45(v50, v51);
      }

      goto LABEL_3;
    }

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F10();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Beginning migration from device that reset birthday to child", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    v20 = swift_task_alloc();
    v0[29] = v20;
    *v20 = v0;
    v20[1] = sub_2408A43DC;

    return sub_2408A4960((v0 + 7));
  }
}

uint64_t sub_2408A43DC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2408A45F4;
  }

  else
  {
    *(v2 + 248) = *(v2 + 56);
    *(v2 + 264) = *(v2 + 72);
    *(v2 + 280) = *(v2 + 88);
    v4 = sub_2408A4510;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A4510()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 136);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  (*(*(v0 + 168) + 8))(*(v0 + 200), *(v0 + 160));

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408A45F4()
{
  (*(v0[21] + 8))(v0[25], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408A46A8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_2408A48AC;
  }

  else
  {
    v5 = *(v2 + 32);
    *(v2 + 304) = *(v2 + 16);
    *(v2 + 320) = v5;
    *(v2 + 336) = *(v2 + 48);
    v4 = sub_2408A47D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A47D0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 136);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  (*(*(v0 + 168) + 8))(*(v0 + 200), *(v0 + 160));

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408A48AC()
{
  (*(v0[21] + 8))(v0[25], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408A4960(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C8, &qword_2408D81F8);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v2[14] = swift_task_alloc();
  v4 = sub_2408D3D60();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = sub_2408D4350();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[24] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B8, &unk_2408D81D0);
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C0, &qword_2408D90A0);
  v2[32] = v9;
  v2[33] = *(v9 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A4D38, v1, 0);
}

uint64_t sub_2408A4D38()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[10];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v0[37] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[38] = v8;
  v0[39] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  *(swift_task_alloc() + 16) = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D858A0], v4);
  sub_2408D4EC0();

  v9 = *(*v5 + 144);
  v0[40] = v9;
  swift_beginAccess();
  sub_2408B2EE8(v1, v5 + v9);
  swift_endAccess();
  v0[41] = v5[14];
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_2408A4F2C;
  v11 = v0[23];

  return v13(v11);
}

uint64_t sub_2408A4F2C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2408A5058, v1, 0);
}

uint64_t sub_2408A5058()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  sub_2408D4330();
  (*(v4 + 8))(v1, v3);
  v5 = sub_2408D3970();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_2407D9440(v0[24], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E507CB8);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Account does not have an ID. Cannot continue", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v12 = v0[33];
    v11 = v0[34];
    v13 = v0[32];

    sub_2408B2C28();
    swift_allocError();
    *v14 = xmmword_2408D7390;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v18 = v0[27];
    v17 = v0[28];
    v19 = v0[25];
    v20 = v0[26];
    v21 = v0[24];
    sub_2408D38F0();
    (*(v6 + 8))(v21, v5);
    (*(v20 + 32))(v17, v18, v19);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v22 = sub_2408D4B20();
    v0[43] = __swift_project_value_buffer(v22, qword_27E507CB8);
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v23, v24, "Beginning handshake to establish connection", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v26 = v0[10];

    v27 = *(v26 + 112);
    v0[44] = v27;

    v28 = swift_task_alloc();
    v0[45] = v28;
    *v28 = v0;
    v28[1] = sub_2408A54D0;
    v29 = v0[20];

    return sub_2408849B4(v29, v27);
  }
}

uint64_t sub_2408A54D0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  v3 = *(v2 + 80);

  if (v0)
  {
    v4 = sub_2408A58E8;
  }

  else
  {
    v4 = sub_2408A5618;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A5618()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[14];
  (*(v0[16] + 104))(v0[17], *MEMORY[0x277CED568], v0[15]);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_2408A572C;
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];

  return sub_2408AD208(v7, v6, v8);
}

uint64_t sub_2408A572C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v5 = v3[17];
  v6 = v3[16];
  v7 = v3[15];
  v8 = v3[14];
  v9 = v3[10];
  sub_2407D9440(v8, &qword_27E507F00, &qword_2408D6D50);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v10 = sub_2408A5B78;
  }

  else
  {
    v10 = sub_2408A5A40;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2408A58E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A5A40()
{
  *(v0[10] + *(*v0[10] + 152)) = v0[48];

  sub_2408D4EA0();
  v1 = sub_2407D917C(&qword_27E507940, &qword_27E5078F8, &unk_2408D9040, &unk_2408D998C);
  v0[50] = v1;
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_2408A5CF0;
  v4 = v0[11];

  return MEMORY[0x2822005A8](v0 + 55, v2, v1, v4, v0 + 8);
}

uint64_t sub_2408A5B78()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408A5CF0()
{
  v2 = *v1;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_2408A60EC;
  }

  else
  {
    v4 = sub_2408A5E04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A5E04(uint64_t a1)
{
  v22 = v1;
  if (*(v1 + 440))
  {
    v2 = *(v1 + 320);
    v3 = *(v1 + 296);
    v4 = *(v1 + 304);
    v5 = *(v1 + 280);
    v6 = *(v1 + 80);
    (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
    v4(v5, 1, 1, v3);
    swift_beginAccess();
    sub_2408B3974(v5, v6 + v2, &qword_27E507328, &qword_2408D7900);
    swift_endAccess();
    *(v1 + 416) = *(v6 + 112);
    v20 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

    v7 = swift_task_alloc();
    *(v1 + 424) = v7;
    *v7 = v1;
    v7[1] = sub_2408A6298;

    return v20();
  }

  else
  {
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      v13 = sub_2408D4D40();
      v15 = sub_2408CC504(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2407CF000, v9, v10, "Received report in migration stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x245CC9F60](v12, -1, -1);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v16 = *(v1 + 400);
    v17 = *(v1 + 80);
    v18 = swift_task_alloc();
    *(v1 + 408) = v18;
    *v18 = v1;
    v18[1] = sub_2408A5CF0;
    v19 = *(v1 + 88);

    return MEMORY[0x2822005A8](v1 + 440, v17, v16, v19, v1 + 64);
  }
}

uint64_t sub_2408A60EC()
{
  v1 = v0[33];
  v13 = v0[32];
  v14 = v0[34];
  v12 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];

  (*(v7 + 8))(v8, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2408A6298()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 80);

  if (v0)
  {
    v4 = sub_2408A657C;
  }

  else
  {
    v4 = sub_2408A63E0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A63E0()
{
  v1 = v0[36];
  v2 = v0[33];
  v13 = v0[34];
  v12 = v0[32];
  v3 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[9];

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v12);
  sub_2407D9440(v1, &qword_27E507328, &qword_2408D7900);

  *v9 = xmmword_2408D8E60;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_2408A657C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2408A6704(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_2408D44C0();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v2[17] = swift_task_alloc();
  v3 = sub_2408D3D60();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[24] = v5;
  *v5 = v2;
  v5[1] = sub_2408A68C8;

  return sub_2408A7ED8();
}

uint64_t sub_2408A68C8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 112);
    *(v4 + 320) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2408A6A50, v8, 0);
  }
}

uint64_t sub_2408A6A50()
{
  if (*(v0 + 320) == 1)
  {
    v1 = [*(*(v0 + 112) + 120) primaryAuthKitAccount];
    if (v1)
    {

      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      v2 = sub_2408D4B20();
      *(v0 + 200) = __swift_project_value_buffer(v2, qword_27E507CB8);
      v3 = sub_2408D4B10();
      v4 = sub_2408D4F20();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2407CF000, v3, v4, "Connecting transport for age migration", v5, 2u);
        MEMORY[0x245CC9F60](v5, -1, -1);
      }

      v6 = *(v0 + 112);

      v7 = *(v6 + 112);
      *(v0 + 208) = v7;

      v8 = swift_task_alloc();
      *(v0 + 216) = v8;
      *v8 = v0;
      v8[1] = sub_2408A6E20;
      v9 = *(v0 + 184);

      return sub_2408849B4(v9, v7);
    }

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v12 = sub_2408D4B10();
    v17 = sub_2408D4F30();
    if (!os_log_type_enabled(v12, v17))
    {
      v15 = 7;
      goto LABEL_21;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2407CF000, v12, v17, "Parent does not have a primary account, will not be eligible to help child device migrate.", v14, 2u);
    v15 = 7;
    goto LABEL_19;
  }

  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v11 = sub_2408D4B20();
  __swift_project_value_buffer(v11, qword_27E507CB8);
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F30();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2407CF000, v12, v13, "Parent decided not to connect to child device", v14, 2u);
    v15 = 1;
LABEL_19:
    MEMORY[0x245CC9F60](v14, -1, -1);
    goto LABEL_21;
  }

  v15 = 1;
LABEL_21:

  sub_2408B2C28();
  swift_allocError();
  *v18 = 0;
  v18[1] = v15;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  swift_willThrow();

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2408A6E20()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = sub_2408A7228;
  }

  else
  {
    v4 = sub_2408A6F68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A6F68()
{
  v1 = v0[17];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277CED560], v0[18]);
  v2 = sub_2408D38D0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2408A706C;
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];

  return sub_2408AD208(v5, v4, v6);
}

uint64_t sub_2408A706C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  v5 = v3[20];
  v6 = v3[19];
  v7 = v3[18];
  v8 = v3[17];
  v9 = v3[14];
  sub_2407D9440(v8, &qword_27E507F00, &qword_2408D6D50);
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v10 = sub_2408A7554;
  }

  else
  {
    v10 = sub_2408A72C8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_2408A7228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A72C8()
{
  v19 = v0;
  *(*(v0 + 112) + *(**(v0 + 112) + 152)) = *(v0 + 240);
  swift_retain_n();

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 240);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v0 + 96) = v3;
    sub_2408D3D80();

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v18);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Established router for age migration: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2407CF000, v9, v10, "Fetching sensitive information from child device", v11, 2u);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  *(v0 + 56) = xmmword_2408D8E70;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  v17 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  v13 = sub_2408B3BA4();
  *v12 = v0;
  v12[1] = sub_2408A760C;
  v14 = *(v0 + 120);
  v15 = MEMORY[0x277CEDB00];

  return v17(v14, v0 + 56, v15, v13);
}

uint64_t sub_2408A7554()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408A760C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_2408A78F8;
  }

  else
  {
    v4 = sub_2408A7724;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A7724()
{
  sub_2408B309C(v0[15], v0[16]);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_2408A77CC;
  v2 = v0[30];
  v3 = v0[16];

  return sub_2408A8328((v0 + 2), v3, v2);
}

uint64_t sub_2408A77CC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_2408A7C48;
  }

  else
  {
    v4 = sub_2408A7B4C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A78F8()
{
  v1 = v0[33];
  v0[36] = *(v0[14] + 112);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v5 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_2408A79E8;

  return v5(sub_2408B3BF8, v2);
}

uint64_t sub_2408A79E8()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 112);

  if (v0)
  {
    v4 = sub_2408A7E04;
  }

  else
  {
    v4 = sub_2408A7D30;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A7B4C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);

  sub_2408B4AE0(v4, MEMORY[0x277CEDB08]);
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 48);
  *v5 = v6;
  *(v5 + 16) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2408A7C48()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[16];

  sub_2408B4AE0(v4, MEMORY[0x277CEDB08]);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2408A7D30(uint64_t a1)
{
  v3 = v1[22];
  v2 = v1[23];
  v4 = v1[21];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_2408A7E04()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2408A7EF8()
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[3] = __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Asking user for confirmation to connect before proceeding", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v0[2];

  v0[4] = *(v5 + 112);
  v9 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_2408A80B0;
  v7 = MEMORY[0x277D839B0];

  return v9(v0 + 7, sub_2408C0D58, 0, &unk_2408D99F8, 0, v7);
}

uint64_t sub_2408A80B0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_2408A82C0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_2408A81D8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A81D8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User made the connection decision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6(v2);
}

uint64_t sub_2408A82C0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2408A8328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = sub_2408D42E0();
  v4[61] = v5;
  v4[62] = *(v5 - 8);
  v4[63] = swift_task_alloc();
  v4[64] = sub_2408D42F0();
  v4[65] = swift_task_alloc();
  v6 = sub_2408D4350();
  v4[66] = v6;
  v4[67] = *(v6 - 8);
  v4[68] = swift_task_alloc();
  v7 = sub_2408D44A0();
  v4[69] = v7;
  v4[70] = *(v7 - 8);
  v4[71] = swift_task_alloc();
  v4[72] = sub_2408D44C0();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A851C, v3, 0);
}

uint64_t sub_2408A851C()
{
  v45 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = sub_2408D4B20();
  *(v0 + 608) = __swift_project_value_buffer(v3, qword_27E507CB8);
  sub_2408B3C58(v2, v1, MEMORY[0x277CEDB08]);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 600);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315138;
    v10 = sub_2408D44B0();
    v12 = v11;
    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
    v13 = sub_2408CC504(v10, v12, &v44);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Received response from child device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
  }

  sub_2408B3C58(*(v0 + 464), *(v0 + 592), MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_2408B3C58(*(v0 + 464), *(v0 + 584), MEMORY[0x277CEDB08]);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F40();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 584);
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v20;
      *v19 = 136315138;
      v21 = sub_2408D44B0();
      v23 = v22;
      sub_2408B4AE0(v18, MEMORY[0x277CEDB08]);
      v24 = sub_2408CC504(v21, v23, &v44);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2407CF000, v15, v16, "Unexpectedly received %s before a request was sent to the child device.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x245CC9F60](v20, -1, -1);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    else
    {

      sub_2408B4AE0(v18, MEMORY[0x277CEDB08]);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v30 = v0 + 56;
    v31 = swift_task_alloc();
    *(v0 + 888) = v31;
    *v31 = v0;
    v31[1] = sub_2408A9DE8;
    v32 = *(v0 + 472);
    v33 = v0 + 256;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v34 = *(v0 + 592);
    v35 = *v34;
    *(v0 + 648) = *v34;
    v36 = v34[1];
    *(v0 + 656) = v36;
    v37 = v34[2];
    *(v0 + 664) = v37;
    v38 = v34[3];
    *(v0 + 672) = v38;
    v39 = v34[4];
    *(v0 + 680) = v39;
    *&v40 = v35;
    *(&v40 + 1) = v36;
    *&v41 = v37;
    *(&v41 + 1) = v38;
    *(v0 + 32) = v41;
    *(v0 + 16) = v40;
    v30 = v0 + 16;
    *(v0 + 48) = v39;
    v42 = swift_task_alloc();
    *(v0 + 688) = v42;
    *v42 = v0;
    v42[1] = sub_2408A8BD0;
    v32 = *(v0 + 472);
    v33 = v0 + 416;
LABEL_16:

    return sub_2408AC08C(v33, v32, v30);
  }

  v25 = *(v0 + 568);
  v26 = *(v0 + 480);
  (*(*(v0 + 560) + 32))(v25, *(v0 + 592), *(v0 + 552));
  *(v0 + 616) = *(v26 + 112);
  v27 = swift_task_alloc();
  *(v0 + 624) = v27;
  *(v27 + 16) = v25;
  v43 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v28 = swift_task_alloc();
  *(v0 + 632) = v28;
  *v28 = v0;
  v28[1] = sub_2408A8A9C;

  return v43();
}

uint64_t sub_2408A8A9C()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = *(v2 + 480);
    v4 = sub_2408A930C;
  }

  else
  {
    v5 = *(v2 + 480);

    v4 = sub_2408A8D18;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A8BD0()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = *(v2 + 480);
    v4 = sub_2408AA0B4;
  }

  else
  {
    v5 = *(v2 + 680);
    v6 = *(v2 + 672);
    v7 = *(v2 + 664);
    v8 = *(v2 + 656);
    v9 = *(v2 + 648);
    v10 = *(v2 + 480);
    v11 = *(v2 + 432);
    *(v2 + 896) = *(v2 + 416);
    *(v2 + 912) = v11;
    *(v2 + 928) = *(v2 + 448);
    sub_2408B2DE8(v9, v8, v7, v6, v5);
    v4 = sub_2408A9FCC;
    v3 = v10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A8D18()
{
  v0[88] = *(v0[60] + 112);
  v4 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v1 = swift_task_alloc();
  v0[89] = v1;
  *v1 = v0;
  v1[1] = sub_2408A8DDC;
  v2 = v0[68];

  return v4(v2);
}

uint64_t sub_2408A8DDC()
{
  v1 = *(*v0 + 480);

  return MEMORY[0x2822009F8](sub_2408A8F08, v1, 0);
}

uint64_t sub_2408A8F08(uint64_t a1)
{
  v2 = *(v1 + 544);
  v3 = *(v1 + 536);
  v4 = *(v1 + 528);
  sub_2408D4300();
  (*(v3 + 8))(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_2408D4480();
      v6 = swift_task_alloc();
      *(v1 + 720) = v6;
      *v6 = v1;
      v6[1] = sub_2408A9408;
      v7 = *(v1 + 504);
      v8 = *(v1 + 472);

      return sub_2408AA190(v1 + 376, v8, v7);
    }

    v26 = sub_2408D4B10();
    v27 = sub_2408D4F40();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2407CF000, v26, v27, "Unexpectedly exited model coordinated update while not in migration finished or failed state.", v28, 2u);
      MEMORY[0x245CC9F60](v28, -1, -1);
    }

    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    v29 = swift_task_alloc();
    *(v1 + 832) = v29;
    *v29 = v1;
    v29[1] = sub_2408A9A88;
    v30 = *(v1 + 472);
    v31 = v1 + 296;
    v32 = v1 + 96;
    goto LABEL_16;
  }

  v10 = *(v1 + 520);
  v11 = v10[4];
  v12 = *(v10 + 1);
  *(v1 + 176) = *v10;
  *(v1 + 192) = v12;
  *(v1 + 208) = v11;
  v14 = *v10;
  v13 = v10[1];
  v16 = v10[2];
  v15 = v10[3];
  v17 = v10[4];
  *(v1 + 136) = xmmword_2408D8E50;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  if ((MEMORY[0x245CC8890](v1 + 176, v1 + 136) & 1) == 0)
  {
    *(v1 + 216) = v14;
    *(v1 + 224) = v13;
    *(v1 + 232) = v16;
    *(v1 + 240) = v15;
    *(v1 + 248) = v17;
    v33 = swift_task_alloc();
    *(v1 + 776) = v33;
    *v33 = v1;
    v33[1] = sub_2408A974C;
    v30 = *(v1 + 472);
    v31 = v1 + 336;
    v32 = v1 + 216;
LABEL_16:

    return sub_2408AC08C(v31, v30, v32);
  }

  v34 = v16;
  v35 = v15;
  v36 = v17;
  v18 = sub_2408D4B10();
  v19 = sub_2408D4F20();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2407CF000, v18, v19, "Detected connection invalidation. Not attempting to send a response to the child device", v20, 2u);
    MEMORY[0x245CC9F60](v20, -1, -1);
  }

  v21 = *(v1 + 568);
  v22 = *(v1 + 560);
  v23 = *(v1 + 552);

  (*(v22 + 8))(v21, v23);
  v24 = *(v1 + 456);

  *v24 = v14;
  v24[1] = v13;
  v24[2] = v34;
  v24[3] = v35;
  v24[4] = v36;
  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_2408A930C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A9408()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = *(v2 + 480);
    (*(*(v2 + 496) + 8))(*(v2 + 504), *(v2 + 488));
    v4 = sub_2408A966C;
  }

  else
  {
    v6 = *(v2 + 496);
    v5 = *(v2 + 504);
    v3 = *(v2 + 480);
    v7 = *(v2 + 488);
    v8 = *(v2 + 392);
    *(v2 + 736) = *(v2 + 376);
    *(v2 + 752) = v8;
    *(v2 + 768) = *(v2 + 408);
    (*(v6 + 8))(v5, v7);
    v4 = sub_2408A9568;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A9568()
{
  (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  v1 = *(v0 + 768);
  v2 = *(v0 + 456);
  v5 = *(v0 + 752);
  v6 = *(v0 + 736);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408A966C()
{
  (*(v0[70] + 8))(v0[71], v0[69]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408A974C()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = *(v2 + 480);
    v4 = sub_2408A9998;
  }

  else
  {
    v5 = *(v2 + 480);
    v6 = *(v2 + 352);
    *(v2 + 792) = *(v2 + 336);
    *(v2 + 808) = v6;
    *(v2 + 824) = *(v2 + 368);
    sub_2408B2E38(v2 + 176);
    v4 = sub_2408A9890;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A9890()
{
  (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  v1 = *(v0 + 824);
  v2 = *(v0 + 456);
  v5 = *(v0 + 808);
  v6 = *(v0 + 792);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408A9998()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  sub_2408B2E38((v0 + 22));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A9A88()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  v3 = *(v2 + 480);
  if (v0)
  {
    v4 = sub_2408A9CE4;
  }

  else
  {
    v5 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v5;
    *(v2 + 880) = *(v2 + 328);
    v4 = sub_2408A9BBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408A9BBC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CED950]);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 880);
  v5 = *(v0 + 456);
  v8 = *(v0 + 864);
  v9 = *(v0 + 848);

  *v5 = v9;
  *(v5 + 16) = v8;
  *(v5 + 32) = v4;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2408A9CE4()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  sub_2408B4AE0(v0[65], MEMORY[0x277CED950]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A9DE8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 288);
    v6 = *(v2 + 456);
    v8 = *(v2 + 272);
    v9 = *(v2 + 256);

    *v6 = v9;
    *(v6 + 16) = v8;
    *(v6 + 32) = v5;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2408A9FCC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 456);
  v5 = *(v0 + 912);
  v6 = *(v0 + 896);

  *v2 = v6;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2408AA0B4()
{
  sub_2408B2DE8(v0[81], v0[82], v0[83], v0[84], v0[85]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2408AA190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v4[55] = sub_2408D42F0();
  v4[56] = swift_task_alloc();
  v5 = sub_2408D4350();
  v4[57] = v5;
  v4[58] = *(v5 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = sub_2408D44C0();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AA2E4, v3, 0);
}

uint64_t sub_2408AA2E4()
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Sending migration step finished command to child device", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  *(v0 + 336) = xmmword_2408D8E80;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 352) = 0;
  v10 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v5 = swift_task_alloc();
  *(v0 + 536) = v5;
  v6 = sub_2408B3BA4();
  *v5 = v0;
  v5[1] = sub_2408AA478;
  v7 = *(v0 + 512);
  v8 = MEMORY[0x277CEDB00];

  return v10(v7, v0 + 336, v8, v6);
}

uint64_t sub_2408AA478()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = sub_2408AAAC8;
  }

  else
  {
    v4 = sub_2408AA590;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408AA590()
{
  v43 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  sub_2408B309C(*(v0 + 512), v1);
  sub_2408B3C58(v1, v2, MEMORY[0x277CEDB08]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 504);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42 = v8;
    *v7 = 136315138;
    v9 = sub_2408D44B0();
    v11 = v10;
    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
    v12 = sub_2408CC504(v9, v11, &v42);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received response from child device after sending migration step finished state. Response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v6, MEMORY[0x277CEDB08]);
  }

  sub_2408B3C58(*(v0 + 520), *(v0 + 496), MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v28 = *(v0 + 496);
      v29 = *v28;
      *(v0 + 584) = *v28;
      v30 = v28[1];
      *(v0 + 592) = v30;
      v31 = v28[2];
      *(v0 + 600) = v31;
      v32 = v28[3];
      *(v0 + 608) = v32;
      v33 = v28[4];
      *(v0 + 616) = v33;
      *&v34 = v29;
      *(&v34 + 1) = v30;
      *&v35 = v31;
      *(&v35 + 1) = v32;
      *(v0 + 32) = v35;
      *(v0 + 16) = v34;
      v36 = v0 + 16;
      *(v0 + 48) = v33;
      v37 = swift_task_alloc();
      *(v0 + 624) = v37;
      *v37 = v0;
      v37[1] = sub_2408AAE20;
      v38 = *(v0 + 416);
      v39 = v0 + 296;
LABEL_16:

      return sub_2408AC08C(v39, v38, v36);
    }

    sub_2408B4AE0(*(v0 + 496), MEMORY[0x277CEDB08]);
LABEL_11:
    sub_2408B3C58(*(v0 + 520), *(v0 + 488), MEMORY[0x277CEDB08]);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F40();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 488);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136315138;
      v24 = sub_2408D44B0();
      v26 = v25;
      sub_2408B4AE0(v21, MEMORY[0x277CEDB08]);
      v27 = sub_2408CC504(v24, v26, &v42);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v18, v19, "Unexpectedly received %s before a request was sent to the child device.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    else
    {

      sub_2408B4AE0(v21, MEMORY[0x277CEDB08]);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v36 = v0 + 56;
    v40 = swift_task_alloc();
    *(v0 + 752) = v40;
    *v40 = v0;
    v40[1] = sub_2408AB8D8;
    v38 = *(v0 + 416);
    v39 = v0 + 216;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_11;
  }

  v14 = *(v0 + 424);
  *(v0 + 552) = *(*(v0 + 432) + 112);
  v15 = swift_task_alloc();
  *(v0 + 560) = v15;
  *(v15 + 16) = v14;
  v41 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v16 = swift_task_alloc();
  *(v0 + 568) = v16;
  *v16 = v0;
  v16[1] = sub_2408AACBC;

  return v41();
}