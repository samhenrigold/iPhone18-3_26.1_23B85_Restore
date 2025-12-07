uint64_t sub_1CA6694D4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_87_5([*(v0 + 16) possibleValues]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_70_12(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_6_1(v2);

  return WFContentPropertyPossibleValuesGetter.typedValues.getter();
}

uint64_t sub_1CA669578()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  OUTLINED_FUNCTION_85_7(v5);
  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA669670()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 40;
  v4 = *(v2 + 16);
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    if (*v5 == 3)
    {
      v6 = *(v5 - 1);
      v7 = objc_allocWithZone(MEMORY[0x1E69ACEC8]);
      v8 = v6;
      v9 = [v7 initWithValue:v8 indentationLevel:0];
      v10 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

      if (v10)
      {
        MEMORY[0x1CCAA1490]();
        v11 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
        {
          OUTLINED_FUNCTION_64(v11);
          sub_1CA94C698();
        }

        ++v1;
        sub_1CA94C6E8();
        v14 = v15;
        v3 = v2 + 40;
        goto LABEL_2;
      }
    }

    v5 += 16;
    ++v1;
  }

  v12 = *(v13 + 8);

  v12(v14);
}

uint64_t sub_1CA66980C(void *a1)
{
  v1 = [a1 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 title];
    v4 = [v3 wf_localizedString];

    sub_1CA94C3A8();
  }

  return OUTLINED_FUNCTION_52_0();
}

uint64_t sub_1CA6698A8(uint64_t a1, uint64_t a2, char a3, id a4, char a5)
{
  v9 = [a4 isIrrational];
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CA94C218();
    sub_1CA2E5678();
    v10 = v11;
    v12 = *(v11 + 16);
    v13 = v12 + 1;
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v35;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E40, &qword_1CA98F950);
    v43 = sub_1CA66D9E8();
    *&v40 = a1;
    *(&v40 + 1) = a2;
    v41 = a3 & 1;
    *(v10 + 16) = v13;
    sub_1CA27F268(&v40, v10 + 40 * v12 + 32);
    if ((a5 & 1) == 0)
    {
      v14 = *(v10 + 24);
      sub_1CA94C218();
      if ((v12 + 2) > (v14 >> 1))
      {
        sub_1CA2E5678();
        v10 = v38;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447530, &unk_1CA98F958);
      v43 = sub_1CA66DA64();
      *&v40 = a1;
      *(&v40 + 1) = a2;
      v41 = a3 & 1;
      *(v10 + 16) = v12 + 2;
      sub_1CA27F268(&v40, v10 + 40 * v13 + 32);
    }
  }

  sub_1CA94C218();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E5678();
    v10 = v32;
  }

  v15 = *(v10 + 16);
  v16 = v15 + 1;
  v17 = a3;
  if (v15 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v33;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E30, &unk_1CA985F40);
  v42 = v18;
  v19 = sub_1CA66DAE0();
  v43 = v19;
  v20 = swift_allocObject();
  *&v40 = v20;
  *(v20 + 16) = 2;
  v21 = a1;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  v22 = v17 & 1;
  *(v20 + 40) = v22;
  *(v10 + 16) = v16;
  sub_1CA27F268(&v40, v10 + 40 * v15 + 32);
  v39 = v9;
  if ((v9 & 1) == 0)
  {
    v23 = *(v10 + 24);
    sub_1CA94C218();
    if ((v15 + 2) > (v23 >> 1))
    {
      sub_1CA2E5678();
      v10 = v36;
    }

    v42 = v18;
    v43 = v19;
    v24 = swift_allocObject();
    *&v40 = v24;
    *(v24 + 16) = 3;
    *(v24 + 24) = a1;
    *(v24 + 32) = a2;
    *(v24 + 40) = v22;
    *(v10 + 16) = v15 + 2;
    sub_1CA27F268(&v40, v10 + 40 * v16 + 32);
  }

  v26 = *(v10 + 16);
  v25 = *(v10 + 24);
  v27 = v26 + 1;
  sub_1CA94C218();
  if (v26 >= v25 >> 1)
  {
    sub_1CA2E5678();
    v10 = v34;
  }

  v42 = v18;
  v43 = v19;
  v28 = swift_allocObject();
  *&v40 = v28;
  *(v28 + 16) = 0;
  *(v28 + 24) = v21;
  *(v28 + 32) = a2;
  *(v28 + 40) = v22;
  *(v10 + 16) = v27;
  sub_1CA27F268(&v40, v10 + 40 * v26 + 32);
  if ((v39 & 1) == 0)
  {
    v29 = *(v10 + 24);
    sub_1CA94C218();
    if ((v26 + 2) > (v29 >> 1))
    {
      sub_1CA2E5678();
      v10 = v37;
    }

    v42 = v18;
    v43 = v19;
    v30 = swift_allocObject();
    *&v40 = v30;
    *(v30 + 16) = 1;
    *(v30 + 24) = v21;
    *(v30 + 32) = a2;
    *(v30 + 40) = v22;
    *(v10 + 16) = v26 + 2;
    sub_1CA27F268(&v40, v10 + 40 * v27 + 32);
  }

  return v10;
}

uint64_t sub_1CA669C90(uint64_t *a1, id a2, char a3)
{
  v5 = *a1;
  v6 = a1[1];
  v37 = *(a1 + 16);
  v7 = a1 + 3;
  v38 = a1[3];
  v8 = a1[4];
  v9 = [a2 isIrrational];
  if (v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v46 = *a1;
    v47 = *(a1 + 16);
    v45 = *v7;
    sub_1CA66DB5C(&v46, &v39);
    sub_1CA66DBB8(&v45, &v39);
    sub_1CA2E5678();
    v10 = v11;
    v12 = *(v11 + 16);
    v36 = v12 + 1;
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v32;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BF0, &qword_1CA991658);
    v41 = sub_1CA66C6F4();
    v13 = swift_allocObject();
    *&v39 = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = v6;
    *(v13 + 32) = v37 & 1;
    *(v13 + 40) = v38;
    *(v13 + 48) = v8;
    *(v10 + 16) = v36;
    sub_1CA27F268(&v39, v10 + 40 * v12 + 32);
    if ((a3 & 1) == 0)
    {
      sub_1CA66DB5C(&v46, &v39);
      sub_1CA66DBB8(&v45, &v39);
      if ((v12 + 2) > *(v10 + 24) >> 1)
      {
        sub_1CA2E5678();
        v10 = v35;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447D98, &qword_1CA9917B8);
      v41 = sub_1CA66DC14();
      v14 = swift_allocObject();
      *&v39 = v14;
      *(v14 + 16) = v5;
      *(v14 + 24) = v6;
      *(v14 + 32) = v37 & 1;
      *(v14 + 40) = v38;
      *(v14 + 48) = v8;
      *(v10 + 16) = v12 + 2;
      sub_1CA27F268(&v39, v10 + 40 * v36 + 32);
    }
  }

  v15 = *a1;
  v44 = *(a1 + 16);
  v42 = *v7;
  v43 = v15;
  sub_1CA66DB5C(&v43, &v39);
  sub_1CA66DBB8(&v42, &v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E5678();
    v10 = v29;
  }

  v16 = *(v10 + 16);
  v17 = v16 + 1;
  if (v16 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v30;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DA8, &qword_1CA9917C0);
  v40 = v18;
  v19 = sub_1CA66DCD0();
  v41 = v19;
  v20 = swift_allocObject();
  *&v39 = v20;
  *(v20 + 16) = 2;
  *(v20 + 24) = v5;
  *(v20 + 32) = v6;
  v21 = v37 & 1;
  *(v20 + 40) = v37 & 1;
  *(v20 + 48) = v38;
  *(v20 + 56) = v8;
  *(v10 + 16) = v17;
  sub_1CA27F268(&v39, v10 + 40 * v16 + 32);
  if ((v9 & 1) == 0)
  {
    sub_1CA66DB5C(&v43, &v39);
    sub_1CA66DBB8(&v42, &v39);
    v22 = v16 + 2;
    if (v22 > *(v10 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v33;
    }

    v40 = v18;
    v41 = v19;
    v23 = swift_allocObject();
    *&v39 = v23;
    *(v23 + 16) = 3;
    *(v23 + 24) = v5;
    *(v23 + 32) = v6;
    *(v23 + 40) = v21;
    *(v23 + 48) = v38;
    *(v23 + 56) = v8;
    *(v10 + 16) = v22;
    sub_1CA27F268(&v39, v10 + 40 * v17 + 32);
  }

  sub_1CA66DB5C(&v43, &v39);
  sub_1CA66DBB8(&v42, &v39);
  v24 = *(v10 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v10 + 24) >> 1)
  {
    sub_1CA2E5678();
    v10 = v31;
  }

  v40 = v18;
  v41 = v19;
  v26 = swift_allocObject();
  *&v39 = v26;
  *(v26 + 16) = 0;
  *(v26 + 24) = v5;
  *(v26 + 32) = v6;
  *(v26 + 40) = v21;
  *(v26 + 48) = v38;
  *(v26 + 56) = v8;
  *(v10 + 16) = v25;
  sub_1CA27F268(&v39, v10 + 40 * v24 + 32);
  if ((v9 & 1) == 0)
  {
    sub_1CA66DB5C(&v43, &v39);
    sub_1CA66DBB8(&v42, &v39);
    if ((v24 + 2) > *(v10 + 24) >> 1)
    {
      sub_1CA2E5678();
      v10 = v34;
    }

    v40 = v18;
    v41 = v19;
    v27 = swift_allocObject();
    *&v39 = v27;
    *(v27 + 16) = 1;
    *(v27 + 24) = v5;
    *(v27 + 32) = v6;
    *(v27 + 40) = v21;
    *(v27 + 48) = v38;
    *(v27 + 56) = v8;
    *(v10 + 16) = v24 + 2;
    sub_1CA27F268(&v39, v10 + 40 * v25 + 32);
  }

  return v10;
}

uint64_t sub_1CA66A180(uint64_t *a1, id a2, char a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1 + 3;
  v58 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v56 = [a2 isIrrational];
  if (v56)
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v12 = *a1;
    v71 = *(a1 + 16);
    v69 = *v8;
    v70 = v12;
    v68 = v10;
    sub_1CA66DB5C(&v70, &v61);
    sub_1CA5A3E5C(&v69, &v61);
    sub_1CA66DD4C(&v68, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
    sub_1CA2E5678();
    v11 = v13;
    v14 = *(v13 + 16);
    v52 = v14 + 1;
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v48;
    }

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447BE0, &qword_1CA991650);
    v63 = sub_1CA66C678();
    v15 = swift_allocObject();
    *&v61 = v15;
    *(v15 + 16) = v6;
    *(v15 + 24) = v5;
    v16 = v7 & 1;
    *(v15 + 32) = v16;
    *(v15 + 40) = v58;
    *(v15 + 48) = v9;
    *(v15 + 56) = v10;
    *(v11 + 16) = v52;
    sub_1CA27F268(&v61, v11 + 40 * v14 + 32);
    if ((a3 & 1) == 0)
    {
      sub_1CA66DB5C(&v70, &v61);
      sub_1CA5A3E5C(&v69, &v61);
      sub_1CA66DD4C(&v68, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
      if ((v14 + 2) > *(v11 + 24) >> 1)
      {
        sub_1CA2E5678();
        v11 = v51;
      }

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DC0, &qword_1CA9917D0);
      v63 = sub_1CA66DDB4();
      v17 = swift_allocObject();
      *&v61 = v17;
      *(v17 + 16) = v6;
      *(v17 + 24) = v5;
      *(v17 + 32) = v16;
      *(v17 + 40) = v58;
      *(v17 + 48) = v9;
      *(v17 + 56) = v10;
      *(v11 + 16) = v14 + 2;
      sub_1CA27F268(&v61, v11 + 40 * v52 + 32);
    }
  }

  v18 = *a1;
  v67 = *(a1 + 16);
  v65 = *v8;
  v66 = v18;
  v20 = a1[4];
  v19 = a1[5];
  v64 = v19;
  v22 = *a1;
  v21 = a1[1];
  v60 = v67;
  v53 = a1[3];
  sub_1CA66DB5C(&v66, &v61);
  sub_1CA5A3E5C(&v65, &v61);
  sub_1CA66DD4C(&v64, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1CA2E5678();
    v11 = v45;
  }

  v23 = *(v11 + 16);
  if (v23 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E5678();
    v11 = v46;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447DD0, &qword_1CA9917D8);
  v62 = v24;
  v59 = sub_1CA66DE70();
  v63 = v59;
  v25 = swift_allocObject();
  *&v61 = v25;
  *(v25 + 16) = 2;
  *(v25 + 24) = v22;
  *(v25 + 32) = v21;
  *(v25 + 40) = v60;
  *(v25 + 48) = v53;
  *(v25 + 56) = v20;
  *(v25 + 64) = v19;
  *(v11 + 16) = v23 + 1;
  sub_1CA27F268(&v61, v11 + 40 * v23 + 32);
  if ((v56 & 1) == 0)
  {
    v26 = *a1;
    v27 = a1[1];
    v28 = *(a1 + 16);
    v29 = a1[3];
    v54 = *(a1 + 2);
    sub_1CA66DB5C(&v66, &v61);
    sub_1CA5A3E5C(&v65, &v61);
    sub_1CA66DD4C(&v64, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
    v30 = *(v11 + 16);
    if (v30 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v49;
    }

    v62 = v24;
    v63 = v59;
    v31 = swift_allocObject();
    *&v61 = v31;
    *(v31 + 16) = 3;
    *(v31 + 24) = v26;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28 & 1;
    *(v31 + 48) = v29;
    *(v31 + 56) = v54;
    *(v11 + 16) = v30 + 1;
    sub_1CA27F268(&v61, v11 + 40 * v30 + 32);
  }

  v32 = *a1;
  v33 = a1[1];
  v34 = *(a1 + 16);
  v35 = a1[3];
  v55 = *(a1 + 2);
  sub_1CA66DB5C(&v66, &v61);
  sub_1CA5A3E5C(&v65, &v61);
  sub_1CA66DD4C(&v64, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
  v36 = *(v11 + 16);
  if (v36 >= *(v11 + 24) >> 1)
  {
    sub_1CA2E5678();
    v11 = v47;
  }

  v62 = v24;
  v63 = v59;
  v37 = swift_allocObject();
  *&v61 = v37;
  *(v37 + 16) = 0;
  *(v37 + 24) = v32;
  *(v37 + 32) = v33;
  *(v37 + 40) = v34 & 1;
  *(v37 + 48) = v35;
  *(v37 + 56) = v55;
  *(v11 + 16) = v36 + 1;
  sub_1CA27F268(&v61, v11 + 40 * v36 + 32);
  if ((v56 & 1) == 0)
  {
    v38 = *a1;
    v39 = a1[1];
    v40 = *(a1 + 16);
    v41 = a1[3];
    v57 = *(a1 + 2);
    sub_1CA66DB5C(&v66, &v61);
    sub_1CA5A3E5C(&v65, &v61);
    sub_1CA66DD4C(&v64, &v61, &qword_1EC447DB8, &qword_1CA9917C8);
    v42 = *(v11 + 16);
    if (v42 >= *(v11 + 24) >> 1)
    {
      sub_1CA2E5678();
      v11 = v50;
    }

    v62 = v24;
    v63 = v59;
    v43 = swift_allocObject();
    *&v61 = v43;
    *(v43 + 16) = 1;
    *(v43 + 24) = v38;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40 & 1;
    *(v43 + 48) = v41;
    *(v43 + 56) = v57;
    *(v11 + 16) = v42 + 1;
    sub_1CA27F268(&v61, v11 + 40 * v42 + 32);
  }

  return v11;
}

uint64_t sub_1CA66A7AC(uint64_t a1, uint64_t a2, char a3, id a4, char a5)
{
  if (![a4 userInfo])
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_10;
  }

  if ([v10 objectForKey_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v11 = [v20 BOOLValue];

      if (v11)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1CA97EDF0;
        sub_1CA94C218();
        v13 = [a4 caseInsensitive];
        *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
        *(v12 + 64) = sub_1CA66D7F8();
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        *(v12 + 48) = a3;
        *(v12 + 49) = v13;
        sub_1CA94C218();
        v14 = [a4 caseInsensitive];
        *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
        *(v12 + 104) = sub_1CA66D874();
        *(v12 + 72) = a1;
        *(v12 + 80) = a2;
        *(v12 + 88) = a3;
        *(v12 + 89) = v14;
        swift_unknownObjectRelease();
        return v12;
      }
    }

LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  sub_1CA30F7DC(v23, &unk_1EC444650, &unk_1CA981C70);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443940, &unk_1CA982570);
  if (a5)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CA981310;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
    *(v12 + 64) = sub_1CA66D700();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    sub_1CA94C218();
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CA981380;
    *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4473F0, &unk_1CA991790);
    *(v12 + 64) = sub_1CA66D700();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 48) = a3;
    *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447400, &unk_1CA98F880);
    *(v12 + 104) = sub_1CA66D77C();
    *(v12 + 72) = a1;
    *(v12 + 80) = a2;
    *(v12 + 88) = a3;
    swift_bridgeObjectRetain_n();
    v15 = [a4 caseInsensitive];
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444E20, &unk_1CA9917A0);
    *(v12 + 144) = sub_1CA66D7F8();
    *(v12 + 112) = a1;
    *(v12 + 120) = a2;
    *(v12 + 128) = a3;
    *(v12 + 129) = v15;
    sub_1CA94C218();
    v16 = [a4 caseInsensitive];
    *(v12 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447420, &unk_1CA98F890);
    *(v12 + 184) = sub_1CA66D874();
    *(v12 + 152) = a1;
    *(v12 + 160) = a2;
    *(v12 + 168) = a3;
    *(v12 + 169) = v16;
    sub_1CA94C218();
    v17 = [a4 caseInsensitive];
    *(v12 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447430, &qword_1CA9917B0);
    *(v12 + 224) = sub_1CA66D8F0();
    *(v12 + 192) = a1;
    *(v12 + 200) = a2;
    *(v12 + 208) = a3;
    *(v12 + 209) = v17;
    sub_1CA94C218();
    v18 = [a4 caseInsensitive];
    *(v12 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447440, &qword_1CA98F8A0);
    *(v12 + 264) = sub_1CA66D96C();
    *(v12 + 232) = a1;
    *(v12 + 240) = a2;
    *(v12 + 248) = a3;
    *(v12 + 249) = v18;
  }

  return v12;
}

id sub_1CA66ABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1CA94C368();

  v10 = [v5 initWithContentItemClass:ObjCClassFromMetadata contentPropertyName:v9 comparisonOperator:a4 removable:a5 & 1];

  return v10;
}

uint64_t sub_1CA66AC54(void *a1)
{
  v1 = [a1 allowedOperators];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA66ACC4(void *a1)
{
  v1 = [a1 localizedNegativeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA66AD28()
{
  result = qword_1EC447B50;
  if (!qword_1EC447B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC444470, &unk_1CA983510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B50);
  }

  return result;
}

unint64_t sub_1CA66AD90()
{
  result = qword_1EC447B60;
  if (!qword_1EC447B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B60);
  }

  return result;
}

unint64_t sub_1CA66ADE8()
{
  result = qword_1EC447B68;
  if (!qword_1EC447B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B68);
  }

  return result;
}

unint64_t sub_1CA66AE3C(uint64_t a1)
{
  result = sub_1CA66AE64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AE64()
{
  result = qword_1EC447B70;
  if (!qword_1EC447B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B70);
  }

  return result;
}

unint64_t sub_1CA66AEB8(uint64_t a1)
{
  result = sub_1CA66AEE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AEE0()
{
  result = qword_1EC447B78;
  if (!qword_1EC447B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B78);
  }

  return result;
}

unint64_t sub_1CA66AF38()
{
  result = qword_1EC447B80;
  if (!qword_1EC447B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B80);
  }

  return result;
}

unint64_t sub_1CA66AF8C(uint64_t a1)
{
  result = sub_1CA66AFB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66AFB4()
{
  result = qword_1EC447B88;
  if (!qword_1EC447B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B88);
  }

  return result;
}

unint64_t sub_1CA66B008(uint64_t a1)
{
  result = sub_1CA66B030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B030()
{
  result = qword_1EC447B90;
  if (!qword_1EC447B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B90);
  }

  return result;
}

unint64_t sub_1CA66B088()
{
  result = qword_1EC447B98;
  if (!qword_1EC447B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447B98);
  }

  return result;
}

unint64_t sub_1CA66B0DC(uint64_t a1)
{
  result = sub_1CA66B104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B104()
{
  result = qword_1EC447BA0;
  if (!qword_1EC447BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BA0);
  }

  return result;
}

unint64_t sub_1CA66B158(uint64_t a1)
{
  result = sub_1CA66B180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B180()
{
  result = qword_1EC447BA8;
  if (!qword_1EC447BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BA8);
  }

  return result;
}

unint64_t sub_1CA66B1D8()
{
  result = qword_1EC447BB0;
  if (!qword_1EC447BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BB0);
  }

  return result;
}

unint64_t sub_1CA66B22C(uint64_t a1)
{
  result = sub_1CA66B254();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B254()
{
  result = qword_1EC447BB8;
  if (!qword_1EC447BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BB8);
  }

  return result;
}

unint64_t sub_1CA66B2A8(uint64_t a1)
{
  result = sub_1CA66B2D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B2D0()
{
  result = qword_1EC447BC0;
  if (!qword_1EC447BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BC0);
  }

  return result;
}

unint64_t sub_1CA66B328()
{
  result = qword_1EC447BC8;
  if (!qword_1EC447BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447BC8);
  }

  return result;
}

unint64_t sub_1CA66B37C(uint64_t a1)
{
  result = sub_1CA66B3A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B3A4()
{
  result = qword_1EC441F10;
  if (!qword_1EC441F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F10);
  }

  return result;
}

unint64_t sub_1CA66B3F8(uint64_t a1)
{
  result = sub_1CA66B420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B420()
{
  result = qword_1EC441F28;
  if (!qword_1EC441F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F28);
  }

  return result;
}

unint64_t sub_1CA66B478()
{
  result = qword_1EC441F20;
  if (!qword_1EC441F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F20);
  }

  return result;
}

unint64_t sub_1CA66B4CC(uint64_t a1)
{
  result = sub_1CA66B4F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B4F4()
{
  result = qword_1EC441FC8;
  if (!qword_1EC441FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FC8);
  }

  return result;
}

unint64_t sub_1CA66B548(uint64_t a1)
{
  result = sub_1CA66B570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B570()
{
  result = qword_1EC441FE0;
  if (!qword_1EC441FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FE0);
  }

  return result;
}

unint64_t sub_1CA66B5C8()
{
  result = qword_1EC441FD8;
  if (!qword_1EC441FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FD8);
  }

  return result;
}

unint64_t sub_1CA66B61C(uint64_t a1)
{
  result = sub_1CA66B644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B644()
{
  result = qword_1EC441F30;
  if (!qword_1EC441F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F30);
  }

  return result;
}

unint64_t sub_1CA66B698(uint64_t a1)
{
  result = sub_1CA66B6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B6C0()
{
  result = qword_1EC441F48;
  if (!qword_1EC441F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F48);
  }

  return result;
}

