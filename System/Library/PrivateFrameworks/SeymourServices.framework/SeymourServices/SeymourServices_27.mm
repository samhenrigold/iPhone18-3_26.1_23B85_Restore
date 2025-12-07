uint64_t sub_22712E2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2276694E0();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *(type metadata accessor for DirtySyncZone(0) + 20);
  v8 = sub_227662750();
  return (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
}

uint64_t sub_22712E360(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB340, &qword_22767A548);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  v10 = sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  v11 = MEMORY[0x22AA99A00](v10);
  sub_227544230();
  if (v1)
  {
    objc_autoreleasePoolPop(v11);
    swift_setDeallocating();

    v13 = qword_2813B2078;
    v14 = sub_22766A100();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
    return swift_deallocClassInstance();
  }

  else
  {
    v16 = v12;
    objc_autoreleasePoolPop(v11);
    swift_setDeallocating();

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v7 + v17, v18);
    swift_deallocClassInstance();
    return v16 & 1;
  }
}

char *sub_22712E580(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB308, qword_22767A2F8);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_22712BFEC(a1);
  v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v30[0] = v11;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  sub_226E93170(v30, v28, &unk_27D7BC990, &qword_227670A30);
  v13 = v29;
  if (v29)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_22766D170();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB310 &qword_22767A338))];

  sub_226E97D1C(v30, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v21 = sub_22766A080();
  v23 = v22;
  MEMORY[0x22AA985C0]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v21(v30, 0);
  swift_endAccess();

  v24 = sub_2272310B8(100);
  swift_setDeallocating();

  v25 = qword_2813B2078;
  v26 = sub_22766A100();
  (*(*(v26 - 8) + 8))(v8 + v25, v26);
  swift_deallocClassInstance();
  return v24;
}

void sub_22712E9A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v89 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v83 - v8;
  v87 = type metadata accessor for DirtySyncZone(0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v105 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v85 = &v83 - v11;
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  v90 = a1;

  v17 = 0;
  v84 = a1 + 56;
  v83 = v16;
  while (v15)
  {
    v97 = v3;
LABEL_12:
    v23 = v85;
    sub_227130270(*(v90 + 48) + *(v86 + 72) * (__clz(__rbit64(v15)) | (v17 << 6)), v85);
    v24 = v105;
    sub_2271302D4(v23, v105);
    v25 = __swift_project_boxed_opaque_existential_0(v89, v89[3]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 16);
    v29 = v25[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8480, &qword_22767A4E0);
    v30 = swift_allocObject();
    v31 = v26;
    v32 = v27;

    sub_22766A070();
    v95 = v32;
    v96 = v31;
    *(v30 + 16) = v31;
    *(v30 + 24) = v32;
    v94 = v28;
    *(v30 + 32) = v28;
    v99 = v29;
    v100 = v30;
    *(v30 + 40) = v29;
    swift_getKeyPath();
    v33 = *(v87 + 20);
    v34 = sub_227662750();
    v35 = *(v34 - 8);
    v36 = v24 + v33;
    v37 = v98;
    (*(v35 + 16))(v98, v36, v34);
    (*(v35 + 56))(v37, 0, 1, v34);
    v38 = v37;
    v39 = v88;
    sub_226E93170(v38, v88, &qword_27D7B9690, qword_227670B50);
    if ((*(v35 + 48))(v39, 1, v34) == 1)
    {
      sub_226E97D1C(v39, &qword_27D7B9690, qword_227670B50);
      v103 = 0u;
      v104 = 0u;
    }

    else
    {
      *(&v104 + 1) = v34;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v103);
      (*(v35 + 32))(boxed_opaque_existential_0, v39, v34);
    }

    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v41 = sub_22766C820();
    sub_226E93170(&v103, v101, &unk_27D7BC990, &qword_227670A30);
    v42 = v102;
    if (v102)
    {
      v43 = __swift_project_boxed_opaque_existential_0(v101, v102);
      v93 = &v83;
      v44 = *(v42 - 8);
      v45 = MEMORY[0x28223BE20](v43);
      v47 = &v83 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v47, v45);
      v48 = sub_22766D170();
      (*(v44 + 8))(v47, v42);
      __swift_destroy_boxed_opaque_existential_0(v101);
    }

    else
    {
      v48 = 0;
    }

    v92 = objc_opt_self();
    v49 = [v92 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB338, &qword_22767A510);
    v50 = [objc_allocWithZone(v91) initWithLeftExpression:v41 rightExpression:v49 modifier:0 type:1 options:0];

    sub_226E97D1C(v98, &qword_27D7B9690, qword_227670B50);
    sub_226E97D1C(&v103, &unk_27D7BC990, &qword_227670A30);
    v51 = qword_2813B2078;
    swift_beginAccess();
    v52 = v50;
    v93 = v51;
    v53 = sub_22766A080();
    v55 = v54;
    MEMORY[0x22AA985C0]();
    if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v53(&v103, 0);
    swift_endAccess();

    swift_getKeyPath();
    v56 = sub_2276694C0();
    v58 = v57;
    *(&v104 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    *&v103 = v56;
    *(&v103 + 1) = v58;

    v59 = sub_22766C820();
    sub_226E93170(&v103, v101, &unk_27D7BC990, &qword_227670A30);
    v60 = v102;
    if (v102)
    {
      v61 = __swift_project_boxed_opaque_existential_0(v101, v102);
      v62 = *(v60 - 8);
      v63 = MEMORY[0x28223BE20](v61);
      v65 = &v83 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v62 + 16))(v65, v63);
      v66 = sub_22766D170();
      (*(v62 + 8))(v65, v60);
      __swift_destroy_boxed_opaque_existential_0(v101);
    }

    else
    {
      v66 = 0;
    }

    v67 = [v92 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v68 = [objc_allocWithZone(v91) initWithLeftExpression:v59 rightExpression:v67 modifier:0 type:4 options:0];

    sub_226E97D1C(&v103, &unk_27D7BC990, &qword_227670A30);
    v69 = v100;
    v70 = v93;
    swift_beginAccess();
    v71 = v68;
    v72 = sub_22766A080();
    v74 = v73;
    MEMORY[0x22AA985C0]();
    if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v72(&v103, 0);
    swift_endAccess();

    v75 = sub_2275422B8(v70 + v69, v94, v99);
    if (v75)
    {
      v18 = v96;
      v3 = v97;
      v19 = v95;
      if (v75 != 1)
      {
        swift_willThrow();
LABEL_30:
        sub_227130338(v105);

        swift_setDeallocating();
        v81 = qword_2813B2078;
        v82 = sub_22766A100();
        (*(*(v82 - 8) + 8))(v69 + v81, v82);
        swift_deallocClassInstance();
        return;
      }
    }

    else
    {
      v76 = v97;
      v77 = sub_227284634(0);
      v3 = v76;
      v19 = v95;
      v18 = v96;
      if (v76)
      {
        goto LABEL_30;
      }

      v78 = v77;
      [v77 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v79 = sub_22766C9E0();
      v80 = sub_226EDAB24(v79);

      sub_226EDAB78(v80, v19);
    }

    v15 &= v15 - 1;
    sub_227130338(v105);

    swift_setDeallocating();
    v20 = qword_2813B2078;
    v21 = sub_22766A100();
    (*(*(v21 - 8) + 8))(v69 + v20, v21);
    swift_deallocClassInstance();
    v12 = v84;
    v16 = v83;
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v22);
    ++v17;
    if (v15)
    {
      v97 = v3;
      v17 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_22712F4F0(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB318, &qword_22767A380);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v37 = v9;
  v38 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_2276694C0();
  v12 = v11;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = v10;
  v42[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v14 = v41;
  if (v41)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v39 = &v36;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB320 qword_22767A3B0))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v42, 0);
  swift_endAccess();

  v30 = sub_227542348(v7 + v25, v5, v6);
  v31 = v42[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_2272847E4(0);
  if (v31)
  {
LABEL_10:

    return;
  }

  v33 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v34 = sub_22766C9E0();
  v35 = sub_226EDAB24(v34);

  sub_226EDAB78(v35, v37);
}

void sub_22712F964(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v37 = v9;
  v38 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_2276694C0();
  v12 = v11;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = v10;
  v42[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v14 = v41;
  if (v41)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v39 = &v36;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v42, 0);
  swift_endAccess();

  v30 = sub_227542390(v7 + v25, v5, v6);
  v31 = v42[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_22728464C(0);
  if (v31)
  {
LABEL_10:

    return;
  }

  v33 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v34 = sub_22766C9E0();
  v35 = sub_226EDAB24(v34);

  sub_226EDAB78(v35, v37);
}

void sub_22712FDD8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB308, qword_22767A2F8);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  v37 = v9;
  v38 = v8;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_2276694C0();
  v12 = v11;
  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v42[0] = v10;
  v42[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v14 = v41;
  if (v41)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v39 = &v36;
    v16 = v6;
    v17 = v5;
    v18 = *(v14 - 8);
    v19 = MEMORY[0x28223BE20](v15);
    v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v14);
    v5 = v17;
    v6 = v16;
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB310 &qword_22767A338))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = v24;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v42, 0);
  swift_endAccess();

  v30 = sub_2275423D8(v7 + v25, v5, v6);
  v31 = v42[5];
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v32 = sub_22723B7F8(0);
  if (v31)
  {
LABEL_10:

    return;
  }

  v33 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v34 = sub_22766C9E0();
  v35 = sub_226EDAB24(v34);

  sub_226EDAB78(v35, v37);
}

