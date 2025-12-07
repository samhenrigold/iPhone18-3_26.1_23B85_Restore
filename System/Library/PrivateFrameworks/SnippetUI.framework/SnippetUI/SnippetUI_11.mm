void sub_26A5A72B4()
{
  OUTLINED_FUNCTION_28_0();
  v59 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_82();
  v58 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_82();
  v57 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v54 = v11;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v55 = v16;
  v56 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v20, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v65);
  memcpy(v2, v65, 0xBFuLL);
  OUTLINED_FUNCTION_0_25();
  sub_26A5AA244();
  v21 = type metadata accessor for SummaryItemPlayerView(0);
  v22 = v21[5];
  if (qword_2803A8AE8 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_2803A8AE8);
  }

  OUTLINED_FUNCTION_24_9(&v66);
  OUTLINED_FUNCTION_24_9(&v64[368]);
  sub_26A4D7E54();
  sub_26A6AEE74(v64);
  memcpy(v67, &v64[400], sizeof(v67));
  OUTLINED_FUNCTION_31_8();
  memcpy(&v2[v22], v64, 0x240uLL);
  v23 = &v2[v21[6]];
  sub_26A54DFFC(v67, v63);
  v24 = v55;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v68 = xmmword_281588758;
  v69 = unk_281588768;
  v70 = xmmword_281588778;
  v71 = xmmword_281588788;
  v72 = xmmword_281588758;
  v73 = unk_281588768;
  v74 = xmmword_281588778;
  v75 = xmmword_281588788;
  v52 = xmmword_281588788;
  v53 = xmmword_281588778;
  sub_26A4D7E54();
  v25 = sub_26A6AEE74(v63);
  OUTLINED_FUNCTION_84_0(v25, v63);
  v26 = v52;
  *(v23 + 12) = v53;
  *(v23 + 13) = v26;
  v27 = v73;
  *(v23 + 14) = v72;
  *(v23 + 15) = v27;
  v28 = v75;
  *(v23 + 16) = v74;
  *(v23 + 17) = v28;
  v29 = v21[7];
  *&v2[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v31 = v21[9];
  *&v2[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v32 = v59;
  sub_26A84C6E8();
  v33 = TextProperty.asAnyView()();
  v34 = *(v24 + 8);
  v35 = v56;
  v34(v19, v56);
  *&v2[v21[10]] = v33;
  sub_26A84C6F8();
  v36 = sub_26A84D098();
  OUTLINED_FUNCTION_40_4(v14);
  if (v37)
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  else
  {
    v38 = v14;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v39 + 8))(v14, v36);
  }

  *&v2[v21[11]] = v38;
  v40 = v54;
  sub_26A84C708();
  OUTLINED_FUNCTION_40_4(v40);
  if (v37)
  {
    sub_26A4D6FD8();
    v41 = 0;
  }

  else
  {
    v41 = v40;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v42 + 8))(v40, v36);
  }

  *&v2[v21[12]] = v41;
  v43 = v57;
  sub_26A84C718();
  if (__swift_getEnumTagSinglePayload(v43, 1, v35) == 1)
  {
    sub_26A4D6FD8();
    v44 = 0;
  }

  else
  {
    v44 = TextProperty.asAnyView()();
    v34(v43, v35);
  }

  *&v2[v21[13]] = v44;
  v45 = v58;
  sub_26A84C738();
  v46 = sub_26A84BD28();
  OUTLINED_FUNCTION_40_4(v45);
  if (v37)
  {
    sub_26A4D6FD8();
    v47 = 0;
  }

  else
  {
    v47 = v45;
    VisualProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v48 + 8))(v45, v46);
  }

  *&v2[v21[14]] = v47;
  v49 = sub_26A84C6A8();
  v60 = swift_getKeyPath();
  v61 = 0;
  v62 = v49;
  sub_26A5A23F4();
  v50 = sub_26A851248();
  sub_26A84C748();
  OUTLINED_FUNCTION_46();
  (*(v51 + 8))(v32);
  *&v2[v21[15]] = v50;
  OUTLINED_FUNCTION_27_0();
}

uint64_t SummaryItemPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A5A51A0();
  sub_26A5A7BF8(v21);
  sub_26A5A5388();
  sub_26A5A54DC(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v20 = v1;
  sub_26A4C7FC4();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEBA8, &unk_26A862C40) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEBB0, &qword_26A862C78) + 36)) = 46;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v16 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEBB8, &qword_26A862CA8);
  v18 = a1 + *(result + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v16;
  return result;
}

void sub_26A5A7BF8(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v4 = 0.0;
  if (byte_2803B0441 == 1 && (v5 = sub_26A5A5388(), sub_26A61B05C(v5, &unk_287B131A0)))
  {
    sub_26A4D7E10();
    v7 = sub_26A63CD18(v6);
    v8 = 1;
    v9 = 0;
    v10 = 0.0;
    switch(v7)
    {
      case 1:
      case 2:
      case 3:
        v11 = sub_26A852598();

        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      case 4:
        break;
      default:

LABEL_8:
        v12 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
        v9 = *(v12 + *(type metadata accessor for SummaryItemConstants(0) + 48));
        v13 = type metadata accessor for SummaryItemPlayerView(0);
        v8 = 0;
        v14 = v2 + *(v13 + 24);
        v4 = *(v14 + 192) + -4.0;
        v10 = *(v14 + 208) + -4.0;
        break;
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
    v8 = 1;
    v10 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
}

uint64_t sub_26A5A7DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA0E8, &qword_26A855D28);
  MEMORY[0x28223BE20](v21[0]);
  v4 = v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEBF8, &unk_26A862D40);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA0D8, &qword_26A855D20);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = sub_26A84F3A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A5A54DC(v12);
  v13 = sub_26A84F388();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28);
    v15 = sub_26A84FC08();
    v16 = *(a1 + v14);
    *v8 = v15;
    *(v8 + 1) = v16;
    v8[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC08, &qword_26A862D58);
    sub_26A5A8B64(a1, (a1 + v14));
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    sub_26A84FDF8();
  }

  else
  {
    if (qword_28157FCB0 != -1)
    {
      swift_once();
    }

    v17 = qword_2815889E0;
    v18 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
    *v4 = v17;
    *(v4 + 1) = v18;
    v4[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC00, &qword_26A862D50);
    sub_26A5A8204(a1, &v4[*(v19 + 44)]);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    sub_26A84FDF8();
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A5A8204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v3);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v8);
  v55 = &v50 - v9;
  v10 = type metadata accessor for SummaryItemPlayerView(0);
  v11 = v10[10];
  if (*(a1 + v10[11]))
  {
    v12 = &protocol witness table for AnyView;
    v13 = MEMORY[0x277CE11C8];
    v14 = *(a1 + v10[11]);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v88 = 0;
    v87 = 0;
  }

  KeyPath = *(a1 + v11);
  v86 = v14;
  v89 = v13;
  v90 = v12;
  if (*(a1 + v10[12]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(a1 + v10[12]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v83 = 0;
    v82 = 0;
  }

  v81 = v17;
  v84 = v16;
  v85 = v15;
  if (*(a1 + v10[13]))
  {
    v18 = &protocol witness table for AnyView;
    v19 = MEMORY[0x277CE11C8];
    v20 = *(a1 + v10[13]);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v78 = 0;
    v77 = 0;
  }

  v76 = v20;
  v79 = v19;
  v80 = v18;
  v21 = *(a1 + v10[14]);
  if (v21)
  {
    v22 = &protocol witness table for AnyView;
    v23 = MEMORY[0x277CE11C8];
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v73 = 0;
    v72 = 0;
  }

  v24 = v10;
  v52 = a1;
  v71 = v21;
  v74 = v23;
  v75 = v22;
  v25 = qword_28157E670;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v26, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v91);
  memcpy(v7, v91, 0xBFuLL);
  sub_26A5AA244();
  v27 = v3[5];
  *&v7[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v28 = &v7[v3[6]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  *&v7[v3[7]] = KeyPath;
  sub_26A4D7E54();
  v29 = v59;
  if (v59)
  {
    v30 = v60[0];
    __swift_project_boxed_opaque_existential_1(v57, v59);
    v31 = *(v30 + 8);

    v32 = v31(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {

    sub_26A4D6FD8();
    v32 = 0;
  }

  *&v7[v3[8]] = v32;
  sub_26A4D7E54();
  v33 = v59;
  v34 = v52;
  if (v59)
  {
    v35 = v60[0];
    __swift_project_boxed_opaque_existential_1(v57, v59);
    v36 = (*(v35 + 8))(v33, v35);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_26A4D6FD8();
    v36 = 0;
  }

  *&v7[v3[9]] = v36;
  sub_26A4D7E54();
  v37 = v59;
  if (v59)
  {
    v38 = v60[0];
    __swift_project_boxed_opaque_existential_1(v57, v59);
    v39 = (*(v38 + 8))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_26A4D6FD8();
    v39 = 0;
  }

  *&v7[v3[10]] = v39;
  sub_26A4D7E54();
  v40 = v69;
  if (v69)
  {
    v41 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v42 = (*(v41 + 8))(v40, v41);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    v42 = 0;
  }

  *&v7[v3[11]] = v42;
  sub_26A5AA1F0();
  v43 = *(v34 + v24[15]);
  KeyPath = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v44 = qword_2803A8AE8;

  if (v44 != -1)
  {
    swift_once();
  }

  memcpy(v65, qword_2803D1B00, sizeof(v65));
  memcpy(&v63[368], qword_2803D1B00, 0xD0uLL);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy(v66, &v63[400], sizeof(v66));
  memcpy(&v63[192], &v63[400], 0xB0uLL);
  v67[592] = 0;
  v67[584] = 0;
  memcpy(&v67[7], v63, 0x240uLL);
  sub_26A54DFFC(v66, v57);
  sub_26A851468();
  sub_26A84F628();
  memcpy(&v64[7], __src, 0x70uLL);
  sub_26A5AA244();
  v45 = v53;
  sub_26A5AA244();
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC30, &qword_26A862EE0) + 48);
  v56[0] = v43;
  v52 = v43;
  v47 = KeyPath;
  v56[1] = KeyPath;
  LOBYTE(v56[2]) = 0;
  v48 = v50;
  v56[3] = v50;
  LOBYTE(v56[4]) = 0;
  memcpy(&v56[4] + 1, v67, 0x247uLL);
  LOBYTE(v56[77]) = 0;
  memcpy(&v56[77] + 1, v64, 0x77uLL);
  memcpy((v45 + v46), v56, 0x2E0uLL);
  sub_26A4D7E54();
  sub_26A5AA298();
  v57[0] = v52;
  v57[1] = v47;
  v58 = 0;
  v59 = v48;
  LOBYTE(v60[0]) = 0;
  memcpy(v60 + 1, v67, 0x247uLL);
  v61 = 0;
  memcpy(v62, v64, sizeof(v62));
  sub_26A4D6FD8();
  return sub_26A5AA298();
}

uint64_t sub_26A5A8B64(uint64_t a1, char *a2)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC10, &unk_26A862D60);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = &KeyPath - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0, &unk_26A85D4D0);
  MEMORY[0x28223BE20](v7);
  v9 = (&KeyPath - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD620, &qword_26A85E320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &KeyPath - v14;
  MEMORY[0x28223BE20](v16);
  v40 = &KeyPath - v17;
  v18 = *(a1 + *(type metadata accessor for SummaryItemPlayerView(0) + 56));
  if (v18)
  {
    v19 = type metadata accessor for SummaryItemConstants(0);
    v37 = v3;
    v20 = *(v19 + 36);
    KeyPath = swift_getKeyPath();
    v21 = *(v7 + 36);
    v38 = v12;
    v22 = (v9 + v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40);
    v39 = a1;
    v24 = *(v23 + 28);
    v25 = sub_26A84B1D8();
    (*(*(v25 - 8) + 16))(v22 + v24, &v41[v20], v25);
    __swift_storeEnumTagSinglePayload(v22 + v24, 0, 1, v25);
    *v22 = KeyPath;
    *v9 = v18;
    v26 = swift_getKeyPath();
    sub_26A4D7EA8();
    v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308, &qword_26A8584C0) + 36)];
    *v27 = v26;
    a1 = v39;
    v27[8] = 1;
    v3 = v37;
    v28 = swift_getKeyPath();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    v30 = &v15[*(v29 + 36)];
    *v30 = v28;
    v30[8] = 0;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v29);
    sub_26A4D7EA8();

    v31 = sub_26A84FA58();
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0, &qword_26A8583F0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v32);
    sub_26A4D7EA8();
    v31 = sub_26A84FA78();
  }

  v33 = *v41;
  *v6 = v31;
  *(v6 + 1) = v33;
  v6[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC18, &qword_26A862D70);
  sub_26A5A9010(a1, &v6[*(v34 + 44)]);
  *&v6[*(v3 + 36)] = 256;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC20, &qword_26A862D78);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5A9010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for SummaryItemStandardTextLayout(0);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  MEMORY[0x28223BE20](v8);
  v48 = &v46 - v9;
  v10 = type metadata accessor for SummaryItemPlayerView(0);
  v11 = v10[10];
  if (*(a1 + v10[11]))
  {
    v12 = &protocol witness table for AnyView;
    v13 = MEMORY[0x277CE11C8];
    v14 = *(a1 + v10[11]);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v69 = 0;
    v70 = 0;
  }

  v46 = *(a1 + v11);
  v68 = v14;
  v71 = v13;
  v72 = v12;
  if (*(a1 + v10[12]))
  {
    v15 = &protocol witness table for AnyView;
    v16 = MEMORY[0x277CE11C8];
    v17 = *(a1 + v10[12]);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v64 = 0;
    v65 = 0;
  }

  v63 = v17;
  v66 = v16;
  v67 = v15;
  v18 = *(a1 + v10[13]);
  v47 = a1;
  if (v18)
  {
    v19 = &protocol witness table for AnyView;
    v20 = MEMORY[0x277CE11C8];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v59 = 0;
    v60 = 0;
  }

  v58 = v18;
  v61 = v20;
  v62 = v19;
  v21 = qword_28157E670;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v22, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v73);
  memcpy(v7, v73, 0xBFuLL);
  sub_26A5AA244();
  v23 = &v7[v3[5]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v7[v3[6]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v7[v3[7]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v3[8];
  *&v7[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v27 = &v7[v3[9]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v7[v3[10]];
  v56 = 0;
  v57 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470, &qword_26A8560B0);
  sub_26A851048();
  v29 = v52;
  v30 = v53;
  *v28 = v51;
  v28[8] = v29;
  *(v28 + 2) = v30;
  *&v7[v3[12]] = v46;
  sub_26A4D7E54();
  v31 = v54;
  if (v54)
  {
    v32 = v55;
    __swift_project_boxed_opaque_existential_1(&v51, v54);
    v33 = *(v32 + 8);

    v34 = v33(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {

    sub_26A4D6FD8();
    v34 = 0;
  }

  *&v7[v3[13]] = v34;
  sub_26A4D7E54();
  v35 = v54;
  if (v54)
  {
    v36 = v55;
    __swift_project_boxed_opaque_existential_1(&v51, v54);
    v37 = (*(v36 + 8))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    sub_26A4D6FD8();
    v37 = 0;
  }

  *&v7[v3[14]] = v37;
  sub_26A4D7E54();
  v38 = v54;
  if (v54)
  {
    v39 = v55;
    __swift_project_boxed_opaque_existential_1(&v51, v54);
    v40 = (*(v39 + 8))(v38, v39);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    v40 = 0;
  }

  *&v7[v3[15]] = v40;
  v7[v3[11]] = 1;
  sub_26A5AA1F0();
  v41 = *(v47 + v10[15]);
  sub_26A5AA244();
  v42 = v49;
  sub_26A5AA244();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC28, &qword_26A862E88);
  v44 = v42 + *(v43 + 48);
  *v44 = 0;
  *(v44 + 8) = 1;
  *(v42 + *(v43 + 64)) = v41;
  swift_retain_n();
  sub_26A5AA298();

  return sub_26A5AA298();
}

void sub_26A5A96AC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v47 = v3;
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v46 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v11 = sub_26A84C748();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v17 = v16 - v15;
  v18 = type metadata accessor for SummaryItemPlayerView(0);
  v19 = OUTLINED_FUNCTION_79(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB10, &qword_26A856C08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB18, &qword_26A856C10);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19();
  v50 = v28;
  OUTLINED_FUNCTION_92();
  v30 = MEMORY[0x28223BE20](v29);
  (*(v13 + 16))(v17, v1, v11, v30);
  v49 = v22;
  sub_26A5A72B4();
  v52 = v1;
  v31 = v48;
  sub_26A84C728();
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_40_4(v9);
  if (v32)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v34 = &v26[*(v23 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v36 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v34 + v35, 1, 1, v36);
    *v34 = KeyPath;
  }

  else
  {
    v37 = v46;
    v38 = *(v47 + 32);
    v38(v46, v9, v31);
    v39 = swift_getKeyPath();
    v40 = &v26[*(v23 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v38(v40 + v41, v37, v31);
    v42 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v40 + v41, 0, 1, v42);
    *v40 = v39;
  }

  sub_26A5AA1F0();
  v43 = sub_26A84C6B8();
  sub_26A4DD42C(v43, v44);

  sub_26A4D6FD8();
  sub_26A84C6C8();

  sub_26A4D7E54();
  sub_26A5AA2EC();
  sub_26A851248();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A5A9B2C()
{
  result = qword_2803AEB88;
  if (!qword_2803AEB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEB78, &unk_26A862B40);
    sub_26A5A9BE4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEB88);
  }

  return result;
}

unint64_t sub_26A5A9BE4()
{
  result = qword_2803AEB90;
  if (!qword_2803AEB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEB80, &qword_26A862C08);
    sub_26A5AA518();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEB90);
  }

  return result;
}

unint64_t sub_26A5A9CF0(uint64_t a1)
{
  result = sub_26A5AA518();
  *(a1 + 8) = result;
  return result;
}

void sub_26A5A9D70(uint64_t a1)
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A5A9F78(319, &qword_2803ADD00, &type metadata for ButtonViewConstants, type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A5A9F78(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
      if (v3 <= 0x3F)
      {
        sub_26A4D27F4(319);
        if (v4 <= 0x3F)
        {
          sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_26A5A9F78(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26A5A9F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A5A9FC8()
{
  result = qword_2803AEBD8;
  if (!qword_2803AEBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBB8, &qword_26A862CA8);
    sub_26A5AA080();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEBD8);
  }

  return result;
}

unint64_t sub_26A5AA080()
{
  result = qword_2803AEBE0;
  if (!qword_2803AEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBB0, &qword_26A862C78);
    sub_26A5AA10C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEBE0);
  }

  return result;
}

unint64_t sub_26A5AA10C()
{
  result = qword_2803AEBE8;
  if (!qword_2803AEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEBA8, &unk_26A862C40);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEBE8);
  }

  return result;
}