unint64_t sub_1CA66B718()
{
  result = qword_1EC441F40;
  if (!qword_1EC441F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F40);
  }

  return result;
}

unint64_t sub_1CA66B76C(uint64_t a1)
{
  result = sub_1CA66B794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B794()
{
  result = qword_1EC441F58;
  if (!qword_1EC441F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F58);
  }

  return result;
}

unint64_t sub_1CA66B7E8(uint64_t a1)
{
  result = sub_1CA66B810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B810()
{
  result = qword_1EC441F70;
  if (!qword_1EC441F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F70);
  }

  return result;
}

unint64_t sub_1CA66B868()
{
  result = qword_1EC441F68;
  if (!qword_1EC441F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F68);
  }

  return result;
}

unint64_t sub_1CA66B8BC(uint64_t a1)
{
  result = sub_1CA66B8E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B8E4()
{
  result = qword_1EC441F80;
  if (!qword_1EC441F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F80);
  }

  return result;
}

unint64_t sub_1CA66B938(uint64_t a1)
{
  result = sub_1CA66B960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66B960()
{
  result = qword_1EC441F98;
  if (!qword_1EC441F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F98);
  }

  return result;
}

unint64_t sub_1CA66B9B8()
{
  result = qword_1EC441F90;
  if (!qword_1EC441F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F90);
  }

  return result;
}

unint64_t sub_1CA66BA0C(uint64_t a1)
{
  result = sub_1CA66BA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BA34()
{
  result = qword_1EC441EB8;
  if (!qword_1EC441EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EB8);
  }

  return result;
}

unint64_t sub_1CA66BA88(uint64_t a1)
{
  result = sub_1CA66BAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BAB0()
{
  result = qword_1EC441ED0;
  if (!qword_1EC441ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441ED0);
  }

  return result;
}

unint64_t sub_1CA66BB08()
{
  result = qword_1EC441EC8;
  if (!qword_1EC441EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EC8);
  }

  return result;
}

unint64_t sub_1CA66BB5C(uint64_t a1)
{
  result = sub_1CA66BB84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BB84()
{
  result = qword_1EC441E90;
  if (!qword_1EC441E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E90);
  }

  return result;
}

unint64_t sub_1CA66BBD8(uint64_t a1)
{
  result = sub_1CA66BC00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BC00()
{
  result = qword_1EC441EA8;
  if (!qword_1EC441EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EA8);
  }

  return result;
}

unint64_t sub_1CA66BC58()
{
  result = qword_1EC441EA0;
  if (!qword_1EC441EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EA0);
  }

  return result;
}

unint64_t sub_1CA66BCAC(uint64_t a1)
{
  result = sub_1CA66BCD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BCD4()
{
  result = qword_1EC441E68;
  if (!qword_1EC441E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E68);
  }

  return result;
}

unint64_t sub_1CA66BD28(uint64_t a1)
{
  result = sub_1CA66BD50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BD50()
{
  result = qword_1EC441E80;
  if (!qword_1EC441E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E80);
  }

  return result;
}

unint64_t sub_1CA66BDA8()
{
  result = qword_1EC441E78;
  if (!qword_1EC441E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E78);
  }

  return result;
}

unint64_t sub_1CA66BDFC(uint64_t a1)
{
  result = sub_1CA66BE24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BE24()
{
  result = qword_1EC441FA0;
  if (!qword_1EC441FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FA0);
  }

  return result;
}

unint64_t sub_1CA66BE78(uint64_t a1)
{
  result = sub_1CA66BEA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BEA0()
{
  result = qword_1EC441FB8;
  if (!qword_1EC441FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FB8);
  }

  return result;
}

unint64_t sub_1CA66BEF8()
{
  result = qword_1EC441FB0;
  if (!qword_1EC441FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FB0);
  }

  return result;
}

unint64_t sub_1CA66BF4C(uint64_t a1)
{
  result = sub_1CA66BF74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BF74()
{
  result = qword_1EC441ED8;
  if (!qword_1EC441ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441ED8);
  }

  return result;
}

unint64_t sub_1CA66BFC8(uint64_t a1)
{
  result = sub_1CA66BFF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66BFF0()
{
  result = qword_1EC441F00;
  if (!qword_1EC441F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F00);
  }

  return result;
}

unint64_t sub_1CA66C048()
{
  result = qword_1EC441EF8;
  if (!qword_1EC441EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EF8);
  }

  return result;
}

unint64_t sub_1CA66C09C(uint64_t a1)
{
  result = sub_1CA66C0C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66C0C4()
{
  result = qword_1EC441E60;
  if (!qword_1EC441E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E60);
  }

  return result;
}

uint64_t sub_1CA66C160(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA66C1B0(uint64_t a1)
{
  result = sub_1CA66C1D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA66C1D8()
{
  result = qword_1EC441E40;
  if (!qword_1EC441E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E40);
  }

  return result;
}

unint64_t sub_1CA66C230()
{
  result = qword_1EC441E58;
  if (!qword_1EC441E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E58);
  }

  return result;
}

_BYTE *_s21SerializationStrategyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RowTemplateFindFilterParameterState.SerializationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RowTemplateFindFilterParameterState.SerializationKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CA66C5CC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA66C678()
{
  result = qword_1EC442948;
  if (!qword_1EC442948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447BE0, &qword_1CA991650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442948);
  }

  return result;
}

unint64_t sub_1CA66C6F4()
{
  result = qword_1EC442938;
  if (!qword_1EC442938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447BF0, &qword_1CA991658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442938);
  }

  return result;
}

unint64_t sub_1CA66C770()
{
  result = qword_1EC447C08;
  if (!qword_1EC447C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C00, &qword_1CA991660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C08);
  }

  return result;
}

unint64_t sub_1CA66C7EC()
{
  result = qword_1EC447C18;
  if (!qword_1EC447C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C10, &qword_1CA991668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C18);
  }

  return result;
}

uint64_t objectdestroy_122Tm()
{

  v1 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1CA66C8A8()
{
  result = qword_1EC442968[0];
  if (!qword_1EC442968[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C20, &unk_1CA991670);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442968);
  }

  return result;
}

unint64_t sub_1CA66C924()
{
  result = qword_1EC442788[0];
  if (!qword_1EC442788[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C30, &unk_1CA98F860);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442788);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1CA66C9E8()
{
  result = qword_1EC447C40;
  if (!qword_1EC447C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C40);
  }

  return result;
}

unint64_t sub_1CA66CA3C()
{
  result = qword_1EC447C48;
  if (!qword_1EC447C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C48);
  }

  return result;
}

unint64_t sub_1CA66CA90()
{
  result = qword_1EC447C58;
  if (!qword_1EC447C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C50, &qword_1CA991680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C58);
  }

  return result;
}

unint64_t sub_1CA66CB0C()
{
  result = qword_1EC442648[0];
  if (!qword_1EC442648[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C60, &qword_1CA991688);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442648);
  }

  return result;
}

unint64_t sub_1CA66CB88()
{
  result = qword_1EC4425B8[0];
  if (!qword_1EC4425B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C70, &unk_1CA991690);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4425B8);
  }

  return result;
}

uint64_t sub_1CA66CC04()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA6694B4(v1);
}

unint64_t sub_1CA66CC8C()
{
  result = qword_1EC447C80;
  if (!qword_1EC447C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C78, &qword_1CA9916B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C80);
  }

  return result;
}

unint64_t sub_1CA66CD08()
{
  result = qword_1EC447C90;
  if (!qword_1EC447C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C88, &qword_1CA9916C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447C90);
  }

  return result;
}

uint64_t sub_1CA66CD84()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return sub_1CA668344(v5, v1);
}

uint64_t sub_1CA66CE0C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667FD0(v1);
}

unint64_t sub_1CA66CE94()
{
  result = qword_1EC447CA0;
  if (!qword_1EC447CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447C98, &qword_1CA9916F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CA0);
  }

  return result;
}

unint64_t sub_1CA66CF10()
{
  result = qword_1EC447CB0;
  if (!qword_1EC447CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CA8, &qword_1CA9916F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CB0);
  }

  return result;
}

uint64_t sub_1CA66CF8C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667B10(v1);
}

unint64_t sub_1CA66D014()
{
  result = qword_1EC447CC0;
  if (!qword_1EC447CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CB8, &qword_1CA991718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CC0);
  }

  return result;
}

unint64_t sub_1CA66D090()
{
  result = qword_1EC447CD0;
  if (!qword_1EC447CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CC8, &qword_1CA991720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CD0);
  }

  return result;
}

uint64_t sub_1CA66D10C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_15_20(v3);

  return sub_1CA667630(v1);
}

unint64_t sub_1CA66D194()
{
  result = qword_1EC447CE0;
  if (!qword_1EC447CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CD8, &qword_1CA991740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CE0);
  }

  return result;
}

unint64_t sub_1CA66D210()
{
  result = qword_1EC447CF0;
  if (!qword_1EC447CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447CE8, &unk_1CA991748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447CF0);
  }

  return result;
}

unint64_t sub_1CA66D28C()
{
  result = qword_1EC447D00;
  if (!qword_1EC447D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D00);
  }

  return result;
}

uint64_t objectdestroy_139Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

unint64_t sub_1CA66D340()
{
  result = qword_1EC447D10;
  if (!qword_1EC447D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D08, &qword_1CA991758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D10);
  }

  return result;
}

unint64_t sub_1CA66D3BC()
{
  result = qword_1EC447D20;
  if (!qword_1EC447D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D18, &qword_1CA991760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D20);
  }

  return result;
}

unint64_t sub_1CA66D438()
{
  result = qword_1EC447D30;
  if (!qword_1EC447D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D28, &qword_1CA991768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D30);
  }

  return result;
}

unint64_t sub_1CA66D4B4()
{
  result = qword_1EC447D40;
  if (!qword_1EC447D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D38, &qword_1CA991770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D40);
  }

  return result;
}

unint64_t sub_1CA66D530()
{
  result = qword_1EC447D50;
  if (!qword_1EC447D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D48, &qword_1CA991778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D50);
  }

  return result;
}

unint64_t sub_1CA66D5AC()
{
  result = qword_1EC447D60;
  if (!qword_1EC447D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D58, &qword_1CA991780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D60);
  }

  return result;
}

uint64_t objectdestroy_152Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1CA66D684()
{
  result = qword_1EC447D70;
  if (!qword_1EC447D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447D68, &qword_1CA991788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D70);
  }

  return result;
}

unint64_t sub_1CA66D700()
{
  result = qword_1EC442950;
  if (!qword_1EC442950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4473F0, &unk_1CA991790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442950);
  }

  return result;
}

unint64_t sub_1CA66D77C()
{
  result = qword_1EC442770;
  if (!qword_1EC442770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447400, &unk_1CA98F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442770);
  }

  return result;
}

unint64_t sub_1CA66D7F8()
{
  result = qword_1EC447D80;
  if (!qword_1EC447D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E20, &unk_1CA9917A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D80);
  }

  return result;
}

unint64_t sub_1CA66D874()
{
  result = qword_1EC447D90;
  if (!qword_1EC447D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447420, &unk_1CA98F890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447D90);
  }

  return result;
}

unint64_t sub_1CA66D8F0()
{
  result = qword_1EC442350[0];
  if (!qword_1EC442350[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447430, &qword_1CA9917B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442350);
  }

  return result;
}

unint64_t sub_1CA66D96C()
{
  result = qword_1EC4424E0[0];
  if (!qword_1EC4424E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447440, &qword_1CA98F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4424E0);
  }

  return result;
}

unint64_t sub_1CA66D9E8()
{
  result = qword_1EC442960;
  if (!qword_1EC442960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E40, &qword_1CA98F950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442960);
  }

  return result;
}

unint64_t sub_1CA66DA64()
{
  result = qword_1EC442780;
  if (!qword_1EC442780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447530, &unk_1CA98F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442780);
  }

  return result;
}

unint64_t sub_1CA66DAE0()
{
  result = qword_1EC442230[0];
  if (!qword_1EC442230[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E30, &unk_1CA985F40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC442230);
  }

  return result;
}

unint64_t sub_1CA66DC14()
{
  result = qword_1EC442760;
  if (!qword_1EC442760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447D98, &qword_1CA9917B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442760);
  }

  return result;
}

uint64_t objectdestroy_119Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1CA66DCD0()
{
  result = qword_1EC442220;
  if (!qword_1EC442220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447DA8, &qword_1CA9917C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442220);
  }

  return result;
}

uint64_t sub_1CA66DD4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1CA66DDB4()
{
  result = qword_1EC442768;
  if (!qword_1EC442768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447DC0, &qword_1CA9917D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC442768);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{

  v0 = OUTLINED_FUNCTION_51_9();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1CA66DE70()
{
  result = qword_1EC447DD8;
  if (!qword_1EC447DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447DD0, &qword_1CA9917D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447DD8);
  }

  return result;
}

unint64_t sub_1CA66DEEC()
{
  result = qword_1EC447DF8;
  if (!qword_1EC447DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447DF8);
  }

  return result;
}

unint64_t sub_1CA66DF40()
{
  result = qword_1EC447E00;
  if (!qword_1EC447E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E00);
  }

  return result;
}

unint64_t sub_1CA66DF94()
{
  result = qword_1EC447E08;
  if (!qword_1EC447E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E08);
  }

  return result;
}

unint64_t sub_1CA66DFE8()
{
  result = qword_1EC447E10;
  if (!qword_1EC447E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E10);
  }

  return result;
}

unint64_t sub_1CA66E03C()
{
  result = qword_1EC441F18;
  if (!qword_1EC441F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F18);
  }

  return result;
}

unint64_t sub_1CA66E090()
{
  result = qword_1EC441FD0;
  if (!qword_1EC441FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FD0);
  }

  return result;
}

unint64_t sub_1CA66E0E4()
{
  result = qword_1EC441F38;
  if (!qword_1EC441F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F38);
  }

  return result;
}

unint64_t sub_1CA66E138()
{
  result = qword_1EC441F60;
  if (!qword_1EC441F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F60);
  }

  return result;
}

unint64_t sub_1CA66E18C()
{
  result = qword_1EC441F88;
  if (!qword_1EC441F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441F88);
  }

  return result;
}

unint64_t sub_1CA66E1E0()
{
  result = qword_1EC441EC0;
  if (!qword_1EC441EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441EC0);
  }

  return result;
}

unint64_t sub_1CA66E234()
{
  result = qword_1EC441E98;
  if (!qword_1EC441E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E98);
  }

  return result;
}

unint64_t sub_1CA66E288()
{
  result = qword_1EC441E70;
  if (!qword_1EC441E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441E70);
  }

  return result;
}

unint64_t sub_1CA66E2DC()
{
  result = qword_1EC441FA8;
  if (!qword_1EC441FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC441FA8);
  }

  return result;
}

unint64_t sub_1CA66E330()
{
  result = qword_1EC441EE0[0];
  if (!qword_1EC441EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC441EE0);
  }

  return result;
}

void *OUTLINED_FUNCTION_79_6(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t __src, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  a39 = a1;
  v40 = (a1 + 16);

  return memcpy(v40, &__src, 0x49uLL);
}

uint64_t OUTLINED_FUNCTION_82_4()
{
}

uint64_t OUTLINED_FUNCTION_85_7(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t OUTLINED_FUNCTION_87_5(uint64_t a1)
{
  *(v1 + 24) = a1;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_88_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1CA66E4F8()
{
  v57 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9DC0C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v56 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionNote";
  v7 = @"Description";
  v8 = @"DescriptionNote";
  v9 = sub_1CA94C438("If you only see some but not all of your data in the results, make sure that “Allow Shortcuts to read data” is set to on in the Health app.", 143);
  v58 = v10;
  v59 = v9;
  v11 = sub_1CA94C438("If you only see some but not all of your data in the results, make sure that “Allow Shortcuts to read data” is set to on in the Health app.", 143);
  v51 = v12;
  v52 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v51 - v55;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v54 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v53 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v51 - v53;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v59, v58, v52, v51, 0, 0, v15, v19);
  v59 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v59;
  *(v6 + 40) = v21;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v22 = sub_1CA94C1E8();
  v23 = v56;
  *(inited + 120) = sub_1CA6B3784(v22);
  *(inited + 144) = v23;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 0x68746C616548;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"LocallyProcessesData";
  v24 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v24;
  *(inited + 232) = @"Name";
  v25 = @"IconName";
  v26 = @"LocallyProcessesData";
  v27 = @"Name";
  v28 = sub_1CA94C438("Find Health Samples (Action Name)", 33);
  v30 = v29;
  v31 = sub_1CA94C438("Find Health Samples", 19);
  v33 = v32;
  v58 = &v51;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v51 - v55;
  sub_1CA948D98();
  v35 = [v54 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v51 - v53;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v28, v30, v31, v33, 0, 0, v34, v36);
  *(inited + 264) = v59;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1CA97EDF0;
  v39 = MEMORY[0x1E69E6158];
  *(v38 + 56) = MEMORY[0x1E69E6158];
  *(v38 + 32) = 0xD000000000000013;
  *(v38 + 40) = 0x80000001CA99A9A0;
  v60 = 2;
  v61 = 1;
  v40 = type metadata accessor for WFDeviceIdiomResource();
  v41 = objc_allocWithZone(v40);
  v42 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v60);
  *(v38 + 88) = v40;
  *(v38 + 64) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 280) = v38;
  *(inited + 304) = v44;
  *(inited + 312) = @"RequiresUnlock";
  *(inited + 320) = 1;
  v45 = MEMORY[0x1E69E6370];
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 352) = @"SuggestedAsInitialAction";
  *(inited + 384) = v45;
  *(inited + 360) = 0;
  v46 = @"RequiresUnlock";
  v47 = @"SuggestedAsInitialAction";
  v48 = sub_1CA94C368();
  *(inited + 424) = v39;
  *(inited + 392) = v48;
  *(inited + 400) = 0xD000000000000015;
  *(inited + 408) = 0x80000001CA9941B0;
  v49 = sub_1CA94C368();
  *(inited + 464) = v39;
  *(inited + 432) = v49;
  *(inited + 440) = 0x65756C6156;
  *(inited + 448) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA66EBFC()
{
  v213 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DC1D0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("song|music|itunes|playlist|apple|album", 38);
  v6 = v5;
  v7 = sub_1CA94C438("song|music|itunes|playlist|apple|album", 38);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v232 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v233 = v11;
  v12 = v208 - v232;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v229 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v231 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v230 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v208 - v230;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v228 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v226 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v26 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  v223 = v27;
  v224 = v26;
  v222 = sub_1CA94C438("Items in your music library or items from the Find iTunes Store Items action.", 77);
  v29 = v28;
  v225 = v208;
  MEMORY[0x1EEE9AC00](v222);
  v227 = inited;
  v30 = v208 - v232;
  sub_1CA948D98();
  v31 = v229;
  v32 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v230;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v224, v223, v222, v29, 0, 0, v30, v208 - v33);
  v35 = v228;
  *(v23 + 64) = v228;
  *(v23 + 72) = @"DescriptionSummary";
  v36 = @"DescriptionSummary";
  v37 = sub_1CA94C438("Creates a new playlist in the Music app, adding any items passed as input to the new playlist.", 94);
  v223 = v38;
  v224 = v37;
  v222 = sub_1CA94C438("Creates a new playlist in the Music app, adding any items passed as input to the new playlist.", 94);
  v40 = v39;
  v225 = v208;
  MEMORY[0x1EEE9AC00](v222);
  v41 = v208 - v232;
  sub_1CA948D98();
  v42 = [v31 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v44 = sub_1CA2F9F14(v224, v223, v222, v40, 0, 0, v41, v208 - v33);
  *(v23 + 104) = v35;
  *(v23 + 80) = v44;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v45 = sub_1CA94C1E8();
  v46 = v226;
  v47 = sub_1CA6B3784(v45);
  v48 = v227;
  v227[20] = v47;
  v48[23] = v46;
  v48[24] = @"Input";
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v220 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x696C79616C504657;
  *(v49 + 104) = 0xEF736D6574497473;
  *(v49 + 120) = MEMORY[0x1E69E6158];
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 0;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  v51 = v50;
  *(v49 + 184) = 0xE500000000000000;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v221;
  *(v49 + 192) = &unk_1F4A0B4B0;
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v226 = v54;
  v48[25] = v53;
  v48[28] = v54;
  v48[29] = @"InputPassthrough";
  *(v48 + 240) = 0;
  v48[33] = v51;
  v48[34] = @"Name";
  v55 = @"InputPassthrough";
  v56 = @"Name";
  v57 = sub_1CA94C438("Create Playlist (Action Name)", 29);
  v223 = v58;
  v59 = sub_1CA94C438("Create Playlist", 15);
  v61 = v60;
  v224 = v208;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v232;
  sub_1CA948D98();
  v63 = v229;
  v64 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v208 - v230;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v223, v59, v61, 0, 0, v208 - v62, v65);
  v68 = v227;
  v69 = v228;
  v227[35] = v67;
  v68[38] = v69;
  v68[39] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v220;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("New Playlist (Default Output Name)", 34);
  v223 = v73;
  v224 = v72;
  v74 = sub_1CA94C438("New Playlist", 12);
  v76 = v75;
  v225 = v208;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v77 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = v208 - v230;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v224, v223, v74, v76, 0, 0, v208 - v62, v78);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v221;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F4A0B4F0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v227;
  v227[40] = v81;
  v82[43] = v226;
  v82[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1CA981570;
  v225 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  v217 = xmmword_1CA981370;
  *(v83 + 16) = xmmword_1CA981370;
  v219 = 0x80000001CA99B500;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000014;
  *(v83 + 48) = 0x80000001CA99B500;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"Key";
  strcpy((v83 + 80), "WFPlaylistName");
  *(v83 + 95) = -18;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Label";
  v84 = @"Class";
  v85 = @"Key";
  v86 = @"Label";
  v87 = v84;
  v88 = v85;
  v89 = v86;
  v216 = v87;
  v214 = v88;
  v215 = v89;
  v90 = @"Parameters";
  v222 = sub_1CA94C438("Playlist Name (WFPlaylistName)", 30);
  v218 = v91;
  v92 = sub_1CA94C438("Playlist Name", 13);
  v212 = v93;
  v223 = v208;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v208 - v232;
  sub_1CA948D98();
  v95 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v230;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 120) = sub_1CA2F9F14(v222, v218, v92, v212, 0, 0, v94, v208 - v96);
  v98 = v228;
  *(v83 + 144) = v228;
  *(v83 + 152) = @"Placeholder";
  v212 = @"Placeholder";
  v222 = sub_1CA94C438("Playlist Name (WFPlaylistName)", 30);
  v218 = v99;
  v100 = sub_1CA94C438("Playlist Name", 13);
  v102 = v101;
  v223 = v208;
  MEMORY[0x1EEE9AC00](v100);
  v103 = v208 - v232;
  sub_1CA948D98();
  v104 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v83 + 160) = sub_1CA2F9F14(v222, v218, v100, v102, 0, 0, v103, v208 - v96);
  *(v83 + 184) = v98;
  *(v83 + 192) = @"TextAlignment";
  v106 = MEMORY[0x1E69E6158];
  *(v83 + 224) = MEMORY[0x1E69E6158];
  *(v83 + 200) = 0x7468676952;
  *(v83 + 208) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v223 = v107;
  v222 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v218 = @"TextAlignment";
  v108 = sub_1CA94C1E8();
  v109 = sub_1CA2F864C(v108);
  *(v226 + 32) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v217;
  v112 = v215;
  v111 = v216;
  *(v110 + 32) = v216;
  *(v110 + 40) = 0xD000000000000014;
  *(v110 + 48) = v219;
  v113 = v214;
  *(v110 + 64) = v106;
  *(v110 + 72) = v113;
  *(v110 + 80) = 0xD000000000000010;
  *(v110 + 88) = 0x80000001CA9DC2E0;
  *(v110 + 104) = v106;
  *(v110 + 112) = v112;
  *&v217 = v111;
  v216 = v113;
  v215 = v112;
  v114 = sub_1CA94C438("Author (WFPlaylistAuthor)", 25);
  v210 = v115;
  v211 = v114;
  v116 = sub_1CA94C438("Author", 6);
  v209 = v117;
  v214 = v208;
  MEMORY[0x1EEE9AC00](v116);
  v118 = v232;
  sub_1CA948D98();
  v119 = [v229 bundleURL];
  v208[1] = v208;
  MEMORY[0x1EEE9AC00](v119);
  v120 = v230;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 120) = sub_1CA2F9F14(v211, v210, v116, v209, 0, 0, v208 - v118, v208 - v120);
  v122 = v212;
  *(v110 + 144) = v228;
  *(v110 + 152) = v122;
  v214 = v122;
  v123 = sub_1CA94C438("Shortcuts (WFPlaylistAuthor)", 28);
  v210 = v124;
  v211 = v123;
  v125 = sub_1CA94C438("Shortcuts", 9);
  v209 = v126;
  v212 = v208;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v127 = v229;
  v128 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v110 + 160) = sub_1CA2F9F14(v211, v210, v125, v209, 0, 0, v208 - v118, v208 - v120);
  v130 = v218;
  *(v110 + 184) = v228;
  *(v110 + 192) = v130;
  v131 = MEMORY[0x1E69E6158];
  *(v110 + 224) = MEMORY[0x1E69E6158];
  *(v110 + 200) = 0x7468676952;
  *(v110 + 208) = 0xE500000000000000;
  v132 = sub_1CA94C1E8();
  v133 = sub_1CA2F864C(v132);
  *(v226 + 40) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1CA981380;
  *(v134 + 32) = v217;
  *(v134 + 40) = 0xD000000000000014;
  *(v134 + 48) = v219;
  v135 = v216;
  *(v134 + 64) = v131;
  *(v134 + 72) = v135;
  *(v134 + 80) = 0xD000000000000015;
  *(v134 + 88) = 0x80000001CA9DC350;
  v136 = v215;
  *(v134 + 104) = v131;
  *(v134 + 112) = v136;
  v137 = sub_1CA94C438("Description (WFPlaylistDescription)", 35);
  v211 = v138;
  v212 = v137;
  v139 = sub_1CA94C438("Description", 11);
  v141 = v140;
  v219 = v208;
  MEMORY[0x1EEE9AC00](v139);
  v142 = v208 - v232;
  sub_1CA948D98();
  v143 = v127;
  v144 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v144);
  v145 = v208 - v230;
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 120) = sub_1CA2F9F14(v212, v211, v139, v141, 0, 0, v142, v145);
  v147 = v228;
  *(v134 + 144) = v228;
  *(v134 + 152) = @"Multiline";
  *(v134 + 160) = 1;
  v148 = v214;
  *(v134 + 184) = MEMORY[0x1E69E6370];
  *(v134 + 192) = v148;
  v149 = @"Multiline";
  v150 = sub_1CA94C438("All of my favorites (WFPlaylistDescription)", 43);
  v211 = v151;
  v212 = v150;
  v152 = sub_1CA94C438("All of my favorites", 19);
  v210 = v153;
  v219 = v208;
  MEMORY[0x1EEE9AC00](v152);
  v154 = v208 - v232;
  sub_1CA948D98();
  v155 = [v127 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = v230;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 200) = sub_1CA2F9F14(v212, v211, v152, v210, 0, 0, v154, v208 - v156);
  v158 = v218;
  *(v134 + 224) = v147;
  *(v134 + 232) = v158;
  v159 = MEMORY[0x1E69E6158];
  *(v134 + 264) = MEMORY[0x1E69E6158];
  *(v134 + 240) = 0x7468676952;
  *(v134 + 248) = 0xE500000000000000;
  v160 = sub_1CA94C1E8();
  v161 = sub_1CA2F864C(v160);
  *(v226 + 48) = v161;
  v162 = swift_allocObject();
  *(v162 + 16) = v220;
  *(v162 + 32) = v217;
  *(v162 + 40) = 0xD000000000000019;
  *(v162 + 48) = 0x80000001CA99B030;
  v163 = v216;
  *(v162 + 64) = v159;
  *(v162 + 72) = v163;
  *(v162 + 80) = 0x696C79616C504657;
  *(v162 + 88) = 0xEF736D6574497473;
  v164 = v215;
  *(v162 + 104) = v159;
  *(v162 + 112) = v164;
  v165 = sub_1CA94C438("Music (WFPlaylistItems)", 23);
  v219 = v166;
  *&v220 = v165;
  v167 = sub_1CA94C438("Music", 5);
  v218 = v168;
  v224 = v208;
  MEMORY[0x1EEE9AC00](v167);
  v169 = v232;
  sub_1CA948D98();
  v170 = v143;
  v171 = [v143 bundleURL];
  *&v217 = v208;
  MEMORY[0x1EEE9AC00](v171);
  v172 = v156;
  sub_1CA948B68();

  v173 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 120) = sub_1CA2F9F14(v220, v219, v167, v218, 0, 0, v208 - v169, v208 - v156);
  v174 = v228;
  v175 = v214;
  *(v162 + 144) = v228;
  *(v162 + 152) = v175;
  v176 = sub_1CA94C438("Music (WFPlaylistItems)", 23);
  v219 = v177;
  *&v220 = v176;
  v178 = sub_1CA94C438("Music", 5);
  v180 = v179;
  v224 = v208;
  MEMORY[0x1EEE9AC00](v178);
  v181 = v208 - v169;
  sub_1CA948D98();
  v182 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v182);
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v184 = sub_1CA2F9F14(v220, v219, v178, v180, 0, 0, v181, v208 - v172);
  *(v162 + 184) = v174;
  *(v162 + 160) = v184;
  v185 = sub_1CA94C1E8();
  v186 = sub_1CA2F864C(v185);
  v187 = v226;
  *(v226 + 56) = v186;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v189 = v227;
  v227[45] = v187;
  v189[48] = v188;
  v189[49] = @"ParameterSummary";
  v190 = @"ParameterSummary";
  v191 = sub_1CA94C438("Create playlist ${WFPlaylistName} with ${WFPlaylistItems} (Parameter Summary)", 77);
  v193 = v192;
  v194 = sub_1CA94C438("Create playlist ${WFPlaylistName} with ${WFPlaylistItems}", 57);
  v196 = v195;
  MEMORY[0x1EEE9AC00](v194);
  v197 = v208 - v232;
  sub_1CA948D98();
  v198 = [v229 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  v199 = v208 - v230;
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v201 = sub_1CA2F9F14(v191, v193, v194, v196, 0, 0, v197, v199);
  v202 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v203 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v204 = v227;
  v227[50] = v202;
  v204[53] = v203;
  v204[54] = @"RequiredResources";
  v204[55] = &unk_1F4A0B520;
  v204[58] = v221;
  v204[59] = @"SuggestedAsInitialAction";
  v204[63] = MEMORY[0x1E69E6370];
  *(v204 + 480) = 0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v205 = @"RequiredResources";
  v206 = @"SuggestedAsInitialAction";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

double sub_1CA67052C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1CA9919D0;
  v9[5] = v8;
  sub_1CA671AC8(0, 0, v6, &unk_1CA9919E0, v9);

  return result;
}