uint64_t sub_227130270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirtySyncZone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271302D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirtySyncZone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227130338(uint64_t a1)
{
  v2 = type metadata accessor for DirtySyncZone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyCertificate.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2276624A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KeyCertificate.data.getter()
{
  v1 = v0 + *(type metadata accessor for KeyCertificate(0) + 20);
  v2 = *v1;
  sub_226F5E0B4(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for KeyCertificate(uint64_t a1)
{
  result = qword_28139AE88;
  if (!qword_28139AE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyCertificate.init(remoteURL:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_2276624A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for KeyCertificate(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

BOOL static KeyCertificate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_227662420() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for KeyCertificate(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_227130B5C(v5, v6, v8, v9);
}

uint64_t KeyCertificate.hash(into:)(uint64_t a1)
{
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22766BF60();
  type metadata accessor for KeyCertificate(0);

  return sub_2276625A0();
}

uint64_t KeyCertificate.hashValue.getter()
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22766BF60();
  type metadata accessor for KeyCertificate(0);
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_2271306BC(uint64_t a1)
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22766BF60();
  sub_2276625A0();
  return sub_22766D3F0();
}

uint64_t sub_227130764(uint64_t a1, uint64_t a2)
{
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22766BF60();

  return sub_2276625A0();
}

uint64_t sub_227130800(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_2276624A0();
  sub_227130D0C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22766BF60();
  sub_2276625A0();
  return sub_22766D3F0();
}

BOOL sub_2271308A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_227662420() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_227130B5C(v7, v8, v10, v11);
}

uint64_t sub_227130914(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_227130AA4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_226EDC420(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2275BA344(v13, a3, a4, &v12);
  v10 = v4;
  sub_226EDC420(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_227130AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_227662060();
  v11 = result;
  if (result)
  {
    result = sub_227662090();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_227662080();
  sub_2275BA344(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_227130B5C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_226F5E0B4(a3, a4);
          return sub_227130914(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227130D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227130D7C(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_227130DF0(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *(a1 + 16);

  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *(v4 + 32);
  v6 = *(v4 + 40);

  sub_226EA9E3C(0, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = a2;
  v9 = sub_226E92000(v7, v6);
  v11 = a2[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LOBYTE(v2) = v10;
  if (a2[3] >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_8;
  }

  sub_226FE2228(v14, isUniquelyReferenced_nonNull_native);
  v9 = sub_226E92000(v7, v6);
  if ((v2 & 1) == (v15 & 1))
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    while (1)
    {
      v20 = a2[7];
      v21 = *(v20 + 8 * v9);
      v13 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (!v13)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      while (1)
      {
        __break(1u);
LABEL_32:
        v38 = v9;
        sub_226FF016C();
        v9 = v38;
        a2 = v39;
        if (v2)
        {
          break;
        }

LABEL_9:
        a2[(v9 >> 6) + 8] |= 1 << v9;
        v17 = (a2[6] + 16 * v9);
        *v17 = v7;
        v17[1] = v6;
        *(a2[7] + 8 * v9) = 0;
        v18 = a2[2];
        v13 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (!v13)
        {
          a2[2] = v19;
          v7 = v9;

          v9 = v7;
          goto LABEL_11;
        }
      }
    }

    *(v20 + 8 * v9) = v22;

    v23 = v5 - 1;
    if (v5 == 1)
    {
LABEL_13:
      v16 = sub_226F04A6C;
      goto LABEL_14;
    }

    v5 = (v4 + 56);
    while (1)
    {
      v6 = *(v5 - 1);
      v4 = *v5;

      sub_226EA9E3C(sub_226F04A6C, 0);
      v2 = swift_isUniquelyReferenced_nonNull_native();
      v39 = a2;
      v9 = sub_226E92000(v6, v4);
      v28 = a2[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_29;
      }

      v7 = v27;
      if (a2[3] < v30)
      {
        break;
      }

      if (v2)
      {
        goto LABEL_21;
      }

      v2 = v9;
      sub_226FF016C();
      v9 = v2;
      if ((v7 & 1) == 0)
      {
LABEL_22:
        a2[(v9 >> 6) + 8] |= 1 << v9;
        v32 = (a2[6] + 16 * v9);
        *v32 = v6;
        v32[1] = v4;
        *(a2[7] + 8 * v9) = 0;
        v33 = a2[2];
        v13 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v13)
        {
          goto LABEL_31;
        }

        a2[2] = v34;
        v6 = v9;

        v9 = v6;
      }

LABEL_24:
      v35 = a2[7];
      v36 = *(v35 + 8 * v9);
      v13 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v13)
      {
        goto LABEL_30;
      }

      *(v35 + 8 * v9) = v37;

      v5 += 2;
      if (!--v23)
      {
        goto LABEL_13;
      }
    }

    sub_226FE2228(v30, v2);
    v9 = sub_226E92000(v6, v4);
    if ((v7 & 1) != (v31 & 1))
    {
      goto LABEL_5;
    }

LABEL_21:
    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_24;
  }

LABEL_5:
  sub_22766D220();
  __break(1u);
LABEL_6:
  v16 = 0;
LABEL_14:

  sub_22746B5DC();
  v25 = v24;
  swift_bridgeObjectRelease_n();
  sub_226EA9E3C(v16, 0);
  return v25;
}

uint64_t sub_227131120(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_226F1FD28(0, v1, 0);
  v2 = v33;
  v4 = v3 + 64;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v26 = v3 + 72;
  v27 = v1;
  v28 = v3 + 64;
  v29 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v30 = v7;
    v31 = *(v3 + 36);
    v10 = *(v3 + 56) + 40 * v6;
    v11 = *(v10 + 8);
    v32 = *v10;
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);

    result = sub_226EB396C(v12, v13, v14);
    v16 = *(v33 + 16);
    v15 = *(v33 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_226F1FD28((v15 > 1), v16 + 1, 1);
      v17 = v16 + 1;
    }

    *(v33 + 16) = v17;
    v18 = v33 + 40 * v16;
    *(v18 + 32) = v32;
    *(v18 + 40) = v11;
    *(v18 + 48) = v12;
    *(v18 + 56) = v13;
    *(v18 + 64) = v14;
    v3 = v29;
    v8 = 1 << *(v29 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v28;
    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(v29 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (v26 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_226EB526C(v6, v31, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v31, 0);
    }

LABEL_4:
    v7 = v30 + 1;
    v6 = v8;
    if (v30 + 1 == v27)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_22713139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = (a2 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v9 = *v6++;
    v10 = a3(v9);
  }

  while (v10 != a3(a1));
  return v7 != 0;
}

uint64_t sub_227131410@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227667380();
  *a2 = result;
  a2[1] = v5;
  return result;
}

SeymourServices::CandidateSamplingMode_optional __swiftcall CandidateSamplingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D030();

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

uint64_t CandidateSamplingMode.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C706D6173;
  }

  else
  {
    return 7889261;
  }
}

uint64_t sub_2271314D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C706D6173;
  }

  else
  {
    v3 = 7889261;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C706D6173;
  }

  else
  {
    v5 = 7889261;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22766D190();
  }

  return v8 & 1;
}

unint64_t sub_22713157C()
{
  result = qword_27D7BB348;
  if (!qword_27D7BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB348);
  }

  return result;
}

uint64_t sub_2271315D0()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22713164C(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_2271316B4(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22713172C@<X0>(char *a2@<X8>)
{
  v3 = sub_22766D030();

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

  *a2 = v5;
  return result;
}

void sub_22713178C(uint64_t *a1@<X8>)
{
  v2 = 7889261;
  if (*v1)
  {
    v2 = 0x676E696C706D6173;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_2271317D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2276681F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667240();
  sub_227667F00();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  v9 = sub_22713AAA4(a1, v8);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    v13 = MEMORY[0x277D84F90];
    v14 = *(v9 + 16);
    do
    {
      v17 = *v12;
      if (*v12 > 0.0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1FCE8(0, *(v13 + 16) + 1, 1);
          v13 = v32;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_226F1FCE8((v15 > 1), v16 + 1, 1);
          v13 = v32;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v17;
      }

      ++v12;
      --v14;
    }

    while (v14);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v19 = *(v13 + 16);
  if (!v19)
  {

LABEL_27:

    return;
  }

  if (v19 <= 3)
  {
    v20 = 0;
    v21 = 0.0;
LABEL_18:
    v24 = v19 - v20;
    v25 = (v13 + 8 * v20 + 32);
    do
    {
      v26 = *v25++;
      v21 = v21 + v26;
      --v24;
    }

    while (v24);
    goto LABEL_20;
  }

  v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
  v22 = (v13 + 48);
  v21 = 0.0;
  v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v21 = v21 + *(v22 - 2) + *(v22 - 1) + *v22 + v22[1];
    v22 += 4;
    v23 -= 4;
  }

  while (v23);
  if (v19 != v20)
  {
    goto LABEL_18;
  }

LABEL_20:

  if (v21 <= 0.0)
  {
    goto LABEL_27;
  }

  v27 = 0.0;
  sub_227131AA0(0.0, 1.0);
  if (!v11)
  {
    goto LABEL_27;
  }

  v29 = 0;
  while (*(v10 + 16) != v29)
  {
    v30 = *(v10 + 8 * v29 + 32);
    if (v30 <= 0.0 || (v27 = v27 + v30 / v21, v28 > v27))
    {
      if (v11 != ++v29)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_227131AA0(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_227664440();
  sub_22713CF20(&qword_27D7BB388, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
    ;
  }
}

void sub_227131B70(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = v4;
  v68 = a3;
  v10 = sub_22766B390();
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v66 = &v62[-v12];
  MEMORY[0x28223BE20](v13);
  v15 = &v62[-v14];
  MEMORY[0x28223BE20](v16);
  v19 = &v62[-v18];
  v20 = *(a1 + 2);
  if (v20)
  {
    v65 = v17;
    v69 = v10;
    LODWORD(a4) = *a4;
    sub_22766A630();
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    v23 = os_log_type_enabled(v21, v22);
    v67 = v5;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v64 = v24;
      *&v71 = swift_slowAlloc();
      v72 = v71;
      *v24 = 136315138;
      if (a4)
      {
        v25 = 0x676E696C706D6173;
      }

      else
      {
        v25 = 7889261;
      }

      if (a4)
      {
        v26 = 0xE800000000000000;
      }

      else
      {
        v26 = 0xE300000000000000;
      }

      v27 = sub_226E97AE8(v25, v26, &v72);
      v63 = v22;
      v28 = a4;
      a4 = a1;
      v29 = v27;

      v30 = v64;
      *(v64 + 1) = v29;
      a1 = a4;
      LOBYTE(a4) = v28;
      v31 = v30;
      _os_log_impl(&dword_226E8E000, v21, v63, "Calculating objective value for each daily schedule candidate: samplingMode == %s", v30, 0xCu);
      v32 = v71;
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    v33 = *(v70 + 8);
    v34 = (v33)(v15, v69);
    if (a4)
    {
      MEMORY[0x28223BE20](v34);
      *&v62[-16] = v6;
      *&v62[-8] = a2;
      sub_2275F1D68(sub_22713CEDC, &v62[-32], a1);
      v36 = v35;
      sub_2271317D4(v35, v68);
      if (v37 >= v20)
      {
        __break(1u);
      }

      else if (v37 < *(v36 + 16))
      {
        goto LABEL_38;
      }

      __break(1u);
    }

    else
    {
      v64 = v33;
      v43 = a1 + 32;
      v44 = MEMORY[0x277D84F90];
      v45 = -INFINITY;
      v71 = xmmword_227670CD0;
      do
      {
        v46 = *v43;

        v48 = sub_22713824C(v47, a2);
        if (v48 == v45)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_2273A58B0(0, v44[2] + 1, 1, v44);
          }

          v50 = v44[2];
          v49 = v44[3];
          if (v50 >= v49 >> 1)
          {
            v44 = sub_2273A58B0((v49 > 1), v50 + 1, 1, v44);
          }

          v44[2] = v50 + 1;
          v44[v50 + 4] = v46;
        }

        else if (v45 >= v48)
        {
        }

        else
        {
          v45 = v48;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          v51 = swift_allocObject();
          *(v51 + 16) = v71;
          *(v51 + 32) = v46;

          v44 = v51;
        }

        v43 += 8;
        --v20;
      }

      while (v20);
      v52 = v44[2];
      if (v52 >= 2)
      {
        v53 = v66;
        sub_22766A630();
        v54 = sub_22766B380();
        v55 = sub_22766C8B0();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218240;
          *(v56 + 4) = v44[2];
          *(v56 + 12) = 2048;
          *(v56 + 14) = v45;
          _os_log_impl(&dword_226E8E000, v54, v55, "%ld candidates result in same gain (%f) to objective", v56, 0x16u);
          MEMORY[0x22AA9A450](v56, -1, -1);
        }

        (v64)(v53, v69);
        sub_22766A630();
        v57 = sub_22766B380();
        v58 = sub_22766C8B0();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_226E8E000, v57, v58, "Stochastically breaking ties when selecting amongst candidates", v59, 2u);
          MEMORY[0x22AA9A450](v59, -1, -1);
        }

        (v64)(v65, v69);
        v60 = v44[2];
        if (!v60)
        {
          goto LABEL_45;
        }

        v61 = sub_2274580D4(v60);
        if ((v61 & 0x8000000000000000) == 0)
        {
          if (v61 < v44[2])
          {

LABEL_39:

            return;
          }

          goto LABEL_44;
        }

LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }

      if (v52 == 1)
      {
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_22766A630();
  v38 = sub_22766B380();
  v39 = sub_22766C890();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_226E8E000, v38, v39, "Could not select daily schedule due to 0 schedule candidates.", v40, 2u);
    MEMORY[0x22AA9A450](v40, -1, -1);
  }

  (*(v70 + 8))(v19, v10);
  v41 = sub_227664EC0();
  sub_22713CF20(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
  swift_allocError();
  (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51188], v41);
  swift_willThrow();
}

unint64_t sub_2271322AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v137 = a6;
  v173 = a5;
  v167 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v131 - v9;
  v147 = sub_227662190();
  v161 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = &v131 - v13;
  MEMORY[0x28223BE20](v14);
  v144 = &v131 - v15;
  v166 = sub_2276681F0();
  v172 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v165 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_227666B60();
  v17 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v19 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v135 = &v131 - v21;
  MEMORY[0x28223BE20](v22);
  v175 = &v131 - v23;
  MEMORY[0x28223BE20](v24);
  v164 = &v131 - v25;
  v154 = sub_227663540();
  v26 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v28 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v170 = &v131 - v30;
  v149 = sub_22766B390();
  v153 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  MEMORY[0x28223BE20](v31);
  v140 = &v131 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v131 - v34;
  MEMORY[0x28223BE20](v36);
  v39 = &v131 - v38;
  v171 = a2;
  if (!*(a2 + 16))
  {
    sub_22766A630();
    v125 = sub_22766B380();
    v126 = sub_22766C890();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_226E8E000, v125, v126, "Could not select workout due to 0 workout candidates.", v127, 2u);
      MEMORY[0x22AA9A450](v127, -1, -1);
    }

    (*(v153 + 8))(v39, v149);
    v128 = sub_227664EC0();
    sub_22713CF20(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v128 - 8) + 104))(v129, *MEMORY[0x277D51188], v128);
    return swift_willThrow();
  }

  v139 = v37;
  v133 = v19;
  v134 = v10;
  v138 = a1;
  sub_22766A630();
  v40 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = os_log_type_enabled(v40, v41);
  v163 = v17;
  if (v42)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_226E8E000, v40, v41, "Calculating objective value for each workout candidate", v43, 2u);
    v44 = v43;
    v17 = v163;
    MEMORY[0x22AA9A450](v44, -1, -1);
  }

  v45 = *(v153 + 8);
  v153 += 8;
  v136 = v45;
  v45(v35, v149);
  sub_227663500();
  v46 = v171 + 56;
  v47 = 1 << *(v171 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v171 + 56);
  v50 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies;
  v51 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies;
  v158 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;

  v160 = v50;
  swift_beginAccess();
  v159 = v51;
  result = swift_beginAccess();
  v53 = 0;
  v54 = (v47 + 63) >> 6;
  v169 = v17 + 16;
  v55 = (v17 + 32);
  v156 = (v172 + 8);
  v155 = (v17 + 8);
  v142 = (v161 + 8);
  v148 = (v26 + 8);
  v132 = (v26 + 32);
  v56 = MEMORY[0x277D84F90];
  v57 = -INFINITY;
  v131 = xmmword_227670CD0;
  v143 = v28;
  v161 = v46;
  v157 = v54;
  v162 = (v17 + 32);
LABEL_7:
  v58 = v57;
  v141 = v56;
  if (v49)
  {
    goto LABEL_14;
  }

  while (1)
  {
LABEL_10:
    v59 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v59 >= v54)
    {
      break;
    }

    v49 = *(v46 + 8 * v59);
    ++v53;
    if (v49)
    {
      v53 = v59;
      while (1)
      {
LABEL_14:
        while (1)
        {
          v172 = (v49 - 1) & v49;
          v60 = *(v171 + 48);
          v151 = *(v17 + 72);
          v61 = v164;
          v62 = v174;
          v150 = *(v17 + 16);
          v150(v164, v60 + v151 * (__clz(__rbit64(v49)) | (v53 << 6)), v174);
          v63 = v175;
          v152 = *(v17 + 32);
          v152(v175, v61, v62);
          v64 = sub_227666AA0();
          v65 = *(v173 + v160);
          v66 = v173;

          v67 = sub_227130DF0(v64, v65);

          v68 = sub_227666AE0();
          v69 = *(v66 + v159);

          v70 = sub_227130DF0(v68, v69);

          v71 = v168;
          v72 = v158;
          v73 = v165;
          sub_227667240();
          sub_227667F50();
          v75 = v74;
          v76 = *v156;
          v77 = v166;
          (*v156)(v73, v166);
          v78 = v67 * v75;
          sub_227667240();
          sub_227667F80();
          v80 = v79;
          v76(v73, v77);
          v81 = v70 * v80;
          v82 = v173;
          v83 = sub_22713A0A8(v173);
          v85 = v84 + v78 + v81 + v83;
          sub_227139E60(v82);
          v87 = v86 + v85;
          sub_227139134(v63);
          v89 = v88 + sub_227139B88(v167, v63);
          sub_2271399F8(v82);
          v57 = v87 - (v89 + v90 + sub_22735B0EC(v63, v71 + v72, v83 > 0.0));
          if (v58 <= v57)
          {
            break;
          }

          result = (*v155)(v175, v174);
          v55 = v162;
          v17 = v163;
          v46 = v161;
          v54 = v157;
          v49 = v172;
          if (!v172)
          {
            goto LABEL_10;
          }
        }

        v91 = v144;
        sub_227666A60();
        sub_227662140();
        v92 = *v142;
        v93 = v91;
        v94 = v147;
        (*v142)(v93, v147);
        v95 = v145;
        sub_227666A60();
        sub_227662150();
        v92(v95, v94);
        v96 = v146;
        sub_227666A60();
        sub_227662120();
        v92(v96, v94);
        v97 = v143;
        sub_227663500();
        if (v57 == v58)
        {
          v98 = sub_2276634C0();
          v99 = v154;
          v55 = v162;
          v49 = v172;
          if (v98)
          {
            v150(v135, v175, v174);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v17 = v163;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v141 = sub_2273A55CC(0, v141[2] + 1, 1, v141);
            }

            v102 = v141[2];
            v101 = v141[3];
            if (v102 >= v101 >> 1)
            {
              v141 = sub_2273A55CC((v101 > 1), v102 + 1, 1, v141);
            }

            (*v148)(v97);
            v103 = v174;
            (*(v17 + 8))(v175, v174);
            v104 = v141;
            v141[2] = v102 + 1;
            result = (v152)(v104 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + v102 * v151, v135, v103);
            goto LABEL_22;
          }

          v17 = v163;
          if (v58 < v57 || (sub_22713CF20(&qword_28139BCD0, MEMORY[0x277D4FFA8], MEMORY[0x277D4FFB8]), (sub_22766BF80() & 1) != 0))
          {
LABEL_29:
            v105 = v99;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
            v106 = (*(v17 + 80) + 32) & ~*(v17 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v131;
            v152((v56 + v106), v175, v174);
            v107 = v170;
            (*v148)(v170, v105);

            result = (*v132)(v107, v97, v105);
            v46 = v161;
            v54 = v157;
            goto LABEL_7;
          }
        }

        else
        {
          v17 = v163;
          v99 = v154;
          v55 = v162;
          v49 = v172;
          if (v58 < v57)
          {
            goto LABEL_29;
          }
        }

        (*v148)(v97, v99);
        result = (*v155)(v175, v174);
LABEL_22:
        v46 = v161;
        v54 = v157;
        if (!v49)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v108 = v141;
  v109 = v141[2];
  if (v109 <= 1)
  {
    if (v109 == 1)
    {
      (*(v17 + 16))(v138, v141 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v174);
      (*v148)(v170, v154);
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v110 = v140;
  sub_22766A630();
  v111 = sub_22766B380();
  v112 = sub_22766C8B0();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134218240;
    *(v113 + 4) = v108[2];
    *(v113 + 12) = 2048;
    *(v113 + 14) = v58;
    _os_log_impl(&dword_226E8E000, v111, v112, "%ld candidates result in same gain (%f) to objective", v113, 0x16u);
    MEMORY[0x22AA9A450](v113, -1, -1);
  }

  v114 = v136;
  v136(v110, v149);
  sub_22766A630();
  v115 = sub_22766B380();
  v116 = sub_22766C8B0();
  v117 = os_log_type_enabled(v115, v116);
  v118 = v134;
  v119 = v133;
  if (v117)
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_226E8E000, v115, v116, "Stochastically breaking ties when selecting amongst candidates", v120, 2u);
    v121 = v120;
    v114 = v136;
    MEMORY[0x22AA9A450](v121, -1, -1);
  }

  v114(v139, v149);
  v122 = v141;
  v123 = v141[2];
  if (!v123)
  {
    result = (*(v17 + 56))(v118, 1, 1, v174);
    if (!v122[2])
    {
      goto LABEL_53;
    }

    v130 = v174;
    (*(v17 + 16))(v119, v122 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v174);
    (*v148)(v170, v154);
    if ((*(v17 + 48))(v118, 1, v130) != 1)
    {
      sub_226E97D1C(v118, &qword_27D7B8F20, &qword_2276767D0);
    }

LABEL_47:
    (*v55)(v138, v119, v174);
  }

  result = sub_2274580D4(v123);
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (result < v122[2])
  {
    v124 = v174;
    (*(v17 + 16))(v118, v122 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * result, v174);

    (*v148)(v170, v154);
    (*(v17 + 56))(v118, 0, 1, v124);
    (*(v17 + 32))(v119, v118, v124);
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_22713350C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 32 + 8 * v8 - 8);

    sub_22713B1B4(11, v10, a2);

    sub_227667240();
    v11 = sub_227668090();
    (*(v5 + 8))(v7, v4);
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      if (v8 == v11 - 1)
      {
        sub_22713B1B4(11, v9, a2);
      }
    }
  }
}

void sub_227133698(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 32 + 8 * v8 - 8);

    sub_22713B1B4(6, v10, a2);

    sub_227667240();
    v11 = sub_227668090();
    (*(v5 + 8))(v7, v4);
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      if (v8 == v11 - 1)
      {
        sub_22713B1B4(6, v9, a2);
      }
    }
  }
}

uint64_t sub_22713381C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_226F491D8();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(a1 + 56) + 8 * v10);
  if (a2)
  {
    v34 = *(*(a1 + 56) + 8 * v10);
    v35 = v9;
    v36 = v3;
    v37 = v7;
    v13 = *(a2 + 16);
    v38 = a2;

    if (v13)
    {
      v14 = v38;
      v15 = v38 + 32;
      sub_226F48150();
      sub_226EC1E18();
      v16 = 0;
      v17 = (v14 + 64);
      v39 = xmmword_22767A610;
      while (1)
      {
        v18 = *v17;
        v42 = *(v17 - 1);
        v43 = v18;
        v40 = v39;
        v41 = 1;
        result = sub_227663B20();
        if (result)
        {
          break;
        }

        ++v16;
        v17 += 40;
        if (v13 == v16)
        {
          goto LABEL_8;
        }
      }

      v33 = v6;
      v20 = 1;
      while (2)
      {
        if (v16 != v13)
        {
          do
          {
            v23 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_28;
            }

            if (v23 == v13)
            {
              goto LABEL_22;
            }

            if (v23 >= v13)
            {
              goto LABEL_29;
            }

            v24 = v15 + 40 * v23;
            v25 = *(v24 + 32);
            v42 = *(v24 + 16);
            v43 = v25;
            v40 = v39;
            v41 = 1;
            result = sub_227663B20();
            ++v16;
          }

          while ((result & 1) == 0);
          v16 = v23;
          if (!__OFADD__(v20++, 1))
          {
            continue;
          }

          __break(1u);
LABEL_22:

          if (!v20)
          {
            return v20;
          }

          v27 = v35;
          sub_227667240();
          v28 = sub_227668020();
          v29 = *(v37 + 8);
          v30 = v33;
          result = v29(v27, v33);
          if (v28 < v34)
          {
            return v20;
          }

          v31 = v34 + v20;
          if (__OFADD__(v34, v20))
          {
            goto LABEL_32;
          }

          sub_227667240();
          v32 = sub_227668020();
          result = v29(v27, v30);
          v22 = v31 - v32;
          if (__OFSUB__(v31, v32))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            break;
          }

          return v22 & ~(v22 >> 63);
        }

        break;
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_8:

    return 0;
  }

  sub_227667240();
  v21 = sub_227668020();
  result = (*(v7 + 8))(v9, v6);
  v22 = v12 - v21;
  if (!__OFSUB__(v12, v21))
  {
    return v22 & ~(v22 >> 63);
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

double sub_227133B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2276681F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22713C864(a2, a3);
  v11 = v10;
  sub_227136CC4(a1, a3);
  v13 = v12;
  sub_22713AF20(a3);
  v15 = v14;
  sub_2271343E4(a3);
  v17 = v16;
  sub_22713C9B0(a3);
  v19 = v18;
  sub_2271349A4(a3);
  v21 = v20;
  sub_227134FE0(a3);
  v23 = v22;
  sub_227667240();
  sub_227668040();
  v25 = v24;
  v26 = *(v7 + 8);
  v26(v9, v6);
  v27 = v11 * v25;
  sub_227667240();
  sub_227668080();
  v29 = v28;
  v26(v9, v6);
  v30 = v27 + v13 * v29;
  sub_227667240();
  sub_227667EC0();
  v32 = v31;
  v26(v9, v6);
  v33 = v30 + v15 * v32;
  sub_227667240();
  sub_227667FB0();
  v35 = v34;
  v26(v9, v6);
  v36 = v33 + v17 * v35;
  sub_227667240();
  sub_2276680A0();
  v38 = v37;
  v26(v9, v6);
  v39 = v36 + v19 * v38;
  sub_227667240();
  sub_227668100();
  v41 = v40;
  v26(v9, v6);
  v42 = v39 + v21 * v41;
  sub_227667240();
  sub_2276681E0();
  v44 = v43;
  v26(v9, v6);
  return v42 + v23 * v44;
}

uint64_t sub_227133E08@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_227668240();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *a2;
  result = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v15 = *(a3 + *(result + 20));
  if (*(v15 + 16))
  {
    result = sub_226F491D8();
    if (v16)
    {
      (*(v9 + 16))(v11, *(v15 + 56) + *(v9 + 72) * result, v8);
      v17 = sub_227668230();
      (*(v9 + 8))(v11, v8);
      v18 = v17;
      v19 = *(v17 + 16);
      if (v19)
      {
        v20 = 0;
        while (*(v18 + 8 * v20 + 32) != v13)
        {
          if (v19 == ++v20)
          {

            v21 = -10.0;
            goto LABEL_10;
          }
        }

        v21 = 2.0 / (v20 + 1.0);
LABEL_10:
        v12 = v12 + v21;
      }

      else
      {
      }
    }
  }

  *a4 = v12;
  return result;
}