uint64_t sub_26A5AA1F0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5AA244()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5AA298()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A5AA2EC()
{
  result = qword_2803AEC40;
  if (!qword_2803AEC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB18, &qword_26A856C10);
    sub_26A5AA3A4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEC40);
  }

  return result;
}

unint64_t sub_26A5AA3A4()
{
  result = qword_2803AEC48;
  if (!qword_2803AEC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB08, &qword_26A856C00);
    sub_26A5AA430();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEC48);
  }

  return result;
}

unint64_t sub_26A5AA430()
{
  result = qword_2803AEC50;
  if (!qword_2803AEC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB10, &qword_26A856C08);
    sub_26A5AA518();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEC50);
  }

  return result;
}

unint64_t sub_26A5AA518()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_16_9@<Q0>(__n128 *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  v5 = a1[2];
  v6 = a1[3];
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  v8 = v2[2];
  result = v2[3];
  *v1 = result;
  v1[1] = v8;
  return result;
}

__n128 OUTLINED_FUNCTION_17_9()
{
  v3 = *v0;
  *(v1 + 192) = v0[1];
  *(v1 + 208) = v3;
  v4 = *(v2 + 80);
  *(v1 + 224) = *(v2 + 64);
  *(v1 + 240) = v4;
  result = *(v2 + 96);
  v6 = *(v2 + 112);
  *(v1 + 256) = result;
  *(v1 + 272) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_10()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_21_8(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_24_9(void *a1)
{

  return memcpy(a1, v1, 0xD0uLL);
}

uint64_t OUTLINED_FUNCTION_25_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10[5] = a8;
  v10[13] = a7;
  v10[14] = a5;
  v10[11] = a6;
  v10[12] = a9;
  v10[15] = a4;
  v10[16] = a3;
  v10[17] = a2;
  v10[18] = a1;

  return type metadata accessor for StandardPlayerButtonView(0);
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 80) = &a9 - v9;

  return type metadata accessor for SummaryItemPlayerView(0);
}

void *OUTLINED_FUNCTION_31_8()
{

  return memcpy((v0 + 192), (v0 + 400), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return sub_26A54DFFC(v0 + 1376, v0 + 192);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_26A4D7E54();
}

uint64_t VisualizationImageView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26A84CB78();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t VisualizationImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VisualizationLayout(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC58, &qword_26A862EF0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  sub_26A84CB68();
  sub_26A84CB38();
  sub_26A84CB48();
  sub_26A84CB58();
  v10 = sub_26A84CB08();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *v5 = KeyPath;
  v5[8] = 0;
  *(v5 + 2) = v14;
  v5[24] = 0;
  v15 = *(v3 + 32);
  *&v5[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v16 = &v5[*(v3 + 52)];
  *v16 = v10;
  v16[1] = v12;
  sub_26A84CB18();

  if (sub_26A5AAA7C())
  {
    v17 = sub_26A68CD1C;
  }

  else
  {
    v17 = sub_26A68CD24;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  v19 = &v9[*(v7 + 44)];
  *(v19 + 2) = swift_getKeyPath();
  v19[24] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v21 = *(v20 + 40);
  *&v19[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v22 = &v19[*(v20 + 44)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *v19 = sub_26A4D1F7C;
  *(v19 + 1) = v18;
  sub_26A5AAB88(v5, v9);
  return sub_26A5AABEC(v9, a1);
}

BOOL sub_26A5AAA7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_26A84CB38();
  v6 = sub_26A84B888();
  v7 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_26A5AAF60(v5);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A84CB48();
    v7 = __swift_getEnumTagSinglePayload(v2, 1, v6) != 1;
    sub_26A5AAF60(v2);
  }

  return v7;
}

uint64_t sub_26A5AAB88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualizationLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5AABEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC58, &qword_26A862EF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VisualizationImageView(uint64_t a1)
{
  result = qword_2803AEC68;
  if (!qword_2803AEC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5AAD0C(uint64_t a1)
{
  result = sub_26A5AAEB4(&qword_2803AEC60, MEMORY[0x277D63408], MEMORY[0x277D63400]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A5AAD8C(uint64_t a1, __n128 a2)
{
  result = sub_26A84CB78();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26A5AADF8()
{
  result = qword_2803AEC78;
  if (!qword_2803AEC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEC58, &qword_26A862EF0);
    sub_26A5AAEB4(&qword_2803AEC80, type metadata accessor for VisualizationLayout, &unk_26A85DBD4);
    sub_26A5AAEFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEC78);
  }

  return result;
}

uint64_t sub_26A5AAEB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A5AAEFC()
{
  result = qword_28157DD90[0];
  if (!qword_28157DD90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A91D8, &qword_26A8575D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DD90);
  }

  return result;
}

uint64_t sub_26A5AAF60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_26(__n128 a1)
{

  return sub_26A84CB78();
}

BOOL View.determineMultiLine(_:)()
{
  v0 = sub_26A851788();
  sub_26A84F068();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD220, &unk_26A85D940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76918];
  v7 = v4;
  v8 = [v5 preferredFontForTextStyle_];
  *(inited + 64) = sub_26A5AB178();
  *(inited + 40) = v8;
  type metadata accessor for Key(0, v9, v10, v11);
  sub_26A5AB1BC(v12, v13, v14, v15);
  sub_26A8516A8();
  v16 = sub_26A851688();

  [v0 boundingRectWithSize:1 options:v16 attributes:0 context:{v2, 1.79769313e308}];
  v18 = v17;

  sub_26A84F068();
  v20 = vabdd_f64(v19 + 1.0, v18) >= 0.01;
  return v18 < v19 + 1.0 && v20;
}

unint64_t sub_26A5AB178()
{
  result = qword_2803AD228;
  if (!qword_2803AD228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AD228);
  }

  return result;
}

unint64_t sub_26A5AB1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_2803A9490;
  if (!qword_2803A9490)
  {
    type metadata accessor for Key(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9490);
  }

  return result;
}

uint64_t sub_26A5AB2DC()
{
  if (qword_2803A8BF0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4043000000000000;
  if (!byte_2803B0440)
  {
    v0 = 0x403C000000000000;
  }

  *&xmmword_2803D1BD8 = 0x403C000000000000;
  *(&xmmword_2803D1BD8 + 1) = v0;
  qword_2803D1BE8 = 0x402C000000000000;
  unk_2803D1BF0 = v0;
  byte_2803D1BF8 = 0;
  return result;
}

uint64_t sub_26A5AB354()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SimpleItemVisualView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4EF020();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A5AB53C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SimpleItemVisualView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A5AB690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SimpleItemVisualView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SimpleItemVisualView.init(text1:thumbnails:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for SimpleItemVisualView(0);
  v8 = v7[6];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v7[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v7[8];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  v11 = swift_storeEnumTagMultiPayload();
  *a3 = a2(v11);
  sub_26A4EF6D0();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = OUTLINED_FUNCTION_0_7();
    v14 = v13(v12);
    sub_26A4DBD10(a1, &qword_2803A91B8, &qword_26A8575C0);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    OUTLINED_FUNCTION_18_0(a1);
    result = OUTLINED_FUNCTION_18_0(v16);
    v14 = 0;
  }

  a3[1] = v14;
  return result;
}

uint64_t type metadata accessor for SimpleItemVisualView(uint64_t a1)
{
  result = qword_2803AECA0;
  if (!qword_2803AECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SimpleItemVisualView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A5AB354();
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A5AB53C();
  sub_26A5AB690(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4C8034();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CD04;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC88, &unk_26A8630E8) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC90, &qword_26A863120);
  *(a1 + *(result + 36)) = 16;
  return result;
}

__n128 sub_26A5ABCA8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for CGSize(0, a2, a3, a4);

  sub_26A851048();
  result = v9;
  *a5 = v6;
  *(a5 + 8) = v7;
  *(a5 + 16) = 3;
  *(a5 + 24) = v9;
  *(a5 + 40) = v10;
  *(a5 + 48) = 0x4020000000000000;
  return result;
}

double sub_26A5ABD2C@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v3 + 64) = *(v1 + 48);
  *&v15[3] = *(v1 + 24);
  v15[5] = v5;
  sub_26A5AD904(v1, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECD0, &qword_26A863250);
  sub_26A851058();
  sub_26A851448();
  sub_26A84F028();
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  *a1 = sub_26A5AD8FC;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = *v15;
  *(a1 + 48) = *v15;
  return result;
}

uint64_t sub_26A5ABE30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_26A84F068();
  v6 = *(a1 + 16);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = (v5 - v7 * (v6 - 1)) / v6;
    *a2 = sub_26A84FC08();
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECD8, &qword_26A863258);
    sub_26A5ABFAC(a1, (a2 + *(v9 + 44)), v8);
    v10 = swift_allocObject();
    v11 = *(a1 + 16);
    *(v10 + 16) = *a1;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(a1 + 32);
    *(v10 + 64) = *(a1 + 48);
    sub_26A5AD904(a1, v18);
    v12 = sub_26A851448();
    v14 = v13;
    v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECE0, &qword_26A863260) + 36));
    *v15 = sub_26A8027E0;
    v15[1] = 0;
    v15[2] = v12;
    v15[3] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_26A5AD984;
    *(v16 + 24) = v10;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECE8, &qword_26A863268);
    v17 = (a2 + *(result + 36));
    *v17 = sub_26A52E998;
    v17[1] = v16;
  }

  return result;
}

uint64_t sub_26A5ABFAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v27 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECF0, &unk_26A863270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v26 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &KeyPath - v9;
  sub_26A5AC2BC(*(a1 + 16), *a1);
  v12 = v11;
  v13 = *(v11 + 16);
  v29 = 0;
  v30 = v13;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  *(v14 + 72) = v12;
  *(v14 + 80) = a3;
  sub_26A5AD904(a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AECF8, &qword_26A8632A0);
  sub_26A4EEF40();
  sub_26A4DBCC8(&qword_2803AED00, &qword_2803AECF8, &qword_26A8632A0, MEMORY[0x277CE1138]);
  sub_26A8512F8();
  v16 = *(a1 + 8);
  if (v16)
  {

    sub_26A850498();
    sub_26A850398();
    v17 = sub_26A850428();

    v18 = swift_getKeyPath();
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = *(v6 + 16);
  v20 = v26;
  v19(v26, v10, v5);
  v21 = v27;
  v19(v27, v20, v5);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED08, &qword_26A8632A8) + 48)];
  *v22 = v16;
  v22[1] = v18;
  v22[2] = v17;
  sub_26A4E624C(v16);
  v23 = *(v6 + 8);
  v23(v10, v5);
  sub_26A4E6378(v16);
  return (v23)(v20, v5);
}

void sub_26A5AC2BC(uint64_t a1, void *a2)
{
  if (!a1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = a2[2];
  v5 = sub_26A5ADAE4(0, v4, a1);
  v23 = MEMORY[0x277D84F90];
  sub_26A7DD124(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (a1 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v8 = v6 + a1;
    if (__OFADD__(v6, a1))
    {
      v9 = ((v6 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v9 = v6 + a1;
    }

    if (__OFADD__(v6, a1))
    {
      goto LABEL_52;
    }

    if (v4 < v8)
    {
      v8 = v4;
    }

    v10 = v8 - v6;
    if (v8 < v6)
    {
      goto LABEL_53;
    }

    if (v6 < 0)
    {
      goto LABEL_54;
    }

    if (v4 == v10)
    {

      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (v8 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED48, &unk_26A863310);
          v11 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v14 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v13 = *(v23 + 16);
    v12 = *(v23 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_26A7DD124((v12 > 1), v13 + 1, 1);
    }

    *(v23 + 16) = v13 + 1;
    *(v23 + 8 * v13 + 32) = v11;
    v6 = v9;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_27:
    v15 = v4 >= v9;
    if (a1 > 0)
    {
      v15 = v9 >= v4;
    }

    if (v15)
    {
      break;
    }

    v16 = v9 + a1;
    if (__OFADD__(v9, a1))
    {
      v17 = ((v9 + a1) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v17 = v9 + a1;
    }

    if (__OFADD__(v9, a1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v4 < v16)
    {
      v16 = v4;
    }

    v18 = v16 - v9;
    if (v16 < v9)
    {
      goto LABEL_49;
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v18)
    {

      v19 = a2;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (v16 != v9)
      {
        if (v18 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED48, &unk_26A863310);
          v19 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size(v19);
          v19[2] = v18;
          v19[3] = 2 * ((v22 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v21 = *(v23 + 16);
    v20 = *(v23 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_26A7DD124((v20 > 1), v21 + 1, 1);
    }

    *(v23 + 16) = v21 + 1;
    *(v23 + 8 * v21 + 32) = v19;
    v9 = v17;
  }
}

void sub_26A5AC5C0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  v9 = *(a2 + 48);
  *a4 = sub_26A84FA78();
  *(a4 + 8) = v9;
  *(a4 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED10, &qword_26A8632E0);
  sub_26A5AC638(a3, v8, (a4 + *(v10 + 44)), a5);
}

void sub_26A5AC638(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED18, &qword_26A8632E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 16) > a2)
  {
    v15 = *(a1 + 8 * a2 + 32);
    v16 = *(v15 + 16);
    v21[0] = 0;
    v21[1] = v16;
    swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110, &unk_26A872FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED20, &qword_26A8632F0);
    sub_26A4EEF40();
    sub_26A5AD9A8();
    sub_26A8512F8();
    v18 = *(v9 + 16);
    v18(v11, v14, v8);
    v18(a3, v11, v8);
    v19 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED40, &qword_26A863308) + 48)];
    *v19 = 0;
    v19[8] = 1;
    v20 = *(v9 + 8);
    v20(v14, v8);
    v20(v11, v8);
    return;
  }

  __break(1u);
}

unint64_t *sub_26A5AC8A4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(a2 + 16))
  {
    v6 = *(a2 + 8 * v5 + 32);

    sub_26A851448();
    sub_26A84F028();
    v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED20, &qword_26A8632F0) + 36));
    v8 = *(sub_26A84F5F8() + 20);
    v9 = *MEMORY[0x277CE0118];
    v10 = sub_26A84FB88();
    (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
    __asm { FMOV            V0.2D, #8.0 }

    *v7 = _Q0;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00);
    *&v7[*(result + 9)] = 256;
    *a3 = v6;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
    *(a3 + 48) = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A5ACAAC()
{
  v49 = sub_26A84BAB8();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v45 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v2 = OUTLINED_FUNCTION_79(v1);
  MEMORY[0x28223BE20](v2);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = type metadata accessor for SimpleItemVisualView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v10);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB88, &unk_26A856C80);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAB90, &unk_26A863320);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  sub_26A84C258();
  v20 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803AA838, &unk_26A856770);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v53[1] = 0;
    v53[2] = 0;
  }

  else
  {
    v21 = TextProperty.asAnyView()();
    (*(*(v20 - 8) + 8))(v8, v20);
    v23 = &protocol witness table for AnyView;
    v22 = MEMORY[0x277CE11C8];
  }

  v53[0] = v21;
  v53[3] = v22;
  v53[4] = v23;
  v24 = v9[6];
  *(v12 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v25 = v12 + v9[7];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v9[8];
  *(v12 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  *v12 = sub_26A5AD124();
  sub_26A4EF6D0();
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v27 = OUTLINED_FUNCTION_0_7();
    v29 = v28(v27);
    sub_26A4DBD10(v53, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    OUTLINED_FUNCTION_18_0(v53);
    OUTLINED_FUNCTION_18_0(v51);
    v29 = 0;
  }

  v30 = v49;
  v12[1] = v29;
  sub_26A84C268();
  v31 = v48;
  sub_26A4EF020();
  if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
  {
    sub_26A4DBD10(v31, &qword_2803B3800, &unk_26A856760);
    KeyPath = swift_getKeyPath();
    v33 = &v15[*(v47 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v35 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v33 + v34, 1, 1, v35);
    *v33 = KeyPath;
  }

  else
  {
    v49 = v19;
    v36 = v45;
    v37 = *(v46 + 32);
    v37(v45, v31, v30);
    v48 = swift_getKeyPath();
    v38 = &v15[*(v47 + 36)];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v37(&v38[v39], v36, v30);
    v19 = v49;
    v40 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(&v38[v39], 0, 1, v40);
    *v38 = v48;
  }

  sub_26A5ADD9C();
  v41 = sub_26A84C228();
  sub_26A4DCDD4(v41, v42);

  sub_26A4DBD10(v15, &qword_2803AAB88, &unk_26A856C80);
  sub_26A84C238();

  sub_26A4EF6D0();
  sub_26A5ADB28();
  v43 = sub_26A851248();
  sub_26A4DBD10(v19, &qword_2803AAB90, &unk_26A863320);
  return v43;
}

uint64_t sub_26A5AD124()
{
  v0 = sub_26A84BD28();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VisualPropertyView(0);
  v29 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26A84C218();
  v8 = *(v7 + 16);
  if (v8)
  {
    v33 = MEMORY[0x277D84F90];
    sub_26A7DD164(0, v8, 0);
    v9 = v33;
    v11 = *(v1 + 16);
    v10 = v1 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v27 = *(v10 + 56);
    v28 = v11;
    v25[1] = v7;
    v26 = (v10 - 8);
    do
    {
      v13 = v28;
      v28(v3, v12, v0);
      v14 = v10;
      v13(v6, v3, v0);
      v15 = &v6[v4[5]];
      *v15 = swift_getKeyPath();
      v15[9] = 0;
      swift_unknownObjectWeakInit();
      v16 = &v6[v4[6]];
      *v16 = swift_getKeyPath();
      v16[8] = 0;
      v17 = &v6[v4[7]];
      *v17 = swift_getKeyPath();
      v17[8] = 0;
      v18 = v4[8];
      *&v6[v18] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
      swift_storeEnumTagMultiPayload();
      v19 = &v6[v4[9]];
      v30 = 0;
      sub_26A851048();
      v20 = v32;
      *v19 = v31;
      *(v19 + 1) = v20;
      (*v26)(v3, v0);
      v33 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_26A7DD164(v21 > 1, v22 + 1, 1);
        v9 = v33;
      }

      *(v9 + 16) = v22 + 1;
      sub_26A5ADD9C();
      v12 += v27;
      --v8;
      v10 = v14;
    }

    while (v8);
  }

  sub_26A7DC158();

  v23 = static AnyViewBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_26A5AD4C4(uint64_t a1)
{
  result = sub_26A5ADD54(&qword_2803AEC98, MEMORY[0x277D63288], MEMORY[0x277D63280]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A5AD544(uint64_t a1)
{
  sub_26A5AD680(319, &qword_2803AECB0, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A5AD680(319, &qword_2803A9240, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
        if (v4 <= 0x3F)
        {
          sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A5AD680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CE11C8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26A5AD6D4()
{
  result = qword_2803AECB8;
  if (!qword_2803AECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEC90, &qword_26A863120);
    sub_26A5AD760();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AECB8);
  }

  return result;
}

unint64_t sub_26A5AD760()
{
  result = qword_2803AECC0;
  if (!qword_2803AECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEC88, &unk_26A8630E8);
    sub_26A4DBCC8(&qword_2803AECC8, &qword_2803AA0A0, &qword_26A855D00, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AECC0);
  }

  return result;
}

uint64_t sub_26A5AD844(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26A5AD884(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{

  return swift_deallocObject();
}

unint64_t sub_26A5AD9A8()
{
  result = qword_2803AED28;
  if (!qword_2803AED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AED20, &qword_26A8632F0);
    sub_26A5ADA60();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED28);
  }

  return result;
}

unint64_t sub_26A5ADA60()
{
  result = qword_2803AED30;
  if (!qword_2803AED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AED38, &unk_26A8632F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED30);
  }

  return result;
}

uint64_t sub_26A5ADAE4(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_26A5ADB28()
{
  result = qword_2803AED50;
  if (!qword_2803AED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB90, &unk_26A863320);
    sub_26A5ADBE0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED50);
  }

  return result;
}

unint64_t sub_26A5ADBE0()
{
  result = qword_2803AED58;
  if (!qword_2803AED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB80, &unk_26A863330);
    sub_26A5ADC6C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED58);
  }

  return result;
}

unint64_t sub_26A5ADC6C()
{
  result = qword_2803AED60;
  if (!qword_2803AED60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB88, &unk_26A856C80);
    sub_26A5ADD54(&qword_2803AED68, type metadata accessor for SimpleItemVisualView, &protocol conformance descriptor for SimpleItemVisualView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED60);
  }

  return result;
}