uint64_t sub_1CA670644(uint64_t a1)
{
  v2 = *v1;
  sub_1CA94D918();
  sub_1CA2974D4(v4, v2);
  return sub_1CA94D968();
}

id sub_1CA6706DC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v6 placemark];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(WFLocationValue) initWithPlacemark_];
  v4 = [objc_allocWithZone(WFLocationParameterState) initWithValue_];

  return v4;
}

id sub_1CA670850(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 placemark];

  if (!v6)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
  v7 = sub_1CA94CF58();
  v8 = [v2 linkValueWithValue_];

  return v8;
}

uint64_t sub_1CA6709AC()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1CA949F78();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA670A68, 0, 0);
}

uint64_t sub_1CA670A68()
{
  v15 = v0;
  sub_1CA66DD4C(v0[7], (v0 + 2), &unk_1EC444650, &unk_1CA981C70);
  if (v0[5])
  {
    sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
    if (swift_dynamicCast())
    {
      v0[12] = v0[6];
      [objc_opt_self() wf_placeDescriptorObjectClass];
      swift_getObjCClassMetadata();
      v1 = swift_task_alloc();
      v0[13] = v1;
      *v1 = v0;
      v1[1] = sub_1CA670D20;
      v2 = OUTLINED_FUNCTION_151();

      return MEMORY[0x1EEDF81A0](v2);
    }
  }

  else
  {
    sub_1CA30F7DC((v0 + 2), &unk_1EC444650, &unk_1CA981C70);
  }

  sub_1CA949C58();
  v3 = sub_1CA949F68();
  v4 = sub_1CA94CC28();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1CA26B54C(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, &v14);
    _os_log_impl(&dword_1CA256000, v3, v4, "Action expected WFContentCollection as processed parameter type for placemark, but got %s instead", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1CCAA4BF0](v10, -1, -1);
    MEMORY[0x1CCAA4BF0](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  sub_1CA671358();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA670D20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = sub_1CA671284;
  }

  else
  {

    v3 = sub_1CA670E38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA670E38()
{
  v13 = v0;
  if (v0[14] && (objc_opt_self(), (v1 = swift_dynamicCastObjCClass()) != 0))
  {
    v2 = v1;
    v3 = v0[12];
    v4 = v0[8];
    v12[3] = sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    swift_unknownObjectRetain();
    v5 = [v4 valueType];
    v6 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    sub_1CA320AB4(v12, v5);
    swift_unknownObjectRelease();

    v7 = OUTLINED_FUNCTION_1_3();

    return v8(v7);
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EC447E40, 0x1E695FC20);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1CA670FD8;
    v11 = OUTLINED_FUNCTION_151();

    return MEMORY[0x1EEDF81A0](v11);
  }
}

uint64_t sub_1CA670FD8()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v5 + 136) = v0;

  if (v0)
  {
    v8 = sub_1CA6712E8;
  }

  else
  {
    *(v5 + 144) = v3;

    v8 = sub_1CA671104;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA671104()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 144))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      v1 = sub_1CA94CF58();
      swift_unknownObjectRelease();
      if (v1)
      {
        v2 = *(v0 + 96);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        v3 = OUTLINED_FUNCTION_1_3();

        return v4(v3);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v6 = *(v0 + 96);
  sub_1CA671358();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA671284()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA6712E8()
{
  OUTLINED_FUNCTION_0();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v1();
}

unint64_t sub_1CA671358()
{
  result = qword_1EC447E30;
  if (!qword_1EC447E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E30);
  }

  return result;
}

uint64_t sub_1CA671488(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, void *aBlock, void *a8)
{
  *(v8 + 96) = a5;
  *(v8 + 104) = a8;
  *(v8 + 80) = a2;
  *(v8 + 88) = a3;
  *(v8 + 112) = _Block_copy(aBlock);
  if (a1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = a5;
    v14 = a6;
    v15 = a8;
    swift_unknownObjectRetain();
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA2C0A20((v8 + 48), (v8 + 16));
  }

  else
  {
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = a5;
    v17 = a6;
    v18 = a8;
  }

  sub_1CA94C3A8();
  v20 = v19;

  *(v8 + 120) = v20;
  v21 = swift_task_alloc();
  *(v8 + 128) = v21;
  *v21 = v8;
  v21[1] = sub_1CA6715DC;

  return sub_1CA6709AC();
}

uint64_t sub_1CA6715DC(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = *v2;
  *v6 = *v2;

  v8 = v4[14];
  v9 = v4[13];
  v10 = v4[12];
  sub_1CA30F7DC((v5 + 2), &unk_1EC444650, &unk_1CA981C70);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v3)
  {
    v11 = sub_1CA948AC8();

    (v8)[2](v8, 0, v11);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v12 = v7[1];

  return v12();
}

id WFLinkActionPlaceDescriptorParameterDefinition.__allocating_init(parameterMetadata:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithParameterMetadata_];

  return v3;
}

id WFLinkActionPlaceDescriptorParameterDefinition.init(parameterMetadata:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFLinkActionPlaceDescriptorParameterDefinition();
  v3 = objc_msgSendSuper2(&v5, sel_initWithParameterMetadata_, a1);

  return v3;
}

id WFLinkActionPlaceDescriptorParameterDefinition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFLinkActionPlaceDescriptorParameterDefinition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA6718F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1CA2E9390;

  return v6();
}

uint64_t sub_1CA6719E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1CA2DF78C;

  return v7();
}

uint64_t sub_1CA671AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1CA66DD4C(a3, v22 - v10, &qword_1EC443880, &qword_1CA982FB0);
  v12 = sub_1CA94C858();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1CA30F7DC(v11, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1CA94C7C8();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1CA94C418() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1CA30F7DC(a3, &qword_1EC443880, &qword_1CA982FB0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA30F7DC(a3, &qword_1EC443880, &qword_1CA982FB0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

_BYTE *storeEnumTagSinglePayload for WFLinkActionPlaceDescriptorError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA671EA8()
{
  result = qword_1EC447E50;
  if (!qword_1EC447E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447E50);
  }

  return result;
}

uint64_t sub_1CA671EFC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1CA2DF78C;
  v10 = OUTLINED_FUNCTION_151();

  return v11(v10, v2, v3, v4, v5, v6, v8, v7);
}

uint64_t sub_1CA671FE4()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2E9390;
  v6 = OUTLINED_FUNCTION_151();

  return v7(v6, v2, v4, v3);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CA6720DC()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_1CA2E9390;

  return sub_1CA6719E0(v2, v3, v4, v5);
}

uint64_t sub_1CA67219C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA672234()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

id sub_1CA672300()
{
  v175 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9DC5A0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v179 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("network|local|external|cellular|wi-fi|wifi", 42);
  v6 = v5;
  v7 = sub_1CA94C438("network|local|external|cellular|wi-fi|wifi", 42);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v182 = v11;
  v185 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v162 - v185;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v181 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v183 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v184 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v162 - v184;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v180 = v20;
  v21 = v179;
  v179[10] = v19;
  v21[13] = v20;
  v21[14] = @"Description";
  v178 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Returns the local or external IP address of the device.", 55);
  *&v176 = v26;
  v27 = sub_1CA94C438("Returns the local or external IP address of the device.", 55);
  v29 = v28;
  v177 = &v162;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v162 - v185;
  sub_1CA948D98();
  v31 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v162 - v184;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v176, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v180;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v178;
  v21[15] = sub_1CA6B3784(v35);
  v21[18] = v36;
  v21[19] = @"IconColor";
  v21[20] = 1702194242;
  v21[21] = 0xE400000000000000;
  v37 = MEMORY[0x1E69E6158];
  v21[23] = MEMORY[0x1E69E6158];
  v21[24] = @"IconSymbol";
  v21[25] = 0x74656E7265687465;
  v21[26] = 0xE800000000000000;
  v21[28] = v37;
  v21[29] = @"Name";
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Name";
  v41 = sub_1CA94C438("Get Current IP Address (Action Name)", 36);
  v43 = v42;
  v44 = sub_1CA94C438("Get Current IP Address", 22);
  v46 = v45;
  v178 = &v162;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v162 - v185;
  sub_1CA948D98();
  v48 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v162 - v184;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v51 = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  v52 = v179;
  v179[30] = v51;
  v52[33] = v180;
  v52[34] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1CA981350;
  *(v53 + 32) = 0x75736F6C63736944;
  *(v53 + 40) = 0xEF6C6576654C6572;
  *(v53 + 48) = 0x63696C627550;
  *(v53 + 56) = 0xE600000000000000;
  *(v53 + 72) = MEMORY[0x1E69E6158];
  *(v53 + 80) = 0x656C7069746C754DLL;
  *(v53 + 88) = 0xE800000000000000;
  v54 = MEMORY[0x1E69E6370];
  *(v53 + 96) = 0;
  *(v53 + 120) = v54;
  *(v53 + 128) = 0x614E74757074754FLL;
  *(v53 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Current IP Address (Default Output Name)", 40);
  v177 = v57;
  v58 = sub_1CA94C438("Current IP Address", 18);
  v60 = v59;
  v178 = &v162;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v185;
  sub_1CA948D98();
  v62 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v162 - v184;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 144) = sub_1CA2F9F14(v56, v177, v58, v60, 0, 0, &v162 - v61, v63);
  *(v53 + 168) = v180;
  *(v53 + 176) = 0x7365707954;
  *(v53 + 184) = 0xE500000000000000;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 216) = v174;
  *(v53 + 192) = &unk_1F4A0B550;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v68 = v179;
  v179[35] = v66;
  v68[38] = v67;
  v68[39] = @"Parameters";
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v178 = swift_allocObject();
  v176 = xmmword_1CA981360;
  *(v178 + 1) = xmmword_1CA981360;
  v177 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_initStackObject();
  v172 = xmmword_1CA981370;
  *(v69 + 16) = xmmword_1CA981370;
  v171 = 0x80000001CA99C4A0;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v65;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x6C616E7265747845;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 104) = v65;
  *(v69 + 112) = @"Items";
  v165 = swift_allocObject();
  *&v165->data = v176;
  v70 = @"Class";
  v71 = @"DefaultValue";
  v72 = @"Items";
  v168 = v70;
  v167 = v71;
  v169 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438("External (WFIPAddressSourceOption)", 34);
  v163 = v75;
  v164 = v74;
  v76 = sub_1CA94C438("External", 8);
  v162 = v77;
  v166 = &v162;
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948D98();
  v78 = v181;
  v79 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v162 - v184;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v164, v163, v76, v162, 0, 0, &v162 - v61, v80);
  v83 = v165;
  v165[1].isa = v82;
  v84 = sub_1CA94C438("Local (WFIPAddressSourceOption)", 31);
  v163 = v85;
  v164 = v84;
  v162 = sub_1CA94C438("Local", 5);
  v87 = v86;
  v166 = &v162;
  MEMORY[0x1EEE9AC00](v162);
  v88 = &v162 - v185;
  sub_1CA948D98();
  v89 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v89);
  v90 = v184;
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83[1].info = sub_1CA2F9F14(v164, v163, v162, v87, 0, 0, v88, &v162 - v90);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v166 = v92;
  *(v69 + 120) = v83;
  *(v69 + 144) = v92;
  *(v69 + 152) = @"Key";
  *(v69 + 160) = 0xD000000000000017;
  *(v69 + 168) = 0x80000001CA9DC730;
  *(v69 + 184) = MEMORY[0x1E69E6158];
  *(v69 + 192) = @"Label";
  v93 = @"Key";
  v94 = @"Label";
  v164 = v93;
  v165 = v94;
  v95 = sub_1CA94C438("Address (WFIPAddressSourceOption)", 33);
  v162 = v96;
  v97 = sub_1CA94C438("Address", 7);
  v99 = v98;
  v163 = &v162;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v162 - v185;
  sub_1CA948D98();
  v101 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v95, v162, v97, v99, 0, 0, v100, &v162 - v90);
  *(v69 + 224) = v180;
  *(v69 + 200) = v103;
  _s3__C3KeyVMa_0(0);
  v163 = v104;
  v162 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v105 = sub_1CA94C1E8();
  v106 = sub_1CA2F864C(v105);
  v178[4] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = v172;
  *(v107 + 32) = v168;
  *(v107 + 40) = 0xD000000000000016;
  *(v107 + 48) = v171;
  v108 = MEMORY[0x1E69E6158];
  v109 = v167;
  *(v107 + 64) = MEMORY[0x1E69E6158];
  *(v107 + 72) = v109;
  *(v107 + 80) = 880169033;
  *(v107 + 88) = 0xE400000000000000;
  v110 = v169;
  *(v107 + 104) = v108;
  *(v107 + 112) = v110;
  v173 = swift_allocObject();
  *(v173 + 16) = v176;
  v111 = sub_1CA94C438("IPv4 (WFIPAddressTypeOption)", 28);
  v171 = v112;
  *&v172 = v111;
  v170 = sub_1CA94C438("IPv4", 4);
  v114 = v113;
  *&v176 = &v162;
  MEMORY[0x1EEE9AC00](v170);
  v115 = v185;
  sub_1CA948D98();
  v116 = v181;
  v117 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v162 - v184;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v172, v171, v170, v114, 0, 0, &v162 - v115, v118);
  v121 = v173;
  *(v173 + 32) = v120;
  v122 = sub_1CA94C438("IPv6 (WFIPAddressTypeOption)", 28);
  v171 = v123;
  *&v172 = v122;
  v124 = sub_1CA94C438("IPv6", 4);
  v169 = v125;
  v170 = v124;
  *&v176 = &v162;
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948D98();
  v126 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = v184;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v121 + 40) = sub_1CA2F9F14(v172, v171, v170, v169, 0, 0, &v162 - v115, &v162 - v127);
  *(v107 + 120) = v121;
  v129 = v164;
  *(v107 + 144) = v166;
  *(v107 + 152) = v129;
  *(v107 + 160) = 0xD000000000000015;
  *(v107 + 168) = 0x80000001CA9DC7D0;
  v130 = v165;
  *(v107 + 184) = MEMORY[0x1E69E6158];
  *(v107 + 192) = v130;
  v131 = sub_1CA94C438("Type (WFIPAddressTypeOption)", 28);
  v173 = v132;
  v133 = sub_1CA94C438("Type", 4);
  v135 = v134;
  *&v176 = &v162;
  MEMORY[0x1EEE9AC00](v133);
  v136 = &v162 - v185;
  sub_1CA948D98();
  v137 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v131, v173, v133, v135, 0, 0, v136, &v162 - v127);
  *(v107 + 224) = v180;
  *(v107 + 200) = v139;
  v140 = sub_1CA94C1E8();
  v141 = sub_1CA2F864C(v140);
  v142 = v178;
  v178[5] = v141;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v144 = v179;
  v179[40] = v142;
  v144[43] = v143;
  v144[44] = @"ParameterSummary";
  v145 = @"ParameterSummary";
  v146 = sub_1CA94C438("Get current IP address (Parameter Summary)", 42);
  v148 = v147;
  v149 = sub_1CA94C438("Get current IP address", 22);
  v151 = v150;
  v180 = &v162;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v162 - v185;
  sub_1CA948D98();
  v153 = [v181 bundleURL];
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v162 - v184;
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v156 = sub_1CA2F9F14(v146, v148, v149, v151, 0, 0, v152, v154);
  v157 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v158 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v144[45] = v157;
  v144[48] = v158;
  v144[49] = @"RequiredResources";
  v144[50] = &unk_1F4A0B580;
  v144[53] = v174;
  v144[54] = @"ResidentCompatible";
  v144[58] = MEMORY[0x1E69E6370];
  *(v144 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v159 = @"RequiredResources";
  v160 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6736A4(uint64_t a1)
{
  v261 = type metadata accessor for DrawerAction(0);
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v260 = &v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v259 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v248 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v248 - v18;
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  v22 = v22 && v3 == v21;
  if (v22)
  {

    goto LABEL_48;
  }

  OUTLINED_FUNCTION_5_50(v20);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_48:
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = OUTLINED_FUNCTION_33_16(v54);
    strcpy((v53 + 32), "controls-empty");
    *(v53 + 47) = -18;
    v55 = OUTLINED_FUNCTION_15_26(v53);
    OUTLINED_FUNCTION_26_22(v55, &unk_1F49F9928, v56);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Connectivity", 12);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v57 = OUTLINED_FUNCTION_2_62();
    v60 = OUTLINED_FUNCTION_24_21(v57, v58, v59);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v53 + 72) = 0xD000000000000015;
    *(v53 + 80) = v9;
    OUTLINED_FUNCTION_21_25(&unk_1F49F99A8);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Display", 7);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v61 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 112) = 0xD000000000000010;
    *(v53 + 120) = v2;
    *(v53 + 128) = v60;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49F9A38;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Navigation", 10);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v62 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 152) = 0xD000000000000013;
    *(v53 + 160) = v2;
    OUTLINED_FUNCTION_29_17(&unk_1F49F9AD8);
    sub_1CA94C438("Capture", 7);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v63 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v53 + 192) = 0xD000000000000010;
    *(v53 + 200) = 0x80000001CA9DCD50;
    *(v53 + 208) = v60;
    *(v53 + 216) = v62;
    v64 = &unk_1F49F9B28;
    goto LABEL_51;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v24)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_50(v23);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_54:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = OUTLINED_FUNCTION_33_16(v66);
    strcpy((v53 + 32), "device-empty");
    *(v53 + 45) = 0;
    *(v53 + 46) = -5120;
    v67 = OUTLINED_FUNCTION_15_26(v53);
    OUTLINED_FUNCTION_26_22(v67, &unk_1F49F9B88, v68);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Clipboard", 9);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v69 = OUTLINED_FUNCTION_2_62();
    v72 = OUTLINED_FUNCTION_24_21(v69, v70, v71);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v53 + 72) = 0xD000000000000010;
    *(v53 + 80) = v9;
    OUTLINED_FUNCTION_21_25(&unk_1F49F9C08);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Notification", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v73 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 112) = 0xD000000000000013;
    *(v53 + 120) = v9;
    *(v53 + 128) = v72;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49F9C48;
    sub_1CA94C438("Network", 7);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v74 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v53 + 152), "device-network");
    *(v53 + 167) = -18;
    OUTLINED_FUNCTION_29_17(&unk_1F49F9C98);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Wallpaper", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v75 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v53 + 192) = 0xD000000000000010;
    *(v53 + 200) = v9;
    *(v53 + 208) = v72;
    *(v53 + 216) = v74;
    v64 = &unk_1F49F9D08;
    goto LABEL_51;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v27)
  {

    goto LABEL_58;
  }

  OUTLINED_FUNCTION_5_50(v26);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_58:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_27_23();
    *(v77 + 32) = 0x746E656D75636F64;
    *(v77 + 40) = v76 + 12;
    *(OUTLINED_FUNCTION_15_26(v77) + 64) = &unk_1F49F9D58;
    sub_1CA94C438("PDFs", 4);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v78 = OUTLINED_FUNCTION_2_62();
    v81 = OUTLINED_FUNCTION_24_21(v78, v79, v80);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    strcpy((v53 + 72), "documents-pdfs");
    *(v53 + 87) = -18;
    OUTLINED_FUNCTION_21_25(&unk_1F49F9D98);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("File Storage", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v82 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 112) = 0xD000000000000015;
    *(v53 + 120) = v2;
    *(v53 + 128) = v81;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49F9E08;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Archives", 8);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v83 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 152) = 0xD000000000000012;
    *(v53 + 160) = v2;
    *(v53 + 168) = v81;
    *(v53 + 176) = v19;
    *(v53 + 184) = &unk_1F49F9ED8;
    sub_1CA94C438("Files", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v84 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 192) = 0x746E656D75636F64;
    *(v53 + 200) = 0xEF73656C69662D73;
    *(v53 + 208) = v81;
    *(v53 + 216) = v19;
    *(v53 + 224) = &unk_1F49F9F18;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Rich Text", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v85 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 232) = 0xD000000000000012;
    *(v53 + 240) = v2;
    *(v53 + 248) = v81;
    *(v53 + 256) = v19;
    *(v53 + 264) = &unk_1F49F9F68;
    sub_1CA94C438("USDZ", 4);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v86 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    strcpy((v53 + 272), "documents-usdz");
    *(v53 + 287) = -18;
    *(v53 + 288) = v81;
    *(v53 + 296) = v85;
    v87 = &unk_1F49F9FC8;