uint64_t sub_227133FB4@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v44 = a5;
  v10 = sub_227668240();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  v17 = *a1;
  v18 = *a2;
  result = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v20 = *(a3 + *(result + 20));
  if (!*(v20 + 16))
  {
    goto LABEL_33;
  }

  result = sub_226F491D8();
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  (*(v11 + 16))(v13, *(v20 + 56) + *(v11 + 72) * result, v10);
  (*(v11 + 32))(v16, v13, v10);
  v22 = *(sub_227668200() + 16);

  if (!v22)
  {
    result = (*(v11 + 8))(v16, v10);
    goto LABEL_33;
  }

  v23 = sub_227668200();
  v24 = sub_22713139C(a4, v23, MEMORY[0x277D53B38]);

  v25 = sub_227668230();
  v26 = *(v25 + 16);
  v27 = 32;
  while (v26)
  {
    v28 = *(v25 + v27);
    v27 += 8;
    --v26;
    if (v28 == v18)
    {

      if (v24)
      {
        v43[1] = v5;
        result = sub_227668200();
        v29 = result;
        v30 = *(result + 16);
        if (v30)
        {
          v31 = 0;
          while (v31 < *(v29 + 16))
          {
            v32 = sub_227669310();
            result = sub_227669310();
            if (v32 == result)
            {

              v33 = 10.0 / (v31 + 1.0);
              goto LABEL_26;
            }

            if (v30 == ++v31)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_35;
        }

LABEL_13:

        v33 = 5.0;
LABEL_26:
        v39 = sub_227668230();
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = 0;
          while (*(v39 + 8 * v41 + 32) != v18)
          {
            if (v40 == ++v41)
            {
              goto LABEL_30;
            }
          }

          (*(v11 + 8))(v16, v10);

          v42 = 5.0 / (v41 + 1.0);
        }

        else
        {
LABEL_30:
          (*(v11 + 8))(v16, v10);

          v42 = 1.0;
        }

        v17 = v17 + 10.0 + v33 + v42;
LABEL_33:
        *v44 = v17;
        return result;
      }

LABEL_22:
      result = (*(v11 + 8))(v16, v10);
      v17 = v17 + -100.0;
      goto LABEL_33;
    }
  }

  if (!v24)
  {
    goto LABEL_22;
  }

  result = sub_227668200();
  v34 = result;
  v35 = *(result + 16);
  if (!v35)
  {
LABEL_21:
    (*(v11 + 8))(v16, v10);

    v38 = 3.0;
LABEL_24:
    v17 = v17 + 3.0 + v38;
    goto LABEL_33;
  }

  v36 = 0;
  while (v36 < *(v34 + 16))
  {
    v37 = sub_227669310();
    result = sub_227669310();
    if (v37 == result)
    {
      (*(v11 + 8))(v16, v10);

      v38 = 10.0 / (v36 + 1.0);
      goto LABEL_24;
    }

    if (v35 == ++v36)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2271343E4(uint64_t a1)
{
  v46 = sub_227666900();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v34 - v8;
  v9 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache;
  swift_beginAccess();
  v47 = v1;
  if (*(*(v1 + v9) + 16))
  {

    sub_226F3ACCC(a1);
    if (v10)
    {
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_23;
  }

  v34 = v9;
  v39 = 0;
  v40 = 0;
  v41 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v37 = (v3 + 8);
  v38 = (v3 + 104);
  v36 = *MEMORY[0x277D52720];
  v35 = a1;
  v13 = (a1 + 64);
  do
  {
    v14 = *(v13 - 4);
    v15 = *(v13 - 2);
    v16 = *(v13 - 1);
    v17 = *v13;
    sub_226EB396C(v15, v16, *v13);
    v18 = sub_2276672C0();
    if (!*(v18 + 16))
    {
      sub_226EB2DFC(v15, v16, v17);
LABEL_16:

      v27 = v47;
      v28 = v34;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v27 + v28);
      *(v27 + v28) = 0x8000000000000000;
      sub_22736AA00(v35, isUniquelyReferenced_nonNull_native, 0.0);
      *(v27 + v28) = v48;
      return swift_endAccess();
    }

    v19 = sub_226F491D8();
    v21 = v20;
    sub_226EB2DFC(v15, v16, v17);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }

    v22 = v43;
    sub_226E93170(*(v18 + 56) + *(v44 + 72) * v19, v43, &qword_27D7B88C0, &unk_22767A720);

    v23 = v42;
    sub_226F50B4C(v22, v42);
    v25 = v45;
    v24 = v46;
    (*v38)(v45, v36, v46);
    v26 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
    sub_22713CF20(&qword_27D7B88E0, v26, MEMORY[0x277D52748]);
    LOBYTE(v26) = sub_227663B30();
    (*v37)(v25, v24);
    result = sub_226E97D1C(v23, &qword_27D7B88C0, &unk_22767A720);
    if (v26)
    {
      if (__OFADD__(v40, v14))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v40 += v14;
    }

    else
    {
      if (__OFADD__(v39, v14))
      {
        goto LABEL_27;
      }

      v39 += v14;
    }

    v13 += 40;
    --v12;
  }

  while (v12);
  a1 = v35;
  v9 = v34;
  if (v40 && v39)
  {
    if (v40 >= v39)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    v31 = v47;
    swift_beginAccess();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v31 + v9);
    *(v31 + v9) = 0x8000000000000000;
    v33 = v30;
  }

  else
  {
LABEL_23:
    v31 = v47;
    swift_beginAccess();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v31 + v9);
    *(v31 + v9) = 0x8000000000000000;
    v33 = 0.0;
  }

  sub_22736AA00(a1, v32, v33);
  *(v31 + v9) = v48;
  return swift_endAccess();
}

BOOL sub_2271348F4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 40;
    v4 = *(v1 - 32);
    sub_226F48150();
    sub_226EC1E18();
    v5 = sub_227663B30();
    v1 = v3;
    if (v5)
    {
      v1 = v3;
      if (v4 >= 11)
      {
        break;
      }
    }
  }

  return v2 != 0;
}