uint64_t sub_26A5ADD54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A5ADD9C()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

unint64_t sub_26A5ADDF4()
{
  result = qword_2803AED70;
  if (!qword_2803AED70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AED78, &qword_26A8633C0);
    sub_26A4DBCC8(&qword_2803AED80, &qword_2803AED88, &qword_26A8633C8, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AED70);
  }

  return result;
}

uint64_t sub_26A5ADEAC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_26A5ADFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for HorizontalListStandardView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t HorizontalListStandardView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA9D0, &qword_26A8633F0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  *v3 = sub_26A84FC08();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AED90, &qword_26A8633F8);
  sub_26A5AE2E8(v0, &v3[*(v4 + 44)]);
  type metadata accessor for HorizontalListStandardView(0);
  v5 = sub_26A84D378();
  sub_26A4DE66C(v5, v6);

  return sub_26A4D6FD8();
}

uint64_t sub_26A5AE2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HorizontalListStandardView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v7;
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEF8, &qword_26A8637B0);
  MEMORY[0x28223BE20](v16 - 8);
  v58 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v21);
  v56 = *(v5 + 32);
  sub_26A84D418();
  v22 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
    sub_26A4D6FD8();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEF00, &unk_26A8637B8);
    v24 = v20;
    v25 = 1;
  }

  else
  {
    v52 = *(v22 - 8);
    (*(v52 + 16))(v13, v10, v22);
    v26 = v11[5];
    v54 = a1;
    v27 = &v13[v26];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v11[6];
    *&v13[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    v51 = v14;
    swift_storeEnumTagMultiPayload();
    v29 = &v13[v11[7]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v13[v11[8]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    *(v30 + 3) = swift_getKeyPath();
    v30[32] = 0;
    v31 = type metadata accessor for ActionHandler(0);
    v53 = v6;
    v32 = v31[6];
    *&v30[v32] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v33 = &v30[v31[7]];
    *v33 = swift_getKeyPath();
    *(v33 + 1) = 0;
    v33[16] = 0;
    v34 = &v30[v31[8]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v30[v31[9]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v30[v31[10]];
    *v36 = swift_getKeyPath();
    v36[9] = 0;
    swift_unknownObjectWeakInit();
    v37 = v31[11];
    v38 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    (*(v52 + 8))(v10, v22);
    sub_26A850408();
    v39 = sub_26A850308();

    KeyPath = swift_getKeyPath();
    v41 = v55;
    sub_26A5B26B4();
    v42 = &v41[*(v51 + 36)];
    *v42 = KeyPath;
    v42[1] = v39;
    LOBYTE(KeyPath) = sub_26A850248();
    sub_26A4D7EA8();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEF00, &unk_26A8637B8);
    v43 = &v20[*(v23 + 36)];
    *v43 = KeyPath;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    v43[40] = 1;
    v24 = v20;
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  sub_26A4D7EA8();
  v44 = sub_26A84D3F8();
  sub_26A5B2868();
  v45 = swift_allocObject();
  sub_26A5B26B4();

  v47 = sub_26A5B23C0(v46);

  sub_26A4D7E54();
  sub_26A4D7E54();
  v48 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEF08, &qword_26A8637C8) + 48));
  *v48 = sub_26A5B28BC;
  *(v48 + 1) = v45;
  *(v48 + 2) = v44;
  v48[3] = v47;
  v48[4] = 0.0;

  sub_26A4D6FD8();

  return sub_26A4D6FD8();
}

uint64_t sub_26A5AEA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_26A84BAB8();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA088, &qword_26A855CF0);
  MEMORY[0x28223BE20](v18 - 8);
  sub_26A84D3C8();
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  v31 = sub_26A5ADEAC();
  sub_26A5ADFF0(v13);
  v19 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v19);
  v33 = a1;
  v35 = a1;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    sub_26A4D6FD8();
    v20 = type metadata accessor for ActionType(0);
    v21 = v9;
    v22 = 1;
  }

  else
  {
    v23 = v29;
    v24 = *(v30 + 32);
    v24(v29, v16, v3);
    v24(v9, v23, v3);
    v25 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    v21 = v9;
    v22 = 0;
    v20 = v25;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4C8830();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  v26 = sub_26A84D388();
  sub_26A4DE754(v26, v27);

  return sub_26A4D6FD8();
}

double sub_26A5AEEE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84D3E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(type metadata accessor for HorizontalListStandardView.ItemView(0) + 20));
  sub_26A851048();
  result = v7;
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t sub_26A5AEF88@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A84DDE8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84D398();
  v8 = sub_26A5AF058(v7);
  result = (*(v4 + 8))(v7, v2);
  *a1 = v8;
  return result;
}

uint64_t sub_26A5AF058(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDD8, &qword_26A8634F8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDE0, &qword_26A863500);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDE8, &qword_26A863508);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_26A84DDE8();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v17, a1, v11, v15);
  v18 = (*(v13 + 88))(v17, v11);
  if (v18 == *MEMORY[0x277D63628])
  {
    (*(v13 + 96))(v17, v11);
    v19 = *v17;
    v20 = sub_26A851E98();
    LOBYTE(v30) = 2;
    sub_26A7B7684(v20, 1, "SnippetUI/HorizontalListStandardView.swift", 42, 2, 50, "itemView(for:)", 14, v30, v19, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    *v10 = sub_26A84FBF8();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDF0, &qword_26A863510) + 44)];
    v22 = v33;
LABEL_5:
    sub_26A5AF4E8(v22, v21);
    sub_26A851448();
    OUTLINED_FUNCTION_2_27();
    OUTLINED_FUNCTION_3_26();
    return sub_26A851248();
  }

  v23 = v33;
  if (v18 == *MEMORY[0x277D63630])
  {
    *v10 = sub_26A84FBF8();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDF0, &qword_26A863510) + 44)];
    v22 = v23;
    goto LABEL_5;
  }

  if (v18 == *MEMORY[0x277D63618])
  {
    *v7 = sub_26A84FA78();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE20, &qword_26A863528);
    sub_26A5B0154(v23, &v7[*(v26 + 44)]);
    sub_26A4D7DCC();
  }

  else
  {
    if (v18 != *MEMORY[0x277D63620])
    {
      v28 = sub_26A851E98();
      LOBYTE(v30) = 2;
      sub_26A7B793C(v28, 1, "SnippetUI/HorizontalListStandardView.swift", 42, 2, 53, "itemView(for:)", 14, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
      *v10 = sub_26A84FBF8();
      *(v10 + 1) = 0;
      v10[16] = 1;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEDF0, &qword_26A863510);
      sub_26A5AF4E8(v23, &v10[*(v29 + 44)]);
      sub_26A851448();
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_3_26();
      v24 = sub_26A851248();
      (*(v13 + 8))(v17, v11);
      return v24;
    }

    *v4 = sub_26A84FC08();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE10, &qword_26A863520);
    sub_26A5B0EB8(v23, &v4[*(v27 + 44)]);
    sub_26A4D7DCC();
  }

  return sub_26A851248();
}

uint64_t sub_26A5AF4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v99 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v85 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE58, &qword_26A8635F8);
  MEMORY[0x28223BE20](v90);
  v89 = &v85 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE60, &qword_26A863600);
  MEMORY[0x28223BE20](v88);
  v87 = &v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE68, &qword_26A863608);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v85 - v9;
  MEMORY[0x28223BE20](v10);
  v94 = &v85 - v11;
  v12 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v12);
  v86 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE70, &qword_26A863610);
  v96 = *(v17 - 8);
  v97 = v17;
  MEMORY[0x28223BE20](v17);
  v95 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v102 = &v85 - v20;
  v21 = sub_26A84BD28();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEE0, &qword_26A863790);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v101 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v85 - v29;
  sub_26A84D3D8();
  (*(v22 + 16))(v30, v24, v21);
  v31 = type metadata accessor for VisualPropertyView(0);
  v32 = &v30[v31[5]];
  *v32 = swift_getKeyPath();
  v32[9] = 0;
  swift_unknownObjectWeakInit();
  v33 = &v30[v31[6]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v30[v31[7]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v31[8];
  *&v30[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v36 = &v30[v31[9]];
  v103 = 0;
  sub_26A851048();
  (*(v22 + 8))(v24, v21);
  v37 = *(&v104 + 1);
  *v36 = v104;
  *(v36 + 1) = v37;
  sub_26A851448();
  sub_26A84F028();
  v38 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0) + 36)];
  v39 = v105;
  *v38 = v104;
  *(v38 + 1) = v39;
  *(v38 + 2) = v106;
  *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEE8, &qword_26A863798) + 36)] = 256;
  v40 = sub_26A850248();
  v41 = *(v26 + 44);
  v100 = v30;
  v42 = &v30[v41];
  *v42 = v40;
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  v42[40] = 1;
  sub_26A84D3A8();
  v43 = &v16[v12[5]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = v12[6];
  *&v16[v44] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = &v16[v12[7]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  v46 = &v16[v12[8]];
  *v46 = swift_getKeyPath();
  *(v46 + 1) = 0;
  v46[16] = 0;
  *(v46 + 3) = swift_getKeyPath();
  v46[32] = 0;
  v47 = type metadata accessor for ActionHandler(0);
  v48 = v47[6];
  *&v46[v48] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v49 = &v46[v47[7]];
  *v49 = swift_getKeyPath();
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = &v46[v47[8]];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = &v46[v47[9]];
  *v51 = swift_getKeyPath();
  v51[8] = 0;
  v52 = &v46[v47[10]];
  *v52 = swift_getKeyPath();
  v52[9] = 0;
  swift_unknownObjectWeakInit();
  v53 = v47[11];
  v54 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v46[v53], 1, 1, v54);
  sub_26A4D6FD8();
  __swift_storeEnumTagSinglePayload(&v46[v53], 1, 1, v54);
  sub_26A5B1FD8();
  v55 = v92;
  sub_26A850B98();
  sub_26A58FD08(v16);
  sub_26A84D3B8();
  v56 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    sub_26A4D6FD8();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    v58 = v93;
    v59 = 1;
  }

  else
  {
    v91 = *(v56 - 8);
    v60 = v86;
    (*(v91 + 16))(v86, v55, v56);
    v61 = &v60[v12[5]];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    v62 = v12[6];
    *&v60[v62] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v63 = &v60[v12[7]];
    *v63 = swift_getKeyPath();
    v63[8] = 0;
    v64 = &v60[v12[8]];
    *v64 = swift_getKeyPath();
    *(v64 + 1) = 0;
    v64[16] = 0;
    *(v64 + 3) = swift_getKeyPath();
    v64[32] = 0;
    v65 = v47[6];
    *&v64[v65] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v66 = &v64[v47[7]];
    *v66 = swift_getKeyPath();
    *(v66 + 1) = 0;
    v66[16] = 0;
    v67 = &v64[v47[8]];
    *v67 = swift_getKeyPath();
    v67[8] = 0;
    v68 = &v64[v47[9]];
    *v68 = swift_getKeyPath();
    v68[8] = 0;
    v69 = &v64[v47[10]];
    *v69 = swift_getKeyPath();
    v69[9] = 0;
    swift_unknownObjectWeakInit();
    v70 = v47[11];
    __swift_storeEnumTagSinglePayload(&v64[v70], 1, 1, v54);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(&v64[v70], 1, 1, v54);
    (*(v91 + 8))(v55, v56);
    KeyPath = swift_getKeyPath();
    v72 = v89;
    sub_26A5B26B4();
    v73 = &v72[*(v90 + 36)];
    *v73 = KeyPath;
    *(v73 + 1) = 5;
    v73[16] = 0;
    v74 = v87;
    sub_26A4D7EA8();
    *&v74[*(v88 + 36)] = 256;
    v75 = v93;
    sub_26A4D7EA8();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    *&v75[*(v57 + 36)] = 0x3FE999999999999ALL;
    v58 = v75;
    v59 = 0;
  }

  __swift_storeEnumTagSinglePayload(v58, v59, 1, v57);
  sub_26A4D7EA8();
  sub_26A4D7E54();
  v77 = v95;
  v76 = v96;
  v78 = *(v96 + 16);
  v79 = v102;
  v80 = v97;
  v78(v95, v102, v97);
  sub_26A4D7E54();
  v81 = v99;
  sub_26A4D7E54();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEF0, &unk_26A8637A0);
  v78((v81 + *(v82 + 48)), v77, v80);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  v83 = *(v76 + 8);
  v83(v79, v80);
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  v83(v77, v80);
  return sub_26A4D6FD8();
}

