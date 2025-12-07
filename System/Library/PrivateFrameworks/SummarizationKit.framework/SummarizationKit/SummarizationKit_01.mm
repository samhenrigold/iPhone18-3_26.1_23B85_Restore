uint64_t sub_227FDE360(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = (v3 + *(*v3 + 104));
  v13 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v12 = v13;
  *(v12 + 8) = 0;
  *v11 = 0;
  *(v11 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(*v3 + 96);
  sub_227FE5E38(v11, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  sub_227FC99C4(a1, a2, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, v9);

  swift_beginAccess();
  sub_227FE5BEC(v9, v3 + v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  swift_endAccess();
  sub_227FE5C54(v3 + v14, v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  v15 = (*(*v3 + 192))(v11);
  v17 = v16;
  sub_227FE5D1C(v11, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v12;
  *v12 = 0x8000000000000000;
  sub_22801B5C4(v15, v17, 3, isUniquelyReferenced_nonNull_native);
  *v12 = v21;
  *(v12 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t sub_227FDE650(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = (v3 + *(*v3 + 104));
  v14 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v13 = v14;
  *(v13 + 8) = 0;
  *v12 = 0;
  *(v12 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v15 = *(v7 + 36);
  v16 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
  v17 = *(*v3 + 96);
  sub_227FE5E38(v12, v3 + v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  sub_227FE225C(a1, a2, v10);

  swift_beginAccess();
  sub_227FE5BEC(v10, v3 + v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_endAccess();
  sub_227FE5C54(v3 + v17, v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v18 = (*(*v3 + 192))(v12);
  v20 = v19;
  sub_227FE5D1C(v12, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v13;
  *v13 = 0x8000000000000000;
  sub_22801B5C4(v18, v20, 3, isUniquelyReferenced_nonNull_native);
  *v13 = v24;
  *(v13 + 8) = 3;
  swift_endAccess();
  return v3;
}

uint64_t ClientSwitchConfiguration.init(assetManager:)(void *a1)
{
  v3 = (v1 + qword_2813C6AC8);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000022813A980;
  v4 = (v1 + qword_2813C6AD0);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v1 + qword_2813C6AB8);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  v6 = qword_2813C6AB0;
  *(v1 + v6) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v1 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v7 = *v3;
  v8 = v3[1];
  v9 = *v4;
  v10 = v4[1];
  v11 = *v5;
  v12 = v5[1];

  v13 = sub_227FDEAAC(a1, 0, v7, v8, v9, v10, v11, v12);

  sub_227FDCDC0();

  return v13;
}

uint64_t sub_227FDEAAC(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a7;
  v94 = a8;
  v96 = a5;
  v97 = a6;
  LODWORD(v89) = a2;
  v90 = 0;
  v12 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v13 = MEMORY[0x28223BE20](v12);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v84 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v84 - v18;
  v20 = v8 + *(*v8 + 104);
  v21 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  v22 = a1;
  swift_arrayDestroy();
  *v20 = v21;
  v87 = v20;
  *(v20 + 8) = 0;
  *v19 = 0;
  *(v19 + 1) = MEMORY[0x277D84F90];
  v19[16] = 0;
  sub_228137D6C();
  v23 = *(*v8 + 96);
  v86 = v19;
  sub_227FE5E38(v19, v8 + v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v91 = a3;
  v92 = a4;
  v99 = a3;
  v100 = a4;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  MEMORY[0x22AAB1970](v96, v97);

  v24 = v99;
  v95 = v100;
  v25 = sub_2280265D4(v89 & 1, v99, v100);
  v85 = v24;
  if (v26)
  {
    v27 = v90;
    sub_227FE2BAC(v25, v26);
    if (v27)
    {

      v28 = v8;
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v29 = sub_22813882C();
      __swift_project_value_buffer(v29, qword_2813C89F0);
      v30 = v27;
      v31 = sub_22813880C();
      v32 = sub_2281396CC();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543362;
        v35 = v27;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_227FC3000, v31, v32, "load UAF config error: %{public}@", v33, 0xCu);
        sub_227FE5CBC(v34, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v34, -1, -1);
        MEMORY[0x22AAB28A0](v33, -1, -1);
      }

      else
      {
      }

      v27 = 0;
    }

    else
    {
      v37 = v17;
      v90 = v22;

      v28 = v8;
      swift_beginAccess();
      v89 = v23;
      sub_227FE5B84(v37, v8 + v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
      swift_endAccess();
      v38 = (*(*v8 + 192))(v37);
      v40 = v39;
      v41 = v87;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = *v41;
      *v41 = 0x8000000000000000;
      sub_22801B5C4(v38, v40, 2, isUniquelyReferenced_nonNull_native);
      *v41 = v98[0];
      *(v41 + 8) = 2;
      swift_endAccess();
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v43 = sub_22813882C();
      __swift_project_value_buffer(v43, qword_2813C89F0);
      v44 = v95;

      v45 = sub_22813880C();
      v46 = sub_2281396CC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v99 = v48;
        *v47 = 136446210;
        *(v47 + 4) = sub_227FCC340(v24, v44, &v99);
        _os_log_impl(&dword_227FC3000, v45, v46, "%{public}s is loaded from UAF", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x22AAB28A0](v48, -1, -1);
        MEMORY[0x22AAB28A0](v47, -1, -1);
      }

      sub_227FE5D1C(v37, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
      v23 = v89;
      v22 = v90;
    }
  }

  else
  {
    v28 = v8;
    v27 = v90;
  }

  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass_];
  v51 = sub_22813927C();

  v52 = sub_22813927C();

  v53 = sub_22813927C();

  v54 = [v50 pathForResource:v51 ofType:v52 inDirectory:v53];

  if (!v54)
  {

    sub_227FE4988();
    v60 = swift_allocError();
    *v61 = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v90 = v22;
  v55 = sub_2281392AC();
  v57 = v56;

  v58 = v88;
  sub_227FE194C(v55, v57, v88);
  v59 = v95;
  if (v27)
  {
    v60 = v27;

LABEL_19:
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v62 = sub_22813882C();
    __swift_project_value_buffer(v62, qword_2813C89F0);
    v63 = v60;
    v64 = sub_22813880C();
    v65 = sub_2281396CC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138543362;
      v68 = v60;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_227FC3000, v64, v65, "load bundle config error: %{public}@", v66, 0xCu);
      sub_227FE5CBC(v67, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v67, -1, -1);
      MEMORY[0x22AAB28A0](v66, -1, -1);
    }

    else
    {
    }

    return v28;
  }

  v70 = (*(*v28 + 192))(v58);
  v72 = v71;
  v73 = v87;
  swift_beginAccess();
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v98[0] = *v73;
  *v73 = 0x8000000000000000;
  sub_22801B5C4(v70, v72, 1, v74);
  *v73 = v98[0];
  swift_endAccess();
  swift_beginAccess();
  v75 = v86;
  sub_227FE5C54(v28 + v23, v86, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  v76 = (*(*v28 + 184))(v58, v75);
  sub_227FE5D1C(v75, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  if (v76)
  {
    swift_beginAccess();
    sub_227FE5B84(v58, v28 + v23, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_endAccess();
    *(v73 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v77 = sub_22813882C();
    __swift_project_value_buffer(v77, qword_2813C89F0);

    v78 = sub_22813880C();
    v79 = sub_2281396CC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v98[0] = v81;
      *v80 = 136446210;
      v82 = sub_227FCC340(v85, v59, v98);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_227FC3000, v78, v79, "%{public}s is overwritten by the version from bundle", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAB28A0](v81, -1, -1);
      MEMORY[0x22AAB28A0](v80, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  else
  {
    sub_227FE5D1C(v58, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  return v28;
}

uint64_t sub_227FDF5B4(void *a1, int a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v102 = a7;
  v103 = a8;
  v105 = a6;
  v97 = a4;
  LODWORD(v98) = a2;
  v99 = 0;
  v13 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v92 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v92 - v20;
  v22 = v9 + *(*v9 + 104);
  v23 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  v24 = a1;
  swift_arrayDestroy();
  *v22 = v23;
  v95 = v22;
  *(v22 + 8) = 0;
  *v21 = 0;
  *(v21 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v25 = *(v14 + 36);
  v26 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v26 - 8) + 56))(&v21[v25], 1, 1, v26);
  v27 = *(*v9 + 96);
  v28 = v9;
  v29 = v9 + v27;
  v30 = v97;
  v94 = v21;
  sub_227FE5E38(v21, v29, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v100 = a3;
  v107 = a3;
  v108 = v30;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  v101 = a5;
  MEMORY[0x22AAB1970](a5, v105);

  v31 = v107;
  v104 = v108;
  v32 = v24;
  v33 = sub_2280265D4(v98 & 1, v107, v108);
  v93 = v31;
  if (!v34)
  {
    v35 = v99;
LABEL_15:
    v56 = v32;
    v44 = v28;
    goto LABEL_16;
  }

  v35 = v99;
  sub_227FE2E00(v33, v34);
  if (v35)
  {

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v36 = sub_22813882C();
    __swift_project_value_buffer(v36, qword_2813C89F0);
    v37 = v35;
    v38 = sub_22813880C();
    v39 = sub_2281396CC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      v42 = v35;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_227FC3000, v38, v39, "load UAF config error: %{public}@", v40, 0xCu);
      sub_227FE5CBC(v41, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v41, -1, -1);
      MEMORY[0x22AAB28A0](v40, -1, -1);
    }

    else
    {
    }

    v35 = 0;
    goto LABEL_15;
  }

  v99 = v24;

  v44 = v28;
  swift_beginAccess();
  v98 = v27;
  sub_227FE5B84(v19, v28 + v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  swift_endAccess();
  v45 = (*(*v28 + 192))(v19);
  v47 = v46;
  v48 = v95;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = *v48;
  *v48 = 0x8000000000000000;
  sub_22801B5C4(v45, v47, 2, isUniquelyReferenced_nonNull_native);
  *v48 = v106[0];
  *(v48 + 8) = 2;
  swift_endAccess();
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v50 = sub_22813882C();
  __swift_project_value_buffer(v50, qword_2813C89F0);
  v51 = v104;

  v52 = sub_22813880C();
  v53 = sub_2281396CC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v107 = v55;
    *v54 = 136446210;
    *(v54 + 4) = sub_227FCC340(v31, v51, &v107);
    _os_log_impl(&dword_227FC3000, v52, v53, "%{public}s is loaded from UAF", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x22AAB28A0](v55, -1, -1);
    MEMORY[0x22AAB28A0](v54, -1, -1);
  }

  sub_227FE5D1C(v19, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v27 = v98;
  v56 = v99;
LABEL_16:
  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = [objc_opt_self() bundleForClass_];
  v59 = sub_22813927C();

  v60 = sub_22813927C();

  v61 = sub_22813927C();

  v62 = [v58 pathForResource:v59 ofType:v60 inDirectory:v61];

  if (!v62)
  {

    sub_227FE4988();
    v68 = swift_allocError();
    *v69 = 0;
    swift_willThrow();

    goto LABEL_20;
  }

  v99 = v56;
  v63 = sub_2281392AC();
  v65 = v64;

  v66 = v96;
  sub_227FE225C(v63, v65, v96);
  v67 = v104;
  if (v35)
  {
    v68 = v35;

LABEL_20:
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v70 = sub_22813882C();
    __swift_project_value_buffer(v70, qword_2813C89F0);
    v71 = v68;
    v72 = sub_22813880C();
    v73 = sub_2281396CC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v74 = 138543362;
      v76 = v68;
      v77 = _swift_stdlib_bridgeErrorToNSError();
      *(v74 + 4) = v77;
      *v75 = v77;
      _os_log_impl(&dword_227FC3000, v72, v73, "load bundle config error: %{public}@", v74, 0xCu);
      sub_227FE5CBC(v75, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v75, -1, -1);
      MEMORY[0x22AAB28A0](v74, -1, -1);
    }

    else
    {
    }

    return v44;
  }

  v78 = (*(*v44 + 192))(v66);
  v80 = v79;
  v81 = v95;
  swift_beginAccess();
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = *v81;
  *v81 = 0x8000000000000000;
  sub_22801B5C4(v78, v80, 1, v82);
  *v81 = v106[0];
  swift_endAccess();
  swift_beginAccess();
  v83 = v94;
  sub_227FE5C54(v44 + v27, v94, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v84 = (*(*v44 + 184))(v66, v83);
  sub_227FE5D1C(v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  if (v84)
  {
    swift_beginAccess();
    sub_227FE5B84(v66, v44 + v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_endAccess();
    *(v81 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v85 = sub_22813882C();
    __swift_project_value_buffer(v85, qword_2813C89F0);

    v86 = sub_22813880C();
    v87 = sub_2281396CC();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v106[0] = v89;
      *v88 = 136446210;
      v90 = sub_227FCC340(v93, v67, v106);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_227FC3000, v86, v87, "%{public}s is overwritten by the version from bundle", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x22AAB28A0](v89, -1, -1);
      MEMORY[0x22AAB28A0](v88, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  else
  {
    sub_227FE5D1C(v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  return v44;
}

uint64_t sub_227FE037C(uint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t (*a10)(void), void (*a11)(uint64_t), uint64_t (*a12)(uint64_t), uint64_t (*a13)(void), uint64_t (*a14)(void), unint64_t *a15, uint64_t a16, uint64_t (*a17)(void))
{
  v113 = a7;
  v114 = a8;
  v115 = a3;
  LODWORD(v108) = a2;
  v117 = a1;
  v109 = 0;
  v106 = a13;
  v107 = a12;
  v112 = a10;
  v21 = a9(0);
  v22 = MEMORY[0x28223BE20](v21);
  v105 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v102 - v27;
  v29 = v17 + *(*v17 + 104);
  v30 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v29 = v30;
  v104 = v29;
  *(v29 + 8) = 0;
  *v28 = 0;
  *(v28 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v31 = *(*v17 + 96);
  v116 = v17;
  v103 = v28;
  v32 = v28;
  v33 = v115;
  sub_227FE5E38(v32, v17 + v31, v112);
  v119 = v33;
  v120 = a4;
  v110 = a4;

  MEMORY[0x22AAB1970](46, 0xE100000000000000);

  v111 = a5;
  v112 = a6;
  MEMORY[0x22AAB1970](a5, a6);

  v34 = v120;
  v35 = v108 & 1;
  v108 = v119;
  v36 = sub_2280265D4(v35, v119, v120);
  v37 = 0x2813C4000uLL;
  if (v38)
  {
    v39 = v109;
    a11(v36);
    if (v39)
    {

      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v40 = sub_22813882C();
      __swift_project_value_buffer(v40, qword_2813C89F0);
      v41 = v39;
      v42 = sub_22813880C();
      v43 = sub_2281396CC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543362;
        v46 = v39;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_227FC3000, v42, v43, "load UAF config error: %{public}@", v44, 0xCu);
        sub_227FE5CBC(v45, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v45, -1, -1);
        MEMORY[0x22AAB28A0](v44, -1, -1);
      }

      else
      {
      }

      v39 = 0;
    }

    else
    {

      v48 = v116;
      swift_beginAccess();
      v49 = v31;
      sub_227FE5B84(v26, v48 + v31, v107);
      swift_endAccess();
      v50 = v26;
      v51 = (*(*v48 + 192))(v26);
      v53 = v52;
      v54 = v104;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118[0] = *v54;
      *v54 = 0x8000000000000000;
      sub_22801B5C4(v51, v53, 2, isUniquelyReferenced_nonNull_native);
      *v54 = v118[0];
      *(v54 + 8) = 2;
      swift_endAccess();
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v56 = sub_22813882C();
      __swift_project_value_buffer(v56, qword_2813C89F0);

      v57 = sub_22813880C();
      v58 = sub_2281396CC();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v119 = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_227FCC340(v108, v34, &v119);
        _os_log_impl(&dword_227FC3000, v57, v58, "%{public}s is loaded from UAF", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x22AAB28A0](v60, -1, -1);
        MEMORY[0x22AAB28A0](v59, -1, -1);
      }

      sub_227FE5D1C(v50, v106);
      v31 = v49;
    }
  }

  else
  {
    v39 = v109;
  }

  type metadata accessor for ClientSafetyConfiguration(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = [objc_opt_self() bundleForClass_];
  v63 = sub_22813927C();

  v64 = sub_22813927C();

  v65 = sub_22813927C();

  v66 = [v62 pathForResource:v63 ofType:v64 inDirectory:v65];

  if (!v66)
  {

    sub_227FE4988();
    v73 = swift_allocError();
    *v74 = 0;
    swift_willThrow();

    v72 = v116;
    goto LABEL_19;
  }

  v114 = v31;
  v115 = v34;
  v67 = sub_2281392AC();
  v69 = v68;

  v70 = v105;
  v71 = v106;
  sub_227FC99C4(v67, v69, a14, a15, v107, a16, v106, v105);
  v72 = v116;
  if (v39)
  {
    v73 = v39;

    v37 = 0x2813C4000;
LABEL_19:
    if (*(v37 + 2472) != -1)
    {
      swift_once();
    }

    v75 = sub_22813882C();
    __swift_project_value_buffer(v75, qword_2813C89F0);
    v76 = v73;
    v77 = sub_22813880C();
    v78 = sub_2281396CC();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      v81 = v73;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v82;
      *v80 = v82;
      _os_log_impl(&dword_227FC3000, v77, v78, "load bundle config error: %{public}@", v79, 0xCu);
      sub_227FE5CBC(v80, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v80, -1, -1);
      MEMORY[0x22AAB28A0](v79, -1, -1);
    }

    else
    {
    }

    return v72;
  }

  v83 = (*(*v72 + 192))(v70);
  v85 = v84;
  v86 = v104;
  swift_beginAccess();
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v118[0] = *v86;
  *v86 = 0x8000000000000000;
  v88 = v83;
  v89 = v86;
  sub_22801B5C4(v88, v85, 1, v87);
  *v86 = v118[0];
  swift_endAccess();
  v90 = v114;
  swift_beginAccess();
  v91 = v103;
  sub_227FE5C54(v72 + v90, v103, a17);
  v92 = (*(*v72 + 184))(v70, v91);
  sub_227FE5D1C(v91, v71);
  v93 = v70;
  v94 = v115;
  if (v92)
  {
    swift_beginAccess();
    sub_227FE5B84(v70, v72 + v90, v107);
    swift_endAccess();
    *(v89 + 8) = 1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v95 = sub_22813882C();
    __swift_project_value_buffer(v95, qword_2813C89F0);

    v96 = sub_22813880C();
    v97 = sub_2281396CC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v118[0] = v99;
      *v98 = 136446210;
      v100 = sub_227FCC340(v108, v94, v118);

      *(v98 + 4) = v100;
      _os_log_impl(&dword_227FC3000, v96, v97, "%{public}s is overwritten by the version from bundle", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AAB28A0](v99, -1, -1);
      MEMORY[0x22AAB28A0](v98, -1, -1);
    }

    else
    {
    }

    sub_227FE5D1C(v93, v71);
  }

  else
  {
    sub_227FE5D1C(v70, v71);
  }

  return v72;
}

BOOL sub_227FE0E50(_DWORD *a1, _DWORD *a2)
{
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_227FCC340(0xD00000000000003DLL, 0x8000000228143B70, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

uint64_t (*sub_227FE0FEC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_227FE3750(v6, a2, a3);
  return sub_227FE1074;
}

void sub_227FE1074(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_227FE10C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v57 = a3;
  v52 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  v51 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v49 - v13;
  v15 = qword_2813C6AC0;
  swift_beginAccess();
  v16 = *(v6 + v15);

  v17 = sub_2280EAEE0(a1, a2, v16);

  if ((v17 & 1) == 0)
  {
    v18 = v6 + *(*v6 + 96);
    swift_beginAccess();
    if (*(v18 + 16) == 1)
    {
      v19 = swift_allocObject();
      v20 = 19;
      *(v19 + 16) = 19;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      v21 = sub_227FE5EA4;
      v22 = 96;
LABEL_15:
      v39 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, v22, v21, v19);
      sub_227FDB3CC();
      swift_allocError();
      *v40 = v20;
      *(v40 + 8) = v39;
      return swift_willThrow();
    }

    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v23 = sub_22813882C();
    __swift_project_value_buffer(v23, qword_2813C89F0);

    v24 = sub_22813880C();
    v25 = sub_2281396BC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v49[0] = AssociatedTypeWitness;
      v27 = v26;
      v28 = swift_slowAlloc();
      v49[1] = v5;
      v29 = v28;
      v55 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_227FCC340(a1, a2, &v55);
      _os_log_impl(&dword_227FC3000, v24, v25, "clientID %{public}s is not configured in ClientSwitchConfiguration; assuming enabled by default", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAB28A0](v29, -1, -1);
      v30 = v27;
      AssociatedTypeWitness = v49[0];
      MEMORY[0x22AAB28A0](v30, -1, -1);
    }
  }

  v31 = qword_2813C6AB0;
  swift_beginAccess();
  v32 = *(v6 + v31);
  if (!*(v32 + 16))
  {
    return swift_endAccess();
  }

  v33 = sub_22808C964(a1, a2);
  if ((v34 & 1) == 0)
  {
    return swift_endAccess();
  }

  v35 = *(*(v32 + 56) + 8 * v33);
  swift_endAccess();
  v36 = *(v35 + 16);

  v37 = v57;
  if (v36 && (sub_22808C964(0x5F4C4C415FLL, 0xE500000000000000), (v38 & 1) != 0) || (sub_22813966C() & 1) != 0)
  {

    v19 = swift_allocObject();
    v20 = 15;
    *(v19 + 16) = 15;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v21 = sub_227FE5EA0;
    v22 = 113;
    goto LABEL_15;
  }

  (*(v52 + 16))(v50, v37, a4);
  sub_22813949C();
  swift_getAssociatedConformanceWitness();
  sub_22813979C();
  v42 = v56;
  if (v56)
  {
    v43 = v55;
    do
    {
      if (*(v35 + 16))
      {
        sub_22808C964(v43, v42);
        v45 = v44;

        if (v45)
        {

          v46 = swift_allocObject();
          *(v46 + 16) = 15;
          *(v46 + 24) = 0;
          *(v46 + 32) = 0;
          v47 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228143BF0, 118, sub_227FE49DC, v46);
          sub_227FDB3CC();
          swift_allocError();
          *v48 = 15;
          *(v48 + 8) = v47;
          swift_willThrow();
          return (*(v53 + 8))(v14, AssociatedTypeWitness);
        }
      }

      else
      {
      }

      sub_22813979C();
      v43 = v55;
      v42 = v56;
    }

    while (v56);
  }

  (*(v53 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_227FE16F4()
{
}

uint64_t ClientSwitchConfiguration.deinit()
{
  sub_227FE5D1C(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return v0;
}

uint64_t ClientSwitchConfiguration.__deallocating_deinit()
{
  sub_227FE5D1C(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  return swift_deallocClassInstance();
}

uint64_t sub_227FE194C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = sub_2281392DC();
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228136EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = MEMORY[0x277D84F90];
  v13[16] = 0;
  v62 = v13;
  sub_228137D6C();
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_22813927C();
  v16 = [v14 fileExistsAtPath_];

  if (!v16)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v21 = sub_22813882C();
    __swift_project_value_buffer(v21, qword_2813C89F0);

    v22 = sub_22813880C();
    v23 = sub_2281396CC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v60[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_227FCC340(a1, a2, v60);
      _os_log_impl(&dword_227FC3000, v22, v23, "config file does not exist: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAB28A0](v25, -1, -1);
      MEMORY[0x22AAB28A0](v24, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  v56 = a1;
  sub_228136E4C();
  v17 = v59;
  v18 = sub_228136EBC();
  v20 = a2;
  if (v17)
  {
    (*(v8 + 8))(v10, v7);
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v30 = sub_22813882C();
    __swift_project_value_buffer(v30, qword_2813C89F0);

    v31 = v17;
    v32 = sub_22813880C();
    v33 = sub_2281396CC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v60[0] = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_227FCC340(v56, v20, v60);
      *(v34 + 12) = 2114;
      v37 = v17;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_227FC3000, v32, v33, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v34, 0x16u);
      sub_227FE5CBC(v35, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAB28A0](v36, -1, -1);
      MEMORY[0x22AAB28A0](v34, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v39 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  v27 = v18;
  v28 = v19;
  v29 = sub_227FC87CC(v18, v19);
  v41 = *(v8 + 8);
  v55 = v42;
  v43 = v29;
  v41(v10, v7);
  sub_227FC9210(v27, v28);
  sub_2281392CC();
  v59 = v43;
  v44 = v55;
  sub_2281392BC();
  v46 = v56;
  if (!v45)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v47 = sub_22813882C();
    __swift_project_value_buffer(v47, qword_2813C89F0);

    v48 = sub_22813880C();
    v49 = sub_2281396CC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v20;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v60[0] = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_227FCC340(v46, v50, v60);
      _os_log_impl(&dword_227FC3000, v48, v49, "Failed to parse file %{public}s as utf8 string", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AAB28A0](v52, -1, -1);
      MEMORY[0x22AAB28A0](v51, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();
    sub_227FC9210(v59, v44);
    return sub_227FE5D1C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  }

  sub_227FCA2E8(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v62, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  return sub_227FC9210(v59, v44);
}

uint64_t sub_227FE225C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = sub_2281392DC();
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228136EAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = MEMORY[0x277D84F90];
  sub_228137D6C();
  v14 = *(v11 + 28);
  v15 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v64 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_22813927C();
  LODWORD(v14) = [v17 fileExistsAtPath_];

  if (!v14)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v23 = sub_22813882C();
    __swift_project_value_buffer(v23, qword_2813C89F0);

    v24 = sub_22813880C();
    v25 = sub_2281396CC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v62[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_227FCC340(a1, a2, v62);
      _os_log_impl(&dword_227FC3000, v24, v25, "config file does not exist: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAB28A0](v27, -1, -1);
      MEMORY[0x22AAB28A0](v26, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  v58 = a1;
  sub_228136E4C();
  v19 = v61;
  v20 = sub_228136EBC();
  v22 = a2;
  if (v19)
  {
    (*(v8 + 8))(v10, v7);
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v32 = sub_22813882C();
    __swift_project_value_buffer(v32, qword_2813C89F0);

    v33 = v19;
    v34 = sub_22813880C();
    v35 = sub_2281396CC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v62[0] = v38;
      *v36 = 136446466;
      *(v36 + 4) = sub_227FCC340(v58, v22, v62);
      *(v36 + 12) = 2114;
      v39 = v19;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_227FC3000, v34, v35, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v36, 0x16u);
      sub_227FE5CBC(v37, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB28A0](v38, -1, -1);
      MEMORY[0x22AAB28A0](v36, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  v29 = v20;
  v30 = v21;
  v31 = sub_227FC87CC(v20, v21);
  v43 = *(v8 + 8);
  v57 = v44;
  v45 = v31;
  v43(v10, v7);
  sub_227FC9210(v29, v30);
  sub_2281392CC();
  v61 = v45;
  v46 = v57;
  sub_2281392BC();
  v48 = v58;
  if (!v47)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v49 = sub_22813882C();
    __swift_project_value_buffer(v49, qword_2813C89F0);

    v50 = sub_22813880C();
    v51 = sub_2281396CC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v22;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v62[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_227FCC340(v48, v52, v62);
      _os_log_impl(&dword_227FC3000, v50, v51, "Failed to parse file %{public}s as utf8 string", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAB28A0](v54, -1, -1);
      MEMORY[0x22AAB28A0](v53, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();
    sub_227FC9210(v61, v46);
    return sub_227FE5D1C(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  }

  sub_227FCA2E8(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v64, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  return sub_227FC9210(v61, v46);
}

void sub_227FE2BAC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C51E0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000038, 0x8000000228143D20, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE2E00(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C56E8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000037, 0x8000000228143C70, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE3054(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD00000000000002ELL, 0x8000000228143CF0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE32A8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000039, 0x8000000228143BB0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void sub_227FE34FC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_227FCA2E8(&qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  sub_228137ECC();
  if (v2)
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v5 = sub_22813882C();
    __swift_project_value_buffer(v5, qword_2813C89F0);

    v6 = sub_22813880C();
    v7 = sub_2281396CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v11[0] = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_227FCC340(a1, a2, v11);
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_227FCC340(0xD000000000000039, 0x8000000228143CB0, v11);
      _os_log_impl(&dword_227FC3000, v6, v7, "Failed to parse content %{public}s as type %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v9, -1, -1);
      MEMORY[0x22AAB28A0](v8, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }
}

void (*sub_227FE3750(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_227FE3A68(v7);
  v7[9] = sub_227FE385C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_227FE37FC;
}

void sub_227FE37FC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_227FE385C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_22808C964(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22801CCF4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_228019118(v18, a4 & 1);
    v13 = sub_22808C964(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_227FE39B4;
}

void sub_227FE39B4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_22801C318(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_227FE5D7C(*(v7 + 48) + 16 * v6);
    sub_2280277E8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_227FE3A68(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_227FE3A90;
}

unint64_t sub_227FE3A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C8, &qword_22813AB38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4D0, &qword_22813AB40);
    v7 = sub_22813993C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E4C8, &qword_22813AB38);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22808C964(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for GMSModelInfoCache.CacheEntry(0);
      result = sub_227FE5E38(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for GMSModelInfoCache.CacheEntry);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_227FE3C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E440, &unk_22813AAB0);
    v3 = sub_22813993C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_227FE3D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C0, &qword_22813AA30);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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

unint64_t sub_227FE3E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E418, &qword_22813AA88);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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

void *sub_227FE3F98(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E398, &qword_22813AA10);
  v3 = sub_22813993C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22808C9DC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22808C9DC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227FE40AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E388, &qword_22813AA00);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E390, &qword_22813AA08);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2E0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_227FE41E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E448, &unk_22813C010);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, v13, &qword_27D81E450, &qword_22813AAC0);
      result = sub_22808CA18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v13[0];
      v9 = v13[2];
      v7[1] = v13[1];
      v7[2] = v9;
      *v7 = v8;
      result = sub_227FCE2F8(&v14, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

unint64_t sub_227FE4318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B8, &qword_22813AA28);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_22808CA2C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

void *sub_227FE4410(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3E0, &qword_22813AA50);
  v3 = sub_22813993C();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_22808C91C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22808C91C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_227FE4524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4C0, &qword_22813AB30);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22808C964(v5, v6);
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

uint64_t type metadata accessor for ClientSwitchConfiguration(uint64_t a1)
{
  result = qword_2813C6AA0;
  if (!qword_2813C6AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227FE4720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E470, &qword_22813AAE0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, v13, &qword_27D81E478, &qword_22813AAE8);
      result = sub_22808CE90(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v13[0];
      v9 = v13[2];
      v7[1] = v13[1];
      v7[2] = v9;
      *v7 = v8;
      result = sub_227FCE2F8(&v14, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 80;
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

unint64_t sub_227FE4858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E378, &unk_22813A9F0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E380, &unk_228142F80);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2F8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_227FE4988()
{
  result = qword_27D81E3A8;
  if (!qword_27D81E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E3A8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_227FE4A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3E8, &qword_22813AA58);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v13, &qword_27D81E3F0, &qword_22813AA60);
      v5 = v13;
      v6 = v14;
      result = sub_22808C964(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_227FCE2E0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_227FE4B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E490, &unk_22813AB00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E498, &unk_22813C050);
    v7 = sub_22813993C();
    v8 = v5 + *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E490, &unk_22813AB00);
      result = sub_227FC7F80(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
      result = sub_227FE5B1C(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_27D81E4A0, &unk_22813AB10);
      v15 = v7[7] + 24 * v12;
      v16 = *(v8 + 8);
      *v15 = *v8;
      *(v15 + 8) = v16;
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

_OWORD *sub_227FE4D64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
    v3 = sub_22813993C();
    v4 = a1 + 32;

    while (1)
    {
      sub_227FE5DD0(v4, &v15, &qword_27D81E488, &qword_22813AAF8);
      v5 = v15;
      v6 = *v15;

      v8 = sub_2280D3358(v7, v3, v6);
      v10 = v9;

      if (v10)
      {
        break;
      }

      *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
      *(v3[6] + 8 * v8) = v5;
      result = sub_227FCE2F8(&v16, (v3[7] + 32 * v8));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 40;
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

unint64_t sub_227FE4ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E430, &qword_22813AAA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E438, &qword_22813AAA8);
    v7 = sub_22813993C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E430, &qword_22813AAA0);
      v11 = *v5;
      result = sub_22808CE24(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_228136EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_227FE50AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E468, &unk_22813C040);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;

      result = sub_22808CF24(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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

unint64_t sub_227FE51B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E458, &qword_22813AAC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E460, &unk_22813AAD0);
    v7 = sub_22813993C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E458, &qword_22813AAC8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_22808C964(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule(0);
      result = sub_227FE5E38(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Com_Apple_Summarizationkit_Proto_Rule);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_227FE5398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E410, &qword_22813AA80);
    v3 = sub_22813993C();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_22808DA18();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
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

unint64_t sub_227FE5460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E408, &qword_22813AA78);
    v3 = sub_22813993C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_22808CFAC(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 16 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
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

unint64_t sub_227FE5558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E420, &unk_22813AA90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E428, &unk_22813C030);
    v7 = sub_22813993C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E420, &unk_22813AA90);
      result = sub_22808CFAC(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for SummarizationResult(0);
      result = sub_227FE5E38(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for SummarizationResult);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_227FE573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3F8, &qword_22813AA68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E400, &qword_22813AA70);
    v7 = sub_22813993C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E3F8, &qword_22813AA68);
      v11 = *v5;
      result = sub_22808D0CC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
      result = sub_227FE5E38(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PartialSummariesOperation.TaskResult);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_227FE5914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3C8, &qword_22813AA38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D0, &unk_22813AA40);
    v7 = sub_22813993C();
    v8 = v5 + *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);

    while (1)
    {
      sub_227FE5DD0(v9, v5, &qword_27D81E3C8, &qword_22813AA38);
      result = sub_22808D108(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3D8, &unk_22813C640);
      result = sub_227FE5B1C(v5, v13 + *(*(v14 - 8) + 72) * v12, &qword_27D81E3D8, &unk_22813C640);
      v15 = v7[7] + 24 * v12;
      v16 = *(v8 + 8);
      *v15 = *v8;
      *(v15 + 8) = v16;
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v21;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_227FE5B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FE5B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FE5CBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FE5D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FE5DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FE5E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_227FE5EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_22813927C();

  v24[0] = 0;
  v8 = [v6 initWithPattern:v7 options:a3 error:v24];

  v9 = v24[0];
  if (v8)
  {
    v10 = sub_22813882C();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a4, v10);
  }

  else
  {
    v13 = v24[0];
    v14 = sub_228136E2C();

    swift_willThrow();
    v15 = v14;
    v16 = sub_22813880C();
    v17 = sub_2281396EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v14;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_227FC3000, v16, v17, "Error compiling regular expression: %@", v18, 0xCu);
      sub_227FE60F8(v19);
      MEMORY[0x22AAB28A0](v19, -1, -1);
      MEMORY[0x22AAB28A0](v18, -1, -1);
    }

    swift_willThrow();
    v22 = sub_22813882C();
    (*(*(v22 - 8) + 8))(a4, v22);
  }

  return v8;
}

uint64_t sub_227FE60F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3B0, &qword_22813AA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SummarizationKit::SummarizationStyle_optional __swiftcall SummarizationStyle.init(argument:)(Swift::String argument)
{
  v2 = v1;
  result.value = SummarizationStyle.init(rawValue:)(argument).value;
  *v2 = v4;
  return result;
}

SummarizationKit::SummarizationStyle_optional __swiftcall SummarizationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22813995C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SummarizationStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6369706F74;
  v3 = 0x736973706F6E7973;
  v4 = 0x6F436C6175736976;
  if (v1 != 3)
  {
    v4 = 0x6F546C6175736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E694C706F74;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_227FE62C0()
{
  result = qword_2813C83D0;
  if (!qword_2813C83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83D0);
  }

  return result;
}

uint64_t sub_227FE6314()
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

uint64_t sub_227FE640C(uint64_t a1)
{
  sub_22813923C();
}

uint64_t sub_227FE64F0(uint64_t a1)
{
  sub_228139AAC();
  sub_22813923C();

  return sub_228139AEC();
}

void sub_227FE65F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6369706F74;
  v5 = 0xE800000000000000;
  v6 = 0x736973706F6E7973;
  v7 = 0xEE0073747065636ELL;
  v8 = 0x6F436C6175736976;
  if (v2 != 3)
  {
    v8 = 0x6F546C6175736976;
    v7 = 0xED0000656E694C70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E694C706F74;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_227FE6758()
{
  result = qword_27D81E4D8;
  if (!qword_27D81E4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E4E0, &qword_22813AC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4D8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

SummarizationKit::SummarizationStyle_optional sub_227FE6814@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = SummarizationStyle.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_227FE684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6B18();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_227FE68A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6AC4();
  v5 = sub_227FE6B18();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_227FE6900(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FE6AC4();

  return MEMORY[0x282140D48](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for SummarizationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SummarizationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227FE6AC4()
{
  result = qword_27D81E4E8;
  if (!qword_27D81E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4E8);
  }

  return result;
}

unint64_t sub_227FE6B18()
{
  result = qword_27D81E4F0;
  if (!qword_27D81E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4F0);
  }

  return result;
}

uint64_t sub_227FE6B6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_228138C0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D4B048])
  {
    v9 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v9;
    return result;
  }

  if (v8 == *MEMORY[0x277D4B050])
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277D4B058])
  {
    v9 = 2;
    goto LABEL_7;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v11 = sub_22813882C();
  __swift_project_value_buffer(v11, qword_2813C8A20);
  v12 = sub_22813880C();
  v13 = sub_2281396DC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_227FC3000, v12, v13, "Encountered @unknown default in when mapping SummarizationClient.SummarizationStyle to SummarizationStyle", v14, 2u);
    MEMORY[0x22AAB28A0](v14, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = 28;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  v16 = sub_227FF96D4(0, 0xD000000000000077, 0x8000000228143D60, 38, sub_227FE6E48, v15);
  sub_227FDB3CC();
  swift_allocError();
  *v17 = 28;
  *(v17 + 8) = v16;
  swift_willThrow();
  v18 = *(v5 + 8);
  v18(a1, v4);
  return (v18)(v7, v4);
}

uint64_t sub_227FE6E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_227FE6E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227FE6F0C()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813AF20[v1]);
  return sub_228139AEC();
}

uint64_t sub_227FE6F94(uint64_t a1)
{
  v2 = *v1;
  sub_228139AAC();
  MEMORY[0x22AAB2060](qword_22813AF20[v2]);
  return sub_228139AEC();
}

uint64_t sub_227FE6FE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227FE7660(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_227FE702C(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000025;
      break;
    case 3:
      result = 0xD000000000000027;
      break;
    case 4:
      result = 0xD000000000000024;
      break;
    case 5:
      result = 0xD00000000000003DLL;
      break;
    case 6:
      result = 0xD00000000000004ELL;
      break;
    case 7:
      result = 0xD00000000000004ALL;
      break;
    case 8:
      result = 0xD000000000000046;
      break;
    case 9:
      result = 0xD00000000000002CLL;
      break;
    case 10:
      result = 0xD000000000000038;
      break;
    case 11:
      result = 0xD000000000000034;
      break;
    case 12:
      result = 0xD00000000000003BLL;
      break;
    case 13:
      result = 0xD000000000000030;
      break;
    case 14:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227FE71B8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_227FE702C(a2);
  v7 = v6;
  v8 = sub_2281392AC();
  v10 = v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E530, &unk_22813BFF0);
  v17 = sub_227FE777C();
  v13 = v8;
  v14 = v10;
  v15 = 3;
  sub_227FE77E0(&v13, v18);
  __swift_project_boxed_opaque_existential_1(&v13, v16);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v18[5] = DynamicType;
  v16 = MEMORY[0x277D837D0];
  v13 = v5;
  v14 = v7;
  result = sub_228024C84(&v13, v18);
  if (a3)
  {
    return a3(a1);
  }

  return result;
}

unint64_t sub_227FE72BC()
{
  sub_22813988C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E528, qword_22813AEA0);
  v0 = sub_2281392EC();
  MEMORY[0x22AAB1970](v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_227FE7384()
{
  result = qword_27D81E4F8;
  if (!qword_27D81E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E4F8);
  }

  return result;
}

unint64_t sub_227FE73DC()
{
  result = qword_27D81E500;
  if (!qword_27D81E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E500);
  }

  return result;
}

unint64_t sub_227FE7430(uint64_t a1)
{
  *(a1 + 8) = sub_227FE7460();
  result = sub_227FE74B4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_227FE7460()
{
  result = qword_27D81E508;
  if (!qword_27D81E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E508);
  }

  return result;
}

unint64_t sub_227FE74B4()
{
  result = qword_27D81E510;
  if (!qword_27D81E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E510);
  }

  return result;
}

unint64_t sub_227FE7508(uint64_t a1)
{
  *(a1 + 8) = sub_227FE7538();
  result = sub_227FE758C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_227FE7538()
{
  result = qword_27D81E518;
  if (!qword_27D81E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E518);
  }

  return result;
}

unint64_t sub_227FE758C()
{
  result = qword_27D81E520;
  if (!qword_27D81E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E520);
  }

  return result;
}

uint64_t sub_227FE75E0(uint64_t a1)
{
  v2 = sub_227FE7460();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_227FE761C(uint64_t a1)
{
  v2 = sub_227FE7460();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_227FE7660(uint64_t result)
{
  if (result > 1007)
  {
    if (result > 2999)
    {
      if (result > 4999)
      {
        if (result == 5000)
        {
          return 13;
        }

        if (result == 5001)
        {
          return 14;
        }
      }

      else
      {
        if (result == 3000)
        {
          return 11;
        }

        if (result == 4001)
        {
          return 12;
        }
      }
    }

    else if (result > 2004)
    {
      if (result == 2005)
      {
        return 9;
      }

      if (result == 2012)
      {
        return 10;
      }
    }

    else
    {
      if (result == 1008)
      {
        return 7;
      }

      if (result == 2003)
      {
        return 8;
      }
    }

    return 15;
  }

  if (result > 9)
  {
    if (result > 1000)
    {
      if (result == 1001)
      {
        return 5;
      }

      if (result == 1002)
      {
        return 6;
      }
    }

    else
    {
      if (result == 10)
      {
        return 3;
      }

      if (result == 1000)
      {
        return 4;
      }
    }

    return 15;
  }

  if (result > 2)
  {
    return 15;
  }

  return result;
}

unint64_t sub_227FE777C()
{
  result = qword_27D81E538;
  if (!qword_27D81E538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E530, &unk_22813BFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E538);
  }

  return result;
}

uint64_t sub_227FE77E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for ClassificationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassificationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227FE79AC()
{
  result = qword_27D81E540;
  if (!qword_27D81E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81E540);
  }

  return result;
}

uint64_t type metadata accessor for TokenCounter(uint64_t a1)
{
  result = qword_2813C7BF0;
  if (!qword_2813C7BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FE7A74(uint64_t a1)
{
  result = type metadata accessor for SummarizationSession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = sub_227FE7AF8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_227FE7AF8()
{
  result = qword_2813C8558[0];
  if (!qword_2813C8558[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2813C8558);
  }

  return result;
}

uint64_t sub_227FE7B5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ModelBundleIdentifier(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FE7C00, 0, 0);
}

uint64_t sub_227FE7C00()
{
  sub_227FC8614(v0[4], v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FC8720(v0[7]);
      goto LABEL_6;
    }
  }

  else
  {
    sub_227FC8720(v0[7]);
  }

  v2 = v0[6];
  v3 = v0[4];
  swift_storeEnumTagMultiPayload();
  LOBYTE(v3) = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v3, v2);
  sub_227FC8720(v2);
  if (v3)
  {
LABEL_6:
    v4 = v0[4];
    v5 = (v4 + *(type metadata accessor for TokenCounter(0) + 20));
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v7 + 8);
    v22 = (*(v8 + 24) + **(v8 + 24));
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_227FE7EC0;
    v10 = v0[3];
    v11 = v0[2];
    v12 = v6;
    v13 = v8;
    v14 = v22;

    return v14(v11, v10, v12, v13);
  }

  v15 = v0[4];
  v16 = (v15 + *(type metadata accessor for TokenCounter(0) + 20));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = *(v18 + 8);
  v23 = (*(v19 + 16) + **(v19 + 16));
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_227FE8008;
  v10 = v0[3];
  v11 = v0[2];
  v12 = v17;
  v13 = v19;
  v14 = v23;

  return v14(v11, v10, v12, v13);
}

uint64_t sub_227FE7EC0(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_227FE8008(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_227FE8150()
{
  v1 = type metadata accessor for ModelBundleIdentifier(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_227FC8614(v0, &v10 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227FC8720(v6);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v8 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v0, v4);
    v6 = v4;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  sub_227FC8720(v6);
  return v8 & 1;
}

uint64_t sub_227FE8248(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227FE82EC;

  return sub_227FE7B5C(a1, a2);
}

uint64_t sub_227FE82EC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_227FE83EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  type metadata accessor for SignpostToken(0);
  v4[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FE8480, 0, 0);
}

uint64_t sub_227FE8480()
{
  if (*(v0 + 472) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 464);

    v3 = *(v0 + 8);

    return v3(v1, v2);
  }

  else
  {
    if (qword_2813C4918 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    v7 = type metadata accessor for Signpost(0);
    *(v0 + 496) = __swift_project_value_buffer(v7, qword_2813C88A0);
    sub_227FEA45C(v5, v0 + 16);
    v8 = swift_allocObject();
    v9 = *(v0 + 64);
    *(v8 + 48) = *(v0 + 48);
    *(v8 + 64) = v9;
    *(v8 + 80) = *(v0 + 80);
    *(v8 + 96) = *(v0 + 96);
    v10 = *(v0 + 32);
    *(v8 + 16) = *(v0 + 16);
    *(v8 + 32) = v10;
    sub_22812F68C(sub_227FEB3F4, v6);

    v11 = v5[3];
    v12 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v11);
    v16 = (*(v12 + 16) + **(v12 + 16));
    v13 = swift_task_alloc();
    *(v0 + 504) = v13;
    *v13 = v0;
    v13[1] = sub_227FE86E0;
    v15 = *(v0 + 456);
    v14 = *(v0 + 464);

    return v16(v15, v14, v11, v12);
  }
}

uint64_t sub_227FE86E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {
    v4 = sub_227FE8CC0;
  }

  else
  {
    v4 = sub_227FE87F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227FE87F8()
{
  v23 = v0;
  v1 = *(*(v0 + 480) + 80);
  if (v1)
  {
    v2 = *(v0 + 512);
    v3 = sub_22813936C();
    KeyPath = swift_getKeyPath(byte_22813B050);
    os_unfair_lock_lock((v1 + 16));
    v5 = MEMORY[0x277D84A28];
    v22 = MEMORY[0x277D84A28];
    v21[0] = v3;

    sub_2280449E4(v21, KeyPath, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));

    v6 = swift_getKeyPath(byte_22813B078);
    os_unfair_lock_lock((v1 + 16));
    v22 = v5;
    v21[0] = v2;

    sub_2280449E4(v21, v6, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));

    os_unfair_lock_lock((v1 + 16));
    v22 = MEMORY[0x277D839B0];
    LOBYTE(v21[0]) = 0;

    sub_2280449FC(v21, v7, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));
  }

  if (*(v0 + 512) >= *(v0 + 472))
  {
    v16 = swift_task_alloc();
    *(v0 + 528) = v16;
    *v16 = v0;
    v16[1] = sub_227FE8A90;
    v17 = *(v0 + 512);
    v18 = *(v0 + 472);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);

    return sub_227FE8E90(v20, v19, v17, v18, v1);
  }

  else
  {
    v8 = *(v0 + 488);
    sub_227FEA45C(*(v0 + 480), v0 + 368);
    v9 = swift_allocObject();
    v10 = *(v0 + 416);
    *(v9 + 48) = *(v0 + 400);
    *(v9 + 64) = v10;
    *(v9 + 80) = *(v0 + 432);
    *(v9 + 96) = *(v0 + 448);
    v11 = *(v0 + 384);
    *(v9 + 16) = *(v0 + 368);
    *(v9 + 32) = v11;

    sub_2281317B8(v8, sub_227FEB400, v9);

    sub_227FEA5B8(v8);
    v12 = *(v0 + 456);
    v13 = *(v0 + 464);

    v14 = *(v0 + 8);

    return v14(v12, v13);
  }
}

uint64_t sub_227FE8A90(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 536) = v2;

  if (v2)
  {
    v7 = sub_227FE8DAC;
  }

  else
  {
    *(v6 + 544) = a2;
    *(v6 + 552) = a1;
    v7 = sub_227FE8BC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227FE8BC8()
{
  v1 = *(v0 + 488);
  sub_227FEA45C(*(v0 + 480), v0 + 280);
  v2 = swift_allocObject();
  v3 = *(v0 + 328);
  *(v2 + 48) = *(v0 + 312);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 344);
  *(v2 + 96) = *(v0 + 360);
  v4 = *(v0 + 296);
  *(v2 + 16) = *(v0 + 280);
  *(v2 + 32) = v4;
  sub_2281317B8(v1, sub_227FEB3FC, v2);

  sub_227FEA5B8(v1);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t sub_227FE8CC0()
{
  v1 = *(v0 + 488);
  sub_227FEA45C(*(v0 + 480), v0 + 104);
  v2 = swift_allocObject();
  v3 = *(v0 + 152);
  *(v2 + 48) = *(v0 + 136);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 168);
  *(v2 + 96) = *(v0 + 184);
  v4 = *(v0 + 120);
  *(v2 + 16) = *(v0 + 104);
  *(v2 + 32) = v4;
  sub_2281317B8(v1, sub_227FEA59C, v2);

  sub_227FEA5B8(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227FE8DAC()
{
  v1 = *(v0 + 488);
  sub_227FEA45C(*(v0 + 480), v0 + 192);
  v2 = swift_allocObject();
  v3 = *(v0 + 240);
  *(v2 + 48) = *(v0 + 224);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(v0 + 256);
  *(v2 + 96) = *(v0 + 272);
  v4 = *(v0 + 208);
  *(v2 + 16) = *(v0 + 192);
  *(v2 + 32) = v4;
  sub_2281317B8(v1, sub_227FEB3F8, v2);

  sub_227FEA5B8(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227FE8E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  return MEMORY[0x2822009F8](sub_227FE8EB8, 0, 0);
}

uint64_t sub_227FE8EB8()
{
  v31 = v0;
  if (v0[26] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = v0[23];
    v1 = v0[24];

LABEL_14:
    v20 = v0[1];

    return v20(v2, v1);
  }

  v3 = v0[27];
  if (v3)
  {
    os_unfair_lock_lock((v3 + 16));
    v30 = MEMORY[0x277D839B0];
    v29[0] = 1;

    sub_2280449FC(v29, KeyPath, (v3 + 24));
    os_unfair_lock_unlock((v3 + 16));
  }

  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v5 = sub_22813882C();
  v0[29] = __swift_project_value_buffer(v5, qword_2813C89F0);
  v6 = sub_22813880C();
  v7 = sub_2281396BC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[25];
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_227FC3000, v6, v7, "Input will be truncated from token length %{public}ld", v9, 0xCu);
    MEMORY[0x22AAB28A0](v9, -1, -1);
  }

  v10 = v0[26];

  if (v10 <= 0)
  {
    v2 = v0[23];
    v1 = v0[24];
    v17 = sub_22813880C();
    v18 = sub_2281396BC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = 0;
      _os_log_impl(&dword_227FC3000, v17, v18, "Input has been truncated to token length %{public}ld", v19, 0xCu);
      MEMORY[0x22AAB28A0](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v12 = v0[25];
  v11 = v0[26];
  v0[30] = 1;
  v0[31] = v11;
  v14 = v0[23];
  v13 = v0[24];

  v15 = sub_227FE9BC0(v14, v13, v12, v11);
  v0[32] = v15;
  v0[33] = v16;
  v22 = v0[28];
  v23 = v22[3];
  v24 = v22[4];
  v25 = v15;
  v26 = v16;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v28 = (*(v24 + 16) + **(v24 + 16));
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_227FE9294;

  return v28(v25, v26, v23, v24);
}

uint64_t sub_227FE9294(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FE93E4, 0, 0);
  }
}

void sub_227FE93E4(uint64_t a1)
{
  v2 = *(v1 + 216);
  if (v2)
  {
    v3 = *(v1 + 280);
    KeyPath = swift_getKeyPath("@OnU");
    os_unfair_lock_lock((v2 + 16));
    v5 = MEMORY[0x277D84A28];
    *(v1 + 40) = MEMORY[0x277D84A28];
    *(v1 + 16) = v3;
    sub_227FE5EAC((v1 + 16), (v1 + 48));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v2 + 24);
    *(v1 + 176) = v7;
    *(v2 + 24) = 0x8000000000000000;
    v8 = *(v1 + 72);
    v9 = __swift_mutable_project_boxed_opaque_existential_0(v1 + 48, v8);
    v10 = *(v8 - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11, v9, v8);
    v12 = *v11;
    *(v1 + 104) = v5;
    *(v1 + 80) = v12;

    v14 = sub_227FEB130(v13, v7);
    v16 = *(v7 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v9) = v15;
      if (*(v7 + 24) < v19)
      {
        sub_2280196BC(v19, isUniquelyReferenced_nonNull_native);
        v20 = *(v1 + 176);
        v14 = sub_227FEB130(KeyPath, v20);
        if ((v9 & 1) != (v21 & 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);

          sub_2281399EC();
          return;
        }

LABEL_10:
        if (v9)
        {
LABEL_11:
          v22 = (*(v20 + 56) + 32 * v14);
          __swift_destroy_boxed_opaque_existential_1Tm_0(v22);
          sub_227FE5EAC((v1 + 80), v22);
LABEL_31:
          v44 = *(v1 + 216);
          __swift_destroy_boxed_opaque_existential_1Tm_0((v1 + 48));

          *(v44 + 24) = v20;
          os_unfair_lock_unlock((v44 + 16));

          goto LABEL_32;
        }

LABEL_29:
        v36 = *(v1 + 104);
        v37 = v14;
        v38 = __swift_mutable_project_boxed_opaque_existential_0(v1 + 80, v36);
        v39 = *(v36 - 8);
        v40 = swift_task_alloc();
        (*(v39 + 16))(v40, v38, v36);
        v41 = *v40;
        *(v1 + 136) = v5;
        *(v1 + 112) = v41;
        *(v20 + 8 * (v37 >> 6) + 64) |= 1 << v37;
        *(*(v20 + 48) + 8 * v37) = KeyPath;
        sub_227FE5EAC((v1 + 112), (*(v20 + 56) + 32 * v37));
        v42 = *(v20 + 16);
        v18 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        *(v20 + 16) = v43;

        __swift_destroy_boxed_opaque_existential_1Tm_0((v1 + 80));

        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v7;
        goto LABEL_10;
      }
    }

    v78 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E480, &qword_22813AAF0);
    v23 = sub_22813991C();
    v20 = v23;
    v24 = *(v7 + 16);
    if (v24)
    {
      v25 = (v23 + 64);
      v26 = ((1 << *(v20 + 32)) + 63) >> 6;
      if (v20 != v7 || v25 >= v7 + 64 + 8 * v26)
      {
        memmove(v25, (v7 + 64), 8 * v26);
        v24 = *(v7 + 16);
      }

      v27 = 0;
      *(v20 + 16) = v24;
      v28 = 1 << *(v7 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(v7 + 64);
      v31 = (v28 + 63) >> 6;
      v79 = v31;
      if (v30)
      {
        do
        {
          v32 = __clz(__rbit64(v30));
          v81 = (v30 - 1) & v30;
LABEL_26:
          v80 = v32 | (v27 << 6);
          v35 = *(*(v7 + 48) + 8 * v80);
          sub_227FEB0D4(*(v7 + 56) + 32 * v80, v1 + 144);
          *(*(v20 + 48) + 8 * v80) = v35;
          sub_227FE5EAC((v1 + 144), (*(v20 + 56) + 32 * v80));

          v31 = v79;
          v30 = v81;
        }

        while (v81);
      }

      v33 = v27;
      while (1)
      {
        v27 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_58;
        }

        if (v27 >= v31)
        {
          break;
        }

        v34 = *(v7 + 64 + 8 * v27);
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v81 = (v34 - 1) & v34;
          goto LABEL_26;
        }
      }
    }

    v14 = v78;
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_32:
  v45 = *(v1 + 280);
  v46 = *(v1 + 208);
  v47 = v45 - v46;
  if (__OFSUB__(v45, v46))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v47 < 1)
  {
    goto LABEL_46;
  }

  v48 = sub_22813880C();
  v49 = sub_2281396BC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = *(v1 + 280);
    v52 = *(v1 + 240);
    v51 = *(v1 + 248);
    v53 = swift_slowAlloc();
    *v53 = 134349568;
    *(v53 + 4) = v50;
    *(v53 + 12) = 2050;
    *(v53 + 14) = v51;
    *(v53 + 22) = 2050;
    *(v53 + 24) = v52;
    _os_log_impl(&dword_227FC3000, v48, v49, "Truncated token count %{public}ld exceeded target token count %{public}ld on attempt %{public}ld", v53, 0x20u);
    MEMORY[0x22AAB28A0](v53, -1, -1);
  }

  v54 = v47 + 50;
  if (__OFADD__(v47, 50))
  {
    goto LABEL_55;
  }

  v55 = *(v1 + 240);
  v18 = __OFADD__(v55, 1);
  v56 = v55 + 1;
  if (v18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v57 = *(v1 + 248);
  if (v54 <= 0x12C)
  {
    v54 = 300;
  }

  v58 = v57 - v54;
  if (v57 > v54)
  {
    v59 = *(v1 + 288);
    *(v1 + 240) = v56;
    *(v1 + 248) = v58;
    v61 = *(v1 + 192);
    v60 = *(v1 + 200);
    v62 = *(v1 + 184);

    v63 = sub_227FE9BC0(v62, v61, v60, v58);
    *(v1 + 256) = v63;
    *(v1 + 264) = v64;
    if (v59)
    {
      v65 = *(v1 + 8);

      v65();
    }

    else
    {
      v72 = *(v1 + 224);
      v73 = v72[3];
      v74 = v72[4];
      v75 = v63;
      v76 = v64;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      v82 = (*(v74 + 16) + **(v74 + 16));
      v77 = swift_task_alloc();
      *(v1 + 272) = v77;
      *v77 = v1;
      v77[1] = sub_227FE9294;

      v82(v75, v76, v73, v74);
    }

    return;
  }

  v45 = *(v1 + 280);
LABEL_46:
  v67 = *(v1 + 256);
  v66 = *(v1 + 264);
  v68 = sub_22813880C();
  v69 = sub_2281396BC();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134349056;
    *(v70 + 4) = v45;
    _os_log_impl(&dword_227FC3000, v68, v69, "Input has been truncated to token length %{public}ld", v70, 0xCu);
    MEMORY[0x22AAB28A0](v70, -1, -1);
  }

  v71 = *(v1 + 8);

  v71(v67, v66);
}

uint64_t sub_227FE9BC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return v6;
  }

  v10 = sub_2280DB150(a1, a2);
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v12 = sub_2280E9BE4(0xD000000000000011, 0x8000000228144170, 0);
  if (v4)
  {

    return v6;
  }

  v13 = v12;
  v33 = a3;
  v34 = a4;
  v14 = 7;
  if (((a2 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v14 = 11;
  }

  v31 = v10;
  v32 = (v14 | (v7 << 16));
  v37[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E550, &qword_22813B0F0);
  sub_227FEB294();
  sub_227FDB420();
  v38 = sub_22813973C();
  v35 = v15;
  v37[0] = MEMORY[0x277D84F90];
  v16 = sub_22813927C();
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a2;
  v17[4] = v37;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_227FEB2F8;
  *(v18 + 24) = v17;
  aBlock[4] = sub_227FEB304;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2280E6468;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  [v13 enumerateMatchesInString:v16 options:0 range:v38 usingBlock:{v35, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_35;
  }

  v21 = v37[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E558, &qword_22813B0F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813B030;
  *(inited + 32) = v31;
  *(inited + 40) = v21;
  isEscapingClosureAtFileLocation = sub_227FEA1DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E560, &qword_22813B100);
  swift_arrayDestroy();
  v16 = *(isEscapingClosureAtFileLocation + 16);
  if (!v16)
  {
    v18 = 4 * v7;
    v17 = v32;
LABEL_15:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

  v18 = 4 * v7;
  v17 = v32;
  if (*(isEscapingClosureAtFileLocation + 8 * v16 + 24) >> 14 != 4 * v7)
  {
    goto LABEL_15;
  }

  v18 = *(isEscapingClosureAtFileLocation + 8 * v16 + 24) >> 14;
  while (1)
  {
    v25 = floor(v16 / v33 * v34);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v25 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    if (!__OFSUB__(v25, 1))
    {
      break;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    isEscapingClosureAtFileLocation = sub_2281339CC(0, v16 + 1, 1, isEscapingClosureAtFileLocation);
LABEL_16:
    v24 = *(isEscapingClosureAtFileLocation + 16);
    v23 = *(isEscapingClosureAtFileLocation + 24);
    v16 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      isEscapingClosureAtFileLocation = sub_2281339CC((v23 > 1), v24 + 1, 1, isEscapingClosureAtFileLocation);
    }

    *(isEscapingClosureAtFileLocation + 16) = v16;
    *(isEscapingClosureAtFileLocation + 8 * v24 + 32) = v17;
  }

  v26 = (v25 - 1) & ~((v25 - 1) >> 63);
  if (v16 - 1 < v26)
  {
    v26 = v16 - 1;
  }

  if (v26 >= v16)
  {
    goto LABEL_39;
  }

  v27 = *(isEscapingClosureAtFileLocation + 8 * v26 + 32);
  if (v18 <= v27 >> 14)
  {
    v28 = v17;
  }

  else
  {
    v28 = v27;
  }

  if (v18 == v28 >> 14)
  {
  }

  else
  {
    v29 = sub_22813948C();
    v6 = MEMORY[0x22AAB18D0](v29);
  }

  return v6;
}

uint64_t sub_227FEA074@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath("@OnU");
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D08((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_227FEA140@<X0>(os_unfair_lock_s **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

char *sub_227FEA1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    v28 = v3;

    v1 = 0;
    sub_227FEA664(&v28);

    v14 = v28;
    v15 = *(v28 + 2);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        v20 = *(v14 + 2);
        if (v18 >= v20)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v21 = *&v14[8 * v18 + 32];
        v22 = v18 + 1;
        if ((v16 & ((v21 ^ v17) < 0x4000)) == 1)
        {
          break;
        }

LABEL_27:
        v17 = v21;
        v18 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2281339CC(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        v1 = (v26 + 1);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_2281339CC((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v1;
        *&v19[8 * v26 + 32] = v17;
        v16 = 1;
        if (v18 == v15)
        {
          goto LABEL_34;
        }
      }

      v23 = &v14[8 * v18 + 40];
      while (v15 != v22)
      {
        if (v22 >= v20)
        {
          goto LABEL_35;
        }

        v24 = *v23;
        v23 += 8;
        v21 = v24;
        ++v22;
        if ((v24 ^ v17) >= 0x4000)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

LABEL_34:

    return v19;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_2281339CC(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        v10 = *(v3 + 2);
        if ((*(v3 + 3) >> 1) - v10 < v5)
        {
          goto LABEL_38;
        }

        memcpy(&v3[8 * v10 + 32], (v4 + 32), 8 * v5);

        if (v5)
        {
          v11 = *(v3 + 2);
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_39;
          }

          *(v3 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_37;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_227FEA494(void *a1)
{
  sub_22813988C();

  v2 = a1[8];
  v3 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](93, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t objectdestroyTm_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_0((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_227FEA5B8(uint64_t a1)
{
  v2 = type metadata accessor for SignpostToken(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227FEA664(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227FEA63C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22813997C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22813954C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_227FEA79C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_227FEA79C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_227FEAF6C(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_227FEACE4((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 8 * v8);
      v12 = v11 >> 14;
      v13 = *(*a3 + 8 * v10) >> 14;
      v14 = v10 + 2;
      while (v6 != v14)
      {
        v15 = *(*a3 + 8 * v14);
        v16 = (v12 < v13) ^ (v15 >> 14 >= v11 >> 14);
        ++v14;
        v11 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + 8 * v18);
            *(v21 + 8 * v18) = *(v21 + 8 * v17);
            *(v21 + 8 * v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2281337BC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_2281337BC((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_227FEACE4((*a3 + 8 * v74), (*a3 + 8 * *&v9[16 * v35 + 32]), (*a3 + 8 * v75), v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_227FEAF6C(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_227FEAEE0(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v8 - 8;
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + 8 * v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >> 14 >= *v27 >> 14)
    {
LABEL_29:
      ++v8;
      v23 += 8;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_227FEACE4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 >> 14 < *v17 >> 14)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_227FEAEE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FEAF6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_227FEAF80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E568, &qword_22813B108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_227FEB0D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_227FEB130(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
  v4 = sub_2281391DC();
  return sub_227FEB1AC(a1, v4, a2);
}

unint64_t sub_227FEB1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = -1 << *(a3 + 32);
  v5 = a2 & ~v4;
  if ((*(a3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      if (sub_22813926C())
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_227FEB294()
{
  result = qword_2813C4650;
  if (!qword_2813C4650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D81E550, &qword_22813B0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4650);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227FEB348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227FEB390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_227FEB424()
{
  v0 = sub_22813808C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281380AC();
  if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D0D7A0])
  {
    sub_22813732C();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v4 = sub_22813738C();
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v4;
  }

  else
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v6 = sub_22813882C();
    __swift_project_value_buffer(v6, qword_2813C89F0);
    v7 = sub_22813880C();
    v8 = sub_2281396DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_227FC3000, v7, v8, "Handling @unknown default for llm() in GenerativeAssistantSettingsProvider.modelBundleIdentifier:", v9, 2u);
      MEMORY[0x22AAB28A0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_227FEB638(uint64_t a1)
{
  result = sub_22813882C();
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

uint64_t sub_227FEB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  type metadata accessor for SessionCache.CacheKey(255, v5, v6, a4);
  sub_228136FCC();
  type metadata accessor for SessionCache.CacheEntry(255, v5, v6, v7);
  sub_227FEB8D0();
  sub_228137CAC();
  swift_getWitnessTable();
  sub_2281391CC();
  sub_2281374EC();
  sub_22813976C();
  v8 = qword_2813C7C88;
  v9 = sub_22813882C();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);

  return v4;
}

uint64_t sub_227FEB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227FEB6E0(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

unint64_t sub_227FEB8D0()
{
  result = qword_2813C8778;
  if (!qword_2813C8778)
  {
    sub_228136FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8778);
  }

  return result;
}

uint64_t sub_227FEB930(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_228136F8C();
    if (v3 <= 0x3F)
    {
      result = sub_228136FCC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_227FEB9D8(uint64_t a1)
{
  sub_227FEBAA8(319);
  if (v1 <= 0x3F)
  {
    sub_227FEBB00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227FEBAA8(uint64_t a1)
{
  if (!qword_2813C6FE8[0])
  {
    type metadata accessor for ModelBundleIdentifier(255);
    v1 = sub_22813977C();
    if (!v2)
    {
      atomic_store(v1, qword_2813C6FE8);
    }
  }
}

void sub_227FEBB00()
{
  if (!qword_2813C4660)
  {
    v0 = sub_22813977C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C4660);
    }
  }
}

uint64_t sub_227FEBB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ModelBundleIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E578, &unk_22813B280);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  if (*a1 != *a2 && (sub_2281399BC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v18 = *(a2 + 48);
  if ((*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != v18) && (sub_2281399BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v31 = type metadata accessor for SessionCache.CacheKey(0, a3, a4, v18);
  v19 = v31[13];
  v20 = *(v15 + 48);
  sub_227FEC1B0(a1 + v19, v17);
  sub_227FEC1B0(a2 + v19, &v17[v20]);
  v21 = *(v9 + 48);
  if (v21(v17, 1, v8) == 1)
  {
    if (v21(&v17[v20], 1, v8) == 1)
    {
      sub_227FEC284(v17, &qword_27D81E570, &qword_22813B1F0);
      goto LABEL_20;
    }

LABEL_16:
    sub_227FEC284(v17, &qword_27D81E578, &unk_22813B280);
    return 0;
  }

  sub_227FEC1B0(v17, v14);
  if (v21(&v17[v20], 1, v8) == 1)
  {
    sub_227FC8720(v14);
    goto LABEL_16;
  }

  sub_227FEC220(&v17[v20], v11);
  v23 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v14, v11);
  sub_227FC8720(v11);
  sub_227FC8720(v14);
  sub_227FEC284(v17, &qword_27D81E570, &qword_22813B1F0);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v24 = v31[14];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 == 2)
    {
      goto LABEL_25;
    }

    return 0;
  }

  result = 0;
  if (v26 != 2 && ((v26 ^ v25) & 1) == 0)
  {
LABEL_25:
    v27 = v31[15];
    v28 = *(a1 + v27);
    v29 = *(a2 + v27);
    if (v28 == 2)
    {
      if (v29 == 2)
      {
        return 1;
      }
    }

    else if (v29 != 2 && ((v29 ^ v28) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_227FEBEE4(uint64_t a1, int *a2)
{
  v5 = type metadata accessor for ModelBundleIdentifier(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_22813923C();
  sub_22813923C();
  sub_228139ADC();
  sub_22813923C();
  sub_228139ADC();
  sub_227FEC1B0(v2 + a2[13], v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_228139ACC();
  }

  else
  {
    sub_227FEC220(v11, v8);
    sub_228139ACC();
    ModelBundleIdentifier.hash(into:)(a1);
    sub_227FC8720(v8);
  }

  if (*(v2 + a2[14]) != 2)
  {
    sub_228139ACC();
  }

  sub_228139ACC();
  if (*(v2 + a2[15]) != 2)
  {
    sub_228139ACC();
  }

  return sub_228139ACC();
}

uint64_t sub_227FEC0F4(int *a1)
{
  sub_228139AAC();
  sub_227FEBEE4(v3, a1);
  return sub_228139AEC();
}

uint64_t sub_227FEC144(uint64_t a1, int *a2)
{
  sub_228139AAC();
  sub_227FEBEE4(v4, a2);
  return sub_228139AEC();
}

uint64_t sub_227FEC1B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FEC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FEC284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FEC314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_22813701C();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22813713C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813C86B0 != -1)
  {
    swift_once();
  }

  v13 = *(off_2813C86B8 + 2);
  if (v13)
  {
    v15 = *(v10 + 16);
    v14 = v10 + 16;
    v16 = off_2813C86B8 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v36 = *(v14 + 56);
    v37 = v15;
    v38 = v14;
    v17 = (v14 - 8);
    v18 = (v34 + 48);
    v35 = (v34 + 32);
    v19 = MEMORY[0x277D84F90];
    v32 = v8;
    v33 = v6;
    v31 = v9;
    v15(v12, v16, v9);
    while (1)
    {
      sub_22813710C();
      (*v17)(v12, v9);
      if ((*v18)(v5, 1, v6) == 1)
      {
        sub_227FECD5C(v5);
      }

      else
      {
        v20 = *v35;
        (*v35)(v8, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_228133AD0(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_228133AD0((v21 > 1), v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        v6 = v33;
        v23 = v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22;
        v8 = v32;
        v20(v23, v32, v33);
        v9 = v31;
      }

      v16 += v36;
      if (!--v13)
      {
        break;
      }

      v37(v12, v16, v9);
    }
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v24 = sub_227FECF2C(v19);

  v25 = sub_228028A68(&unk_283B5B150);
  swift_arrayDestroy();
  sub_2280EAEE0(v28, v29, v25);

  sub_227FEC80C(v24);
  return sub_22813799C();
}

uint64_t sub_227FEC6F4(char *a1, uint64_t a2, uint64_t a3)
{
  if (sub_2281006F8(a1))
  {
    return sub_228100294(a3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FEC74C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22813936C();
  v5 = MEMORY[0x22AAB1BF0](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_2281393DC();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_2280BDFE4(v13, v9, v10);

      v9 = sub_2281393DC();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_227FEC80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E580, &unk_2281402B0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = v33 - v7;
  v38 = sub_22813713C();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v44 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22813701C();
  MEMORY[0x28223BE20](v35);
  v36 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v33[3] = v10 + 56;
  v33[4] = v10 + 16;
  v34 = v10;
  v37 = v8;
  v33[1] = v8 + 32;
  v33[2] = v10 + 8;
  v42 = a1;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v21 = v35;
  v20 = v36;
  for (i = v39; v15; result = (*(v37 + 32))(v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, v44, v38))
  {
    v43 = v19;
LABEL_9:
    v24 = v34;
    v25 = *(v34 + 16);
    v25(v20, *(v42 + 48) + *(v34 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v21);
    v25(i, v20, v21);
    (*(v24 + 56))(i, 0, 1, v21);
    v26 = sub_2281370BC();
    (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
    v27 = sub_22813708C();
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
    sub_2281370FC();
    (*(v24 + 8))(v20, v21);
    v19 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2281336A0(0, v19[2] + 1, 1, v19);
    }

    v29 = v19[2];
    v28 = v19[3];
    if (v29 >= v28 >> 1)
    {
      v19 = sub_2281336A0((v28 > 1), v29 + 1, 1, v19);
    }

    v15 &= v15 - 1;
    v19[2] = v29 + 1;
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v16)
    {

      v45 = v19;
      v30 = sub_228102F0C();
      MEMORY[0x28223BE20](v30);
      v33[-2] = &v45;
      v32 = sub_2280CAD30(sub_227FED098, &v33[-4], v31);

      return v32;
    }

    v15 = *(v12 + 8 * v23);
    ++v18;
    if (v15)
    {
      v43 = v19;
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227FECD5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227FECDC4(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v3 = sub_22813713C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *a2;
  v10 = *(*a2 + 16);
  v13[1] = v4 + 16;
  while (1)
  {
    v11 = v8;
    if (v10 == v8)
    {
      return v10 != v11;
    }

    if (v8 >= *(v9 + 16))
    {
      break;
    }

    (*(v4 + 16))(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v3);
    v12 = sub_228100294(v14);
    result = (*(v4 + 8))(v7, v3);
    if (v12)
    {
      return v10 != v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227FECF2C(uint64_t a1)
{
  v2 = sub_22813701C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_227FED0B8();
  result = MEMORY[0x22AAB1BF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_2280BDAE0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_227FED0B8()
{
  result = qword_2813C8768;
  if (!qword_2813C8768)
  {
    sub_22813701C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8768);
  }

  return result;
}

uint64_t sub_227FED110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_227FED188();
  result = MEMORY[0x22AAB1BF0](v2, &type metadata for Com_Apple_Summarizationkit_Proto_SummarizationStyle, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_2280BDE78(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_227FED188()
{
  result = qword_2813C8610;
  if (!qword_2813C8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8610);
  }

  return result;
}

uint64_t sub_227FED20C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *v3;
  v5 = *(v3 + 1);
  a3(a1, a2);

  v6 = sub_22813999C();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
  }

  v9 = sub_228136E1C();

  v10 = NSError.loggingDescription.getter();
  return v10;
}

uint64_t sub_227FED308(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2281338C0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_227FED428(char *result)
{
  v3 = *(result + 2);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2281338C0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_227FF7CB8(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = &result[v13];
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = sub_2281338C0((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 3) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_227FED66C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_227FED7B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_228133CE0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.requestIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_227FED8D4(uint64_t *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_228136FCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];

  *a2 = v12;
  *(a2 + 1) = v11;
  sub_228136F9C();
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_228136FBC();
    if (v13(v6, 1, v7) != 1)
    {
      sub_227FFB0A0(v6, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v14 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  return (*(v8 + 40))(&a2[*(v14 + 20)], v10, v7);
}

uint64_t ClassificationRequestHandler.RequestInfo.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_228136FCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  *v2 = a1;
  *(v2 + 1) = a2;
  sub_228136F9C();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_228136FBC();
    if (v12(v7, 1, v8) != 1)
    {
      sub_227FFB0A0(v7, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  v13 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  return (*(v9 + 40))(&v2[*(v13 + 20)], v11, v8);
}

void (*ClassificationRequestHandler.RequestInfo.requestIdentifier.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = sub_228136FCC();
  v5[2] = v8;
  v9 = *(v8 - 8);
  v5[3] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[4] = v10;
  return sub_227FEDDC0;
}

void sub_227FEDDC0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[4];
    v4 = v2[1];
  }

  else
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[1];
    sub_228136F9C();
    v8 = *(v6 + 48);
    if (v8(v7, 1, v5) == 1)
    {
      v10 = v2[1];
      v9 = v2[2];
      sub_228136FBC();
      if (v8(v10, 1, v9) != 1)
      {
        sub_227FFB0A0(v2[1], &qword_27D81E588, &qword_22813B2D0);
      }
    }

    else
    {
      (*(v2[3] + 32))(v2[4], v2[1], v2[2]);
    }

    v11 = v2[3];
    v3 = v2[4];
    v4 = v2[1];
    v12 = v2[2];
    v13 = *v2;
    v14 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
    (*(v11 + 40))(v13 + *(v14 + 20), v3, v12);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t ClassificationRequestHandler.RequestInfo.requestUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 20);
  v4 = sub_228136FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ClassificationRequestHandler.RequestInfo.useCaseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 24));

  return v1;
}

uint64_t ClassificationRequestHandler.RequestInfo.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.clientApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ClassificationRequestHandler.RequestInfo.clientProcessIdentifier.setter(int a1)
{
  result = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t _s16SummarizationKit28ClassificationRequestHandlerC0D4InfoV27clientApplicationIdentifierSSvg_0()
{
  v1 = *(v0 + *(type metadata accessor for ClassificationRequestHandler.RequestInfo(0) + 28));

  return v1;
}

uint64_t ClassificationRequestHandler.RequestInfo.init(requestIdentifier:useCaseIdentifier:clientApplicationIdentifier:clientProcessIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, char *a8@<X8>)
{
  v28 = a7;
  v27 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v27 - v15;
  v17 = sub_228136FCC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = a1;
  *(a8 + 1) = a2;

  sub_228136F9C();

  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    sub_228136FBC();
    if (v21(v16, 1, v17) != 1)
    {
      sub_227FFB0A0(v16, &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
  }

  v22 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  result = (*(v18 + 32))(&a8[v22[5]], v20, v17);
  v24 = &a8[v22[6]];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &a8[v22[7]];
  v26 = v27;
  *v25 = a5;
  *(v25 + 1) = v26;
  *&a8[v22[8]] = v28;
  return result;
}

uint64_t sub_227FEE3EC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_227FEE41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228136FCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_227FEE490(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_227FEE4C8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t ClassificationRequestHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  ClassificationRequestHandler.init()();
  return v0;
}

uint64_t ClassificationRequestHandler.init()()
{
  v1 = sub_22813882C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v1, qword_2813C8A08);
  v7 = *(v2 + 16);
  v7(v0 + v5, v6, v1);
  v8 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  if (qword_2813C4928 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Signpost(0);
  v10 = __swift_project_value_buffer(v9, qword_2813C88D0);
  sub_227FF9A3C(v10, v0 + v8, type metadata accessor for Signpost);
  v7(v4, v0 + v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E590, &qword_22813B2D8);
  v11 = swift_allocObject();
  v12 = sub_227FE4B5C(MEMORY[0x277D84F90]);
  *(v11 + 16) = 0;
  *(v11 + 24) = v12;
  (*(v2 + 32))(v11 + qword_2813C7C88, v4, v1);
  v13 = (v11 + qword_2813C7D90);
  *v13 = sub_227FF924C;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache) = v11;
  return v0;
}

uint64_t ClassificationRequestHandler.prewarm(requestInfo:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_227FEE808;

  return sub_227FEE8FC(a1, 0);
}

uint64_t sub_227FEE808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227FEE8FC(uint64_t a1, char a2)
{
  *(v3 + 248) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  type metadata accessor for SignpostToken(0);
  *(v3 + 88) = swift_task_alloc();
  v4 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v3 + 96) = v4;
  v5 = *(v4 - 8);
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 + 64);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FEEA60, 0, 0);
}

uint64_t sub_227FEEA60()
{
  v44 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 248);
  v6 = *(v0 + 72);
  if (*(v0 + 248))
  {
    v7 = 0xEB00000000206465;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  *(v0 + 200) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9A3C(v6, v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v2, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v3, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v6, v4, type metadata accessor for ClassificationRequestHandler.RequestInfo);

  sub_22810A6C8();
  sub_22810A6D0();
  v8 = sub_22813880C();
  v9 = sub_2281396BC();

  if (os_log_type_enabled(v8, v9))
  {
    if (v5)
    {
      v10 = 0x7461636572706564;
    }

    else
    {
      v10 = 0;
    }

    v12 = *(v0 + 184);
    v11 = *(v0 + 192);
    v40 = *(v0 + 176);
    v41 = *(v0 + 168);
    v13 = *(v0 + 96);
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v14 = 136316418;
    *(v14 + 4) = sub_227FCC340(v10, v7, &v43);
    *(v14 + 12) = 2082;
    v16 = *v11;
    v15 = v11[1];

    sub_227FFA994(v11, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v17 = sub_227FCC340(v16, v15, &v43);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2082;
    v18 = (v12 + v13[6]);
    v19 = *v18;
    v20 = v18[1];

    sub_227FFA994(v12, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v21 = sub_227FCC340(v19, v20, &v43);

    *(v14 + 24) = v21;
    *(v14 + 32) = 2082;
    v22 = (v40 + v13[7]);
    v23 = *v22;
    v24 = v22[1];

    sub_227FFA994(v40, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v25 = sub_227FCC340(v23, v24, &v43);

    *(v14 + 34) = v25;
    *(v14 + 42) = 1026;
    LODWORD(v13) = *(v41 + v13[8]);
    sub_227FFA994(v41, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    *(v14 + 44) = v13;
    *(v14 + 48) = 1026;
    *(v14 + 50) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v8, v9, "Received %sprewarm request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v14, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v42, -1, -1);
    MEMORY[0x22AAB28A0](v14, -1, -1);
  }

  else
  {
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);
    sub_227FFA994(*(v0 + 168), type metadata accessor for ClassificationRequestHandler.RequestInfo);

    sub_227FFA994(v28, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v27, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v26, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  if (qword_2813C4920 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 160);
  v30 = *(v0 + 104);
  v31 = *(v0 + 72);
  v32 = type metadata accessor for Signpost(0);
  *(v0 + 208) = __swift_project_value_buffer(v32, qword_2813C88B8);
  sub_227FF9A3C(v31, v29, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *(v0 + 216) = v34;
  sub_227FF99D8(v29, v34 + v33);
  v35 = swift_allocObject();
  *(v0 + 224) = v35;
  *(v35 + 16) = sub_227FFB234;
  *(v35 + 24) = v34;

  sub_2281324C4();
  v36 = swift_task_alloc();
  *(v0 + 232) = v36;
  *v36 = v0;
  v36[1] = sub_227FEEEFC;
  v38 = *(v0 + 72);
  v37 = *(v0 + 80);

  return sub_227FF7824(v36, v37, v38);
}

uint64_t sub_227FEEEFC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_227FEF324;
  }

  else
  {
    v2 = sub_227FEF010;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FEF010()
{
  v19 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_2281324D4();
  sub_227FFA994(v2, type metadata accessor for SignpostToken);

  sub_227FF9A3C(v3, v1, type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v4 = sub_22813880C();
  v5 = sub_2281396BC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    if (*(v0 + 248))
    {
      v8 = 0xEB00000000206465;
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    if (*(v0 + 248))
    {
      v9 = 0x7461636572706564;
    }

    else
    {
      v9 = 0;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    v12 = sub_227FCC340(v9, v8, &v18);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2082;
    v13 = *v7;
    v14 = v7[1];

    sub_227FFA994(v7, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v15 = sub_227FCC340(v13, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_227FC3000, v4, v5, "Successfully handled %sprewarm request [requestIdentifier: %{public}s]", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {

    sub_227FFA994(v7, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227FEF324()
{
  v43 = v0;
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v35 = v0[18];
  v36 = v0[17];
  v37 = v0[16];
  v39 = v0[15];
  v4 = v0[11];
  v5 = v0[9];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = sub_227FFB234;
  v6[4] = v2;
  swift_beginAccess();
  *(v3 + 16) = sub_227FFB33C;
  *(v3 + 24) = v6;

  v7 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v4, type metadata accessor for SignpostToken);

  sub_227FF9A3C(v5, v35, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v5, v36, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v5, v37, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  sub_227FF9A3C(v5, v39, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v8 = v1;
  v9 = sub_22813880C();
  v10 = sub_2281396DC();

  if (os_log_type_enabled(v9, v10))
  {
    v41 = v10;
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];
    v38 = v0[15];
    v14 = v0[12];
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42[0] = v40;
    *v15 = 136447234;
    v17 = *v11;
    v16 = v11[1];

    sub_227FFA994(v11, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v18 = sub_227FCC340(v17, v16, v42);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = (v12 + v14[6]);
    v20 = *v19;
    v21 = v19[1];

    sub_227FFA994(v12, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v22 = sub_227FCC340(v20, v21, v42);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2082;
    v23 = (v13 + v14[7]);
    v24 = *v23;
    v25 = v23[1];

    sub_227FFA994(v13, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v26 = sub_227FCC340(v24, v25, v42);

    *(v15 + 24) = v26;
    *(v15 + 32) = 1026;
    LODWORD(v26) = *(v38 + v14[8]);
    sub_227FFA994(v38, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    *(v15 + 34) = v26;
    *(v15 + 38) = 2082;
    swift_getErrorValue();
    v27 = Error.loggingDescription.getter(v0[6], v0[7]);
    v29 = sub_227FCC340(v27, v28, v42);

    *(v15 + 40) = v29;
    _os_log_impl(&dword_227FC3000, v9, v41, "Prewarm request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v15, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v40, -1, -1);
    MEMORY[0x22AAB28A0](v15, -1, -1);
  }

  else
  {
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    sub_227FFA994(v0[15], type metadata accessor for ClassificationRequestHandler.RequestInfo);

    sub_227FFA994(v32, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v31, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    sub_227FFA994(v30, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  }

  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t ClassificationRequestHandler.prewarm(for:clientApplicationIdentifier:clientProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 144) = a4;
  *(v5 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E588, &qword_22813B2D0);
  *(v5 + 40) = swift_task_alloc();
  v6 = sub_228138CEC();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_228136FCC();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FEF988, 0, 0);
}

uint64_t sub_227FEF988()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v27 = *(v0 + 40);
  sub_228136FBC();
  v8 = sub_228136FAC();
  v10 = v9;
  (*(v4 + 8))(v2, v3);
  (*(v5 + 104))(v6, *MEMORY[0x277D4B188], v7);
  v11 = sub_228138CDC();
  v28 = v12;
  (*(v5 + 8))(v6, v7);
  *v1 = v8;
  v1[1] = v10;

  sub_228136F9C();

  v13 = *(v4 + 48);
  if (v13(v27, 1, v3) == 1)
  {
    v14 = *(v0 + 72);
    v15 = *(v0 + 40);
    sub_228136FBC();
    if (v13(v15, 1, v14) != 1)
    {
      sub_227FFB0A0(*(v0 + 40), &qword_27D81E588, &qword_22813B2D0);
    }
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  }

  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  v19 = *(v0 + 144);
  v21 = *(v0 + 16);
  v20 = *(v0 + 24);
  (*(*(v0 + 80) + 32))(v17 + v18[5], *(v0 + 88), *(v0 + 72));
  v22 = (v17 + v18[6]);
  *v22 = v11;
  v22[1] = v28;
  v23 = (v17 + v18[7]);
  *v23 = v21;
  v23[1] = v20;
  *(v17 + v18[8]) = v19;
  sub_227FF99D8(v17, v16);

  v24 = swift_task_alloc();
  *(v0 + 128) = v24;
  *v24 = v0;
  v24[1] = sub_227FEFC00;
  v25 = *(v0 + 120);

  return sub_227FEE8FC(v25, 1);
}

uint64_t sub_227FEFC00()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_227FEFDDC;
  }

  else
  {
    v2 = sub_227FEFD14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FEFD14()
{
  sub_227FFA994(*(v0 + 120), type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227FEFDDC()
{
  sub_227FFA994(*(v0 + 120), type metadata accessor for ClassificationRequestHandler.RequestInfo);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ClassificationRequestHandler.classifyPriority(_:options:requestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[22] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = sub_228138ACC();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF0034, 0, 0);
}

{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[40] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  type metadata accessor for PriorityModelSession.Input(0);
  v5[45] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[46] = v7;
  v5[47] = *(v7 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v8 = sub_228138ACC();
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF1CD4, 0, 0);
}

{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[22] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = sub_228138ACC();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF39AC, 0, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[20] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF4F04, 0, 0);
}

{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[22] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v7 = sub_228138ACC();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF58A0, 0, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v5[20] = swift_task_alloc();
  v6 = sub_2281386FC();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF6D50, 0, 0);
}

uint64_t sub_227FF0034()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v4 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v4, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v5 = sub_2280D5C74();
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v5;
  *(v0 + 272) = v6;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 280) = v7;
  sub_227FFA05C((v0 + 56), v7 + 16);
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v8 + 16) = sub_227FFA074;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_227FF01F4;
  v10 = *(v0 + 232);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 152);

  return sub_227FF0C60(v10, v5, v11, v12, v13);
}

uint64_t sub_227FF01F4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_227FF0838;
  }

  else
  {
    v2 = sub_227FF0308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF0308()
{
  v1 = *(v0 + 304);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 192);
    sub_227FFA698(*(v0 + 168) + *(v0 + 256), v4, v2);
    v6 = v2;
    sub_227FFA31C(v4, v3, v2);

    *(v0 + 136) = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v8 = swift_dynamicCast();
    v9 = *(v5 + 56);
    if (v8)
    {
      v10 = *(v0 + 200);
      v11 = *(v0 + 208);
      v12 = *(v0 + 184);
      v13 = *(v0 + 192);
      v14 = *(v0 + 176);
      v9(v14, 0, 1, v12);
      (*(v13 + 32))(v11, v14, v12);
      v15 = *(v13 + 16);
      v15(v10, v11, v12);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v16 = swift_allocError();
      v15(v17, v10, v12);
      v18 = swift_allocObject();
      *(v18 + 16) = 3;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      v19 = sub_227FF9AA4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFA9F4, v18);

      v20 = *(v13 + 8);
      v20(v10, v12);
      *(v0 + 120) = 3;
      *(v0 + 128) = v19;
      sub_227FE7384();
      v21 = sub_22813999C();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = swift_allocError();
        *v32 = 3;
        *(v32 + 8) = v19;
      }

      v33 = *(v0 + 208);
      v34 = *(v0 + 184);
      swift_willThrow();

      v20(v33, v34);
      v2 = v22;
    }

    else
    {
      v31 = *(v0 + 176);
      v9(v31, 1, 1, *(v0 + 184));
      sub_227FFB0A0(v31, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v36 = *(v0 + 280);
    v35 = *(v0 + 288);
    v37 = *(v0 + 240);
    v38 = swift_allocObject();
    v38[2] = v2;
    v38[3] = sub_227FFA074;
    v38[4] = v36;
    swift_beginAccess();
    *(v35 + 16) = sub_227FFA988;
    *(v35 + 24) = v38;

    v39 = v2;

    swift_willThrow();
    sub_2281324D4();
    sub_227FFA994(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v30 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 264);
    v24 = *(v0 + 248);
    v25 = *(v0 + 232);
    v26 = *(v0 + 240);
    v27 = *(v0 + 216);
    v28 = *(v0 + 224);
    v29 = *(v0 + 144);
    sub_227FFA07C(*(v0 + 168) + *(v0 + 256), v24);
    sub_227FFA31C(v24, v23, 0);
    (*(v28 + 32))(v29, v25, v27);
    sub_2281324D4();
    sub_227FFA994(v26, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_227FF0838()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  sub_227FFA698(*(v0 + 168) + *(v0 + 256), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 136) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);
    v13 = *(v0 + 176);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFA9F4, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 120) = 3;
    *(v0 + 128) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 208);
    v25 = *(v0 + 184);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 176);
    v8(v22, 1, 1, *(v0 + 184));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v27 = *(v0 + 280);
  v26 = *(v0 + 288);
  v28 = *(v0 + 240);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_227FFA074;
  v29[4] = v27;
  swift_beginAccess();
  *(v26 + 16) = sub_227FFA988;
  *(v26 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_227FF0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a1;
  v5[15] = a2;
  v7 = sub_228136F8C();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();
  v8 = sub_22813899C();
  v5[21] = v8;
  v5[22] = *(v8 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = type metadata accessor for PriorityModelSession.Input(0);
  v5[25] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[26] = v9;
  *v9 = v5;
  v9[1] = sub_227FF0DE8;

  return sub_227FF15E8(a4);
}

uint64_t sub_227FF0DE8(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227FF0F48, 0, 0);
  }
}

uint64_t sub_227FF0F48()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v38 = v0[21];
  v41 = v0[20];
  v5 = v0[19];
  v42 = v0[18];
  v43 = v0[28];
  v7 = v0[16];
  v6 = v0[17];
  v35 = v0[15];
  v0[11] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v0[12] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  v44 = v0 + 8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
  sub_227FF9A3C(v7, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  (*(v4 + 16))(v3, v6, v38);
  v9 = sub_22813898C();
  v11 = v10;
  sub_2281388CC();
  v12 = sub_22813895C();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v36 = v15;
  v37 = v14;
  v16 = sub_22813893C();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v39 = v19;
  v40 = v18;
  (*(v4 + 8))(v3, v38);
  *v2 = v9;
  *(v2 + 8) = v11;
  *(v2 + 16) = 0;
  (*(v5 + 32))(v2 + v1[6], v41, v42);
  v20 = (v2 + v1[7]);
  *v20 = v37;
  v20[1] = v36;
  v21 = (v2 + v1[8]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v2 + v1[9]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v2 + v1[10]);
  *v23 = v40;
  v23[1] = v39;
  v24 = (v2 + v1[11]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(v2 + v1[12]) = 0;
  type metadata accessor for SharedData();
  v25 = swift_allocObject();
  v0[29] = v25;
  type metadata accessor for SKAssetManager();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  swift_initStackObject();
  v26 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v27 = FilterRules.init(assetManager:)(v26);
  if (v43)
  {

    sub_227FFA994(v0[25], type metadata accessor for PriorityModelSession.Input);

    __swift_destroy_boxed_opaque_existential_1Tm_1(v44);

    v28 = v0[1];

    return v28();
  }

  else
  {
    *(v25 + 16) = v27;

    *(v25 + 24) = v35;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v30 = v0[27];
    v31 = v0[25];
    v0[13] = v25;
    v32 = swift_task_alloc();
    v0[30] = v32;
    v32[2] = v30;
    v32[3] = v31;
    v32[4] = v44;
    v32[5] = v35;
    v33 = swift_task_alloc();
    v0[31] = v33;
    sub_228138ACC();
    *v33 = v0;
    v33[1] = sub_227FF1348;
    v34 = v0[14];

    return MEMORY[0x282200908](v34, v0 + 13, &unk_22813B468, v32, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
  }
}

uint64_t sub_227FF1348()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_227FF152C;
  }

  else
  {
    v2 = sub_227FF146C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF146C()
{
  v1 = v0[25];

  sub_227FFA994(v1, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227FF152C()
{

  sub_227FFA994(v0[25], type metadata accessor for PriorityModelSession.Input);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227FF15E8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FF167C, 0, 0);
}

uint64_t sub_227FF167C()
{
  v1 = v0[12];
  v2 = *(v0[13] + OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_sessionCache);
  v0[5] = v0[14];
  v0[6] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  os_unfair_lock_lock((v2 + 16));
  v4 = sub_228108028((v2 + 24), v0 + 2);
  os_unfair_lock_unlock((v2 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 2);
  v5 = v0[15];
  if (v4)
  {

    v6 = v0[1];

    return v6(v4);
  }

  else
  {
    v8 = v0[14];
    sub_227FF9A3C(v0[12], v0[15], type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v9 = v8[7];
    v10 = (v5 + v8[6]);
    v12 = *v10;
    v11 = v10[1];
    v14 = *(v5 + v9);
    v13 = *(v5 + v9 + 8);
    LODWORD(v8) = *(v5 + v8[8]);
    swift_bridgeObjectRetain_n();

    sub_227FFA994(v5, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v0[10] = &type metadata for AnySessionInfo;
    v0[11] = &off_283B5E2B0;
    v15 = swift_allocObject();
    v0[7] = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    *(v15 + 48) = v8;
    *(v15 + 56) = v14;
    *(v15 + 64) = v13;
    *(v15 + 72) = v8;
    type metadata accessor for PriorityModelSession();
    swift_allocObject();
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_227FF18E4;

    return PriorityModelSession.init(sessionInfo:)((v0 + 7));
  }
}

uint64_t sub_227FF18E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_227FF1A3C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_227FF1A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227FF1CD4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 432) = v3;
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  *(v0 + 440) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v5 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 448) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v5, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v6 = sub_2280D5C74();
  v7 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 456) = v6;
  *(v0 + 464) = v7;
  sub_227FFADC8(v0 + 64, v0 + 104);
  v8 = swift_allocObject();
  *(v0 + 472) = v8;
  sub_227FFA05C((v0 + 104), v8 + 16);
  v9 = swift_allocObject();
  *(v0 + 480) = v9;
  *(v9 + 16) = sub_227FFB2D4;
  *(v9 + 24) = v8;

  sub_2281324C4();
  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *v10 = v0;
  v10[1] = sub_227FF1E88;
  v11 = *(v0 + 304);

  return sub_227FF15E8(v11);
}

uint64_t sub_227FF1E88(uint64_t a1)
{
  v3 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v3[66] = v1;
    v4 = sub_227FF2C14;
  }

  else
  {
    v4 = sub_227FF1FAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227FF1FAC()
{
  v1 = *(sub_228138A3C() + 16);

  if (v1)
  {
    v29 = v0[57];
    v30 = v0[54];
    v2 = v0[49];
    v3 = v0[47];
    v32 = v0[48];
    v33 = v0[46];
    v34 = v0[45];
    v35 = v0[63];
    v31 = v0[38];
    v4 = v0[36];
    sub_228138A3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B8, &qword_22813B330);
    v5 = sub_228138AAC();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22813A4B0;
    v9 = v8 + v7;
    v10 = v0 + 18;
    (*(v6 + 16))(v9, v4, v5);
    sub_227FED66C(v8, sub_228133B20, MEMORY[0x277D4AFC8]);
    sub_227FFAA00(&qword_27D81E5C0, MEMORY[0x277D4AFC8], MEMORY[0x277D4AFC0]);
    sub_228138B9C();
    v0[21] = v30;
    v0[22] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 18);
    sub_227FF9A3C(v31, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    (*(v3 + 16))(v32, v2, v33);
    sub_2280CCE9C(v32, v34);
    if (v35)
    {
      v14 = v0[49];
      v15 = v0[46];
      v16 = v0[47];

      (*(v16 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm_1(v10);
      v0[66] = v35;

      return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
    }

    else
    {
      type metadata accessor for SharedData();
      v12 = swift_allocObject();
      v0[67] = v12;
      type metadata accessor for SKAssetManager();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      swift_initStackObject();
      v13 = SKAssetManager.init()();
      type metadata accessor for FilterRules(0);
      swift_allocObject();
      *(v12 + 16) = FilterRules.init(assetManager:)(v13);

      *(v12 + 24) = v29;

      if (qword_2813C8178 != -1)
      {
        swift_once();
      }

      v23 = v0[62];
      v24 = v0[45];
      v0[34] = v12;
      v25 = swift_task_alloc();
      v0[68] = v25;
      v25[2] = v23;
      v25[3] = v24;
      v25[4] = v10;
      v25[5] = v29;
      v26 = swift_task_alloc();
      v0[69] = v26;
      *v26 = v0;
      v26[1] = sub_227FF305C;
      v27 = v0[52];

      return MEMORY[0x282200908](v27, v0 + 34, &unk_22813B338, v25, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
    }
  }

  else
  {
    v17 = v0[57];
    v18 = v0[38];
    v0[26] = v0[54];
    v0[27] = &protocol witness table for ClassificationRequestHandler.RequestInfo;
    v19 = __swift_allocate_boxed_opaque_existential_1(v0 + 23);
    sub_227FF9A3C(v18, v19, type metadata accessor for ClassificationRequestHandler.RequestInfo);
    v20 = swift_task_alloc();
    v0[64] = v20;
    *v20 = v0;
    v20[1] = sub_227FF24FC;
    v21 = v0[52];
    v22 = v0[36];

    return sub_2280CB1D4(v21, v22, (v0 + 23), v17);
  }
}

uint64_t sub_227FF24FC()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_227FF2B9C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1((v2 + 184));
    v3 = sub_227FF2618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227FF2618()
{

  v1 = *(v0 + 520);
  sub_2281395DC();
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v3 = *(v0 + 456);
    v4 = *(v0 + 440);
    v5 = *(v0 + 336);
    sub_227FFA698(*(v0 + 312) + *(v0 + 448), v4, v2);
    v6 = v2;
    sub_227FFA31C(v4, v3, v2);

    *(v0 + 264) = v2;
    v7 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v8 = swift_dynamicCast();
    v9 = *(v5 + 56);
    if (v8)
    {
      v10 = *(v0 + 344);
      v11 = *(v0 + 352);
      v12 = *(v0 + 328);
      v13 = *(v0 + 336);
      v14 = *(v0 + 320);
      v9(v14, 0, 1, v12);
      (*(v13 + 32))(v11, v14, v12);
      v15 = *(v13 + 16);
      v15(v10, v11, v12);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v16 = swift_allocError();
      v15(v17, v10, v12);
      v18 = swift_allocObject();
      *(v18 + 16) = 3;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0;
      v19 = sub_227FF9AA4(v16, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC, v18);

      v20 = *(v13 + 8);
      v20(v10, v12);
      *(v0 + 248) = 3;
      *(v0 + 256) = v19;
      sub_227FE7384();
      v21 = sub_22813999C();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = swift_allocError();
        *v32 = 3;
        *(v32 + 8) = v19;
      }

      v33 = *(v0 + 352);
      v34 = *(v0 + 328);
      swift_willThrow();

      v20(v33, v34);
      v2 = v22;
    }

    else
    {
      v31 = *(v0 + 320);
      v9(v31, 1, 1, *(v0 + 328));
      sub_227FFB0A0(v31, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v35 = *(v0 + 472);
    v36 = *(v0 + 480);
    v37 = *(v0 + 424);
    v38 = swift_allocObject();
    v38[2] = v2;
    v38[3] = sub_227FFB2D4;
    v38[4] = v35;
    swift_beginAccess();
    *(v36 + 16) = sub_227FFB328;
    *(v36 + 24) = v38;

    v39 = v2;

    swift_willThrow();
    sub_2281324D4();
    sub_227FFA994(v37, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v30 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 456);
    v24 = *(v0 + 440);
    v25 = *(v0 + 416);
    v26 = *(v0 + 424);
    v28 = *(v0 + 400);
    v27 = *(v0 + 408);
    v29 = *(v0 + 280);
    sub_227FFA07C(*(v0 + 312) + *(v0 + 448), v24);
    sub_227FFA31C(v24, v23, 0);
    (*(v27 + 32))(v29, v25, v28);
    sub_2281324D4();
    sub_227FFA994(v26, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_227FF2B9C()
{

  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 23);
  v0[66] = v0[65];

  return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
}

uint64_t sub_227FF2C14()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 336);
  sub_227FFA698(*(v0 + 312) + *(v0 + 448), v3, v1);
  v5 = v1;
  sub_227FFA31C(v3, v2, v1);

  *(v0 + 264) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 352);
    v11 = *(v0 + 328);
    v12 = *(v0 + 336);
    v13 = *(v0 + 320);
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v10, v13, v11);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v15 = swift_allocError();
    v14(v16, v9, v11);
    v17 = swift_allocObject();
    *(v17 + 16) = 3;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    v18 = sub_227FF9AA4(v15, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC, v17);

    v19 = *(v12 + 8);
    v19(v9, v11);
    *(v0 + 248) = 3;
    *(v0 + 256) = v18;
    sub_227FE7384();
    v20 = sub_22813999C();
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = swift_allocError();
      *v23 = 3;
      *(v23 + 8) = v18;
    }

    v24 = *(v0 + 352);
    v25 = *(v0 + 328);
    swift_willThrow();

    v19(v24, v25);
    v1 = v21;
  }

  else
  {
    v22 = *(v0 + 320);
    v8(v22, 1, 1, *(v0 + 328));
    sub_227FFB0A0(v22, &qword_27D81E598, &qword_22813B300);
    swift_willThrow();
  }

  v26 = *(v0 + 472);
  v27 = *(v0 + 480);
  v28 = *(v0 + 424);
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = sub_227FFB2D4;
  v29[4] = v26;
  swift_beginAccess();
  *(v27 + 16) = sub_227FFB328;
  *(v27 + 24) = v29;

  v30 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_227FFA994(v28, type metadata accessor for SignpostToken);

  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_227FF305C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_227FF3758;
  }

  else
  {
    v2 = sub_227FF3180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227FF3180()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);

  sub_227FFA994(v4, type metadata accessor for PriorityModelSession.Input);
  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 144));

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 560);
  sub_2281395DC();
  if (v5)
  {
    v6 = v5;
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
    v7 = *(v0 + 456);
    v8 = *(v0 + 440);
    v9 = *(v0 + 336);
    sub_227FFA698(*(v0 + 312) + *(v0 + 448), v8, v6);
    v10 = v6;
    sub_227FFA31C(v8, v7, v6);

    *(v0 + 264) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v12 = swift_dynamicCast();
    v13 = *(v9 + 56);
    if (v12)
    {
      v14 = *(v0 + 344);
      v15 = *(v0 + 352);
      v16 = *(v0 + 328);
      v17 = *(v0 + 336);
      v18 = *(v0 + 320);
      v13(v18, 0, 1, v16);
      (*(v17 + 32))(v15, v18, v16);
      v19 = *(v17 + 16);
      v19(v14, v15, v16);
      sub_227FFAA00(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v20 = swift_allocError();
      v19(v21, v14, v16);
      v22 = swift_allocObject();
      *(v22 + 16) = 3;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0;
      v23 = sub_227FF9AA4(v20, 0xD00000000000006CLL, 0x8000000228144210, 128, sub_227FFB2EC, v22);

      v24 = *(v17 + 8);
      v24(v14, v16);
      *(v0 + 248) = 3;
      *(v0 + 256) = v23;
      sub_227FE7384();
      v25 = sub_22813999C();
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = swift_allocError();
        *v36 = 3;
        *(v36 + 8) = v23;
      }

      v37 = *(v0 + 352);
      v38 = *(v0 + 328);
      swift_willThrow();

      v24(v37, v38);
      v6 = v26;
    }

    else
    {
      v35 = *(v0 + 320);
      v13(v35, 1, 1, *(v0 + 328));
      sub_227FFB0A0(v35, &qword_27D81E598, &qword_22813B300);
      swift_willThrow();
    }

    v39 = *(v0 + 472);
    v40 = *(v0 + 480);
    v41 = *(v0 + 424);
    v42 = swift_allocObject();
    v42[2] = v6;
    v42[3] = sub_227FFB2D4;
    v42[4] = v39;
    swift_beginAccess();
    *(v40 + 16) = sub_227FFB328;
    *(v40 + 24) = v42;

    v43 = v6;

    swift_willThrow();
    sub_2281324D4();
    sub_227FFA994(v41, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v34 = *(v0 + 8);
  }

  else
  {
    v27 = *(v0 + 456);
    v28 = *(v0 + 440);
    v29 = *(v0 + 416);
    v30 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v33 = *(v0 + 280);
    sub_227FFA07C(*(v0 + 312) + *(v0 + 448), v28);
    sub_227FFA31C(v28, v27, 0);
    (*(v31 + 32))(v33, v29, v32);
    sub_2281324D4();
    sub_227FFA994(v30, type metadata accessor for SignpostToken);

    __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 64));

    v34 = *(v0 + 8);
  }

  return v34();
}

uint64_t sub_227FF3758()
{

  v1 = v0[70];
  sub_227FFA994(v0[45], type metadata accessor for PriorityModelSession.Input);
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v0 + 18);
  v0[66] = v1;

  return MEMORY[0x2822009F8](sub_227FF2C14, 0, 0);
}

uint64_t sub_227FF39AC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 40) = type metadata accessor for ClassificationRequestHandler.RequestInfo(0);
  *(v0 + 48) = &protocol witness table for ClassificationRequestHandler.RequestInfo;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 248) = boxed_opaque_existential_1;
  sub_227FF9A3C(v1, boxed_opaque_existential_1, type metadata accessor for ClassificationRequestHandler.RequestInfo);
  v4 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  *(v0 + 256) = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_logger;
  sub_227FF9DA8(v2 + v4, boxed_opaque_existential_1);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v5 = sub_2280D5C74();
  v6 = OBJC_IVAR____TtC16SummarizationKit28ClassificationRequestHandler_requestSignpost;
  *(v0 + 264) = v5;
  *(v0 + 272) = v6;
  sub_227FFADC8(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 280) = v7;
  sub_227FFA05C((v0 + 56), v7 + 16);
  v8 = swift_allocObject();
  *(v0 + 288) = v8;
  *(v8 + 16) = sub_227FFB2D8;
  *(v8 + 24) = v7;

  sub_2281324C4();
  v9 = swift_task_alloc();
  *(v0 + 296) = v9;
  *v9 = v0;
  v9[1] = sub_227FF3B6C;
  v10 = *(v0 + 232);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = *(v0 + 152);

  return sub_227FF45D8(v10, v5, v11, v12, v13);
}