uint64_t sub_2271349A4(uint64_t a1)
{
  v62 = sub_227666900();
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v47 - v8;
  v9 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache;
  result = swift_beginAccess();
  v63 = v1;
  if (*(*(v1 + v9) + 16))
  {

    sub_226F3ACCC(a1);
    if (v11)
    {
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v57 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v56 = (v3 + 104);
    v55 = *MEMORY[0x277D52720];
    v54 = (v3 + 8);
    v16 = a1 + 64;
    v17 = &qword_27D7B88C0;
    v51 = a1;
    v50 = v9;
    v53 = v12;
    v47 = a1 + 64;
LABEL_7:
    v48 = v15;
    v49 = v14;
    v18 = (v16 + 40 * v13);
    v19 = &unk_22767A720;
    while (v13 < v12)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_33;
      }

      v68 = v13;
      v21 = v19;
      v22 = *(v18 - 4);
      v23 = *(v18 - 2);
      v24 = *(v18 - 1);
      v25 = *v18;
      sub_226EB396C(v23, v24, *v18);
      v26 = sub_2276672C0();
      if (!*(v26 + 16) || (v27 = sub_226F491D8(), (v28 & 1) == 0))
      {
        sub_226EB2DFC(v23, v24, v25);

        v40 = v63;
        v41 = v50;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = *(v40 + v41);
        *(v40 + v41) = 0x8000000000000000;
        sub_22736AA00(v51, isUniquelyReferenced_nonNull_native, 0.0);
        *(v40 + v41) = v69;
        return swift_endAccess();
      }

      v65 = v23;
      v66 = v24;
      v67 = v25;
      v52 = v22;
      v64 = v20;
      v29 = v59;
      sub_226E93170(*(v26 + 56) + *(v60 + 72) * v27, v59, v17, v21);

      v30 = v58;
      sub_226F50B4C(v29, v58);
      v31 = v61;
      v32 = v62;
      (*v56)(v61, v55, v62);
      v33 = MEMORY[0x277D52730];
      sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
      v34 = v17;
      v19 = v21;
      sub_22713CF20(&qword_27D7B88E0, v33, MEMORY[0x277D52748]);
      LOBYTE(v33) = sub_227663B30();
      (*v54)(v31, v32);
      if (v33)
      {
        v35 = sub_227667330();
        v36 = v65;
        v37 = v66;
        v38 = v67;
        v39 = sub_22718C9FC(v65, v66, v67, v35);
        sub_226EB2DFC(v36, v37, v38);

        v17 = v34;
        result = sub_226E97D1C(v30, v34, v21);
        if (v39)
        {
          v14 = v49 + v52;
          a1 = v51;
          v9 = v50;
          v15 = v48;
          v16 = v47;
          if (!__OFADD__(v49, v52))
          {
            goto LABEL_20;
          }

LABEL_35:
          __break(1u);
          return result;
        }

        v15 = v48 + v52;
        a1 = v51;
        v9 = v50;
        v14 = v49;
        v16 = v47;
        if (!__OFADD__(v48, v52))
        {
LABEL_20:
          v12 = v53;
          v13 = v64;
          if (v64 != v53)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_226E97D1C(v30, v17, v21);
      result = sub_226EB2DFC(v65, v66, v67);
      v13 = v68 + 1;
      v18 += 40;
      v12 = v53;
      if (v64 == v53)
      {
        a1 = v51;
        v9 = v50;
        v14 = v49;
        v15 = v48;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = 0;
  v14 = 0;
LABEL_24:
  if (v14 >= v15 || v14 <= 0)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = v63;
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v45 + v9);
  *(v45 + v9) = 0x8000000000000000;
  sub_22736AA00(a1, v46, v44);
  *(v45 + v9) = v69;
  return swift_endAccess();
}

uint64_t sub_227134FE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache;
  result = swift_beginAccess();
  v23 = v3;
  if (*(*(v1 + v3) + 16))
  {

    sub_226F3ACCC(a1);
    if (v5)
    {
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_25:
    v19 = v1;
    v20 = v23;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v1 + v23);
    *(v1 + v23) = 0x8000000000000000;
    v22 = 0.0;
LABEL_26:
    sub_22736AA00(a1, isUniquelyReferenced_nonNull_native, v22);
    *(v19 + v20) = v31;
    return swift_endAccess();
  }

  v24 = 0;
  v25 = 0;
  v26 = *(a1 + 16);
  v7 = 0;
  v28 = a1 + 32;
  v27 = a1;
  while (v7 < v6)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_29;
    }

    v9 = v28 + 40 * v7;
    v29 = *v9;
    v30 = v7 + 1;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    sub_226EB396C(v10, v11, v12);
    v13 = sub_227667330();
    if (*(v13 + 16) && (sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v14 = sub_22766D3F0(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
    {
      v17 = ~v15;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      result = sub_226EB2DFC(v10, v11, v12);
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_30;
      }

      ++v25;
      if (v29 > 19)
      {
        a1 = v27;
        v7 = v30;
        if ((v24 & 1) == 0)
        {
          v24 = 0;
          goto LABEL_24;
        }

        if (v18 > 1)
        {
LABEL_27:
          v19 = v1;
          v20 = v23;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *(v1 + v23);
          *(v1 + v23) = 0x8000000000000000;
          v22 = 1.0;
          goto LABEL_26;
        }
      }

      else
      {
        a1 = v27;
        v7 = v30;
        if (v18 >= 2)
        {
          goto LABEL_27;
        }
      }

      v24 = 1;
LABEL_24:
      v6 = v26;
      if (v8 == v26)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_7:
      sub_226EB2DFC(v10, v11, v12);

      v6 = v26;
      a1 = v27;
      v7 = v30;
      if (v8 == v26)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_227135360(uint64_t a1, uint64_t a2)
{
  v125 = a2;
  v90 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  MEMORY[0x28223BE20](v115);
  v114 = &v89 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v89 - v6;
  MEMORY[0x28223BE20](v7);
  v126 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v10 = *(v9 - 8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v104 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v89 - v14;
  MEMORY[0x28223BE20](v15);
  v120 = &v89 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB380, &qword_22767A738);
  v17 = *(v10 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_227675BD0;
  v20 = v19 + v18;
  v21 = *MEMORY[0x277D52720];
  v22 = sub_227666900();
  v23 = *(*(v22 - 8) + 104);
  v23(v20, v21, v22);
  swift_storeEnumTagMultiPayload();
  v23(v20 + v17, *MEMORY[0x277D52728], v22);
  v111 = v17;
  swift_storeEnumTagMultiPayload();
  v24 = *MEMORY[0x277D52718];
  v110 = v22;
  v23(v20 + 2 * v17, v24, v22);
  swift_storeEnumTagMultiPayload();
  v25 = sub_226F4D394(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v101 = *(v125 + 16);
  if (!v101)
  {
LABEL_48:

    return;
  }

  v118 = v9;
  v26 = 0;
  v119 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v100 = v125 + 32;
  v109 = v25;
  v106 = v25 + 56;
  v113 = (v11 + 56);
  v112 = (v11 + 48);
  v27 = 0.0;
  v28 = v108;
  v29 = v126;
  v30 = v104;
  while (1)
  {
    v105 = v26;
    v31 = v100 + 40 * v26;
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    v34 = *(v31 + 32);
    sub_226EB396C(v33, v32, *(v31 + 32));
    v35 = sub_2276672C0();
    if (*(v35 + 16))
    {
      v36 = sub_226F491D8();
      if (v37)
      {
        break;
      }
    }

    sub_226EB2DFC(v33, v32, v34);

LABEL_4:
    v26 = v105 + 1;
    if (v105 + 1 == v101)
    {
      goto LABEL_48;
    }
  }

  v97 = v33;
  v98 = v32;
  v99 = v34;
  v38 = v95;
  sub_226E93170(*(v35 + 56) + v36 * v111, v95, &qword_27D7B88C0, &unk_22767A720);

  sub_226F50B4C(v38, v120);
  if (!*(v109 + 16) || (sub_22766D370(), sub_22713CF20(&qword_27D7B88D0, MEMORY[0x277D52730], MEMORY[0x277D52738]), sub_227663B10(), v39 = sub_22766D3F0(), v40 = v109, v41 = -1 << *(v109 + 32), v42 = v39 & ~v41, ((*(v106 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0))
  {
LABEL_12:
    sub_226EB2DFC(v97, v98, v99);
    sub_226E97D1C(v120, &qword_27D7B88C0, &unk_22767A720);
    goto LABEL_4;
  }

  v43 = ~v41;
  while (1)
  {
    sub_226E93170(*(v40 + 48) + v42 * v111, v30, &qword_27D7B88C0, &unk_22767A720);
    v44 = MEMORY[0x277D52730];
    v45 = sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
    v46 = sub_22713CF20(&qword_27D7B88E0, v44, MEMORY[0x277D52748]);
    v47 = sub_227663B20();
    sub_226E97D1C(v30, &qword_27D7B88C0, &unk_22767A720);
    if (v47)
    {
      break;
    }

    v42 = (v42 + 1) & v43;
    v40 = v109;
    if (((*(v106 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v102 = v46;
  v103 = v45;
  v48 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v49 = *(v90 + *(v48 + 44));
  v50 = &qword_22767A730;
  if (!*(v49 + 16))
  {
    goto LABEL_45;
  }

  v51 = v48;
  v52 = sub_226F3ADC4(v120);
  if ((v53 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (*(*(v49 + 56) + 8 * v52) < 2)
  {
    sub_226E97D1C(v120, &qword_27D7B88C0, &unk_22767A720);
    sub_226EB2DFC(v97, v98, v99);
    goto LABEL_4;
  }

  v54 = *(v90 + *(v51 + 60));
  v55 = *(v54 + 16);
  if (!v55)
  {
LABEL_45:
    sub_226EB2DFC(v97, v98, v99);
LABEL_46:
    sub_226E97D1C(v120, &qword_27D7B88C0, &unk_22767A720);
    goto LABEL_4;
  }

  v92 = v54 + 32;
  v91 = v54;
LABEL_20:
  if (v55 <= *(v54 + 16))
  {
    --v55;
    v56 = *(v92 + 8 * v55);
    v57 = *(v56 + 16);
    if (!v57)
    {
      goto LABEL_19;
    }

    v94 = v55;

    v96 = 0;
    v58 = 0;
    v116 = -v57;
    v59 = v56 + 64;
    v117 = v56;
    v93 = v56 + 64;
LABEL_23:
    v60 = (v59 + 40 * v58);
    v61 = v58 + 1;
    while (1)
    {
      if ((v61 - 1) >= *(v56 + 16))
      {
        __break(1u);
        break;
      }

      v68 = *(v60 - 2);
      v69 = *(v60 - 1);
      v121 = v60;
      v70 = *v60;
      sub_226EB396C(v68, v69, *v60);
      v71 = sub_2276672C0();
      v72 = *(v71 + 16);
      v124 = v68;
      v125 = v61;
      v123 = v69;
      v122 = v70;
      if (v72 && (v73 = sub_226F491D8(), (v74 & 1) != 0))
      {
        sub_226E93170(*(v71 + 56) + v73 * v111, v29, &qword_27D7B88C0, &unk_22767A720);
        v75 = 0;
      }

      else
      {
        v75 = 1;
      }

      v76 = *v113;
      v77 = v126;
      v78 = v118;
      (*v113)(v126, v75, 1, v118);
      sub_226E93170(v120, v28, &qword_27D7B88C0, &unk_22767A720);
      v76(v28, 0, 1, v78);
      v79 = *(v115 + 48);
      v80 = v114;
      sub_226E93170(v77, v114, &qword_27D7BB378, v50);
      sub_226E93170(v28, v80 + v79, &qword_27D7BB378, v50);
      v81 = v50;
      v82 = *v112;
      if ((*v112)(v80, 1, v78) == 1)
      {
        v62 = v28;
        sub_226E97D1C(v28, &qword_27D7BB378, v50);
        sub_226E97D1C(v77, &qword_27D7BB378, v50);
        v63 = v82(v80 + v79, 1, v78) == 1;
        v64 = v80;
        v65 = v124;
        v58 = v125;
        v66 = v123;
        v67 = v122;
        if (v63)
        {
          v50 = &qword_22767A730;
          sub_226E97D1C(v64, &qword_27D7BB378, &qword_22767A730);
LABEL_38:
          v130 = v65;
          v131 = v66;
          v132 = v67;
          v127 = v97;
          v128 = v98;
          v129 = v99;
          sub_226F48150();
          sub_226EC1E18();
          v88 = sub_227663B20();
          sub_226EB2DFC(v65, v66, v67);
          v29 = v126;
          v56 = v117;
          if (v88)
          {
            v27 = v27 + 1.0;
            v96 = 1;
            v59 = v93;
            if (v116 + v58)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v96 = 1;
            v59 = v93;
            if (v116 + v58)
            {
              goto LABEL_23;
            }
          }

          sub_226EB2DFC(v97, v98, v99);

          v30 = v104;
          goto LABEL_46;
        }
      }

      else
      {
        v83 = v107;
        sub_226E93170(v80, v107, &qword_27D7BB378, v50);
        if (v82(v80 + v79, 1, v78) != 1)
        {
          v84 = v80;
          v85 = v80 + v79;
          v86 = v104;
          sub_226F50B4C(v85, v104);
          v87 = sub_227663B20();
          sub_226E97D1C(v86, &qword_27D7B88C0, &unk_22767A720);
          v28 = v108;
          sub_226E97D1C(v108, &qword_27D7BB378, v81);
          sub_226E97D1C(v126, &qword_27D7BB378, v81);
          sub_226E97D1C(v83, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v84, &qword_27D7BB378, v81);
          v50 = v81;
          v65 = v124;
          v58 = v125;
          v66 = v123;
          v67 = v122;
          if (v87)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v62 = v108;
        sub_226E97D1C(v108, &qword_27D7BB378, v50);
        sub_226E97D1C(v126, &qword_27D7BB378, v50);
        sub_226E97D1C(v83, &qword_27D7B88C0, &unk_22767A720);
        v64 = v80;
        v65 = v124;
        v58 = v125;
        v66 = v123;
        v67 = v122;
      }

      sub_226E97D1C(v64, &qword_27D7BB370, &unk_227686440);
      v50 = &qword_22767A730;
      v28 = v62;
LABEL_26:
      sub_226EB2DFC(v65, v66, v67);
      v61 = v58 + 1;
      v60 = v121 + 40;
      v29 = v126;
      v56 = v117;
      if (v116 + v61 == 1)
      {

        v30 = v104;
        if (v96)
        {
          goto LABEL_45;
        }

        v54 = v91;
        v55 = v94;
LABEL_19:
        if (!v55)
        {
          goto LABEL_45;
        }

        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2271360DC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 >= 2)
  {
    v2 = (result + 64);
    v3 = MEMORY[0x277D84F98];
    while (1)
    {
      v9 = *(v2 - 4);
      v8 = *(v2 - 3);
      v11 = *(v2 - 2);
      v10 = *(v2 - 1);
      v12 = *v2;

      sub_226EB396C(v11, v10, v12);

      sub_226EB396C(v11, v10, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_226F491D8();
      v16 = v3[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        break;
      }

      v20 = v15;
      if (v3[3] >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v14;
          sub_226FF2AA8();
          v14 = v26;
        }
      }

      else
      {
        sub_226FE7A78(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_226F491D8();
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_18;
        }
      }

      v29 = v1;
      if (v20)
      {
        v4 = v3[7] + 40 * v14;
        v5 = *(v4 + 16);
        v6 = *(v4 + 24);
        v7 = *(v4 + 32);
        *v4 = v9;
        *(v4 + 8) = v8;
        *(v4 + 16) = v11;
        *(v4 + 24) = v10;
        *(v4 + 32) = v12;

        sub_226EB2DFC(v5, v6, v7);

        sub_226EB2DFC(v11, v10, v12);
      }

      else
      {
        v3[(v14 >> 6) + 8] |= 1 << v14;
        v22 = v3[6] + 24 * v14;
        *v22 = v11;
        *(v22 + 8) = v10;
        *(v22 + 16) = v12;
        v23 = v3[7] + 40 * v14;
        *v23 = v9;
        *(v23 + 8) = v8;
        *(v23 + 16) = v11;
        *(v23 + 24) = v10;
        *(v23 + 32) = v12;
        sub_226EB396C(v11, v10, v12);

        sub_226EB2DFC(v11, v10, v12);
        v24 = v3[2];
        v18 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v18)
        {
          goto LABEL_17;
        }

        v3[2] = v25;
      }

      v2 += 40;
      v1 = v29 - 1;
      if (v29 == 1)
      {
        v27 = sub_227131120(v3);

        v28 = sub_2276672C0();
        sub_2274E8BB4(v27, v28);
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    result = sub_22766D220();
    __break(1u);
  }

  return result;
}

double sub_227136394(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_226F3ACCC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      return v8;
    }
  }

  v9 = *(a1 + 16);
  if (v9 < 2 || (v10 = , v11 = sub_226F43E68(v10, sub_2274E8434, 0), , v12 = *(v11 + 16), , v9 == v12) || (v13 = cbrt((v9 - v12)), v13 == 0.0))
  {
    sub_2271360DC(a1);
    v15 = v14;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v8 = 0.0;
    v17 = 0.0;
    v18 = v15;
  }

  else
  {
    v8 = v13;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    v18 = 0.0;
    v17 = v8;
  }

  sub_22736A898(a1, isUniquelyReferenced_nonNull_native, v17, v18);
  *(v2 + v4) = v20;
  swift_endAccess();
  return v8;
}

double sub_22713654C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = 0.0;
  if (*(a2 + 16) != 1)
  {
    return v18;
  }

  v19 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold(0) + 60));
  v20 = *(v19 + 16);
  if (!v20)
  {
    return v18;
  }

  v21 = v19 + 24;
  do
  {
    if (!v20)
    {
      return v18;
    }

    v22 = *(v21 + 8 * v20);
    v23 = *(v22 + 16);
    if (v23 > 1)
    {
      return v18;
    }

    --v20;
  }

  while (!v23);
  v48 = v11;
  v49 = v6;
  v24 = *(v22 + 48);
  v25 = *(v22 + 56);
  v26 = *(v22 + 64);

  v51 = v24;
  v52 = v25;
  v53 = v26;
  sub_226EB396C(v24, v25, v26);
  v50 = v2;
  v27 = sub_2276672C0();
  if (!*(v27 + 16))
  {

    v45 = v51;
    v46 = v52;
LABEL_16:
    sub_226EB2DFC(v45, v46, v53);
    return v18;
  }

  v29 = v51;
  v28 = v52;
  v30 = sub_226F491D8();
  if ((v31 & 1) == 0)
  {

    v45 = v29;
    v46 = v28;
    goto LABEL_16;
  }

  v32 = *(v49 + 72);
  sub_226E93170(*(v27 + 56) + v32 * v30, v14, &qword_27D7B88C0, &unk_22767A720);

  sub_226EB2DFC(v29, v28, v53);

  sub_226F50B4C(v14, v17);
  v33 = sub_2276672C0();
  if (*(v33 + 16) && (v34 = v32, v35 = *(a2 + 64), v38 = a2 + 48, v36 = *(a2 + 48), v37 = *(v38 + 8), sub_226EB396C(v36, v37, v35), v39 = sub_226F491D8(), v41 = v40, sub_226EB2DFC(v36, v37, v35), (v41 & 1) != 0))
  {
    sub_226E93170(*(v33 + 56) + v39 * v34, v8, &qword_27D7B88C0, &unk_22767A720);

    v42 = v48;
    sub_226F50B4C(v8, v48);
    sub_227666900();
    v43 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
    sub_22713CF20(&qword_27D7B88E0, v43, MEMORY[0x277D52748]);
    v44 = sub_227663B20();
    sub_226E97D1C(v42, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v17, &qword_27D7B88C0, &unk_22767A720);
    if (v44)
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {

    sub_226E97D1C(v17, &qword_27D7B88C0, &unk_22767A720);
  }

  return v18;
}

void sub_22713694C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold(0);

  v8 = sub_22713B9BC(v7, v3);

  v9 = *(v8 + 16);

  if (v9 >= 2)
  {

    v11 = sub_22713C0E8(v10, v3);

    v12 = *(v11 + 16);

    if (v12)
    {
      v14 = *(a1 + *(v6 + 60));
      v15 = *(v14 + 16);
      if (v15)
      {
        v57 = *(a1 + *(v6 + 60));
        while (v15)
        {
          if (*(*(v14 + 24 + 8 * v15--) + 16))
          {
            MEMORY[0x28223BE20](v13);
            v52 = v17;
            sub_22713CF80(&v52, &v55);
            v18 = v55;
            if (v55)
            {
              v19 = sub_227667250();
              v20 = 0;
              v21 = v19 + 56;
              v50 = v19;
              v22 = 1 << *(v19 + 32);
              v23 = -1;
              if (v22 < 64)
              {
                v23 = ~(-1 << v22);
              }

              v24 = v23 & *(v19 + 56);
              v25 = (v22 + 63) >> 6;
              v46 = a2;
              v47 = (v18 + 64);
              v45 = (a2 + 64);
              v26 = 0.0;
              v48 = v25;
              v49 = v19 + 56;
              v51 = v18;
              while (v24)
              {
LABEL_19:
                v28 = __clz(__rbit64(v24));
                v24 &= v24 - 1;
                v29 = *(v50 + 48) + 24 * (v28 | (v20 << 6));
                v30 = *v29;
                v31 = *(v29 + 8);
                v32 = *(v29 + 16);
                v33 = *(v18 + 16);
                sub_226EB396C(*v29, v31, v32);

                v34 = v33 + 1;
                v35 = v47;
                do
                {
                  if (!--v34)
                  {
                    v18 = v51;
                    goto LABEL_12;
                  }

                  v36 = v35 + 40;
                  v37 = *v35;
                  v55 = *(v35 - 1);
                  v56 = v37;
                  v52 = v30;
                  v53 = v31;
                  v54 = v32;
                  sub_226F48150();
                  sub_226EC1E18();
                  v38 = sub_227663B20();
                  v35 = v36;
                }

                while ((v38 & 1) == 0);

                v39 = *(v46 + 16);

                v40 = v39 + 1;
                v41 = v45;
                while (--v40)
                {
                  v42 = v41 + 40;
                  v43 = *v41;
                  v55 = *(v41 - 1);
                  v56 = v43;
                  v52 = v30;
                  v53 = v31;
                  v54 = v32;
                  v44 = sub_227663B20();
                  v41 = v42;
                  if (v44)
                  {

                    sub_226EB2DFC(v30, v31, v32);
                    v26 = v26 + 1.0;
                    v18 = v51;
                    goto LABEL_13;
                  }
                }

                v18 = v51;
LABEL_12:

                sub_226EB2DFC(v30, v31, v32);
LABEL_13:
                v25 = v48;
                v21 = v49;
              }

              while (1)
              {
                v27 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                if (v27 >= v25)
                {

                  return;
                }

                v24 = *(v21 + 8 * v27);
                ++v20;
                if (v24)
                {
                  v20 = v27;
                  goto LABEL_19;
                }
              }

              __break(1u);
              __break(1u);
            }

            return;
          }
        }
      }
    }
  }
}

void sub_227136CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227666900();
  v8 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v34 - v13;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return;
  }

  v37 = a1;
  v34 = v7;
  v35 = v5;
  v36 = v4;
  v41 = 0;
  v42 = 0;
  v15 = 0;
  v48 = 0;
  v50 = 0;
  v51 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v40 = *MEMORY[0x277D52720];
  v38 = (v8 + 8);
  v39 = (v8 + 104);
  v16 = (a2 + 64);
  do
  {
    v17 = *(v16 - 4);
    v19 = *(v16 - 2);
    v18 = *(v16 - 1);
    v20 = *v16;
    v53 = v19;
    v54 = v18;
    v55 = v20;
    v52 = 13;
    sub_226EB396C(v19, v18, v20);
    sub_226F48150();
    sub_226EC1E18();
    if (sub_227663B30())
    {
      if (__OFADD__(v50, v17))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v50 += v17;
      v48 = 1;
    }

    v53 = v19;
    v54 = v18;
    v55 = v20;
    v52 = 3;
    v21 = sub_227663B30();
    v22 = sub_2276672C0();
    if (!*(v22 + 16))
    {
      sub_226EB2DFC(v19, v18, v20);
LABEL_4:

      goto LABEL_5;
    }

    v49 = v17;
    v23 = sub_226F491D8();
    v25 = v24;
    sub_226EB2DFC(v19, v18, v20);
    if ((v25 & 1) == 0)
    {
      goto LABEL_4;
    }

    v26 = *(v22 + 56) + *(v45 + 72) * v23;
    v27 = v44;
    sub_226E93170(v26, v44, &qword_27D7B88C0, &unk_22767A720);

    v28 = v43;
    sub_226F50B4C(v27, v43);
    v30 = v46;
    v29 = v47;
    (*v39)(v46, v40, v47);
    v31 = MEMORY[0x277D52730];
    sub_22713CF20(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
    sub_22713CF20(&qword_27D7B88E0, v31, MEMORY[0x277D52748]);
    LOBYTE(v31) = sub_227663B30();
    (*v38)(v30, v29);
    sub_226E97D1C(v28, &qword_27D7B88C0, &unk_22767A720);
    if (v31)
    {
      if (__OFADD__(v42, 1))
      {
        goto LABEL_24;
      }

      if (__OFADD__(v41, v49))
      {
        goto LABEL_25;
      }

      v41 += v49;
      ++v42;
    }

LABEL_5:
    v15 |= v21;
    v16 += 40;
    --v14;
  }

  while (v14);
  if ((v48 & 1) == 0)
  {
    return;
  }

  if (v37 > 89)
  {
    if (v42 < 2)
    {
      return;
    }
  }

  else if (v15 & 1 | (v42 < 1))
  {
    return;
  }

  v32 = v34;
  sub_227667240();
  v33 = sub_227667F60();
  (*(v35 + 8))(v32, v36);
  if (__OFSUB__(v41, v33))
  {
    goto LABEL_26;
  }
}

uint64_t sub_227137238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v190 = sub_22766B390();
  v6 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v192 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_2276681F0();
  v8 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v189 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v211 = *(a1 + v10[12]);
  v11 = sub_227668780();
  v12 = sub_227668780();
  v13 = 0.0;
  v14 = &unk_27D7CE000;
  v187 = a2;
  v191 = v10;
  if (v11 == v12)
  {
    v15 = *(a1 + v10[17]);
    v16 = a1;
    v17 = *(a1 + v10[16]);
    v18 = 0.0;
    if (*(v17 + 16))
    {
      v19 = sub_226F491D8();
      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v19);
        v22 = v189;
        sub_227667240();
        v23 = sub_227668020();
        result = (*(v8 + 8))(v22, v212);
        if (__OFSUB__(v21, v23))
        {
LABEL_33:
          __break(1u);
          return result;
        }

        v18 = ((v21 - v23) & ~((v21 - v23) >> 63));
      }
    }

    v25 = sub_22713A724(v17);
    v213 = 0;
    v26 = v25[2];

    v27 = v26;
    sub_22713ACCC(*(v16 + v10[15]), 0);
    v29 = v28;
    v30 = v189;
    sub_227667240();
    sub_227667F20();
    v32 = v31;
    v33 = v6;
    v34 = *(v8 + 8);
    v35 = v212;
    v34(v30, v212);
    v36 = v15 * v32 + 0.0;
    sub_227667240();
    sub_227667EE0();
    v38 = v37;
    v34(v30, v35);
    v39 = v36 - v18 * v38;
    sub_227667240();
    sub_227667EF0();
    v41 = v40;
    v34(v30, v35);
    v42 = v39 + v41 * v27;
    sub_227667240();
    sub_227668000();
    v44 = v43;
    v34(v30, v35);
    v14 = &unk_27D7CE000;
    v6 = v33;
    v13 = v42 - v29 * v44;
  }

  else
  {
    v16 = a1;
    v213 = 0;
    v35 = v212;
    v30 = v189;
  }

  v209 = v14[89];
  sub_227667240();
  v45 = sub_227668090();
  v46 = *(v8 + 8);
  v210 = v8 + 8;
  v208 = v46;
  result = (v46)(v30, v35);
  if (v45 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v45)
  {
    v48 = 0.0;
    v49 = v16;
    v215 = *(v16 + v191[15]);
    v214 = v215 + 32;
    v188 = (v6 + 8);
    *&v47 = 134218754;
    v186 = v47;
    v50 = v189;
    v185 = v3;
    v184 = v16;
    v207 = v45;
    while (*&v48 < *(v215 + 16))
    {
      if (*(*(v214 + 8 * *&v48) + 16))
      {
        result = MEMORY[0x22AA95620](*&v48);
        if (result != 7)
        {
          if (*&v48 >= *(v215 + 16))
          {
            goto LABEL_31;
          }

          v134 = result;
          v135 = *(v214 + 8 * *&v48);
          MEMORY[0x28223BE20](result);
          *(&v184 - 2) = v49;
          *(&v184 - 1) = v3;

          v136 = v49;
          v137 = v213;
          v138 = sub_2270A83F4(sub_22713CF68, 0.0, (&v184 - 4), v135);
          MEMORY[0x28223BE20](v139);
          *(&v184 - 4) = v136;
          *(&v184 - 24) = v134;
          *(&v184 - 2) = v3;
          v140 = sub_2270A83F4(sub_22713CEB8, 0.0, (&v184 - 6), v135);
          v213 = v137;
          v141 = sub_227136394(v135);
          v143 = v142;
          v144 = sub_227668780();
          if (v144 == sub_227668780())
          {
            sub_22713AF20(v135);
            v196 = v51;
            sub_2271343E4(v135);
            v202 = v52;
            sub_22713B008(v135);
            v197 = v53;
            v54 = v215;
            sub_22713350C(v215, v135);
            v56 = v55;
            sub_227133698(v54, v135);
            v201 = v57;
            v49 = v136;
            v58 = sub_22713654C(v136, v135);
            sub_227135360(v136, v135);
            v206 = v13;
            v60 = v59;
            sub_22713B4A4(v135);
            v205 = v138;
            v62 = v61;
            sub_22713694C(v136, v135);
            v193 = v63;
            sub_22713C53C(v135);
            v194 = v64;
            sub_22713C714(v54);
            v198 = v65;
            sub_22713C864(v54, v135);
            v195 = v66;
            sub_22713C9B0(v135);
            v199 = v67;
            sub_2271349A4(v135);
            v200 = v68;
            sub_227134FE0(v135);
            v203 = v69;
            sub_227136CC4(*(v136 + v191[7]), v135);
            v71 = v70;

            sub_227667240();
            sub_227668030();
            v204 = v140;
            v73 = v72;
            v74 = v212;
            v75 = v208;
            v208(v50, v212);
            v76 = v56 * v73;
            sub_227667240();
            sub_2276680E0();
            v78 = v77;
            v75(v50, v74);
            v79 = v76 + v58 * v78;
            sub_227667240();
            sub_2276681D0();
            v81 = v80;
            v75(v50, v74);
            v82 = v79 + v60 * v81;
            sub_227667240();
            sub_2276681A0();
            v84 = v83;
            v75(v50, v74);
            v85 = v82 + v141 * v84;
            sub_227667240();
            sub_227668180();
            v87 = v86;
            v75(v50, v74);
            v88 = v85 + v143 * v87;
            sub_227667240();
            sub_227668150();
            v90 = v89;
            v75(v50, v74);
            v91 = v88 + v62 * v90;
            v92 = v206;
            sub_227667240();
            sub_227668190();
            v94 = v93;
            v75(v50, v74);
            v95 = v91 + v193 * v94;
            sub_227667240();
            sub_2276680B0();
            v97 = v96;
            v75(v50, v74);
            v98 = v95 + v194 * v97;
            sub_227667240();
            sub_227668080();
            v100 = v99;
            v75(v50, v74);
            v101 = v98 + v71 * v100;
            sub_227667240();
            sub_227668040();
            v103 = v102;
            v75(v50, v74);
            v104 = v101 + v195 * v103;
            sub_227667240();
            sub_227667EC0();
            v106 = v105;
            v75(v50, v74);
            v107 = v104 + v196 * v106;
            sub_227667240();
            sub_227667FE0();
            v109 = v108;
            v75(v50, v74);
            v110 = v107 + v197 * v109;
            sub_227667240();
            sub_227667FB0();
            v112 = v111;
            v75(v50, v74);
            v113 = v110 + v202 * v112;
            sub_227667240();
            sub_227667F90();
            v115 = v114;
            v75(v50, v74);
            v116 = v113 + v201 * v115;
            sub_227667240();
            sub_227668070();
            v118 = v117;
            v75(v50, v74);
            v119 = v116 + v198 * v118;
            sub_227667240();
            sub_2276680A0();
            v121 = v120;
            v75(v50, v74);
            v122 = v119 + v199 * v121;
            sub_227667240();
            sub_227668100();
            v124 = v123;
            v75(v50, v74);
            v125 = v122 + v200 * v124;
            sub_227667240();
            sub_2276681E0();
            v127 = v126;
            v75(v50, v74);
            v128 = v125 + v203 * v127;
            sub_227667240();
            sub_227668140();
            v130 = v129;
            v75(v50, v74);
            v131 = v128 + v205 * v130;
            sub_227667240();
            sub_227668130();
            v133 = v132;
            result = (v75)(v50, v74);
            v13 = v92 - (v131 + v204 * v133);
            v45 = v207;
          }

          else
          {
            v49 = v136;
            v206 = v48;
            sub_227667240();
            sub_227668140();
            v146 = v145;
            v147 = v212;
            v148 = v208;
            v208(v50, v212);
            v149 = v138 * v146;
            sub_227667240();
            sub_227668130();
            v151 = v150;
            v148(v50, v147);
            v152 = v149 + v140 * v151;
            sub_227667240();
            sub_2276681A0();
            v154 = v153;
            v148(v50, v147);
            v13 = v13 - (v152 + v141 * v154);
            v155 = v192;
            sub_22766A630();

            v156 = COERCE_DOUBLE(sub_22766B380());
            v157 = sub_22766C880();

            if (os_log_type_enabled(*&v156, v157))
            {
              LODWORD(v204) = v157;
              v158 = COERCE_DOUBLE(swift_slowAlloc());
              v203 = COERCE_DOUBLE(swift_slowAlloc());
              v221 = v203;
              **&v158 = v186;
              *(*&v158 + 4) = v187;
              v205 = *&v135;
              *(*&v158 + 12) = 2080;
              v159 = sub_2276692E0();
              v161 = sub_226E97AE8(v159, v160, &v221);

              *(*&v158 + 14) = v161;
              *(*&v158 + 22) = 2080;
              v162 = v205;
              v163 = *(*&v205 + 16);
              if (v163)
              {
                v201 = v158;
                v202 = v156;
                v220 = MEMORY[0x277D84F90];
                sub_226F1EF90();
                v164 = v220;
                v165 = (*&v162 + 64);
                do
                {
                  v166 = *(v165 - 4);
                  v168 = *(v165 - 1);
                  v169 = *v165;
                  v217 = *(v165 - 2);
                  v167 = v217;
                  v218 = v168;
                  v219 = v169;

                  sub_226EB396C(v167, v168, v169);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
                  sub_22713A9EC();
                  v217 = sub_227663B60();
                  v218 = v170;
                  MEMORY[0x22AA98450](40, 0xE100000000000000);
                  v216 = v166;
                  v171 = sub_22766D140();
                  MEMORY[0x22AA98450](v171);

                  MEMORY[0x22AA98450](41, 0xE100000000000000);

                  sub_226EB2DFC(v167, v168, v169);
                  v172 = v217;
                  v173 = v218;
                  v220 = v164;
                  v174 = *(v164 + 16);
                  if (v174 >= *(v164 + 24) >> 1)
                  {
                    sub_226F1EF90();
                    v164 = v220;
                  }

                  *(v164 + 16) = v174 + 1;
                  v175 = v164 + 16 * v174;
                  *(v175 + 32) = v172;
                  *(v175 + 40) = v173;
                  v165 += 40;
                  --v163;
                }

                while (v163);

                v3 = v185;
                v176 = v164;
                v49 = v184;
                v177 = v190;
                v178 = v192;
                v50 = v189;
                v156 = v202;
                v158 = v201;
              }

              else
              {

                v176 = MEMORY[0x277D84F90];
                v177 = v190;
                v178 = v192;
              }

              v217 = v176;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
              sub_22713AA40();
              v179 = sub_22766BF70();
              v181 = v180;

              v182 = sub_226E97AE8(v179, v181, &v221);

              *(*&v158 + 24) = v182;
              *(*&v158 + 32) = 2048;
              *(*&v158 + 34) = v13;
              _os_log_impl(&dword_226E8E000, *&v156, LOBYTE(v204), "[Algorithm.Scoring]: %ld Personalized Candidate %s -> %s: -%f", *&v158, 0x2Au);
              v183 = v203;
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](*&v183, -1, -1);
              MEMORY[0x22AA9A450](*&v158, -1, -1);

              result = (*v188)(v178, v177);
            }

            else
            {

              result = (*v188)(v155, v190);
            }

            v45 = v207;
            v48 = v206;
          }
        }
      }

      if (++*&v48 == v45)
      {
        return result;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

double sub_22713824C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v189 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v170 - v10;
  v188 = sub_2276681F0();
  isa = v188[-1].isa;
  MEMORY[0x28223BE20](v188);
  v14 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = a2;
  v192 = v3;
  v15 = a1;
  v16 = sub_2270A83F4(sub_22713A9D0, 0.0, v190, a1);
  v17 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v18 = sub_227668780();
  if (v18 == sub_227668780())
  {
    v186 = v6;
    v19 = v15;
    sub_22713CD14(a2, v15);
    v21 = v20;
    v185 = v11;
    v22 = WorkoutPlanGenerationScaffold.incrementalEntropy(for:)(v15);
    v184 = v16;
    v23 = v22;
    sub_227667240();
    sub_227667EF0();
    v25 = v24;
    v187 = v17;
    v26 = *(isa + 1);
    v27 = v188;
    v26(v14, v188);
    v28 = v21 * v25 + 0.0;
    sub_227667240();
    sub_227667F20();
    v30 = v29;
    v26(v14, v27);
    v183 = v28 + v23 * v30;
    v31 = *(a2 + *(v17 + 60));
    sub_22713350C(v31, v19);
    v33 = v32;
    sub_227133698(v31, v19);
    v182 = v34;
    v35 = sub_22713654C(a2, v19);
    sub_227135360(a2, v19);
    v37 = v36;
    v38 = sub_227136394(v19);
    v40 = v39;
    sub_22713B4A4(v19);
    v42 = v41;
    sub_22713694C(a2, v19);
    v170 = v43;
    sub_22713C53C(v19);
    v171 = v44;
    v172 = sub_22713381C(*(a2 + *(v187 + 16)), v19);
    sub_22713B008(v19);
    v176 = v45;
    sub_22713C864(v31, v19);
    v173 = v46;
    sub_22713C714(v31);
    v179 = v47;
    sub_22713AF20(v19);
    v174 = v48;
    sub_22713ACCC(v31, v19);
    v177 = v49;
    sub_2271343E4(v19);
    v175 = v50;
    sub_22713C9B0(v19);
    v178 = v51;
    sub_2271349A4(v19);
    v180 = v52;
    sub_227134FE0(v19);
    v181 = v53;
    sub_227136CC4(*(a2 + *(v187 + 7)), v19);
    v55 = v54;
    sub_227667240();
    sub_227668030();
    v57 = v56;
    v26(v14, v27);
    v58 = v33 * v57;
    sub_227667240();
    sub_2276680E0();
    v60 = v59;
    v26(v14, v27);
    v61 = v58 + v35 * v60;
    sub_227667240();
    sub_2276681D0();
    v63 = v62;
    v26(v14, v27);
    v64 = v61 + v37 * v63;
    sub_227667240();
    sub_2276681A0();
    v66 = v65;
    v26(v14, v27);
    v67 = v64 + v38 * v66;
    sub_227667240();
    sub_227668180();
    v69 = v68;
    v26(v14, v27);
    v70 = v67 + v40 * v69;
    sub_227667240();
    sub_227668150();
    v72 = v71;
    v26(v14, v27);
    v73 = v70 + v42 * v72;
    sub_227667240();
    sub_227668190();
    v75 = v74;
    v26(v14, v27);
    v76 = v73 + v170 * v75;
    sub_227667240();
    sub_2276680B0();
    v78 = v77;
    v26(v14, v27);
    v79 = v76 + v171 * v78;
    sub_227667240();
    sub_227668080();
    v81 = v80;
    v26(v14, v27);
    v82 = v79 + v55 * v81;
    sub_227667240();
    sub_227667EE0();
    v84 = v83;
    v26(v14, v27);
    v85 = v82 + v84 * v172;
    sub_227667240();
    sub_227668040();
    v87 = v86;
    v26(v14, v27);
    v88 = v85 + v173 * v87;
    sub_227667240();
    sub_227667EC0();
    v90 = v89;
    v26(v14, v27);
    v91 = v88 + v174 * v90;
    sub_227667240();
    sub_227667FE0();
    v93 = v92;
    v26(v14, v27);
    v94 = v91 + v176 * v93;
    sub_227667240();
    sub_227667FB0();
    v96 = v95;
    v26(v14, v27);
    v97 = v94 + v175 * v96;
    sub_227667240();
    sub_227668000();
    v99 = v98;
    v26(v14, v27);
    v100 = v97 + v177 * v99;
    sub_227667240();
    sub_227667F90();
    v102 = v101;
    v26(v14, v27);
    v103 = v100 + v182 * v102;
    sub_227667240();
    sub_227668070();
    v105 = v104;
    v26(v14, v27);
    v106 = v103 + v179 * v105;
    sub_227667240();
    sub_2276680A0();
    v108 = v107;
    v26(v14, v27);
    v109 = v106 + v178 * v108;
    sub_227667240();
    sub_227668100();
    v111 = v110;
    v26(v14, v27);
    v112 = v109 + v180 * v111;
    sub_227667240();
    sub_2276681E0();
    v114 = v113;
    v26(v14, v27);
    v115 = v112 + v181 * v114;
    sub_227667240();
    sub_227668140();
    v117 = v116;
    v26(v14, v27);
    v118 = v183 - (v115 + v184 * v117);
    v119 = v185;
    sub_22766A630();

    v120 = sub_22766B380();
    v121 = sub_22766C880();

    v188 = v120;
    if (os_log_type_enabled(v120, v121))
    {
      v122 = COERCE_DOUBLE(swift_slowAlloc());
      *&v123 = COERCE_DOUBLE(swift_slowAlloc());
      v124 = *&v123;
      v198[0] = v123;
      **&v122 = 136315394;
      v125 = *(v19 + 16);
      v126 = MEMORY[0x277D84F90];
      if (v125)
      {
        v183 = *&v123;
        v184 = v122;
        LODWORD(v187) = v121;
        v197 = MEMORY[0x277D84F90];
        sub_226F1EF90();
        v126 = v197;
        v127 = (v19 + 64);
        do
        {
          v128 = *(v127 - 4);
          v129 = *(v127 - 1);
          v131 = *v127;
          v194 = *(v127 - 2);
          v130 = v194;
          v195 = v129;
          v196 = v131;

          sub_226EB396C(v130, v129, v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v194 = sub_227663B60();
          v195 = v132;
          MEMORY[0x22AA98450](40, 0xE100000000000000);
          v193 = v128;
          v133 = sub_22766D140();
          MEMORY[0x22AA98450](v133);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          sub_226EB2DFC(v130, v129, v131);
          v134 = v194;
          v135 = v195;
          v197 = v126;
          v136 = *(v126 + 16);
          if (v136 >= *(v126 + 24) >> 1)
          {
            sub_226F1EF90();
            v126 = v197;
          }

          *(v126 + 16) = v136 + 1;
          v137 = v126 + 16 * v136;
          *(v137 + 32) = v134;
          *(v137 + 40) = v135;
          v127 += 40;
          --v125;
        }

        while (v125);
        v119 = v185;
        LOBYTE(v121) = v187;
        v122 = v184;
        v124 = v183;
      }

      v194 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_22713AA40();
      v158 = sub_22766BF70();
      v160 = v159;

      v161 = sub_226E97AE8(v158, v160, v198);

      *(*&v122 + 4) = v161;
      *(*&v122 + 12) = 2048;
      *(*&v122 + 14) = v118;
      v162 = v188;
      _os_log_impl(&dword_226E8E000, v188, v121, "[Algorithm.Scoring]: Calculated scaffold penalty for daily schedule: %s => %f", *&v122, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(*&v124);
      MEMORY[0x22AA9A450](*&v124, -1, -1);
      MEMORY[0x22AA9A450](*&v122, -1, -1);
    }

    else
    {
    }

    (*(v189 + 8))(v119, v186);
  }

  else
  {
    sub_227667240();
    sub_227668140();
    v139 = v138;
    (*(isa + 1))(v14, v188);
    v118 = 0.0 - v16 * v139;
    sub_22766A630();
    v140 = v15;

    v141 = sub_22766B380();
    v142 = sub_22766C880();

    v188 = v141;
    v143 = v8;
    if (os_log_type_enabled(v141, v142))
    {
      v144 = COERCE_DOUBLE(swift_slowAlloc());
      v187 = swift_slowAlloc();
      v198[0] = v187;
      **&v144 = 136315394;
      v145 = *(v140 + 16);
      v146 = MEMORY[0x277D84F90];
      if (v145)
      {
        v183 = v144;
        LODWORD(v184) = v142;
        v185 = v143;
        v186 = v6;
        v197 = MEMORY[0x277D84F90];
        sub_226F1EF90();
        v146 = v197;
        v147 = (v140 + 64);
        do
        {
          v148 = *(v147 - 4);
          v150 = *(v147 - 1);
          v151 = *v147;
          v194 = *(v147 - 2);
          v149 = v194;
          v195 = v150;
          v196 = v151;

          sub_226EB396C(v149, v150, v151);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_22713A9EC();
          v194 = sub_227663B60();
          v195 = v152;
          MEMORY[0x22AA98450](40, 0xE100000000000000);
          v193 = v148;
          v153 = sub_22766D140();
          MEMORY[0x22AA98450](v153);

          MEMORY[0x22AA98450](41, 0xE100000000000000);

          sub_226EB2DFC(v149, v150, v151);
          v154 = v194;
          v155 = v195;
          v197 = v146;
          v156 = *(v146 + 16);
          if (v156 >= *(v146 + 24) >> 1)
          {
            sub_226F1EF90();
            v146 = v197;
          }

          *(v146 + 16) = v156 + 1;
          v157 = v146 + 16 * v156;
          *(v157 + 32) = v154;
          *(v157 + 40) = v155;
          v147 += 40;
          --v145;
        }

        while (v145);
        v6 = v186;
        v143 = v185;
        LOBYTE(v142) = LOBYTE(v184);
        v144 = v183;
      }

      v194 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      sub_22713AA40();
      v163 = sub_22766BF70();
      v165 = v164;

      v166 = sub_226E97AE8(v163, v165, v198);

      *(*&v144 + 4) = v166;
      *(*&v144 + 12) = 2048;
      *(*&v144 + 14) = v118;
      v167 = v188;
      _os_log_impl(&dword_226E8E000, v188, v142, "[Algorithm.Scoring]: Calculated personalized scaffold penalty for daily schedule: %s => %f", *&v144, 0x16u);
      v168 = v187;
      __swift_destroy_boxed_opaque_existential_0(v187);
      MEMORY[0x22AA9A450](v168, -1, -1);
      MEMORY[0x22AA9A450](*&v144, -1, -1);
    }

    else
    {
    }

    (*(v189 + 8))(v143, v6);
  }

  return v118;
}

uint64_t sub_227139134(uint64_t a1)
{
  v2 = sub_227666B60();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276681F0();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v64 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = sub_227662940();
  v73 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_227662750();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v61 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - v24;
  sub_227662740();
  sub_227662920();
  v66 = a1;
  sub_227666A60();
  sub_2276628D0();
  v26 = *(v9 + 8);
  v27 = v13;
  v28 = v21;
  v65 = v8;
  v62 = v9 + 8;
  v26(v27, v8);
  v29 = *(v73 + 8);
  v63 = v14;
  v29(v16, v14);
  v30 = (*(v28 + 48))(v19, 1, v20);
  v74 = v20;
  if (v30 == 1)
  {
    v65 = v25;
    sub_226E97D1C(v19, &qword_27D7B9690, qword_227670B50);
  }

  else
  {
    v31 = v61;
    (*(v28 + 32))(v61, v19, v20);
    sub_227662920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v57 = v26;
    v32 = sub_227662930();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_227670CD0;
    (*(v33 + 104))(v35 + v34, *MEMORY[0x277CC9968], v32);
    sub_226F4CE68(v35);
    v73 = v28;
    swift_setDeallocating();
    (*(v33 + 8))(v35 + v34, v32);
    swift_deallocClassInstance();
    v36 = v64;
    sub_2276628A0();

    v29(v16, v63);
    v37 = sub_227662120();
    LOBYTE(v32) = v38;
    v57(v36, v65);
    if ((v32 & 1) == 0)
    {
      exp(-fabs((v37 / 7)));
      v53 = v58;
      sub_227667240();
      sub_227667FD0();
      (*(v59 + 8))(v53, v60);
      v54 = v74;
      v55 = *(v73 + 8);
      v55(v31, v74);
      return (v55)(v25, v54);
    }

    v65 = v25;
    v28 = v73;
    (*(v73 + 8))(v31, v74);
  }

  v39 = v70;
  sub_22766A630();
  v40 = v67;
  v41 = v68;
  v42 = v69;
  (*(v68 + 16))(v67, v66, v69);
  v43 = sub_22766B380();
  v44 = sub_22766C890();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v73 = v28;
    v47 = v46;
    v75 = v46;
    *v45 = 136315138;
    sub_22713CF20(&qword_27D7BB360, MEMORY[0x277D52828], MEMORY[0x277D52840]);
    v48 = sub_22766D140();
    v50 = v49;
    (*(v41 + 8))(v40, v42);
    v51 = sub_226E97AE8(v48, v50, &v75);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_226E8E000, v43, v44, "Unable to compute contentRecencyObjective for candidate: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AA9A450](v47, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v71 + 8))(v39, v72);
    return (*(v73 + 8))(v65, v74);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
    (*(v71 + 8))(v39, v72);
    return (*(v28 + 8))(v65, v74);
  }
}

uint64_t sub_2271399F8(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v7 = sub_227666A50();
  if (!*(v6 + 16))
  {
  }

  v9 = sub_226E92000(v7, v8);
  v11 = v10;

  if (v11)
  {
    v13 = *(*(v6 + 56) + 8 * v9);
    sub_227667240();
    v14 = sub_227667EB0();
    v15 = *(v3 + 8);
    result = v15(v5, v2);
    if (v14 < 1)
    {
      __break(1u);
    }

    else if (v13 >= 1 && v14 >= v13)
    {
      sub_227667240();
      sub_227667EA0();
      return v15(v5, v2);
    }
  }

  return result;
}

double sub_227139B88(uint64_t a1, uint64_t a2)
{
  v5 = sub_2276681F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v10 = *(a1 + 16);
  do
  {
    if (!v10)
    {
      return 0.0;
    }
  }

  while (!*(*(a1 + 24 + 8 * v10--) + 16));
  v30 = v2;
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  *(&v27 - 2) = &v33;
  v34 = v12;
  sub_22713A96C(&v34, v32);
  v13 = v32[0];
  v14 = 0.0;
  if (v32[0])
  {
    v15 = *(v32[0] + 16);
    if (v15)
    {
      v27 = a2;
      v28 = v9;
      v29 = v6;
      v32[0] = MEMORY[0x277D84F90];
      sub_226F1EF90();
      v16 = v32[0];
      v17 = v13 + 40;
      do
      {

        v18 = sub_227667380();
        v20 = v19;

        v32[0] = v16;
        v21 = *(v16 + 16);
        if (v21 >= *(v16 + 24) >> 1)
        {
          sub_226F1EF90();
          v16 = v32[0];
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v17 += 16;
        --v15;
      }

      while (v15);

      v9 = v28;
      v6 = v29;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v32[0] = sub_227666A50();
    v32[1] = v23;
    MEMORY[0x28223BE20](v32[0]);
    *(&v27 - 2) = v32;
    v24 = sub_226F7E160(sub_226FA6D84, (&v27 - 4), v16);

    if (v24)
    {
      sub_227667240();
      sub_227667FA0();
      v14 = v25;
      (*(v6 + 8))(v9, v31);
    }
  }

  return v14;
}

uint64_t sub_227139E60(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 24);
  v13 = sub_227666A50();
  if (!*(v12 + 16))
  {
  }

  v15 = sub_226E92000(v13, v14);
  v17 = v16;

  if (v17)
  {
    v19 = *(*(v12 + 56) + 8 * v15);
    sub_227667240();
    sub_227667F30();
    v20 = *(v3 + 8);
    v20(v11, v2);
    sub_227667240();
    sub_227667F70();
    result = (v20)(v8, v2);
    if (__OFSUB__(v19, 2))
    {
      __break(1u);
    }

    else
    {
      sub_227667240();
      sub_227667E80();
      v20(v5, v2);
      sub_227667240();
      sub_227667E70();
      return (v20)(v5, v2);
    }
  }

  return result;
}

double sub_22713A0A8(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredTrainers);
  v7 = sub_227666A90();
  if (*(v6 + 16))
  {
    sub_226E92000(v7, v8);
    v10 = v9;

    if (v10)
    {
LABEL_7:
      v17 = sub_227666A90();
      if (*(v6 + 16))
      {
        v19 = sub_226E92000(v17, v18);
        v21 = v20;

        v22 = 0.0;
        if (v21)
        {
          v23 = *(*(v6 + 56) + 8 * v19);

          v24 = sub_227666AA0();
          if (v24[2])
          {
            v25 = v24[4];
            v26 = v24[5];

            LOBYTE(v25) = sub_22718C70C(v25, v26, v23);

            if (v25)
            {
              v22 = 1.0;
            }

            else
            {
              v22 = 0.0;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        v22 = 0.0;
      }

      v27 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres);
      v28 = sub_227666A90();
      if (*(v27 + 16))
      {
        v30 = sub_226E92000(v28, v29);
        v32 = v31;

        if (v32)
        {
          v33 = *(*(v27 + 56) + 8 * v30);

          v34 = sub_227666AE0();
          if (v34[2])
          {
            v35 = v34[4];
            v36 = v34[5];

            sub_22718C70C(v35, v36, v33);
          }
        }
      }

      else
      {
      }

      sub_227667240();
      sub_227667F30();
      v38 = v37;
      v39 = *(v3 + 8);
      v39(v5, v2);
      v16 = v22 * v38;
      sub_227667240();
      sub_227667F70();
      v39(v5, v2);
      return v16;
    }
  }

  else
  {
  }

  v11 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres);
  v12 = sub_227666A90();
  if (!*(v11 + 16))
  {

    return 0.0;
  }

  sub_226E92000(v12, v13);
  v15 = v14;

  v16 = 0.0;
  if (v15)
  {
    goto LABEL_7;
  }

  return v16;
}

uint64_t sub_22713A434()
{
  v1 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanObjectiveUtils(uint64_t a1)
{
  result = qword_27D7BB350;
  if (!qword_27D7BB350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22713A564(uint64_t a1)
{
  result = sub_227667370();
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

void *sub_22713A608(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t *sub_22713A6AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22713A884(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_22713A724(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22713A884(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_22713A6AC(v8, v4, v2);
  result = MEMORY[0x22AA9A450](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_22713A884(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_227328EDC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_227328EDC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22713A98C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    *a3 = *(*a2 + 8 * v3 + 32);

    return;
  }

  __break(1u);
}

unint64_t sub_22713A9EC()
{
  result = qword_27D7BC8D0;
  if (!qword_27D7BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC8D0);
  }

  return result;
}

unint64_t sub_22713AA40()
{
  result = qword_27D7BC8C0;
  if (!qword_27D7BC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC8C0);
  }

  return result;
}

uint64_t sub_22713AAA4(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  v7 = v2 - 1;
  if (v2 != 1)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v6 < v9)
      {
        v6 = v10;
      }

      --v7;
    }

    while (v7);
  }

  v31 = MEMORY[0x277D84F90];
  sub_226F1FCE8(0, v2, 0);
  v11 = *(v31 + 16);
  v12 = v2;
  v13 = v11;
  do
  {
    v14 = exp((*v5 - v6) / a2);
    v15 = *(v31 + 24);
    v16 = v13 + 1;
    if (v13 >= v15 >> 1)
    {
      v17 = v14;
      sub_226F1FCE8((v15 > 1), v13 + 1, 1);
      v14 = v17;
    }

    *(v31 + 16) = v16;
    *(v31 + 8 * v13 + 32) = v14;
    ++v5;
    ++v13;
    --v12;
  }

  while (v12);
  v18 = v2 + v11;
  if (v2 + v11 <= 3)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_16:
    v23 = v16 - v19;
    v24 = (v31 + 8 * v19 + 32);
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
    goto LABEL_18;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v31 + 48);
  v20 = 0.0;
  v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
    v21 += 4;
    v22 -= 4;
  }

  while (v22);
  if (v18 != v19)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_226F1FCE8(0, v16, 0);
  v26 = 0;
  v27 = *(v3 + 16);
  do
  {
    v28 = *(v31 + 8 * v26 + 32);
    v29 = *(v3 + 24);
    if (v27 >= v29 >> 1)
    {
      sub_226F1FCE8((v29 > 1), v27 + 1, 1);
    }

    ++v26;
    *(v3 + 16) = v27 + 1;
    *(v3 + 8 * v27++ + 32) = v28 / v20;
  }

  while (v16 != v26);

  return v3;
}

uint64_t sub_22713ACCC(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_29;
    }

    v8 = *(v5 + 8 * v3++);
    if (*(v8 + 16))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F1FD08(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_226F1FD08((v9 > 1), v10 + 1, 1);
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      v3 = v7;
    }
  }

  v11 = *(v6 + 16);
  if (!v11)
  {
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_13:
  v14 = v12;
  while (v14 < *(v6 + 16))
  {
    v15 = *(v6 + 32 + 8 * v14);
    v12 = v14 + 1;

    if (sub_2271348F4(v16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = a2;
      if ((result & 1) == 0)
      {
        result = sub_226F1FD08(0, *(v13 + 16) + 1, 1);
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_226F1FD08((v18 > 1), v19 + 1, 1);
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v15;
      a2 = v17;
      if (v11 - 1 == v14)
      {
LABEL_23:

        if (a2)
        {
          sub_2271348F4(a2);
        }
      }

      goto LABEL_13;
    }

    ++v14;
    if (v11 == v12)
    {
      goto LABEL_23;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_22713AF20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    sub_226F48150();
    sub_226EC1E18();
    v3 = 0;
    v4 = 0;
    v5 = v2 + 64;
    do
    {
      v7 = *(v5 - 32);
      result = sub_227663B30();
      if (result)
      {
        v6 = __OFADD__(v3, v7);
        v3 += v7;
        if (v6)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v6 = __OFADD__(v4, v7);
        v4 += v7;
        if (v6)
        {
          __break(1u);
          return result;
        }
      }

      v5 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22713B008(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = -v1;
    v11 = result + 64;
    v10 = *(result + 16);
    do
    {
      if (v2 >= v1)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v4 = (v11 + 40 * v2++);
      while (1)
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 1);
        v7 = *v4;
        v8 = v3 + v2;
        sub_226EB396C(v5, v6, *v4);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B30())
        {
          result = sub_226EB2DFC(v5, v6, v7);
          if (!v8)
          {
            return result;
          }

          goto LABEL_5;
        }

        v9 = sub_227663B30();
        result = sub_226EB2DFC(v5, v6, v7);
        if (v9)
        {
          break;
        }

        if (!v8)
        {
          return result;
        }

LABEL_5:
        ++v2;
        v4 += 40;
        if (v3 + v2 == 1)
        {
          goto LABEL_15;
        }
      }

      v1 = v10;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_22713B1B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a3 + 16);
    if (v4)
    {
      sub_226F48150();
      sub_226EC1E18();

      v6 = 0;
      v7 = a2 + 64;
      while (1)
      {
        v8 = sub_227663B20();
        if (v8)
        {
          break;
        }

        ++v6;
        v7 += 40;
        if (v3 == v6)
        {
          v15 = 0;
LABEL_7:

          v9 = 0;
          for (i =  + 64; ; i += 40)
          {
            v8 = sub_227663B20();
            if (v8)
            {
              break;
            }

            if (v4 == ++v9)
            {
            }
          }

          goto LABEL_21;
        }
      }

      v9 = MEMORY[0x277D837F8];
      v11 = 1;
      while (2)
      {
        if (v6 == v3)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v15 = v11;
        do
        {
          v12 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v12 == v3)
          {
            goto LABEL_7;
          }

          if (v12 >= v3)
          {
            goto LABEL_37;
          }

          v8 = sub_227663B20();
          ++v6;
        }

        while ((v8 & 1) == 0);
        v6 = v12;
        v11 = v15 + 1;
        if (!__OFADD__(v15, 1))
        {
          continue;
        }

        break;
      }

      __break(1u);
LABEL_21:
      v13 = 1;
LABEL_22:
      if (v9 != v4)
      {
        v16 = v13;
        while (1)
        {
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v14 == v4)
          {
            goto LABEL_31;
          }

          if (v14 >= v4)
          {
            goto LABEL_38;
          }

          v8 = sub_227663B20();
          ++v9;
          if (v8)
          {
            v9 = v14;
            v13 = v16 + 1;
            if (!__OFADD__(v16, 1))
            {
              goto LABEL_22;
            }

            __break(1u);
LABEL_31:

            if (v15 && v16 && __OFADD__(v15, v16))
            {
              goto LABEL_41;
            }

            return v8;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }
  }

  return v8;
}

uint64_t sub_22713B4A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 64;
    v4 = MEMORY[0x277D84F90];
    v15 = result + 64;
    do
    {
      v16 = v4;
      v5 = (v3 + 40 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        v18 = i + 1;
        v7 = *(v5 - 3);
        v17 = *(v5 - 4);
        v9 = *(v5 - 2);
        v8 = *(v5 - 1);
        v10 = *v5;

        sub_226EB396C(v9, v8, v10);
        sub_226EB396C(v9, v8, v10);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B30())
        {
          break;
        }

        v11 = sub_227663B30();
        sub_226EB2DFC(v9, v8, v10);
        if (v11)
        {
          goto LABEL_11;
        }

        result = sub_226EB2DFC(v9, v8, v10);
        v5 += 40;
        if (v18 == v1)
        {
        }
      }

      sub_226EB2DFC(v9, v8, v10);
LABEL_11:
      v4 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F1FD28(0, *(v16 + 16) + 1, 1);
        v4 = v16;
      }

      v3 = v15;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_226F1FD28((v12 > 1), v13 + 1, 1);
        v4 = v16;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 40 * v13;
      v2 = v18;
      *(v14 + 32) = v17;
      *(v14 + 40) = v7;
      *(v14 + 48) = v9;
      *(v14 + 56) = v8;
      *(v14 + 64) = v10;
    }

    while (v18 != v1);
  }
}

unint64_t *sub_22713B6E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v3 = 0;
  v21 = result;
  v22 = a3 + 56;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;
  v25 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v24 = v8 | (v3 << 6);
    v11 = *(a3 + 48) + 24 * v24;
    v12 = *v11;
    v13 = *(v11 + 16);
    v28 = *(v11 + 8);
    sub_226EB396C(*v11, v28, v13);
    v14 = sub_227667250();
    if (*(v14 + 16) && (sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v15 = sub_22766D3F0(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226EB2DFC(v12, v28, v13);
      *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v19 = __OFADD__(v23++, 1);
      v7 = v25;
      v6 = v27;
      if (v19)
      {
        __break(1u);
LABEL_22:

        return sub_22726A888(v21, a2, v23, a3);
      }
    }

    else
    {
LABEL_5:

      result = sub_226EB2DFC(v12, v28, v13);
      v7 = v25;
      v6 = v27;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      goto LABEL_22;
    }

    v10 = *(v22 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22713B9BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v43 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v34 = v7;
    v35 = v3;
    v33[1] = v33;
    MEMORY[0x28223BE20](v9);
    v36 = v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v8);
    v38 = 0;
    v10 = 0;
    v11 = *(v4 + 56);
    v37 = v4 + 56;
    v12 = 1 << *(v4 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & v11;
    v41 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v42 = v4;
    v15 = (v12 + 63) >> 6;
    v40 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v44 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 48);
      v39 = v19;
      v21 = v20 + 24 * v19;
      v22 = *(v21 + 8);
      v3 = *(v21 + 16);
      v45 = *v21;
      sub_226EB396C(v45, v22, v3);
      v7 = sub_227667250();
      if (*(v7 + 16) && (v48 = v45, v49 = v22, v50 = v3, sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v23 = sub_22766D3F0(), v24 = -1 << *(v7 + 32), v25 = v23 & ~v24, ((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v8 = ~v24;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v26 = *(v7 + 48) + 24 * v25;
          v27 = *(v26 + 16);
          v46 = *v26;
          v47 = v27;
          v48 = v45;
          v49 = v22;
          v50 = v3;
          if (sub_227663B20())
          {
            break;
          }

          v25 = (v25 + 1) & v8;
          if (((*(v7 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_226EB2DFC(v45, v22, v3);
        *&v36[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v28 = __OFADD__(v38++, 1);
        v4 = v42;
        v15 = v40;
        v14 = v44;
        if (v28)
        {
          __break(1u);
LABEL_23:
          v29 = sub_22726A888(v36, v34, v38, v4);

          return v29;
        }
      }

      else
      {
LABEL_6:

        sub_226EB2DFC(v45, v22, v3);
        v4 = v42;
        v15 = v40;
        v14 = v44;
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_23;
      }

      v18 = *(v37 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v44 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v32 = v43;

  v29 = sub_22713A608(v31, v7, v4, v32, sub_22713B6E4);

  MEMORY[0x22AA9A450](v31, -1, -1);

  return v29;
}

unint64_t *sub_22713BE14(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v3 = 0;
  v21 = a3 + 56;
  v22 = result;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;
  v23 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v27 = (v6 - 1) & v6;
LABEL_13:
    v26 = v8 | (v3 << 6);
    v11 = *(a3 + 48) + 24 * v26;
    v12 = *v11;
    v13 = *(v11 + 16);
    v28 = *(v11 + 8);
    sub_226EB396C(*v11, v28, v13);
    v14 = sub_227667250();
    if (*(v14 + 16) && (sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v15 = sub_22766D3F0(), v16 = -1 << *(v14 + 32), v17 = v15 & ~v16, ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = sub_226EB2DFC(v12, v28, v13);
      v7 = v23;
      v6 = v27;
    }

    else
    {
LABEL_18:

      result = sub_226EB2DFC(v12, v28, v13);
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v19 = __OFADD__(v25++, 1);
      v7 = v23;
      v6 = v27;
      if (v19)
      {
        __break(1u);
LABEL_21:

        return sub_22726A888(v22, a2, v25, a3);
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      goto LABEL_21;
    }

    v10 = *(v21 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22713C0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v43 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v36 = v7;
    v37 = v3;
    v35[1] = v35;
    MEMORY[0x28223BE20](v9);
    v39 = v35 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v8);
    v44 = 0;
    v10 = 0;
    v11 = *(v4 + 56);
    v38 = v4 + 56;
    v12 = 1 << *(v4 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & v11;
    v41 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v42 = v4;
    v15 = (v12 + 63) >> 6;
    v40 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v46 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 48);
      v45 = v19;
      v21 = v20 + 24 * v19;
      v22 = *v21;
      v3 = *(v21 + 16);
      v23 = *v21;
      v47 = *(v21 + 8);
      sub_226EB396C(v23, v47, v3);
      v24 = sub_227667250();
      if (*(v24 + 16) && (v50 = v22, v51 = v47, v52 = v3, sub_22766D370(), v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v25 = sub_22766D3F0(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v8 = ~v26;
        sub_226F48150();
        v7 = sub_226EC1E18();
        while (1)
        {
          v28 = *(v24 + 48) + 24 * v27;
          v29 = *(v28 + 16);
          v48 = *v28;
          v49 = v29;
          v50 = v22;
          v51 = v47;
          v52 = v3;
          if (sub_227663B20())
          {
            break;
          }

          v27 = (v27 + 1) & v8;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_226EB2DFC(v22, v47, v3);
        v4 = v42;
        v15 = v40;
        v14 = v46;
      }

      else
      {
LABEL_19:

        sub_226EB2DFC(v22, v47, v3);
        *&v39[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        v30 = __OFADD__(v44++, 1);
        v4 = v42;
        v15 = v40;
        v14 = v46;
        if (v30)
        {
          __break(1u);
LABEL_22:
          v31 = sub_22726A888(v39, v36, v44, v4);

          return v31;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_22;
      }

      v18 = *(v38 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v46 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  v34 = v43;

  v31 = sub_22713A608(v33, v7, v4, v34, sub_22713BE14);

  MEMORY[0x22AA9A450](v33, -1, -1);

  return v31;
}

uint64_t sub_22713C53C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v11 = 0;
    v12 = 0;
    v3 = result + 64;
    v10 = result + 64;
    while (2)
    {
      for (i = (v3 + 40 * v2); ; i += 40)
      {
        if (v2 >= v1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }

        v5 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_13;
        }

        v6 = *i;
        v8 = *(i - 2);
        v7 = *(i - 1);
        sub_226EB396C(v8, v7, *i);
        sub_226F48150();
        sub_226EC1E18();
        v11 |= sub_227663B30();
        v12 |= sub_227663B30();
        v9 = sub_227663B30();
        result = sub_226EB2DFC(v8, v7, v6);
        if (v9)
        {
          break;
        }

        ++v2;
        if (v5 == v1)
        {
          return result;
        }
      }

      ++v2;
      v3 = v10;
      if (v5 != v1)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22713C714(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = MEMORY[0x277D84F90];
    while (v1 != v2)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return result;
      }

      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

      v6 = *(v3 + 8 * v2++);
      if (*(v6 + 16))
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226F1FD08(0, *(v4 + 16) + 1, 1);
        }

        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_226F1FD08((v7 > 1), v8 + 1, 1);
        }

        *(v4 + 16) = v8 + 1;
        *(v4 + 8 * v8 + 32) = v6;
        v2 = v5;
      }
    }

    if (*(v4 + 16))
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22713C864(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 8 * v2 + 24);
    if (*(v3 + 16))
    {

      result = sub_227337CC0(a2, v3);
      if (result)
      {
      }

      v5 = *(v3 + 16);
      if (v5 != *(a2 + 16))
      {
      }

      else
      {
        v6 = a2 + 64;
        v7 = v3 + 64;
        v8 = -v5;
        v9 = -1;
        while (1)
        {
          if (v8 + v9 == -1)
          {
          }

          if (++v9 >= *(v3 + 16))
          {
            break;
          }

          v10 = v6 + 40;
          v11 = v7 + 40;
          sub_226F48150();
          sub_226EC1E18();
          result = sub_227663B20();
          v7 = v11;
          v6 = v10;
          if ((result & 1) == 0)
          {
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

void sub_22713C9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
LABEL_25:
    sub_22713CE00(v19, v20, v18, v22, v23);
    sub_22713CE00(v24, v25, v26, v27, v28);
    return;
  }

  v2 = 0;
  v3 = 0;
  v39 = 0;
  v40 = 0;
  v4 = 0;
  v5 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v6 = (a1 + 64);
  do
  {
    v12 = *(v6 - 4);
    v13 = *(v6 - 1);
    v45 = *(v6 - 3);
    v46 = *(v6 - 2);
    v14 = *v6;
    v32 = v1;
    v33 = v12;
    if (v4 && v5 >= v12)
    {
      v15 = v39;
      sub_22713CE5C(v5, v4, v39, v3, v2);
      v16 = v46;
      v37 = v4;
      v38 = v5;
      v35 = v3;
      v36 = v39;
      v34 = v2;
    }

    else
    {

      v16 = v46;
      sub_226EB396C(v46, v13, v14);
      v37 = v45;
      v38 = v12;
      v35 = v13;
      v36 = v46;
      v34 = v14;
      v15 = v39;
    }

    sub_226EB396C(v16, v13, v14);
    sub_22713CE00(v5, v4, v15, v3, v2);
    v17 = v33;
    if (v41 && v33 >= v40)
    {

      sub_226EB2DFC(v46, v13, v14);
      sub_22713CE5C(v40, v41, v42, v43, v44);
      v10 = v42;
      v11 = v43;
      v9 = v44;
      v17 = v40;
      v8 = v41;
      v7 = v42;
      v13 = v43;
      v14 = v44;
    }

    else
    {
      v8 = v45;
      v7 = v46;
      v9 = v44;
      v10 = v42;
      v11 = v43;
    }

    sub_22713CE00(v40, v41, v10, v11, v9);
    v6 += 40;
    v2 = v34;
    v3 = v35;
    v39 = v36;
    v40 = v17;
    v4 = v37;
    v5 = v38;
    v44 = v14;
    v42 = v7;
    v43 = v13;
    v41 = v8;
    v1 = v32 - 1;
  }

  while (v32 != 1);
  v18 = v7;
  v19 = v17;
  v20 = v8;
  v21 = v14;
  if (!v37)
  {
    v27 = v35;
    v22 = v13;
    v28 = v34;
    v23 = v21;
    v24 = v38;
    v25 = 0;
    v26 = v36;
    goto LABEL_25;
  }

  if (!v8)
  {
    v27 = v35;
    v22 = v13;
    v28 = v34;
    v23 = v21;
    v25 = v37;
    v24 = v38;
    v26 = v36;
    goto LABEL_25;
  }

  sub_226F48150();
  sub_226EC1E18();
  if (sub_227663B20())
  {
    v18 = v7;
    v19 = v17;
    v20 = v8;
    v22 = v13;
    v23 = v14;
LABEL_24:
    v25 = v37;
    v24 = v38;
    v27 = v35;
    v26 = v36;
    v28 = v34;
    goto LABEL_25;
  }

  v29 = v38 - v17;
  if (__OFSUB__(v38, v17))
  {
    __break(1u);
  }

  else
  {
    v30 = __OFSUB__(v29, 10);
    v31 = v29 - 10;
    if (!v30)
    {
      v23 = v14;
      if (v31 >= 1)
      {
        log10(v31);
        v23 = v14;
      }

      v19 = v17;
      v18 = v7;
      v20 = v8;
      v22 = v13;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_22713CD14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    result = type metadata accessor for WorkoutPlanGenerationScaffold(0);
    v5 = *(v4 + *(result + 64));
    v6 = (a2 + 64);
    v7 = 0.0;
    do
    {
      if (!*(v5 + 16) || (v8 = *v6, v10 = *(v6 - 2), v9 = *(v6 - 1), sub_226EB396C(v10, v9, *v6), v11 = sub_226F491D8(), v13 = v12, result = sub_226EB2DFC(v10, v9, v8), (v13 & 1) == 0) || *(*(v5 + 56) + 8 * v11) <= 0)
      {
        v7 = v7 + 1.0;
      }

      v6 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_22713CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_226EB2DFC(a3, a4, a5 & 1);
  }
}

void sub_22713CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_226EB396C(a3, a4, a5 & 1);
  }
}

uint64_t sub_22713CF20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22713CFA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22713D014(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22713D034, 0, 0);
}

uint64_t sub_22713D034()
{
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_0((v0[3] + 56), *(v0[3] + 80));
  v3 = *v2;
  v4 = *(*v2 + 264);
  __swift_project_boxed_opaque_existential_0((*v2 + 232), *(*v2 + 256));
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(v4 + 24);

  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_22713D1D4;

  return v9();
}

uint64_t sub_22713D1D4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_226FA13B4;
  }

  else
  {

    v2 = sub_22713D2F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22713D324(uint64_t a1)
{
  v3 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3A8, &qword_22767A8C8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-v11];
  v13 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  v14 = &v12[*(v10 + 56)];
  sub_22713E27C(v1 + v13, v12);
  sub_22713E27C(a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22713E27C(v12, v8);
    v17 = swift_getEnumCaseMultiPayload();
    if (!v17)
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
      goto LABEL_13;
    }

    if (v17 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v18 = sub_227668BB0();
      (*(*(v18 - 8) + 8))(v14, v18);
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22713E27C(v12, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
    swift_unknownObjectRelease();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider), *(v1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 24));
      sub_227669FE0();
      swift_beginAccess();
      sub_22714047C(a1, v1 + v13);
      swift_endAccess();
      sub_2276692A0();
      swift_unknownObjectRelease();
      v16 = sub_227668BB0();
      (*(*(v16 - 8) + 8))(v5, v16);
      return sub_227140420(v12);
    }

    swift_unknownObjectRelease();
    v20 = sub_227668BB0();
    (*(*(v20 - 8) + 8))(v5, v20);
LABEL_13:
    v21 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D52638], v21);
    *(swift_allocObject() + 16) = v22;
    sub_227669280();
    sub_227140420(v14);
    return sub_227140420(v12);
  }

  v19 = swift_getEnumCaseMultiPayload();
  if (!v19)
  {
    v8 = v14;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_17;
  }

  if (v19 == 1)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_227140420(v12);
  swift_beginAccess();
  sub_22714047C(a1, v1 + v13);
  swift_endAccess();
  return sub_2276692A0();
}

uint64_t sub_22713D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v70 = a7;
  v67 = a5;
  v64 = a4;
  v10 = sub_227669A70();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x28223BE20](v10);
  v71 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v79 = *(v74 - 8);
  v63 = v79[8];
  MEMORY[0x28223BE20](v74);
  v75 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v78 = &v59 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v59 - v18;
  MEMORY[0x28223BE20](v19);
  v76 = &v59 - v20;
  v60 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v60);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = v23;
  __swift_project_boxed_opaque_existential_0((a3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider), *(a3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 24));

  sub_22766AB60();
  sub_226EA1CF4();
  v25 = sub_22766C950();
  v26 = swift_allocObject();
  v65 = v24;
  v66 = sub_226EB496C;
  *(v26 + 16) = sub_226EB496C;
  *(v26 + 24) = v24;

  v27 = sub_227669FD0();

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
  v29 = &v22[*(v28 + 48)];
  v30 = *(v28 + 64);
  v31 = sub_227668BB0();
  (*(*(v31 - 8) + 16))(v22, v64, v31);
  v33 = v69;
  v32 = v70;
  *v29 = v67;
  v29[1] = v33;
  v29[2] = v32;
  v61 = v27;
  v62 = v22;
  *&v22[v30] = v27;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22713D324(v22);
  swift_getObjectType();
  v35 = v71;
  v34 = v72;
  v36 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D4ED08], v73);
  v37 = v78;
  sub_227669620();
  (*(v34 + 8))(v35, v36);
  v38 = v79;
  v39 = v79[2];
  v40 = v68;
  v41 = v74;
  v39(v68, v37, v74);
  v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v43 = v42 + v63;
  v73 = swift_allocObject();
  v44 = v38[4];
  v45 = v41;
  v44(v73 + v42, v40, v41);
  v46 = v75;
  v47 = v77;
  v39(v75, v77, v45);
  v48 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v44(v49 + v42, v46, v45);
  v50 = (v49 + v48);
  v51 = v73;
  *v50 = sub_226EC154C;
  v50[1] = v51;
  v52 = v76;
  sub_227669270();
  v53 = v79[1];
  v53(v78, v45);
  v53(v47, v45);
  v54 = swift_allocObject();
  v55 = v65;
  *(v54 + 16) = v66;
  *(v54 + 24) = v55;
  v56 = sub_227669290();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_227140AB8;
  *(v57 + 24) = v54;

  v56(sub_226EB4544, v57);
  swift_unknownObjectRelease();

  v53(v52, v45);
  return sub_227140420(v62);
}

void sub_22713DE08(void (*a1)(void *, uint64_t))
{
  v2 = sub_227666740();
  sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D52678], v2);
  a1(v3, 1);
}

uint64_t sub_22713DEEC()
{
  sub_227140420(v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider));

  return swift_deallocClassInstance();
}

uint64_t sub_22713DFB8(uint64_t a1)
{
  result = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(319);
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

uint64_t sub_22713E080(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22713E0B8(uint64_t a1)
{
  sub_22713E12C();
  if (v1 <= 0x3F)
  {
    sub_22713E1D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22713E12C()
{
  if (!qword_28139D348)
  {
    v0 = sub_22713E174();
    if (!v1)
    {
      atomic_store(v0, &qword_28139D348);
    }
  }
}

unint64_t sub_22713E174()
{
  result = qword_28139D340;
  if (!qword_28139D340)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28139D340);
  }

  return result;
}

void sub_22713E1D8(uint64_t a1)
{
  if (!qword_2813A5548)
  {
    sub_227668BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB390, &unk_22767A8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB398, &qword_22767A8B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2813A5548);
    }
  }
}

uint64_t sub_22713E27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22713E2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227668BB0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v12 + 8))(v14, v11);
  v15 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  sub_22713E27C(v3 + v15, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_227140420(v6);
    v17 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D525F8], v17);
    *(swift_allocObject() + 16) = v18;
    sub_227669280();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v8 + 32))(v10, v6, v7);
  if (sub_227668BA0() == v26 && v16 == v27)
  {

LABEL_7:
    sub_2276692A0();
    (*(v8 + 8))(v10, v7);
    return;
  }

  v20 = sub_22766D190();

  if (v20)
  {
    goto LABEL_7;
  }

  v21 = sub_227666740();
  sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
  v22 = swift_allocError();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D52610], v21);
  *(swift_allocObject() + 16) = v22;
  v24 = v22;
  sub_227669280();
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_22713E7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a1;
  v80 = a2;
  v83 = sub_227665350();
  v89 = *(v83 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v83);
  v75 = v4;
  v82 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v90 = *(v84 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v84);
  v76 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  MEMORY[0x28223BE20](v12);
  v78 = &v62 - v13;
  v14 = sub_227662750();
  v86 = *(v14 - 8);
  v87 = v14;
  v79 = *(v86 + 64);
  MEMORY[0x28223BE20](v14);
  v77 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v62 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v19 + 8))(v21, v18);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider), *(v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider + 24));
  sub_22766AD70();
  v70 = sub_2276693A0();
  v69 = v22;
  sub_227662720();
  sub_226E91B50(&v92, v7);
  swift_storeEnumTagMultiPayload();
  v23 = v11;
  v81 = v11;
  v63 = v3;
  sub_22713D324(v7);
  sub_227140420(v7);
  sub_226E91B50(&v92, v91);
  v24 = v89;
  v25 = *(v89 + 16);
  v72 = v89 + 16;
  v74 = v25;
  v27 = v82;
  v26 = v83;
  v25(v82, v88, v83);
  v28 = *(v24 + 80);
  v29 = (v28 + 64) & ~v28;
  v71 = v28 | 7;
  v30 = swift_allocObject();
  *(v30 + 16) = v3;
  sub_226E92AB8(v91, v30 + 24);
  v31 = *(v24 + 32);
  v89 = v24 + 32;
  v73 = v31;
  v31(v30 + v29, v27, v26);
  v32 = (v30 + ((v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v69;
  *v32 = v70;
  v32[1] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2271404E0;
  *(v34 + 24) = v30;
  v35 = v90;
  v36 = *(v90 + 16);
  v69 = (v90 + 16);
  v70 = v36;
  v37 = v76;
  v38 = v84;
  v36(v76, v23, v84);
  v39 = *(v35 + 80);
  v68 = v39;
  v40 = (v39 + 16) & ~v39;
  v67 = v40;
  v41 = (v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = v41;
  v42 = swift_allocObject();
  v43 = *(v35 + 32);
  v64 = v35 + 32;
  v66 = v43;
  v43(v42 + v40, v37, v38);
  v44 = (v42 + v41);
  *v44 = sub_227086964;
  v44[1] = v34;
  v45 = v63;

  v46 = v78;
  sub_227669270();
  v47 = *(v35 + 8);
  v90 = v35 + 8;
  v76 = v47;
  (v47)(v81, v38);
  v48 = v86;
  v49 = v77;
  v50 = v87;
  (*(v86 + 16))(v77, v85, v87);
  v51 = v82;
  v52 = v83;
  v74(v82, v88, v83);
  v53 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v54 = (v79 + v28 + v53) & ~v28;
  v55 = swift_allocObject();
  *(v55 + 16) = v45;
  (*(v48 + 32))(v55 + v53, v49, v50);
  v73(v55 + v54, v51, v52);
  v56 = v81;
  v57 = v84;
  v70(v81, v46, v84);
  v58 = v65;
  v59 = swift_allocObject();
  v66(v59 + v67, v56, v57);
  v60 = (v59 + v58);
  *v60 = sub_227140588;
  v60[1] = v55;

  sub_227669270();
  (v76)(v46, v57);
  (*(v86 + 8))(v85, v87);
  return __swift_destroy_boxed_opaque_existential_0(&v92);
}

uint64_t sub_22713EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v36 = a4;
  v32 = a2;
  v33 = a3;
  v29 = a1;
  v37 = a6;
  v31 = sub_227665350();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB3C0, &unk_22767A8E0);
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v34);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  __swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider), *(a1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider + 24));
  v14 = v13;
  v28 = v13;
  sub_22766ABB0();
  sub_226E91B50(v32, v38);
  v15 = v31;
  (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v31);
  v16 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_226E92AB8(v38, v18 + 16);
  (*(v7 + 32))(v18 + v16, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v19 = (v18 + v17);
  v20 = v35;
  *v19 = v36;
  v19[1] = v20;
  v21 = v30;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;
  v22 = v34;
  (*(v9 + 16))(v21, v14, v34);
  v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v23, v21, v22);
  v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_227140660;
  v25[1] = v18;

  sub_227669270();
  return (*(v9 + 8))(v28, v22);
}

uint64_t sub_22713F304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v38 = a3;
  v40 = a1;
  v46 = a7;
  v47 = sub_227665350();
  v8 = *(v47 - 8);
  v42 = *(v8 + 64);
  MEMORY[0x28223BE20](v47);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766AAF0();
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v39 = *(v41 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v16;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v17 = v38;
  sub_22766AD40();
  (*(v11 + 16))(v13, v40, v10);
  v18 = v36;
  (*(v8 + 16))(v36, v17, v47);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v8 + 80) + v20 + 16) & ~*(v8 + 80);
  v22 = (v42 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + v19, v13, v34);
  v24 = (v23 + v20);
  v25 = v44;
  *v24 = v43;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v21, v18, v47);
  *(v23 + v22) = v45;
  v26 = v39;
  v27 = v37;
  v28 = v35;
  v29 = v41;
  (*(v39 + 16))(v37, v35, v41);
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v26 + 32))(v31 + v30, v27, v29);
  v32 = (v31 + ((v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_227140748;
  v32[1] = v23;

  sub_227669270();
  return (*(v26 + 8))(v28, v29);
}

uint64_t sub_22713F70C@<X0>(__int128 *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v56 = a4;
  v57 = a5;
  v45[2] = a3;
  v53 = a2;
  v6 = sub_22766B390();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3D0, &unk_22767A8F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v45 - v10;
  v12 = sub_227668BB0();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v51 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v45 - v15;
  v50 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = v45 - v19;
  v58 = *a1;
  v49 = *(a1 + 2);
  sub_2276693D0();
  v61 = sub_227667BB0();
  sub_227140894();
  sub_227663B80();
  v52 = v62;
  v46 = v63;
  v45[1] = sub_22766AAD0();
  v48 = v21;
  v47 = sub_22766ACC0();
  v45[3] = sub_22766ACE0();

  sub_2276639C0();
  v22 = sub_2276639D0();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  sub_227665310();
  sub_22766C0A0();
  sub_22766AAE0();
  sub_22766C500();
  sub_227668B80();
  sub_22766A730();
  v23 = *(v59 + 16);
  v53 = v20;
  v23(v16, v20, v60);
  v52 = v8;
  v24 = sub_22766B380();
  v25 = sub_22766C8B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = v23;
    v27 = v26;
    v28 = swift_slowAlloc();
    v62 = v28;
    *v27 = 136446210;
    sub_2271409A0(&qword_27D7BB3E0, MEMORY[0x277D537B0], MEMORY[0x277D537C8]);
    v29 = v60;
    v30 = sub_22766D140();
    v32 = v31;
    v33 = *(v59 + 8);
    v33(v16, v29);
    v34 = sub_226E97AE8(v30, v32, &v62);

    *(v27 + 4) = v34;
    _os_log_impl(&dword_226E8E000, v24, v25, "Sending handshake: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    v35 = v27;
    v23 = v48;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  else
  {

    v33 = *(v59 + 8);
    v33(v16, v60);
  }

  (*(v54 + 8))(v52, v55);
  v36 = v51;
  v37 = v53;
  v38 = v60;
  v23(v51, v53, v60);
  v39 = v59;
  v40 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v41 = (v50 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  *(v42 + 16) = v56;
  (*(v39 + 32))(v42 + v40, v36, v38);
  v43 = v42 + v41;
  *v43 = v58;
  *(v43 + 16) = v49;

  swift_unknownObjectRetain();
  sub_227669270();
  return (v33)(v37, v38);
}

uint64_t sub_22713FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v40);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *(a1 + 8);
  v41 = a2;
  if (v12 == 1)
  {
    v14 = *a1;
    v15 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 24);
    v39 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 32);
    v38[1] = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter), v15);
    sub_227662720();
    sub_227662680();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v18 = sub_227665340();
    v20 = v19;
    v21 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent(0);
    v45 = v21;
    v46 = sub_2271409A0(&qword_27D7BB3B8, type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent, &unk_22767B780);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
    sub_227665300();
    v23 = sub_227665320();
    *boxed_opaque_existential_0 = v17;
    boxed_opaque_existential_0[1] = v18;
    *(boxed_opaque_existential_0 + 16) = v20 & 1;
    *(boxed_opaque_existential_0 + *(v21 + 28)) = v23;
    *(boxed_opaque_existential_0 + *(v21 + 32)) = v14;
    v24 = v14;
  }

  else
  {
    v25 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 24);
    v39 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 32);
    __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter), v25);
    sub_227662720();
    sub_227662680();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v28 = sub_227665340();
    v30 = v29;
    v31 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent(0);
    v45 = v31;
    v46 = sub_2271409A0(&qword_27D7BB3B8, type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent, &unk_22767B780);
    v32 = __swift_allocate_boxed_opaque_existential_0(v44);
    sub_227665300();
    v33 = sub_227665320();
    *v32 = v27;
    v32[1] = v28;
    *(v32 + 16) = v30 & 1;
    *(v32 + *(v31 + 28)) = v33;
    *(v32 + *(v31 + 32)) = 0;
  }

  sub_227669B60();
  __swift_destroy_boxed_opaque_existential_0(v44);
  swift_storeEnumTagMultiPayload();
  sub_22713D324(v6);
  sub_227140420(v6);
  v34 = v43;
  v35 = sub_227669290();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  v35(sub_226E9F7B0, v36);

  return (*(v42 + 8))(v9, v34);
}