uint64_t sub_26A5B0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a1;
  v28[2] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE30, &qword_26A863530);
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v28 - v4;
  v6 = sub_26A84BD28();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE38, &qword_26A863538);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  sub_26A84D3D8();
  (*(v7 + 16))(v14, v9, v6);
  v15 = type metadata accessor for VisualPropertyView(0);
  v16 = &v14[v15[5]];
  *v16 = swift_getKeyPath();
  v16[9] = 0;
  swift_unknownObjectWeakInit();
  v17 = &v14[v15[6]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v14[v15[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v15[8];
  *&v14[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v20 = &v14[v15[9]];
  v29 = 0;
  sub_26A851048();
  (*(v7 + 8))(v9, v6);
  v21 = *(&v30 + 1);
  *v20 = v30;
  *(v20 + 1) = v21;
  sub_26A851448();
  sub_26A84F028();
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0) + 36)];
  v23 = v31;
  *v22 = v30;
  *(v22 + 1) = v23;
  *(v22 + 2) = v32;
  v24 = sub_26A850248();
  v25 = &v14[*(v11 + 44)];
  *v25 = v24;
  *(v25 + 8) = 0u;
  *(v25 + 24) = 0u;
  v25[40] = 1;
  *v5 = sub_26A84FC08();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE48, &qword_26A8635E0);
  sub_26A5B0580(&v5[*(v26 + 44)]);
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE50, &unk_26A8635E8);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5B0580@<X0>(char *a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v63 - v2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE58, &qword_26A8635F8);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE60, &qword_26A863600);
  MEMORY[0x28223BE20](v65);
  v64 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE68, &qword_26A863608);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v63 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v63 - v10;
  v11 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE70, &qword_26A863610);
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x28223BE20](v17);
  v73 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  sub_26A84D3A8();
  v22 = &v16[v11[5]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v11[6];
  *&v16[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v24 = &v16[v11[7]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v16[v11[8]];
  *v25 = swift_getKeyPath();
  *(v25 + 1) = 0;
  v25[16] = 0;
  *(v25 + 3) = swift_getKeyPath();
  v25[32] = 0;
  v26 = type metadata accessor for ActionHandler(0);
  v27 = v26[6];
  *&v25[v27] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v28 = &v25[v26[7]];
  *v28 = swift_getKeyPath();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = &v25[v26[8]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v25[v26[9]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v25[v26[10]];
  *v31 = swift_getKeyPath();
  v31[9] = 0;
  swift_unknownObjectWeakInit();
  v32 = v26[11];
  v33 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v25[v32], 1, 1, v33);
  sub_26A4D6FD8();
  __swift_storeEnumTagSinglePayload(&v25[v32], 1, 1, v33);
  sub_26A5B1FD8();
  v70 = v21;
  sub_26A850B98();
  v34 = v16;
  v35 = v68;
  sub_26A58FD08(v34);
  sub_26A84D3B8();
  v36 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    sub_26A4D6FD8();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    v38 = v72;
    v39 = 1;
  }

  else
  {
    v40 = *(v36 - 8);
    (*(v40 + 16))(v13, v35, v36);
    v41 = &v13[v11[5]];
    *v41 = swift_getKeyPath();
    v41[8] = 0;
    v42 = v11[6];
    *&v13[v42] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v43 = &v13[v11[7]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = &v13[v11[8]];
    *v44 = swift_getKeyPath();
    *(v44 + 1) = 0;
    v44[16] = 0;
    *(v44 + 3) = swift_getKeyPath();
    v44[32] = 0;
    v45 = v26[6];
    *&v44[v45] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v46 = &v44[v26[7]];
    *v46 = swift_getKeyPath();
    *(v46 + 1) = 0;
    v46[16] = 0;
    v47 = &v44[v26[8]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v44[v26[9]];
    *v48 = swift_getKeyPath();
    v48[8] = 0;
    v49 = &v44[v26[10]];
    *v49 = swift_getKeyPath();
    v49[9] = 0;
    swift_unknownObjectWeakInit();
    v50 = v26[11];
    __swift_storeEnumTagSinglePayload(&v44[v50], 1, 1, v33);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(&v44[v50], 1, 1, v33);
    (*(v40 + 8))(v35, v36);
    KeyPath = swift_getKeyPath();
    v52 = v66;
    sub_26A5B26B4();
    v53 = &v52[*(v67 + 36)];
    *v53 = KeyPath;
    *(v53 + 1) = 5;
    v53[16] = 0;
    v54 = v64;
    sub_26A4D7EA8();
    *&v54[*(v65 + 36)] = 256;
    v55 = v72;
    sub_26A4D7EA8();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    *&v55[*(v37 + 36)] = 0x3FE999999999999ALL;
    v38 = v55;
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
  sub_26A4D7EA8();
  v57 = v73;
  v56 = v74;
  v58 = *(v74 + 16);
  v59 = v70;
  v60 = v75;
  v58(v73, v70, v75);
  sub_26A4D7E54();
  v58(v71, v57, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE80, &qword_26A8636C8);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  v61 = *(v56 + 8);
  v61(v59, v60);
  sub_26A4D6FD8();
  return (v61)(v57, v60);
}

uint64_t sub_26A5B0EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v63 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE88, &qword_26A863700) - 8;
  MEMORY[0x28223BE20](v61);
  v62 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v6 = type metadata accessor for HorizontalListStandardView.ItemView(0);
  v7 = *(v6 - 8);
  v60 = v6 - 8;
  v58 = v7;
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_26A84BD28();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE90, &qword_26A863708);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  sub_26A84D3D8();
  (*(v9 + 16))(v17, v11, v8);
  v18 = type metadata accessor for VisualPropertyView(0);
  v19 = &v17[v18[5]];
  *v19 = swift_getKeyPath();
  v19[9] = 0;
  swift_unknownObjectWeakInit();
  v20 = &v17[v18[6]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v17[v18[7]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v18[8];
  *&v17[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v23 = &v17[v18[9]];
  LOBYTE(v64) = 0;
  sub_26A851048();
  (*(v9 + 8))(v11, v8);
  v24 = *(&v67 + 1);
  *v23 = v67;
  *(v23 + 1) = v24;
  sub_26A851448();
  sub_26A84F028();
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0) + 36)];
  v26 = v65;
  *v25 = v64;
  *(v25 + 1) = v26;
  *(v25 + 2) = v66;
  v27 = v57;
  sub_26A5B2868();
  v28 = swift_allocObject();
  sub_26A5B26B4();
  v29 = sub_26A851448();
  v31 = v30;
  v32 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE98, &qword_26A863710) + 36)];
  *v32 = sub_26A8027E0;
  v32[1] = 0;
  v32[2] = v29;
  v32[3] = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_26A5B2708;
  *(v33 + 24) = v28;
  v34 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEA0, &qword_26A863718) + 36)];
  *v34 = sub_26A52E998;
  v34[1] = v33;
  LOBYTE(v28) = sub_26A850248();
  sub_26A84ED48();
  v35 = &v17[*(v13 + 44)];
  *v35 = v28;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v5 = sub_26A84FC08();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEA8, &qword_26A863720);
  sub_26A5B15F8(v27, &v5[*(v40 + 44)]);
  LOBYTE(v13) = sub_26A850248();
  sub_26A84ED48();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEB0, &unk_26A863728) + 36)];
  *v49 = v13;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = (v27 + *(v60 + 28));
  v51 = *v50;
  v52 = v50[1];
  *&v67 = v51;
  *(&v67 + 1) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  sub_26A851058();
  sub_26A851458();
  sub_26A84F028();
  v53 = &v5[*(v61 + 44)];
  v54 = v68;
  *v53 = v67;
  *(v53 + 1) = v54;
  *(v53 + 2) = v69;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEB8, &qword_26A863738);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A5B1580(uint64_t a1, double a2)
{
  type metadata accessor for HorizontalListStandardView.ItemView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8, &qword_26A85B130);
  return sub_26A851068();
}

uint64_t sub_26A5B15F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v73 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v2 - 8);
  v74 = &v61 - v3;
  v4 = type metadata accessor for TextPropertyView(0);
  MEMORY[0x28223BE20](v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE58, &qword_26A8635F8);
  MEMORY[0x28223BE20](v65);
  v64 = &v61 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE60, &qword_26A863600);
  MEMORY[0x28223BE20](v63);
  v62 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE68, &qword_26A863608);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v61 - v11;
  MEMORY[0x28223BE20](v12);
  v71 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEC0, &qword_26A863740);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEEC8, &qword_26A863748);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v70 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  sub_26A84D3A8();
  v23 = &v16[v4[5]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v4[6];
  *&v16[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
  swift_storeEnumTagMultiPayload();
  v25 = &v16[v4[7]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v16[v4[8]];
  *v26 = swift_getKeyPath();
  *(v26 + 1) = 0;
  v26[16] = 0;
  *(v26 + 3) = swift_getKeyPath();
  v26[32] = 0;
  v27 = type metadata accessor for ActionHandler(0);
  v28 = v27[6];
  *&v26[v28] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = &v26[v27[7]];
  *v29 = swift_getKeyPath();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = &v26[v27[8]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v26[v27[9]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v26[v27[10]];
  *v32 = swift_getKeyPath();
  v32[9] = 0;
  swift_unknownObjectWeakInit();
  v33 = v27[11];
  v34 = type metadata accessor for StandardActionHandler(0);
  __swift_storeEnumTagSinglePayload(&v26[v33], 1, 1, v34);
  sub_26A4D6FD8();
  __swift_storeEnumTagSinglePayload(&v26[v33], 1, 1, v34);
  KeyPath = swift_getKeyPath();
  v36 = &v16[*(v14 + 36)];
  *v36 = KeyPath;
  v36[8] = 0;
  sub_26A5B2780();
  v37 = v74;
  sub_26A850B98();
  sub_26A4D6FD8();
  v38 = *(v18 + 44);
  v68 = v22;
  *&v22[v38] = 256;
  sub_26A84D3B8();
  v39 = sub_26A84B888();
  if (__swift_getEnumTagSinglePayload(v37, 1, v39) == 1)
  {
    sub_26A4D6FD8();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    v41 = v69;
    v42 = 1;
  }

  else
  {
    v43 = *(v39 - 8);
    v44 = v66;
    (*(v43 + 16))(v66, v37, v39);
    v45 = &v44[v4[5]];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    v46 = v4[6];
    *&v44[v46] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v47 = &v44[v4[7]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = &v44[v4[8]];
    *v48 = swift_getKeyPath();
    *(v48 + 1) = 0;
    v48[16] = 0;
    *(v48 + 3) = swift_getKeyPath();
    v48[32] = 0;
    v49 = v27[6];
    *&v48[v49] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v50 = &v48[v27[7]];
    *v50 = swift_getKeyPath();
    *(v50 + 1) = 0;
    v50[16] = 0;
    v51 = &v48[v27[8]];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = &v48[v27[9]];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = &v48[v27[10]];
    *v53 = swift_getKeyPath();
    v53[9] = 0;
    swift_unknownObjectWeakInit();
    v54 = v27[11];
    __swift_storeEnumTagSinglePayload(&v48[v54], 1, 1, v34);
    sub_26A4D6FD8();
    __swift_storeEnumTagSinglePayload(&v48[v54], 1, 1, v34);
    (*(v43 + 8))(v74, v39);
    v55 = swift_getKeyPath();
    v56 = v64;
    sub_26A5B26B4();
    v57 = &v56[*(v65 + 36)];
    *v57 = v55;
    *(v57 + 1) = 5;
    v57[16] = 0;
    v58 = v62;
    sub_26A4D7EA8();
    *&v58[*(v63 + 36)] = 256;
    v59 = v69;
    sub_26A4D7EA8();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE78, &qword_26A8636C0);
    *&v59[*(v40 + 36)] = 0x3FE999999999999ALL;
    v41 = v59;
    v42 = 0;
  }

  __swift_storeEnumTagSinglePayload(v41, v42, 1, v40);
  sub_26A4D7EA8();
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEED8, &qword_26A863788);
  sub_26A4D7E54();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

unint64_t sub_26A5B1F80(uint64_t a1)
{
  result = sub_26A5B1FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A5B1FD8()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A5B2044(uint64_t a1)
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
    if (v2 <= 0x3F)
    {
      sub_26A84D428();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26A5B2118()
{
  result = qword_2803AEDB0;
  if (!qword_2803AEDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9D8, &qword_26A856AB0);
    sub_26A5B21D0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEDB0);
  }

  return result;
}

unint64_t sub_26A5B21D0()
{
  result = qword_2803AEDB8;
  if (!qword_2803AEDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9C8, &unk_26A856AA0);
    sub_26A4D7DCC();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEDB8);
  }

  return result;
}

void sub_26A5B22D0(uint64_t a1)
{
  sub_26A84D3E8();
  if (v1 <= 0x3F)
  {
    sub_26A5B2354();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5B2354()
{
  if (!qword_2803AB798)
  {
    v0 = sub_26A851088();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AB798);
    }
  }
}

double sub_26A5B23C0(uint64_t a1)
{
  v2 = sub_26A84DDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84D3E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (*(a1 + 16))
  {
    (*(v7 + 16))(v10, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, v8);
    sub_26A84D398();
    (*(v7 + 8))(v10, v6);
    v12 = (*(v3 + 88))(v5, v2);
    if (v12 != *MEMORY[0x277D63628])
    {
      if (v12 == *MEMORY[0x277D63630])
      {
        return 180.66667;
      }

      else if (v12 == *MEMORY[0x277D63618])
      {
        return 102.0;
      }

      else if (v12 == *MEMORY[0x277D63620])
      {
        return 150.333;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }
    }
  }

  return v11;
}

unint64_t sub_26A5B25FC()
{
  result = qword_2803AEDF8;
  if (!qword_2803AEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEDE8, &qword_26A863508);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEDF8);
  }

  return result;
}

uint64_t sub_26A5B26B4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5B2708(double a1)
{
  v3 = *(type metadata accessor for HorizontalListStandardView.ItemView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26A5B1580(v4, a1);
}

unint64_t sub_26A5B2780()
{
  result = qword_2803AEED0;
  if (!qword_2803AEED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEEC0, &qword_26A863740);
    sub_26A5B1FD8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEED0);
  }

  return result;
}

uint64_t sub_26A5B2868()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5B28BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HorizontalListStandardView(0);

  return sub_26A5AEA58(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_27()
{

  return sub_26A84F028();
}

unint64_t OUTLINED_FUNCTION_3_26()
{
  v4 = (v1 + *(v0 + 36));
  v5 = *(v2 - 112);
  *v4 = *(v2 - 128);
  v4[1] = v5;
  v4[2] = *(v2 - 96);

  return sub_26A5B25FC();
}

uint64_t View.selectableContent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v15 = type metadata accessor for SelectableContentModifier(0, a3, v13, v14);
  OUTLINED_FUNCTION_15();
  v17 = v16;
  OUTLINED_FUNCTION_77();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v23 - v20;
  (*(v9 + 16))(v12, a1, v7, v19);
  sub_26A5B2C5C(v12);
  MEMORY[0x26D662ED0](v21, a2, v15, v23);
  return (*(v17 + 8))(v21, v15);
}

uint64_t View.makeSelectable()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEF18, &qword_26A863800);
  sub_26A851048();
  MEMORY[0x26D662ED0](&v5, a1, &type metadata for SelectableModifier, a2);
}

double sub_26A5B2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A6D83B8(a1, a3);
  sub_26A5B4248();
  sub_26A850958();

  return result;
}

uint64_t sub_26A5B2C5C(uint64_t a1)
{
  v4 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  OUTLINED_FUNCTION_77();
  v8 = MEMORY[0x28223BE20](v7);
  (*(v6 + 16))(&v11 - v9, a1, v4, v8);
  sub_26A851048();
  return (*(v6 + 8))(a1, v4);
}

void *sub_26A5B2D40()
{
  sub_26A852068();
  sub_26A851088();

  return sub_26A851058();
}

uint64_t sub_26A5B2D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v3 = *(a2 + 16);
  v27 = sub_26A852068();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  OUTLINED_FUNCTION_2_28();
  swift_getWitnessTable();
  v9 = sub_26A84FE88();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFA8, &qword_26A863980);
  v10 = sub_26A84F4F8();
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_26A5B2D40();
  v19 = OUTLINED_FUNCTION_7_24();
  v20 = sub_26A5B2BDC(v8, v9, v3, v19);
  (*(v5 + 8))(v8, v27, v20);
  OUTLINED_FUNCTION_17_5();
  v23 = sub_26A4DBCC8(v21, &qword_2803AEFA8, &qword_26A863980, v22);
  v30 = v19;
  v31 = v23;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A80757C();
  v24 = *(v12 + 8);
  v24(v15, v10);
  sub_26A80757C();
  return (v24)(v18, v10);
}

double sub_26A5B2FE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFC0, &qword_26A863988);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFC8, &qword_26A863990);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFD0, &qword_26A863998);
  MEMORY[0x28223BE20](v14 - 8);
  v32 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFD8, &qword_26A8639A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v36 = a2;
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE0, &qword_26A8639A8);
  sub_26A851058();
  if (v35)
  {

    sub_26A5B33AC(a2, a3, v13);
    sub_26A49CB44(v13, v10);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE8, &unk_26A8639B0);
    sub_26A5B429C();
    OUTLINED_FUNCTION_3_23();
    sub_26A4DBCC8(v22, &qword_2803AEFE8, &unk_26A8639B0, v23);
    v24 = v32;
    sub_26A84FDF8();
    sub_26A49CBAC(v13);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE8, &unk_26A8639B0);
    OUTLINED_FUNCTION_46();
    (*(v26 + 16))(v10, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_26A5B429C();
    OUTLINED_FUNCTION_3_23();
    sub_26A4DBCC8(v27, &qword_2803AEFE8, &unk_26A8639B0, v28);
    v24 = v32;
    sub_26A84FDF8();
  }

  sub_26A544EC8(v24, v18, &qword_2803AEFD0, &qword_26A863998);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  sub_26A544EC8(v18, v21, &qword_2803AEFD0, &qword_26A863998);
  v30 = &v21[*(v33 + 36)];
  *v30 = sub_26A5B43F0;
  v30[1] = v29;
  sub_26A544EC8(v21, a4, &qword_2803AEFD8, &qword_26A8639A0);

  return result;
}

void sub_26A5B33AC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE0, &qword_26A8639A8);
  v4 = sub_26A851058();
  if (v7[1])
  {
    v7[0] = v7;
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE8, &unk_26A8639B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFF8, &qword_26A8756F0);
    sub_26A4DBCC8(&qword_2803AF000, &qword_2803AEFE8, &unk_26A8639B0, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&unk_2803B3900, &qword_2803AEFF8, &qword_26A8756F0, MEMORY[0x277CDF028]);
    sub_26A850998();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF008, &unk_26A8639C0);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF008, &unk_26A8639C0);
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_26A5B357C(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF010, &qword_26A875700);
  sub_26A4DBCC8(&unk_2803B38F0, &qword_2803AF010, &qword_26A875700, MEMORY[0x277CDEFF0]);

  return sub_26A8510D8();
}

uint64_t sub_26A5B3668(uint64_t a1)
{
  v3[3] = &type metadata for SystemPasteboard;
  v3[4] = &off_287B1F9F8;
  __swift_project_boxed_opaque_existential_1(v3, &type metadata for SystemPasteboard);
  sub_26A6D8B1C(a1);
  return sub_26A5B4408(v3);
}

uint64_t sub_26A5B36BC(__n128 a1)
{
  v1 = sub_26A851778();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Resources();
  sub_26A851768();
  v5 = sub_26A588140(1498435395, 0xE400000000000000, v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  v9[0] = v5;
  v9[1] = v7;
  sub_26A53ACC8();
  return sub_26A850FD8();
}

uint64_t sub_26A5B37F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEFE0, &qword_26A8639A8);
  return sub_26A851068();
}

uint64_t *sub_26A5B386C()
{
  if (qword_2803A8B08 != -1)
  {
    OUTLINED_FUNCTION_1_29(&qword_2803A8B08);
  }

  return &qword_2803AEF10;
}

double static SelectableContent.defaultValue.getter()
{
  if (qword_2803A8B08 != -1)
  {
    OUTLINED_FUNCTION_1_29(&qword_2803A8B08);
  }

  swift_beginAccess();

  return result;
}

double static SelectableContent.defaultValue.setter(uint64_t a1)
{
  if (qword_2803A8B08 != -1)
  {
    OUTLINED_FUNCTION_1_29(&qword_2803A8B08);
  }

  swift_beginAccess();
  qword_2803AEF10 = a1;

  return result;
}

uint64_t (*static SelectableContent.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2803A8B08 != -1)
  {
    OUTLINED_FUNCTION_1_29(&qword_2803A8B08);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_26A5B3A00@<D0>(void *a1@<X8>)
{
  sub_26A5B386C();
  swift_beginAccess();
  *a1 = qword_2803AEF10;

  return result;
}

double sub_26A5B3A54(uint64_t *a1)
{
  v1 = *a1;

  sub_26A5B386C();
  swift_beginAccess();
  qword_2803AEF10 = v1;

  return result;
}

void *sub_26A5B3AB0(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static SelectableContent.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    result = a2();
  }

  *a1 = result;
  return result;
}

uint64_t sub_26A5B3B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A4DBCC8(&qword_2803AF018, &qword_2803AEF18, &qword_26A863800, MEMORY[0x277D84F60]);

  return MEMORY[0x282130CA8](a1, a2, v4);
}

_BYTE *storeEnumTagSinglePayload for SelectableContent(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A5B3C60()
{
  result = qword_2803AEF20[0];
  if (!qword_2803AEF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803AEF20);
  }

  return result;
}