LABEL_61:
    *(v53 + 304) = v87;
    return v53;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v30)
  {

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_5_50(v29);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_63:
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = OUTLINED_FUNCTION_33_16(v88);
    strcpy((v53 + 32), "location-empty");
    *(v53 + 47) = -18;
    v89 = OUTLINED_FUNCTION_15_26(v53);
    OUTLINED_FUNCTION_26_22(v89, &unk_1F49F9FF8, v90);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Location", 8);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v91 = OUTLINED_FUNCTION_2_62();
    v94 = OUTLINED_FUNCTION_24_21(v91, v92, v93);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v53 + 72) = 0xD000000000000011;
    *(v53 + 80) = v2;
    OUTLINED_FUNCTION_21_25(&unk_1F49FA078);
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Addresses", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v95 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 112) = 0xD000000000000012;
    *(v53 + 120) = v2;
    *(v53 + 128) = v94;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49FA0C8;
    sub_1CA94C438("Travel", 6);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v96 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 152) = 0x6E6F697461636F6CLL;
    *(v53 + 160) = 0xEF6C65766172742DLL;
    OUTLINED_FUNCTION_29_17(&unk_1F49FA108);
    sub_1CA94C438("Parked Car", 10);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v97 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v53 + 192) = 0xD000000000000012;
    *(v53 + 200) = 0x80000001CA9DCBC0;
    *(v53 + 208) = v94;
    *(v53 + 216) = v96;
    v64 = &unk_1F49FA158;
    goto LABEL_51;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v33)
  {

    goto LABEL_67;
  }

  OUTLINED_FUNCTION_5_50(v32);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_67:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1CA981420;
    sub_1CA94C438("Images", 6);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    OUTLINED_FUNCTION_77_0();
    v98 = OUTLINED_FUNCTION_2_62();
    v101 = OUTLINED_FUNCTION_24_21(v98, v99, v100);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_9_38();
    *(v53 + 32) = v102 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
    *(v53 + 40) = 0xEC00000073656761;
    *(v53 + 48) = v17;
    *(v53 + 56) = v19;
    *(v53 + 64) = &unk_1F49FA1A8;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Image Editing", 13);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v103 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 72) = 0xD000000000000012;
    *(v53 + 80) = v9;
    *(v53 + 88) = v101;
    *(v53 + 96) = v19;
    *(v53 + 104) = &unk_1F49FA238;
    sub_1CA94C438("GIFs", 4);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v104 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v53 + 112) = v105 & 0xFFFFFFFFFFFFLL | 0x6967000000000000;
    *(v53 + 120) = 0xEA00000000007366;
    *(v53 + 128) = v101;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49FA2F8;
    sub_1CA94C438("Photos", 6);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v106 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v53 + 152) = v107 & 0xFFFFFFFFFFFFLL | 0x6870000000000000;
    *(v53 + 160) = 0xEC000000736F746FLL;
    *(v53 + 168) = v101;
    *(v53 + 176) = v19;
    *(v53 + 184) = &unk_1F49FA358;
    sub_1CA94C438("Video", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v108 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v53 + 192) = v109 & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
    *(v53 + 200) = 0xEB000000006F6564;
    *(v53 + 208) = v101;
    *(v53 + 216) = v19;
    *(v53 + 224) = &unk_1F49FA428;
    sub_1CA94C438("Playback", 8);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v110 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v53 + 232), "media-playback");
    *(v53 + 247) = -18;
    *(v53 + 248) = v101;
    *(v53 + 256) = v19;
    *(v53 + 264) = &unk_1F49FA468;
    sub_1CA94C438("Music", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v111 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_9_38();
    *(v53 + 272) = v112 & 0xFFFFFFFFFFFFLL | 0x756D000000000000;
    *(v53 + 280) = 0xEB00000000636973;
    *(v53 + 288) = v101;
    *(v53 + 296) = v19;
    *(v53 + 304) = &unk_1F49FA508;
    OUTLINED_FUNCTION_14_32();
    sub_1CA94C438("Playing Next", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v113 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 312) = 0xD000000000000011;
    *(v53 + 320) = v2;
    *(v53 + 328) = v101;
    *(v53 + 336) = v19;
    *(v53 + 344) = &unk_1F49FA598;
    sub_1CA94C438("Playlists", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v114 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 352) = 0x6C702D616964656DLL;
    *(v53 + 360) = 0xEF737473696C7961;
    *(v53 + 368) = v101;
    *(v53 + 376) = v19;
    *(v53 + 384) = &unk_1F49FA5D8;
    sub_1CA94C438("Podcasts", 8);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v115 = OUTLINED_FUNCTION_1_52();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_9_38();
    *(v53 + 392) = v116 & 0xFFFFFFFFFFFFLL | 0x6F70000000000000;
    *(v53 + 400) = 0xEE00737473616364;
    *(v53 + 408) = v101;
    *(v53 + 416) = v114;
    *(v53 + 424) = &unk_1F49FA628;
    return v53;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v36)
  {

    goto LABEL_71;
  }

  OUTLINED_FUNCTION_5_50(v35);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = swift_allocObject();
    OUTLINED_FUNCTION_27_23();
    *(v117 + 32) = 0x6E69747069726373;
    *(v117 + 40) = v118;
    v119 = OUTLINED_FUNCTION_15_26(v117);
    OUTLINED_FUNCTION_26_22(v119, &unk_1F49FA6B8, v120);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Control Flow", 12);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v121 = OUTLINED_FUNCTION_77_0();
    v122 = OUTLINED_FUNCTION_7_42(v121, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    v260 = 0xD000000000000015;
    *(v53 + 72) = 0xD000000000000015;
    *(v53 + 80) = v9;
    OUTLINED_FUNCTION_21_25(&unk_1F49FA728);
    sub_1CA94C438("Variables", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v123 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    v261 = 0xD000000000000013;
    *(v53 + 112) = 0xD000000000000013;
    *(v53 + 120) = 0x80000001CA9DC9C0;
    *(v53 + 128) = v122;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49FA798;
    sub_1CA94C438("Lists", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v124 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 152) = 0x6E69747069726373;
    *(v53 + 160) = 0xEF737473696C2D67;
    OUTLINED_FUNCTION_29_17(&unk_1F49FA7E8);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Dictionaries", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v125 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 192) = 0xD000000000000016;
    *(v53 + 200) = v9;
    *(v53 + 208) = v122;
    *(v53 + 216) = v19;
    *(v53 + 224) = &unk_1F49FA838;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Numbers", 7);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v126 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 232) = 0xD000000000000011;
    *(v53 + 240) = v9;
    *(v53 + 248) = v122;
    *(v53 + 256) = v19;
    *(v53 + 264) = &unk_1F49FA898;
    sub_1CA94C438("Math", 4);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v127 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v53 + 272), "scripting-math");
    *(v53 + 287) = -18;
    *(v53 + 288) = v122;
    *(v53 + 296) = v19;
    *(v53 + 304) = &unk_1F49FA908;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Measurements", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v128 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 312) = 0xD000000000000016;
    *(v53 + 320) = v9;
    *(v53 + 328) = v122;
    *(v53 + 336) = v19;
    *(v53 + 344) = &unk_1F49FA958;
    sub_1CA94C438("Dates", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v129 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 352) = 0x6E69747069726373;
    *(v53 + 360) = 0xEF73657461642D67;
    *(v53 + 368) = v122;
    *(v53 + 376) = v19;
    *(v53 + 384) = &unk_1F49FA998;
    sub_1CA94C438("Text", 4);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v130 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v53 + 392), "scripting-text");
    *(v53 + 407) = -18;
    *(v53 + 408) = v122;
    *(v53 + 416) = v19;
    *(v53 + 424) = &unk_1F49FAA18;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Text Editing", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v131 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    v132 = v260;
    *(v53 + 432) = v260;
    *(v53 + 440) = v9;
    *(v53 + 448) = v122;
    *(v53 + 456) = v19;
    *(v53 + 464) = &unk_1F49FAA78;
    sub_1CA94C438("Audio", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v133 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 472) = 0x6E69747069726373;
    *(v53 + 480) = 0xEF6F696475612D67;
    *(v53 + 488) = v122;
    *(v53 + 496) = v19;
    *(v53 + 504) = &unk_1F49FAB18;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Translation", 11);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v134 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 512) = v132;
    *(v53 + 520) = v9;
    *(v53 + 528) = v122;
    *(v53 + 536) = v19;
    *(v53 + 544) = &unk_1F49FAB78;
    sub_1CA94C438("Items", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v135 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 552) = 0x6E69747069726373;
    *(v53 + 560) = 0xEF736D6574692D67;
    *(v53 + 568) = v122;
    *(v53 + 576) = v19;
    *(v53 + 584) = &unk_1F49FABB8;
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Shortcuts", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v136 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 592) = v261;
    *(v53 + 600) = v9;
    *(v53 + 608) = v122;
    *(v53 + 616) = v19;
    *(v53 + 624) = &unk_1F49FAC28;
    sub_1CA94C438("Other", 5);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_16_32();
    v137 = OUTLINED_FUNCTION_3_57();

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    *(v53 + 632) = 0x6E69747069726373;
    *(v53 + 640) = 0xEF726568746F2D67;
    *(v53 + 648) = v122;
    *(v53 + 656) = v136;
    *(v53 + 664) = &unk_1F49FAC68;
    return v53;
  }

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_12_33();
  OUTLINED_FUNCTION_18_29();
  if (v22 && v3 == v39)
  {

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_5_50(v38);
  OUTLINED_FUNCTION_212();

  if (v4)
  {
LABEL_75:
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = OUTLINED_FUNCTION_33_16(v138);
    *(v53 + 16) = xmmword_1CA981370;
    strcpy((v53 + 32), "sharing-empty");
    *(v53 + 46) = -4864;
    *(OUTLINED_FUNCTION_15_26(v53) + 64) = &unk_1F49FAD28;
    sub_1CA94C438("AirDrop", 7);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v139 = OUTLINED_FUNCTION_77_0();
    v140 = OUTLINED_FUNCTION_7_42(v139, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    *(v53 + 72) = 0x2D676E6972616873;
    *(v53 + 80) = 0xEF706F7264726961;
    OUTLINED_FUNCTION_21_25(&unk_1F49FAD88);
    OUTLINED_FUNCTION_10_35();
    sub_1CA94C438("Clipboard", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v141 = OUTLINED_FUNCTION_16_32();
    v142 = OUTLINED_FUNCTION_4_55(v141, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    *(v53 + 112) = 0xD000000000000011;
    *(v53 + 120) = v9;
    *(v53 + 128) = v140;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49FADB8;
    sub_1CA94C438("Photos", 6);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v143 = OUTLINED_FUNCTION_16_32();
    v144 = OUTLINED_FUNCTION_4_55(v143, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    strcpy((v53 + 152), "sharing-photos");
    *(v53 + 167) = -18;
    *(v53 + 168) = v140;
    *(v53 + 176) = v19;
    *(v53 + 184) = &unk_1F49FADF8;
    sub_1CA94C438("QR Code", 7);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v145 = OUTLINED_FUNCTION_16_32();
    v146 = OUTLINED_FUNCTION_4_55(v145, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    strcpy((v53 + 192), "sharing-qrcode");
    *(v53 + 207) = -18;
    *(v53 + 208) = v140;
    *(v53 + 216) = v144;
    v64 = &unk_1F49FAE28;
LABEL_51:
    *(v53 + 224) = v64;
    return v53;
  }

  v256 = v17;
  v257 = v14;
  v258 = v9;
  v255 = v1;
  v251 = v6;
  v41 = sub_1CA94C3A8();
  v43 = v42;
  if (v41 == sub_1CA94C3A8() && v43 == v44)
  {

    goto LABEL_79;
  }

  v46 = sub_1CA94D7F8();

  if (v46)
  {
LABEL_79:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1CA981400;
    OUTLINED_FUNCTION_19_26();
    *(v148 + 32) = v147 | 0x74706D6500000000;
    *(v148 + 40) = 0xE900000000000079;
    *(OUTLINED_FUNCTION_15_26(v148) + 64) = &unk_1F49FAE68;
    sub_1CA94C438("Safari", 6);
    OUTLINED_FUNCTION_70_0();
    if (qword_1EDB9F5F0 != -1)
    {
LABEL_137:
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    OUTLINED_FUNCTION_20_32();
    OUTLINED_FUNCTION_11_37();
    v149 = OUTLINED_FUNCTION_77_0();
    v150 = OUTLINED_FUNCTION_7_42(v149, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_22_23();
    OUTLINED_FUNCTION_19_26();
    *(v53 + 72) = v151 | 0x6166617300000000;
    *(v53 + 80) = 0xEA00000000006972;
    *(v53 + 88) = v17;
    *(v53 + 96) = v19;
    *(v53 + 104) = &unk_1F49FAEB8;
    sub_1CA94C438("RSS", 3);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v152 = OUTLINED_FUNCTION_16_32();
    v153 = OUTLINED_FUNCTION_4_55(v152, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v53 + 112) = v154 | 0x73737200000000;
    *(v53 + 120) = 0xE700000000000000;
    *(v53 + 128) = v150;
    *(v53 + 136) = v19;
    *(v53 + 144) = &unk_1F49FAEF8;
    sub_1CA94C438("Articles", 8);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v155 = OUTLINED_FUNCTION_16_32();
    v156 = OUTLINED_FUNCTION_4_55(v155, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v53 + 152) = v157 | 0x6974726100000000;
    *(v53 + 160) = 0xEC00000073656C63;
    *(v53 + 168) = v150;
    *(v53 + 176) = v19;
    *(v53 + 184) = &unk_1F49FAF38;
    sub_1CA94C438("URLs", 4);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v158 = OUTLINED_FUNCTION_16_32();
    v159 = OUTLINED_FUNCTION_4_55(v158, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v53 + 192) = v160 | 0x736C727500000000;
    *(v53 + 200) = 0xE800000000000000;
    *(v53 + 208) = v150;
    *(v53 + 216) = v19;
    *(v53 + 224) = &unk_1F49FAF88;
    sub_1CA94C438("Web Requests", 12);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v161 = OUTLINED_FUNCTION_16_32();
    v162 = OUTLINED_FUNCTION_4_55(v161, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_17_20();
    OUTLINED_FUNCTION_19_26();
    *(v53 + 232) = v163 | 0x7262657700000000;
    *(v53 + 240) = 0xEF73747365757165;
    *(v53 + 248) = v150;
    *(v53 + 256) = v19;
    *(v53 + 264) = &unk_1F49FAFF8;
    sub_1CA94C438("Web Pages", 9);
    OUTLINED_FUNCTION_59();
    sub_1CA94C368();
    OUTLINED_FUNCTION_6_48();
    v164 = OUTLINED_FUNCTION_16_32();
    v165 = OUTLINED_FUNCTION_4_55(v164, sel_localizedStringForKey_value_table_);

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_59();

    OUTLINED_FUNCTION_19_26();
    *(v53 + 272) = v166 | 0x7062657700000000;
    *(v53 + 280) = 0xEC00000073656761;
    *(v53 + 288) = v150;
    *(v53 + 296) = v162;
    v87 = &unk_1F49FB038;
    goto LABEL_61;
  }

  v47 = sub_1CA94C3A8();
  v49 = v48;
  if (v47 == sub_1CA94C3A8() && v49 == v50)
  {
  }

  else
  {
    v52 = sub_1CA94D7F8();

    if ((v52 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v167 = MEMORY[0x1E69E7CC0];
  v263 = MEMORY[0x1E69E7CC0];
  v168 = [objc_allocWithZone(type metadata accessor for WFVisualIntelligenceCameraAvailabilityResource()) init];
  v169 = [v168 isAvailable];

  if (v169)
  {
    sub_1CA26DADC();
    v167 = v170;
    v172 = *(v170 + 16);
    v171 = *(v170 + 24);
    if (v172 >= v171 >> 1)
    {
      OUTLINED_FUNCTION_64(v171);
      sub_1CA26DADC();
      v167 = v245;
    }

    *(v167 + 16) = v172 + 1;
    v173 = v167 + 16 * v172;
    *(v173 + 32) = 0xD00000000000002DLL;
    *(v173 + 40) = 0x80000001CA9B5950;
    v263 = v167;
  }

  v174 = [objc_allocWithZone(WFLLMActionAvailabilityResource) init];
  v175 = [v174 isAvailable];

  if (v175)
  {
    v176 = *(v167 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v263 = v167;
    if (!isUniquelyReferenced_nonNull_native || v176 >= *(v167 + 24) >> 1)
    {
      sub_1CA26DADC();
      v167 = v178;
      v263 = v178;
    }

    sub_1CA6AFF14();
    v263 = v167;
  }

  else
  {
    sub_1CA949C58();
    v179 = sub_1CA949F68();
    v180 = sub_1CA94CC18();
    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&dword_1CA256000, v179, v180, "Not adding Use Model to drawer. Action is not available", v181, 2u);
      MEMORY[0x1CCAA4BF0](v181, -1, -1);
    }

    (*(v259 + 8))(v19, v258);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444098, &qword_1CA9826C0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1CA981310;
  *(v53 + 32) = 0xD000000000000018;
  *(v53 + 40) = 0x80000001CA9DC860;
  *(OUTLINED_FUNCTION_15_26(v53) + 64) = v167;
  v182 = [objc_allocWithZone(type metadata accessor for WFImagePlaygroundAvailabilityResource()) init];
  v183 = [v182 isAvailable];

  if (v183)
  {
    sub_1CA94C438("Image Playground", 16);
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v184 = OUTLINED_FUNCTION_34_17();
    v185 = OUTLINED_FUNCTION_34_17();

    v187 = OUTLINED_FUNCTION_32_17(v186, sel_localizedStringForKey_value_table_);

    v188 = sub_1CA94C3A8();
    v190 = v189;

    v17 = *(v53 + 16);
    v191 = *(v53 + 24);
    if (v17 >= v191 >> 1)
    {
      OUTLINED_FUNCTION_64(v191);
      sub_1CA2E63A4();
      v53 = v246;
    }

    *(v53 + 16) = v17 + 1;
    OUTLINED_FUNCTION_28_12();
    v193[4] = v192 + 18;
    v193[5] = 0x80000001CA9DC900;
    v193[6] = v188;
    v193[7] = v190;
    v193[8] = &unk_1F49FB088;
  }

  else
  {
    sub_1CA949C58();
    v194 = sub_1CA949F68();
    v195 = sub_1CA94CC18();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 0;
      _os_log_impl(&dword_1CA256000, v194, v195, "Not adding Image Playground section to drawer because isGenerativePlaygroundSupported is false", v196, 2u);
      MEMORY[0x1CCAA4BF0](v196, -1, -1);
    }

    (*(v259 + 8))(v256, v258);
  }

  v197 = [objc_allocWithZone(WFWritingToolsAvailabilityResource) init];
  v198 = [v197 isAvailable];

  if (v198)
  {
    sub_1CA94C438("Writing Tools", 13);
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v199 = OUTLINED_FUNCTION_34_17();
    v19 = OUTLINED_FUNCTION_34_17();

    v201 = OUTLINED_FUNCTION_32_17(v200, sel_localizedStringForKey_value_table_);

    v202 = sub_1CA94C3A8();
    v249 = v203;
    v250 = v202;

    ActionDrawerDataSource.actions(for:query:)();
    v204 = 0;
    v253 = *(v205 + 16);
    v254 = v205;
    v252 = v205 + 32;
    v206 = MEMORY[0x1E69E7CC0];
    while (v204 != v253)
    {
      if (v204 >= *(v254 + 16))
      {
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v207 = (v252 + 56 * v204);
      v208 = v207[6];
      v209 = *(v208 + 16);
      if (v209)
      {
        v258 = v204;
        v259 = v206;
        v210 = v207[1];
        v211 = v207[5];
        v212 = v207[3];
        v262 = MEMORY[0x1E69E7CC0];
        v257 = v210;
        sub_1CA94C218();
        v256 = v212;
        sub_1CA94C218();
        v255 = v211;
        sub_1CA94C218();
        swift_bridgeObjectRetain_n();
        sub_1CA271524(0, v209, 0, v213, v214, v215, v216);
        v217 = v262;
        v218 = v208 + ((*(v251 + 80) + 32) & ~*(v251 + 80));
        v219 = *(v251 + 72);
        do
        {
          v220 = v260;
          sub_1CA675D64(v218, v260);
          v221 = (v220 + *(v261 + 28));
          v222 = *v221;
          v223 = v221[1];
          sub_1CA94C218();
          sub_1CA675DC8(v220);
          v262 = v217;
          v225 = *(v217 + 16);
          v224 = *(v217 + 24);
          if (v225 >= v224 >> 1)
          {
            v227 = OUTLINED_FUNCTION_64(v224);
            sub_1CA271524(v227, v225 + 1, 1, v228, v229, v230, v231);
            v217 = v262;
          }

          *(v217 + 16) = v225 + 1;
          v226 = v217 + 16 * v225;
          *(v226 + 32) = v222;
          *(v226 + 40) = v223;
          v218 += v219;
          --v209;
        }

        while (v209);
        swift_bridgeObjectRelease_n();

        v204 = v258;
        v206 = v259;
      }

      else
      {
        v217 = MEMORY[0x1E69E7CC0];
      }

      v19 = *(v217 + 16);
      v232 = *(v206 + 16);
      v17 = &v19[v232];
      if (__OFADD__(v232, v19))
      {
        goto LABEL_134;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v17 > *(v206 + 24) >> 1)
      {
        sub_1CA26DADC();
        v206 = v233;
      }

      ++v204;
      if (*(v217 + 16))
      {
        if ((*(v206 + 24) >> 1) - *(v206 + 16) < v19)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v234 = *(v206 + 16);
          v235 = __OFADD__(v234, v19);
          v236 = &v19[v234];
          if (v235)
          {
            goto LABEL_136;
          }

          *(v206 + 16) = v236;
        }
      }

      else
      {

        if (v19)
        {
          __break(1u);
          goto LABEL_127;
        }
      }
    }

    v241 = *(v53 + 16);
    v240 = *(v53 + 24);
    if (v241 >= v240 >> 1)
    {
      OUTLINED_FUNCTION_64(v240);
      sub_1CA2E63A4();
      v53 = v247;
    }

    *(v53 + 16) = v241 + 1;
    OUTLINED_FUNCTION_28_12();
    v243[4] = v242 + 14;
    v243[5] = 0x80000001CA9DC8D0;
    v244 = v249;
    v243[6] = v250;
    v243[7] = v244;
    v243[8] = v206;
  }

  else
  {
LABEL_127:
    sub_1CA949C58();
    v237 = sub_1CA949F68();
    v238 = sub_1CA94CC18();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      *v239 = 0;
      _os_log_impl(&dword_1CA256000, v237, v238, "Not adding Writing Tools section to drawer. WTWritingToolsController reports feature is not available", v239, 2u);
      MEMORY[0x1CCAA4BF0](v239, -1, -1);
    }

    (*(v259 + 8))(v257, v258);
  }

  return v53;
}

uint64_t sub_1CA675D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DrawerAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA675DC8(uint64_t a1)
{
  v2 = type metadata accessor for DrawerAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA675E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA675E4C()
{
  OUTLINED_FUNCTION_6();
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v0[6] = *(*(v0[2] + 56) + 8 * v1);
    swift_unknownObjectRetain();
    v3 = objc_opt_self();
    if (OUTLINED_FUNCTION_37(v3))
    {
      OUTLINED_FUNCTION_7_39();
      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_1CA675FC4;
      v5 = OUTLINED_FUNCTION_11_2(v0[3]);

      return v6(v5);
    }

    else
    {
      v9 = sub_1CA2A741C();
      v10 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
      OUTLINED_FUNCTION_8_31(v10, v11);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v12();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(0);
  }
}

uint64_t sub_1CA675FC4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_1CA2A630C;
  }

  else
  {
    v5 = sub_1CA6760CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA6760CC()
{
  OUTLINED_FUNCTION_6();
  if (!*(v0 + 64))
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_37(v1);
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_4();

    return v4(v3);
  }

  v6 = sub_1CA2A741C();
  OUTLINED_FUNCTION_127(&unk_1F4A11410, v6);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_34(ObjectType);
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA6761F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v32[1] = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = @"Label";
  v10 = @"Key";
  sub_1CA94C218();
  v11 = @"Label";
  v12 = sub_1CA94C438("Number (Parameter Label)", 24);
  v14 = v13;
  v15 = sub_1CA94C438("Number", 6);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  *(inited + 104) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v26;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v27 = sub_1CA94C1E8();
  v28 = sub_1CA2F864C(v27);
  v29 = [objc_allocWithZone(WFDurationQuantityFieldParameter) initWithDefinition_];

  [v29 setPossibleCalendarUnits_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = v34;
  *(v30 + 40) = a3;
  *(v30 + 48) = v29;
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  sub_1CA94C218();
  return sub_1CA94C1E8();
}

uint64_t sub_1CA67655C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA67662C;
  OUTLINED_FUNCTION_4_32();

  return sub_1CA67672C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1CA67662C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;

  OUTLINED_FUNCTION_2_4();
  if (v0)
  {
    v4 = 0;
  }

  return v5(v4);
}

uint64_t sub_1CA67672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA67674C()
{
  OUTLINED_FUNCTION_6();
  sub_1CA94C218();
  v1 = sub_1CA323E28();
  v0[9] = v1;
  v2 = v0[6];
  if (v1)
  {

    v3 = objc_opt_self();
    if (OUTLINED_FUNCTION_37(v3))
    {
      OUTLINED_FUNCTION_7_39();
      v4 = swift_task_alloc();
      v0[10] = v4;
      *v4 = v0;
      v4[1] = sub_1CA6768C8;
      v5 = OUTLINED_FUNCTION_11_2(v0[4]);

      return v6(v5);
    }

    v11 = sub_1CA2A741C();
    v12 = OUTLINED_FUNCTION_127(&unk_1F4A11410, v11);
    OUTLINED_FUNCTION_8_31(v12, v13);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v0[5];
    v9 = sub_1CA2A741C();
    OUTLINED_FUNCTION_127(&unk_1F4A11410, v9);
    *v10 = v8;
    *(v10 + 8) = v2;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5();

  return v14();
}

uint64_t sub_1CA6768C8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  if (v0)
  {
    v5 = sub_1CA676BB8;
  }

  else
  {
    v5 = sub_1CA6769D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA6769D0()
{
  if (!v0[11])
  {
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X2, X16 }
  }

  v1 = objc_opt_self();
  v2 = OUTLINED_FUNCTION_37(v1);
  if (!v2)
  {
    v7 = sub_1CA2A741C();
    OUTLINED_FUNCTION_127(&unk_1F4A11410, v7);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_12_34(ObjectType);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_9:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X1, X16 }
  }

  v3 = v2;
  v4 = v0[12];
  swift_unknownObjectRelease();
  v0[13] = sub_1CA676F6C(v3);
  if (v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_1CA25B3D0(0, &qword_1EC447EB8, 0x1E6996F70);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1CA676C1C;
  OUTLINED_FUNCTION_4_32();

  return MEMORY[0x1EEDF81A0](v12);
}

uint64_t sub_1CA676BB8()
{
  OUTLINED_FUNCTION_0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA676C1C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  if (v0)
  {
    v5 = sub_1CA676E34;
  }

  else
  {

    v5 = sub_1CA676D30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA676D30()
{
  OUTLINED_FUNCTION_6();
  if (*(v0 + 120))
  {
    swift_unknownObjectRetain();
    v1 = objc_opt_self();
    v2 = OUTLINED_FUNCTION_37(v1);
    v3 = *(v0 + 104);
    if (v2)
    {
      v4 = [v2 compare_];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v4 = -1;
    }
  }

  else
  {

    v4 = -1;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v5(v4);
}

uint64_t sub_1CA676E34()
{
  OUTLINED_FUNCTION_0();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA676EA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2A715C;

  return sub_1CA67655C();
}

void *sub_1CA676F6C(void *a1)
{
  sub_1CA677620(a1);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = sub_1CA94C368();
  v6 = [v4 unitStringIsDurationUnit_];

  if (!v6)
  {

LABEL_7:
    sub_1CA2A741C();
    swift_allocError();
    v18 = v17;
    v17[3] = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
    *v18 = a1;
    *(v18 + 32) = 2;
    swift_willThrow();
    v19 = a1;
    return v18;
  }

  v7 = sub_1CA94C368();
  v8 = [v4 calendarUnitFromUnitString_];

  v9 = sub_1CA9490C8();
  v43 = v36;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447EC0, &qword_1CA991A98);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - v14;
  sub_1CA25B3D0(0, &qword_1EC447EC8, off_1E836E2B0);
  sub_1CA4E35D0(v8, v15);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v9);
  v41 = v10;
  v42 = v9;
  v45 = v1;
  v46 = v12;
  if (EnumTagSinglePayload == 1)
  {
    (*(v10 + 104))(v12, *MEMORY[0x1E6969AA0], v9);
    if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
    {
      sub_1CA30F7DC(v15, &qword_1EC447EC0, &qword_1CA991A98);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
  }

  v39 = sub_1CA9490D8();
  v40 = v36;
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9490B8();
  v22 = sub_1CA948CB8();
  v36[1] = v36;
  v44 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948C88();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  v36[0] = v36;
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v36 - v27;
  v29 = [a1 magnitude];
  [v29 integerValue];

  v37 = v21;
  v30 = sub_1CA9490A8();
  MEMORY[0x1EEE9AC00](v30);
  v31 = v36 - v27;
  sub_1CA677684(v36 - v27, v36 - v27);
  if (__swift_getEnumTagSinglePayload(v36 - v27, 1, v22) == 1)
  {
    sub_1CA30F7DC(v36 - v27, &qword_1EC4466D0, &qword_1CA991AA0);
    v32 = 0.0;
    v33 = v44;
  }

  else
  {
    sub_1CA948C48();
    v32 = v34;
    v33 = v44;
    (*(v44 + 8))(v31, v22);
  }

  result = [objc_allocWithZone(MEMORY[0x1E6996F70]) initWithTimeInterval_];
  if (result)
  {
    v18 = result;

    sub_1CA30F7DC(v28, &qword_1EC4466D0, &qword_1CA991AA0);
    (*(v33 + 8))(v24, v22);
    (*(v38 + 8))(v37, v39);
    (*(v41 + 8))(v46, v42);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA67754C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1CA2A731C;

  return sub_1CA67672C(a1, a2, a3, v8, v9, v11, v10);
}

uint64_t sub_1CA677620(void *a1)
{
  v1 = [a1 unitString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA677684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CA677738()
{
  v158 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9DCD80;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("file|document|picker|open|folder", 32);
  v6 = v5;
  v7 = sub_1CA94C438("file|document|picker|open|folder", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v164 = v11;
  v168 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v147 - v168;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v167 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v165 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v147 - v166;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v163 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v157 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Prompts to select files or folders.", 35);
  v160 = v27;
  v28 = sub_1CA94C438("Prompts to select files or folders.", 35);
  v30 = v29;
  v161 = v147;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v147 - v168;
  sub_1CA948D98();
  v32 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v147 - v166;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v160, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v163;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v162;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v162 = v38;
  *(inited + 200) = &unk_1F4A0B5F0;
  *(inited + 224) = v38;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 1953392980;
  *(inited + 248) = 0xE400000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x6C6C69662E636F64;
  *(inited + 288) = 0xE800000000000000;
  *(inited + 304) = v39;
  *(inited + 312) = @"IconSymbolColor";
  *(inited + 320) = 1702194242;
  *(inited + 328) = 0xE400000000000000;
  *(inited + 344) = v39;
  *(inited + 352) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"IconColor";
  v42 = @"IconSymbol";
  v43 = @"IconSymbolColor";
  v44 = @"Name";
  v45 = sub_1CA94C438("Select File (Action Name)", 25);
  v47 = v46;
  v48 = sub_1CA94C438("Select File", 11);
  v50 = v49;
  v161 = v147;
  MEMORY[0x1EEE9AC00](v48);
  v51 = v147 - v168;
  sub_1CA948D98();
  v52 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v52);
  v53 = v147 - v166;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v45, v47, v48, v50, 0, 0, v51, v53);
  *(inited + 384) = v163;
  *(inited + 392) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v55 = swift_initStackObject();
  v156 = xmmword_1CA981350;
  *(v55 + 16) = xmmword_1CA981350;
  *(v55 + 32) = 0x75736F6C63736944;
  *(v55 + 40) = 0xEF6C6576654C6572;
  *(v55 + 48) = 0x63696C627550;
  *(v55 + 56) = 0xE600000000000000;
  *(v55 + 72) = MEMORY[0x1E69E6158];
  *(v55 + 80) = 0x656C7069746C754DLL;
  *(v55 + 88) = 0xE800000000000000;
  v56 = MEMORY[0x1E69E6370];
  *(v55 + 96) = 1;
  *(v55 + 120) = v56;
  *(v55 + 128) = 0x614E74757074754FLL;
  *(v55 + 136) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("File (Default Output Name)", 26);
  v160 = v59;
  v60 = sub_1CA94C438("File", 4);
  v62 = v61;
  v161 = v147;
  MEMORY[0x1EEE9AC00](v60);
  v63 = v147 - v168;
  sub_1CA948D98();
  v64 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v147 - v166;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v55 + 144) = sub_1CA2F9F14(v58, v160, v60, v62, 0, 0, v63, v65);
  *(v55 + 168) = v163;
  *(v55 + 176) = 0x7365707954;
  *(v55 + 216) = v162;
  *(v55 + 184) = 0xE500000000000000;
  *(v55 + 192) = &unk_1F4A0B620;
  v67 = MEMORY[0x1E69E6158];
  v68 = sub_1CA94C1E8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 400) = v68;
  *(inited + 424) = v69;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  v154 = xmmword_1CA981360;
  *(v161 + 1) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981370;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000016;
  *(v70 + 48) = 0x80000001CA99C4A0;
  *(v70 + 64) = v67;
  *(v70 + 72) = @"DefaultValue";
  *(v70 + 80) = 0x73656C6946;
  *(v70 + 88) = 0xE500000000000000;
  *(v70 + 104) = v67;
  *(v70 + 112) = @"Items";
  v152 = swift_allocObject();
  *&v152->data = v154;
  v71 = @"Class";
  v72 = @"DefaultValue";
  *&v154 = v71;
  v153 = v72;
  v73 = @"Parameters";
  v74 = @"Items";
  v75 = sub_1CA94C438("Files (WFPickingMode)", 21);
  v149 = v76;
  v150 = v75;
  v77 = sub_1CA94C438("Files", 5);
  v148 = v78;
  v151 = v147;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v147 - v168;
  sub_1CA948D98();
  v80 = v167;
  v81 = [v167 bundleURL];
  v147[1] = v147;
  v159 = inited;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v166;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v150, v149, v77, v148, 0, 0, v79, v147 - v82);
  v85 = v152;
  v152[1].isa = v84;
  v86 = sub_1CA94C438("Folders (WFPickingMode)", 23);
  v149 = v87;
  v150 = v86;
  v88 = sub_1CA94C438("Folders", 7);
  v148 = v89;
  v151 = v147;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v147 - v168;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85[1].info = sub_1CA2F9F14(v150, v149, v88, v148, 0, 0, v90, v147 - v82);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v70 + 120) = v85;
  *(v70 + 144) = v93;
  *(v70 + 152) = @"Key";
  strcpy((v70 + 160), "WFPickingMode");
  *(v70 + 174) = -4864;
  *(v70 + 184) = MEMORY[0x1E69E6158];
  *(v70 + 192) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v151 = v94;
  v152 = v95;
  v96 = sub_1CA94C438("Type (WFPickingMode)", 20);
  v149 = v97;
  v98 = sub_1CA94C438("Type", 4);
  v100 = v99;
  v150 = v147;
  MEMORY[0x1EEE9AC00](v98);
  v101 = v147 - v168;
  sub_1CA948D98();
  v102 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v147 - v166;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v96, v149, v98, v100, 0, 0, v101, v103);
  *(v70 + 224) = v163;
  *(v70 + 200) = v105;
  _s3__C3KeyVMa_0(0);
  v150 = v106;
  v149 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v107 = sub_1CA94C1E8();
  v108 = sub_1CA2F864C(v107);
  v161[4] = v108;
  v109 = swift_allocObject();
  *(v109 + 16) = v156;
  *(v109 + 32) = v154;
  *(v109 + 40) = 0xD000000000000011;
  *(v109 + 48) = 0x80000001CA99E620;
  v110 = MEMORY[0x1E69E6158];
  v111 = v153;
  *(v109 + 64) = MEMORY[0x1E69E6158];
  *(v109 + 72) = v111;
  *(v109 + 80) = 0;
  v112 = v151;
  *(v109 + 104) = MEMORY[0x1E69E6370];
  *(v109 + 112) = v112;
  strcpy((v109 + 120), "SelectMultiple");
  *(v109 + 135) = -18;
  v113 = v152;
  *(v109 + 144) = v110;
  *(v109 + 152) = v113;
  v114 = sub_1CA94C438("Select Multiple (SelectMultiple)", 32);
  v155 = v115;
  v116 = sub_1CA94C438("Select Multiple", 15);
  v118 = v117;
  *&v156 = v147;
  MEMORY[0x1EEE9AC00](v116);
  v119 = v168;
  sub_1CA948D98();
  v120 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = v147 - v166;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v114, v155, v116, v118, 0, 0, v147 - v119, v121);
  *(v109 + 184) = v163;
  *(v109 + 160) = v123;
  v124 = sub_1CA94C1E8();
  v125 = sub_1CA2F864C(v124);
  v126 = v161;
  v161[5] = v125;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v128 = v159;
  v159[55] = v126;
  v128[58] = v127;
  v128[59] = @"ParameterSummary";
  v129 = @"ParameterSummary";
  v130 = sub_1CA94C438("Select ${WFPickingMode} (Parameter Summary)", 43);
  v132 = v131;
  v133 = sub_1CA94C438("Select ${WFPickingMode}", 23);
  v135 = v134;
  v163 = v147;
  MEMORY[0x1EEE9AC00](v133);
  sub_1CA948D98();
  v136 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  v137 = v147 - v166;
  sub_1CA948B68();

  v138 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139 = sub_1CA2F9F14(v130, v132, v133, v135, 0, 0, v147 - v119, v137);
  v140 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v141 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v142 = v159;
  v159[60] = v140;
  v142[63] = v141;
  v142[64] = @"UserInterfaceClasses";
  v143 = @"UserInterfaceClasses";
  v144 = sub_1CA94C1E8();
  v142[68] = v157;
  v142[65] = v144;
  v142[69] = @"UserInterfaces";
  v142[73] = v162;
  v142[70] = &unk_1F4A0B6C0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v145 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67898C()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  strcpy((inited + 120), "TVRemote_Skip");
  *(inited + 134) = -4864;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9DCF20;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA678BC0()
{
  v159 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9DCF50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("URL|encode|decode|x|callback|x-callback|xcallback|urlencode|urldecode", 69);
  v6 = v5;
  v7 = sub_1CA94C438("URL|encode|decode|x|callback|x-callback|xcallback|urlencode|urldecode", 69);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = v11;
  v169 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v151 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v166 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v167 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v165 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v151 - v165;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v164 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  *&v163 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Encodes or decodes text passed into the action to be suitable for inclusion in a URL by adding or removing percent escapes when appropriate.", 140);
  v161 = v24;
  v25 = sub_1CA94C438("Encodes or decodes text passed into the action to be suitable for inclusion in a URL by adding or removing percent escapes when appropriate.", 140);
  v27 = v26;
  v162 = v151;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v151 - v169;
  sub_1CA948D98();
  v29 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v151 - v165;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v161, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v164;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v163;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1953392980;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 1802398060;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"IconSymbolColor";
  *(inited + 240) = 1702194242;
  *(inited + 248) = 0xE400000000000000;
  *(inited + 264) = v35;
  *(inited + 272) = @"Input";
  v36 = v35;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v163 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 1;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 0x7475706E494657;
  *(v37 + 104) = 0xE700000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v162;
  *(v37 + 192) = &unk_1F4A0B780;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"IconSymbolColor";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v161 = v44;
  *(inited + 280) = v43;
  *(inited + 304) = v44;
  *(inited + 312) = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438("URL Encode (Action Name)", 24);
  v48 = v47;
  v49 = sub_1CA94C438("URL Encode", 10);
  v51 = v50;
  *&v158 = v151;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v151 - v169;
  sub_1CA948D98();
  v53 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v151 - v165;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v56 = v164;
  *(inited + 344) = v164;
  *(inited + 352) = @"Output";
  v57 = swift_allocObject();
  *(v57 + 16) = v163;
  *(v57 + 32) = 0x75736F6C63736944;
  *(v57 + 40) = 0xEF6C6576654C6572;
  *(v57 + 48) = 0x63696C627550;
  *(v57 + 56) = 0xE600000000000000;
  *(v57 + 72) = MEMORY[0x1E69E6158];
  *(v57 + 80) = 0x656C7069746C754DLL;
  *(v57 + 88) = 0xE800000000000000;
  *(v57 + 96) = 1;
  *(v57 + 120) = MEMORY[0x1E69E6370];
  *(v57 + 128) = 0x614E74757074754FLL;
  *(v57 + 136) = 0xEA0000000000656DLL;
  v58 = @"Output";
  v59 = sub_1CA94C438("URL Encoded Text (Default Output Name)", 38);
  v157 = v60;
  *&v158 = v59;
  v61 = sub_1CA94C438("URL Encoded Text", 16);
  v63 = v62;
  v160 = v151;
  MEMORY[0x1EEE9AC00](v61);
  v64 = v151 - v169;
  sub_1CA948D98();
  v65 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v151 - v165;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 144) = sub_1CA2F9F14(v158, v157, v61, v63, 0, 0, v64, v66);
  *(v57 + 168) = v56;
  *(v57 + 176) = 0x7365707954;
  *(v57 + 216) = v162;
  *(v57 + 184) = 0xE500000000000000;
  *(v57 + 192) = &unk_1F4A0B7B0;
  v68 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v161;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v162 = swift_allocObject();
  v158 = xmmword_1CA981360;
  *(v162 + 1) = xmmword_1CA981360;
  v161 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1CA981370;
  *(v69 + 32) = @"Class";
  *(v69 + 40) = 0xD000000000000016;
  *(v69 + 48) = 0x80000001CA99C4A0;
  *(v69 + 64) = v68;
  *(v69 + 72) = @"DefaultValue";
  *(v69 + 80) = 0x65646F636E45;
  *(v69 + 88) = 0xE600000000000000;
  *(v69 + 104) = v68;
  *(v69 + 112) = @"Items";
  v160 = swift_allocObject();
  *(v160 + 1) = v158;
  v156 = @"Class";
  v70 = @"Parameters";
  v71 = @"DefaultValue";
  v72 = @"Items";
  v73 = sub_1CA94C438("Encode (WFEncodeMode)", 21);
  v153 = v74;
  v154 = v73;
  v75 = sub_1CA94C438("Encode", 6);
  v152 = v76;
  v155 = v151;
  MEMORY[0x1EEE9AC00](v75);
  *&v158 = inited;
  v77 = v169;
  sub_1CA948D98();
  v78 = v166;
  v79 = [v166 bundleURL];
  v151[1] = v151;
  MEMORY[0x1EEE9AC00](v79);
  v80 = v165;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v82 = sub_1CA2F9F14(v154, v153, v75, v152, 0, 0, v151 - v77, v151 - v80);
  v160[4] = v82;
  v83 = sub_1CA94C438("Decode (WFEncodeMode)", 21);
  v153 = v84;
  v154 = v83;
  v85 = sub_1CA94C438("Decode", 6);
  v152 = v86;
  v155 = v151;
  MEMORY[0x1EEE9AC00](v85);
  sub_1CA948D98();
  v87 = [v78 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v154, v153, v85, v152, 0, 0, v151 - v77, v151 - v80);
  v90 = v160;
  v160[5] = v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v69 + 120) = v90;
  *(v69 + 144) = v91;
  *(v69 + 152) = @"Key";
  strcpy((v69 + 160), "WFEncodeMode");
  *(v69 + 173) = 0;
  *(v69 + 174) = -5120;
  *(v69 + 184) = MEMORY[0x1E69E6158];
  *(v69 + 192) = @"Label";
  v92 = @"Key";
  v93 = @"Label";
  v154 = v92;
  v153 = v93;
  v94 = sub_1CA94C438("Mode (WFEncodeMode)", 19);
  v155 = v95;
  v96 = sub_1CA94C438("Mode", 4);
  v98 = v97;
  v160 = v151;
  MEMORY[0x1EEE9AC00](v96);
  v99 = v151 - v169;
  sub_1CA948D98();
  v100 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v151 - v165;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v94, v155, v96, v98, 0, 0, v99, v101);
  *(v69 + 224) = v164;
  *(v69 + 200) = v103;
  _s3__C3KeyVMa_0(0);
  v160 = v104;
  v155 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v105 = sub_1CA94C1E8();
  v106 = sub_1CA2F864C(v105);
  v162[4] = v106;
  v107 = swift_initStackObject();
  *(v107 + 16) = v163;
  *(v107 + 32) = v156;
  *(v107 + 40) = 0xD000000000000014;
  *(v107 + 48) = 0x80000001CA99B500;
  v108 = MEMORY[0x1E69E6158];
  v109 = v154;
  *(v107 + 64) = MEMORY[0x1E69E6158];
  *(v107 + 72) = v109;
  *(v107 + 80) = 0x7475706E494657;
  *(v107 + 88) = 0xE700000000000000;
  v110 = v153;
  *(v107 + 104) = v108;
  *(v107 + 112) = v110;
  v111 = sub_1CA94C438("Text (WFInput)", 14);
  v156 = v112;
  v157 = v111;
  v154 = sub_1CA94C438("Text", 4);
  v114 = v113;
  *&v163 = v151;
  MEMORY[0x1EEE9AC00](v154);
  v115 = v151 - v169;
  sub_1CA948D98();
  v116 = v166;
  v117 = [v166 bundleURL];
  v153 = v151;
  MEMORY[0x1EEE9AC00](v117);
  v118 = v165;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 120) = sub_1CA2F9F14(v157, v156, v154, v114, 0, 0, v115, v151 - v118);
  v120 = v164;
  *(v107 + 144) = v164;
  *(v107 + 152) = @"Placeholder";
  v121 = @"Placeholder";
  v122 = sub_1CA94C438("Text (WFInput)", 14);
  v156 = v123;
  v157 = v122;
  v124 = sub_1CA94C438("Text", 4);
  v154 = v125;
  *&v163 = v151;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v151 - v169;
  sub_1CA948D98();
  v127 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v157, v156, v124, v154, 0, 0, v126, v151 - v118);
  *(v107 + 184) = v120;
  *(v107 + 160) = v129;
  v130 = sub_1CA94C1E8();
  v131 = sub_1CA2F864C(v130);
  v132 = v162;
  v162[5] = v131;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v134 = v158;
  *(v158 + 400) = v132;
  *(v134 + 424) = v133;
  *(v134 + 432) = @"ParameterSummary";
  v135 = @"ParameterSummary";
  v136 = sub_1CA94C438("URL ${WFEncodeMode} ${WFInput} (Parameter Summary)", 50);
  v138 = v137;
  v139 = sub_1CA94C438("URL ${WFEncodeMode} ${WFInput}", 30);
  v141 = v140;
  v164 = v151;
  MEMORY[0x1EEE9AC00](v139);
  v142 = v151 - v169;
  sub_1CA948D98();
  v143 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = v151 - v165;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  v147 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v148 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v134 + 440) = v147;
  *(v134 + 464) = v148;
  *(v134 + 472) = @"ResidentCompatible";
  *(v134 + 504) = MEMORY[0x1E69E6370];
  *(v134 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v149 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA679F48()
{
  v50 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v49 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v48 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionNote";
  v7 = @"Description";
  v8 = @"DescriptionNote";
  v9 = sub_1CA94C438("Safari Web Page items are only available when running your shortcut as an Action Extension in Safari.", 101);
  v51 = v10;
  v52 = v9;
  v11 = sub_1CA94C438("Safari Web Page items are only available when running your shortcut as an Action Extension in Safari.", 101);
  v44 = v12;
  v45 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v43 - v47;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v46 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v43 - v46;
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v52, v51, v45, v44, 0, 0, v15, v20);
  v52 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v52;
  *(v6 + 40) = v22;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v23 = sub_1CA94C1E8();
  v24 = v48;
  *(inited + 120) = sub_1CA6B3784(v23);
  *(inited + 144) = v24;
  *(inited + 152) = @"Name";
  v25 = @"Name";
  v26 = sub_1CA94C438("Get Details of Safari Web Page (Action Name)", 44);
  v28 = v27;
  v29 = sub_1CA94C438("Get Details of Safari Web Page", 30);
  v31 = v30;
  v51 = &v43;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v43 - v47;
  sub_1CA948D98();
  v33 = [v16 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v43 - v46;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  v37 = v52;
  *(inited + 160) = v36;
  *(inited + 184) = v37;
  *(inited + 192) = @"Output";
  v38 = @"Output";
  v39 = MEMORY[0x1E69E6158];
  v40 = sub_1CA94C1E8();
  *(inited + 224) = v49;
  *(inited + 200) = v40;
  v41 = sub_1CA94C368();
  *(inited + 264) = v39;
  *(inited + 232) = v41;
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9944E0;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67A51C()
{
  v109 = sub_1CA94B4D8();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v100 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DD1F0;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("display|aod", 11);
  v7 = v6;
  v8 = sub_1CA94C438("display|aod", 11);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = v12;
  v116 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v100 - v116;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v114 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v113 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v100 - v111;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v112 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v106 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438("Sets the Always On Display setting of your iPhone to on or off.", 63);
  v103 = v28;
  v104 = v27;
  v29 = sub_1CA94C438("Sets the Always On Display setting of your iPhone to on or off.", 63);
  v102 = v30;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v100 - v116;
  sub_1CA948D98();
  v32 = v114;
  v33 = [v114 bundleURL];
  v101 = &v100;
  MEMORY[0x1EEE9AC00](v33);
  v34 = v111;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v104, v103, v29, v102, 0, 0, v31, &v100 - v34);
  v36 = v112;
  *(v24 + 64) = v112;
  *(v24 + 72) = @"FocusFilterDescription";
  v37 = @"FocusFilterDescription";
  v38 = sub_1CA94C438("Turn Always On Display on or off while in this Focus.", 53);
  v103 = v39;
  v104 = v38;
  v102 = sub_1CA94C438("Turn Always On Display on or off while in this Focus.", 53);
  v41 = v40;
  v105 = &v100;
  MEMORY[0x1EEE9AC00](v102);
  v42 = &v100 - v116;
  sub_1CA948D98();
  v43 = [v32 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v45 = sub_1CA2F9F14(v104, v103, v102, v41, 0, 0, v42, &v100 - v34);
  *(v24 + 104) = v36;
  *(v24 + 80) = v45;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v46 = sub_1CA94C1E8();
  v47 = v106;
  *(inited + 160) = sub_1CA6B3784(v46);
  *(inited + 184) = v47;
  *(inited + 192) = @"DisabledOnPlatforms";
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F4A0B8A0;
  *(inited + 224) = v48;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x656C70727550;
  *(inited + 248) = 0xE600000000000000;
  v49 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0x656E6F687069;
  *(inited + 288) = 0xE600000000000000;
  *(inited + 304) = v49;
  *(inited + 312) = @"InputPassthrough";
  v50 = v49;
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v51 = @"DisabledOnPlatforms";
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"InputPassthrough";
  v55 = sub_1CA94C368();
  *(inited + 384) = v50;
  *(inited + 352) = v55;
  *(inited + 360) = 0xD00000000000005ALL;
  *(inited + 368) = 0x80000001CA9DD2A0;
  *(inited + 392) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v56 = swift_initStackObject();
  v106 = v56;
  *(v56 + 16) = xmmword_1CA981310;
  *(v56 + 32) = 0x6574617473;
  *(v56 + 40) = 0xE500000000000000;
  v105 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1CA981350;
  *(v57 + 32) = @"Key";
  *(v57 + 40) = 0x65756C61566E4FLL;
  *(v57 + 48) = 0xE700000000000000;
  *(v57 + 64) = v50;
  *(v57 + 72) = @"Label";
  v58 = @"Key";
  v59 = @"Label";
  v60 = sub_1CA94C438("Always On Display (Parameter Label)", 35);
  v102 = v61;
  v103 = v60;
  v62 = sub_1CA94C438("Always On Display", 17);
  v101 = v63;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v100 - v116;
  sub_1CA948D98();
  v65 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v65);
  v66 = v111;
  sub_1CA948B68();

  v67 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 80) = sub_1CA2F9F14(v103, v102, v62, v101, 0, 0, v64, &v100 - v66);
  *(v57 + 104) = v112;
  *(v57 + 112) = @"Placeholder";
  v68 = @"Placeholder";
  v69 = sub_1CA94C438("Always On Display State (Parameter Placeholder)", 47);
  v102 = v70;
  v103 = v69;
  v71 = sub_1CA94C438("State", 5);
  v101 = v72;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v100 - v116;
  sub_1CA948D98();
  v74 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v57 + 120) = sub_1CA2F9F14(v103, v102, v71, v101, 0, 0, v73, &v100 - v66);
  v76 = v112;
  *(v57 + 144) = v112;
  *(v57 + 152) = @"Prompt";
  v77 = @"Prompt";
  v78 = sub_1CA94C438("State (WFSetAlwaysOnDisplayAction)", 34);
  v102 = v79;
  v103 = v78;
  v80 = sub_1CA94C438("State", 5);
  v82 = v81;
  v104 = &v100;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v100 - v116;
  sub_1CA948D98();
  v84 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v100 - v111;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v103, v102, v80, v82, 0, 0, v83, v85);
  *(v57 + 184) = v76;
  *(v57 + 160) = v87;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v88 = sub_1CA94C1E8();
  v89 = sub_1CA2F864C(v88);
  *(v106 + 48) = v89;
  v90 = sub_1CA94C1E8();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 400) = v90;
  *(inited + 424) = v91;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1CA981360;
  v93 = v108;
  (*(v107 + 104))(v108, *MEMORY[0x1E69DB3D8], v109);
  v94 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v95 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v93);
  *(v92 + 32) = v96;
  v117 = 0;
  v118 = 0;
  v97 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  WFDeviceIdiomResource.init(requirement:)(&v117);
  *(v92 + 40) = v98;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442D8, &unk_1CA982E00);
  *(inited + 440) = v92;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67B26C()
{
  v0 = sub_1CA949D18();
  v217 = *(v0 - 8);
  v218 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v216 = v209 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9DD3D0;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438("base|64|encode|decode", 21);
  v8 = v7;
  v9 = sub_1CA94C438("base|64|encode|decode", 21);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v235 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v236 = v13;
  v14 = v209 - v235;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v237 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v233 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v209 - v233;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v231 = v21;
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"Description";
  v230 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  v227 = xmmword_1CA981310;
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Encodes or decodes text or files using Base64 encoding.", 55);
  v27 = v26;
  v28 = sub_1CA94C438("Encodes or decodes text or files using Base64 encoding.", 55);
  v30 = v29;
  v229 = v209;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v209 - v235;
  sub_1CA948D98();
  v32 = [v234 bundleURL];
  v232 = inited;
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v209 - v233;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v25, v27, v28, v30, 0, 0, v31, v34);
  *(v22 + 64) = v231;
  *(v22 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v230;
  v39 = sub_1CA6B3784(v37);
  v40 = v232;
  *(v232 + 15) = v39;
  *(v40 + 18) = v38;
  *(v40 + 19) = @"IconColor";
  *(v40 + 20) = 2036429383;
  *(v40 + 21) = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  *(v40 + 23) = MEMORY[0x1E69E6158];
  *(v40 + 24) = @"IconSymbol";
  strcpy(v40 + 200, "octagon.fill");
  v40[213] = 0;
  *(v40 + 107) = -5120;
  *(v40 + 28) = v41;
  *(v40 + 29) = @"Input";
  v42 = v41;
  v43 = v40;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v44 = swift_initStackObject();
  v228 = xmmword_1CA981350;
  *(v44 + 16) = xmmword_1CA981350;
  *(v44 + 32) = 0x656C7069746C754DLL;
  *(v44 + 40) = 0xE800000000000000;
  v45 = MEMORY[0x1E69E6370];
  *(v44 + 48) = 1;
  *(v44 + 72) = v45;
  strcpy((v44 + 80), "ParameterKey");
  *(v44 + 93) = 0;
  *(v44 + 94) = -5120;
  *(v44 + 96) = 0x7475706E494657;
  *(v44 + 104) = 0xE700000000000000;
  *(v44 + 120) = v42;
  *(v44 + 128) = 0x6465726975716552;
  *(v44 + 136) = 0xE800000000000000;
  *(v44 + 144) = 1;
  *(v44 + 168) = v45;
  *(v44 + 176) = 0x7365707954;
  *(v44 + 184) = 0xE500000000000000;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v44 + 216) = v226;
  *(v44 + 192) = &unk_1F4A0B8E0;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v230 = v50;
  *(v43 + 30) = v49;
  *(v43 + 33) = v50;
  *(v43 + 34) = @"Name";
  v51 = @"Name";
  v52 = sub_1CA94C438("Base64 Encode (Action Name)", 27);
  v223 = v53;
  v224 = v52;
  v54 = sub_1CA94C438("Base64 Encode", 13);
  v56 = v55;
  v225 = v209;
  MEMORY[0x1EEE9AC00](v54);
  v57 = v209 - v235;
  sub_1CA948D98();
  v58 = v234;
  v59 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = v233;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v224, v223, v54, v56, 0, 0, v57, v209 - v60);
  v64 = v231;
  v63 = v232;
  *(v232 + 35) = v62;
  *(v63 + 38) = v64;
  *(v63 + 39) = @"Output";
  v65 = swift_initStackObject();
  *(v65 + 16) = v228;
  *(v65 + 32) = 0x75736F6C63736944;
  *(v65 + 40) = 0xEF6C6576654C6572;
  *(v65 + 48) = 0x63696C627550;
  *(v65 + 56) = 0xE600000000000000;
  *(v65 + 72) = MEMORY[0x1E69E6158];
  *(v65 + 80) = 0x656C7069746C754DLL;
  *(v65 + 88) = 0xE800000000000000;
  *(v65 + 96) = 1;
  *(v65 + 120) = MEMORY[0x1E69E6370];
  *(v65 + 128) = 0x614E74757074754FLL;
  *(v65 + 136) = 0xEA0000000000656DLL;
  v66 = @"Output";
  *&v228 = sub_1CA94C438("Base64 Encoded (Default Output Name)", 36);
  v225 = v67;
  v68 = sub_1CA94C438("Base64 Encoded", 14);
  v70 = v69;
  v229 = v209;
  MEMORY[0x1EEE9AC00](v68);
  v71 = v209 - v235;
  sub_1CA948D98();
  v72 = [v58 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 144) = sub_1CA2F9F14(v228, v225, v68, v70, 0, 0, v71, v209 - v60);
  *(v65 + 168) = v64;
  *(v65 + 176) = 0x7365707954;
  *(v65 + 216) = v226;
  *(v65 + 184) = 0xE500000000000000;
  *(v65 + 192) = &unk_1F4A0B920;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = v232;
  *(v232 + 40) = v75;
  *(v76 + 43) = v230;
  *(v76 + 44) = @"Parameters";
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v230 = swift_allocObject();
  v214 = xmmword_1CA981470;
  *(v230 + 16) = xmmword_1CA981470;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  v215 = xmmword_1CA981370;
  *(v77 + 16) = xmmword_1CA981370;
  *&v228 = 0x80000001CA99C4A0;
  *(v77 + 32) = @"Class";
  *(v77 + 40) = 0xD000000000000016;
  *(v77 + 48) = 0x80000001CA99C4A0;
  *(v77 + 64) = v74;
  *(v77 + 72) = @"DefaultValue";
  *(v77 + 80) = 0x65646F636E45;
  *(v77 + 88) = 0xE600000000000000;
  *(v77 + 104) = v74;
  *(v77 + 112) = @"Items";
  v223 = swift_allocObject();
  *(v223 + 1) = xmmword_1CA981360;
  v78 = @"Class";
  v79 = @"DefaultValue";
  v80 = @"Items";
  v224 = v78;
  v210 = v79;
  v211 = v80;
  v81 = @"Parameters";
  v82 = sub_1CA94C438("Encode (WFEncodeMode)", 21);
  v220 = v83;
  v221 = v82;
  v84 = sub_1CA94C438("Encode", 6);
  v213 = v85;
  v222 = v209;
  MEMORY[0x1EEE9AC00](v84);
  v86 = v235;
  sub_1CA948D98();
  v87 = v234;
  v88 = [v234 bundleURL];
  v209[1] = v209;
  MEMORY[0x1EEE9AC00](v88);
  v89 = v209 - v233;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v221, v220, v84, v213, 0, 0, v209 - v86, v89);
  v92 = v223;
  v223[4] = v91;
  v93 = sub_1CA94C438("Decode (WFEncodeMode)", 21);
  v220 = v94;
  v221 = v93;
  v213 = sub_1CA94C438("Decode", 6);
  v96 = v95;
  v222 = v209;
  MEMORY[0x1EEE9AC00](v213);
  sub_1CA948D98();
  v97 = [v87 bundleURL];
  MEMORY[0x1EEE9AC00](v97);
  v98 = v233;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 40) = sub_1CA2F9F14(v221, v220, v213, v96, 0, 0, v209 - v86, v209 - v98);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v213 = v100;
  *(v77 + 120) = v92;
  *(v77 + 144) = v100;
  *(v77 + 152) = @"Key";
  strcpy((v77 + 160), "WFEncodeMode");
  *(v77 + 173) = 0;
  *(v77 + 174) = -5120;
  *(v77 + 184) = MEMORY[0x1E69E6158];
  *(v77 + 192) = @"Label";
  v101 = @"Key";
  v102 = @"Label";
  v103 = v101;
  v104 = v102;
  v221 = v103;
  v220 = v104;
  v105 = sub_1CA94C438("Mode (WFEncodeMode)", 19);
  v222 = v106;
  v107 = sub_1CA94C438("Mode", 4);
  v109 = v108;
  v223 = v209;
  MEMORY[0x1EEE9AC00](v107);
  v110 = v209 - v235;
  sub_1CA948D98();
  v111 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v105, v222, v107, v109, 0, 0, v110, v209 - v98);
  *(v77 + 224) = v231;
  *(v77 + 200) = v113;
  _s3__C3KeyVMa_0(0);
  v223 = v114;
  v222 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  *(v230 + 32) = v116;
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1CA981380;
  *(v117 + 32) = v224;
  *(v117 + 40) = 0xD000000000000016;
  *(v117 + 48) = v228;
  v118 = MEMORY[0x1E69E6158];
  v119 = v210;
  *(v117 + 64) = MEMORY[0x1E69E6158];
  *(v117 + 72) = v119;
  *(v117 + 80) = 0xD000000000000013;
  *(v117 + 88) = 0x80000001CA9DD4C0;
  v120 = v211;
  *(v117 + 104) = v118;
  *(v117 + 112) = v120;
  *&v228 = swift_allocObject();
  *(v228 + 16) = v214;
  v121 = sub_1CA94C438("None (WFBase64LineBreakMode)", 28);
  v211 = v122;
  v212 = v121;
  v123 = sub_1CA94C438("None", 4);
  v210 = v124;
  *&v214 = v209;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v235;
  sub_1CA948D98();
  v126 = v234;
  v127 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v212, v211, v123, v210, 0, 0, v209 - v125, v209 - v98);
  *(v228 + 32) = v129;
  v130 = sub_1CA94C438("Every 64 Characters (WFBase64LineBreakMode)", 43);
  v211 = v131;
  v212 = v130;
  v132 = sub_1CA94C438("Every 64 Characters", 19);
  v210 = v133;
  *&v214 = v209;
  MEMORY[0x1EEE9AC00](v132);
  sub_1CA948D98();
  v134 = [v126 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v212, v211, v132, v210, 0, 0, v209 - v125, v209 - v98);
  *(v228 + 40) = v136;
  v137 = sub_1CA94C438("Every 76 Characters (WFBase64LineBreakMode)", 43);
  v211 = v138;
  v212 = v137;
  v139 = sub_1CA94C438("Every 76 Characters", 19);
  v210 = v140;
  *&v214 = v209;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v235;
  sub_1CA948D98();
  v142 = v234;
  v143 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = v233;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v146 = sub_1CA2F9F14(v212, v211, v139, v210, 0, 0, v209 - v141, v209 - v144);
  v147 = v228;
  *(v228 + 48) = v146;
  *(v117 + 120) = v147;
  v148 = v221;
  *(v117 + 144) = v213;
  *(v117 + 152) = v148;
  *(v117 + 160) = 0xD000000000000015;
  *(v117 + 168) = 0x80000001CA9DD580;
  v149 = v220;
  *(v117 + 184) = MEMORY[0x1E69E6158];
  *(v117 + 192) = v149;
  v150 = sub_1CA94C438("Line Breaks (WFBase64LineBreakMode)", 35);
  v213 = v151;
  *&v214 = v150;
  v212 = sub_1CA94C438("Line Breaks", 11);
  v153 = v152;
  *&v228 = v209;
  MEMORY[0x1EEE9AC00](v212);
  sub_1CA948D98();
  v154 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  sub_1CA948B68();

  v155 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v117 + 200) = sub_1CA2F9F14(v214, v213, v212, v153, 0, 0, v209 - v141, v209 - v144);
  *(v117 + 224) = v231;
  *(v117 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v156 = swift_allocObject();
  *(v156 + 16) = v227;
  v157 = @"RequiredResources";
  v158 = MEMORY[0x1E69E6158];
  *(v156 + 32) = sub_1CA94C1E8();
  *(v117 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v117 + 240) = v156;
  v159 = sub_1CA94C1E8();
  v160 = sub_1CA2F864C(v159);
  *(v230 + 40) = v160;
  v161 = swift_allocObject();
  *(v161 + 16) = v215;
  *(v161 + 32) = v224;
  *(v161 + 40) = 0xD000000000000019;
  *(v161 + 48) = 0x80000001CA99B030;
  v162 = v221;
  *(v161 + 64) = v158;
  *(v161 + 72) = v162;
  *(v161 + 80) = 0x7475706E494657;
  *(v161 + 88) = 0xE700000000000000;
  v163 = v220;
  *(v161 + 104) = v158;
  *(v161 + 112) = v163;
  v164 = sub_1CA94C438("Input (WFInput)", 15);
  v224 = v165;
  v225 = v164;
  v166 = sub_1CA94C438("Input", 5);
  v221 = v167;
  *&v228 = v209;
  MEMORY[0x1EEE9AC00](v166);
  v168 = v235;
  sub_1CA948D98();
  v169 = v234;
  v170 = [v234 bundleURL];
  v220 = v209;
  MEMORY[0x1EEE9AC00](v170);
  v171 = v233;
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v161 + 120) = sub_1CA2F9F14(v225, v224, v166, v221, 0, 0, v209 - v168, v209 - v171);
  v173 = v231;
  *(v161 + 144) = v231;
  *(v161 + 152) = @"Placeholder";
  v174 = @"Placeholder";
  v175 = sub_1CA94C438("Input (WFInput)", 15);
  v224 = v176;
  v225 = v175;
  v177 = sub_1CA94C438("Input", 5);
  v221 = v178;
  *&v228 = v209;
  MEMORY[0x1EEE9AC00](v177);
  sub_1CA948D98();
  v179 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v161 + 160) = sub_1CA2F9F14(v225, v224, v177, v221, 0, 0, v209 - v168, v209 - v171);
  *(v161 + 184) = v173;
  *(v161 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v181 = swift_allocObject();
  *(v181 + 16) = v227;
  v182 = @"PreferredTypes";
  v183 = v216;
  sub_1CA949CA8();
  v184 = sub_1CA949C68();
  v186 = v185;
  (*(v217 + 8))(v183, v218);
  *(v181 + 32) = v184;
  *(v181 + 40) = v186;
  *(v161 + 224) = v226;
  *(v161 + 200) = v181;
  v187 = sub_1CA94C1E8();
  v188 = sub_1CA2F864C(v187);
  v189 = v230;
  *(v230 + 48) = v188;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v191 = v232;
  *(v232 + 45) = v189;
  *(v191 + 48) = v190;
  *(v191 + 49) = @"ParameterSummary";
  v192 = @"ParameterSummary";
  v193 = sub_1CA94C438("${WFEncodeMode} ${WFInput} with base64 (Parameter Summary)", 58);
  v195 = v194;
  v196 = sub_1CA94C438("${WFEncodeMode} ${WFInput} with base64", 38);
  v198 = v197;
  MEMORY[0x1EEE9AC00](v196);
  v199 = v209 - v235;
  sub_1CA948D98();
  v200 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v200);
  v201 = v209 - v233;
  sub_1CA948B68();

  v202 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v203 = sub_1CA2F9F14(v193, v195, v196, v198, 0, 0, v199, v201);
  v204 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v205 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v206 = v232;
  *(v232 + 50) = v204;
  *(v206 + 53) = v205;
  *(v206 + 54) = @"ResidentCompatible";
  *(v206 + 58) = MEMORY[0x1E69E6370];
  v206[440] = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v207 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67CC78()
{
  v180 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9DD650;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("json|plist|xml|urlencoded|query|string|for|key|update|merge", 59);
  v6 = v5;
  v7 = sub_1CA94C438("json|plist|xml|urlencoded|query|string|for|key|update|merge", 59);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v194 = v11;
  v197 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v173 - v197;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v195 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v196 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v193 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v173 - v193;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v192 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v190 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Sets a value in the dictionary passed into the action. ", 55);
  v25 = v24;
  v26 = sub_1CA94C438("Sets a value in the dictionary passed into the action. ", 55);
  v28 = v27;
  v189 = &v173;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v173 - v197;
  sub_1CA948D98();
  v30 = [v195 bundleURL];
  v191 = inited;
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v173 - v193;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v31);
  *(v20 + 64) = v192;
  *(v20 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v34 = sub_1CA94C1E8();
  v35 = v190;
  v36 = sub_1CA6B3784(v34);
  v37 = v191;
  v191[15] = v36;
  v37[18] = v35;
  v37[19] = @"IconColor";
  v37[20] = 0x65676E61724FLL;
  v37[21] = 0xE600000000000000;
  v38 = MEMORY[0x1E69E6158];
  v37[23] = MEMORY[0x1E69E6158];
  v37[24] = @"IconSymbol";
  v37[25] = 0xD000000000000010;
  v37[26] = 0x80000001CA9CA420;
  v37[28] = v38;
  v37[29] = @"Input";
  v39 = v37;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v188 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 0;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  strcpy((v40 + 96), "WFDictionary");
  *(v40 + 109) = 0;
  *(v40 + 110) = -5120;
  *(v40 + 120) = v38;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  v42 = v41;
  *(v40 + 184) = 0xE500000000000000;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v190;
  *(v40 + 192) = &unk_1F4A0B9E0;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v189 = v47;
  v39[30] = v46;
  v39[33] = v47;
  v39[34] = @"InputPassthrough";
  *(v39 + 280) = 0;
  v39[38] = v42;
  v39[39] = @"Name";
  v48 = @"InputPassthrough";
  v49 = @"Name";
  v185 = sub_1CA94C438("Set Dictionary Value (Action Name)", 34);
  v51 = v50;
  v52 = sub_1CA94C438("Set Dictionary Value", 20);
  v54 = v53;
  v186 = &v173;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v173 - v197;
  sub_1CA948D98();
  v56 = v195;
  v57 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v173 - v193;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v185, v51, v52, v54, 0, 0, v55, v58);
  v61 = v191;
  v62 = v192;
  v191[40] = v60;
  v61[43] = v62;
  v61[44] = @"Output";
  v63 = swift_initStackObject();
  *(v63 + 16) = v188;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 0;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Dictionary (Default Output Name)", 32);
  v185 = v66;
  v186 = v65;
  v184 = sub_1CA94C438("Dictionary", 10);
  v68 = v67;
  v187 = &v173;
  MEMORY[0x1EEE9AC00](v184);
  v69 = &v173 - v197;
  sub_1CA948D98();
  v70 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v173 - v193;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v186, v185, v184, v68, 0, 0, v69, v71);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v190;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A0BA10;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = v191;
  v191[45] = v74;
  v75[48] = v189;
  v75[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_1CA981470;
  v189 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v76 = swift_allocObject();
  v179 = xmmword_1CA981400;
  *(v76 + 16) = xmmword_1CA981400;
  *(v76 + 32) = @"AutocapitalizationType";
  *(v76 + 40) = 1701736270;
  *(v76 + 48) = 0xE400000000000000;
  *(v76 + 64) = v73;
  *(v76 + 72) = @"Class";
  v178 = 0x80000001CA99B500;
  *(v76 + 80) = 0xD000000000000014;
  *(v76 + 88) = 0x80000001CA99B500;
  *(v76 + 104) = v73;
  *(v76 + 112) = @"DisableAutocorrection";
  *(v76 + 120) = 1;
  *(v76 + 144) = MEMORY[0x1E69E6370];
  *(v76 + 152) = @"Key";
  *(v76 + 160) = 0x6F69746369444657;
  *(v76 + 168) = 0xEF79654B7972616ELL;
  *(v76 + 184) = v73;
  *(v76 + 192) = @"Label";
  v77 = @"Class";
  v78 = @"Key";
  v79 = @"Label";
  v80 = v77;
  v81 = v78;
  v82 = v79;
  v83 = @"AutocapitalizationType";
  v84 = @"DisableAutocorrection";
  v186 = v80;
  v185 = v81;
  v184 = v82;
  v176 = v83;
  v177 = v84;
  v85 = @"Parameters";
  v86 = sub_1CA94C438("Key (WFDictionaryKey)", 21);
  v181 = v87;
  v182 = v86;
  v88 = sub_1CA94C438("Key", 3);
  v175 = v89;
  v183 = &v173;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v197;
  sub_1CA948D98();
  v91 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v193;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 200) = sub_1CA2F9F14(v182, v181, v88, v175, 0, 0, &v173 - v90, &v173 - v92);
  v94 = v192;
  *(v76 + 224) = v192;
  *(v76 + 232) = @"Placeholder";
  v183 = @"Placeholder";
  v181 = sub_1CA94C438("Key (WFDictionaryKey)", 21);
  v175 = v95;
  v96 = sub_1CA94C438("Key", 3);
  v174 = v97;
  v182 = &v173;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v173 - v90;
  sub_1CA948D98();
  v99 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 240) = sub_1CA2F9F14(v181, v175, v96, v174, 0, 0, v98, &v173 - v92);
  *(v76 + 264) = v94;
  *(v76 + 272) = @"TextAlignment";
  v101 = MEMORY[0x1E69E6158];
  *(v76 + 304) = MEMORY[0x1E69E6158];
  *(v76 + 280) = 0x7468676952;
  *(v76 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v182 = v102;
  v181 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v175 = @"TextAlignment";
  v103 = sub_1CA94C1E8();
  v104 = sub_1CA2F864C(v103);
  *(v190 + 32) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = v179;
  *(v105 + 32) = v176;
  *(v105 + 40) = 1701736270;
  *(v105 + 48) = 0xE400000000000000;
  v106 = v186;
  *(v105 + 64) = v101;
  *(v105 + 72) = v106;
  v107 = v177;
  v108 = v178;
  *(v105 + 80) = 0xD000000000000014;
  *(v105 + 88) = v108;
  *(v105 + 104) = v101;
  *(v105 + 112) = v107;
  *(v105 + 120) = 1;
  v109 = v185;
  *(v105 + 144) = MEMORY[0x1E69E6370];
  *(v105 + 152) = v109;
  *(v105 + 160) = 0xD000000000000011;
  *(v105 + 168) = 0x80000001CA9DD760;
  v110 = v184;
  *(v105 + 184) = v101;
  *(v105 + 192) = v110;
  v111 = sub_1CA94C438("Value (WFDictionaryValue)", 25);
  v177 = v112;
  v178 = v111;
  v176 = sub_1CA94C438("Value", 5);
  v114 = v113;
  *&v179 = &v173;
  MEMORY[0x1EEE9AC00](v176);
  v115 = &v173 - v197;
  sub_1CA948D98();
  v116 = v195;
  v117 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v117);
  v118 = v193;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 200) = sub_1CA2F9F14(v178, v177, v176, v114, 0, 0, v115, &v173 - v118);
  v120 = v192;
  v121 = v183;
  *(v105 + 224) = v192;
  *(v105 + 232) = v121;
  v122 = sub_1CA94C438("Value (WFDictionaryValue)", 25);
  v177 = v123;
  v178 = v122;
  v124 = sub_1CA94C438("Value", 5);
  v126 = v125;
  *&v179 = &v173;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v173 - v197;
  sub_1CA948D98();
  v128 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v105 + 240) = sub_1CA2F9F14(v178, v177, v124, v126, 0, 0, v127, &v173 - v118);
  v130 = v175;
  *(v105 + 264) = v120;
  *(v105 + 272) = v130;
  v131 = MEMORY[0x1E69E6158];
  *(v105 + 304) = MEMORY[0x1E69E6158];
  *(v105 + 280) = 0x7468676952;
  *(v105 + 288) = 0xE500000000000000;
  v132 = sub_1CA94C1E8();
  v133 = sub_1CA2F864C(v132);
  *(v190 + 40) = v133;
  v134 = swift_allocObject();
  *(v134 + 16) = v188;
  *(v134 + 32) = v186;
  *(v134 + 40) = 0xD000000000000019;
  *(v134 + 48) = 0x80000001CA99B030;
  v135 = v185;
  *(v134 + 64) = v131;
  *(v134 + 72) = v135;
  strcpy((v134 + 80), "WFDictionary");
  *(v134 + 93) = 0;
  *(v134 + 94) = -5120;
  v136 = v184;
  *(v134 + 104) = v131;
  *(v134 + 112) = v136;
  v137 = sub_1CA94C438("Dictionary (WFDictionary)", 25);
  v186 = v138;
  v187 = v137;
  v139 = sub_1CA94C438("Dictionary", 10);
  v185 = v140;
  *&v188 = &v173;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v197;
  sub_1CA948D98();
  v142 = [v195 bundleURL];
  v184 = &v173;
  MEMORY[0x1EEE9AC00](v142);
  v143 = v193;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v134 + 120) = sub_1CA2F9F14(v187, v186, v139, v185, 0, 0, &v173 - v141, &v173 - v143);
  v145 = v192;
  v146 = v183;
  *(v134 + 144) = v192;
  *(v134 + 152) = v146;
  v147 = sub_1CA94C438("Dictionary (WFDictionary)", 25);
  v186 = v148;
  v187 = v147;
  v149 = sub_1CA94C438("Dictionary", 10);
  v185 = v150;
  *&v188 = &v173;
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948D98();
  v151 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948B68();

  v152 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v153 = sub_1CA2F9F14(v187, v186, v149, v185, 0, 0, &v173 - v141, &v173 - v143);
  *(v134 + 184) = v145;
  *(v134 + 160) = v153;
  v154 = sub_1CA94C1E8();
  v155 = sub_1CA2F864C(v154);
  v156 = v190;
  *(v190 + 48) = v155;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v158 = v191;
  v191[50] = v156;
  v158[53] = v157;
  v158[54] = @"ParameterSummary";
  v159 = @"ParameterSummary";
  v160 = sub_1CA94C438("Set ${WFDictionaryKey} to ${WFDictionaryValue} in ${WFDictionary} (Parameter Summary)", 85);
  v162 = v161;
  v163 = sub_1CA94C438("Set ${WFDictionaryKey} to ${WFDictionaryValue} in ${WFDictionary}", 65);
  v165 = v164;
  v192 = &v173;
  MEMORY[0x1EEE9AC00](v163);
  v166 = &v173 - v197;
  sub_1CA948D98();
  v167 = [v195 bundleURL];
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v173 - v193;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v160, v162, v163, v165, 0, 0, v166, v168);
  v171 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v158[58] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v158[55] = v171;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA67E214()
{
  v126 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9DD880;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("page|source|web|get", 19);
  v6 = v5;
  v7 = sub_1CA94C438("page|source|web|get", 19);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = v11;
  v135 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v120 - v135;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v131 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v130 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v120 - v132;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v133 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v129 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438("HTML", 4);
  v124 = v24;
  v125 = v23;
  v25 = sub_1CA94C438("HTML", 4);
  v27 = v26;
  *&v128 = &v120;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v120 - v135;
  sub_1CA948D98();
  v29 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v132;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v125, v124, v25, v27, 0, 0, v28, &v120 - v30);
  v32 = v133;
  *(v20 + 64) = v133;
  *(v20 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438("Takes the inputted HTML and turns it into rich text, which can then be converted to other formats.", 98);
  v124 = v35;
  v125 = v34;
  v123 = sub_1CA94C438("Takes the inputted HTML and turns it into rich text, which can then be converted to other formats.", 98);
  v37 = v36;
  *&v128 = &v120;
  MEMORY[0x1EEE9AC00](v123);
  v38 = &v120 - v135;
  sub_1CA948D98();
  v39 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v39);
  sub_1CA948B68();

  v40 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v41 = sub_1CA2F9F14(v125, v124, v123, v37, 0, 0, v38, &v120 - v30);
  *(v20 + 104) = v32;
  *(v20 + 80) = v41;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v42 = sub_1CA94C1E8();
  v43 = v129;
  *(inited + 120) = sub_1CA6B3784(v42);
  *(inited + 144) = v43;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v44 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000011;
  *(inited + 208) = 0x80000001CA9A3B70;
  *(inited + 224) = v44;
  *(inited + 232) = @"Input";
  v45 = v44;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v46 = swift_initStackObject();
  v128 = xmmword_1CA981350;
  *(v46 + 16) = xmmword_1CA981350;
  *(v46 + 32) = 0x656C7069746C754DLL;
  *(v46 + 40) = 0xE800000000000000;
  v47 = MEMORY[0x1E69E6370];
  *(v46 + 48) = 0;
  *(v46 + 72) = v47;
  strcpy((v46 + 80), "ParameterKey");
  *(v46 + 93) = 0;
  *(v46 + 94) = -5120;
  *(v46 + 96) = 0x4C4D54484657;
  *(v46 + 104) = 0xE600000000000000;
  *(v46 + 120) = v45;
  *(v46 + 128) = 0x6465726975716552;
  *(v46 + 136) = 0xE800000000000000;
  *(v46 + 144) = 1;
  *(v46 + 168) = v47;
  *(v46 + 176) = 0x7365707954;
  *(v46 + 184) = 0xE500000000000000;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v46 + 216) = v129;
  *(v46 + 192) = &unk_1F4A0BA40;
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v125 = v52;
  *(inited + 240) = v51;
  *(inited + 264) = v52;
  *(inited + 272) = @"Name";
  v53 = @"Name";
  v54 = sub_1CA94C438("Make Rich Text from HTML (Action Name)", 38);
  v121 = v55;
  v122 = v54;
  v56 = sub_1CA94C438("Make Rich Text from HTML", 24);
  v120 = v57;
  v123 = &v120;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v120 - v135;
  sub_1CA948D98();
  v59 = v131;
  v60 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v120 - v132;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v122, v121, v56, v120, 0, 0, v58, v61);
  *(inited + 304) = v133;
  *(inited + 312) = @"Output";
  v63 = swift_allocObject();
  *(v63 + 16) = v128;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 0;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Rich Text from HTML (Default Output Name)", 41);
  v122 = v66;
  v123 = v65;
  v67 = sub_1CA94C438("Rich Text from HTML", 19);
  v121 = v68;
  v124 = &v120;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v120 - v135;
  sub_1CA948D98();
  v70 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v120 - v132;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v123, v122, v67, v121, 0, 0, v69, v71);
  *(v63 + 168) = v133;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 216) = v129;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = &unk_1F4A0BA70;
  v73 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v125;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1CA9813B0;
  v124 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v74 = swift_allocObject();
  *(v74 + 16) = v128;
  *(v74 + 32) = @"Class";
  *(v74 + 40) = 0xD000000000000019;
  *(v74 + 48) = 0x80000001CA99B030;
  *(v74 + 64) = v73;
  *(v74 + 72) = @"Key";
  *(v74 + 80) = 0x4C4D54484657;
  *(v74 + 88) = 0xE600000000000000;
  *(v74 + 104) = v73;
  *(v74 + 112) = @"Label";
  v75 = @"Parameters";
  v76 = @"Class";
  v77 = @"Key";
  v78 = @"Label";
  v79 = sub_1CA94C438("HTML (WFHTML)", 13);
  v122 = v80;
  v123 = v79;
  v81 = sub_1CA94C438("HTML", 4);
  v121 = v82;
  *&v128 = &v120;
  MEMORY[0x1EEE9AC00](v81);
  v127 = inited;
  v83 = v135;
  sub_1CA948D98();
  v84 = v131;
  v85 = [v131 bundleURL];
  v120 = &v120;
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v120 - v132;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v74 + 120) = sub_1CA2F9F14(v123, v122, v81, v121, 0, 0, &v120 - v83, v86);
  *(v74 + 144) = v133;
  *(v74 + 152) = @"Placeholder";
  v88 = @"Placeholder";
  v89 = sub_1CA94C438("HTML (WFHTML)", 13);
  v122 = v90;
  v123 = v89;
  v91 = sub_1CA94C438("HTML", 4);
  v121 = v92;
  *&v128 = &v120;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v120 - v83;
  sub_1CA948D98();
  v94 = [v84 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v132;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v123, v122, v91, v121, 0, 0, v93, &v120 - v95);
  *(v74 + 184) = v133;
  *(v74 + 160) = v97;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v98 = sub_1CA94C1E8();
  v99 = sub_1CA2F864C(v98);
  v100 = v125;
  *(v125 + 32) = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v102 = v127;
  *(v127 + 360) = v100;
  *(v102 + 384) = v101;
  *(v102 + 392) = @"ParameterSummary";
  v103 = @"ParameterSummary";
  v104 = sub_1CA94C438("Make rich text from ${WFHTML} (Parameter Summary)", 49);
  v106 = v105;
  v107 = sub_1CA94C438("Make rich text from ${WFHTML}", 29);
  v109 = v108;
  v133 = &v120;
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v120 - v135;
  sub_1CA948D98();
  v111 = [v131 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v104, v106, v107, v109, 0, 0, v110, &v120 - v95);
  v114 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v115 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v116 = v127;
  *(v127 + 400) = v114;
  *(v116 + 424) = v115;
  *(v116 + 432) = @"RequiredResources";
  *(v116 + 440) = &unk_1F4A0BAA0;
  *(v116 + 464) = v129;
  *(v116 + 472) = @"ResidentCompatible";
  *(v116 + 504) = MEMORY[0x1E69E6370];
  *(v116 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v117 = @"RequiredResources";
  v118 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFRunWorkflowAction.toolInvocationSummary(with:)@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  sub_1CA94AC08();
  OUTLINED_FUNCTION_1_0();
  v80 = v2;
  v81 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v79 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA94AC18();
  OUTLINED_FUNCTION_1_0();
  v82 = v5;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v78 - v10;
  v11 = sub_1CA94AC88();
  OUTLINED_FUNCTION_1_0();
  v86 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v78 - v20;
  v22 = sub_1CA94AFA8();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_19();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v78 - v30;
  v32 = sub_1CA94A2C8();
  v33 = sub_1CA94C3A8();
  sub_1CA311928(v33, v34, v32, v21);

  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1CA67F9C4(v21);
  }

  else
  {
    (*(v24 + 32))(v31, v21, v22);
    (*(v24 + 16))(v28, v31, v22);
    if ((*(v24 + 88))(v28, v22) == *MEMORY[0x1E69DB120])
    {
      (*(v24 + 96))(v28, v22);
      v36 = v85;
      v35 = v86;
      (*(v86 + 32))(v85, v28, v11);
      (*(v35 + 16))(v16, v36, v11);
      v37 = OUTLINED_FUNCTION_187();
      if (v38(v37) == *MEMORY[0x1E69DAE70])
      {
        v39 = OUTLINED_FUNCTION_187();
        v40(v39);
        v78 = v8;
        v41 = swift_projectBox();
        v42 = v82;
        v43 = v83;
        v44 = *(v82 + 16);
        v45 = v84;
        v44(v84, v41, v83);
        v46 = v78;

        v44(v46, v45, v43);
        v47 = v43;
        v48 = v42;
        if ((*(v42 + 88))(v46, v47) == *MEMORY[0x1E69DAE08])
        {
          (*(v42 + 96))(v46, v47);
          v49 = v79;
          v50 = v80;
          (*(v80 + 32))(v79, v46, v81);
          v51 = [objc_opt_self() defaultDatabase];
          sub_1CA94A9C8();
          v52 = sub_1CA94C368();

          v53 = [v51 referenceForWorkflowID_];

          if (v53)
          {
            WFWorkflowReference.toolInvocationSummary()();

            (*(v50 + 8))(v49, v81);
            (*(v48 + 8))(v84, v83);
            v54 = OUTLINED_FUNCTION_3_58();
            v55(v54);
            v56 = OUTLINED_FUNCTION_1_53();
            return v57(v56);
          }

          (*(v50 + 8))(v49, v81);
          (*(v48 + 8))(v84, v83);
          v70 = OUTLINED_FUNCTION_3_58();
          v71(v70);
          v72 = OUTLINED_FUNCTION_1_53();
          v73(v72);
        }

        else
        {
          v64 = v46;
          v65 = *(v42 + 8);
          v65(v84, v47);
          v66 = OUTLINED_FUNCTION_3_58();
          v67(v66);
          v68 = OUTLINED_FUNCTION_1_53();
          v69(v68);
          v65(v64, v47);
        }
      }

      else
      {
        v60 = *(v35 + 8);
        v60(v36, v11);
        v61 = OUTLINED_FUNCTION_1_53();
        v62(v61);
        v63 = OUTLINED_FUNCTION_187();
        (v60)(v63);
      }
    }

    else
    {
      v59 = *(v24 + 8);
      v59(v31, v22);
      v59(v28, v22);
    }
  }

  sub_1CA94C438("Run shortcut", 12);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v74 = qword_1EDB9F690;
  v75 = sub_1CA94C368();
  v76 = sub_1CA94C368();

  v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

  sub_1CA94C3A8();
  sub_1CA94A5B8();
  sub_1CA94C1E8();
  return sub_1CA94A5C8();
}