uint64_t sub_2271400E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v10, v7);
  v11 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  sub_22713E27C(v3 + v11, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v13 = sub_227668BB0();
      (*(*(v13 - 8) + 8))(v6, v13);
    }

    v14 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D52628], v14);
    *(swift_allocObject() + 16) = v15;
    return sub_227669280();
  }

  else
  {
    sub_226E92AB8(v6, v18);
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_22766ACF0();
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_227140420(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22714047C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271404E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665350() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_22713EFD4(v5, v1 + 24, v1 + v4, v7, v8, a1);
}

uint64_t sub_227140588(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_227665350();
  v5 = *(v1 + 16);

  return sub_22713FCA0(a1, v5, v1 + v4);
}

uint64_t sub_227140660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227665350() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_22713F304(a1, (v2 + 16), v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_227140748@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_22766AAF0() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_227665350() - 8);
  v8 = *(v2 + v6);
  v9 = *(v2 + v6 + 8);
  v10 = *(v2 + ((*(v7 + 64) + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22713F70C(a1, v8, v9, v10, a2);
}

unint64_t sub_227140894()
{
  result = qword_27D7BB3D8;
  if (!qword_27D7BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB3D8);
  }

  return result;
}

uint64_t sub_2271408E8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_227668BB0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_22713D79C(a1, a2, v7, v2 + v6, v9, v10, v11);
}

uint64_t sub_2271409A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2271409F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227140AC4()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB410, &qword_22767A980);
  __swift_allocate_value_buffer(v4, qword_28139A410);
  __swift_project_value_buffer(v4, qword_28139A410);
  (*(v1 + 104))(v3, *MEMORY[0x277D4F040], v0);
  v6 = 0;
  v7 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB430, &unk_22767A9A0);
  sub_227140C84(&qword_281398F48, MEMORY[0x277D4FA08], MEMORY[0x277D4FA50]);
  sub_227140C84(&qword_281398F40, MEMORY[0x277D83A28], MEMORY[0x277D84F50]);
  return sub_227669760();
}