uint64_t sub_26A5B3CB4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A5B3D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_26A5B3D70(uint64_t a1)
{
  sub_26A852068();
  result = sub_26A851088();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A5B3DEC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_31:
    if (v6 < 0x7FFFFFFE)
    {
      v18 = *((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        return v18;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(result, v5, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v7;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_31;
        }

LABEL_27:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v7 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_26A5B3F64(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 < a3)
  {
    v13 = a3 - v10;
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if (v9 < 0x7FFFFFFE)
          {
            v21 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v21 = 0;
              *v21 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v21 = a2;
            }
          }

          else if (v9 >= a2)
          {
            v22 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v22, v8, v7);
          }

          else
          {
            if (v11 <= 3)
            {
              v18 = ~(-1 << (8 * v11));
            }

            else
            {
              v18 = -1;
            }

            if (v11)
            {
              v19 = v18 & (~v9 + a2);
              if (v11 <= 3)
              {
                v20 = v11;
              }

              else
              {
                v20 = 4;
              }

              bzero(a1, v11);
              switch(v20)
              {
                case 2:
                  *a1 = v19;
                  break;
                case 3:
                  *a1 = v19;
                  a1[2] = BYTE2(v19);
                  break;
                case 4:
                  *a1 = v19;
                  break;
                default:
                  *a1 = v19;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v12);
      *a1 = v17;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26A5B4248()
{
  result = qword_2803AEFB8;
  if (!qword_2803AEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEFB8);
  }

  return result;
}

unint64_t sub_26A5B429C()
{
  result = qword_2803AEFF0;
  if (!qword_2803AEFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFC8, &qword_26A863990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFE8, &unk_26A8639B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFF8, &qword_26A8756F0);
    sub_26A4DBCC8(&qword_2803AF000, &qword_2803AEFE8, &unk_26A8639B0, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&unk_2803B3900, &qword_2803AEFF8, &qword_26A8756F0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AEFF0);
  }

  return result;
}

unint64_t sub_26A5B445C()
{
  result = qword_2803AF020;
  if (!qword_2803AF020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFD8, &qword_26A8639A0);
    sub_26A5B4514();
    sub_26A4DBCC8(&qword_2803AF030, &qword_2803AF038, &qword_26A8639D0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF020);
  }

  return result;
}

unint64_t sub_26A5B4514()
{
  result = qword_2803AF028;
  if (!qword_2803AF028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEFD0, &qword_26A863998);
    sub_26A5B429C();
    sub_26A4DBCC8(&qword_2803AF000, &qword_2803AEFE8, &unk_26A8639B0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF028);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_24()
{

  return swift_getWitnessTable();
}

void sub_26A5B462C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = sub_26A7E02E8(v3);
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    v52 = v10;
    *(v10 + 32) = a2;
    v11 = sub_26A73670C();
    v12 = OUTLINED_FUNCTION_1_30();
    sub_26A5065CC(v12, v13);
    v14 = a2;
    v15 = OUTLINED_FUNCTION_1_30();
    sub_26A5065CC(v15, v16);
    v17 = v14;
    v18 = OUTLINED_FUNCTION_1_30();
    sub_26A5065CC(v18, v19);
    v20 = v9 & 0xC000000000000001;
    v51 = v17;
    v21 = 0;
    while (v11 != v21)
    {
      if (v20)
      {
        v22 = MEMORY[0x26D6644E0](v21, v9);
      }

      else
      {
        if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v22 = *(v9 + 8 * v21 + 32);
      }

      v23 = v22;
      v55 = v6;
      LOBYTE(v56) = v7;
      sub_26A64492C(&v55, a2, &v61);

      LODWORD(v23) = v66;
      sub_26A5B4958(v61, v62, v63, v64, v65, v66);
      if (v23 >> 8 < 0xFF)
      {
        v11 = v21;
        break;
      }

      if (__OFADD__(v21++, 1))
      {
        goto LABEL_23;
      }
    }

    v25 = OUTLINED_FUNCTION_1_30();
    sub_26A5066E8(v25, v26);
    v21 = v51;

    v61 = v9;
    v62 = sub_26A5B4948;
    v63 = v52;
    v64 = sub_26A5B4994;
    v65 = 0;
    v66 = sub_26A5B49CC;
    v67 = 0;
    if (v11 == sub_26A5B496C())
    {
      v27 = OUTLINED_FUNCTION_1_30();
      sub_26A5066E8(v27, v28);

      goto LABEL_15;
    }

    sub_26A736710();
    if (!v20)
    {
      v29 = *(v9 + 32 + 8 * v11);
      goto LABEL_18;
    }

LABEL_24:
    v29 = MEMORY[0x26D6644E0](v11, v9);
LABEL_18:
    v30 = v29;
    v53 = v6;
    v54 = v7;
    sub_26A64492C(&v53, a2, &v55);
    v31 = OUTLINED_FUNCTION_1_30();
    sub_26A5066E8(v31, v32);

    v33 = v55;
    v34 = v56;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v39 = OUTLINED_FUNCTION_0_27();
    sub_26A5B4A00(v39, v40, v41, v42, v43, v44);
    v45 = OUTLINED_FUNCTION_0_27();
    sub_26A5B4958(v45, v46, v47, v48, v49, v50);
    if (v38 >> 8 > 0xFE)
    {
      __break(1u);
    }

    else
    {
      *a3 = v33;
      *(a3 + 8) = v34;
      *(a3 + 16) = v35;
      *(a3 + 24) = v36;
      *(a3 + 32) = v37;
      *(a3 + 40) = v38;
    }
  }

  else
  {
LABEL_15:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -256;
  }
}

void sub_26A5B490C(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = a1;
  v5 = a2;
  sub_26A64492C(&v4, a3, a4);
}

void sub_26A5B4958(uint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (BYTE1(a6) != 255)
  {
    sub_26A506604(result, a2, a3, a4, a5, a6, SBYTE1(a6));
  }
}

uint64_t sub_26A5B496C()
{
  if (*v0 >> 62)
  {
    return sub_26A852168();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_26A5B4994(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 10) = *(a1 + 26);
  return sub_26A7D494C(&v3);
}

void sub_26A5B49CC(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *a1;
  v4[0] = v2;
  *(v4 + 10) = *(a1 + 26);
  sub_26A7D4968(&v3, a2);
}

void sub_26A5B4A00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (BYTE1(a6) != 255)
  {
    sub_26A5064E8(a1, a2, a3, a4, a5, a6, SBYTE1(a6));
  }
}

void sub_26A5B4A3C()
{
  sub_26A83B698(v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_9_21();
  if (!v5)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_26A5B4F04(v3, v2, 10);
LABEL_69:

    return;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = sub_26A8522B8();
    }

    v7 = *v6;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1 && v6)
        {
          do
          {
            OUTLINED_FUNCTION_0_28();
            if (!v10 && v9)
            {
              break;
            }

            OUTLINED_FUNCTION_5_28();
            if (!v10)
            {
              break;
            }

            OUTLINED_FUNCTION_3_27();
            if (v9)
            {
              break;
            }

            OUTLINED_FUNCTION_2_29();
          }

          while (!v10);
        }

        goto LABEL_69;
      }

      goto LABEL_75;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        v15 = 0;
        if (v6)
        {
          do
          {
            v16 = *v6 - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v15, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v15, v16);
            v15 = 10 * v15 + v16;
            if (v9)
            {
              break;
            }

            ++v6;
            --v4;
          }

          while (v4);
        }
      }

      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v8 = 0;
        if (v6)
        {
          do
          {
            OUTLINED_FUNCTION_0_28();
            if (!v10 && v9)
            {
              break;
            }

            OUTLINED_FUNCTION_5_28();
            if (!v10)
            {
              break;
            }

            v9 = 10 * v8 >= v11;
            v8 = 10 * v8 - v11;
            if (!v9)
            {
              break;
            }

            OUTLINED_FUNCTION_2_29();
          }

          while (!v10);
        }
      }

      goto LABEL_69;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  OUTLINED_FUNCTION_8_22();
  if (!v10)
  {
    if (v13 != 45)
    {
      if (v12)
      {
        do
        {
          OUTLINED_FUNCTION_0_28();
          if (!v10 && v9)
          {
            break;
          }

          OUTLINED_FUNCTION_5_28();
          if (!v10)
          {
            break;
          }

          OUTLINED_FUNCTION_3_27();
          if (v9)
          {
            break;
          }

          OUTLINED_FUNCTION_2_29();
        }

        while (!v10);
      }

      goto LABEL_69;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        OUTLINED_FUNCTION_7_25();
        do
        {
          OUTLINED_FUNCTION_0_28();
          if (!v10 && v9)
          {
            break;
          }

          OUTLINED_FUNCTION_5_28();
          if (!v10)
          {
            break;
          }

          v9 = 10 * v0 >= v14;
          v0 = 10 * v0 - v14;
          if (!v9)
          {
            break;
          }

          OUTLINED_FUNCTION_2_29();
        }

        while (!v10);
      }

      goto LABEL_69;
    }

    goto LABEL_74;
  }

  if (v12)
  {
    if (v12 != 1)
    {
      OUTLINED_FUNCTION_7_25();
      do
      {
        OUTLINED_FUNCTION_0_28();
        if (!v10 && v9)
        {
          break;
        }

        OUTLINED_FUNCTION_5_28();
        if (!v10)
        {
          break;
        }

        OUTLINED_FUNCTION_3_27();
        if (v9)
        {
          break;
        }

        OUTLINED_FUNCTION_2_29();
      }

      while (!v10);
    }

    goto LABEL_69;
  }

LABEL_76:
  __break(1u);
}

void sub_26A5B4CA8()
{
  sub_26A83B6A4(v0);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_9_21();
  if (!v5)
  {
LABEL_67:

    return;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    sub_26A5B548C(v3, v2, 10);

    return;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_8_22();
    if (v9)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          OUTLINED_FUNCTION_6_27();
          do
          {
            OUTLINED_FUNCTION_0_28();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (!v9)
            {
              break;
            }

            if (__OFADD__(v19, v18))
            {
              break;
            }

            OUTLINED_FUNCTION_2_29();
          }

          while (!v9);
        }

        goto LABEL_67;
      }

      goto LABEL_73;
    }

    if (v13 != 45)
    {
      if (v12)
      {
        do
        {
          OUTLINED_FUNCTION_0_28();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_4_25();
          if (!v9)
          {
            break;
          }

          if (__OFADD__(v24, v23))
          {
            break;
          }

          OUTLINED_FUNCTION_2_29();
        }

        while (!v9);
      }

      goto LABEL_67;
    }

    if (v12)
    {
      if (v12 != 1)
      {
        OUTLINED_FUNCTION_6_27();
        do
        {
          OUTLINED_FUNCTION_0_28();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_4_25();
          if (!v9)
          {
            break;
          }

          if (__OFSUB__(v15, v14))
          {
            break;
          }

          OUTLINED_FUNCTION_2_29();
        }

        while (!v9);
      }

      goto LABEL_67;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v6 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = sub_26A8522B8();
    }

    v7 = *v6;
    if (v7 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1 && v6)
        {
          do
          {
            OUTLINED_FUNCTION_0_28();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_4_25();
            if (!v9)
            {
              break;
            }

            if (__OFADD__(v17, v16))
            {
              break;
            }

            OUTLINED_FUNCTION_2_29();
          }

          while (!v9);
        }

        goto LABEL_67;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v4)
      {
        v20 = 0;
        if (v6)
        {
          do
          {
            v21 = *v6 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v20;
            if (v22 != v22)
            {
              break;
            }

            v20 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v6;
            --v4;
          }

          while (v4);
        }
      }

      goto LABEL_67;
    }

    if (v4 >= 1)
    {
      if (v4 != 1 && v6)
      {
        do
        {
          OUTLINED_FUNCTION_0_28();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_4_25();
          if (!v9)
          {
            break;
          }

          if (__OFSUB__(v11, v10))
          {
            break;
          }

          OUTLINED_FUNCTION_2_29();
        }

        while (!v9);
      }

      goto LABEL_67;
    }

    __break(1u);
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

