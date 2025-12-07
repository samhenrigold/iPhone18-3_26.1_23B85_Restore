uint64_t ModelContentInput.status.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1CFD365A0(v2, v3);
}

uint64_t ModelContentInput.entities.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t ModelContentInput.entityStatusList.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ModelContentInput.init(status:summarizationStatus:urgencyStatus:itemInformation:entityStatusList:topic:topLine:synopsis:isUrgent:urgencyModelVersion:summaryModelVersion:request:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = a1[1];
  v52 = *a1;
  v21 = *a2;
  v22 = *a3;
  *a9 = xmmword_1CFD4BE20;
  OUTLINED_FUNCTION_226();
  v27 = type metadata accessor for ModelContentInput(v23, v24, v25, v26);
  v57 = v27[16];
  sub_1CFD48BD8();
  OUTLINED_FUNCTION_140_1();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v56 = v27[17];
  OUTLINED_FUNCTION_140_1();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v55 = v27[18];
  OUTLINED_FUNCTION_140_1();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  *(a9 + 16) = v52;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  *(a9 + 33) = v22;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 64) = a6;
  v63 = a6;
  v61 = a17;
  v62 = a18;
  OUTLINED_FUNCTION_226();
  type metadata accessor for ModelContentInput.EntityStatus(v40, v41, v42, v43);
  v44 = sub_1CFD49218();
  OUTLINED_FUNCTION_242();
  v45 = sub_1CFD49338();

  WitnessTable = swift_getWitnessTable();
  v48 = sub_1CFD28E44(sub_1CFD3663C, v60, v44, v45, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v47);

  *(a9 + 56) = v48;
  sub_1CFD365B4(a7, a9 + v57);
  sub_1CFD365B4(a8, a9 + v56);
  sub_1CFD365B4(a10, a9 + v55);
  *(a9 + v27[19]) = a11;
  v49 = (a9 + v27[20]);
  *v49 = a12;
  v49[1] = a13;
  v50 = (a9 + v27[21]);
  *v50 = a14;
  v50[1] = a15;
  OUTLINED_FUNCTION_181_0();
  return sub_1CFD35F00();
}

uint64_t sub_1CFD28D28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for ModelContentInput.EntityStatus(0, a1, a2, a4);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_147();
  v7 = OUTLINED_FUNCTION_299();
  v8(v7);
  OUTLINED_FUNCTION_423();
  if (swift_getEnumCaseMultiPayload())
  {
    v9 = OUTLINED_FUNCTION_423();
    v10(v9);
    v11 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_90_1();
    v12 = OUTLINED_FUNCTION_173();
    v13(v12);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v11, 1, a1);
}

uint64_t sub_1CFD28E44(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1CFD49268();
  if (!v19)
  {
    return sub_1CFD491B8();
  }

  v41 = v19;
  v45 = sub_1CFD49488();
  v32 = sub_1CFD49498();
  sub_1CFD49468();
  result = sub_1CFD49258();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1CFD492B8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1CFD49478();
      result = sub_1CFD49288();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void ModelContentInput.annotatedContent<>(for:client:)(uint64_t a1, uint64_t a2)
{
  sub_1CFD292A8();
}

{
  sub_1CFD292A8();
}

{
  sub_1CFD292A8();
}

void sub_1CFD292A8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_318();
  type metadata accessor for ModelInputAndOutputKind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_313();
  sub_1CFD02140();
  OUTLINED_FUNCTION_235();
  swift_storeEnumTagMultiPayload();
  ModelInputAndOutputKind.annotatedContent(for:client:)();
  sub_1CFD35FB0();
  OUTLINED_FUNCTION_155();
}

void sub_1CFD29380()
{
  OUTLINED_FUNCTION_156();
  v2 = v1;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = *(v0 + 64);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    v24[1] = v10;

    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_204();
      sub_1CFD02140();
      v2(v25, v9);
      v15 = OUTLINED_FUNCTION_297();
      sub_1CFCE3050(v15, v16, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_44_3();
        v14 = sub_1CFD34880(v18, v19, v20, v14);
      }

      v17 = *(v14 + 2);
      if (v17 >= *(v14 + 3) >> 1)
      {
        OUTLINED_FUNCTION_413();
        v14 = sub_1CFD34880(v21, v22, v23, v14);
      }

      *(v14 + 2) = v17 + 1;
      OUTLINED_FUNCTION_113_1(&v14[64 * v17], v25[0], v25[1], v25[2], v25[3]);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_155();
}

void sub_1CFD29510()
{
  OUTLINED_FUNCTION_156();
  v4 = type metadata accessor for ModelContentInput.EntityStatus(0, *(v2 + 16), *(v2 + 24), v3);
  OUTLINED_FUNCTION_37();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16_4();
  v10 = *(v0 + 64);

  v11 = sub_1CFD49198();
  v27 = v11;
  OUTLINED_FUNCTION_193_0();
  if (v11 != sub_1CFD491F8())
  {
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      OUTLINED_FUNCTION_193_0();
      v13 = sub_1CFD491D8();
      sub_1CFD491A8();
      if (v13)
      {
        (*(v6 + 16))(v1, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v4);
      }

      else
      {
        OUTLINED_FUNCTION_212();
        v19 = sub_1CFD49418();
        if (v8 != 8)
        {
          __break(1u);
          return;
        }

        v26 = v19;
        (*(v6 + 16))(v1, &v26, v4);
        swift_unknownObjectRelease();
      }

      sub_1CFD49208();
      sub_1CFD2CF90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_44_3();
        v12 = sub_1CFD34880(v20, v21, v22, v12);
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      if (v15 >= v14 >> 1)
      {
        OUTLINED_FUNCTION_72(v14);
        OUTLINED_FUNCTION_413();
        v12 = sub_1CFD34880(v23, v24, v25, v12);
      }

      v16 = OUTLINED_FUNCTION_204();
      v17(v16);
      *(v12 + 2) = v15 + 1;
      OUTLINED_FUNCTION_113_1(&v12[64 * v15], v28, v29, v30, v31);
      OUTLINED_FUNCTION_193_0();
      v18 = sub_1CFD491F8();
      v11 = v27;
      if (v27 == v18)
      {

        goto LABEL_14;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFD2975C()
{
  v0 = sub_1CFD48CE8();
  v1 = OUTLINED_FUNCTION_6_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v2 = sub_1CFD48F68();
  v3 = OUTLINED_FUNCTION_6_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_158_0();
  v4 = sub_1CFD48F48();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_7();
  sub_1CFD48F38();
  OUTLINED_FUNCTION_197();
  sub_1CFD48F28();
  OUTLINED_FUNCTION_423();
  sub_1CFD48F18();
  sub_1CFD48F28();
  sub_1CFD48F58();
  v6 = sub_1CFD21410();
  OUTLINED_FUNCTION_395(v6);
  OUTLINED_FUNCTION_41_1();
  return sub_1CFD48FE8();
}

void sub_1CFD298A4()
{
  OUTLINED_FUNCTION_156();
  v59 = v2;
  v60 = v3;
  v5 = v4;
  v7 = v6;
  v61 = v8;
  v9 = sub_1CFD48CE8();
  v10 = OUTLINED_FUNCTION_6_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_102_1();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v63 = v12;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for ModelInputContentRequest.Kind(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  v15 = OUTLINED_FUNCTION_263();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_148_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_109_2();
  v66 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CFD02140();
  v19 = v0;
  OUTLINED_FUNCTION_173();
  sub_1CFD02140();
  if (v61 < 2u)
  {
    goto LABEL_5;
  }

  if (v61 != 2)
  {
    OUTLINED_FUNCTION_375();
LABEL_5:
    v20 = OUTLINED_FUNCTION_298();
    sub_1CFCE3050(v20, v21, v5);
    sub_1CFD30144();
    goto LABEL_6;
  }

  sub_1CFCE3050(v1, v7, v5);
  OUTLINED_FUNCTION_375();
LABEL_6:
  v22 = OUTLINED_FUNCTION_298();
  sub_1CFCE3050(v22, v23, v5);
  OUTLINED_FUNCTION_178_0();
  sub_1CFD35F58();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40);
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      sub_1CFD21410();
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_47_3();
      v26 = OUTLINED_FUNCTION_393(v31);
      OUTLINED_FUNCTION_164_0();
      sub_1CFD35FB0();
      goto LABEL_13;
    case 2u:
      sub_1CFD35FB0();
      OUTLINED_FUNCTION_275(0x654Du);
      goto LABEL_11;
    case 3u:
      sub_1CFD35FB0();
      OUTLINED_FUNCTION_54_2();
      goto LABEL_11;
    case 4u:
      sub_1CFD35FB0();
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      v24 = sub_1CFD21410();
      OUTLINED_FUNCTION_390(v24);
      OUTLINED_FUNCTION_26_3();
      v26 = OUTLINED_FUNCTION_393(v25);
      v19 = v27;
      goto LABEL_13;
    default:
      sub_1CFD35FB0();
      OUTLINED_FUNCTION_339(0x614Du);
LABEL_11:
      sub_1CFD48EF8();
      v28 = sub_1CFD21410();
      OUTLINED_FUNCTION_390(v28);
      OUTLINED_FUNCTION_26_3();
      v26 = OUTLINED_FUNCTION_393(v29);
      v19 = v30;
LABEL_13:
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_86_0();
      v32 = swift_allocObject();
      *(v32 + 16) = v26;
      *(v32 + 24) = v19;
      *(v32 + 32) = 0;
      OUTLINED_FUNCTION_284();
      OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_201(&v66);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_436();
      OUTLINED_FUNCTION_401();
      v33 = v69;
      *(v34 + 32) = v68;
      *(v34 + 48) = v33;
      OUTLINED_FUNCTION_445(v34, v70, v71);
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      swift_allocObject();
      OUTLINED_FUNCTION_116_1((v0 + *(v62 + 84)));
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_201(&v66);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_436();
      OUTLINED_FUNCTION_401();
      v35 = v73;
      v36 = v74;
      v37[2] = v72;
      v37[3] = v35;
      v38 = v75;
      v37[4] = v36;
      v37[5] = v38;
      swift_endAccess();
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      swift_allocObject();
      OUTLINED_FUNCTION_116_1((v0 + *(v62 + 80)));
      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_255();
      sub_1CFD3059C();
      OUTLINED_FUNCTION_201(&v66);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_435();
      v39 = v66;
      OUTLINED_FUNCTION_397(qword_1F4C7AFE9);
      v40 = v77;
      *(v41 + 32) = v76;
      *(v41 + 48) = v40;
      OUTLINED_FUNCTION_445(v41, v78, v79);
      v42 = *(v0 + 24);
      if (v42 != 5 && v42)
      {
        OUTLINED_FUNCTION_149_0();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        swift_allocObject();
        v43 = *(v0 + 24);
        *&v80 = *(v0 + 16);
        *(&v80 + 1) = v43;
        sub_1CFD365A0(v80, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
        v44 = sub_1CFD48FF8();
        OUTLINED_FUNCTION_337(v44, v45);
        OUTLINED_FUNCTION_177_0();
        sub_1CFD3059C();
        OUTLINED_FUNCTION_269(&v66, v65);
        sub_1CFD347F4();
        OUTLINED_FUNCTION_435();
        v39 = v66;
        OUTLINED_FUNCTION_397(qword_1F4C7AFE9);
        v46[2] = v80;
        v46[3] = v81;
        v46[4] = v82;
        v46[5] = v83;
        swift_endAccess();
      }

      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_236();
      v47 = OUTLINED_FUNCTION_299();
      v48(v47);
      v49 = sub_1CFD21410();
      OUTLINED_FUNCTION_390(v49);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_369(v50);
      OUTLINED_FUNCTION_161_0();
      v51 = OUTLINED_FUNCTION_165_0();
      v52(v51);
      OUTLINED_FUNCTION_129_1();
      v53 = swift_allocObject();
      *(v53 + 16) = v39;
      *(v53 + 24) = 2;
      v54 = v53 | 0xA000000000000000;
      OUTLINED_FUNCTION_269(&v67, v65);
      sub_1CFD347F4();
      v55 = *(v67 + 16);
      sub_1CFD34840(v55);
      v56 = v67;
      *(v67 + 16) = v55 + 1;
      v57 = (v56 + (v55 << 6));
      v57[2].n128_u64[0] = &unk_1F4C7AFE8;
      v57[2].n128_u64[1] = v63;
      OUTLINED_FUNCTION_51_2(v57, xmmword_1CFD50910);
      *(v58 + 73) = *v64;
      *(v58 + 76) = *&v64[3];
      *(v58 + 80) = 2;
      *(v58 + 88) = v54;
      swift_endAccess();
      OUTLINED_FUNCTION_155();
      return;
  }
}

void sub_1CFD29FB8()
{
  OUTLINED_FUNCTION_156();
  v2 = v1;
  v4 = v3;
  v5 = sub_1CFD48CE8();
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_9();
  v73 = v7;
  OUTLINED_FUNCTION_102_1();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v69 = v9;
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v68 = v10;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146_1();
  v71 = v12;
  v13 = OUTLINED_FUNCTION_102_1();
  v67 = type metadata accessor for ModelInputContentRequest.Kind(v13);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_158_0();
  OUTLINED_FUNCTION_16_7();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_92_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = *v4;
  v76 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v22 = *(v16 + 16);
  OUTLINED_FUNCTION_361();
  v22();
  v72 = v0;
  OUTLINED_FUNCTION_361();
  v22();
  if (v21 < 2)
  {
    v23 = *(v16 + 8);
    v24 = OUTLINED_FUNCTION_204();
    v23(v24);
    OUTLINED_FUNCTION_432();
    sub_1CFD3036C();
    (v23)(v20, v2);
LABEL_6:
    v26 = v2;
    goto LABEL_7;
  }

  if (v21 != 2)
  {
    OUTLINED_FUNCTION_432();
    sub_1CFD30AC8();
    v28 = *(v16 + 8);
    v29 = OUTLINED_FUNCTION_204();
    v28(v29);
    OUTLINED_FUNCTION_432();
    sub_1CFD3036C();
    (v28)(v20, v2);
    goto LABEL_6;
  }

  v25 = *(v16 + 8);
  v26 = v2;
  v25(v20, v2);
  OUTLINED_FUNCTION_432();
  sub_1CFD30AC8();
  v27 = OUTLINED_FUNCTION_204();
  (v25)(v27);
LABEL_7:
  OUTLINED_FUNCTION_178_0();
  v30 = v72;
  sub_1CFD35F58();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40);
      sub_1CFD48EF8();
      sub_1CFD21410();
      v34 = v73;
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_47_3();
      v32 = OUTLINED_FUNCTION_393(v66);
      OUTLINED_FUNCTION_164_0();
      v30 = v72;
      sub_1CFD35FB0();
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_275(0x654Du);
      goto LABEL_12;
    case 3u:
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_54_2();
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_48_2();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_339(0x614Du);
LABEL_12:
      sub_1CFD48EF8();
      sub_1CFD21410();
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_26_3();
      v32 = OUTLINED_FUNCTION_393(v31);
      v34 = v33;
LABEL_13:
      OUTLINED_FUNCTION_274();
      OUTLINED_FUNCTION_86_0();
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v34;
      *(v35 + 32) = 0;
      OUTLINED_FUNCTION_284();
      OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_201(&v76);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_398();
      v36 = v79;
      *(v37 + 32) = v78;
      *(v37 + 48) = v36;
      OUTLINED_FUNCTION_445(v37, v80, v81);
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v38 = swift_allocObject();
      OUTLINED_FUNCTION_81_0(*(v26 + 84));
      *(v38 + 32) = 0;

      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_201(&v76);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_398();
      v39 = v83;
      v40 = v84;
      v41[2] = v82;
      v41[3] = v39;
      v42 = v85;
      v41[4] = v40;
      v41[5] = v42;
      swift_endAccess();
      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v43 = swift_allocObject();
      OUTLINED_FUNCTION_81_0(*(v26 + 80));
      *(v43 + 32) = 0;

      OUTLINED_FUNCTION_177_0();
      OUTLINED_FUNCTION_255();
      sub_1CFD3059C();
      OUTLINED_FUNCTION_201(&v76);
      sub_1CFD347F4();
      OUTLINED_FUNCTION_195();
      v44 = v76;
      OUTLINED_FUNCTION_397(v32 + 1);
      v45 = v87;
      *(v46 + 32) = v86;
      *(v46 + 48) = v45;
      OUTLINED_FUNCTION_445(v46, v88, v89);
      v47 = *(v30 + 24);
      if (v47 && v47 != 5)
      {
        OUTLINED_FUNCTION_149_0();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        swift_allocObject();
        v48 = *(v30 + 24);
        *&v90 = *(v30 + 16);
        *(&v90 + 1) = v48;
        sub_1CFD365A0(v90, v48);
        type metadata accessor for ModelContentInput.Status(0, *(v26 + 16), *(v26 + 24), v49);
        v50 = sub_1CFD48FF8();
        OUTLINED_FUNCTION_337(v50, v51);
        OUTLINED_FUNCTION_177_0();
        sub_1CFD3059C();
        OUTLINED_FUNCTION_269(&v76, v75);
        sub_1CFD347F4();
        OUTLINED_FUNCTION_195();
        v44 = v76;
        OUTLINED_FUNCTION_397(v32 + 1);
        v52[2] = v90;
        v52[3] = v91;
        v52[4] = v92;
        v52[5] = v93;
        swift_endAccess();
      }

      OUTLINED_FUNCTION_149_0();
      sub_1CFD48EF8();
      v53 = v68;
      OUTLINED_FUNCTION_236();
      v54 = OUTLINED_FUNCTION_299();
      v55(v54);
      sub_1CFD21410();
      v56 = v73;
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_369(v57);
      OUTLINED_FUNCTION_161_0();
      v58 = OUTLINED_FUNCTION_165_0();
      v59(v58);
      OUTLINED_FUNCTION_129_1();
      v60 = swift_allocObject();
      *(v60 + 16) = v44;
      *(v60 + 24) = 2;
      v61 = v60 | 0xA000000000000000;
      OUTLINED_FUNCTION_269(&v77, v75);
      sub_1CFD347F4();
      v62 = *(v77 + 16);
      sub_1CFD34840(v62);
      v63 = v77;
      *(v77 + 16) = v62 + 1;
      v64 = (v63 + (v62 << 6));
      v64[2].n128_u64[0] = v56;
      v64[2].n128_u64[1] = v53;
      OUTLINED_FUNCTION_51_2(v64, xmmword_1CFD50910);
      *(v65 + 73) = *v74;
      *(v65 + 76) = *&v74[3];
      *(v65 + 80) = 2;
      *(v65 + 88) = v61;
      swift_endAccess();
      OUTLINED_FUNCTION_155();
      return;
  }
}

Swift::String __swiftcall ModelContentInput.feedbackString()()
{
  v4 = 3;
  v2 = ModelContentInput.feedbackString(for:)(&v4);
  object = v2._object;
  countAndFlagsBits = v2._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t sub_1CFD2A930(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1CFD35A5C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1CFD2A9F0()
{
  OUTLINED_FUNCTION_156();
  v5 = v4;
  v6 = sub_1CFD48CE8();
  v7 = OUTLINED_FUNCTION_6_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_9();
  v8 = OUTLINED_FUNCTION_102_1();
  v96 = type metadata accessor for NotificationEntity(v8);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_208();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_214();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v98 = v12;
  v99 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v97 = v13;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_427();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_146_1();
  v101 = v18;
  v19 = OUTLINED_FUNCTION_204();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_147();
  v103 = MEMORY[0x1E69E7CC0];
  sub_1CFD02140();
  OUTLINED_FUNCTION_421();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_197();
    }

    else
    {
      OUTLINED_FUNCTION_359();
    }

    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v23);
    OUTLINED_FUNCTION_191_0();
    sub_1CFD3059C();
    v0 = OUTLINED_FUNCTION_131_1(v42, v43, v44, MEMORY[0x1E69E7CC0]);
    v27 = *(v0 + 16);
    v30 = *(v0 + 24);
    v2 = v27 + 1;
    v24 = v98;
    v29 = v99;
    v25 = v97;
    if (v27 >= v30 >> 1)
    {
LABEL_35:
      v81 = OUTLINED_FUNCTION_36_4(v30);
      v0 = sub_1CFD34880(v81, v82, v83, v0);
    }

    *(v0 + 16) = v2;
    OUTLINED_FUNCTION_49_2(v0 + (v27 << 6));
  }

  else
  {
    v92 = v5;
    v93 = v0;
    v100 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F40, &qword_1CFD53B00);
    OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_298();
    sub_1CFD35F00();
    sub_1CFD35F58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CFD50920;
    OUTLINED_FUNCTION_314();
    v25 = 0;
    v94 = v1;
    v26 = *(v1 + v96[21]);
    v27 = *(v26 + 16);
    v28 = v26 - 40;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v30 = v28 + 72 * v25;
    v5 = v3;
    while (v27 != v25)
    {
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      ++v25;
      OUTLINED_FUNCTION_57_2();
      if (v0)
      {
        v95 = v32;
        v91 = *v31;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = OUTLINED_FUNCTION_44_3();
          v29 = sub_1CFCFE404(v36, v37, v38, v29);
        }

        v34 = *(v29 + 2);
        v33 = *(v29 + 3);
        v2 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v39 = OUTLINED_FUNCTION_36_4(v33);
          v29 = sub_1CFCFE404(v39, v40, v41, v29);
        }

        *(v29 + 2) = v2;
        v35 = &v29[16 * v34];
        *(v35 + 4) = v91;
        *(v35 + 5) = v0;
        v28 = v95;
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_86_0();
    v45 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
    OUTLINED_FUNCTION_0_11();
    sub_1CFD1AFF0(v46, &qword_1EC4F2A98, &unk_1CFD4D010, v47);
    OUTLINED_FUNCTION_125_1();
    v0 = sub_1CFD48ED8();
    v49 = v48;

    *(v45 + 16) = v0;
    *(v45 + 24) = v49;
    *(v45 + 32) = 1;
    sub_1CFD3059C();
    *(v24 + 32) = v104;
    *(v24 + 48) = v105;
    *(v24 + 64) = v106;
    *(v24 + 80) = v107;
    v2 = v93;
    OUTLINED_FUNCTION_143_1();
    v29 = 0;
    v25 = *(v94 + v96[20]);
    v50 = *(v25 + 16);
    v27 = v25 - 40;
    v51 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v30 = v27 + 72 * v29;
    while (v50 != v29)
    {
      if (v29 >= *(v25 + 16))
      {
        goto LABEL_34;
      }

      ++v29;
      OUTLINED_FUNCTION_57_2();
      if (v0)
      {
        v90 = *v52;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = OUTLINED_FUNCTION_44_3();
          v51 = sub_1CFCFE404(v56, v57, v58, v51);
        }

        v54 = *(v51 + 2);
        v53 = *(v51 + 3);
        if (v54 >= v53 >> 1)
        {
          v59 = OUTLINED_FUNCTION_36_4(v53);
          v51 = sub_1CFCFE404(v59, v60, v61, v51);
        }

        *(v51 + 2) = v54 + 1;
        v55 = &v51[16 * v54];
        *(v55 + 4) = v90;
        *(v55 + 5) = v0;
        v5 = v100;
        v2 = v93;
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_86_0();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_125_1();
    v63 = sub_1CFD48ED8();
    v65 = v64;

    *(v62 + 16) = v63;
    *(v62 + 24) = v65;
    *(v62 + 32) = 1;
    OUTLINED_FUNCTION_277();
    *(v24 + 96) = v108;
    *(v24 + 112) = v109;
    *(v24 + 128) = v110;
    *(v24 + 144) = v111;
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v66 = swift_allocObject();
    OUTLINED_FUNCTION_124_1((v94 + v96[9]));
    *(v66 + 32) = 1;

    OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_452();
    *(v24 + 160) = v112;
    *(v24 + 176) = v113;
    *(v24 + 192) = v114;
    *(v24 + 208) = v115;
    OUTLINED_FUNCTION_428();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_116_1((v94 + v96[10]));
    OUTLINED_FUNCTION_256();
    sub_1CFD3059C();
    *(v24 + 224) = v116;
    *(v24 + 240) = v117;
    *(v24 + 256) = OUTLINED_FUNCTION_410();
    *(v24 + 272) = v67;
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_116_1((v94 + v96[11]));
    OUTLINED_FUNCTION_256();
    sub_1CFD3059C();
    *(v24 + 288) = OUTLINED_FUNCTION_409();
    *(v24 + 304) = v68;
    *(v24 + 320) = OUTLINED_FUNCTION_408();
    *(v24 + 336) = v69;
    OUTLINED_FUNCTION_233();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_116_1((v94 + v96[8]));
    OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_451();
    *(v24 + 352) = v118;
    *(v24 + 368) = v119;
    *(v24 + 384) = v120;
    *(v24 + 400) = v121;
    sub_1CFD2A930(v24);
    sub_1CFD32634(*(v94 + v96[19]));
    sub_1CFD311A0();
    v71 = v70;

    sub_1CFD2A930(v71);
    OUTLINED_FUNCTION_1_10();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v72 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v72);
    OUTLINED_FUNCTION_451();
    v0 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = OUTLINED_FUNCTION_44_3();
      v0 = sub_1CFD34880(v84, v85, v86, v103);
    }

    v5 = v92;
    v29 = v99;
    v25 = v97;
    v24 = v98;
    v74 = *(v0 + 16);
    v73 = *(v0 + 24);
    if (v74 >= v73 >> 1)
    {
      v87 = OUTLINED_FUNCTION_36_4(v73);
      v0 = sub_1CFD34880(v87, v88, v89, v0);
    }

    sub_1CFD35FB0();
    *(v0 + 16) = v74 + 1;
    OUTLINED_FUNCTION_296(v0 + (v74 << 6));
    sub_1CFD35FB0();
  }

  OUTLINED_FUNCTION_54_2();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_236();
  v75(v25, v101, v29);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_145_1();
  v76 = sub_1CFD48FE8();
  v78 = v77;
  (*(v24 + 8))(v101, v29);
  OUTLINED_FUNCTION_129_1();
  v79 = swift_allocObject();
  *(v79 + 16) = v0;
  *(v79 + 24) = 2;
  OUTLINED_FUNCTION_232();
  *v5 = v76;
  *(v5 + 8) = v78;
  *(v5 + 16) = xmmword_1CFD50910;
  *(v5 + 32) = 1;
  *(v5 + 40) = 1;
  *(v5 + 41) = *v102;
  *(v5 + 44) = *&v102[3];
  *(v5 + 48) = 2;
  *(v5 + 56) = v80;
  OUTLINED_FUNCTION_155();
}