uint64_t sub_227140C84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB430, &unk_22767A9A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227140CF0(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v91 = sub_227666F60();
  v99 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v82 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227663DD0();
  v94 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  v12 = sub_227663590();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276640B0();
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v98 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = v61 - v19;
  v20 = sub_227664990();
  v96 = *(v20 - 8);
  v97 = v20;
  MEMORY[0x28223BE20](v20);
  v101 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2276658E0();
  v22 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v77 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2276660D0();
  v24 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v72 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v95 = v12;
  v92 = v11;
  v103 = MEMORY[0x277D84F90];
  v69 = v26;
  sub_226F1F130(0, v26, 0);
  v93 = 0;
  v78 = v103;
  v28 = *(v22 + 16);
  v27 = v22 + 16;
  v68 = v28;
  v67 = a2 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
  v90 = (v99 + 32);
  v86 = (v94 + 48);
  v87 = (v13 + 32);
  v79 = (v94 + 32);
  v85 = (v13 + 8);
  v29 = 0;
  v66 = (v27 - 8);
  v65 = v24 + 32;
  v64 = *(v27 + 56);
  v94 = v15;
  v30 = v63;
  v80 = v4;
  v88 = v16;
  v61[1] = v27;
  v70 = v24;
  do
  {
    v76 = v29;
    v68(v77, v67 + v64 * v29, v30);
    v31 = sub_2276658D0();
    v75 = v32;
    v33 = sub_2276658C0();
    v34 = *(v33 + 16);
    if (v34)
    {
      v74 = v31;
      v102 = MEMORY[0x277D84F90];
      v35 = v33;
      sub_226F1F150(0, v34, 0);
      v36 = v102;
      v37 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v73 = v35;
      v38 = v35 + v37;
      v99 = *(v62 + 72);
      v39 = v92;
      do
      {
        v40 = v100;
        sub_227141704(v38, v100);
        v41 = v98;
        sub_227141704(v40, v98);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = (*v87)(v15, v41, v95);
          MEMORY[0x28223BE20](v42);
          v61[-2] = v15;
          v43 = v15;
          v44 = v8;
          v45 = v93;
          sub_227543988(sub_226F1C4F4, v89, v39);
          v93 = v45;
          v8 = v44;
          sub_226F1C514(v39, v44);
          if ((*v86)(v44, 1, v4) == 1)
          {
            sub_226F1C584(v44);
            v84 = sub_227663560();
            v83 = v46;
            sub_227663570();
            sub_227663580();
            v47 = v91;
            v8 = v44;
            v48 = v82;
            v4 = v80;
            sub_227666F30();
            sub_226F1C584(v92);
            sub_227141768(v100);
            v49 = v48;
            v39 = v92;
            (*v90)(v101, v49, v47);
          }

          else
          {
            sub_226F1C584(v39);
            sub_227141768(v100);
            v50 = *v79;
            v51 = v81;
            (*v79)(v81, v44, v4);
            v52 = v51;
            v39 = v92;
            v50(v101, v52, v4);
          }

          swift_storeEnumTagMultiPayload();
          (*v85)(v43, v95);
        }

        else
        {
          sub_227141768(v40);
          (*v90)(v101, v41, v91);
          swift_storeEnumTagMultiPayload();
        }

        v102 = v36;
        v54 = *(v36 + 16);
        v53 = *(v36 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_226F1F150((v53 > 1), v54 + 1, 1);
          v39 = v92;
          v36 = v102;
        }

        *(v36 + 16) = v54 + 1;
        sub_2271417C4(v101, v36 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v54);
        v38 += v99;
        --v34;
        v15 = v94;
      }

      while (v34);

      v30 = v63;
    }

    else
    {
    }

    v55 = v72;
    sub_2276660C0();
    (*v66)(v77, v30);
    v56 = v78;
    v103 = v78;
    v58 = *(v78 + 16);
    v57 = *(v78 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_226F1F130((v57 > 1), v58 + 1, 1);
      v55 = v72;
      v56 = v103;
    }

    v29 = v76 + 1;
    *(v56 + 16) = v58 + 1;
    v59 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v78 = v56;
    (*(v70 + 32))(v56 + v59 + *(v70 + 72) * v58, v55, v71);
  }

  while (v29 != v69);
  return v78;
}