void sub_26A5B4F04(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_26A851968();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26A5B5A04(v4, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26A8522B8();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v9 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v8)
          {
            v26 = 0;
            v27 = v8 + 1;
            while (1)
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (is_mul_ok(v26, a3))
              {
                v30 = v26 * a3;
                v31 = v28 + v29;
                v21 = __CFADD__(v30, v31);
                v26 = v30 + v31;
                if (!v21)
                {
                  ++v27;
                  if (--v22)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (v8)
        {
          v35 = 0;
          while (1)
          {
            v36 = *v8;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            if (is_mul_ok(v35, a3))
            {
              v38 = v35 * a3;
              v39 = v36 + v37;
              v21 = __CFADD__(v38, v39);
              v35 = v38 + v39;
              if (!v21)
              {
                ++v8;
                if (--v9)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          v15 = 0;
          v16 = v8 + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                if (v17 < 0x61 || v17 >= v14)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (is_mul_ok(v15, a3))
            {
              v19 = v15 * a3;
              v20 = v17 + v18;
              v21 = v19 >= v20;
              v15 = v19 - v20;
              if (v21)
              {
                ++v16;
                if (--v11)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v72 = v6;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v63 = 0;
        v64 = a3 + 48;
        v65 = a3 + 55;
        v66 = a3 + 87;
        if (a3 > 10)
        {
          v64 = 58;
        }

        else
        {
          v66 = 97;
          v65 = 65;
        }

        v67 = &v72;
        while (1)
        {
          v68 = *v67;
          if (v68 < 0x30 || v68 >= v64)
          {
            if (v68 < 0x41 || v68 >= v65)
            {
              if (v68 < 0x61 || v68 >= v66)
              {
                goto LABEL_127;
              }

              v69 = -87;
            }

            else
            {
              v69 = -55;
            }
          }

          else
          {
            v69 = -48;
          }

          if (is_mul_ok(v63, a3))
          {
            v70 = v63 * a3;
            v71 = v68 + v69;
            v21 = __CFADD__(v70, v71);
            v63 = v70 + v71;
            if (!v21)
            {
              v67 = (v67 + 1);
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v72 + 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (is_mul_ok(v44, a3))
          {
            v51 = v44 * a3;
            v52 = v49 + v50;
            v21 = v51 >= v52;
            v44 = v51 - v52;
            if (v21)
            {
              ++v48;
              if (--v43)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v54 = 0;
      v55 = a3 + 48;
      v56 = a3 + 55;
      v57 = a3 + 87;
      if (a3 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      while (1)
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (is_mul_ok(v54, a3))
        {
          v61 = v54 * a3;
          v62 = v59 + v60;
          v21 = __CFADD__(v61, v62);
          v54 = v61 + v62;
          if (!v21)
          {
            ++v58;
            if (--v53)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void sub_26A5B548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v74 = a2;

  v4 = sub_26A851968();
  v6 = v4;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26A5B5A04(v4, v5);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v8 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26A8522B8();
    }

    v10 = *v8;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v9 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (v8)
          {
            v27 = 0;
            v28 = v8 + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v24)
              {
                if (v29 < 0x41 || v29 >= v25)
                {
                  if (v29 < 0x61 || v29 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v27 * a3;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v22 = __OFADD__(v31, v32);
              v27 = v31 + v32;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v28;
              --v23;
            }

            while (v23);
LABEL_46:
            v17 = 0;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a3 + 48;
        v34 = a3 + 55;
        v35 = a3 + 87;
        if (a3 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (v8)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *v8;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a3;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v22 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v8;
            --v9;
          }

          while (v9);
          v17 = 0;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v9 != 1)
      {
        v12 = a3 + 48;
        v13 = a3 + 55;
        v14 = a3 + 87;
        if (a3 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (v8)
        {
          v15 = 0;
          v16 = v8 + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v15 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v18 + v19;
            v22 = __OFSUB__(v20, v21);
            v15 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        LOBYTE(v73) = v17;
        return;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v73 = v6;
  v74 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        v64 = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v73;
        v17 = 1;
        while (1)
        {
          v69 = *v68;
          if (v69 < 0x30 || v69 >= v65)
          {
            if (v69 < 0x41 || v69 >= v66)
            {
              if (v69 < 0x61 || v69 >= v67)
              {
                goto LABEL_127;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          v71 = v64 * a3;
          if (v71 != v71)
          {
            goto LABEL_126;
          }

          v72 = v69 + v70;
          v22 = __OFADD__(v71, v72);
          v64 = v71 + v72;
          if (v22)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v73 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a3;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v22 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v55 = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v73 + 1;
      v17 = 1;
      do
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_127;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v55 * a3;
        if (v62 != v62)
        {
          goto LABEL_126;
        }

        v63 = v60 + v61;
        v22 = __OFADD__(v62, v63);
        v55 = v62 + v63;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v59;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_26A5B5A04(uint64_t a1, unint64_t a2)
{
  v2 = sub_26A5B5A70(sub_26A5B5A6C, 0, a1, a2);
  v6 = sub_26A5B5AA4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26A5B5AA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26A852078();
    if (!v9 || (v10 = v9, v11 = sub_26A7C78D4(v9, 0), v12 = sub_26A5B5C04(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26A851838();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26A851838();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26A8522B8();
LABEL_4:

  return sub_26A851838();
}

unint64_t sub_26A5B5C04(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26A83011C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26A8518E8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26A8522B8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26A83011C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26A8518C8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26A5B5F64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A5B5FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A5B6014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF040, &unk_26A863AA0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_26A5B6090()
{
  result = qword_2803AF048;
  if (!qword_2803AF048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF040, &unk_26A863AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF048);
  }

  return result;
}

uint64_t type metadata accessor for ButtonElementView(uint64_t a1)
{
  result = qword_2803AF050;
  if (!qword_2803AF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5B6168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A4EEA70(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    sub_26A84E158();
    if (v5 <= 0x3F)
    {
      sub_26A586908(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A5B6220()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v6 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_26A5B6364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF060, &qword_26A863B40);
  v121 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v120 = &v120 - v3;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF068, &qword_26A863B48);
  MEMORY[0x28223BE20](v131);
  v133 = &v120 - v4;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF070, &qword_26A863B50);
  MEMORY[0x28223BE20](v125);
  v127 = &v120 - v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF078, &qword_26A863B58);
  MEMORY[0x28223BE20](v132);
  v128 = &v120 - v6;
  v130 = type metadata accessor for ButtonLayout(0);
  MEMORY[0x28223BE20](v130);
  v129 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF080, &qword_26A863B60);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v120 - v8;
  v9 = sub_26A84E098();
  v124 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v120 - v13;
  v15 = sub_26A84B058();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26A5B6220();
  if (sub_26A61B05C(v19, &unk_287B131A0) || sub_26A5B6220() == 1) && ((v20 = type metadata accessor for ButtonElementView(0), v21 = *(v20 + 20), v22 = sub_26A5B6220(), VRXIdiom.idiom.getter(v22, v18), v23 = sub_26A84E0D8(), (*(v16 + 8))(v18, v15), (v23 & 1) == 0) || (sub_26A84E0C8(), v24 = v124, (*(v124 + 104))(v11, *MEMORY[0x277D636A8], v9), v25 = sub_26A84AD68(), v26 = *(v24 + 8), v26(v11, v9), v26(v14, v9), (v25)))
  {
    v27 = sub_26A84E158();
    v28 = v2 + v21;
    v29 = v129;
    (*(*(v27 - 8) + 16))(v129, v28, v27);
    v30 = (v2 + *(v20 + 24));
    v31 = *v30;
    v32 = v30[1];
    v33 = v130;
    v34 = v29 + *(v130 + 24);
    *v34 = swift_getKeyPath();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = swift_getKeyPath();
    *(v34 + 32) = 0;
    v35 = type metadata accessor for ActionHandler(0);
    v36 = v35[6];
    *(v34 + v36) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v37 = v34 + v35[7];
    *v37 = swift_getKeyPath();
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    v38 = v34 + v35[8];
    *v38 = swift_getKeyPath();
    *(v38 + 8) = 0;
    v39 = v34 + v35[9];
    *v39 = swift_getKeyPath();
    *(v39 + 8) = 0;
    v40 = v34 + v35[10];
    *v40 = swift_getKeyPath();
    *(v40 + 9) = 0;
    swift_unknownObjectWeakInit();
    v41 = v35[11];
    v42 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(v34 + v41, 1, 1, v42);
    sub_26A4C2304(v31, v32);
    sub_26A5B7218(v34 + v41);
    __swift_storeEnumTagSinglePayload(v34 + v41, 1, 1, v42);
    v43 = v29 + *(v33 + 28);
    *v43 = sub_26A626198;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    v44 = (v29 + *(v33 + 20));
    *v44 = v31;
    v44[1] = v32;
    KeyPath = swift_getKeyPath();
    v136 = 0;
    sub_26A851048();
    v46 = v137;
    v47 = v138;
    v137 = KeyPath;
    LOBYTE(v138) = 0;
    LOBYTE(v139) = v46;
    v140 = v47;
    v49 = sub_26A5B7280(v48);
    v50 = sub_26A5B748C();
    v51 = v122;
    sub_26A850988();
    sub_26A4D82E8(v137, v138);

    sub_26A5B732C(v29, v52);
    v53 = v123;
    v54 = v126;
    (*(v123 + 16))(v127, v51, v126);
    swift_storeEnumTagMultiPayload();
    v137 = v33;
    v138 = &type metadata for CapsuleSiriButtonStyle;
    v139 = v49;
    v140 = v50;
    swift_getOpaqueTypeConformance2();
    v55 = sub_26A5B72D8();
    v137 = v33;
    v138 = &type metadata for CircularSiriButtonStyle;
    v139 = v49;
    v140 = v55;
    swift_getOpaqueTypeConformance2();
    v56 = v128;
    sub_26A84FDF8();
    sub_26A49CF18(v56, v133);
    swift_storeEnumTagMultiPayload();
    sub_26A5B7388();
    sub_26A84FDF8();
    sub_26A49CF88(v56);
    v57 = *(v53 + 8);
    v58 = v51;
  }

  else
  {
    v59 = sub_26A5B6220();
    if (!sub_26A61B05C(v59, &unk_287B131A0) && sub_26A5B6220() != 1 || (v60 = type metadata accessor for ButtonElementView(0), v61 = *(v60 + 20), sub_26A84E0C8(), v62 = v124, (*(v124 + 104))(v11, *MEMORY[0x277D63698], v9), v63 = sub_26A84AD68(), v64 = *(v62 + 8), v64(v11, v9), v64(v14, v9), (v63 & 1) == 0))
    {
      v92 = type metadata accessor for ButtonElementView(0);
      v93 = *(v92 + 20);
      v94 = sub_26A84E158();
      v95 = v129;
      (*(*(v94 - 8) + 16))(v129, v2 + v93, v94);
      v96 = (v2 + *(v92 + 24));
      v97 = *v96;
      v98 = v96[1];
      v99 = v130;
      v100 = v95 + *(v130 + 24);
      *v100 = swift_getKeyPath();
      *(v100 + 8) = 0;
      *(v100 + 16) = 0;
      *(v100 + 24) = swift_getKeyPath();
      *(v100 + 32) = 0;
      v101 = type metadata accessor for ActionHandler(0);
      v102 = v101[6];
      *(v100 + v102) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
      swift_storeEnumTagMultiPayload();
      v103 = v100 + v101[7];
      *v103 = swift_getKeyPath();
      *(v103 + 8) = 0;
      *(v103 + 16) = 0;
      v104 = v100 + v101[8];
      *v104 = swift_getKeyPath();
      *(v104 + 8) = 0;
      v105 = v100 + v101[9];
      *v105 = swift_getKeyPath();
      *(v105 + 8) = 0;
      v106 = v100 + v101[10];
      *v106 = swift_getKeyPath();
      *(v106 + 9) = 0;
      swift_unknownObjectWeakInit();
      v107 = v101[11];
      v108 = type metadata accessor for StandardActionHandler(0);
      __swift_storeEnumTagSinglePayload(v100 + v107, 1, 1, v108);
      sub_26A4C2304(v97, v98);
      sub_26A5B7218(v100 + v107);
      __swift_storeEnumTagSinglePayload(v100 + v107, 1, 1, v108);
      v109 = v95 + *(v99 + 28);
      *v109 = sub_26A626198;
      *(v109 + 8) = 0;
      *(v109 + 16) = 0;
      v110 = (v95 + *(v99 + 20));
      *v110 = v97;
      v110[1] = v98;
      v111 = swift_getKeyPath();
      LOWORD(v137) = 0;
      v138 = v111;
      LOBYTE(v139) = 0;
      v113 = sub_26A5B7280(v112);
      v114 = sub_26A5B72D8();
      v115 = v120;
      sub_26A850988();
      sub_26A4D82E8(v138, v139);
      sub_26A5B732C(v95, v116);
      v117 = v121;
      v118 = v135;
      (*(v121 + 16))(v133, v115, v135);
      swift_storeEnumTagMultiPayload();
      sub_26A5B7388();
      v137 = v99;
      v138 = &type metadata for CircularSiriButtonStyle;
      v139 = v113;
      v140 = v114;
      swift_getOpaqueTypeConformance2();
      sub_26A84FDF8();
      v57 = *(v117 + 8);
      v58 = v115;
      v91 = v118;
      return v57(v58, v91);
    }

    v65 = sub_26A84E158();
    v66 = v129;
    (*(*(v65 - 8) + 16))(v129, v2 + v61, v65);
    v67 = (v2 + *(v60 + 24));
    v68 = *v67;
    v69 = v67[1];
    v70 = v130;
    v71 = v66 + *(v130 + 24);
    *v71 = swift_getKeyPath();
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;
    *(v71 + 24) = swift_getKeyPath();
    *(v71 + 32) = 0;
    v72 = type metadata accessor for ActionHandler(0);
    v73 = v72[6];
    *(v71 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v74 = v71 + v72[7];
    *v74 = swift_getKeyPath();
    *(v74 + 8) = 0;
    *(v74 + 16) = 0;
    v75 = v71 + v72[8];
    *v75 = swift_getKeyPath();
    *(v75 + 8) = 0;
    v76 = v71 + v72[9];
    *v76 = swift_getKeyPath();
    *(v76 + 8) = 0;
    v77 = v71 + v72[10];
    *v77 = swift_getKeyPath();
    *(v77 + 9) = 0;
    swift_unknownObjectWeakInit();
    v78 = v72[11];
    v79 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(v71 + v78, 1, 1, v79);
    sub_26A4C2304(v68, v69);
    sub_26A5B7218(v71 + v78);
    __swift_storeEnumTagSinglePayload(v71 + v78, 1, 1, v79);
    v80 = v66 + *(v70 + 28);
    *v80 = sub_26A626198;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0;
    v81 = (v66 + *(v70 + 20));
    *v81 = v68;
    v81[1] = v69;
    v82 = swift_getKeyPath();
    LOWORD(v137) = 256;
    v138 = v82;
    LOBYTE(v139) = 0;
    v84 = sub_26A5B7280(v83);
    v85 = sub_26A5B72D8();
    v86 = v120;
    sub_26A850988();
    sub_26A4D82E8(v138, v139);
    sub_26A5B732C(v66, v87);
    v88 = v121;
    v54 = v135;
    (*(v121 + 16))(v127, v86, v135);
    swift_storeEnumTagMultiPayload();
    v89 = sub_26A5B748C();
    v137 = v70;
    v138 = &type metadata for CapsuleSiriButtonStyle;
    v139 = v84;
    v140 = v89;
    swift_getOpaqueTypeConformance2();
    v137 = v70;
    v138 = &type metadata for CircularSiriButtonStyle;
    v139 = v84;
    v140 = v85;
    swift_getOpaqueTypeConformance2();
    v90 = v128;
    sub_26A84FDF8();
    sub_26A49CF18(v90, v133);
    swift_storeEnumTagMultiPayload();
    sub_26A5B7388();
    sub_26A84FDF8();
    sub_26A49CF88(v90);
    v57 = *(v88 + 8);
    v58 = v86;
  }

  v91 = v54;
  return v57(v58, v91);
}

uint64_t sub_26A5B7218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910, &qword_26A855580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5B7280(__n128 a1)
{
  result = qword_2803AF088;
  if (!qword_2803AF088)
  {
    type metadata accessor for ButtonLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF088);
  }

  return result;
}

unint64_t sub_26A5B72D8()
{
  result = qword_2803AF090;
  if (!qword_2803AF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF090);
  }

  return result;
}

uint64_t sub_26A5B732C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ButtonLayout(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26A5B7388()
{
  result = qword_2803AF098;
  if (!qword_2803AF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF078, &qword_26A863B58);
    type metadata accessor for ButtonLayout(255);
    sub_26A5B7280(v1);
    sub_26A5B748C();
    swift_getOpaqueTypeConformance2();
    sub_26A5B72D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF098);
  }

  return result;
}

unint64_t sub_26A5B748C()
{
  result = qword_2803AF0A0;
  if (!qword_2803AF0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF0A0);
  }

  return result;
}

unint64_t sub_26A5B74E0()
{
  result = qword_2803AF0A8;
  if (!qword_2803AF0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF0B0, qword_26A863C90);
    sub_26A5B7388();
    type metadata accessor for ButtonLayout(255);
    sub_26A5B7280(v1);
    sub_26A5B72D8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF0A8);
  }

  return result;
}

BOOL sub_26A5B75E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A5B76C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v6 = v4;
    v7 = sub_26A735A8C(v5);
    v8 = [v1 text_2];
    if (v8)
    {
      v10 = v8;
      v11 = sub_26A735A8C(v9);

      v12 = &protocol witness table for AnyView;
      v13 = MEMORY[0x277CE11C8];
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v12 = 0;
      v36[1] = 0;
      v36[2] = 0;
    }

    v36[0] = v11;
    v36[3] = v13;
    v36[4] = v12;
    v16 = [v2 thumbnail];
    if (v16)
    {
      v17 = v16;
      *(&v34 + 1) = sub_26A84BD28();
      v35 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v33);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    v18 = [v2 addTint];
    *a1 = swift_getKeyPath();
    *(a1 + 8) = 0;
    v19 = type metadata accessor for PrimaryHeaderMarqueeView(0);
    v20 = v19[5];
    *(a1 + v20) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v21 = v19[6];
    *(a1 + v21) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v22 = a1 + v19[7];
    v32 = 0;
    sub_26A851048();
    v23 = v30[1];
    *v22 = v30[0];
    *(v22 + 8) = v23;
    *(a1 + v19[8]) = v7;
    sub_26A5582C8(v36, v30);
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v24 = OUTLINED_FUNCTION_1_2();
      v26 = v25(v24);
      __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      sub_26A4E2544(v30, &qword_2803A91B8, &qword_26A8575C0);
      v26 = 0;
    }

    *(a1 + v19[9]) = v26;
    sub_26A5582C8(&v33, v30);
    if (v31)
    {
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v27 = OUTLINED_FUNCTION_1_2();
      v29 = v28(v27);

      sub_26A4E2544(&v33, &qword_2803A91B8, &qword_26A8575C0);
      sub_26A4E2544(v36, &qword_2803A91B8, &qword_26A8575C0);
      result = __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {

      sub_26A4E2544(&v33, &qword_2803A91B8, &qword_26A8575C0);
      sub_26A4E2544(v36, &qword_2803A91B8, &qword_26A8575C0);
      result = sub_26A4E2544(v30, &qword_2803A91B8, &qword_26A8575C0);
      v29 = 0;
    }

    *(a1 + v19[10]) = v29;
    *(a1 + v19[11]) = v18;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v14 = v1;
    *(v14 + 8) = &unk_287B134C8;
    *(v14 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A5B7AAC()
{
  result = qword_2803AF0B8;
  if (!qword_2803AF0B8)
  {
    type metadata accessor for PrimaryHeaderMarqueeView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF0B8);
  }

  return result;
}

uint64_t sub_26A5B7B04@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_26A84FBC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  v12 = sub_26A84B318();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  (*(v14 + 16))(v17 - v16, v3, v12);
  v18 = OUTLINED_FUNCTION_128();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D62D68])
  {
LABEL_2:
    if (qword_28157FFC0 != -1)
    {
      OUTLINED_FUNCTION_5_29(&qword_28157FFC0);
    }

    v21 = sub_26A84FC88();
    v22 = __swift_project_value_buffer(v21, qword_2803D1C00);
    return (*(*(v21 - 8) + 16))(a2, v22, v21);
  }

  if (v20 == *MEMORY[0x277D62D50])
  {
    return sub_26A84FC48();
  }

  if (v20 == *MEMORY[0x277D62D58])
  {
    (*(v7 + 104))(v11, *MEMORY[0x277CE0220], v5);
    v24 = sub_26A84EE58();
    (*(v7 + 8))(v11, v5);
    if ((v24 & 1) == 0)
    {
      return sub_26A84FC58();
    }

    goto LABEL_2;
  }

  if (v20 == *MEMORY[0x277D62D70])
  {
    return sub_26A84FC78();
  }

  if (v20 == *MEMORY[0x277D62D60])
  {
    return sub_26A84FC68();
  }

  sub_26A851E98();
  LOBYTE(v35) = 2;
  OUTLINED_FUNCTION_3_28();
  sub_26A7A9940(v25, v26, v27, v28, v29, 105, v30, 31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, vars0, vars8);
  if (qword_28157FFC0 != -1)
  {
    OUTLINED_FUNCTION_5_29(&qword_28157FFC0);
  }

  v31 = sub_26A84FC88();
  v32 = __swift_project_value_buffer(v31, qword_2803D1C00);
  (*(*(v31 - 8) + 16))(a2, v32, v31);
  v33 = OUTLINED_FUNCTION_128();
  return v34(v33);
}

double static ImageElement.cornerRadius(for:context:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_7_26();
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  sub_26A77F8A4(a1, v2);
  sub_26A58E870(a2, v3);
  v10 = sub_26A5B8EE0(v2);
  v11 = (*(v3 + 16))(v10, *(v3 + 8), *v3);
  sub_26A51DA28(v3);
  return v11;
}

double static ImageElement.size(for:context:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_7_26();
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  sub_26A77F8A4(a1, v2);
  sub_26A58E870(a2, v3);
  sub_26A5B8EE0(v2);
  v10 = *(v3 + 8);
  sub_26A51DA28(v3);
  return v10;
}

BOOL static ImageElement.isCircularImageStyle(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74_0();
  v7 = type metadata accessor for ImageStyleAppearance(0);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  sub_26A77F8A4(a1, v2);
  sub_26A58E870(a2, v11);
  v12 = sub_26A5B8EE0(v2);
  v13 = *(v11 + 8);
  v14 = v13 == *v11 && v13 * 0.5 == (*(v11 + 16))(v12);
  sub_26A51DA28(v11);
  return v14;
}

double static ImageElement.cornerRadius(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for Context(0));
  v5 = Context.init(idiom:)(a2, 0);
  v6 = static ImageElement.cornerRadius(for:context:)(a1, v5);

  return v6;
}

double static ImageElement.size(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_7_26();
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v10 = objc_allocWithZone(type metadata accessor for Context(0));
  v11 = Context.init(idiom:)(a2, 0);
  sub_26A77F8A4(a1, v2);
  sub_26A58E870(v11, v3);

  sub_26A5B8EE0(v2);
  v12 = *(v3 + 8);
  sub_26A51DA28(v3);
  return v12;
}

BOOL static ImageElement.isCircularImageStyle(_:idiom:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for Context(0));
  v5 = Context.init(idiom:)(a2, 0);
  v6 = static ImageElement.isCircularImageStyle(_:context:)(a1, v5);

  return v6;
}

uint64_t sub_26A5B8614()
{
  v0 = sub_26A84FC88();
  __swift_allocate_value_buffer(v0, qword_2803D1C00);
  __swift_project_value_buffer(v0, qword_2803D1C00);
  return sub_26A84FC48();
}

id sub_26A5B8724(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata(a3));
  v4 = sub_26A851788();

  v5 = [v3 initWithPath_];

  return v5;
}

unint64_t sub_26A5B8954()
{
  sub_26A852248();

  v0 = sub_26A84B438();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](46, 0xE100000000000000);
  return 0xD000000000000020;
}

unint64_t sub_26A5B89E4()
{
  sub_26A852248();

  v0 = sub_26A84B438();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](46, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t ImageElement.Url.parameterized(with:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v65 = a1;
  v7 = sub_26A84B2F8();
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v59 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82();
  v62 = v13;
  OUTLINED_FUNCTION_25_2();
  v14 = sub_26A84B2E8();
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v61 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0, &unk_26A87C580);
  OUTLINED_FUNCTION_79(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  v60 = v20;
  OUTLINED_FUNCTION_25_2();
  v21 = sub_26A84B1D8();
  v22 = OUTLINED_FUNCTION_79(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v64 = v24 - v23;
  OUTLINED_FUNCTION_25_2();
  v25 = sub_26A84B2C8();
  v26 = OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v63 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8, &unk_26A8720C0);
  OUTLINED_FUNCTION_79(v29);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_82();
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  OUTLINED_FUNCTION_79(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_82();
  v36 = v35;
  OUTLINED_FUNCTION_25_2();
  v37 = sub_26A84AB98();
  v38 = OUTLINED_FUNCTION_79(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_41();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_25_2();
  v42 = sub_26A84E328();
  OUTLINED_FUNCTION_15();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  v47 = v55 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = v55 - v49;
  sub_26A84B328();
  v51 = RFImage.Url.containsImageSizingParameters.getter();
  v52 = *(v44 + 8);
  v52(v50, v42);
  if (v51)
  {
    sub_26A84B328();
    RFImage.Url.parameterized(with:)(v50, a2, a3);
    v52(v47, v42);
    v58 = v41;
    sub_26A84E318();
    v57 = v36;
    sub_26A84E2F8();
    v56 = v32;
    sub_26A84B338();
    sub_26A84B378();
    sub_26A84B358();
    sub_26A84B368();
    v55[3] = sub_26A84B348();
    v55[2] = sub_26A84B388();
    sub_26A84B3A8();
    sub_26A84B3C8();
    sub_26A84B3D8();
    sub_26A84B398();
    sub_26A84B418();
    return (v52)(v50, v42);
  }

  else
  {
    sub_26A84B408();
    OUTLINED_FUNCTION_46();
    return (*(v54 + 16))(v65, v4);
  }
}

uint64_t sub_26A5B8EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0, &qword_26A86DCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_8()
{
  sub_26A84B4B8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A5B8FF8(uint64_t (*a1)(uint64_t))
{
  v2 = sub_26A84B4B8();
  OUTLINED_FUNCTION_79(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_26A5B9068()
{
  result = qword_2803AF0D8;
  if (!qword_2803AF0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803AF0D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_26()
{

  return type metadata accessor for ImageStyleAppearance(0);
}

double OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2)
{

  return result;
}

uint64_t sub_26A5B916C()
{
  v0 = sub_26A850D48();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_26A850E98();
  qword_2803D1C18 = result;
  return result;
}

uint64_t sub_26A5B924C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26A51D0F8(v2, &v14 - v9, &qword_2803AB430, &qword_26A85B010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84EE68();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BackgroundTintView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A84EE68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_26A5B924C(&v13 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v9 = sub_26A84EE58();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_26A850E18();
  }

  else
  {
    if (qword_2803A8B18 != -1)
    {
      swift_once();
    }
  }

  v11 = sub_26A850E68();

  *a1 = v11;
  return result;
}

uint64_t type metadata accessor for BackgroundTintView(uint64_t a1)
{
  result = qword_2803AF0E0;
  if (!qword_2803AF0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5B9690(uint64_t a1)
{
  sub_26A5B96FC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26A5B96FC(uint64_t a1)
{
  if (!qword_2803AC3D8)
  {
    sub_26A84EE68();
    v1 = sub_26A84EEA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AC3D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TintModifier(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TintModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A5B98E4(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0F0, &qword_26A863E90);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0F8, &qword_26A863E98);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  if (a2)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18(v11))
    {
      case 3u:

        goto LABEL_5;
      case 4u:
        break;
      default:
        v12 = sub_26A852598();

        if (v12)
        {
          goto LABEL_5;
        }

        break;
    }

    v19 = sub_26A851448();
    v21 = v20;
    v22 = &v10[*(v7 + 36)];
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
    swift_storeEnumTagMultiPayload();
    v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF120, &qword_26A863EA8) + 36));
    *v23 = v19;
    v23[1] = v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF100, &qword_26A863EA0);
    OUTLINED_FUNCTION_46();
    (*(v25 + 16))(v10, a1, v24);
    sub_26A51D0F8(v10, v6, &qword_2803AF0F8, &qword_26A863E98);
    swift_storeEnumTagMultiPayload();
    sub_26A5B9C38();
    OUTLINED_FUNCTION_1_31();
    sub_26A4DBCC8(v26, v27, &qword_26A863EA0, v28);
    OUTLINED_FUNCTION_2_30();
    sub_26A84FDF8();
    return sub_26A5B9D1C(v10);
  }

  else
  {
LABEL_5:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF100, &qword_26A863EA0);
    OUTLINED_FUNCTION_46();
    (*(v14 + 16))(v6, a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_26A5B9C38();
    OUTLINED_FUNCTION_1_31();
    sub_26A4DBCC8(v15, v16, &qword_26A863EA0, v17);
    OUTLINED_FUNCTION_2_30();
    return sub_26A84FDF8();
  }
}

unint64_t sub_26A5B9C38()
{
  result = qword_2803AF108;
  if (!qword_2803AF108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF0F8, &qword_26A863E98);
    sub_26A4DBCC8(&qword_2803AF110, &qword_2803AF100, &qword_26A863EA0, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&qword_2803AF118, &qword_2803AF120, &qword_26A863EA8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF108);
  }

  return result;
}

uint64_t sub_26A5B9D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0F8, &qword_26A863E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5B9D84()
{
  result = qword_2803AF128;
  if (!qword_2803AF128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803AF130, &qword_26A863EE8);
    sub_26A5B9C38();
    sub_26A4DBCC8(&qword_2803AF110, &qword_2803AF100, &qword_26A863EA0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF128);
  }

  return result;
}

uint64_t sub_26A5B9E6C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a4;
  v47 = a5;
  v48 = a3;
  v50 = a1;
  v52 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B0FE0, &qword_26A86B060);
  OUTLINED_FUNCTION_15();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = v41 - v17;
  v43 = a6;
  v44 = a7;
  v53 = a6;
  v54 = a7;
  v45 = a8;
  v55 = a8;
  v56 = a10;
  v42 = a10;
  type metadata accessor for OnUpdateResponseCommandModifier(255, &v53);
  OUTLINED_FUNCTION_0_29();
  swift_getWitnessTable();
  v19 = sub_26A84FE88();
  v20 = sub_26A5BA618();
  OUTLINED_FUNCTION_2_31();
  WitnessTable = swift_getWitnessTable();
  v51 = v14;
  v53 = v14;
  v54 = v19;
  v41[1] = WitnessTable;
  v41[2] = v20;
  v55 = v20;
  v56 = WitnessTable;
  v22 = sub_26A84F608();
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v41 - v29;
  if (a2)
  {
    swift_beginAccess();
    v31 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF1B8, &unk_26A863FB0);
    sub_26A84EBE8();
    swift_endAccess();

    v32 = swift_allocObject();
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
    v34 = v42;
    v32[4] = v45;
    v32[5] = v34;
    v36 = v47;
    v35 = v48;
    v32[6] = a2;
    v32[7] = v35;
    v32[8] = v46;
    v32[9] = v36;
    v37 = v31;

    v38 = v51;
    sub_26A850D08();

    (*(v49 + 8))(v18, v38);
    OUTLINED_FUNCTION_1_32();
    swift_getWitnessTable();
    sub_26A80757C();
    v39 = *(v24 + 8);
    v39(v27, v22);
    sub_26A80757C();
    return (v39)(v30, v22);
  }

  else
  {
    type metadata accessor for Context(0);
    sub_26A5928CC();
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

uint64_t sub_26A5BA1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a4;
  v7 = sub_26A852068();
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_26A84D328();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, a6);
  (*(v10 + 32))(v13, v9, a6);
  (v15[0])(v13);
  return (*(v10 + 8))(v13, a6);
}

uint64_t sub_26A5BA3B4()
{
  type metadata accessor for Context(0);
  sub_26A5928CC();
  return sub_26A84F678();
}

void View.onUpdateResponseCommand<A>(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v14 = sub_26A5BA3B4();
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  v19[0] = a5;
  v19[1] = a7;
  v19[2] = a8;
  v19[3] = a9;
  updated = type metadata accessor for OnUpdateResponseCommandModifier(0, v19);
  MEMORY[0x26D662ED0](v20, a4, updated, a6);
}

uint64_t sub_26A5BA518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A5BA554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_26A5BA594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A5BA618()
{
  result = qword_28157FF40;
  if (!qword_28157FF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B0FE0, &qword_26A86B060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FF40);
  }

  return result;
}

uint64_t sub_26A5BA6FC()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SummaryItemPairCompanionView(0) + 36);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v0);
    return v11[1];
  }

  return v8;
}

void *sub_26A5BA844@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF218, &qword_26A864078);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __src - v3;
  *v4 = sub_26A84FBF8();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF220, &qword_26A864080);
  sub_26A5BA970(&v4[*(v5 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  sub_26A5BE104(v4, a1);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF228, &qword_26A864088);
  return memcpy((a1 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A5BA970@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF230, &qword_26A864090);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v31 = &v28 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF238, &qword_26A864098);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v28 - v21;
  sub_26A5BACCC(&v28 - v21);
  sub_26A5BB680(v16);
  sub_26A5BC0D0(v13);
  v29 = v10;
  sub_26A5BCB20(v10);
  v32 = v19;
  sub_26A51D0F8(v22, v19, &qword_2803AF238, &qword_26A864098);
  v30 = v7;
  sub_26A51D0F8(v16, v7, &qword_2803AF230, &qword_26A864090);
  v23 = v33;
  sub_26A51D0F8(v13, v33, &qword_2803AF230, &qword_26A864090);
  v24 = v34;
  sub_26A51D0F8(v10, v34, &qword_2803AF230, &qword_26A864090);
  v25 = v35;
  sub_26A51D0F8(v19, v35, &qword_2803AF238, &qword_26A864098);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF240, &qword_26A8640A0);
  sub_26A51D0F8(v7, v25 + v26[12], &qword_2803AF230, &qword_26A864090);
  sub_26A51D0F8(v23, v25 + v26[16], &qword_2803AF230, &qword_26A864090);
  sub_26A51D0F8(v24, v25 + v26[20], &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v29, &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v31, &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v16, &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v22, &qword_2803AF238, &qword_26A864098);
  sub_26A4DBD10(v24, &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v23, &qword_2803AF230, &qword_26A864090);
  sub_26A4DBD10(v30, &qword_2803AF230, &qword_26A864090);
  return sub_26A4DBD10(v32, &qword_2803AF238, &qword_26A864098);
}

uint64_t sub_26A5BACCC@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF2B0, &qword_26A864370);
  MEMORY[0x28223BE20](v67);
  v68 = &v58 - v2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF2B8, &qword_26A864378);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF2C0, &qword_26A864380);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - v4;
  v5 = type metadata accessor for SummaryItemPairCompanionView(0);
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF2C8, &qword_26A864388);
  MEMORY[0x28223BE20](v62);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_26A84BD28();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A51D0F8(v1, v11, &qword_2803AAD50, &unk_26A857890);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v16 = v63;
    v17 = v65;
    v18 = v68;
    sub_26A4DBD10(v11, &qword_2803AAD50, &unk_26A857890);
    if (*(v1 + *(v5 + 32)))
    {

      v19 = sub_26A5BD718();
      v21 = v20;

      if (v19 == 0.0 && v21 == 0.0)
      {
        swift_storeEnumTagMultiPayload();
        sub_26A5BE550(&qword_2803AF2F8, &qword_2803AF2C0, &qword_26A864380, sub_26A5BE958);
        return sub_26A84FDF8();
      }

      else
      {
        v53 = sub_26A850DF8();

        sub_26A5BD718();

        sub_26A5BD718();

        sub_26A851448();
        sub_26A84F028();
        v54 = v71;
        v55 = BYTE8(v71);
        v56 = v72;
        v57 = BYTE8(v72);
        *v16 = v53;
        *(v16 + 1) = v54;
        v16[16] = v55;
        *(v16 + 3) = v56;
        v16[32] = v57;
        *(v16 + 40) = v73;
        swift_storeEnumTagMultiPayload();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
        sub_26A5BE958();
        sub_26A5BE4CC();
        sub_26A84FDF8();
        sub_26A51D0F8(v17, v18, &qword_2803AF2C0, &qword_26A864380);
        swift_storeEnumTagMultiPayload();
        sub_26A5BE550(&qword_2803AF2F8, &qword_2803AF2C0, &qword_26A864380, sub_26A5BE958);
        sub_26A84FDF8();

        return sub_26A4DBD10(v17, &qword_2803AF2C0, &qword_26A864380);
      }
    }

    else
    {
      type metadata accessor for SummaryItemPairCompanionView.PairState(0);
      sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
      result = sub_26A84F668();
      __break(1u);
    }
  }

  else
  {
    v23 = *(v13 + 32);
    v59 = v15;
    v23(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    v24 = type metadata accessor for VisualPropertyView(0);
    v25 = &v8[v24[5]];
    *v25 = swift_getKeyPath();
    v25[9] = 0;
    swift_unknownObjectWeakInit();
    v26 = &v8[v24[6]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = &v8[v24[7]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v24[8];
    *&v8[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v29 = &v8[v24[9]];
    v70 = 0;
    sub_26A851048();
    v30 = *(&v71 + 1);
    *v29 = v71;
    *(v29 + 1) = v30;
    sub_26A5BD570();
    sub_26A5BD570();
    sub_26A851448();
    sub_26A84F028();
    v31 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0) + 36)];
    v32 = v72;
    *v31 = v71;
    *(v31 + 1) = v32;
    *(v31 + 2) = v73;
    LOBYTE(v29) = sub_26A850268();
    sub_26A84ED48();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE38, &qword_26A863538) + 36)];
    *v41 = v29;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = v61;
    sub_26A5BE5D4(v1, v61);
    v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v44 = swift_allocObject();
    sub_26A5BE638(v42, v44 + v43);
    v45 = sub_26A851448();
    v47 = v46;
    v48 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF2E0, &unk_26A864390) + 36)];
    *v48 = sub_26A8027E0;
    v48[1] = 0;
    v48[2] = v45;
    v48[3] = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_26A5BEC10;
    *(v49 + 24) = v44;
    v50 = v63;
    v51 = &v8[*(v62 + 36)];
    *v51 = sub_26A5BECF0;
    v51[1] = v49;
    sub_26A51D0F8(v8, v50, &qword_2803AF2C8, &qword_26A864388);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE958();
    sub_26A5BE4CC();
    v52 = v65;
    sub_26A84FDF8();
    sub_26A51D0F8(v52, v68, &qword_2803AF2C0, &qword_26A864380);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2F8, &qword_2803AF2C0, &qword_26A864380, sub_26A5BE958);
    sub_26A84FDF8();
    sub_26A4DBD10(v52, &qword_2803AF2C0, &qword_26A864380);
    sub_26A4DBD10(v8, &qword_2803AF2C8, &qword_26A864388);
    return (*(v13 + 8))(v59, v12);
  }

  return result;
}