void sub_1CFD2B3CC()
{
  OUTLINED_FUNCTION_156();
  v2 = v1;
  v76 = v3;
  v4 = sub_1CFD48CE8();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_9();
  v6 = OUTLINED_FUNCTION_102_1();
  v75 = type metadata accessor for MessageEntity(v6);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_321();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_215();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_104_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_208();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3010, &qword_1CFD4D068);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_146();
  v78 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_211();
  sub_1CFD02140();
  OUTLINED_FUNCTION_193_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_197();
    }

    else
    {
      OUTLINED_FUNCTION_359();
    }

    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_344(v15);
    OUTLINED_FUNCTION_284();
    sub_1CFD3059C();
    v2 = OUTLINED_FUNCTION_131_1(v34, v35, v36, MEMORY[0x1E69E7CC0]);
    v20 = *(v2 + 2);
    v23 = *(v2 + 3);
    v17 = v20 + 1;
    if (v20 >= v23 >> 1)
    {
LABEL_24:
      v64 = OUTLINED_FUNCTION_36_4(v23);
      v2 = sub_1CFD34880(v64, v65, v66, v2);
    }

    *(v2 + 2) = v17;
    OUTLINED_FUNCTION_49_2(&v2[64 * v20]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3020, &unk_1CFD53AF0);
    OUTLINED_FUNCTION_60_2();
    sub_1CFD35F00();
    OUTLINED_FUNCTION_179_0();
    OUTLINED_FUNCTION_298();
    sub_1CFD35F58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFD50900;
    OUTLINED_FUNCTION_314();
    v17 = 0;
    v74 = v0;
    v18 = *(v0 + *(v75 + 56));
    v19 = *(v18 + 16);
    v20 = v18 - 40;
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v75;
LABEL_5:
    v23 = v20 + 72 * v17;
    while (v19 != v17)
    {
      if (v17 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      ++v17;
      OUTLINED_FUNCTION_57_2();
      if (v2)
      {
        v73 = *v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = OUTLINED_FUNCTION_44_3();
          v21 = sub_1CFCFE404(v28, v29, v30, v21);
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        if (v26 >= v25 >> 1)
        {
          v31 = OUTLINED_FUNCTION_68_1(v25);
          v21 = sub_1CFCFE404(v31, v32, v33, v21);
        }

        *(v21 + 2) = v26 + 1;
        v27 = &v21[16 * v26];
        *(v27 + 4) = v73;
        *(v27 + 5) = v2;
        v22 = v75;
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_86_0();
    v37 = swift_allocObject();
    v85 = v21;
    v38 = OUTLINED_FUNCTION_313();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_361();
    sub_1CFD1AFF0(v41, v42, v43, v44);
    OUTLINED_FUNCTION_125_1();
    sub_1CFD48ED8();
    OUTLINED_FUNCTION_265();

    *(v37 + 16) = &v85;
    *(v37 + 24) = v40;
    *(v37 + 32) = 1;
    OUTLINED_FUNCTION_452();
    *(inited + 32) = OUTLINED_FUNCTION_410();
    *(inited + 48) = v45;
    *(inited + 64) = OUTLINED_FUNCTION_409();
    *(inited + 80) = v46;
    OUTLINED_FUNCTION_143_1();
    OUTLINED_FUNCTION_86_0();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_124_1((v74 + v22[13]));
    *(v47 + 32) = 1;

    OUTLINED_FUNCTION_177_0();
    OUTLINED_FUNCTION_376();
    *(inited + 96) = OUTLINED_FUNCTION_408();
    *(inited + 112) = v48;
    *(inited + 128) = v79;
    *(inited + 144) = v80;
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_116_1((v74 + v22[15]));
    OUTLINED_FUNCTION_177_0();
    OUTLINED_FUNCTION_331();
    *(inited + 160) = v81;
    *(inited + 176) = v82;
    *(inited + 192) = v83;
    *(inited + 208) = v84;
    sub_1CFD2A930(inited);
    sub_1CFD32634(*(v74 + v22[16]));
    sub_1CFD311A0();
    v50 = v49;

    sub_1CFD2A930(v50);
    OUTLINED_FUNCTION_1_10();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v51 = swift_allocObject();
    OUTLINED_FUNCTION_344(v51);
    OUTLINED_FUNCTION_284();
    sub_1CFD3059C();
    v2 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = OUTLINED_FUNCTION_44_3();
      v2 = sub_1CFD34880(v67, v68, v69, v78);
    }

    v53 = *(v2 + 2);
    v52 = *(v2 + 3);
    if (v53 >= v52 >> 1)
    {
      v70 = OUTLINED_FUNCTION_36_4(v52);
      v2 = sub_1CFD34880(v70, v71, v72, v2);
    }

    sub_1CFD35FB0();
    *(v2 + 2) = v53 + 1;
    OUTLINED_FUNCTION_296(&v2[64 * v53]);
    OUTLINED_FUNCTION_212();
    sub_1CFD35FB0();
  }

  sub_1CFD48EF8();
  v54 = OUTLINED_FUNCTION_165_0();
  v55(v54);
  v56 = sub_1CFD21410();
  OUTLINED_FUNCTION_380(v56);
  OUTLINED_FUNCTION_69_0();
  v57 = sub_1CFD48FE8();
  v59 = v58;
  v60 = OUTLINED_FUNCTION_419();
  v61(v60);
  OUTLINED_FUNCTION_129_1();
  v62 = swift_allocObject();
  *(v62 + 16) = v2;
  *(v62 + 24) = 2;
  OUTLINED_FUNCTION_232();
  *v76 = v57;
  *(v76 + 8) = v59;
  *(v76 + 16) = xmmword_1CFD50910;
  *(v76 + 32) = 1;
  *(v76 + 40) = 1;
  *(v76 + 41) = *v77;
  *(v76 + 44) = *&v77[3];
  *(v76 + 48) = 2;
  *(v76 + 56) = v63;
  OUTLINED_FUNCTION_155();
}

void sub_1CFD2BB50()
{
  OUTLINED_FUNCTION_156();
  v226 = v1;
  v2 = v251;
  v229 = type metadata accessor for QuotedRegion(0);
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_9();
  v240 = v4;
  v5 = OUTLINED_FUNCTION_102_1();
  type metadata accessor for MailEntity.MailThreadMessage(v5);
  OUTLINED_FUNCTION_37();
  v230 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_9();
  v233 = v7;
  OUTLINED_FUNCTION_102_1();
  v8 = sub_1CFD48CE8();
  v9 = OUTLINED_FUNCTION_6_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_9();
  v243 = v10;
  v11 = OUTLINED_FUNCTION_102_1();
  v235 = type metadata accessor for MailEntity(v11);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v225 = v13;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_102_1();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_208();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_427();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_92_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_148_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_121_0();
  v242 = v22;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_146_1();
  v24 = OUTLINED_FUNCTION_64_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_146();
  sub_1CFD02140();
  OUTLINED_FUNCTION_193_0();
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = *v0;
    v29 = v0[1];
    OUTLINED_FUNCTION_67_0();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v30);
    OUTLINED_FUNCTION_191_0();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_131_1(v128, v129, v130, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_207();
    if (!v92)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F60, &unk_1CFD53AE0);
  OUTLINED_FUNCTION_59_2();
  sub_1CFD35F00();
  OUTLINED_FUNCTION_63_1();
  sub_1CFD35F58();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_236();
  v31 = OUTLINED_FUNCTION_261();
  v238 = v32;
  v32(v31);
  sub_1CFD21410();
  sub_1CFD48CD8();
  v33 = OUTLINED_FUNCTION_371(v242);
  v35 = v34;
  v36 = OUTLINED_FUNCTION_298();
  v237 = v37;
  v37(v36);
  OUTLINED_FUNCTION_129_1();
  v38 = swift_allocObject();
  sub_1CFD31780();
  *(v38 + 16) = v39;
  *(v38 + 24) = 2;
  v42 = OUTLINED_FUNCTION_131_1(v39, v40, v41, MEMORY[0x1E69E7CC0]);
  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  v244 = v42;
  if (v44 >= v43 >> 1)
  {
    OUTLINED_FUNCTION_72(v43);
    OUTLINED_FUNCTION_413();
    v244 = sub_1CFD34880(v206, v207, v208, v244);
  }

  *(v244 + 2) = v44 + 1;
  v45 = &v244[64 * v44];
  v26 = v244;
  *(v45 + 32) = v33;
  *(v45 + 40) = v35;
  *(v45 + 48) = xmmword_1CFD50910;
  *(v45 + 64) = 1;
  *(v45 + 72) = 1;
  *(v45 + 73) = v252;
  OUTLINED_FUNCTION_280(v45);
  *(v46 + 80) = v47;
  *(v46 + 88) = v38 | 0xA000000000000000;
  v29 = v225;
  v48 = v225 + *(v235 + 132);
  v49 = v48[8];
  if (v49 == 255)
  {
    goto LABEL_63;
  }

  v28 = *v48;
  if ((v49 & 1) == 0)
  {
    if (*(v28 + 2))
    {
      v54 = 0;
      v132 = v225 + *(v235 + 88);
      v220 = *v132;
      v227 = v132[8];
      v224 = v225[28];
      v133 = *(v28 + 2);
      v2 = v233;
      v228 = v133;
      while (2)
      {
        if (v54 >= v133)
        {
          goto LABEL_68;
        }

        v245 = v26;
        v241 = v54 + 1;
        OUTLINED_FUNCTION_190_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
        v134 = swift_allocObject();
        *(v134 + 16) = xmmword_1CFD50930;
        OUTLINED_FUNCTION_314();
        v135 = 0;
        v136 = *(v2 + 88);
        v2 = *(v136 + 16);
        v29 = v136 - 40;
        v26 = MEMORY[0x1E69E7CC0];
LABEL_45:
        v54 = v29 + 72 * v135;
        while (v2 != v135)
        {
          if (v135 >= *(v136 + 16))
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          ++v135;
          OUTLINED_FUNCTION_57_2();
          if (v28)
          {
            v239 = *v137;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v141 = OUTLINED_FUNCTION_44_3();
              v26 = sub_1CFCFE404(v141, v142, v143, v26);
            }

            v139 = *(v26 + 16);
            v138 = *(v26 + 24);
            if (v139 >= v138 >> 1)
            {
              OUTLINED_FUNCTION_72(v138);
              OUTLINED_FUNCTION_416();
              v26 = sub_1CFCFE404(v144, v145, v146, v26);
            }

            *(v26 + 16) = v139 + 1;
            v140 = v26 + 16 * v139;
            *(v140 + 32) = v239;
            *(v140 + 40) = v28;
            goto LABEL_45;
          }
        }

        OUTLINED_FUNCTION_86_0();
        v147 = swift_allocObject();
        v246 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
        OUTLINED_FUNCTION_0_11();
        OUTLINED_FUNCTION_70();
        sub_1CFD1AFF0(v148, v149, v150, v151);
        OUTLINED_FUNCTION_125_1();
        v152 = sub_1CFD48ED8();
        v154 = v153;

        *(v147 + 16) = v152;
        *(v147 + 24) = v154;
        *(v147 + 32) = 1;
        OUTLINED_FUNCTION_331();
        v155 = v254;
        *(v134 + 32) = v253;
        *(v134 + 48) = v155;
        v156 = v256;
        *(v134 + 64) = v255;
        *(v134 + 80) = v156;
        OUTLINED_FUNCTION_143_1();
        OUTLINED_FUNCTION_86_0();
        v157 = swift_allocObject();
        v2 = v233;
        v158 = *(v233 + 24);
        *(v157 + 16) = *(v233 + 16);
        *(v157 + 24) = v158;
        *(v157 + 32) = 1;

        OUTLINED_FUNCTION_387();
        v159 = v258;
        *(v134 + 96) = v257;
        *(v134 + 112) = v159;
        v160 = v260;
        *(v134 + 128) = v259;
        *(v134 + 144) = v160;
        OUTLINED_FUNCTION_71_1();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        swift_allocObject();
        OUTLINED_FUNCTION_116_1((v233 + v230[9]));
        OUTLINED_FUNCTION_304();
        v161 = v262;
        *(v134 + 160) = v261;
        *(v134 + 176) = v161;
        v162 = v264;
        *(v134 + 192) = v263;
        *(v134 + 208) = v162;
        v163 = OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_335(v163);
        OUTLINED_FUNCTION_86_0();
        swift_allocObject();
        OUTLINED_FUNCTION_116_1((v233 + v230[10]));
        OUTLINED_FUNCTION_304();
        v164 = v266;
        *(v134 + 224) = v265;
        *(v134 + 240) = v164;
        v165 = v268;
        *(v134 + 256) = v267;
        *(v134 + 272) = v165;
        v166 = OUTLINED_FUNCTION_118_1();
        OUTLINED_FUNCTION_333(v166);
        OUTLINED_FUNCTION_246();
        *(swift_allocObject() + 16) = (*(v233 + v230[8]) & 1) == 0;
        OUTLINED_FUNCTION_376();
        v167 = v270;
        *(v134 + 288) = v269;
        *(v134 + 304) = v167;
        v168 = v272;
        *(v134 + 320) = v271;
        *(v134 + 336) = v168;
        OUTLINED_FUNCTION_290();
        OUTLINED_FUNCTION_86_0();
        v169 = swift_allocObject();
        *(v169 + 16) = sub_1CFD48C98();
        *(v169 + 24) = v170;
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_444();
        v171 = v274;
        *(v134 + 352) = v273;
        *(v134 + 368) = v171;
        v172 = v276;
        *(v134 + 384) = v275;
        *(v134 + 400) = v172;
        OUTLINED_FUNCTION_270();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        v173 = swift_allocObject();
        v246 = v224;

        OUTLINED_FUNCTION_125_1();
        sub_1CFD48ED8();
        OUTLINED_FUNCTION_360();

        *(v173 + 16) = &v246;
        *(v173 + 24) = 1;
        *(v173 + 32) = 0;
        OUTLINED_FUNCTION_384();
        v174 = v278;
        *(v134 + 416) = v277;
        *(v134 + 432) = v174;
        v175 = v280;
        *(v134 + 448) = v279;
        *(v134 + 464) = v175;
        OUTLINED_FUNCTION_270();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        v176 = swift_allocObject();
        if (v227)
        {
          countAndFlagsBits = OUTLINED_FUNCTION_141_0();
        }

        else
        {
          v246 = v220;
          v179 = MailEntity.Categories.userFacingDescription()();
          object = v179._object;
          countAndFlagsBits = v179._countAndFlagsBits;
        }

        v26 = v245;
        *(v176 + 16) = countAndFlagsBits;
        *(v176 + 24) = object;
        *(v176 + 32) = 0;
        OUTLINED_FUNCTION_277();
        v180 = v248;
        *(v134 + 480) = v247;
        *(v134 + 496) = v180;
        v181 = v250;
        *(v134 + 512) = v249;
        *(v134 + 528) = v181;
        OUTLINED_FUNCTION_1_10();
        sub_1CFD48EF8();
        OUTLINED_FUNCTION_86_0();
        v182 = swift_allocObject();
        OUTLINED_FUNCTION_168_0(v182);
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_277();
        v183 = *&v251[16];
        *(v134 + 544) = *v251;
        *(v134 + 560) = v183;
        v184 = *&v251[48];
        *(v134 + 576) = *&v251[32];
        *(v134 + 592) = v184;
        OUTLINED_FUNCTION_194_0();
        v185 = OUTLINED_FUNCTION_294();
        v238(v185);
        v28 = sub_1CFD21410();
        sub_1CFD48CD8();
        OUTLINED_FUNCTION_26_3();
        OUTLINED_FUNCTION_371(v186);
        OUTLINED_FUNCTION_360();
        v187 = OUTLINED_FUNCTION_140();
        v237(v187);
        OUTLINED_FUNCTION_129_1();
        v188 = swift_allocObject();
        *(v188 + 16) = v134;
        *(v188 + 24) = 2;
        v29 = *(v245 + 16);
        v189 = *(v245 + 24);
        if (v29 >= v189 >> 1)
        {
          v192 = OUTLINED_FUNCTION_36_4(v189);
          v26 = sub_1CFD34880(v192, v193, v194, v245);
        }

        *(v26 + 16) = v29 + 1;
        v190 = v26 + (v29 << 6);
        *(v190 + 32) = v28;
        *(v190 + 40) = v242;
        OUTLINED_FUNCTION_352();
        OUTLINED_FUNCTION_163_0(v191);
        if (v241 != v228)
        {
          OUTLINED_FUNCTION_418();
          continue;
        }

        break;
      }
    }