uint64_t sub_1CA67F9C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WFWorkflowReference.toolInvocationSummary()()
{
  v1 = v0;
  if ([v0 hasShortcutInputVariables] && objc_msgSend(v0, sel_receivesInputFromSearch))
  {
    sub_1CA94C438("%@ with ${WFInput}", 18);
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v2 = qword_1EDB9F690;
    OUTLINED_FUNCTION_187();
    v3 = sub_1CA94C368();
    OUTLINED_FUNCTION_187();
    v4 = sub_1CA94C368();

    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CA981310;
    v7 = [v1 name];
    v8 = sub_1CA94C3A8();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1CA282DB4();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    sub_1CA94C378();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447ED0, &qword_1CA991AF8);
    v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447ED8, &unk_1CA991B00) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CA981310;
    v14 = (v13 + v12);
    v15 = v11[14];
    *v14 = 0x7475706E494657;
    *(v14 + 1) = 0xE700000000000000;
    sub_1CA94C438("Input", 5);
    v16 = sub_1CA94C368();
    v17 = sub_1CA94C368();

    v18 = [v2 localizedStringForKey:v16 value:v17 table:0];

    sub_1CA94C3A8();
    sub_1CA94A5A8();
    v19 = *MEMORY[0x1E69DAB98];
    v20 = sub_1CA94A5B8();
    (*(*(v20 - 8) + 104))(&v14[v15], v19, v20);
    sub_1CA94C1E8();
  }

  else
  {
    v21 = [v0 name];
    sub_1CA94C3A8();

    sub_1CA94A5B8();
    sub_1CA94C1E8();
  }

  return sub_1CA94A5C8();
}