uint64_t sub_26A5BB680@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF248, &qword_26A8640A8);
  MEMORY[0x28223BE20](v73);
  v68 = &v62 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF250, &qword_26A8640B0);
  MEMORY[0x28223BE20](v70);
  v5 = &v62 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF258, &qword_26A8640B8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - v6;
  v7 = type metadata accessor for SummaryItemPairCompanionView(0);
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = v8;
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF260, &unk_26A8640C0);
  MEMORY[0x28223BE20](v67);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = sub_26A84B888();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 20);
  v69 = v2;
  sub_26A51D0F8(v2 + v18, v13, &qword_2803AA838, &unk_26A856770);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v24 = *(v15 + 32);
    v63 = v17;
    v24(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    v25 = type metadata accessor for TextPropertyView(0);
    v26 = v25[5];
    v62 = v5;
    v27 = &v10[v26];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v25[6];
    *&v10[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v29 = &v10[v25[7]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v10[v25[8]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    *(v30 + 3) = swift_getKeyPath();
    v30[32] = 0;
    v31 = type metadata accessor for ActionHandler(0);
    v32 = v31[6];
    *&v30[v32] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v33 = &v30[v31[7]];
    *v33 = swift_getKeyPath();
    *(v33 + 1) = 0;
    v33[16] = 0;
    v34 = &v30[v31[8]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v30[v31[9]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v30[v31[10]];
    *v36 = swift_getKeyPath();
    v36[9] = 0;
    swift_unknownObjectWeakInit();
    v37 = v31[11];
    v38 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    sub_26A4DBD10(&v30[v37], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    v39 = sub_26A850328();
    KeyPath = swift_getKeyPath();
    v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = swift_getKeyPath();
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF290, &qword_26A87BBE0) + 36)];
    *v43 = v42;
    *(v43 + 1) = 1;
    v43[16] = 0;
    v44 = v66;
    sub_26A5BE5D4(v69, v66);
    v45 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v46 = swift_allocObject();
    sub_26A5BE638(v44, v46 + v45);
    v47 = sub_26A851448();
    v49 = v48;
    v50 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF280, &unk_26A8640D0) + 36)];
    *v50 = sub_26A8027E0;
    v50[1] = 0;
    v50[2] = v47;
    v50[3] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26A5BE930;
    *(v51 + 24) = v46;
    v52 = &v10[*(v67 + 36)];
    *v52 = sub_26A5BECF0;
    v52[1] = v51;
    sub_26A51D0F8(v10, v62, &qword_2803AF260, &unk_26A8640C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    v53 = v71;
    sub_26A84FDF8();
    sub_26A51D0F8(v53, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();
    sub_26A4DBD10(v53, &qword_2803AF258, &qword_26A8640B8);
    (*(v15 + 8))(v63, v14);
    v54 = v10;
    v55 = &qword_2803AF260;
    v56 = &unk_26A8640C0;
    return sub_26A4DBD10(v54, v55, v56);
  }

  v19 = v71;
  sub_26A4DBD10(v13, &qword_2803AA838, &unk_26A856770);
  if (*(v69 + *(v7 + 32)))
  {

    v20 = sub_26A5BD83C();
    v22 = v21;

    if (v20 == 0.0 && v22 == 0.0)
    {
      swift_storeEnumTagMultiPayload();
      sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
      return sub_26A84FDF8();
    }

    v57 = sub_26A850DF8();

    sub_26A5BD83C();

    sub_26A5BD83C();

    sub_26A851448();
    sub_26A84F028();
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v61 = v78;
    *v5 = v57;
    *(v5 + 1) = v58;
    v5[16] = v59;
    *(v5 + 3) = v60;
    v5[32] = v61;
    *(v5 + 40) = v79;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    sub_26A84FDF8();
    sub_26A51D0F8(v19, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();

    v54 = v19;
    v55 = &qword_2803AF258;
    v56 = &qword_26A8640B8;
    return sub_26A4DBD10(v54, v55, v56);
  }

  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A5BC0D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF248, &qword_26A8640A8);
  MEMORY[0x28223BE20](v73);
  v68 = &v62 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF250, &qword_26A8640B0);
  MEMORY[0x28223BE20](v70);
  v5 = &v62 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF258, &qword_26A8640B8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - v6;
  v7 = type metadata accessor for SummaryItemPairCompanionView(0);
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = v8;
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF260, &unk_26A8640C0);
  MEMORY[0x28223BE20](v67);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = sub_26A84B888();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 24);
  v69 = v2;
  sub_26A51D0F8(v2 + v18, v13, &qword_2803AA838, &unk_26A856770);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v24 = *(v15 + 32);
    v63 = v17;
    v24(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    v25 = type metadata accessor for TextPropertyView(0);
    v26 = v25[5];
    v62 = v5;
    v27 = &v10[v26];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v25[6];
    *&v10[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v29 = &v10[v25[7]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v10[v25[8]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    *(v30 + 3) = swift_getKeyPath();
    v30[32] = 0;
    v31 = type metadata accessor for ActionHandler(0);
    v32 = v31[6];
    *&v30[v32] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v33 = &v30[v31[7]];
    *v33 = swift_getKeyPath();
    *(v33 + 1) = 0;
    v33[16] = 0;
    v34 = &v30[v31[8]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v30[v31[9]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v30[v31[10]];
    *v36 = swift_getKeyPath();
    v36[9] = 0;
    swift_unknownObjectWeakInit();
    v37 = v31[11];
    v38 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    sub_26A4DBD10(&v30[v37], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    v39 = sub_26A8504A8();
    KeyPath = swift_getKeyPath();
    v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = swift_getKeyPath();
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF290, &qword_26A87BBE0) + 36)];
    *v43 = v42;
    *(v43 + 1) = 1;
    v43[16] = 0;
    v44 = v66;
    sub_26A5BE5D4(v69, v66);
    v45 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v46 = swift_allocObject();
    sub_26A5BE638(v44, v46 + v45);
    v47 = sub_26A851448();
    v49 = v48;
    v50 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF280, &unk_26A8640D0) + 36)];
    *v50 = sub_26A8027E0;
    v50[1] = 0;
    v50[2] = v47;
    v50[3] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26A5BE884;
    *(v51 + 24) = v46;
    v52 = &v10[*(v67 + 36)];
    *v52 = sub_26A5BECF0;
    v52[1] = v51;
    sub_26A51D0F8(v10, v62, &qword_2803AF260, &unk_26A8640C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    v53 = v71;
    sub_26A84FDF8();
    sub_26A51D0F8(v53, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();
    sub_26A4DBD10(v53, &qword_2803AF258, &qword_26A8640B8);
    (*(v15 + 8))(v63, v14);
    v54 = v10;
    v55 = &qword_2803AF260;
    v56 = &unk_26A8640C0;
    return sub_26A4DBD10(v54, v55, v56);
  }

  v19 = v71;
  sub_26A4DBD10(v13, &qword_2803AA838, &unk_26A856770);
  if (*(v69 + *(v7 + 32)))
  {

    v20 = sub_26A5BD850();
    v22 = v21;

    if (v20 == 0.0 && v22 == 0.0)
    {
      swift_storeEnumTagMultiPayload();
      sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
      return sub_26A84FDF8();
    }

    v57 = sub_26A850DF8();

    sub_26A5BD850();

    sub_26A5BD850();

    sub_26A851448();
    sub_26A84F028();
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v61 = v78;
    *v5 = v57;
    *(v5 + 1) = v58;
    v5[16] = v59;
    *(v5 + 3) = v60;
    v5[32] = v61;
    *(v5 + 40) = v79;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    sub_26A84FDF8();
    sub_26A51D0F8(v19, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();

    v54 = v19;
    v55 = &qword_2803AF258;
    v56 = &qword_26A8640B8;
    return sub_26A4DBD10(v54, v55, v56);
  }

  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

uint64_t sub_26A5BCB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF248, &qword_26A8640A8);
  MEMORY[0x28223BE20](v73);
  v68 = &v62 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF250, &qword_26A8640B0);
  MEMORY[0x28223BE20](v70);
  v5 = &v62 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF258, &qword_26A8640B8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - v6;
  v7 = type metadata accessor for SummaryItemPairCompanionView(0);
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = v8;
  v66 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF260, &unk_26A8640C0);
  MEMORY[0x28223BE20](v67);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = sub_26A84B888();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 28);
  v69 = v2;
  sub_26A51D0F8(v2 + v18, v13, &qword_2803AA838, &unk_26A856770);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v24 = *(v15 + 32);
    v63 = v17;
    v24(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    v25 = type metadata accessor for TextPropertyView(0);
    v26 = v25[5];
    v62 = v5;
    v27 = &v10[v26];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v25[6];
    *&v10[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v29 = &v10[v25[7]];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = &v10[v25[8]];
    *v30 = swift_getKeyPath();
    *(v30 + 1) = 0;
    v30[16] = 0;
    *(v30 + 3) = swift_getKeyPath();
    v30[32] = 0;
    v31 = type metadata accessor for ActionHandler(0);
    v32 = v31[6];
    *&v30[v32] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v33 = &v30[v31[7]];
    *v33 = swift_getKeyPath();
    *(v33 + 1) = 0;
    v33[16] = 0;
    v34 = &v30[v31[8]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v30[v31[9]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v30[v31[10]];
    *v36 = swift_getKeyPath();
    v36[9] = 0;
    swift_unknownObjectWeakInit();
    v37 = v31[11];
    v38 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    sub_26A4DBD10(&v30[v37], &qword_2803B3910, &qword_26A855580);
    __swift_storeEnumTagSinglePayload(&v30[v37], 1, 1, v38);
    v39 = sub_26A8502D8();
    KeyPath = swift_getKeyPath();
    v41 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378, &qword_26A85DCF0) + 36)];
    *v41 = KeyPath;
    v41[1] = v39;
    v42 = swift_getKeyPath();
    v43 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF290, &qword_26A87BBE0) + 36)];
    *v43 = v42;
    *(v43 + 1) = 1;
    v43[16] = 0;
    v44 = v66;
    sub_26A5BE5D4(v69, v66);
    v45 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v46 = swift_allocObject();
    sub_26A5BE638(v44, v46 + v45);
    v47 = sub_26A851448();
    v49 = v48;
    v50 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF280, &unk_26A8640D0) + 36)];
    *v50 = sub_26A8027E0;
    v50[1] = 0;
    v50[2] = v47;
    v50[3] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_26A5BE69C;
    *(v51 + 24) = v46;
    v52 = &v10[*(v67 + 36)];
    *v52 = sub_26A52E998;
    v52[1] = v51;
    sub_26A51D0F8(v10, v62, &qword_2803AF260, &unk_26A8640C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    v53 = v71;
    sub_26A84FDF8();
    sub_26A51D0F8(v53, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();
    sub_26A4DBD10(v53, &qword_2803AF258, &qword_26A8640B8);
    (*(v15 + 8))(v63, v14);
    v54 = v10;
    v55 = &qword_2803AF260;
    v56 = &unk_26A8640C0;
    return sub_26A4DBD10(v54, v55, v56);
  }

  v19 = v71;
  sub_26A4DBD10(v13, &qword_2803AA838, &unk_26A856770);
  if (*(v69 + *(v7 + 32)))
  {

    v20 = sub_26A5BD950();
    v22 = v21;

    if (v20 == 0.0 && v22 == 0.0)
    {
      swift_storeEnumTagMultiPayload();
      sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
      return sub_26A84FDF8();
    }

    v57 = sub_26A850DF8();

    sub_26A5BD950();

    sub_26A5BD950();

    sub_26A851448();
    sub_26A84F028();
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v61 = v78;
    *v5 = v57;
    *(v5 + 1) = v58;
    v5[16] = v59;
    *(v5 + 3) = v60;
    v5[32] = v61;
    *(v5 + 40) = v79;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF268, &unk_26A877660);
    sub_26A5BE174();
    sub_26A5BE4CC();
    sub_26A84FDF8();
    sub_26A51D0F8(v19, v68, &qword_2803AF258, &qword_26A8640B8);
    swift_storeEnumTagMultiPayload();
    sub_26A5BE550(&qword_2803AF2A8, &qword_2803AF258, &qword_26A8640B8, sub_26A5BE174);
    sub_26A84FDF8();

    v54 = v19;
    v55 = &qword_2803AF258;
    v56 = &qword_26A8640B8;
    return sub_26A4DBD10(v54, v55, v56);
  }

  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
  result = sub_26A84F668();
  __break(1u);
  return result;
}