LABEL_63:
    OUTLINED_FUNCTION_182_0();
    sub_1CFD35FB0();
    sub_1CFD35FB0();
    goto LABEL_64;
  }

  v29 = v225[18];
  memcpy(v251, v225 + 9, sizeof(v251));

  sub_1CFCDB100(v251, &v247);
  v50 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v209 = OUTLINED_FUNCTION_43_3();
    v50 = sub_1CFD34988(v209, v210, v211, v212);
  }

  v52 = *(v50 + 2);
  v51 = *(v50 + 3);
  v53 = v240;
  if (v52 >= v51 >> 1)
  {
    v213 = OUTLINED_FUNCTION_36_4(v51);
    v50 = sub_1CFD34988(v213, v214, v215, v50);
  }

  *(v50 + 2) = v52 + 1;
  memcpy(&v50[72 * v52 + 32], v251, 0x41uLL);
  if (!*(v28 + 2))
  {
LABEL_62:
    OUTLINED_FUNCTION_182_0();
    sub_1CFD35FB0();
    sub_1CFD35FB0();

    goto LABEL_64;
  }

  v54 = 0;
  v55 = v225 + *(v235 + 88);
  v216 = *v55;
  v221 = v55[8];
  v26 = *(v29 + 16);
  v219 = v225[21];
  v218 = v225[22];
  v217 = v225[28];
  v56 = *(v28 + 2);
  v222 = v56;
  v223 = v50;
  while (2)
  {
    if (v54 < v56)
    {
      v236 = v54 + 1;
      OUTLINED_FUNCTION_170_0(v54);
      sub_1CFD35F58();
      QuotedRegion.extractInfo(handles:)(v50);
      v28 = MEMORY[0x1E69E7CC0];
      *&v253 = MEMORY[0x1E69E7CC0];
      v57 = *(v53 + 24);
      v234 = *(v53 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
      v58 = swift_allocObject();
      v58[1] = xmmword_1CFD508F0;
      v232 = v57;

      OUTLINED_FUNCTION_314();
      v59 = 0;
      v60 = v28;
LABEL_15:
      v54 = v29 - 40 + 72 * v59;
      while (v26 != v59)
      {
        if (v59 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_66;
        }

        ++v59;
        OUTLINED_FUNCTION_57_2();
        if (v28)
        {
          v62 = *v61;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = OUTLINED_FUNCTION_44_3();
            v60 = sub_1CFCFE404(v65, v66, v67, v60);
          }

          v2 = *(v60 + 2);
          v63 = *(v60 + 3);
          if (v2 >= v63 >> 1)
          {
            v68 = OUTLINED_FUNCTION_36_4(v63);
            v60 = sub_1CFCFE404(v68, v69, v70, v60);
          }

          *(v60 + 2) = v2 + 1;
          v64 = &v60[16 * v2];
          *(v64 + 4) = v62;
          *(v64 + 5) = v28;
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_86_0();
      v71 = swift_allocObject();
      v246 = v60;
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_226();
      v76 = sub_1CFD1AFF0(v72, v73, v74, v75);
      OUTLINED_FUNCTION_125_1();
      sub_1CFD48ED8();
      OUTLINED_FUNCTION_360();

      *(v71 + 16) = &v246;
      *(v71 + 24) = v231;
      *(v71 + 32) = 1;
      v2 = v251;
      OUTLINED_FUNCTION_331();
      v77 = v258;
      v58[2] = v257;
      v58[3] = v77;
      v78 = v260;
      v58[4] = v259;
      v58[5] = v78;
      OUTLINED_FUNCTION_143_1();
      OUTLINED_FUNCTION_86_0();
      v79 = swift_allocObject();
      OUTLINED_FUNCTION_124_1((v240 + *(v229 + 32)));
      *(v79 + 32) = 1;

      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_387();
      v80 = v262;
      v58[6] = v261;
      v58[7] = v80;
      v81 = v264;
      v58[8] = v263;
      v58[9] = v81;
      OUTLINED_FUNCTION_71_1();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v82 = swift_allocObject();
      *(v82 + 16) = v219;
      *(v82 + 24) = v218;
      *(v82 + 32) = 0;

      OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_304();
      v83 = v266;
      v58[10] = v265;
      v58[11] = v83;
      v84 = v268;
      v58[12] = v267;
      v58[13] = v84;
      v85 = OUTLINED_FUNCTION_50_2();
      OUTLINED_FUNCTION_335(v85);
      OUTLINED_FUNCTION_86_0();
      v86 = swift_allocObject();
      *(v86 + 16) = v234;
      *(v86 + 24) = v232;
      *(v86 + 32) = 0;
      OUTLINED_FUNCTION_304();
      v87 = v270;
      v58[14] = v269;
      v58[15] = v87;
      v88 = v272;
      v58[16] = v271;
      v58[17] = v88;
      sub_1CFD2A930(v58);
      OUTLINED_FUNCTION_270();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v89 = swift_allocObject();
      v246 = v217;

      OUTLINED_FUNCTION_125_1();
      sub_1CFD48ED8();
      OUTLINED_FUNCTION_265();

      *(v89 + 16) = &v246;
      *(v89 + 24) = v76;
      OUTLINED_FUNCTION_325();
      OUTLINED_FUNCTION_384();
      v90 = v253;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_44_3();
        v90 = sub_1CFD34880(v113, v114, v115, v90);
      }

      OUTLINED_FUNCTION_110_1();
      if (v92)
      {
        v116 = OUTLINED_FUNCTION_8_7(v91);
        v90 = sub_1CFD34880(v116, v117, v118, v90);
      }

      OUTLINED_FUNCTION_302();
      OUTLINED_FUNCTION_113_1(v93, v273, v274, v275, v276);
      OUTLINED_FUNCTION_270();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v94 = swift_allocObject();
      if (v221)
      {
        v95 = OUTLINED_FUNCTION_141_0();
      }

      else
      {
        v246 = v216;
        v97 = MailEntity.Categories.userFacingDescription()();
        v96 = v97._object;
        v95 = v97._countAndFlagsBits;
      }

      *(v94 + 16) = v95;
      *(v94 + 24) = v96;
      *(v94 + 32) = 0;
      OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_110_1();
      if (v92)
      {
        v119 = OUTLINED_FUNCTION_8_7(v98);
        v90 = sub_1CFD34880(v119, v120, v121, v90);
      }

      OUTLINED_FUNCTION_302();
      OUTLINED_FUNCTION_113_1(v99, v277, v278, v279, v280);
      OUTLINED_FUNCTION_1_10();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_86_0();
      v100 = swift_allocObject();
      OUTLINED_FUNCTION_344(v100);
      OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_110_1();
      if (v92)
      {
        v122 = OUTLINED_FUNCTION_8_7(v101);
        v90 = sub_1CFD34880(v122, v123, v124, v90);
      }

      OUTLINED_FUNCTION_302();
      OUTLINED_FUNCTION_113_1(v102, v247, v248, v249, v250);
      OUTLINED_FUNCTION_194_0();
      v103 = OUTLINED_FUNCTION_263();
      v238(v103);
      v28 = sub_1CFD21410();
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_371(v104);
      OUTLINED_FUNCTION_265();
      v105 = OUTLINED_FUNCTION_294();
      v237(v105);
      OUTLINED_FUNCTION_129_1();
      v106 = swift_allocObject();
      *(v106 + 16) = v90;
      *(v106 + 24) = 2;
      v108 = *(v244 + 2);
      v107 = *(v244 + 3);
      if (v108 >= v107 >> 1)
      {
        v125 = OUTLINED_FUNCTION_68_1(v107);
        v244 = sub_1CFD34880(v125, v126, v127, v244);
      }

      v53 = v240;
      OUTLINED_FUNCTION_159_0();
      sub_1CFD35FB0();
      *(v244 + 2) = v108 + 1;
      v109 = &v244[64 * v108];
      v109[2].n128_u64[0] = v28;
      v109[2].n128_u64[1] = v243;
      OUTLINED_FUNCTION_51_2(v109, xmmword_1CFD50910);
      *(v110 + 73) = v246;
      OUTLINED_FUNCTION_280(v110);
      *(v111 + 80) = v112;
      *(v111 + 88) = v106;
      if (v236 != v222)
      {
        OUTLINED_FUNCTION_418();
        v50 = v223;
        continue;
      }

      v26 = v244;
      goto LABEL_62;
    }

    break;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  v203 = OUTLINED_FUNCTION_8_7(v54);
  v26 = sub_1CFD34880(v203, v204, v205, v26);
LABEL_40:
  *(v26 + 16) = v28;
  v131 = (v26 + (v29 << 6));
  v131[2] = *v251;
  v131[3] = *&v251[16];
  v131[4] = *&v251[32];
  v131[5] = *(v2 + 48);
LABEL_64:
  OUTLINED_FUNCTION_363();
  v195 = OUTLINED_FUNCTION_263();
  v196(v195);
  v197 = sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_332(v198);
  OUTLINED_FUNCTION_136_1();
  v199 = OUTLINED_FUNCTION_261();
  v200(v199);
  OUTLINED_FUNCTION_129_1();
  v201 = swift_allocObject();
  v202 = sub_1CFD35AC4(v26);

  *(v201 + 16) = v202;
  *(v201 + 24) = 2;
  *v226 = v197;
  *(v226 + 8) = v243;
  *(v226 + 24) = 0;
  *(v226 + 32) = 0;
  *(v226 + 16) = 0;
  *(v226 + 40) = 2;
  *(v226 + 41) = v246;
  *(v226 + 44) = *(&v246 + 3);
  *(v226 + 48) = 1;
  *(v226 + 56) = v201 | 0xA000000000000000;
  OUTLINED_FUNCTION_155();
}

void sub_1CFD2CF90()
{
  OUTLINED_FUNCTION_156();
  v5 = v4;
  v648 = v7;
  v649 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC0, &unk_1CFD4BF60);
  OUTLINED_FUNCTION_6_2(v8);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v615 = v10;
  v11 = OUTLINED_FUNCTION_102_1();
  v628 = type metadata accessor for NotificationEntity(v11);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_9();
  v617 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34B0, &qword_1CFD50A00);
  OUTLINED_FUNCTION_6_2(v14);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_1();
  v624 = v16;
  v17 = OUTLINED_FUNCTION_102_1();
  v635 = type metadata accessor for MessageEntity(v17);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_9();
  v621 = v19;
  OUTLINED_FUNCTION_102_1();
  v634 = sub_1CFD48E38();
  OUTLINED_FUNCTION_37();
  v631 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_185();
  v618 = v22;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_121_0();
  v610 = v24;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_121_0();
  v625 = v26;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_146_1();
  v627 = v28;
  v29 = OUTLINED_FUNCTION_102_1();
  v638 = type metadata accessor for QuotedRegion(v29);
  OUTLINED_FUNCTION_37();
  *&v640 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_9();
  v651 = v32;
  v33 = OUTLINED_FUNCTION_102_1();
  v637._rawValue = type metadata accessor for MailEntity.MailThreadMessage(v33);
  OUTLINED_FUNCTION_37();
  v639 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_9();
  v642 = v36;
  OUTLINED_FUNCTION_102_1();
  v37 = sub_1CFD48CE8();
  v38 = OUTLINED_FUNCTION_6_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9_9();
  v654 = v39;
  OUTLINED_FUNCTION_102_1();
  v655 = sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v650 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_185();
  v611 = v42;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_121_0();
  v612 = v44;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_121_0();
  v620 = v46;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_121_0();
  v645 = v48;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_121_0();
  v647 = v50;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_121_0();
  v644 = v52;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_121_0();
  v646 = v54;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_121_0();
  v653 = v56;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_146_1();
  v656 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F34B8, &qword_1CFD50A08);
  OUTLINED_FUNCTION_6_2(v59);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_22_1();
  v630 = v61;
  v62 = OUTLINED_FUNCTION_102_1();
  v652 = type metadata accessor for MailEntity(v62);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_9_9();
  v632 = v64;
  v65 = *(v5 + 16);
  OUTLINED_FUNCTION_16_7();
  v643 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v614 = &v608 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_241();
  v609 = v71;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_241();
  v613 = v73;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_241();
  v619 = v75;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_241();
  v623 = v77;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_241();
  v616 = v79;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_241();
  v622 = v81;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_146();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_241();
  *&v626 = v84;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_241();
  v629 = v86;
  OUTLINED_FUNCTION_216();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_22_1();
  v633 = v88;
  v89 = OUTLINED_FUNCTION_264();
  v636.n128_u64[0] = v90;
  v93 = type metadata accessor for ModelContentInput.EntityStatus(v89, v91, v90, v92);
  OUTLINED_FUNCTION_37();
  v95 = v94;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_321();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_108_1();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_215();
  v99 = v65;
  v100 = swift_dynamicCastMetatype();
  v641 = v65;
  if (!v100)
  {
    v651 = v2;
    v652 = v1;
    v107 = v649;
    v108 = MEMORY[0x1E69E7CC0];
    v109 = v635;
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_403();
      *&v680 = v108;
      v110 = OUTLINED_FUNCTION_235();
      v111(v110);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v114 = *v3;
        v115 = *(v3 + 1);
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_225(v116 + 18);
        }

        else
        {
          OUTLINED_FUNCTION_67_0();
          OUTLINED_FUNCTION_225(v283 | 0x20);
        }

        OUTLINED_FUNCTION_86_0();
        v117 = swift_allocObject();
        OUTLINED_FUNCTION_168_0(v117);
        OUTLINED_FUNCTION_107_0();
        sub_1CFD3059C();
        OUTLINED_FUNCTION_131_1(v284, v285, v286, MEMORY[0x1E69E7CC0]);
        OUTLINED_FUNCTION_122_0();
        if (v192)
        {
          v288 = OUTLINED_FUNCTION_53_2(v287);
          v114 = sub_1CFD34880(v288, v289, v290, v114);
        }
      }

      else
      {
        v258 = v641;
        type metadata accessor for ModelContentInput.EntityStatus.EntityContentSource(255, v641, v636.n128_i64[0], v113);
        OUTLINED_FUNCTION_264();
        LODWORD(v649) = v3[*(swift_getTupleTypeMetadata2() + 48)];
        v259 = v643;
        v260 = v652;
        v651 = *(v643 + 32);
        (v651)(v652, v3, v258);
        v261 = v109;
        v262 = *(v259 + 16);
        v262(v622, v260, v258);
        v263 = v624;
        OUTLINED_FUNCTION_235();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_213();
          __swift_storeEnumTagSinglePayload(v264, v265, v266, v267);
          OUTLINED_FUNCTION_60_2();
          v124 = v621;
          sub_1CFD35F00();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_1CFD50900;
          v136 = v620;
          OUTLINED_FUNCTION_314();
          v135 = 0;
          v268 = *(v124 + *(v261 + 56));
          v269 = *(v268 + 16);
          v0 = v268 - 40;
          v270 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            OUTLINED_FUNCTION_403();
            do
            {
              if (v269 == v135)
              {
                OUTLINED_FUNCTION_86_0();
                v360 = swift_allocObject();
                *v662 = v270;
                v361 = OUTLINED_FUNCTION_138_1();
                __swift_instantiateConcreteTypeFromMangledNameV2(v361, v362);
                OUTLINED_FUNCTION_0_11();
                sub_1CFD1AFF0(v363, &qword_1EC4F2A98, &unk_1CFD4D010, v364);
                OUTLINED_FUNCTION_125_1();
                v365 = sub_1CFD48ED8();
                v367 = v366;

                *(v360 + 16) = v365;
                *(v360 + 24) = v367;
                *(v360 + 32) = 1;
                OUTLINED_FUNCTION_452();
                v368 = v685;
                *(v104 + 32) = v684;
                *(v104 + 48) = v368;
                v369 = v687;
                *(v104 + 64) = v686;
                *(v104 + 80) = v369;
                OUTLINED_FUNCTION_143_1();
                OUTLINED_FUNCTION_86_0();
                v370 = swift_allocObject();
                v371 = v635;
                v372 = v621;
                OUTLINED_FUNCTION_81_0(*(v635 + 52));
                *(v370 + 32) = 1;

                OUTLINED_FUNCTION_230();
                OUTLINED_FUNCTION_376();
                v373 = v689;
                *(v104 + 96) = v688;
                *(v104 + 112) = v373;
                v374 = v691;
                *(v104 + 128) = v690;
                *(v104 + 144) = v374;
                sub_1CFD48EF8();
                OUTLINED_FUNCTION_86_0();
                v375 = swift_allocObject();
                OUTLINED_FUNCTION_81_0(*(v371 + 60));
                *(v375 + 32) = 0;

                OUTLINED_FUNCTION_230();
                OUTLINED_FUNCTION_331();
                v376 = v659;
                *(v104 + 160) = v658;
                *(v104 + 176) = v376;
                v377 = v661;
                *(v104 + 192) = v660;
                *(v104 + 208) = v377;
                sub_1CFD2A930(v104);
                sub_1CFD32634(*(v372 + *(v371 + 64)));
                sub_1CFD311A0();
                OUTLINED_FUNCTION_443();
                sub_1CFD2A930(v104);
                OUTLINED_FUNCTION_1_10();
                sub_1CFD48EF8();
                OUTLINED_FUNCTION_86_0();
                swift_allocObject();
                LOBYTE(v676) = v649;
                v378 = sub_1CFD24AC8();
                OUTLINED_FUNCTION_293(v378, v379);
                sub_1CFD3059C();
                v114 = v680;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v585 = OUTLINED_FUNCTION_44_3();
                  v114 = sub_1CFD34880(v585, v586, v587, v114);
                }

                v380 = v643;
                v381 = *(v114 + 3);
                if (*(v114 + 2) >= v381 >> 1)
                {
                  v588 = OUTLINED_FUNCTION_53_2(v381);
                  v591 = sub_1CFD34880(v588, v589, v590, v114);
                  v380 = v643;
                  v114 = v591;
                }

                (*(v380 + 8))(v652, v641);
                v382 = OUTLINED_FUNCTION_119_1();
                OUTLINED_FUNCTION_113_1(v383, v382, *&v662[16], *&v662[32], *&v662[48]);
                OUTLINED_FUNCTION_62_2();
                sub_1CFD35FB0();
LABEL_127:
                OUTLINED_FUNCTION_283();
                sub_1CFD48EF8();
                OUTLINED_FUNCTION_144_1();
                v479 = OUTLINED_FUNCTION_235();
                v480 = v655;
                v481(v479);
                v104 = sub_1CFD21410();
                v308 = v654;
                sub_1CFD48CD8();
                v313 = 2;
                OUTLINED_FUNCTION_45_3();
LABEL_155:
                sub_1CFD48FE8();
                v571 = OUTLINED_FUNCTION_200();
                v572(v571, v480);
                OUTLINED_FUNCTION_129_1();
                v573 = swift_allocObject();
                *(v573 + 16) = v114;
                *(v573 + 24) = 2;
                OUTLINED_FUNCTION_232();
                v316 = xmmword_1CFD50910;
                v317 = 1;
LABEL_156:
                v329 = 1;
                goto LABEL_157;
              }

              if (v135 >= *(v268 + 16))
              {
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
                goto LABEL_163;
              }

              ++v135;
              OUTLINED_FUNCTION_57_2();
            }

            while (!v124);
            v272 = *v271;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v651 = v0;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v277 = OUTLINED_FUNCTION_44_3();
              v270 = sub_1CFCFE404(v277, v278, v279, v270);
            }

            v275 = *(v270 + 2);
            v274 = *(v270 + 3);
            if (v275 >= v274 >> 1)
            {
              v280 = OUTLINED_FUNCTION_36_4(v274);
              v270 = sub_1CFCFE404(v280, v281, v282, v270);
            }

            *(v270 + 2) = v275 + 1;
            v276 = &v270[16 * v275];
            *(v276 + 4) = v272;
            *(v276 + 5) = v124;
            v136 = v620;
            v0 = v651;
          }
        }

        OUTLINED_FUNCTION_154_0();
        __swift_storeEnumTagSinglePayload(v337, v338, v339, v109);
        sub_1CFCE3050(v263, &qword_1EC4F34B0, &qword_1CFD50A00);
        sub_1CFD08CC4();
        OUTLINED_FUNCTION_219();
        v340(v625);
        v341 = v616;
        v342 = OUTLINED_FUNCTION_423();
        (v262)(v342);
        v262(v623, v341, v258);
        v343 = (*(v643 + 80) + 32) & ~*(v643 + 80);
        v344 = swift_allocObject();
        v345 = v636.n128_u64[0];
        *(v344 + 16) = v258;
        *(v344 + 24) = v345;
        (v651)(v344 + v343, v341, v258);
        v346 = sub_1CFD48E18();
        v108 = sub_1CFD492E8();
        OUTLINED_FUNCTION_246();
        v347 = swift_allocObject();
        *(v347 + 16) = 32;
        OUTLINED_FUNCTION_246();
        v115 = swift_allocObject();
        *(v115 + 16) = 8;
        OUTLINED_FUNCTION_129_1();
        v348 = swift_allocObject();
        *(v348 + 16) = sub_1CFD394D4;
        *(v348 + 24) = v344;
        OUTLINED_FUNCTION_129_1();
        v349 = swift_allocObject();
        *(v349 + 16) = sub_1CFD396C0;
        *(v349 + 24) = v348;
        OUTLINED_FUNCTION_129_1();
        v350 = swift_allocObject();
        *(v350 + 16) = sub_1CFD396C4;
        *(v350 + 24) = v349;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B8, &qword_1CFD53A98);
        v351 = swift_allocObject();
        *(v351 + 16) = xmmword_1CFD50900;
        *(v351 + 32) = sub_1CFD39684;
        *(v351 + 40) = v347;
        *(v351 + 48) = sub_1CFD39684;
        *(v351 + 56) = v115;
        *(v351 + 64) = sub_1CFD39688;
        *(v351 + 72) = v350;
        swift_setDeallocating();
        v114 = v351;
        sub_1CFD347A8(&qword_1EC4F2F10, &qword_1CFD53AC0);
        v352 = v258;
        if (os_log_type_enabled(v346, v108))
        {
          OUTLINED_FUNCTION_97();
          v115 = OUTLINED_FUNCTION_391();
          *v662 = v115;
          *v351 = 136315138;
          LODWORD(v651) = v108;
          v108 = v623;
          OUTLINED_FUNCTION_299();
          swift_getDynamicType();
          sub_1CFD497D8();
          v353 = v263;
          v354 = *(v643 + 8);
          v355 = OUTLINED_FUNCTION_421();
          v354(v355);
          v356 = OUTLINED_FUNCTION_64_0();
          v359 = sub_1CFCFE9A4(v356, v357, v358);

          *(v114 + 4) = v359;
          _os_log_impl(&dword_1CFCD7000, v346, v651, "Unexpected entity type: %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          OUTLINED_FUNCTION_121();
          OUTLINED_FUNCTION_121();

          (*(v353 + 8))(v625, v634);
          v352 = v258;
        }

        else
        {

          (*(v263 + 8))(v625, v634);
          v354 = *(v643 + 8);
          (v354)(v623, v258);
        }

        OUTLINED_FUNCTION_67_0();
        OUTLINED_FUNCTION_276();
        OUTLINED_FUNCTION_205();
        OUTLINED_FUNCTION_131_1(v475, v476, v477, MEMORY[0x1E69E7CC0]);
        OUTLINED_FUNCTION_122_0();
        if (v192)
        {
          v582 = OUTLINED_FUNCTION_53_2(v478);
          v114 = sub_1CFD34880(v582, v583, v584, v114);
        }

        (v354)(v652, v352);
      }

      *(v114 + 2) = v115;
      OUTLINED_FUNCTION_56_2(&v114[64 * v108]);
      goto LABEL_127;
    }

    v237 = v628;
    if (!swift_dynamicCastMetatype())
    {
      sub_1CFD08CC4();
      OUTLINED_FUNCTION_219();
      v291 = v618;
      v292(v618);
      OUTLINED_FUNCTION_129_1();
      v293 = swift_allocObject();
      v294 = v636.n128_u64[0];
      *(v293 + 16) = v99;
      *(v293 + 24) = v294;
      v104 = sub_1CFD48E18();
      v295 = sub_1CFD492E8();
      OUTLINED_FUNCTION_246();
      v296 = swift_allocObject();
      *(v296 + 16) = 32;
      OUTLINED_FUNCTION_246();
      v297 = swift_allocObject();
      *(v297 + 16) = 8;
      OUTLINED_FUNCTION_129_1();
      v298 = swift_allocObject();
      *(v298 + 16) = sub_1CFD39400;
      *(v298 + 24) = v293;
      OUTLINED_FUNCTION_129_1();
      v299 = swift_allocObject();
      *(v299 + 16) = sub_1CFD3941C;
      *(v299 + 24) = v298;
      OUTLINED_FUNCTION_129_1();
      v300 = swift_allocObject();
      *(v300 + 16) = sub_1CFD39424;
      *(v300 + 24) = v299;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B8, &qword_1CFD53A98);
      v301 = swift_allocObject();
      *(v301 + 16) = xmmword_1CFD50900;
      *(v301 + 32) = sub_1CFD39408;
      *(v301 + 40) = v296;
      *(v301 + 48) = sub_1CFD39684;
      *(v301 + 56) = v297;
      *(v301 + 64) = sub_1CFD3944C;
      *(v301 + 72) = v300;
      swift_setDeallocating();
      sub_1CFD347A8(&qword_1EC4F2F10, &qword_1CFD53AC0);
      if (os_log_type_enabled(v104, v295))
      {
        OUTLINED_FUNCTION_97();
        v302 = OUTLINED_FUNCTION_391();
        *v662 = v302;
        *v301 = 136315138;
        swift_getMetatypeMetadata();
        v303 = sub_1CFD497D8();
        v305 = sub_1CFCFE9A4(v303, v304, v662);

        *(v301 + 4) = v305;
        OUTLINED_FUNCTION_440(&dword_1CFCD7000, v306, v307, "Unsupported Entity Type: %s");
        __swift_destroy_boxed_opaque_existential_1(v302);
        OUTLINED_FUNCTION_121();
        OUTLINED_FUNCTION_121();
      }

      (*(v3 + 1))(v291, v634);
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_283();
      OUTLINED_FUNCTION_270();
      sub_1CFD48EF8();
      OUTLINED_FUNCTION_144_1();
      v308 = v653;
      v309 = OUTLINED_FUNCTION_165_0();
      v310 = v655;
      v311(v309);
      v312 = sub_1CFD21410();
      OUTLINED_FUNCTION_311(v312);
      v313 = 2;
      OUTLINED_FUNCTION_26_3();
      sub_1CFD48FE8();
      v314 = OUTLINED_FUNCTION_200();
      v315(v314, v310);
      v316 = xmmword_1CFD50910;
      v317 = 1;
      v318 = 0xC000000000000000;
      goto LABEL_156;
    }

    *&v668 = v108;
    v238 = v651;
    (*(v95 + 16))(v651, v107, v93);
    v239 = swift_getEnumCaseMultiPayload();
    if (v239)
    {
      v114 = *v238;
      v241 = *(v238 + 1);
      if (v239 == 1)
      {
        OUTLINED_FUNCTION_67_0();
        OUTLINED_FUNCTION_225(v242 + 18);
      }

      else
      {
        OUTLINED_FUNCTION_67_0();
        OUTLINED_FUNCTION_225(v467 | 0x20);
      }

      OUTLINED_FUNCTION_86_0();
      v243 = swift_allocObject();
      OUTLINED_FUNCTION_168_0(v243);
      OUTLINED_FUNCTION_107_0();
      sub_1CFD3059C();
      OUTLINED_FUNCTION_131_1(v468, v469, v470, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_122_0();
      if (v192)
      {
        v472 = OUTLINED_FUNCTION_53_2(v471);
        v114 = sub_1CFD34880(v472, v473, v474, v114);
      }
    }

    else
    {
      v446 = v237;
      v447 = v641;
      type metadata accessor for ModelContentInput.EntityStatus.EntityContentSource(255, v641, v636.n128_i64[0], v240);
      LODWORD(v649) = v238[*(swift_getTupleTypeMetadata2() + 48)];
      v448 = v643;
      v124 = v643 + 32;
      v449 = v619;
      v652 = *(v643 + 32);
      (v652)(v619, v238, v447);
      v450 = *(v448 + 16);
      v450(v613, v449, v447);
      v451 = v615;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v451, 0, 1, v446);
        OUTLINED_FUNCTION_61_2();
        v136 = v617;
        sub_1CFD35F00();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_1CFD50920;
        OUTLINED_FUNCTION_314();
        v452 = 0;
        v135 = *(v136 + *(v446 + 84));
        v453 = *(v135 + 16);
        v454 = v135 - 40;
        v0 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v134 = v454 + 72 * v452;
          do
          {
            if (v453 == v452)
            {
              OUTLINED_FUNCTION_86_0();
              v505 = swift_allocObject();
              *v662 = v0;
              v506 = OUTLINED_FUNCTION_312();
              v508 = __swift_instantiateConcreteTypeFromMangledNameV2(v506, v507);
              OUTLINED_FUNCTION_0_11();
              sub_1CFD1AFF0(v509, &qword_1EC4F2A98, &unk_1CFD4D010, v510);
              OUTLINED_FUNCTION_125_1();
              v651 = v511;
              v652 = v508;
              v124 = sub_1CFD48ED8();
              v513 = v512;

              *(v505 + 16) = v124;
              *(v505 + 24) = v513;
              *(v505 + 32) = 1;
              sub_1CFD3059C();
              v514 = v673;
              *(v104 + 32) = v672;
              *(v104 + 48) = v514;
              v515 = v675;
              *(v104 + 64) = v674;
              *(v104 + 80) = v515;
              OUTLINED_FUNCTION_143_1();
              v516 = 0;
              v517 = *(v136 + *(v628 + 80));
              v518 = *(v517 + 16);
              v0 = v517 - 40;
              v135 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                v134 = v0 + 72 * v516;
                do
                {
                  if (v518 == v516)
                  {
                    OUTLINED_FUNCTION_86_0();
                    v530 = swift_allocObject();
                    *v662 = v135;
                    OUTLINED_FUNCTION_125_1();
                    v531 = sub_1CFD48ED8();
                    v533 = v532;

                    *(v530 + 16) = v531;
                    *(v530 + 24) = v533;
                    *(v530 + 32) = 1;
                    OUTLINED_FUNCTION_277();
                    v534 = v677;
                    *(v104 + 96) = v676;
                    *(v104 + 112) = v534;
                    v535 = v679;
                    *(v104 + 128) = v678;
                    *(v104 + 144) = v535;
                    sub_1CFD48EF8();
                    OUTLINED_FUNCTION_86_0();
                    v536 = swift_allocObject();
                    v537 = v628;
                    v538 = v617;
                    OUTLINED_FUNCTION_81_0(*(v628 + 36));
                    *(v536 + 32) = 1;

                    OUTLINED_FUNCTION_230();
                    OUTLINED_FUNCTION_452();
                    v539 = v681;
                    *(v104 + 160) = v680;
                    *(v104 + 176) = v539;
                    v540 = v683;
                    *(v104 + 192) = v682;
                    *(v104 + 208) = v540;
                    OUTLINED_FUNCTION_428();
                    sub_1CFD48EF8();
                    OUTLINED_FUNCTION_86_0();
                    v541 = swift_allocObject();
                    OUTLINED_FUNCTION_81_0(v537[10]);
                    *(v541 + 32) = 0;

                    OUTLINED_FUNCTION_230();
                    sub_1CFD3059C();
                    v542 = v685;
                    *(v104 + 224) = v684;
                    *(v104 + 240) = v542;
                    v543 = v687;
                    *(v104 + 256) = v686;
                    *(v104 + 272) = v543;
                    sub_1CFD48EF8();
                    OUTLINED_FUNCTION_86_0();
                    v544 = swift_allocObject();
                    OUTLINED_FUNCTION_81_0(v537[11]);
                    *(v544 + 32) = 0;

                    OUTLINED_FUNCTION_230();
                    sub_1CFD3059C();
                    v545 = v689;
                    *(v104 + 288) = v688;
                    *(v104 + 304) = v545;
                    v546 = v691;
                    *(v104 + 320) = v690;
                    *(v104 + 336) = v546;
                    OUTLINED_FUNCTION_233();
                    sub_1CFD48EF8();
                    OUTLINED_FUNCTION_86_0();
                    v547 = swift_allocObject();
                    OUTLINED_FUNCTION_81_0(v537[8]);
                    *(v547 + 32) = 0;

                    OUTLINED_FUNCTION_230();
                    OUTLINED_FUNCTION_451();
                    v548 = v659;
                    *(v104 + 352) = v658;
                    *(v104 + 368) = v548;
                    v549 = v661;
                    *(v104 + 384) = v660;
                    *(v104 + 400) = v549;
                    sub_1CFD2A930(v104);
                    sub_1CFD32634(*(v538 + v537[19]));
                    sub_1CFD311A0();
                    OUTLINED_FUNCTION_443();
                    sub_1CFD2A930(v104);
                    OUTLINED_FUNCTION_1_10();
                    sub_1CFD48EF8();
                    OUTLINED_FUNCTION_86_0();
                    swift_allocObject();
                    LOBYTE(v664) = v649;
                    v550 = sub_1CFD24AC8();
                    OUTLINED_FUNCTION_293(v550, v551);
                    OUTLINED_FUNCTION_451();
                    v114 = v668;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v602 = OUTLINED_FUNCTION_44_3();
                      v114 = sub_1CFD34880(v602, v603, v604, v114);
                    }

                    v552 = v641;
                    v553 = *(v114 + 3);
                    if (*(v114 + 2) >= v553 >> 1)
                    {
                      v605 = OUTLINED_FUNCTION_53_2(v553);
                      v114 = sub_1CFD34880(v605, v606, v607, v114);
                    }

                    v554 = OUTLINED_FUNCTION_133_1();
                    v555(v554, v552);
                    v556 = OUTLINED_FUNCTION_119_1();
                    OUTLINED_FUNCTION_113_1(v557, v556, *&v662[16], *&v662[32], *&v662[48]);
                    OUTLINED_FUNCTION_186_0();
                    sub_1CFD35FB0();
                    goto LABEL_154;
                  }

                  if (v516 >= *(v517 + 16))
                  {
                    goto LABEL_162;
                  }

                  ++v516;
                  OUTLINED_FUNCTION_57_2();
                }

                while (!v124);
                v136 = *v519;

                v520 = swift_isUniquelyReferenced_nonNull_native();
                v647 = v0;
                if ((v520 & 1) == 0)
                {
                  v524 = OUTLINED_FUNCTION_44_3();
                  v135 = sub_1CFCFE404(v524, v525, v526, v135);
                }

                v522 = *(v135 + 16);
                v521 = *(v135 + 24);
                if (v522 >= v521 >> 1)
                {
                  v527 = OUTLINED_FUNCTION_36_4(v521);
                  v135 = sub_1CFCFE404(v527, v528, v529, v135);
                }

                *(v135 + 16) = v522 + 1;
                v523 = v135 + 16 * v522;
                *(v523 + 32) = v136;
                *(v523 + 40) = v124;
                v0 = v647;
              }
            }

            if (v452 >= *(v135 + 16))
            {
              goto LABEL_161;
            }

            ++v452;
            OUTLINED_FUNCTION_57_2();
          }

          while (!v124);
          v652 = v456;
          v457 = *v455;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v461 = OUTLINED_FUNCTION_44_3();
            v0 = sub_1CFCFE404(v461, v462, v463, v0);
          }

          v459 = *(v0 + 16);
          v458 = *(v0 + 24);
          if (v459 >= v458 >> 1)
          {
            v464 = OUTLINED_FUNCTION_68_1(v458);
            v0 = sub_1CFCFE404(v464, v465, v466, v0);
          }

          *(v0 + 16) = v459 + 1;
          v460 = v0 + 16 * v459;
          *(v460 + 32) = v457;
          *(v460 + 40) = v124;
          v136 = v617;
          v454 = v652;
        }
      }

      OUTLINED_FUNCTION_154_0();
      __swift_storeEnumTagSinglePayload(v482, v483, v484, v446);
      sub_1CFCE3050(v451, &qword_1EC4F2EC0, &unk_1CFD4BF60);
      v485 = sub_1CFD08CC4();
      (*(v631 + 2))(v610, v485, v634);
      v486 = v609;
      v450(v609, v449, v447);
      v450(v614, v486, v447);
      v487 = (*(v643 + 80) + 32) & ~*(v643 + 80);
      v488 = swift_allocObject();
      v489 = v636.n128_u64[0];
      *(v488 + 16) = v447;
      *(v488 + 24) = v489;
      (v652)(v488 + v487, v486, v447);
      v241 = sub_1CFD48E18();
      v108 = sub_1CFD492E8();
      OUTLINED_FUNCTION_246();
      v490 = swift_allocObject();
      *(v490 + 16) = 32;
      OUTLINED_FUNCTION_246();
      v491 = swift_allocObject();
      *(v491 + 16) = 8;
      OUTLINED_FUNCTION_129_1();
      v492 = swift_allocObject();
      *(v492 + 16) = sub_1CFD396AC;
      *(v492 + 24) = v488;
      OUTLINED_FUNCTION_129_1();
      v493 = swift_allocObject();
      *(v493 + 16) = sub_1CFD396C0;
      *(v493 + 24) = v492;
      OUTLINED_FUNCTION_129_1();
      v494 = swift_allocObject();
      *(v494 + 16) = sub_1CFD396C4;
      *(v494 + 24) = v493;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B8, &qword_1CFD53A98);
      v495 = swift_allocObject();
      *(v495 + 16) = xmmword_1CFD50900;
      *(v495 + 32) = sub_1CFD39684;
      *(v495 + 40) = v490;
      *(v495 + 48) = sub_1CFD39684;
      *(v495 + 56) = v491;
      *(v495 + 64) = sub_1CFD39688;
      *(v495 + 72) = v494;
      swift_setDeallocating();
      v114 = v495;
      sub_1CFD347A8(&qword_1EC4F2F10, &qword_1CFD53AC0);
      if (os_log_type_enabled(v241, v108))
      {
        OUTLINED_FUNCTION_97();
        v496 = OUTLINED_FUNCTION_391();
        *v662 = v496;
        *v495 = 136315138;
        v497 = v614;
        swift_getDynamicType();
        sub_1CFD497D8();
        v498 = *(v643 + 8);
        v498(v497, v447);
        v499 = OUTLINED_FUNCTION_68_0();
        v502 = sub_1CFCFE9A4(v499, v500, v501);

        *(v114 + 4) = v502;
        OUTLINED_FUNCTION_440(&dword_1CFCD7000, v503, v504, "Unexpected entity type: %s");
        __swift_destroy_boxed_opaque_existential_1(v496);
        OUTLINED_FUNCTION_121();
        OUTLINED_FUNCTION_121();

        (*(v631 + 1))(v610, v634);
      }

      else
      {

        v562 = OUTLINED_FUNCTION_238();
        v563(v562, v634);
        v498 = *(v643 + 8);
        v498(v614, v447);
      }

      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_276();
      OUTLINED_FUNCTION_205();
      OUTLINED_FUNCTION_131_1(v564, v565, v566, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_122_0();
      if (v192)
      {
        v599 = OUTLINED_FUNCTION_53_2(v567);
        v114 = sub_1CFD34880(v599, v600, v601, v114);
      }

      v568 = OUTLINED_FUNCTION_193_0();
      (v498)(v568);
    }

    *(v114 + 2) = v241;
    OUTLINED_FUNCTION_56_2(&v114[64 * v108]);