uint64_t WFDeviceCapabilityResource.capability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  v4 = sub_1CA94B4D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WFDeviceCapabilityResource.__allocating_init(mobileGestaltKey:value:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_69();
  return WFDeviceCapabilityResource.init(mobileGestaltKey:value:)(v6, v7, a3);
}

void sub_1CA67FF14()
{
  v1 = v0;
  v2 = sub_1CA94B4D8();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11WorkflowKit26WFDeviceCapabilityResource_capability;
  if (sub_1CA94B4C8())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    (*(v4 + 16))(v7, &v0[v8], v2);
    v9 = OUTLINED_FUNCTION_69();
    v11 = v10(v9);
    v12 = MEMORY[0x1E69E6158];
    if (v11 == *MEMORY[0x1E69DB3C0])
    {
      sub_1CA94C438("This device does not have Cellular Data.", 40);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v13 = qword_1EDB9F690;
      OUTLINED_FUNCTION_69();
      v14 = sub_1CA94C368();
      OUTLINED_FUNCTION_69();
      v15 = sub_1CA94C368();

      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      v17 = sub_1CA94C3A8();
      v19 = v18;
    }

    else
    {
      sub_1CA94C438("This action is not compatible with this %@.", 43);
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
      }

      v20 = qword_1EDB9F690;
      v21 = sub_1CA94C368();
      v22 = sub_1CA94C368();

      v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

      v38[1] = sub_1CA94C3A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1CA981310;
      v25 = [objc_opt_self() currentDevice];
      v26 = sub_1CA680530(v25);
      v28 = v27;
      *(v24 + 56) = v12;
      *(v24 + 64) = sub_1CA282DB4();
      if (v28)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0;
      }

      v30 = 0xE000000000000000;
      if (v28)
      {
        v30 = v28;
      }

      *(v24 + 32) = v29;
      *(v24 + 40) = v30;
      v17 = sub_1CA94C378();
      v19 = v31;

      v32 = OUTLINED_FUNCTION_69();
      v33(v32);
    }

    type metadata accessor for WFResourceError(0);
    v39 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v35;
    *(inited + 72) = v12;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_1CA94C1E8();
    sub_1CA32FD64();
    sub_1CA948AB8();
    v36 = v40;
    v37 = sub_1CA948AC8();

    [v1 updateAvailability:0 withError:v37];
  }
}

id WFDeviceCapabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFDeviceCapabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFDeviceCapabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDeviceCapabilityResource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA680530(void *a1)
{
  v2 = [a1 localizedModel];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA6805A8(uint64_t a1)
{
  result = sub_1CA94B4D8();
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

uint64_t WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(void (*a1)(char *, uint64_t))
{
  v107 = a1;
  sub_1CA949498();
  OUTLINED_FUNCTION_1_0();
  v95 = v2;
  v96 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v93 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  v94 = sub_1CA9494B8();
  OUTLINED_FUNCTION_1_0();
  v92 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v91 = v8 - v7;
  OUTLINED_FUNCTION_25_0();
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v104 = v10;
  v105 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v106 = v12 - v11;
  OUTLINED_FUNCTION_25_0();
  v102 = sub_1CA949578();
  OUTLINED_FUNCTION_1_0();
  v100 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  sub_1CA949528();
  OUTLINED_FUNCTION_1_0();
  v98 = v19;
  v99 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  v22 = v21 - v20;
  v97 = sub_1CA9495A8();
  OUTLINED_FUNCTION_1_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_0();
  v28 = v27 - v26;
  sub_1CA9494F8();
  OUTLINED_FUNCTION_1_0();
  v109 = v29;
  v110 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_3_1();
  v103 = v31;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v32);
  v101 = &v91 - v33;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v34);
  v108 = &v91 - v35;
  OUTLINED_FUNCTION_25_0();
  v36 = sub_1CA9486C8();
  OUTLINED_FUNCTION_1_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_3_1();
  v41 = v40;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v42);
  v43 = *(v38 + 16);
  v43(&v91 - v44, v107, v36);
  v45 = OUTLINED_FUNCTION_10_36();
  v47 = v46(v45);
  if (v47 == *MEMORY[0x1E6996C18])
  {
    if (qword_1EC442DC0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v47 == *MEMORY[0x1E6996C20])
  {
    if (qword_1EC442DD0 == -1)
    {
LABEL_9:
      sub_1CA94C218();
      (*(v100 + 104))(v17, *MEMORY[0x1E69A12A0], v102);
      sub_1CA949518();
      sub_1CA949598();
      (*(v98 + 8))(v22, v99);
      v48 = v108;
      sub_1CA949538();
      (*(v24 + 8))(v28, v97);
      v49 = v106;
      sub_1CA949C58();
      v43(v41, v107, v36);
      v51 = v109;
      v50 = v110;
      v52 = v101;
      v102 = *(v110 + 16);
      v102(v101, v48, v109);
      v53 = sub_1CA949F68();
      v54 = sub_1CA94CC18();
      if (OUTLINED_FUNCTION_8_35(v54))
      {
        v55 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v55 = 136315394;
        LODWORD(v100) = v49;
        v56 = sub_1CA9486B8();
        v58 = v57;
        (*(v38 + 8))(v41, v36);
        v59 = sub_1CA26B54C(v56, v58, v111);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        OUTLINED_FUNCTION_3_59();
        sub_1CA6820DC(v60, v61, MEMORY[0x1E69A11C0]);
        v62 = sub_1CA94D798();
        v64 = v63;
        v107 = *(v110 + 8);
        v107(v52, v109);
        v65 = sub_1CA26B54C(v62, v64, v111);

        *(v55 + 14) = v65;
        _os_log_impl(&dword_1CA256000, v53, v100, "Fetched availability for %s: %s", v55, 0x16u);
        swift_arrayDestroy();
        v51 = v109;
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        v50 = v110;
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();

        (*(v104 + 8))(v106, v105);
      }

      else
      {

        v107 = *(v50 + 8);
        v107(v52, v51);
        (*(v38 + 8))(v41, v36);
        (*(v104 + 8))(v49, v105);
      }

      v66 = v103;
      v67 = v108;
      v102(v103, v108, v51);
      v68 = OUTLINED_FUNCTION_201();
      v70 = v69(v68);
      if (v70 == *MEMORY[0x1E69A0EF8])
      {
        v110 = v50 + 96;
        v71 = OUTLINED_FUNCTION_201();
        v72(v71);
        v74 = v91;
        v73 = v92;
        v75 = v94;
        (*(v92 + 32))(v91, v66, v94);
        sub_1CA9494A8();
        v77 = v95;
        v76 = v96;
        v78 = v93;
        (*(v95 + 104))(v93, *MEMORY[0x1E69A0F40], v96);
        sub_1CA2B5D88();
        v80 = v79;

        (*(v77 + 8))(v78, v76);
        (*(v73 + 8))(v74, v75);
        v81 = OUTLINED_FUNCTION_201();
        (v107)(v81);
        v82 = v80 ^ 1;
        return v82 & 1;
      }

      v83 = v70;
      if (v70 == *MEMORY[0x1E69A0F00])
      {
        v84 = v107;
        v107(v67, v51);
        v85 = OUTLINED_FUNCTION_201();
        (v84)(v85);
      }

      else
      {
        v86 = *MEMORY[0x1E69A11A0];
        v87 = v67;
        v88 = v107;
        v107(v87, v51);
        if (v83 == v86)
        {
          v82 = 1;
          return v82 & 1;
        }

        v89 = OUTLINED_FUNCTION_201();
        (v88)(v89);
      }

      v82 = 0;
      return v82 & 1;
    }

LABEL_21:
    swift_once();
    goto LABEL_9;
  }

  if (v47 == *MEMORY[0x1E6996C10])
  {
    if (qword_1EC442DC8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  result = sub_1CA94D7E8();
  __break(1u);
  return result;
}

id sub_1CA680FD8()
{
  result = [objc_allocWithZone(WFAskLLMAvailabilityProvider) init];
  qword_1EC447EE0 = result;
  return result;
}

WFAskLLMAvailabilityProvider __swiftcall WFAskLLMAvailabilityProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static WFAskLLMAvailabilityProvider.shared()()
{
  if (qword_1EC442DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC447EE0;

  return v1;
}

uint64_t sub_1CA681128(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = sub_1CA9493B8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CA981310;
  a2();
  v13 = sub_1CA949398();
  v15 = v14;
  result = (*(v7 + 8))(v11, v5);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *a3 = v12;
  return result;
}

Swift::Bool __swiftcall WFAskLLMAvailabilityProvider.isUseCaseAvailable(useCaseId:)(Swift::String useCaseId)
{
  object = useCaseId._object;
  countAndFlagsBits = useCaseId._countAndFlagsBits;
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v60 = v2;
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v5 = v4 - v3;
  v58 = sub_1CA949578();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_0();
  v11 = v10 - v9;
  v57 = sub_1CA949528();
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  v56 = sub_1CA9495A8();
  OUTLINED_FUNCTION_1_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = v22 - v21;
  v24 = sub_1CA9494F8();
  OUTLINED_FUNCTION_1_0();
  v63 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_1();
  v59 = v27;
  OUTLINED_FUNCTION_31_2();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &object - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &object - v32;
  (*(v7 + 104))(v11, *MEMORY[0x1E69A12A0], v58);
  v34 = object;
  sub_1CA94C218();
  sub_1CA949508();
  sub_1CA949598();
  (*(v13 + 8))(v17, v57);
  sub_1CA949538();
  v35 = v63;
  (*(v19 + 8))(v23, v56);
  sub_1CA949C58();
  v36 = *(v35 + 16);
  v56 = v31;
  v58 = v33;
  v36(v31, v33, v24);
  sub_1CA94C218();
  v57 = v5;
  v37 = sub_1CA949F68();
  v38 = sub_1CA94CC18();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_1CA26B54C(countAndFlagsBits, v34, &v64);
    *(v39 + 12) = 2080;
    OUTLINED_FUNCTION_3_59();
    sub_1CA6820DC(v40, v41, MEMORY[0x1E69A11C0]);
    v42 = v56;
    v43 = v24;
    v44 = sub_1CA94D798();
    v46 = v45;
    v47 = *(v63 + 8);
    v47(v42, v24);
    v48 = sub_1CA26B54C(v44, v46, &v64);

    *(v39 + 14) = v48;
    _os_log_impl(&dword_1CA256000, v37, v38, "Fetched fresh use case availability for %s: %s", v39, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    v35 = v63;
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  else
  {

    v47 = *(v35 + 8);
    v43 = v24;
    v47(v56, v24);
  }

  (*(v60 + 8))(v57, v61);
  v49 = v59;
  (*(v35 + 32))(v59, v58, v43);
  v50 = OUTLINED_FUNCTION_10_36();
  v52 = v51(v50);
  v53 = *MEMORY[0x1E69A11A0];
  if (v52 != *MEMORY[0x1E69A11A0])
  {
    v47(v49, v43);
  }

  return v52 == v53;
}

Swift::Bool __swiftcall WFAskLLMAvailabilityProvider.isActionVisible()()
{
  v0 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v87 = v1;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v81 - v6;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v81 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_3_1();
  v90 = v9;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v81 - v11;
  OUTLINED_FUNCTION_25_0();
  v12 = sub_1CA9486C8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_3_1();
  v88 = v16;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v81 - v18);
  v20 = sub_1CA948698();
  v81 = sub_1CA6820DC(&qword_1EC4443A8, MEMORY[0x1E6996C28], MEMORY[0x1E6996C30]);
  v21 = sub_1CA94C1E8();
  v22 = *(v20 + 16);
  v92 = v14;
  v93 = v12;
  if (v22)
  {
    v85 = v5;
    v86 = v0;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v25 = *(v23 + 64);
    v84 = v20;
    v26 = v20 + ((v25 + 32) & ~v25);
    v94 = *(v23 + 56);
    v95 = v24;
    v96 = v23;
    v27 = (v23 - 8);
    while (1)
    {
      v95(v19, v26, v12);
      v28 = WFAskLLMAvailabilityProvider.isModelEnabled(modelName:)(v19);
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v21;
      sub_1CA32127C();
      if (__OFADD__(*(v21 + 16), (v30 & 1) == 0))
      {
        break;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F08, &qword_1CA991B48);
      if (sub_1CA94D588())
      {
        sub_1CA32127C();
        v12 = v93;
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_44;
        }

        v31 = v33;
      }

      else
      {
        v12 = v93;
      }

      v21 = v97;
      if (v32)
      {
        *(v97[7] + v31) = v28 & 1;
      }

      else
      {
        v97[(v31 >> 6) + 8] |= 1 << v31;
        v95((*(v21 + 48) + v31 * v94), v19, v12);
        *(*(v21 + 56) + v31) = v28 & 1;
        v35 = *(v21 + 16);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_42;
        }

        *(v21 + 16) = v37;
      }

      (*v27)(v19, v12);
      v26 += v94;
      if (!--v22)
      {

        v5 = v85;
        v0 = v86;
        v14 = v92;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

LABEL_15:
    v38 = v88;
    (*(v14 + 104))(v88, *MEMORY[0x1E6996C18], v12);
    v39 = sub_1CA311F50(v38, v21);
    v96 = *(v14 + 8);
    v96(v38, v12);
    if (v39 == 2 || (v39 & 1) == 0)
    {
LABEL_29:

      sub_1CA949C58();
      v54 = sub_1CA949F68();
      v55 = sub_1CA94CC18();
      if (OUTLINED_FUNCTION_8_35(v55))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_11_38(&dword_1CA256000, v56, v57, "Hiding Use Model action because PCC model is disabled");
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
      }

      OUTLINED_FUNCTION_9_39();
      v59 = v5;
      v60 = v0;
LABEL_32:
      v58(v59, v60);
      return 0;
    }

    v86 = v0;
    v40 = 1 << *(v21 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v21 + 64);
    v43 = (v40 + 63) >> 6;
    v95 = (v92 + 16);
    sub_1CA94C218();
    v0 = 0;
    v44 = 0;
    while (v42)
    {
      v45 = v44;
LABEL_26:
      v46 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v47 = v46 | (v45 << 6);
      v48 = v93;
      v49 = v89;
      (*(v92 + 16))(v89, *(v21 + 48) + *(v92 + 72) * v47, v93);
      v50 = *(*(v21 + 56) + v47);
      v51 = v91;
      v49[*(v91 + 48)] = v50;
      v52 = v49;
      v53 = v90;
      sub_1CA682124(v52, v90);
      v5 = *(v53 + *(v51 + 48));
      v96(v53, v48);
      v36 = __OFADD__(v0, v5);
      v0 += v5;
      if (v36)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {

        if (v0 <= 1)
        {
          v70 = sub_1CA94C218();
          sub_1CA68221C(v70, sub_1CA6826E4, sub_1CA6826E4);

          sub_1CA68221C(v21, sub_1CA6823D8, sub_1CA6823D8);

          v71 = v83;
          sub_1CA949C58();

          v72 = sub_1CA949F68();
          v73 = sub_1CA94CC18();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v97 = v96;
            *v74 = 136315394;
            v75 = sub_1CA94C1F8();
            v77 = sub_1CA26B54C(v75, v76, &v97);

            *(v74 + 4) = v77;
            *(v74 + 12) = 2080;
            v78 = sub_1CA94C1F8();
            v80 = sub_1CA26B54C(v78, v79, &v97);

            *(v74 + 14) = v80;
            _os_log_impl(&dword_1CA256000, v72, v73, "Use Model action hidden due to limited models count; enabled = %s, disabled = %s", v74, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_154();
            MEMORY[0x1CCAA4BF0]();
            OUTLINED_FUNCTION_154();
            MEMORY[0x1CCAA4BF0]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_9_39();
          v59 = v71;
          v60 = v86;
          goto LABEL_32;
        }

        v62 = v82;
        sub_1CA949C58();
        v63 = sub_1CA949F68();
        v64 = sub_1CA94CC08();
        v65 = OUTLINED_FUNCTION_8_35(v64);
        v66 = v86;
        if (v65)
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_11_38(&dword_1CA256000, v67, v68, "Use Model action is available, model count satisfied");
          OUTLINED_FUNCTION_154();
          MEMORY[0x1CCAA4BF0]();
        }

        OUTLINED_FUNCTION_9_39();
        v69(v62, v66);
        return 1;
      }

      v42 = *(v21 + 64 + 8 * v45);
      ++v44;
      if (v42)
      {
        v44 = v45;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA6820DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA682124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1CA682194(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4(v7, a2, a3);

    return v8;
  }

  return result;
}

_BYTE *sub_1CA68221C(_BYTE *a1, uint64_t (*a2)(char *, unint64_t, void *), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a1[32];
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1CA682194(v12, v7, v5, a3);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      return v5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1CA5C3FA4(0, v7, v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v9 = a2(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, v5);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

unint64_t type metadata accessor for WFAskLLMAvailabilityProvider()
{
  result = qword_1EC447F10;
  if (!qword_1EC447F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC447F10);
  }

  return result;
}

uint64_t sub_1CA6823D8(unint64_t *a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447F00, &qword_1CA991B40);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v27 - v4;
  v36 = sub_1CA9486C8();
  result = MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  v8 = 0;
  v39 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v29 = 0;
  v30 = (v12 + 63) >> 6;
  v33 = v6 + 16;
  v31 = v10;
  v32 = v6 + 8;
  while (v14)
  {
    v15 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = v39;
    v20 = v34;
    v21 = v35;
    v22 = *(v35 + 16);
    v23 = v36;
    v22(v34, v39[6] + *(v35 + 72) * v18, v36);
    v24 = v18;
    LOBYTE(v19) = *(v19[7] + v18);
    v25 = v37;
    v22(v37, v20, v23);
    *(v25 + *(v38 + 48)) = v19;
    sub_1CA68267C(v25);
    result = (*(v21 + 8))(v20, v23);
    v14 = v40;
    if ((v19 & 1) == 0)
    {
      *(v28 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1CA6829D8(v28, v27, v29, v39);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v30)
    {
      return sub_1CA6829D8(v28, v27, v29, v39);
    }

    v17 = v31[v8];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}