uint64_t sub_227141704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276640B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227141768(uint64_t a1)
{
  v2 = sub_2276640B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2271417C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664990();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22714184C(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 1866.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

void sub_227141938(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 81920.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

void sub_227141A24(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 104860000.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

id sub_227141B34()
{
  v1 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    [v4 setURLCache_];
    v5 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v0 delegateQueue:*(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_queue)];

    sub_2276693D0();
    sub_2276693E0();
    v6 = v0;
    v7 = sub_22766C840();

    v8 = *(v6 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_227141C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetImageLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227141D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276624A0();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = v11;
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_22766B390();
  v44 = *(v15 - 8);
  v45 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v18 = *(v10 + 16);
  v48 = v9;
  v49 = a1;
  v43 = v18;
  v18(v14, a1, v9);
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v3;
    v22 = v21;
    v38 = swift_slowAlloc();
    v50 = v38;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    sub_2276639A0();
    v23 = sub_227662390();
    v40 = a2;
    v25 = v24;
    (*(v41 + 8))(v8, v42);
    v26 = v14;
    v27 = v48;
    (*(v10 + 8))(v26, v48);
    v28 = sub_226E97AE8(v23, v25, &v50);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_226E8E000, v19, v20, "Requesting remoteURL: %{mask.hash}s", v22, 0x16u);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v29, -1, -1);
    v30 = v22;
    v3 = v39;
    MEMORY[0x22AA9A450](v30, -1, -1);
  }

  else
  {

    v31 = v14;
    v27 = v48;
    (*(v10 + 8))(v31, v48);
  }

  (*(v44 + 8))(v17, v45);
  v32 = v47;
  v43(v47, v49, v27);
  v33 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  (*(v10 + 32))(v34 + v33, v32, v27);
  type metadata accessor for AssetLoaderResponse(0);
  v35 = v3;
  return sub_227669270();
}

void sub_227142190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v33 = a4;
  v31 = a1;
  v5 = sub_2276624A0();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v14 = sub_227663CD0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227141938(v13, 0.01);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_226E97D1C(v13, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v28[1] = *(a3 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub + 8);
    swift_getObjectType();
    sub_2276639A0();
    (*(v15 + 16))(&v10[*(v8 + 20)], v17, v14);
    sub_226EB0F20(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
    sub_2276699D0();
    sub_227145B64(v10, type metadata accessor for AssetProgressUpdated);
    (*(v15 + 8))(v17, v14);
  }

  v18 = sub_227141B34();
  v19 = v33;
  sub_2276639A0();
  v20 = sub_2276623E0();
  (*(v29 + 8))(v7, v30);
  v21 = [v18 downloadTaskWithURL_];

  MEMORY[0x28223BE20](v22);
  v28[-6] = a3;
  v28[-5] = v21;
  v23 = v32;
  v28[-4] = v31;
  v28[-3] = v23;
  v28[-2] = v19;
  sub_2276696A0();
  v24 = v21;
  v25 = sub_227663990();
  if (v25 <= 16)
  {
    if (v25 != 9)
    {
LABEL_10:
      v27 = MEMORY[0x277CCA790];
      goto LABEL_12;
    }
  }

  else if (v25 != 17)
  {
    if (v25 == 33)
    {
      v27 = MEMORY[0x277CCA798];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v27 = MEMORY[0x277CCA7A0];
LABEL_12:
  LODWORD(v26) = *v27;
  [v24 setPriority_];

  [v24 resume];
}

uint64_t sub_227142614(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions;
  swift_beginAccess();

  v10 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_22736B130(sub_227143C7C, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a1 + v9) = v19;
  swift_endAccess();
  v12 = sub_227663910();
  v14 = v13;
  v15 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v16 = v10;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + v15);
  *(a1 + v15) = 0x8000000000000000;
  sub_22736AFB8(v16, v12, v14, v17);

  *(a1 + v15) = v20;
  return swift_endAccess();
}

void sub_227142788(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_22766A6C0();
  sub_22766B370();
  v36 = *(v9 + 8);
  v37 = v8;
  v36(v17, v8);
  v38 = v2;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB558, &qword_22767AA38);
  sub_2276696A0();
  v18 = v40;
  if (v40)
  {
    v19 = v40;
    sub_22766A6C0();
    v20 = v19;
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 141558274;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      *v24 = v18;
      v25 = v20;
      _os_log_impl(&dword_226E8E000, v21, v22, "[Loader Cancel] Canceling task: %{mask.hash}@", v23, 0x16u);
      sub_226E97D1C(v24, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v24, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);
    }

    v36(v14, v37);
    [v20 cancel];
  }

  else
  {
    sub_22766A6C0();
    (*(v5 + 16))(v7, a1, v4);
    v26 = sub_22766B380();
    v27 = sub_22766C8B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v28 = 136446210;
      v29 = sub_227663910();
      v31 = v30;
      (*(v5 + 8))(v7, v4);
      v32 = sub_226E97AE8(v29, v31, &v40);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_226E8E000, v26, v27, "[Loader Cancel] No task tracked for request identifier %{public}s", v28, 0xCu);
      v33 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    v36(v11, v37);
  }
}