LABEL_154:
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_283();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_144_1();
    v569 = OUTLINED_FUNCTION_235();
    v480 = v655;
    v570(v569);
    v104 = sub_1CFD21410();
    v308 = v654;
    sub_1CFD48CD8();
    v313 = 2;
    OUTLINED_FUNCTION_45_3();
    goto LABEL_155;
  }

  (*(v95 + 16))(v0, v649, v93);
  v101 = swift_getEnumCaseMultiPayload();
  if (v101)
  {
    v103 = *v0;
    v104 = *(v0 + 8);
    if (v101 == 1)
    {
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_225(v105 + 18);
    }

    else
    {
      OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_225(v229 | 0x20);
    }

    OUTLINED_FUNCTION_86_0();
    v106 = swift_allocObject();
    OUTLINED_FUNCTION_168_0(v106);
    OUTLINED_FUNCTION_107_0();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_131_1(v230, v231, v232, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_207();
    if (v192)
    {
      v234 = OUTLINED_FUNCTION_8_7(v233);
      v3 = sub_1CFD34880(v234, v235, v236, v3);
    }

LABEL_77:
    *(v3 + 2) = v103;
    OUTLINED_FUNCTION_56_2(&v3[64 * v104]);
    goto LABEL_78;
  }

  v118 = v641;
  type metadata accessor for ModelContentInput.EntityStatus.EntityContentSource(255, v641, v636.n128_i64[0], v102);
  OUTLINED_FUNCTION_264();
  v119 = *(v0 + *(swift_getTupleTypeMetadata2() + 48));
  v120 = v643;
  v0 = v633;
  (*(v643 + 32))();
  v104 = *(v120 + 16);
  v121 = OUTLINED_FUNCTION_345();
  (v104)(v121);
  v122 = v630;
  OUTLINED_FUNCTION_294();
  v123 = v652;
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_154_0();
    __swift_storeEnumTagSinglePayload(v244, v245, v246, v123);
    sub_1CFCE3050(v122, &qword_1EC4F34B8, &qword_1CFD50A08);
    sub_1CFD08CC4();
    OUTLINED_FUNCTION_219();
    v247(v627);
    v248 = v626;
    v249 = OUTLINED_FUNCTION_261();
    (v104)(v249);
    v103 = sub_1CFD48E18();
    v250 = sub_1CFD492E8();
    if (os_log_type_enabled(v103, v250))
    {
      v104 = OUTLINED_FUNCTION_97();
      v251 = swift_slowAlloc();
      *v662 = v251;
      *v104 = 136315138;
      OUTLINED_FUNCTION_411();
      swift_getDynamicType();
      sub_1CFD497D8();
      v252 = *(v643 + 8);
      v252(v248, v118);
      v253 = OUTLINED_FUNCTION_68_0();
      v256 = sub_1CFCFE9A4(v253, v254, v255);

      *(v104 + 4) = v256;
      _os_log_impl(&dword_1CFCD7000, v103, v250, "Unexpected entity type: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v251);
      v0 = v633;
      OUTLINED_FUNCTION_121();
      OUTLINED_FUNCTION_121();

      v257 = *(v119 + 8);
      v3 = (v119 + 8);
      v257(v627, v634);
    }

    else
    {

      v3 = (v119 + 8);
      v319 = OUTLINED_FUNCTION_140();
      v320(v319);
      v252 = *(v643 + 8);
      v321 = OUTLINED_FUNCTION_411();
      (v252)(v321);
    }

    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_276();
    OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_131_1(v322, v323, v324, MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_207();
    if (v192)
    {
      v579 = OUTLINED_FUNCTION_8_7(v325);
      v3 = sub_1CFD34880(v579, v580, v581, v3);
    }

    v326 = OUTLINED_FUNCTION_421();
    (v252)(v326);
    goto LABEL_77;
  }

  v124 = 0x6C69616D45;
  __swift_storeEnumTagSinglePayload(v122, 0, 1, v123);
  OUTLINED_FUNCTION_59_2();
  sub_1CFD35F00();
  OUTLINED_FUNCTION_283();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_144_1();
  LODWORD(v635) = v119;
  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_400();
  v634 = v125;
  v631 = v126;
  v126();
  v127 = sub_1CFD21410();
  OUTLINED_FUNCTION_311(v127);
  v128 = OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_371(v128);
  OUTLINED_FUNCTION_136_1();
  v629 = *(v122 + 8);
  v630 = v122 + 8;
  v629(v2, v0);
  OUTLINED_FUNCTION_129_1();
  v129 = swift_allocObject();
  sub_1CFD31EE8();
  *(v129 + 16) = v130;
  *(v129 + 24) = 2;
  v0 = v129 | 0xA000000000000000;
  v133 = OUTLINED_FUNCTION_131_1(v130, v131, v132, MEMORY[0x1E69E7CC0]);
  v135 = *(v133 + 2);
  v134 = *(v133 + 3);
  v136 = v135 + 1;
  if (v135 >= v134 >> 1)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v137 = v642;
    *(v133 + 2) = v136;
    v649 = v133;
    v138 = &v133[64 * v135];
    v138[2].n128_u64[0] = v124;
    v138[2].n128_u64[1] = v104;
    v636 = xmmword_1CFD50910;
    OUTLINED_FUNCTION_51_2(v138, xmmword_1CFD50910);
    *(v139 + 73) = v663;
    OUTLINED_FUNCTION_280(v139);
    *(v140 + 80) = v141;
    *(v140 + 88) = v0;
    v124 = v632;
    v142 = v632 + *(v652 + 132);
    v143 = v142[8];
    if (v143 == 255)
    {
      v335 = OUTLINED_FUNCTION_202();
      v336(v335);
      OUTLINED_FUNCTION_6_10();
      sub_1CFD35FB0();
      goto LABEL_146;
    }

    v144 = *v142;
    v136 = "Mailbox Identifiers";
    v0 = "Mail Classification";
    v628 = *v142;
    if (v143)
    {
      v135 = v632;
      v104 = v632[18];
      memcpy(v662, v632 + 9, sizeof(v662));

      sub_1CFCDB100(v662, &v658);
      v145 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v592 = OUTLINED_FUNCTION_43_3();
        v145 = sub_1CFD34988(v592, v593, v594, v595);
      }

      v147 = *(v145 + 2);
      v146 = *(v145 + 3);
      v124 = v147 + 1;
      if (v147 >= v146 >> 1)
      {
        v596 = OUTLINED_FUNCTION_8_7(v146);
        v145 = sub_1CFD34988(v596, v597, v598, v145);
      }

      *(v145 + 2) = v124;
      memcpy(&v145[72 * v147 + 32], v662, 0x41uLL);
      v148 = *(v628 + 16);
      if (!v148)
      {
        goto LABEL_145;
      }

      v637._rawValue = v145;
      v134 = 0;
      v149 = v135 + *(v652 + 88);
      v618 = *v149;
      LODWORD(v624) = *(v149 + 8);
      v622 = "Mail mailbox identifiers.";
      v623 = "il subject.";
      v150 = *(v104 + 16);
      v627 = v628 + ((*(v640 + 80) + 32) & ~*(v640 + 80));
      v652 = v104 - 40;
      v151 = *(v135 + 168);
      v620 = *(v135 + 176);
      v621 = v151;
      v619 = *(v135 + 224);
      v626 = xmmword_1CFD508F0;
      v152 = v148;
      v625 = v148;
      while (2)
      {
        if (v134 < v152)
        {
          v646 = (v134 + 1);
          OUTLINED_FUNCTION_170_0(v134);
          v153 = v651;
          sub_1CFD35F58();
          QuotedRegion.extractInfo(handles:)(v637);
          v154 = MEMORY[0x1E69E7CC0];
          *&v664 = MEMORY[0x1E69E7CC0];
          v155 = *(v153 + 2);
          v124 = *(v153 + 3);
          v644 = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
          v136 = swift_allocObject();
          *(v136 + 16) = v626;
          v642 = v124;

          OUTLINED_FUNCTION_314();
          v0 = 0;
          v156 = v154;
LABEL_21:
          v134 = v652 + 72 * v0;
          while (v150 != v0)
          {
            if (v0 >= *(v104 + 16))
            {
              __break(1u);
              goto LABEL_159;
            }

            ++v0;
            OUTLINED_FUNCTION_57_2();
            if (v124)
            {
              v158 = *v157;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v162 = OUTLINED_FUNCTION_44_3();
                v156 = sub_1CFCFE404(v162, v163, v164, v156);
              }

              v160 = *(v156 + 2);
              v159 = *(v156 + 3);
              v135 = v160 + 1;
              if (v160 >= v159 >> 1)
              {
                OUTLINED_FUNCTION_72(v159);
                OUTLINED_FUNCTION_416();
                v156 = sub_1CFCFE404(v165, v166, v167, v156);
              }

              *(v156 + 2) = v135;
              v161 = &v156[16 * v160];
              *(v161 + 4) = v158;
              *(v161 + 5) = v124;
              goto LABEL_21;
            }
          }

          OUTLINED_FUNCTION_86_0();
          v168 = swift_allocObject();
          v657 = v156;
          v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
          OUTLINED_FUNCTION_0_11();
          OUTLINED_FUNCTION_226();
          sub_1CFD1AFF0(v169, v170, v171, v172);
          OUTLINED_FUNCTION_125_1();
          sub_1CFD48ED8();
          OUTLINED_FUNCTION_265();

          *(v168 + 16) = &v657;
          *(v168 + 24) = &unk_1CFD4D010;
          *(v168 + 32) = 1;
          OUTLINED_FUNCTION_331();
          v173 = v669;
          *(v136 + 32) = v668;
          *(v136 + 48) = v173;
          v174 = v671;
          *(v136 + 64) = v670;
          *(v136 + 80) = v174;
          OUTLINED_FUNCTION_283();
          OUTLINED_FUNCTION_143_1();
          OUTLINED_FUNCTION_86_0();
          v175 = swift_allocObject();
          OUTLINED_FUNCTION_124_1(&v651[*(v638 + 32)]);
          *(v175 + 32) = 1;

          OUTLINED_FUNCTION_387();
          v176 = v673;
          *(v136 + 96) = v672;
          *(v136 + 112) = v176;
          v177 = v675;
          *(v136 + 128) = v674;
          *(v136 + 144) = v177;
          OUTLINED_FUNCTION_71_1();
          sub_1CFD48EF8();
          OUTLINED_FUNCTION_86_0();
          v178 = swift_allocObject();
          *(v178 + 16) = v621;
          *(v178 + 24) = v620;
          *(v178 + 32) = 0;

          OUTLINED_FUNCTION_304();
          v179 = v677;
          *(v136 + 160) = v676;
          *(v136 + 176) = v179;
          v180 = v679;
          *(v136 + 192) = v678;
          *(v136 + 208) = v180;
          v181 = OUTLINED_FUNCTION_50_2();
          OUTLINED_FUNCTION_335(v181);
          OUTLINED_FUNCTION_86_0();
          v182 = swift_allocObject();
          v183 = v642;
          *(v182 + 16) = v644;
          *(v182 + 24) = v183;
          *(v182 + 32) = 0;
          OUTLINED_FUNCTION_304();
          v184 = v681;
          *(v136 + 224) = v680;
          *(v136 + 240) = v184;
          v185 = v683;
          *(v136 + 256) = v682;
          *(v136 + 272) = v185;
          sub_1CFD2A930(v136);
          OUTLINED_FUNCTION_270();
          sub_1CFD48EF8();
          OUTLINED_FUNCTION_86_0();
          v186 = swift_allocObject();
          v657 = v619;

          OUTLINED_FUNCTION_125_1();
          v187 = sub_1CFD48ED8();
          v189 = v188;

          *(v186 + 16) = v187;
          *(v186 + 24) = v189;
          *(v186 + 32) = 0;
          OUTLINED_FUNCTION_384();
          v190 = v664;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v214 = OUTLINED_FUNCTION_44_3();
            v190 = sub_1CFD34880(v214, v215, v216, v190);
          }

          OUTLINED_FUNCTION_110_1();
          if (v192)
          {
            v217 = OUTLINED_FUNCTION_8_7(v191);
            v190 = sub_1CFD34880(v217, v218, v219, v190);
          }

          OUTLINED_FUNCTION_302();
          OUTLINED_FUNCTION_113_1(v193, v684, v685, v686, v687);
          OUTLINED_FUNCTION_270();
          sub_1CFD48EF8();
          OUTLINED_FUNCTION_86_0();
          v194 = swift_allocObject();
          if (v624)
          {
            countAndFlagsBits = OUTLINED_FUNCTION_141_0();
          }

          else
          {
            v657 = v618;
            v197 = MailEntity.Categories.userFacingDescription()();
            object = v197._object;
            countAndFlagsBits = v197._countAndFlagsBits;
          }

          *(v194 + 16) = countAndFlagsBits;
          *(v194 + 24) = object;
          *(v194 + 32) = 0;
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_110_1();
          if (v192)
          {
            v220 = OUTLINED_FUNCTION_8_7(v198);
            v190 = sub_1CFD34880(v220, v221, v222, v190);
          }

          OUTLINED_FUNCTION_302();
          OUTLINED_FUNCTION_113_1(v199, v688, v689, v690, v691);
          OUTLINED_FUNCTION_1_10();
          sub_1CFD48EF8();
          OUTLINED_FUNCTION_86_0();
          v200 = swift_allocObject();
          LOBYTE(v657) = v635;
          *(v200 + 16) = sub_1CFD24AC8();
          *(v200 + 24) = v201;
          *(v200 + 32) = 0;
          OUTLINED_FUNCTION_277();
          OUTLINED_FUNCTION_110_1();
          if (v192)
          {
            v223 = OUTLINED_FUNCTION_8_7(v202);
            v190 = sub_1CFD34880(v223, v224, v225, v190);
          }

          OUTLINED_FUNCTION_302();
          OUTLINED_FUNCTION_113_1(v203, v658, v659, v660, v661);
          OUTLINED_FUNCTION_194_0();
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_400();
          v631();
          sub_1CFD21410();
          sub_1CFD48CD8();
          OUTLINED_FUNCTION_41_1();
          v124 = OUTLINED_FUNCTION_371(v204);
          v206 = v205;
          v207 = OUTLINED_FUNCTION_261();
          (v629)(v207);
          OUTLINED_FUNCTION_129_1();
          v135 = swift_allocObject();
          *(v135 + 16) = v190;
          *(v135 + 24) = 2;
          v0 = *(v649 + 2);
          v208 = *(v649 + 3);
          v136 = v0 + 1;
          if (v0 >= v208 >> 1)
          {
            v226 = OUTLINED_FUNCTION_68_1(v208);
            v649 = sub_1CFD34880(v226, v227, v228, v649);
          }

          OUTLINED_FUNCTION_159_0();
          sub_1CFD35FB0();
          v209 = v649;
          *(v649 + 2) = v136;
          v210 = &v209[64 * v0];
          v210[2].n128_u64[0] = v124;
          v210[2].n128_u64[1] = v206;
          OUTLINED_FUNCTION_51_2(v210, v636);
          *(v211 + 73) = v657;
          OUTLINED_FUNCTION_280(v211);
          *(v212 + 80) = v213;
          *(v212 + 88) = v135;
          if (v646 != v625)
          {
            OUTLINED_FUNCTION_418();
            continue;
          }

LABEL_145:
          v558 = OUTLINED_FUNCTION_202();
          v559(v558);
          OUTLINED_FUNCTION_6_10();
          sub_1CFD35FB0();

LABEL_146:
          v3 = v649;
          goto LABEL_78;
        }

        break;
      }

LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v135 = *(v144 + 16);
    if (!v135)
    {
      v3 = v649;
      goto LABEL_148;
    }

    v134 = 0;
    v384 = v632 + *(v652 + 88);
    v623 = *v384;
    LODWORD(v627) = v384[8];
    v625 = "Mail mailbox identifiers.";
    *&v626 = "il subject.";
    v385 = *(v639 + 80);
    v624 = v632[28];
    v645 = v144 + ((v385 + 32) & ~v385);
    v640 = xmmword_1CFD50930;
    v386 = v135;
    v3 = v649;
    v638 = v135;
LABEL_89:
    if (v134 < v386)
    {
      break;
    }

LABEL_164:
    __break(1u);
LABEL_165:
    v575 = OUTLINED_FUNCTION_68_1(v134);
    v133 = sub_1CFD34880(v575, v576, v577, v578);
  }

  v649 = v3;
  v652 = v134 + 1;
  OUTLINED_FUNCTION_190_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
  v387 = swift_allocObject();
  *(v387 + 16) = v640;
  OUTLINED_FUNCTION_314();
  v136 = 0;
  v388 = v137[11];
  v135 = *(v388 + 16);
  v0 = v388 - 40;
  v389 = MEMORY[0x1E69E7CC0];
LABEL_91:
  v134 = v0 + 72 * v136;
  while (v135 != v136)
  {
    if (v136 >= *(v388 + 16))
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    ++v136;
    OUTLINED_FUNCTION_57_2();
    if (v124)
    {
      v651 = *v390;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v394 = OUTLINED_FUNCTION_44_3();
        v389 = sub_1CFCFE404(v394, v395, v396, v389);
      }

      v392 = *(v389 + 2);
      v391 = *(v389 + 3);
      v104 = v392 + 1;
      if (v392 >= v391 >> 1)
      {
        v397 = OUTLINED_FUNCTION_53_2(v391);
        v389 = sub_1CFCFE404(v397, v398, v399, v389);
      }

      *(v389 + 2) = v104;
      v393 = &v389[16 * v392];
      *(v393 + 4) = v651;
      *(v393 + 5) = v124;
      v137 = v642;
      goto LABEL_91;
    }
  }

  OUTLINED_FUNCTION_86_0();
  v400 = swift_allocObject();
  v657 = v389;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_70();
  v647 = sub_1CFD1AFF0(v401, v402, v403, v404);
  OUTLINED_FUNCTION_125_1();
  sub_1CFD48ED8();
  OUTLINED_FUNCTION_360();

  *(v400 + 16) = &v657;
  *(v400 + 24) = v135;
  *(v400 + 32) = 1;
  OUTLINED_FUNCTION_331();
  v405 = v665;
  *(v387 + 32) = v664;
  *(v387 + 48) = v405;
  v406 = v667;
  *(v387 + 64) = v666;
  *(v387 + 80) = v406;
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_86_0();
  v407 = swift_allocObject();
  v408 = v137[3];
  *(v407 + 16) = v137[2];
  *(v407 + 24) = v408;
  *(v407 + 32) = 1;

  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_387();
  v409 = v669;
  *(v387 + 96) = v668;
  *(v387 + 112) = v409;
  v410 = v671;
  *(v387 + 128) = v670;
  *(v387 + 144) = v410;
  OUTLINED_FUNCTION_71_1();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  swift_allocObject();
  rawValue = v637._rawValue;
  OUTLINED_FUNCTION_116_1((v137 + *(v637._rawValue + 9)));
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_304();
  v412 = v673;
  *(v387 + 160) = v672;
  *(v387 + 176) = v412;
  v413 = v675;
  *(v387 + 192) = v674;
  *(v387 + 208) = v413;
  v414 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_335(v414);
  OUTLINED_FUNCTION_86_0();
  swift_allocObject();
  OUTLINED_FUNCTION_116_1((v137 + rawValue[10]));
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_304();
  v415 = v677;
  *(v387 + 224) = v676;
  *(v387 + 240) = v415;
  v416 = v679;
  *(v387 + 256) = v678;
  *(v387 + 272) = v416;
  v417 = OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_333(v417);
  OUTLINED_FUNCTION_246();
  *(swift_allocObject() + 16) = (*(v137 + rawValue[8]) & 1) == 0;
  OUTLINED_FUNCTION_376();
  v418 = v681;
  *(v387 + 288) = v680;
  *(v387 + 304) = v418;
  v419 = v683;
  *(v387 + 320) = v682;
  *(v387 + 336) = v419;
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_86_0();
  v420 = swift_allocObject();
  *(v420 + 16) = sub_1CFD48C98();
  *(v420 + 24) = v421;
  OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_444();
  v422 = v685;
  *(v387 + 352) = v684;
  *(v387 + 368) = v422;
  v423 = v687;
  *(v387 + 384) = v686;
  *(v387 + 400) = v423;
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v424 = swift_allocObject();
  v657 = v624;

  OUTLINED_FUNCTION_125_1();
  sub_1CFD48ED8();
  OUTLINED_FUNCTION_136_1();

  *(v424 + 16) = &v657;
  *(v424 + 24) = 1;
  *(v424 + 32) = 0;
  OUTLINED_FUNCTION_384();
  v425 = v689;
  *(v387 + 416) = v688;
  *(v387 + 432) = v425;
  v426 = v691;
  *(v387 + 448) = v690;
  *(v387 + 464) = v426;
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  swift_allocObject();
  if (v627)
  {
    v427 = OUTLINED_FUNCTION_141_0();
  }

  else
  {
    v657 = v623;
    v429 = MailEntity.Categories.userFacingDescription()();
    v428 = v429._object;
    v427 = v429._countAndFlagsBits;
  }

  v135 = v638;
  OUTLINED_FUNCTION_293(v427, v428);
  OUTLINED_FUNCTION_277();
  v430 = v659;
  *(v387 + 480) = v658;
  *(v387 + 496) = v430;
  v431 = v661;
  *(v387 + 512) = v660;
  *(v387 + 528) = v431;
  OUTLINED_FUNCTION_1_10();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v104 = swift_allocObject();
  LOBYTE(v657) = v635;
  v124 = &v657;
  v432 = sub_1CFD24AC8();
  OUTLINED_FUNCTION_293(v432, v433);
  OUTLINED_FUNCTION_277();
  v434 = *&v662[16];
  *(v387 + 544) = *v662;
  *(v387 + 560) = v434;
  v435 = *&v662[48];
  *(v387 + 576) = *&v662[32];
  *(v387 + 592) = v435;
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_400();
  v631();
  v436 = sub_1CFD21410();
  OUTLINED_FUNCTION_311(v436);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_371(v437);
  v438 = OUTLINED_FUNCTION_83_1();
  (v629)(v438);
  OUTLINED_FUNCTION_129_1();
  v439 = swift_allocObject();
  v136 = 2;
  *(v439 + 16) = v387;
  *(v439 + 24) = 2;
  v3 = v649;
  v0 = *(v649 + 2);
  v440 = *(v649 + 3);
  if (v0 >= v440 >> 1)
  {
    OUTLINED_FUNCTION_72(v440);
    OUTLINED_FUNCTION_413();
    v3 = sub_1CFD34880(v443, v444, v445, v3);
  }

  *(v3 + 2) = v0 + 1;
  v441 = &v3[64 * v0];
  *(v441 + 4) = &v657;
  *(v441 + 5) = v104;
  OUTLINED_FUNCTION_352();
  OUTLINED_FUNCTION_163_0(v442);
  if (v652 != v135)
  {
    OUTLINED_FUNCTION_418();
    goto LABEL_89;
  }

LABEL_148:
  v560 = OUTLINED_FUNCTION_202();
  v561(v560);
  OUTLINED_FUNCTION_6_10();
  sub_1CFD35FB0();
LABEL_78:
  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_363();
  OUTLINED_FUNCTION_144_1();
  v308 = v653;
  OUTLINED_FUNCTION_165_0();
  OUTLINED_FUNCTION_400();
  v327();
  v328 = sub_1CFD21410();
  OUTLINED_FUNCTION_311(v328);
  v329 = 2;
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_332(v330);
  v331 = OUTLINED_FUNCTION_200();
  v332(v331, v0);
  OUTLINED_FUNCTION_129_1();
  v333 = swift_allocObject();
  v334 = sub_1CFD35AC4(v3);

  v317 = 0;
  *(v333 + 16) = v334;
  *(v333 + 24) = 2;
  v318 = v333 | 0xA000000000000000;
  v316 = 0uLL;
  v313 = 1;
LABEL_157:
  v574 = v648;
  *v648 = v104;
  v574[1] = v308;
  *(v574 + 1) = v316;
  v574[4] = v317;
  *(v574 + 40) = v329;
  v574[6] = v313;
  v574[7] = v318;
  OUTLINED_FUNCTION_155();
}