double sub_26A5BD570()
{
  v0 = sub_26A84B058();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  v7 = sub_26A5BA6FC();
  VRXIdiom.idiom.getter(v7, v6);
  (*(v1 + 104))(v3, *MEMORY[0x277D62A20], v0);
  sub_26A5BE484(&qword_2803AD370, MEMORY[0x277D62A30], MEMORY[0x277D62A48]);
  sub_26A851A48();
  sub_26A851A48();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 80.0;
  if (v10[1] == v10[0])
  {
    return 40.0;
  }

  return result;
}

uint64_t sub_26A5BD72C()
{
  OUTLINED_FUNCTION_4_26();
  v3();
  if (v4 >= v1)
  {
    v1 = v4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_26A84EC08();
  *(v6 + 8) = v1;
  v5(v21, 0);

  v8 = v0(v7);
  if (v8 < v2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_13_14(KeyPath, v11, v12, v13, v14, v15, v16, v17, v21[0]);
  v18 = sub_26A84EC08();
  *v19 = v9;
  v18(v21, 0);
}

uint64_t sub_26A5BD864(uint64_t a1, __n128 a2)
{
  if (*(a1 + *(type metadata accessor for SummaryItemPairCompanionView(0) + 32)))
  {

    sub_26A5BD72C();
  }

  else
  {
    type metadata accessor for SummaryItemPairCompanionView.PairState(0);
    sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
    result = sub_26A84F668();
    __break(1u);
  }

  return result;
}

double sub_26A5BD964(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v3;
}

uint64_t sub_26A5BDAB4(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_13_14(v4, v5, v6, v7, v8, v9, v10, v11, *&a3);
  return sub_26A84EC28();
}

uint64_t sub_26A5BDB1C()
{
  v1 = OBJC_IVAR____TtCV9SnippetUI28SummaryItemPairCompanionView9PairState__thumbnailMaxSize;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF300, &qword_26A8643F0);
  OUTLINED_FUNCTION_46();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV9SnippetUI28SummaryItemPairCompanionView9PairState__numberMaxSize, v2);
  v4(v0 + OBJC_IVAR____TtCV9SnippetUI28SummaryItemPairCompanionView9PairState__text1MaxSize, v2);
  v4(v0 + OBJC_IVAR____TtCV9SnippetUI28SummaryItemPairCompanionView9PairState__text2MaxSize, v2);
  return v0;
}

uint64_t sub_26A5BDBE8()
{
  sub_26A5BDB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26A5BDC68(uint64_t a1)
{
  sub_26A5BDF54(319, &qword_2803AF1F0, type metadata accessor for CGSize, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A5BDD74(uint64_t a1)
{
  sub_26A5BDF54(319, &qword_2803AD128, MEMORY[0x277D62F88], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26A5BDF54(319, &qword_2803AD348, MEMORY[0x277D62DF0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26A5BDEC0(319);
      if (v3 <= 0x3F)
      {
        sub_26A5BDF54(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26A5BDEC0(uint64_t a1)
{
  if (!qword_2803AF208)
  {
    type metadata accessor for SummaryItemPairCompanionView.PairState(255);
    sub_26A5BE484(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState, &unk_26A864040);
    v1 = sub_26A84F688();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF208);
    }
  }
}

void sub_26A5BDF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A5BDFD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF300, &qword_26A8643F0);
  OUTLINED_FUNCTION_5_30();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  type metadata accessor for CGSize(0, v4, v5, v6);
  OUTLINED_FUNCTION_0_30();
  v7 = *(v2 + 32);
  v8 = OUTLINED_FUNCTION_2_32();
  v7(v8);
  OUTLINED_FUNCTION_0_30();
  v9 = OUTLINED_FUNCTION_2_32();
  v7(v9);
  OUTLINED_FUNCTION_0_30();
  v10 = OUTLINED_FUNCTION_2_32();
  v7(v10);
  OUTLINED_FUNCTION_0_30();
  v11 = OUTLINED_FUNCTION_2_32();
  v7(v11);
  return v0;
}

uint64_t sub_26A5BE104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF218, &qword_26A864078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5BE174()
{
  result = qword_2803AF270;
  if (!qword_2803AF270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF260, &unk_26A8640C0);
    sub_26A5BE22C();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF270);
  }

  return result;
}

unint64_t sub_26A5BE22C()
{
  result = qword_2803AF278;
  if (!qword_2803AF278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF280, &unk_26A8640D0);
    sub_26A5BE2E4();
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF278);
  }

  return result;
}

unint64_t sub_26A5BE2E4()
{
  result = qword_2803AF288;
  if (!qword_2803AF288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF290, &qword_26A87BBE0);
    sub_26A5BE39C();
    sub_26A4DBCC8(&qword_28157FB38, &qword_2803ABDD0, &qword_26A859D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF288);
  }

  return result;
}

unint64_t sub_26A5BE39C()
{
  result = qword_2803AF298;
  if (!qword_2803AF298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD378, &qword_26A85DCF0);
    sub_26A5BE484(&qword_2803AB1C0, type metadata accessor for TextPropertyView, &protocol conformance descriptor for TextPropertyView);
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8, &qword_26A85AFA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF298);
  }

  return result;
}

uint64_t sub_26A5BE484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A5BE4CC()
{
  result = qword_2803AF2A0;
  if (!qword_2803AF2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF268, &unk_26A877660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF2A0);
  }

  return result;
}

uint64_t sub_26A5BE550(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26A5BE4CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26A5BE5D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairCompanionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5BE638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairCompanionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for SummaryItemPairCompanionView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_26A84BD28();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    OUTLINED_FUNCTION_1_33();
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = sub_26A84B888();
  if (!OUTLINED_FUNCTION_10_19())
  {
    OUTLINED_FUNCTION_1_33();
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v1[6];
  if (!OUTLINED_FUNCTION_10_19())
  {
    OUTLINED_FUNCTION_1_33();
    (*(v10 + 8))(v3 + v9, v7);
  }

  v11 = v1[7];
  if (!OUTLINED_FUNCTION_10_19())
  {
    OUTLINED_FUNCTION_1_33();
    (*(v12 + 8))(v3 + v11, v7);
  }

  sub_26A4D82E8(*(v3 + v1[9]), *(v3 + v1[9] + 8));

  return swift_deallocObject();
}

uint64_t sub_26A5BE8AC()
{
  OUTLINED_FUNCTION_4_26();
  v2 = *(type metadata accessor for SummaryItemPairCompanionView(0) - 8);
  v3.n128_u64[0] = v1;
  return sub_26A5BD864(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v3);
}

unint64_t sub_26A5BE958()
{
  result = qword_2803AF2D0;
  if (!qword_2803AF2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF2C8, &qword_26A864388);
    sub_26A5BEA10();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28, &qword_26A8640E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF2D0);
  }

  return result;
}

unint64_t sub_26A5BEA10()
{
  result = qword_2803AF2D8;
  if (!qword_2803AF2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF2E0, &unk_26A864390);
    sub_26A5BEAC8();
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18, &unk_26A855A50, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF2D8);
  }

  return result;
}

unint64_t sub_26A5BEAC8()
{
  result = qword_2803AF2E8;
  if (!qword_2803AF2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEE38, &qword_26A863538);
    sub_26A5BEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF2E8);
  }

  return result;
}

unint64_t sub_26A5BEB54()
{
  result = qword_2803AF2F0;
  if (!qword_2803AF2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AEE40, &qword_26A8643A0);
    sub_26A5BE484(&qword_28157E9E0, type metadata accessor for VisualPropertyView, &protocol conformance descriptor for VisualPropertyView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF2F0);
  }

  return result;
}

unint64_t sub_26A5BEC38()
{
  result = qword_2803AF308;
  if (!qword_2803AF308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF228, &qword_26A864088);
    sub_26A4DBCC8(&qword_2803AF310, &qword_2803AF218, &qword_26A864078, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF308);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_30()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0;

  return sub_26A84EBD8();
}

uint64_t OUTLINED_FUNCTION_10_19()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

uint64_t SnippetPreview.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t SnippetPreview.init(snippetModel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for SnippetPreview(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t SnippetPreview.body.getter@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF318, &qword_26A8643F8);
  sub_26A5BF274();
  sub_26A850228();
  sub_26A84EDF8();
  v3 = sub_26A850D98();
  sub_26A4DBCC8(&qword_2803AF360, &qword_2803AF358, &qword_26A864418, MEMORY[0x277CDD6E0]);
  v4 = sub_26A850248();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF368, &qword_26A864420) + 36);
  *v5 = v3;
  *(v5 + 8) = v4;
  v6 = objc_allocWithZone(type metadata accessor for Context(0));
  v7 = Context.init(idiom:)(0, 1);
  sub_26A5C07EC(&qword_28157D9E0, type metadata accessor for Context, &protocol conformance descriptor for Context);
  v8 = sub_26A84EB78();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF370, &qword_26A864428) + 36));
  *v9 = v8;
  v9[1] = v7;
  type metadata accessor for Form(0);
  v10 = swift_allocObject();
  v11 = Form.init()(v10);
  sub_26A5C07EC(&qword_28157DB60, type metadata accessor for Form, &protocol conformance descriptor for Form);
  v12 = sub_26A84EB78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803AF378, &qword_26A864430);
  v14 = (a2 + *(result + 36));
  *v14 = v12;
  v14[1] = v11;
  return result;
}

uint64_t sub_26A5BF130@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_26A84FC08();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF418, &qword_26A8644C0);
  sub_26A5BF3E4(a1, a2, a3, a4, a5, (a6 + *(v12 + 44)));
  LOBYTE(a5) = sub_26A8502A8();
  v13 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF330, &qword_26A864400) + 36);
  *v13 = a5;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF318, &qword_26A8643F8) + 36);
  v15 = *MEMORY[0x277CC5740];
  v16 = sub_26A84F178();
  v17 = *(*(v16 - 8) + 104);

  return v17(a6 + v14, v15, v16);
}