uint64_t sub_227142C1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_227663910();
  v6 = v5;
  v7 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (*(v8 + 16) && (, v9 = sub_226E92000(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);
    v13 = v12;
  }

  else
  {

    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_227142D44()
{
  v0 = sub_227663190();
  sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D4FCD8], v0);
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for AssetLoaderResponse(0);

  return sub_227669280();
}

uint64_t sub_227142E54(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v11 - v4);
  v6 = sub_227663190();
  sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D4FD00], v6);
  *v5 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_227363D88(v5, a2);
  return swift_endAccess();
}

uint64_t sub_227143014(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AssetLoaderResponse(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 response];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 expectedContentLength];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *&v11[*(v8 + 20)] = v14;
  sub_227145B00(v11, v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  swift_beginAccess();
  sub_227363D88(v7, a1);
  swift_endAccess();
  return sub_227145B64(v11, type metadata accessor for AssetLoaderResponse);
}

uint64_t sub_227143244(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  *(&v11 - v6) = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  v9 = a3;
  sub_227363D88(v7, a2);
  return swift_endAccess();
}

void sub_227143590(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskResults;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_226F3B1C0(a2);
    if (v13)
    {
      v14 = v12;
      v29 = v3;
      v15 = *(v11 + 56);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
      v28 = a2;
      v17 = v16;
      v18 = *(v16 - 8);
      sub_226E93170(v15 + *(v18 + 72) * v14, a3, &qword_27D7B9628, &unk_227674860);

      v19 = v17;
      a2 = v28;
      (*(v18 + 56))(a3, 0, 1, v19);
      goto LABEL_6;
    }
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
LABEL_6:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  swift_beginAccess();
  v22 = a2;
  sub_227363D88(v9, v22);
  swift_endAccess();
  sub_227143850(v22);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    swift_beginAccess();
    sub_227363C90(0, v25, v26);
    swift_endAccess();
  }
}

void sub_227143850(uint64_t a1)
{
  v2 = v1;
  sub_227669690();
  v3 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = *(*(v4 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));
      sub_227145A58();

      v12 = v11;
      v13 = sub_22766CB30();

      if (v13)
      {
        break;
      }

      v7 &= v7 - 1;

      v9 = v10;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2271439C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_226F3B1C0(a2);
    if (v9)
    {
      v15 = *(*(v7 + 56) + 16 * v8);

      v10 = swift_allocObject();
      v11 = 0;
      *(v10 + 16) = v15;
      v12 = sub_227145A50;
      goto LABEL_6;
    }
  }

  v12 = 0;
  v10 = 0;
  v11 = 1;
LABEL_6:
  swift_beginAccess();
  sub_227363B80(0, 0, a2);
  swift_endAccess();
  v13 = 0;
  result = 0;
  if ((v11 & 1) == 0)
  {
    result = swift_allocObject();
    *(result + 16) = v12;
    *(result + 24) = v10;
    v13 = sub_227145BC4;
  }

  *a3 = v13;
  a3[1] = result;
  return result;
}

void sub_227143BD4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_227142190(a1, a2, v6, v7);
}

uint64_t sub_227143CA4(void *a1, uint64_t a2)
{
  v60 = a2;
  v3 = sub_22766B390();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = sub_2276624A0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v61 = &v60 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v63 = &v60 - v28;
  v67 = a1;
  v29 = [a1 originalRequest];
  if (v29)
  {
    v30 = v29;
    sub_227661F90();

    v31 = sub_227661FD0();
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
  }

  else
  {
    v31 = sub_227661FD0();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  }

  sub_226E95D18(v10, v13, &qword_27D7BB568, &qword_22767AA48);
  sub_227661FD0();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v13, 1, v31) == 1)
  {
    sub_226E97D1C(v13, &qword_27D7BB568, &qword_22767AA48);
    (*(v21 + 56))(v19, 1, 1, v20);
LABEL_7:
    sub_226E97D1C(v19, &unk_27D7BB570, &unk_227670FC0);
    sub_22766A6C0();
    v34 = v67;
    v35 = sub_22766B380();
    v36 = sub_22766C890();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 141558274;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_226E8E000, v35, v36, "No remote URL in finished download task: %{mask.hash}@", v37, 0x16u);
      sub_226E97D1C(v38, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);
    }

    return (*(v65 + 8))(v5, v66);
  }

  sub_227661FB0();
  (*(v32 + 8))(v13, v31);
  v33 = *(v21 + 48);
  if (v33(v19, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  v41 = *(v21 + 32);
  v41(v63, v19, v20);
  v42 = sub_227447BF8(0x6567616D692ELL, 0xE600000000000000);
  v44 = v43;
  v45 = __swift_project_boxed_opaque_existential_0((v64 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore), *(v64 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore + 24));
  sub_226E93170(*v45 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v16, &unk_27D7BB570, &unk_227670FC0);
  if (v33(v16, 1, v20) == 1)
  {
    v46 = v42;
    sub_226E97D1C(v16, &unk_27D7BB570, &unk_227670FC0);
    v47 = v62;
    sub_22766A6C0();

    v48 = sub_22766B380();
    v49 = sub_22766C890();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v68 = v51;
      *v50 = 141558274;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2080;
      v52 = sub_226E97AE8(v46, v44, &v68);

      *(v50 + 14) = v52;
      _os_log_impl(&dword_226E8E000, v48, v49, "Couldn't get absolute path from filename '%{mask.hash}s'", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AA9A450](v51, -1, -1);
      MEMORY[0x22AA9A450](v50, -1, -1);
    }

    else
    {
    }

    v56 = (*(v65 + 8))(v47, v66);
    MEMORY[0x28223BE20](v56);
    v57 = v67;
    *(&v60 - 2) = v58;
    *(&v60 - 1) = v57;
    sub_2276696A0();
    return (*(v21 + 8))(v63, v20);
  }

  else
  {
    sub_227662400();
    v53 = *(v21 + 8);
    v53(v16, v20);

    v54 = v61;
    v41(v61, v23, v20);
    sub_2274B2098();
    v55 = sub_2274B2CB0();
    MEMORY[0x28223BE20](v55);
    *(&v60 - 4) = v67;
    *(&v60 - 3) = v54;
    *(&v60 - 2) = v59;
    sub_2276696A0();
    v53(v63, v20);
    return (v53)(v54, v20);
  }
}

uint64_t sub_2271445C4(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_22766B390();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v43 - v9;
  v10 = sub_227663CD0();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v43 - v19;
  v21 = sub_2276624A0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 originalRequest];
  if (v26)
  {
    v27 = v26;
    sub_227661F90();

    v28 = sub_227661FD0();
    (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  }

  else
  {
    v28 = sub_227661FD0();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  }

  sub_226E95D18(v14, v17, &qword_27D7BB568, &qword_22767AA48);
  sub_227661FD0();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v17, 1, v28) == 1)
  {
    sub_226E97D1C(v17, &qword_27D7BB568, &qword_22767AA48);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    sub_227661FB0();
    (*(v29 + 8))(v17, v28);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      (*(v22 + 32))(v25, v20, v21);
      v37 = v47;
      v38 = v52;
      sub_227141938(v47, v48 / v49);
      v40 = v50;
      v39 = v51;
      if ((*(v50 + 48))(v37, 1, v51) == 1)
      {
        (*(v22 + 8))(v25, v21);
        return sub_226E97D1C(v37, &qword_27D7B9648, &unk_227674880);
      }

      else
      {
        v41 = v44;
        (*(v40 + 32))(v44, v37, v39);
        v54 = *(v38 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub + 8);
        swift_getObjectType();
        v42 = v45;
        (*(v22 + 16))(v45, v25, v21);
        (*(v40 + 16))(v42 + *(v46 + 20), v41, v39);
        sub_226EB0F20(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
        sub_2276699D0();
        sub_227145B64(v42, type metadata accessor for AssetProgressUpdated);
        (*(v40 + 8))(v41, v39);
        return (*(v22 + 8))(v25, v21);
      }
    }
  }

  sub_226E97D1C(v20, &unk_27D7BB570, &unk_227670FC0);
  sub_22766A6C0();
  v30 = a1;
  v31 = sub_22766B380();
  v32 = sub_22766C890();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 141558274;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_226E8E000, v31, v32, "No remote URL in download task: %{mask.hash}@", v33, 0x16u);
    sub_226E97D1C(v34, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  return (*(v53 + 8))(v6, v54);
}

uint64_t sub_227144D54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v15 = a1;
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();

  if (!os_log_type_enabled(v16, v17))
  {

    return (*(v12 + 8))(v14, v11);
  }

  v39 = v17;
  v18 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v43 = v38;
  *v18 = 141558274;
  *(v18 + 4) = 1752392040;
  *(v18 + 12) = 2080;
  v19 = [v15 originalRequest];
  v40 = v11;
  if (v19)
  {
    v20 = v19;
    sub_227661F90();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v23 = sub_227661FD0();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v4, v21, 1, v23);
  sub_226E95D18(v4, v7, &qword_27D7BB568, &qword_22767AA48);
  if ((*(v24 + 48))(v7, 1, v23) == 1)
  {
    v25 = &qword_27D7BB568;
    v26 = &qword_22767AA48;
    v27 = v7;
  }

  else
  {
    sub_227661FB0();
    (*(v24 + 8))(v7, v23);
    v28 = sub_2276624A0();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v10, 1, v28) != 1)
    {
      v30 = sub_227662390();
      v31 = v32;
      (*(v29 + 8))(v10, v28);
      goto LABEL_12;
    }

    v25 = &unk_27D7BB570;
    v26 = &unk_227670FC0;
    v27 = v10;
  }

  sub_226E97D1C(v27, v25, v26);
  v30 = 0;
  v31 = 0;
LABEL_12:
  v41 = v30;
  v42 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v33 = sub_22766CB80();
  v35 = v34;

  v36 = sub_226E97AE8(v33, v35, &v43);

  *(v18 + 14) = v36;
  _os_log_impl(&dword_226E8E000, v16, v39, "Task is waiting for connectivity for remoteURL: %{mask.hash}s", v18, 0x16u);
  v37 = v38;
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x22AA9A450](v37, -1, -1);
  MEMORY[0x22AA9A450](v18, -1, -1);

  return (*(v12 + 8))(v14, v40);
}

uint64_t sub_2271451F8(void *a1, void *a2)
{
  v67 = a2;
  v4 = sub_22766B390();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v13 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = v2;
  v75 = a1;
  v71 = &v62 - v22;
  sub_2276696A0();
  v72 = v2;
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v23 = v78;
  if (v78)
  {
    v24 = v79;
    v25 = v67;
    if (v67)
    {
      v65 = v79;

      sub_22766A6C0();
      v26 = a1;
      v27 = v25;
      v28 = sub_22766B380();
      v29 = sub_22766C890();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v63 = v31;
        v64 = swift_slowAlloc();
        v78 = v64;
        *v30 = 138412546;
        *(v30 + 4) = v26;
        *v31 = v26;
        *(v30 + 12) = 2082;
        swift_getErrorValue();
        v32 = v76;
        v33 = v25;
        v34 = v77;
        v35 = v26;
        v36 = MEMORY[0x22AA995D0](v32, v34);
        v38 = sub_226E97AE8(v36, v37, &v78);

        *(v30 + 14) = v38;
        _os_log_impl(&dword_226E8E000, v28, v29, "Task %@ completed with error: %{public}s", v30, 0x16u);
        v39 = v63;
        sub_226E97D1C(v63, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v39, -1, -1);
        v40 = v64;
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v30, -1, -1);

        (*(v69 + 8))(v9, v70);
      }

      else
      {

        (*(v69 + 8))(v9, v70);
        v33 = v25;
      }

      v47 = v71;
      v55 = v66;
      *v66 = v33;
      swift_storeEnumTagMultiPayload();
      v58 = v33;
      v59 = v65;
      v23(v55);
      sub_226EA9E3C(v23, v59);
      v56 = v23;
      v57 = v59;
    }

    else
    {
      v47 = v71;
      sub_226E93170(v71, v20, &qword_27D7BB560, &qword_227682040);
      if ((*(v13 + 48))(v20, 1, v68) != 1)
      {
        sub_226E95D18(v20, v17, &qword_27D7B9628, &unk_227674860);

        v23(v17);
        sub_226EA9E3C(v23, v24);
        sub_226EA9E3C(v23, v24);
        v60 = v17;
        goto LABEL_15;
      }

      v48 = v24;

      sub_226E97D1C(v20, &qword_27D7BB560, &qword_227682040);
      sub_22766A6C0();
      v49 = sub_22766B380();
      v50 = sub_22766C890();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_226E8E000, v49, v50, "Task completed before local file was saved.", v51, 2u);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      (*(v69 + 8))(v12, v70);
      v52 = sub_227663190();
      sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      v53 = swift_allocError();
      (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D4FDC0], v52);
      v55 = v66;
      *v66 = v53;
      swift_storeEnumTagMultiPayload();
      v23(v55);
      sub_226EA9E3C(v23, v48);
      v56 = v23;
      v57 = v48;
    }

    sub_226EA9E3C(v56, v57);
    v60 = v55;
LABEL_15:
    sub_226E97D1C(v60, &qword_27D7B9628, &unk_227674860);
    return sub_226E97D1C(v47, &qword_27D7BB560, &qword_227682040);
  }

  sub_22766A6C0();
  v41 = a1;
  v42 = sub_22766B380();
  v43 = sub_22766C890();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 141558274;
    *(v44 + 4) = 1752392040;
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&dword_226E8E000, v42, v43, "No completion for finished task: %{mask.hash}@", v44, 0x16u);
    sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v45, -1, -1);
    MEMORY[0x22AA9A450](v44, -1, -1);
  }

  (*(v69 + 8))(v6, v70);
  v47 = v71;
  return sub_226E97D1C(v47, &qword_27D7BB560, &qword_227682040);
}