void sub_1CFD30144()
{
  OUTLINED_FUNCTION_156();
  v5 = OUTLINED_FUNCTION_229(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_199();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_93_0();
  sub_1CFD48EF8();
  v9 = OUTLINED_FUNCTION_348();
  v10(v9);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_47_3();
  sub_1CFD48FE8();
  v11 = OUTLINED_FUNCTION_165_0();
  v12(v11);
  OUTLINED_FUNCTION_246();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_294();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  *(v13 + 16) = *(v1 + *(v16 + 76));
  OUTLINED_FUNCTION_172_0(v16, v27);
  sub_1CFD347F4();
  sub_1CFD34840(*(*v0 + 16));
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_51_2(v17, xmmword_1CFD50910);
  *(v18 + 73) = *&v27[65];
  OUTLINED_FUNCTION_280(v18);
  *(v19 + 80) = v20;
  *(v19 + 88) = v13 | 0x6000000000000000;
  swift_endAccess();
  v21 = *(v1 + 33);
  if (v21 != 1)
  {
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    v22 = sub_1CFD30E58(v21);
    OUTLINED_FUNCTION_293(v22, v23);
    OUTLINED_FUNCTION_255();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_172_0(v24, &v26);
    sub_1CFD347F4();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_49_2(v25);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_155();
}

void sub_1CFD3036C()
{
  OUTLINED_FUNCTION_156();
  v7 = OUTLINED_FUNCTION_229(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_6_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_199();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  sub_1CFD48EF8();
  v11 = OUTLINED_FUNCTION_348();
  v12(v11);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_47_3();
  sub_1CFD48FE8();
  v13 = OUTLINED_FUNCTION_165_0();
  v14(v13);
  OUTLINED_FUNCTION_246();
  v15 = swift_allocObject();
  v17 = type metadata accessor for ModelContentInput(0, v3, v2, v16);
  *(v15 + 16) = *(v1 + *(v17 + 76));
  OUTLINED_FUNCTION_172_0(v17, v28);
  sub_1CFD347F4();
  sub_1CFD34840(*(*v0 + 16));
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_51_2(v18, xmmword_1CFD50910);
  *(v19 + 73) = v29;
  OUTLINED_FUNCTION_280(v19);
  *(v20 + 80) = v21;
  *(v20 + 88) = v15 | 0x6000000000000000;
  swift_endAccess();
  v22 = *(v1 + 33);
  if (v22 != 1)
  {
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    v28[0] = v22;
    v23 = sub_1CFD30FFC(v28);
    OUTLINED_FUNCTION_337(v23, v24);
    OUTLINED_FUNCTION_177_0();
    OUTLINED_FUNCTION_255();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_172_0(v25, &v27);
    sub_1CFD347F4();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_49_2(v26);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_155();
}

void sub_1CFD3059C()
{
  OUTLINED_FUNCTION_156();
  v19 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_1CFD48CE8();
  v7 = OUTLINED_FUNCTION_6_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_108_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_109_2();
  v13 = *(v10 + 16);
  v13(v0, v3, v8);
  v14 = OUTLINED_FUNCTION_20_3();
  (v13)(v14);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_45_3();
  v15 = sub_1CFD48FE8();
  v17 = v16;
  v18 = *(v10 + 8);
  v18(v3, v8);
  v18(v0, v8);
  *v5 = v15;
  *(v5 + 8) = v17;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = 1;
  *(v5 + 40) = 2;
  *(v5 + 48) = 1;
  *(v5 + 56) = v19;
  OUTLINED_FUNCTION_155();
}

void sub_1CFD30744()
{
  OUTLINED_FUNCTION_156();
  v5 = OUTLINED_FUNCTION_327(v0, v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_9();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_108_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD50900;
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_279();
  sub_1CFD48EF8();
  v35 = *(v8 + 16);
  OUTLINED_FUNCTION_211();
  v12();
  v13 = sub_1CFD21410();
  sub_1CFD48CD8();
  v14 = OUTLINED_FUNCTION_10_4();
  v15 = OUTLINED_FUNCTION_369(v14);
  v17 = v16;
  v34 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_107();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  swift_allocBox();
  OUTLINED_FUNCTION_136_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
  OUTLINED_FUNCTION_303(v20);
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  OUTLINED_FUNCTION_137_1(v13 | 0x4000000000000000, xmmword_1CFD50910);
  v21 = OUTLINED_FUNCTION_120_1();
  v35(v21);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_2_10();
  sub_1CFD48FE8();
  v22 = OUTLINED_FUNCTION_83_1();
  v34(v22);
  swift_allocBox();
  OUTLINED_FUNCTION_347();
  sub_1CFD02140();
  OUTLINED_FUNCTION_171();
  *(inited + 144) = 2;
  *(inited + 152) = v23;
  OUTLINED_FUNCTION_279();
  sub_1CFD48EF8();
  v24 = OUTLINED_FUNCTION_120_1();
  v35(v24);
  v25 = sub_1CFD21410();
  OUTLINED_FUNCTION_271(v25);
  v26 = OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_369(v26);
  v27 = OUTLINED_FUNCTION_83_1();
  v34(v27);
  swift_allocBox();
  OUTLINED_FUNCTION_347();
  sub_1CFD02140();
  OUTLINED_FUNCTION_151_0();
  sub_1CFD2A930(inited);
  swift_endAccess();
  if (*(v36 + 32) != 1)
  {
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_149_0();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    v28 = sub_1CFD30E58(*(v36 + 32));
    OUTLINED_FUNCTION_337(v28, v29);
    OUTLINED_FUNCTION_177_0();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_172_0(v30, &v37);
    sub_1CFD347F4();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_252(v31);
  }

  OUTLINED_FUNCTION_155();
}

void sub_1CFD30AC8()
{
  OUTLINED_FUNCTION_156();
  v5 = OUTLINED_FUNCTION_327(v0, v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_9();
  sub_1CFD48F68();
  OUTLINED_FUNCTION_37();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_108_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD50900;
  OUTLINED_FUNCTION_149_0();
  OUTLINED_FUNCTION_279();
  sub_1CFD48EF8();
  v36 = *(v8 + 16);
  OUTLINED_FUNCTION_211();
  v12();
  v13 = sub_1CFD21410();
  sub_1CFD48CD8();
  v14 = OUTLINED_FUNCTION_10_4();
  v15 = OUTLINED_FUNCTION_369(v14);
  v17 = v16;
  v35 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_107();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  swift_allocBox();
  OUTLINED_FUNCTION_136_1();
  v21 = type metadata accessor for ModelContentInput(0, v33, v34, v20);
  OUTLINED_FUNCTION_303(v21);
  *(inited + 32) = v15;
  *(inited + 40) = v17;
  OUTLINED_FUNCTION_137_1(v13 | 0x4000000000000000, xmmword_1CFD50910);
  v22 = OUTLINED_FUNCTION_120_1();
  v36(v22);
  sub_1CFD21410();
  sub_1CFD48CD8();
  OUTLINED_FUNCTION_2_10();
  sub_1CFD48FE8();
  v23 = OUTLINED_FUNCTION_83_1();
  v35(v23);
  swift_allocBox();
  OUTLINED_FUNCTION_347();
  sub_1CFD02140();
  OUTLINED_FUNCTION_171();
  *(inited + 144) = 2;
  *(inited + 152) = v24;
  OUTLINED_FUNCTION_279();
  sub_1CFD48EF8();
  v25 = OUTLINED_FUNCTION_120_1();
  v36(v25);
  v26 = sub_1CFD21410();
  OUTLINED_FUNCTION_271(v26);
  v27 = OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_369(v27);
  v28 = OUTLINED_FUNCTION_83_1();
  v35(v28);
  swift_allocBox();
  OUTLINED_FUNCTION_347();
  sub_1CFD02140();
  OUTLINED_FUNCTION_151_0();
  sub_1CFD2A930(inited);
  swift_endAccess();
  if (*(v37 + 32) != 1)
  {
    OUTLINED_FUNCTION_150_0();
    OUTLINED_FUNCTION_149_0();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    v39 = *(v37 + 32);
    v29 = sub_1CFD30FFC(&v39);
    OUTLINED_FUNCTION_337(v29, v30);
    OUTLINED_FUNCTION_177_0();
    sub_1CFD3059C();
    OUTLINED_FUNCTION_172_0(v31, &v38);
    sub_1CFD347F4();
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_252(v32);
  }

  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFD30E58(char a1)
{
  v2 = sub_1CFD48CE8();
  v3 = OUTLINED_FUNCTION_6_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v4 = sub_1CFD48F68();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_7();
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_289(0x6564656563637553);
      v10 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v10);
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_385();
      v8 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v8);
      OUTLINED_FUNCTION_12_5();
      break;
    case 3:
      OUTLINED_FUNCTION_289(0x656C74746F726854);
      v9 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v9);
LABEL_7:
      OUTLINED_FUNCTION_12_5();
      break;
    case 4:
      OUTLINED_FUNCTION_306();
      v7 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v7);
      OUTLINED_FUNCTION_12_5();
      break;
    case 5:
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_279();
      sub_1CFD48EF8();
      v11 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v11);
      OUTLINED_FUNCTION_12_5();
      break;
    default:
      OUTLINED_FUNCTION_330();
      v6 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v6);
      OUTLINED_FUNCTION_12_5();
      break;
  }

  return sub_1CFD48FE8();
}

uint64_t sub_1CFD30FFC(_BYTE *a1)
{
  v2 = sub_1CFD48CE8();
  v3 = OUTLINED_FUNCTION_6_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  v4 = sub_1CFD48F68();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_7();
  switch(*a1)
  {
    case 1:
      OUTLINED_FUNCTION_289(0x6564656563637553);
      v10 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v10);
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_385();
      v8 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v8);
      OUTLINED_FUNCTION_12_5();
      break;
    case 3:
      OUTLINED_FUNCTION_289(0x656C74746F726854);
      v9 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v9);
LABEL_7:
      OUTLINED_FUNCTION_12_5();
      break;
    case 4:
      OUTLINED_FUNCTION_306();
      v7 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v7);
      OUTLINED_FUNCTION_12_5();
      break;
    case 5:
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_279();
      sub_1CFD48EF8();
      v11 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v11);
      OUTLINED_FUNCTION_12_5();
      break;
    default:
      OUTLINED_FUNCTION_330();
      v6 = sub_1CFD21410();
      OUTLINED_FUNCTION_278(v6);
      OUTLINED_FUNCTION_12_5();
      break;
  }

  return sub_1CFD48FE8();
}

void sub_1CFD311A0()
{
  OUTLINED_FUNCTION_156();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35D0, &qword_1CFD53AC8);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  v4 = 0;
  v5 = *(v2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v4)
    {
      OUTLINED_FUNCTION_155();
      return;
    }

    if (v4 >= v5)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40);
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

    *v0 = v4;
    sub_1CFD02140();
    sub_1CFD313BC();
    sub_1CFCE3050(v0, &qword_1EC4F35D0, &qword_1CFD53AC8);
    if (*(&v20 + 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = OUTLINED_FUNCTION_44_3();
        v14 = sub_1CFD34880(v10, v11, v12, v13);
        OUTLINED_FUNCTION_415(v14);
      }

      v8 = *(v19 + 16);
      v7 = *(v19 + 24);
      if (v8 >= v7 >> 1)
      {
        v15 = OUTLINED_FUNCTION_8_7(v7);
        v18 = sub_1CFD34880(v15, v16, v17, v19);
        OUTLINED_FUNCTION_415(v18);
      }

      *(v19 + 16) = v8 + 1;
      v9 = (v19 + (v8 << 6));
      v9[4] = v22;
      v9[5] = v23;
      v9[2] = v20;
      v9[3] = v21;
      v4 = v6;
    }

    else
    {
      ++v4;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1CFD313BC()
{
  OUTLINED_FUNCTION_156();
  v30 = v1;
  v3 = v2;
  v4 = sub_1CFD48F68();
  v5 = OUTLINED_FUNCTION_6_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146_1();
  OUTLINED_FUNCTION_102_1();
  v7 = sub_1CFD48F48();
  v8 = OUTLINED_FUNCTION_6_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_7();
  v9 = OUTLINED_FUNCTION_298();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_6_2(v11);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_324();
  v13 = type metadata accessor for EntityAttachment(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  OUTLINED_FUNCTION_20_3();
  sub_1CFD02140();
  OUTLINED_FUNCTION_378(v0, 1, v13);
  if (v18)
  {
    sub_1CFCE3050(v0, &qword_1EC4F2EB0, &unk_1CFD4BF40);
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_6:
    *v3 = v19;
    v3[1] = v20;
    v3[2] = v21;
    v3[3] = v22;
    OUTLINED_FUNCTION_155();
    return;
  }

  sub_1CFD35F00();
  sub_1CFD48F38();
  sub_1CFD48F28();
  if (!__OFADD__(v30, 1))
  {
    *&v44[0] = v30 + 1;
    OUTLINED_FUNCTION_203(v44);
    OUTLINED_FUNCTION_388();
    sub_1CFD48F58();
    OUTLINED_FUNCTION_129_1();
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
    v24 = swift_allocObject();
    v24[1] = xmmword_1CFD50900;
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_442(*(v13 + 24));
    OUTLINED_FUNCTION_439();
    v24[2] = v32;
    v24[3] = v33;
    v24[4] = v34;
    v24[5] = v35;
    OUTLINED_FUNCTION_274();
    OUTLINED_FUNCTION_86_0();
    v25 = swift_allocObject();
    v26 = v17[1];
    *(v25 + 16) = *v17;
    *(v25 + 24) = v26;
    *(v25 + 32) = 0;

    OUTLINED_FUNCTION_439();
    v24[6] = v36;
    v24[7] = v37;
    v24[8] = v38;
    v24[9] = v39;
    OUTLINED_FUNCTION_149_0();
    sub_1CFD48EF8();
    OUTLINED_FUNCTION_86_0();
    swift_allocObject();
    OUTLINED_FUNCTION_442(*(v13 + 32));
    sub_1CFD3059C();
    v24[10] = v40;
    v24[11] = v41;
    v24[12] = v42;
    v24[13] = v43;
    *(v23 + 16) = v24;
    *(v23 + 24) = 1;
    sub_1CFD3059C();
    v29 = v44[1];
    v31 = v44[0];
    v27 = v44[3];
    v28 = v44[2];
    sub_1CFD35FB0();
    v22 = v27;
    v21 = v28;
    v20 = v29;
    v19 = v31;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1CFD31780()
{
  OUTLINED_FUNCTION_156();
  v2 = v1;
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_9();
  v104 = v4;
  OUTLINED_FUNCTION_102_1();
  v5 = sub_1CFD48F68();
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_314();
  v11 = 0;
  v105 = v2;
  v12 = v2[9].n128_i64[0];
  v13 = *(v12 + 16);
  v14 = v12 - 40;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = v14 + 72 * v11;
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    ++v11;
    OUTLINED_FUNCTION_57_2();
    if (v2)
    {
      v18 = *v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_44_3();
        v15 = sub_1CFCFE404(v21, v22, v23, v15);
      }

      v0 = *(v15 + 2);
      v19 = *(v15 + 3);
      if (v0 >= v19 >> 1)
      {
        v15 = sub_1CFCFE404((v19 > 1), (v0 + 1), 1, v15);
      }

      *(v15 + 2) = v0 + 1;
      v20 = &v15[16 * v0];
      *(v20 + 4) = v18;
      *(v20 + 5) = v2;
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_86_0();
  v24 = swift_allocObject();
  v139.n128_u64[0] = v15;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_70();
  sub_1CFD1AFF0(v25, v26, v27, v28);
  v2 = &v139;
  OUTLINED_FUNCTION_125_1();
  sub_1CFD48ED8();
  OUTLINED_FUNCTION_136_1();

  *(v24 + 16) = &v139;
  *(v24 + 24) = &unk_1CFD4D010;
  LOBYTE(v14) = 1;
  *(v24 + 32) = 1;
  OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_131_1(v29, v30, v31, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_402();
  if (!v32)
  {
    goto LABEL_12;
  }

LABEL_35:
  v76 = OUTLINED_FUNCTION_8_7(v16);
  v0 = sub_1CFD34880(v76, v77, v78, v0);
LABEL_12:
  *(v0 + 2) = v2;
  v33 = &v0[64 * v12];
  *(v33 + 2) = v107;
  *(v33 + 3) = v108;
  *(v33 + 4) = v109;
  *(v33 + 5) = v110;
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_86_0();
  v34 = swift_allocObject();
  v35 = v105[5].n128_u64[0];
  *(v34 + 16) = v105[4].n128_u64[1];
  *(v34 + 24) = v35;
  *(v34 + 32) = v14;

  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v79 = OUTLINED_FUNCTION_8_7(v36);
    v0 = sub_1CFD34880(v79, v80, v81, v0);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v37, v111, v112, v113, v114);
  v38 = OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_447(v38);
  OUTLINED_FUNCTION_86_0();
  v39 = swift_allocObject();
  v40 = v105[11].n128_u64[0];
  *(v39 + 16) = v105[10].n128_u64[1];
  *(v39 + 24) = v40;
  *(v39 + 32) = 0;

  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v82 = OUTLINED_FUNCTION_8_7(v41);
    v0 = sub_1CFD34880(v82, v83, v84, v0);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v42, v115, v116, v117, v118);
  v43 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_447(v43 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  OUTLINED_FUNCTION_86_0();
  swift_allocObject();
  v44 = v105[13].n128_u8[8];
  v139 = *(v105 + 200);
  v140.n128_u8[0] = v44;
  v45 = MailEntity.Body.text.getter();
  OUTLINED_FUNCTION_293(v45, v46);
  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v85 = OUTLINED_FUNCTION_8_7(v47);
    v0 = sub_1CFD34880(v85, v86, v87, v0);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v48, v119, v120, v121, v122);
  v49 = OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_333(v49);
  v50 = v105->n128_u8[*(type metadata accessor for MailEntity(0) + 108)];
  OUTLINED_FUNCTION_246();
  *(swift_allocObject() + 16) = (v50 & 1) == 0;
  OUTLINED_FUNCTION_376();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v88 = OUTLINED_FUNCTION_8_7(v51);
    v0 = sub_1CFD34880(v88, v89, v90, v0);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v52, v123, v124, v125, v126);
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_86_0();
  v53 = swift_allocObject();
  MailEntity.dateReceivedOrDateSent.getter(v104);
  sub_1CFD48C98();
  OUTLINED_FUNCTION_265();
  v54 = OUTLINED_FUNCTION_239();
  v55(v54);
  *(v53 + 16) = v104;
  *(v53 + 24) = v12;
  *(v53 + 32) = 0;
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v91 = OUTLINED_FUNCTION_8_7(v56);
    v0 = sub_1CFD34880(v91, v92, v93, v0);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v57, v127, v128, v129, v130);
  v106 = v0;
  sub_1CFD32634(v105[14].n128_i64[1]);
  sub_1CFD311A0();
  OUTLINED_FUNCTION_443();
  sub_1CFD2A930(v53);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v58 = swift_allocObject();
  v59 = v105[14].n128_u64[0];
  v139.n128_u64[0] = v59;

  OUTLINED_FUNCTION_125_1();
  v60 = sub_1CFD48ED8();
  v62 = v61;

  *(v58 + 16) = v60;
  *(v58 + 24) = v62;
  *(v58 + 32) = 0;
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_384();
  v63 = v106;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_43_3();
    v63 = sub_1CFD34880(v94, v95, v96, v97);
  }

  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v63 = sub_1CFD34880((v64 > 1), v60, 1, v63);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v65, v131, v132, v133, v134);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  swift_allocObject();
  OUTLINED_FUNCTION_347();
  v67 = v105 + *(v66 + 88);
  if (v67[8])
  {
    countAndFlagsBits = OUTLINED_FUNCTION_141_0();
  }

  else
  {
    v139.n128_u64[0] = *v67;
    v70 = MailEntity.Categories.userFacingDescription()();
    object = v70._object;
    countAndFlagsBits = v70._countAndFlagsBits;
  }

  *(v59 + 16) = countAndFlagsBits;
  *(v59 + 24) = object;
  *(v59 + 32) = 0;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v98 = OUTLINED_FUNCTION_8_7(v71);
    v63 = sub_1CFD34880(v98, v99, v100, v63);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v72, v135, v136, v137, v138);
  OUTLINED_FUNCTION_1_10();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v73 = swift_allocObject();
  OUTLINED_FUNCTION_344(v73);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v101 = OUTLINED_FUNCTION_8_7(v74);
    sub_1CFD34880(v101, v102, v103, v63);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v75, v139, v140, v141, v142);
  OUTLINED_FUNCTION_155();
}

void sub_1CFD31EE8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_35_0();
  sub_1CFD48CC8();
  OUTLINED_FUNCTION_37();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_9();
  v112 = v4;
  OUTLINED_FUNCTION_102_1();
  v5 = sub_1CFD48F68();
  v6 = OUTLINED_FUNCTION_6_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_215();
  OUTLINED_FUNCTION_314();
  v10 = 0;
  v113 = v0;
  v11 = *(v0 + 144);
  v12 = *(v11 + 16);
  v13 = (v11 - 40);
  v14 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v15 = &v13->n128_u64[9 * v10];
  while (v12 != v10)
  {
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    ++v10;
    OUTLINED_FUNCTION_57_2();
    if (v0)
    {
      v111 = v1;
      v17 = *v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_44_3();
        v14 = sub_1CFCFE404(v20, v21, v22, v14);
      }

      v2 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v2 >= v18 >> 1)
      {
        v23 = OUTLINED_FUNCTION_72(v18);
        v14 = sub_1CFCFE404(v23, (v2 + 1), 1, v14);
      }

      *(v14 + 2) = v2 + 1;
      v19 = &v14[16 * v2];
      *(v19 + 4) = v17;
      *(v19 + 5) = v0;
      v1 = v111;
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_86_0();
  v24 = swift_allocObject();
  v13 = &v122;
  v123.n128_u64[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  OUTLINED_FUNCTION_0_11();
  sub_1CFD1AFF0(v25, &qword_1EC4F2A98, &unk_1CFD4D010, v26);
  OUTLINED_FUNCTION_125_1();
  v0 = sub_1CFD48ED8();
  v28 = v27;

  *(v24 + 16) = v0;
  *(v24 + 24) = v28;
  LOBYTE(v11) = 1;
  *(v24 + 32) = 1;
  OUTLINED_FUNCTION_331();
  OUTLINED_FUNCTION_131_1(v29, v30, v31, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_402();
  if (!v32)
  {
    goto LABEL_12;
  }

LABEL_35:
  v80 = OUTLINED_FUNCTION_8_7(v15);
  v2 = sub_1CFD34880(v80, v81, v82, v2);
LABEL_12:
  *(v2 + 2) = v0;
  v33 = &v2[64 * v1];
  *(v33 + 2) = v114;
  *(v33 + 3) = v115;
  *(v33 + 4) = v116;
  *(v33 + 5) = v117;
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_86_0();
  v34 = swift_allocObject();
  v35 = *(v113 + 80);
  *(v34 + 16) = *(v113 + 72);
  *(v34 + 24) = v35;
  *(v34 + 32) = v11;

  OUTLINED_FUNCTION_381();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v83 = OUTLINED_FUNCTION_8_7(v36);
    v2 = sub_1CFD34880(v83, v84, v85, v2);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v37, v118, v119, v120, v121);
  v38 = OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_447(v38);
  OUTLINED_FUNCTION_86_0();
  v39 = swift_allocObject();
  v40 = *(v113 + 176);
  *(v39 + 16) = *(v113 + 168);
  *(v39 + 24) = v40;
  *(v39 + 32) = 0;

  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v86 = OUTLINED_FUNCTION_8_7(v41);
    v2 = sub_1CFD34880(v86, v87, v88, v2);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v42, *v13, v13[1], v13[2], v13[3]);
  v43 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_447(v43 & 0xFFFFFFFFFFFFLL | 0x74000000000000);
  OUTLINED_FUNCTION_86_0();
  v44 = swift_allocObject();
  v45 = *(v113 + 216);
  v13[24] = *(v113 + 200);
  v124.n128_u8[0] = v45;
  *(v44 + 16) = MailEntity.Body.text.getter();
  *(v44 + 24) = v46;
  *(v44 + 32) = 0;
  OUTLINED_FUNCTION_301();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v89 = OUTLINED_FUNCTION_8_7(v47);
    v2 = sub_1CFD34880(v89, v90, v91, v2);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v48, v13[4], v13[5], v13[6], v13[7]);
  v49 = OUTLINED_FUNCTION_118_1();
  OUTLINED_FUNCTION_333(v49);
  v50 = type metadata accessor for MailEntity(0);
  v51 = *(v113 + *(v50 + 108));
  OUTLINED_FUNCTION_246();
  *(swift_allocObject() + 16) = (v51 & 1) == 0;
  OUTLINED_FUNCTION_376();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v92 = OUTLINED_FUNCTION_8_7(v52);
    v2 = sub_1CFD34880(v92, v93, v94, v2);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v53, v13[8], v13[9], v13[10], v13[11]);
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_86_0();
  v54 = swift_allocObject();
  MailEntity.dateReceivedOrDateSent.getter(v112);
  v55 = sub_1CFD48C98();
  v57 = v56;
  v58 = OUTLINED_FUNCTION_237();
  v59(v58);
  *(v54 + 16) = v55;
  *(v54 + 24) = v57;
  *(v54 + 32) = 0;
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_444();
  OUTLINED_FUNCTION_72_0();
  if (v32)
  {
    v95 = OUTLINED_FUNCTION_8_7(v60);
    v2 = sub_1CFD34880(v95, v96, v97, v2);
  }

  OUTLINED_FUNCTION_192_0();
  OUTLINED_FUNCTION_113_1(v61, v13[12], v13[13], v13[14], v13[15]);
  sub_1CFD32634(*(v113 + 232));
  sub_1CFD311A0();
  OUTLINED_FUNCTION_443();
  sub_1CFD2A930(v54);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v62 = swift_allocObject();
  v13[24].n128_u64[0] = *(v113 + 224);

  OUTLINED_FUNCTION_125_1();
  v63 = sub_1CFD48ED8();
  v65 = v64;

  *(v62 + 16) = v63;
  *(v62 + 24) = v65;
  *(v62 + 32) = 0;
  OUTLINED_FUNCTION_349();
  OUTLINED_FUNCTION_384();
  v66 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v98 = OUTLINED_FUNCTION_43_3();
    v66 = sub_1CFD34880(v98, v99, v100, v101);
  }

  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v102 = OUTLINED_FUNCTION_8_7(v67);
    v66 = sub_1CFD34880(v102, v103, v104, v66);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v68, v13[16], v13[17], v13[18], v13[19]);
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_270();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v69 = swift_allocObject();
  v70 = v113 + *(v50 + 88);
  if (*(v70 + 8))
  {
    countAndFlagsBits = OUTLINED_FUNCTION_141_0();
  }

  else
  {
    v13[24].n128_u64[0] = *v70;
    v73 = MailEntity.Categories.userFacingDescription()();
    object = v73._object;
    countAndFlagsBits = v73._countAndFlagsBits;
  }

  *(v69 + 16) = countAndFlagsBits;
  *(v69 + 24) = object;
  *(v69 + 32) = 0;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v105 = OUTLINED_FUNCTION_8_7(v74);
    v66 = sub_1CFD34880(v105, v106, v107, v66);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v75, v13[20], v13[21], v13[22], v13[23]);
  OUTLINED_FUNCTION_1_10();
  sub_1CFD48EF8();
  OUTLINED_FUNCTION_86_0();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1CFD24AC8();
  *(v76 + 24) = v77;
  *(v76 + 32) = 0;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_105_0();
  if (v32)
  {
    v108 = OUTLINED_FUNCTION_8_7(v78);
    sub_1CFD34880(v108, v109, v110, v66);
  }

  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_113_1(v79, v123, v124, v125, v126);
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFD32634(uint64_t a1)
{
  v11 = type metadata accessor for EntityAttachment(0);
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CFD35870(0, v4, 0);
    v5 = v12;
    v6 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    do
    {
      sub_1CFD35F58();
      swift_dynamicCast();
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1CFD35870((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      sub_1CFD020E8();
      v6 += v7;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void static ModelContentInput.empty(status:request:)()
{
  OUTLINED_FUNCTION_156();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = OUTLINED_FUNCTION_357();
  v12 = type metadata accessor for ModelInputContentRequest(v11);
  v13 = OUTLINED_FUNCTION_6_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_158_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  v15 = OUTLINED_FUNCTION_6_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_92_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_104_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_214();
  v18 = v10[1];
  v34[0] = *v10;
  v34[1] = v18;
  v33 = 0;
  sub_1CFD365A0(v34[0], v18);
  v19 = OUTLINED_FUNCTION_242();
  type metadata accessor for ModelContentInput.EntityStatus(v19, v20, v6, v21);
  v22 = sub_1CFD491B8();
  v23 = sub_1CFD48BD8();
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v23);
  OUTLINED_FUNCTION_183_0();
  OUTLINED_FUNCTION_299();
  sub_1CFD35F58();
  ModelContentInput.init(status:summarizationStatus:urgencyStatus:itemInformation:entityStatusList:topic:topLine:synopsis:isUrgent:urgencyModelVersion:summaryModelVersion:request:)(v34, &v33 + 1, &v33, 0, 0, v22, v4, v3, v0, v2, 2, 0, 0, 0, 0, v1, v8, v6);
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFD32A0C()
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_197();
  v3 = v1 == 0xD000000000000028 && v2 == v0;
  if (v3 || (OUTLINED_FUNCTION_20(0xD000000000000028, v2) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_197();
    v6 = v1 == 0xD000000000000026 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_20(0xD000000000000026, v5) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v1 == 0x737574617473 && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_20(0x737574617473, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_106_0();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_76_0(19, v8) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_368();
          v12 = v1 == v10 && v0 == v11;
          if (v12 || (OUTLINED_FUNCTION_20(v10, v11) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_367();
            v15 = v1 == v13 && v0 == v14;
            if (v15 || (OUTLINED_FUNCTION_20(v13, v14) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v16 = v1 == 0x7365697469746E65 && v0 == 0xE800000000000000;
              if (v16 || (OUTLINED_FUNCTION_20(0x7365697469746E65, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_197();
                v18 = v1 == 0xD000000000000010 && v17 == v0;
                if (v18 || (OUTLINED_FUNCTION_20(0xD000000000000010, v17) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v19 = v1 == 0x6369706F74 && v0 == 0xE500000000000000;
                  if (v19 || (OUTLINED_FUNCTION_20(0x6369706F74, 0xE500000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v20 = v1 == 0x656E694C706F74 && v0 == 0xE700000000000000;
                    if (v20 || (OUTLINED_FUNCTION_20(0x656E694C706F74, 0xE700000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v21 = v1 == 0x736973706F6E7973 && v0 == 0xE800000000000000;
                      if (v21 || (OUTLINED_FUNCTION_20(0x736973706F6E7973, 0xE800000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v22 = v1 == 0x746E656772557369 && v0 == 0xE800000000000000;
                        if (v22 || (OUTLINED_FUNCTION_20(0x746E656772557369, 0xE800000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_106_0();
                          v24 = v3 && v23 == v0;
                          if (v24 || (OUTLINED_FUNCTION_76_0(19, v23) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_106_0();
                            v26 = v3 && v25 == v0;
                            if (v26 || (OUTLINED_FUNCTION_76_0(19, v25) & 1) != 0)
                            {

                              return 13;
                            }

                            else if (v1 == 0x74736575716572 && v0 == 0xE700000000000000)
                            {

                              return 14;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_20(0x74736575716572, 0xE700000000000000);
                              OUTLINED_FUNCTION_37_0();
                              if (v1)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CFD32D60(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 14:
      return;
    case 3:
    case 12:
    case 13:
      OUTLINED_FUNCTION_270();
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_368();
      break;
    case 5:
      OUTLINED_FUNCTION_367();
      break;
    default:
LABEL_5:
      OUTLINED_FUNCTION_197();
      break;
  }
}

uint64_t sub_1CFD32F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void))
{
  sub_1CFD49728();
  a4(v7, *v4);
  return sub_1CFD49758();
}

uint64_t sub_1CFD32F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFD32A0C();
  *a1 = result;
  return result;
}

uint64_t sub_1CFD32FCC(uint64_t a1)
{
  OUTLINED_FUNCTION_32_4();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v1, v2);
}

uint64_t sub_1CFD3300C(uint64_t a1)
{
  OUTLINED_FUNCTION_32_4();
  swift_getWitnessTable();
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v1, v2);
}

void ModelContentInput.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_137();
  v21 = *(v0 + 24);
  v22 = *(v4 + 16);
  type metadata accessor for ModelContentInput.CodingKeys(255, v22, v21, v5);
  OUTLINED_FUNCTION_32_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_264();
  sub_1CFD49628();
  OUTLINED_FUNCTION_37();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_146();
  v9 = OUTLINED_FUNCTION_433();
  OUTLINED_FUNCTION_178(v9, v10);
  sub_1CFD497A8();
  sub_1CFD49608();
  if (v2)
  {
    v11 = OUTLINED_FUNCTION_165_0();
    v12(v11);
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49608();
    v23 = *(v1 + 16);
    v24 = *(v1 + 24);
    OUTLINED_FUNCTION_341();
    sub_1CFD365A0(v13, v14);
    type metadata accessor for ModelContentInput.Status(0, v22, v21, v15);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    sub_1CFCEF5D0(v23, v24);
    OUTLINED_FUNCTION_340();
    sub_1CFD1728C();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    sub_1CFD36680();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD495B8();
    sub_1CFD49338();
    OUTLINED_FUNCTION_35_0();
    sub_1CFD49218();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_176_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD495D8();
    type metadata accessor for ModelContentInput.EntityStatus(255, v22, v21, v16);
    OUTLINED_FUNCTION_35_0();
    sub_1CFD49218();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_176_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_141_1();
    OUTLINED_FUNCTION_13_5();
    sub_1CFD49618();
    sub_1CFD48BD8();
    OUTLINED_FUNCTION_175_0();
    sub_1CFD393B8(v17, v18, MEMORY[0x1E6968850]);
    sub_1CFD495D8();
    OUTLINED_FUNCTION_268();
    OUTLINED_FUNCTION_268();
    sub_1CFD495C8();
    OUTLINED_FUNCTION_372(12);
    OUTLINED_FUNCTION_372(13);
    type metadata accessor for ModelInputContentRequest(0);
    OUTLINED_FUNCTION_174_0();
    sub_1CFD393B8(v19, v20, &protocol conformance descriptor for ModelInputContentRequest);
    sub_1CFD49618();
    (*(v7 + 8))(v3);
  }

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_142();
}

void ModelContentInput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_318();
  type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_9();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  v28 = OUTLINED_FUNCTION_6_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v94 = v29;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_121_0();
  v95 = v31;
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_146_1();
  v96 = v33;
  v34 = OUTLINED_FUNCTION_114_0();
  type metadata accessor for ModelContentInput.CodingKeys(v34, v22, v21, v35);
  OUTLINED_FUNCTION_32_4();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_242();
  sub_1CFD49598();
  OUTLINED_FUNCTION_37();
  v97 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_148();
  v39 = OUTLINED_FUNCTION_307();
  v98 = v21;
  v42 = type metadata accessor for ModelContentInput(v39, v40, v21, v41);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_111_0();
  v45 = *(v44 + 64);
  v46 = sub_1CFD48BD8();
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v101 = *(v42 + 68);
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v46);
  v99 = v42;
  v100 = *(v42 + 72);
  OUTLINED_FUNCTION_154_0();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v46);
  v56 = v23[3];
  v57 = OUTLINED_FUNCTION_345();
  __swift_project_boxed_opaque_existential_1(v57, v58);
  OUTLINED_FUNCTION_266();
  sub_1CFD49788();
  if (v20)
  {
    OUTLINED_FUNCTION_227();
    __swift_destroy_boxed_opaque_existential_1(v23);

    if (WitnessTable)
    {
    }

    OUTLINED_FUNCTION_162_0();
    sub_1CFCE3050(v62, v63, v64);
    OUTLINED_FUNCTION_162_0();
    sub_1CFCE3050(v65, v66, v67);
    OUTLINED_FUNCTION_162_0();
    sub_1CFCE3050(v68, v69, v70);
    if (v24)
    {
    }

    if (v56)
    {
    }
  }

  else
  {
    LOBYTE(v102) = 0;
    *v25 = sub_1CFD49568();
    OUTLINED_FUNCTION_434(1);
    *(v25 + 8) = sub_1CFD49568();
    v59 = OUTLINED_FUNCTION_307();
    type metadata accessor for ModelContentInput.Status(v59, v60, v98, v61);
    OUTLINED_FUNCTION_341();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_322();
    sub_1CFD49578();
    *(v25 + 16) = v102;
    OUTLINED_FUNCTION_340();
    v71 = sub_1CFD17930();
    OUTLINED_FUNCTION_374(&type metadata for SummarizationStatus, v72, v73, v74, v71);
    *(v25 + 32) = 0;
    v75 = sub_1CFD366D4();
    OUTLINED_FUNCTION_374(&type metadata for UrgencyStatus, v76, v77, v78, v75);
    *(v25 + 33) = 0;
    OUTLINED_FUNCTION_434(5);
    *(v25 + 40) = sub_1CFD49518();
    *(v25 + 48) = v79;
    sub_1CFD49338();
    OUTLINED_FUNCTION_21();
    sub_1CFD49218();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_185_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_322();
    sub_1CFD49538();
    *(v25 + 56) = v102;
    type metadata accessor for ModelContentInput.EntityStatus(255, v22, v98, v80);
    OUTLINED_FUNCTION_21();
    sub_1CFD49218();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_185_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_322();
    sub_1CFD49578();
    *(v25 + 64) = v102;
    OUTLINED_FUNCTION_175_0();
    sub_1CFD393B8(v81, v82, MEMORY[0x1E6968868]);
    OUTLINED_FUNCTION_383();
    sub_1CFD365B4(v96, v25 + v45);
    OUTLINED_FUNCTION_383();
    sub_1CFD365B4(v95, v25 + v101);
    sub_1CFD49538();
    sub_1CFD365B4(v94, v25 + v100);
    OUTLINED_FUNCTION_228(11);
    *(v25 + v99[19]) = sub_1CFD49528();
    OUTLINED_FUNCTION_228(12);
    v83 = sub_1CFD49518();
    v84 = (v25 + v99[20]);
    *v84 = v83;
    v84[1] = v85;
    OUTLINED_FUNCTION_228(13);
    v86 = sub_1CFD49518();
    v87 = (v25 + v99[21]);
    *v87 = v86;
    v87[1] = v88;
    OUTLINED_FUNCTION_174_0();
    sub_1CFD393B8(v89, v90, &protocol conformance descriptor for ModelInputContentRequest);
    sub_1CFD49578();
    v91 = OUTLINED_FUNCTION_429();
    v92(v91);
    OUTLINED_FUNCTION_181_0();
    sub_1CFD35F00();
    OUTLINED_FUNCTION_399();
    OUTLINED_FUNCTION_266();
    v93();
    __swift_destroy_boxed_opaque_existential_1(v23);
    (*(v97 + 8))(v25, v99);
  }

  OUTLINED_FUNCTION_142();
}

void sub_1CFD33E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_156();
  v25 = v24;
  v26 = sub_1CFD48CE8();
  v27 = OUTLINED_FUNCTION_6_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_7();
  v28 = sub_1CFD48F68();
  v29 = OUTLINED_FUNCTION_6_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_0();
  v30 = sub_1CFD48BB8();
  OUTLINED_FUNCTION_37();
  v127 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_0();
  v33 = sub_1CFD48BD8();
  OUTLINED_FUNCTION_37();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  v38 = OUTLINED_FUNCTION_6_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_148_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_109_2();
  v128 = v25;
  v40 = *(v25 + 56);
  v41 = 0xE000000000000000;
  v42 = 0;
  switch(v40 >> 61)
  {
    case 1uLL:
      v47 = v40 & 0x1FFFFFFFFFFFFFFFLL;
      v48 = *(v47 + 24);
      if (!v48)
      {
        goto LABEL_35;
      }

      v35 = *(v47 + 16);
      v49 = HIBYTE(v48) & 0xF;
      if ((v48 & 0x2000000000000000) == 0)
      {
        v49 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (!v49)
      {
        goto LABEL_35;
      }

      v50 = *(v47 + 32);

      if (v50)
      {
        sub_1CFD3BDF8(v35, v48, 0);
        OUTLINED_FUNCTION_265();
        v52 = v51;

        OUTLINED_FUNCTION_226();
        sub_1CFD3B898(v53, v54, v55, v52);
        goto LABEL_39;
      }

      v41 = v48;
      goto LABEL_45;
    case 2uLL:
      swift_projectBox();
      OUTLINED_FUNCTION_310();
      sub_1CFD02140();
      OUTLINED_FUNCTION_310();
      sub_1CFD02140();
      OUTLINED_FUNCTION_378(v21, 1, v33);
      if (v56)
      {
        goto LABEL_33;
      }

      v92 = OUTLINED_FUNCTION_297();
      v93(v92);
      sub_1CFD48B98();
      v94 = sub_1CFD1C904();
      v95 = OUTLINED_FUNCTION_89_1();
      v96(v95, v30);
      if (v94)
      {
        (*(v35 + 8))(v22, v33);
        v97 = &qword_1EC4F2EB8;
        v98 = &unk_1CFD4BF50;
        v99 = v23;
        goto LABEL_34;
      }

      sub_1CFD48B98();
      OUTLINED_FUNCTION_11_7();
      sub_1CFD393B8(v107, v108, MEMORY[0x1E6968688]);
      OUTLINED_FUNCTION_136();
      sub_1CFD490E8();
      OUTLINED_FUNCTION_184_0();
      (*(v35 + 8))(v22, v33);
      v44 = &qword_1EC4F2EB8;
      v45 = &unk_1CFD4BF50;
      v46 = v23;
      goto LABEL_42;
    case 3uLL:
      if (*((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 2)
      {
        goto LABEL_35;
      }

      sub_1CFD48EF8();
      sub_1CFD21410();
      sub_1CFD48CD8();
      OUTLINED_FUNCTION_47_3();
      v42 = sub_1CFD48FE8();
      goto LABEL_46;
    case 4uLL:
      v57 = (v40 & 0x1FFFFFFFFFFFFFFFLL);
      v58 = v57[2];
      v137 = v57[1];
      v138 = v58;
      v59 = v57[4];
      v139 = v57[3];
      v140 = v59;
      sub_1CFD36728(&v137, v136);
      sub_1CFD33E3C(&v137, v60, v61, v62, v63, v64, v65, v66, v127, v25, v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, *&v136[0], *(&v136[0] + 1));
      OUTLINED_FUNCTION_184_0();
      sub_1CFD36094(&v137);
      v41 = v20;
      if (!v20)
      {
        goto LABEL_59;
      }

LABEL_45:
      v42 = v35;
      goto LABEL_46;
    case 5uLL:
      v67 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *(v67 + 16);
      if (v68)
      {
        v69 = (v67 + 32);
        v70 = MEMORY[0x1E69E7CC0];
        do
        {
          v71 = *v69;
          v72 = v69[1];
          v73 = v69[3];
          v139 = v69[2];
          v140 = v73;
          v137 = v71;
          v138 = v72;
          sub_1CFD36728(&v137, v136);
          sub_1CFD33E3C(&v137, v74, v75, v76, v77, v78, v79, v80, v127, v128, v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, *&v136[0], *(&v136[0] + 1));
          if (v81)
          {
            OUTLINED_FUNCTION_161_0();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = OUTLINED_FUNCTION_44_3();
              v70 = sub_1CFCFE404(v85, v86, v87, v70);
            }

            v83 = *(v70 + 2);
            v82 = *(v70 + 3);
            if (v83 >= v82 >> 1)
            {
              OUTLINED_FUNCTION_72(v82);
              OUTLINED_FUNCTION_140_1();
              v70 = sub_1CFCFE404(v88, v89, v90, v91);
            }

            sub_1CFD36094(&v137);
            *(v70 + 2) = v83 + 1;
            v84 = &v70[16 * v83];
            *(v84 + 4) = v25;
            *(v84 + 5) = v21;
          }

          else
          {
            sub_1CFD36094(&v137);
          }

          v69 += 4;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = MEMORY[0x1E69E7CC0];
      }

      if (!*(v70 + 2))
      {

        goto LABEL_35;
      }

      *&v136[0] = v70;
      OUTLINED_FUNCTION_125_1();
      sub_1CFD490D8();
      OUTLINED_FUNCTION_161_0();
      v103 = OUTLINED_FUNCTION_312();
      __swift_instantiateConcreteTypeFromMangledNameV2(v103, v104);
      OUTLINED_FUNCTION_0_11();
      sub_1CFD1AFF0(v105, &qword_1EC4F2A98, &unk_1CFD4D010, v106);
      OUTLINED_FUNCTION_396();
      sub_1CFD48ED8();
LABEL_39:
      OUTLINED_FUNCTION_184_0();

      goto LABEL_43;
    case 6uLL:
      goto LABEL_46;
    default:
      OUTLINED_FUNCTION_310();
      sub_1CFD02140();
      OUTLINED_FUNCTION_310();
      sub_1CFD02140();
      if (v131)
      {
        sub_1CFD01C10(&v129, v136);
        sub_1CFD01B90(v136, &v129);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3570, &qword_1CFD50AC8);
        if (swift_dynamicCast())
        {
          v43 = *(v134 + 16);

          if (v43)
          {
            sub_1CFD01B90(v136, &v129);
            sub_1CFD48FF8();
            OUTLINED_FUNCTION_184_0();
            __swift_destroy_boxed_opaque_existential_1(v136);
            v44 = &qword_1EC4F2FB8;
            v45 = &qword_1CFD50AC0;
            v46 = &v137;
LABEL_42:
            sub_1CFCE3050(v46, v44, v45);
LABEL_43:
            v42 = OUTLINED_FUNCTION_27();
LABEL_46:
            v109 = *v128;
            v110 = *(v128 + 8);
            v111 = *(v128 + 16);
            v112 = *(v128 + 24);
            v113 = *(v128 + 32);
            if (*(v128 + 40))
            {
              if (*(v128 + 40) == 1)
              {
                v114 = v42;
                v115 = v41;

                OUTLINED_FUNCTION_173();
                *&v136[0] = sub_1CFD490D8();
                *(&v136[0] + 1) = v116;
                MEMORY[0x1D3873940](32, 0xE100000000000000);
                v117 = OUTLINED_FUNCTION_107();
                MEMORY[0x1D3873940](v117);
LABEL_57:
                v110 = *(&v136[0] + 1);
                v109 = *&v136[0];
                goto LABEL_58;
              }

              v114 = v42;
              v115 = v41;
              if (!(v113 | v112 | v111))
              {

                goto LABEL_58;
              }

              if (v111 == 1 && !(v113 | v112))
              {
                *&v136[0] = *v128;
                *(&v136[0] + 1) = v110;
                v129 = v136[0];
                sub_1CFD36760(v136, &v134);
                MEMORY[0x1D3873940](58, 0xE100000000000000);
                v110 = *(&v129 + 1);
                v109 = v129;
LABEL_58:
                *&v129 = v109;
                *(&v129 + 1) = v110;
                OUTLINED_FUNCTION_125_1();
                v126 = sub_1CFD490D8();
                MEMORY[0x1D3873940](v126);

                MEMORY[0x1D3873940](v114, v115);

                goto LABEL_59;
              }

              OUTLINED_FUNCTION_107();
              sub_1CFD49048();
              v122 = sub_1CFD490D8();
              OUTLINED_FUNCTION_438(v122, v123);
              v124 = OUTLINED_FUNCTION_125_1();
              MEMORY[0x1D3873940](v124);
              v125 = OUTLINED_FUNCTION_107();
              MEMORY[0x1D3873940](v125);
              v121 = 10;
            }

            else
            {
              v114 = v42;
              v115 = v41;

              OUTLINED_FUNCTION_173();
              v118 = sub_1CFD490D8();
              OUTLINED_FUNCTION_438(v118, v119);
              MEMORY[0x1D3873940](32, 0xE100000000000000);
              v120 = OUTLINED_FUNCTION_107();
              MEMORY[0x1D3873940](v120);
              v121 = 32;
            }

            MEMORY[0x1D3873940](v121, 0xE100000000000000);
            MEMORY[0x1D3873940](v112, v113);

            goto LABEL_57;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v136);
        v97 = &qword_1EC4F2FB8;
        v98 = &qword_1CFD50AC0;
        v99 = &v137;
      }

      else
      {
LABEL_33:
        OUTLINED_FUNCTION_162_0();
        sub_1CFCE3050(v100, v101, v102);
        OUTLINED_FUNCTION_162_0();
      }

LABEL_34:
      sub_1CFCE3050(v99, v97, v98);
LABEL_35:
      OUTLINED_FUNCTION_141_0();
LABEL_59:
      OUTLINED_FUNCTION_155();
      return;
  }
}

id sub_1CFD34744(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFD48F78();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

uint64_t sub_1CFD347A8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_129_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

char *sub_1CFD347F4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1CFD34880(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1CFD34840(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1CFD34880((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1CFD34880(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFD34988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35C0, &unk_1CFD53AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CFD34A9C(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1CFD34C24(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_356();
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1CFD34E0C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1CFD34BA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35B0, &unk_1CFD53A88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 64);
  return v4;
}

void *sub_1CFD34C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFD34D20(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40);

    return MEMORY[0x1EEE6BD00](a3);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3);
  }

  return result;
}

void sub_1CFD34E0C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_137();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_25(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_266();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_266();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

uint64_t sub_1CFD34ED8(uint64_t (*a1)(void))
{
  a1();

  return sub_1CFD497D8();
}

uint64_t sub_1CFD34F14(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1CFCFE9A4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

BOOL sub_1CFD34F70(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1CFD49728();
  sub_1CFD49038();
  v8 = sub_1CFD49758();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1CFD49668() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_1CFD35318(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1CFD350BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35E0, &qword_1CFD53B10);
  result = sub_1CFD493E8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1CFD35480(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1CFD49728();
    sub_1CFD49038();
    result = sub_1CFD49758();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1CFD35318(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1CFD350BC(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1CFD3563C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1CFD49728();
      sub_1CFD49038();
      result = sub_1CFD49758();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1CFD49668() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1CFD354E4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1CFD496B8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_1CFD35480(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1CFD4D230;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1CFD354E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35E0, &qword_1CFD53B10);
  v2 = *v0;
  v3 = sub_1CFD493D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1CFD3563C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35E0, &qword_1CFD53B10);
  result = sub_1CFD493E8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1CFD49728();

        sub_1CFD49038();
        result = sub_1CFD49758();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void *sub_1CFD35870(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFD35890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFD35890(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F35C8, &unk_1CFD53AB0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1CFD34D20(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1CFD35A5C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1CFD34880(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1CFD35AC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CFD34BA8(*(a1 + 16), 0);
  v4 = sub_1CFD39518(&v6, v3 + 2, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1CFD35B58()
{
  result = qword_1EC4FEE98;
  if (!qword_1EC4FEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEE98);
  }

  return result;
}

unint64_t sub_1CFD35BAC()
{
  result = qword_1EC4FEEA0;
  if (!qword_1EC4FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEA0);
  }

  return result;
}

unint64_t sub_1CFD35C00()
{
  result = qword_1EC4FEEA8;
  if (!qword_1EC4FEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEA8);
  }

  return result;
}

unint64_t sub_1CFD35C54()
{
  result = qword_1EC4FEEB0;
  if (!qword_1EC4FEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEB0);
  }

  return result;
}

unint64_t sub_1CFD35CA8()
{
  result = qword_1EC4FEEB8;
  if (!qword_1EC4FEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEB8);
  }

  return result;
}

unint64_t sub_1CFD35CFC()
{
  result = qword_1EC4FEEC0;
  if (!qword_1EC4FEEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEC0);
  }

  return result;
}

unint64_t sub_1CFD35D50()
{
  result = qword_1EC4FEEC8;
  if (!qword_1EC4FEEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEC8);
  }

  return result;
}

unint64_t sub_1CFD35DA4()
{
  result = qword_1EC4FEED0;
  if (!qword_1EC4FEED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEED0);
  }

  return result;
}

unint64_t sub_1CFD35DF8()
{
  result = qword_1EC4F3490;
  if (!qword_1EC4F3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3490);
  }

  return result;
}

unint64_t sub_1CFD35E4C()
{
  result = qword_1EC4F34A0;
  if (!qword_1EC4F34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F34A0);
  }

  return result;
}

uint64_t sub_1CFD35F00()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

uint64_t sub_1CFD35F58()
{
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_27();
  v3(v2);
  return v0;
}

uint64_t sub_1CFD35FB0()
{
  v1 = OUTLINED_FUNCTION_21();
  v2(v1);
  OUTLINED_FUNCTION_25();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1CFD3601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_70();
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_1CFD360C4()
{
  result = qword_1EC4FEED8;
  if (!qword_1EC4FEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEED8);
  }

  return result;
}

unint64_t sub_1CFD36118()
{
  result = qword_1EC4FEEE0;
  if (!qword_1EC4FEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEE0);
  }

  return result;
}

unint64_t sub_1CFD3616C()
{
  result = qword_1EC4FEEE8;
  if (!qword_1EC4FEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEE8);
  }

  return result;
}

unint64_t sub_1CFD361C0()
{
  result = qword_1EC4FEEF0;
  if (!qword_1EC4FEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEF0);
  }

  return result;
}

unint64_t sub_1CFD36234()
{
  result = qword_1EC4FEEF8;
  if (!qword_1EC4FEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEEF8);
  }

  return result;
}

unint64_t sub_1CFD36288()
{
  result = qword_1EC4FEF00;
  if (!qword_1EC4FEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF00);
  }

  return result;
}

unint64_t sub_1CFD362DC()
{
  result = qword_1EC4FEF08;
  if (!qword_1EC4FEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF08);
  }

  return result;
}

unint64_t sub_1CFD36330()
{
  result = qword_1EC4FEF10;
  if (!qword_1EC4FEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4FEF10);
  }

  return result;
}

unint64_t sub_1CFD36384()
{
  result = qword_1EC4FEF18[0];
  if (!qword_1EC4FEF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4FEF18);
  }

  return result;
}

uint64_t sub_1CFD365A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1CFD365B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFD36680()
{
  result = qword_1EC4F3560;
  if (!qword_1EC4F3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3560);
  }

  return result;
}

unint64_t sub_1CFD366D4()
{
  result = qword_1EC4F3568;
  if (!qword_1EC4F3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3568);
  }

  return result;
}

unint64_t sub_1CFD367C0()
{
  result = qword_1EC4F3578;
  if (!qword_1EC4F3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3578);
  }

  return result;
}

unint64_t sub_1CFD36818()
{
  result = qword_1EC4F3580;
  if (!qword_1EC4F3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3580);
  }

  return result;
}

unint64_t sub_1CFD36870()
{
  result = qword_1EC4F3588;
  if (!qword_1EC4F3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3588);
  }

  return result;
}

unint64_t sub_1CFD368C8()
{
  result = qword_1EC4F3590;
  if (!qword_1EC4F3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3590);
  }

  return result;
}

unint64_t sub_1CFD36920()
{
  result = qword_1EC4F3598;
  if (!qword_1EC4F3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F3598);
  }

  return result;
}

uint64_t sub_1CFD36990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0 && *(a1 + 18))
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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD369CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 18) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
    }
  }

  return result;
}

void sub_1CFD36A6C(uint64_t a1)
{
  type metadata accessor for ModelInputAndOutputKind(319);
  if (v1 <= 0x3F)
  {
    sub_1CFD04BF0(319, &unk_1EDDD3760, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_141_0();
    }
  }
}

uint64_t sub_1CFD36B34(uint64_t a1)
{
  result = sub_1CFD48D98();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_141_0();
  }

  return result;
}

void sub_1CFD36BB0(uint64_t a1)
{
  sub_1CFD1B268(319);
  if (v1 <= 0x3F)
  {
    sub_1CFD1B2FC(319);
    if (v2 <= 0x3F)
    {
      sub_1CFD1B390(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        OUTLINED_FUNCTION_141_0();
      }
    }
  }
}

uint64_t sub_1CFD36C4C(uint64_t a1)
{
  OUTLINED_FUNCTION_346();
  v5 = type metadata accessor for ModelContentInput.Status(v1, v2, v3, v4);
  if (v6 <= 0x3F)
  {
    sub_1CFD04BF0(319, qword_1EDDD3340, MEMORY[0x1E69E6158]);
    v5 = v7;
    if (v8 <= 0x3F)
    {
      sub_1CFD49338();
      sub_1CFD49218();
      v9 = sub_1CFD49338();
      if (v10 > 0x3F)
      {
        return v9;
      }

      OUTLINED_FUNCTION_346();
      type metadata accessor for ModelContentInput.EntityStatus(v11, v12, v13, v14);
      v9 = sub_1CFD49218();
      if (v15 > 0x3F)
      {
        return v9;
      }

      sub_1CFD17D6C(319);
      if (v16 > 0x3F)
      {
        return v9;
      }

      sub_1CFD04BF0(319, &unk_1EDDD3760, MEMORY[0x1E69E6370]);
      if (v17 > 0x3F)
      {
        return v9;
      }

      else
      {
        v5 = type metadata accessor for ModelInputContentRequest(319);
        if (v18 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1CFD36E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModelContentInput.EntityStatus.EntityContentSource(255, *(a1 + 16), *(a1 + 24), a4);
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    result = sub_1CFCE8918();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_141_0();
    }
  }

  return result;
}

uint64_t sub_1CFD36EBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 16;
  if ((v3 + 1) > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1CFD36FE0(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if ((v5 + 1) > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v14 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v13 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v16 = v10 & ~(-1 << v8);
        v17 = OUTLINED_FUNCTION_27();
        bzero(v17, v18);
        if (v7 == 3)
        {
          *a1 = v16;
          *(a1 + 2) = BYTE2(v16);
        }

        else if (v7 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      v11 = OUTLINED_FUNCTION_27();
      bzero(v11, v12);
      *a1 = v10;
      v13 = 1;
    }

    switch(v9)
    {
      case 1:
        *(a1 + v7) = v13;
        break;
      case 2:
        *(a1 + v7) = v13;
        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *(a1 + v7) = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        *(a1 + v7) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      case 2:
        *(a1 + v7) = 0;
        goto LABEL_26;
      case 3:
        goto LABEL_38;
      case 4:
        *(a1 + v7) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_27;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          *(a1 + v6) = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1CFD371A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient17ModelContentInputV6StatusOyAA10MailEntityV_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CFD3720C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_23_0();
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CFD3725C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_1CFD372AC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_132_0(result, a2);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient7SectionV6HeaderV5StyleO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_28ProactiveSummarizationClient7SectionV4KindO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CFD37314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD37350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1CFD373A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7A && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 121);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x79)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v3);
}

void *sub_1CFD373F8(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      return OUTLINED_FUNCTION_392(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void *sub_1CFD37450(void *a1, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *a1 & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return OUTLINED_FUNCTION_392(a1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CFD374A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0 && *(a1 + 56))
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

  return OUTLINED_FUNCTION_3_2(v2);
}

uint64_t sub_1CFD374DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

      return OUTLINED_FUNCTION_132_0(result, a2);
    }

    *(result + 56) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_132_0(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1CFD37544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_3_2(*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 > 2)
  {
    return OUTLINED_FUNCTION_3_2(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }
}

uint64_t sub_1CFD37580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CFD375C8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1CFD375FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 15);
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

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFD37680(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 14);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD3773C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37808(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37944(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1CFD379F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CFD37AC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFD37B48(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1CFD37C74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_133(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_131(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_132(result, v6);
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
          result = OUTLINED_FUNCTION_27_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CFD37D64()
{
  result = qword_1EC500AD0[0];
  if (!qword_1EC500AD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC500AD0);
  }

  return result;
}

unint64_t sub_1CFD37DBC()
{
  result = qword_1EC5012E0[0];
  if (!qword_1EC5012E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5012E0);
  }

  return result;
}

unint64_t sub_1CFD37E14()
{
  result = qword_1EC5014F0[0];
  if (!qword_1EC5014F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5014F0);
  }

  return result;
}

unint64_t sub_1CFD37E6C()
{
  result = qword_1EC501700[0];
  if (!qword_1EC501700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501700);
  }

  return result;
}

unint64_t sub_1CFD37EC4()
{
  result = qword_1EC501910[0];
  if (!qword_1EC501910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501910);
  }

  return result;
}

unint64_t sub_1CFD37F1C()
{
  result = qword_1EC501B20[0];
  if (!qword_1EC501B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501B20);
  }

  return result;
}

unint64_t sub_1CFD37F74()
{
  result = qword_1EC501D30[0];
  if (!qword_1EC501D30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501D30);
  }

  return result;
}

unint64_t sub_1CFD37FCC()
{
  result = qword_1EC501F40[0];
  if (!qword_1EC501F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC501F40);
  }

  return result;
}

unint64_t sub_1CFD38024()
{
  result = qword_1EC502150[0];
  if (!qword_1EC502150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502150);
  }

  return result;
}

unint64_t sub_1CFD3807C()
{
  result = qword_1EC502460[0];
  if (!qword_1EC502460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502460);
  }

  return result;
}

unint64_t sub_1CFD380D4()
{
  result = qword_1EC502670[0];
  if (!qword_1EC502670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC502670);
  }

  return result;
}

unint64_t sub_1CFD385FC()
{
  result = qword_1EC504A80;
  if (!qword_1EC504A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504A80);
  }

  return result;
}

unint64_t sub_1CFD38654()
{
  result = qword_1EC504A88[0];
  if (!qword_1EC504A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504A88);
  }

  return result;
}

unint64_t sub_1CFD386AC()
{
  result = qword_1EC504B10;
  if (!qword_1EC504B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504B10);
  }

  return result;
}

unint64_t sub_1CFD38704()
{
  result = qword_1EC504B18[0];
  if (!qword_1EC504B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504B18);
  }

  return result;
}

unint64_t sub_1CFD3875C()
{
  result = qword_1EC504BA0;
  if (!qword_1EC504BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504BA0);
  }

  return result;
}

unint64_t sub_1CFD387B4()
{
  result = qword_1EC504BA8[0];
  if (!qword_1EC504BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504BA8);
  }

  return result;
}

unint64_t sub_1CFD3880C()
{
  result = qword_1EC504C30;
  if (!qword_1EC504C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504C30);
  }

  return result;
}

unint64_t sub_1CFD38864()
{
  result = qword_1EC504C38[0];
  if (!qword_1EC504C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504C38);
  }

  return result;
}

unint64_t sub_1CFD388BC()
{
  result = qword_1EC504CC0;
  if (!qword_1EC504CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504CC0);
  }

  return result;
}

unint64_t sub_1CFD38914()
{
  result = qword_1EC504CC8[0];
  if (!qword_1EC504CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504CC8);
  }

  return result;
}

unint64_t sub_1CFD3896C()
{
  result = qword_1EC504D50;
  if (!qword_1EC504D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504D50);
  }

  return result;
}

unint64_t sub_1CFD389C4()
{
  result = qword_1EC504D58[0];
  if (!qword_1EC504D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504D58);
  }

  return result;
}

unint64_t sub_1CFD38A1C()
{
  result = qword_1EC504DE0;
  if (!qword_1EC504DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504DE0);
  }

  return result;
}

unint64_t sub_1CFD38A74()
{
  result = qword_1EC504DE8[0];
  if (!qword_1EC504DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504DE8);
  }

  return result;
}

unint64_t sub_1CFD38ACC()
{
  result = qword_1EC504E70;
  if (!qword_1EC504E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504E70);
  }

  return result;
}

unint64_t sub_1CFD38B24()
{
  result = qword_1EC504E78;
  if (!qword_1EC504E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504E78);
  }

  return result;
}

unint64_t sub_1CFD38B7C()
{
  result = qword_1EC504F00;
  if (!qword_1EC504F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504F00);
  }

  return result;
}

unint64_t sub_1CFD38BD4()
{
  result = qword_1EC504F08[0];
  if (!qword_1EC504F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504F08);
  }

  return result;
}

unint64_t sub_1CFD38C2C()
{
  result = qword_1EC504F90;
  if (!qword_1EC504F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC504F90);
  }

  return result;
}

unint64_t sub_1CFD38C84()
{
  result = qword_1EC504F98[0];
  if (!qword_1EC504F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC504F98);
  }

  return result;
}

unint64_t sub_1CFD38CDC()
{
  result = qword_1EC505020;
  if (!qword_1EC505020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505020);
  }

  return result;
}

unint64_t sub_1CFD38D34()
{
  result = qword_1EC505028[0];
  if (!qword_1EC505028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505028);
  }

  return result;
}

unint64_t sub_1CFD38D8C()
{
  result = qword_1EC5050B0;
  if (!qword_1EC5050B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5050B0);
  }

  return result;
}

unint64_t sub_1CFD38DE4()
{
  result = qword_1EC5050B8[0];
  if (!qword_1EC5050B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5050B8);
  }

  return result;
}

unint64_t sub_1CFD38E3C()
{
  result = qword_1EC505140;
  if (!qword_1EC505140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505140);
  }

  return result;
}

unint64_t sub_1CFD38E94()
{
  result = qword_1EC505148[0];
  if (!qword_1EC505148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505148);
  }

  return result;
}

unint64_t sub_1CFD38EEC()
{
  result = qword_1EC5051D0;
  if (!qword_1EC5051D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5051D0);
  }

  return result;
}

unint64_t sub_1CFD38F44()
{
  result = qword_1EC5051D8[0];
  if (!qword_1EC5051D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5051D8);
  }

  return result;
}

unint64_t sub_1CFD38F9C()
{
  result = qword_1EC505260;
  if (!qword_1EC505260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505260);
  }

  return result;
}

unint64_t sub_1CFD38FF4()
{
  result = qword_1EC505268[0];
  if (!qword_1EC505268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505268);
  }

  return result;
}

unint64_t sub_1CFD3904C()
{
  result = qword_1EC5052F0;
  if (!qword_1EC5052F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5052F0);
  }

  return result;
}

unint64_t sub_1CFD390A4()
{
  result = qword_1EC5052F8[0];
  if (!qword_1EC5052F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5052F8);
  }

  return result;
}

unint64_t sub_1CFD390FC()
{
  result = qword_1EC505380;
  if (!qword_1EC505380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505380);
  }

  return result;
}

unint64_t sub_1CFD39154()
{
  result = qword_1EC505388[0];
  if (!qword_1EC505388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505388);
  }

  return result;
}

unint64_t sub_1CFD391AC()
{
  result = qword_1EC505410;
  if (!qword_1EC505410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505410);
  }

  return result;
}

unint64_t sub_1CFD39204()
{
  result = qword_1EC505418[0];
  if (!qword_1EC505418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505418);
  }

  return result;
}

unint64_t sub_1CFD3925C()
{
  result = qword_1EC5054A0;
  if (!qword_1EC5054A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5054A0);
  }

  return result;
}

unint64_t sub_1CFD392B4()
{
  result = qword_1EC5054A8[0];
  if (!qword_1EC5054A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC5054A8);
  }

  return result;
}

unint64_t sub_1CFD3930C()
{
  result = qword_1EC505530;
  if (!qword_1EC505530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC505530);
  }

  return result;
}

unint64_t sub_1CFD39364()
{
  result = qword_1EC505538[0];
  if (!qword_1EC505538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC505538);
  }

  return result;
}

uint64_t sub_1CFD393B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE **sub_1CFD39408(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t objectdestroy_274Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void *sub_1CFD39518(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v11 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v11;
    return v6;
  }

  if (!a3)
  {
    v11 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    for (i = (a4 + (v6 << 6) - 32); ; i -= 4)
    {
      v11 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v11 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = i[1];
      v16[0] = *i;
      v12 = v16[0];
      v16[1] = v13;
      v14 = i[3];
      v17 = i[2];
      v18 = v14;
      v8[2] = v17;
      v8[3] = v14;
      *v8 = v12;
      v8[1] = v13;
      if (a3 + v9 == 1)
      {
        sub_1CFD36728(v16, v15);
        v11 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 4;
      result = sub_1CFD36728(v16, v15);
      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1CFD39610()
{
  result = qword_1EC4F35F8;
  if (!qword_1EC4F35F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F35F8);
  }

  return result;
}