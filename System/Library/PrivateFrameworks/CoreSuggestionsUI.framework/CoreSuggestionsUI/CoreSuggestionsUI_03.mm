void sub_1B81D34B0()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  v92 = v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1C0, &qword_1B81FFF50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v85 = v73 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1C8, &qword_1B81FFF58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v7);
  v86 = v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E1D0, &unk_1B81FFF60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_14_2();
  v91 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v90 = v73 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D728, &qword_1B81FE670);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E1E0, &unk_1B81FFF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_2();
  v88 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v73 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  *(v27 + 24) = v0;
  *(v27 + 32) = v3 & 1;
  *(v27 + 33) = BYTE1(v3) & 1;
  *(v27 + 34) = BYTE2(v3) & 1;
  v93 = v1;
  v94 = v0;
  v79 = (v3 >> 8) & 1;
  v80 = v3 & 1;
  v95 = v3 & 0x101;
  v96 = BYTE2(v3) & 1;
  v28 = v1;
  v81 = v0;
  sub_1B81F8D88();
  v78 = sub_1B81930C0(&qword_1EDC8A5F8, &qword_1EBA7D728, &qword_1B81FE670, MEMORY[0x1E697D680]);
  sub_1B81D06D4(0);
  v29 = *(v16 + 8);
  v82 = v14;
  v30 = v14;
  v31 = v29;
  v84 = v16 + 8;
  (v29)(v19, v30);
  v83 = v20;
  v32 = &v26[*(v20 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F0, &qword_1B81FCEF8);
  v34 = *(v33 + 28);
  v35 = *MEMORY[0x1E697DC20];
  v36 = sub_1B81F8188();
  OUTLINED_FUNCTION_2();
  v38 = *(v37 + 104);
  v76 = v37 + 104;
  v77 = v38;
  v38(v32 + v34, v35, v36);
  *v32 = swift_getKeyPath();
  if ((v3 & 0x10000) != 0)
  {
    v75 = v35;
    v41 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0x1D0))();
    if (v41)
    {
      v42 = v41;
      if ([v41 respondsToSelector_])
      {
        v43 = [v42 suggestionDismissAction];
        swift_unknownObjectRelease();
        if (v43)
        {
          v44 = (v3 & 0x10000) >> 16;
          v45 = [v43 title];

          v46 = sub_1B81F8F98();
          v48 = v47;

          v49 = swift_allocObject();
          v73[1] = v73;
          v74 = v33;
          v50 = v81;
          *(v49 + 16) = v28;
          *(v49 + 24) = v50;
          v51 = v79;
          *(v49 + 32) = v80;
          *(v49 + 33) = v51;
          *(v49 + 34) = v44;
          MEMORY[0x1EEE9AC00](v49);
          v73[-2] = v46;
          v73[-1] = v48;
          v52 = v28;
          v53 = v50;
          sub_1B81F8D88();

          v54 = v85;
          sub_1B81D06D4(0);
          v55 = OUTLINED_FUNCTION_33_3();
          v31(v55);
          v56 = &v54[*(v83 + 36)];
          v77(v56 + *(v74 + 28), v75, v36);
          *v56 = swift_getKeyPath();
          v57 = sub_1B81F8928();
          sub_1B8186D94();
          sub_1B81F8148();
          v58 = v87;
          v59 = &v54[*(v87 + 36)];
          *v59 = v57;
          OUTLINED_FUNCTION_51_1(v59, v60, v61, v62, v63);
          v64 = v86;
          sub_1B81D6D98();
          v65 = 0;
LABEL_9:
          __swift_storeEnumTagSinglePayload(v64, v65, 1, v58);
          v40 = v90;
          sub_1B81D6D98();
          v39 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v65 = 1;
    v64 = v86;
    v58 = v87;
    goto LABEL_9;
  }

  v39 = 1;
  v40 = v90;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v40, v39, 1, v89);
  OUTLINED_FUNCTION_40_5();
  v66 = v91;
  sub_1B81D6CE0();
  OUTLINED_FUNCTION_40_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E1F8, &unk_1B81FFFB0);
  sub_1B81D6CE0();
  sub_1B8192D84(v40, &unk_1EBA7E1D0, &unk_1B81FFF60);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v67, v68, v69);
  sub_1B8192D84(v66, &unk_1EBA7E1D0, &unk_1B81FFF60);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v70, v71, v72);
  OUTLINED_FUNCTION_37();
}

void sub_1B81D3C18()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v21 = v5;
  v22 = v6;
  v8 = v7;
  sub_1B81F8A78();
  v30 = MEMORY[0x1E69E73E0];
  v31 = v4;
  v32 = MEMORY[0x1E69E73F0];
  v33 = v2;
  sub_1B81F8A98();
  sub_1B81F8728();
  v9 = sub_1B81F8CD8();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v23 = v4;
  v24 = v2;
  v25 = v8;
  v26 = v21;
  OUTLINED_FUNCTION_4_6();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_4();
  v17 = swift_getWitnessTable();
  v28 = WitnessTable;
  v29 = v17;
  OUTLINED_FUNCTION_2_2();
  v18 = swift_getWitnessTable();
  sub_1B81F8CC8();
  v27 = v18;
  OUTLINED_FUNCTION_51_0();
  swift_getWitnessTable();
  v19 = *(v11 + 16);
  v19(v15, v0, v9);
  v20 = *(v11 + 8);
  v20(v0, v9);
  v19(v22, v15, v9);
  v20(v15, v9);
  OUTLINED_FUNCTION_37();
}

void sub_1B81D3E0C()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v52 = v4;
  v53 = v5;
  v57 = v6;
  v65 = v2;
  v64 = MEMORY[0x1E69E73E0];
  v66 = MEMORY[0x1E69E73F0];
  v67 = v0;
  v7 = sub_1B81F8A98();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v50 - v15;
  v16 = sub_1B81F8A78();
  OUTLINED_FUNCTION_1_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_2();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  sub_1B81F8728();
  OUTLINED_FUNCTION_1_0();
  v55 = v27;
  v56 = v26;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v28);
  v54 = &v50 - v29;
  v30 = j__OUTLINED_FUNCTION_18();
  v58 = v3;
  v59 = v1;
  v60 = v52;
  v61 = v53;
  if (v30)
  {
    sub_1B81F8A68();
    OUTLINED_FUNCTION_4_6();
    WitnessTable = swift_getWitnessTable();
    v32 = *(v18 + 16);
    v32(v25, v22, v16);
    v33 = *(v18 + 8);
    v34 = OUTLINED_FUNCTION_33_3();
    v33(v34);
    v35 = OUTLINED_FUNCTION_39_3();
    (v32)(v35);
    OUTLINED_FUNCTION_1_4();
    swift_getWitnessTable();
    v36 = v54;
    v37 = OUTLINED_FUNCTION_33_3();
    sub_1B8199484(v37, v38, v7, WitnessTable, v39);
    v40 = OUTLINED_FUNCTION_33_3();
    v33(v40);
    (v33)(v25, v16);
  }

  else
  {
    sub_1B81F8A88();
    OUTLINED_FUNCTION_1_4();
    v41 = swift_getWitnessTable();
    v42 = *(v9 + 16);
    v43 = v51;
    v42(v51, v13, v7);
    v44 = *(v9 + 8);
    v44(v13, v7);
    v42(v13, v43, v7);
    OUTLINED_FUNCTION_4_6();
    v45 = swift_getWitnessTable();
    v36 = v54;
    sub_1B819957C(v13, v16, v7, v45, v41);
    v44(v13, v7);
    v44(v43, v7);
  }

  v46 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_4();
  v47 = swift_getWitnessTable();
  v62 = v46;
  v63 = v47;
  OUTLINED_FUNCTION_2_2();
  v48 = v56;
  swift_getWitnessTable();
  v49 = v55;
  (*(v55 + 16))(v57, v36, v48);
  (*(v49 + 8))(v36, v48);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81D424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_67();
  v8();
  v9 = *(v6 + 16);
  v9(v4, v3, a3);
  v10 = *(v6 + 8);
  v10(v3, a3);
  v11 = OUTLINED_FUNCTION_43_2();
  (v9)(v11);
  return (v10)(v4, a3);
}

void sub_1B81D4380()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFA0, &qword_1B81FF970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFA8, &qword_1B81FF978);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = j__OUTLINED_FUNCTION_18();
  if (v17)
  {
    v51 = v49;
    MEMORY[0x1EEE9AC00](v17);
    v52 = v7;
    v49[-2] = v3;
    v49[-1] = v1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFB0, &qword_1B81FF980);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFB8, &qword_1B81FF988);
    OUTLINED_FUNCTION_3_1();
    v21 = sub_1B81930C0(v19, &qword_1EBA7DFB0, &qword_1B81FF980, v20);
    v22 = OUTLINED_FUNCTION_16_0();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v22, v23);
    v49[1] = v8;
    v25 = v24;
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_53();
    v30 = sub_1B81930C0(v26, v27, v28, v29);
    v54 = v25;
    v55 = v30;
    v31 = OUTLINED_FUNCTION_13_9();
    v32 = v50;
    sub_1B81F8BE8();
    v33 = v53;
    (*(v13 + 16))(v11, v16, v53);
    swift_storeEnumTagMultiPayload();
    v54 = v18;
    v55 = v32;
    v56 = v21;
    v57 = v31;
    OUTLINED_FUNCTION_13_9();
    sub_1B81F8718();
    (*(v13 + 8))(v16, v33);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_16_0();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_2();
    (*(v37 + 16))(v11, v5, v36);
    OUTLINED_FUNCTION_52();
    swift_storeEnumTagMultiPayload();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFB8, &qword_1B81FF988);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_53();
    v43 = sub_1B81930C0(v39, v40, v41, v42);
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFC8, &qword_1B81FF990);
    OUTLINED_FUNCTION_7_8();
    v47 = sub_1B81930C0(v45, &qword_1EBA7DFC8, &qword_1B81FF990, v46);
    v54 = v44;
    v55 = v47;
    v48 = OUTLINED_FUNCTION_13_9();
    v54 = v36;
    v55 = v38;
    v56 = v43;
    v57 = v48;
    OUTLINED_FUNCTION_13_9();
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_37();
}

void sub_1B81D4730()
{
  OUTLINED_FUNCTION_38();
  v1 = sub_1B81F8748();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFC8, &qword_1B81FF990);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  sub_1B81F8738();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E160, &qword_1B81FFF00);
  sub_1B81930C0(&qword_1EBA7E168, &qword_1EBA7E160, &qword_1B81FFF00, MEMORY[0x1E6981F48]);
  sub_1B81F8388();
  OUTLINED_FUNCTION_7_8();
  v8 = sub_1B81930C0(v6, &qword_1EBA7DFC8, &qword_1B81FF990, v7);
  MEMORY[0x1B8CBA580](v0, v2, v8);
  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_37();
}

void sub_1B81D48E8()
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_68();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67();
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v2;

  sub_1B81F8D88();
  LOBYTE(v2) = sub_1B81F8928();
  sub_1B8186DA0();
  sub_1B81F8148();
  v13 = (v0 + *(v10 + 44));
  *v13 = v2;
  OUTLINED_FUNCTION_51_1(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_40_5();
  *v6 = 0;
  *(v6 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E178, &qword_1B81FFF10);
  OUTLINED_FUNCTION_40_5();
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v18, v19, v20);
  OUTLINED_FUNCTION_53();
  sub_1B8192D84(v21, v22, v23);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81D4A68()
{
  sub_1B81871D4(0xD000000000000021, 0x80000001B8201F60);
  sub_1B8188DE0();
  v0 = sub_1B81F8AF8();
  return OUTLINED_FUNCTION_121_0(v0, v1, v2, v3);
}

uint64_t sub_1B81D4AD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFD8, &qword_1B81FF998);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_27_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE0, &qword_1B81FF9A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = j__OUTLINED_FUNCTION_18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DFE8, &unk_1B81FF9A8);
  if (v8)
  {
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v10, v11, v12, v13);
    sub_1B81F8BC8();
    v14 = *sub_1B81B0230();

    v15 = sub_1B81F88D8();
    v16 = &v7[*(v4 + 36)];
    *v16 = v14;
    v16[8] = v15;
    sub_1B81863AC();
    OUTLINED_FUNCTION_43_2();
    swift_storeEnumTagMultiPayload();
    sub_1B81D4CDC();
    OUTLINED_FUNCTION_24_4();
    sub_1B81F8718();
    return sub_1B818640C(v7);
  }

  else
  {
    (*(*(v9 - 8) + 16))(v1, a1, v9);
    OUTLINED_FUNCTION_43_2();
    swift_storeEnumTagMultiPayload();
    sub_1B81D4CDC();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v18, v19, v20, v21);
    OUTLINED_FUNCTION_24_4();
    return sub_1B81F8718();
  }
}

unint64_t sub_1B81D4CDC()
{
  result = qword_1EBA7DFF0;
  if (!qword_1EBA7DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFE0, &qword_1B81FF9A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFE8, &unk_1B81FF9A8);
    sub_1B81930C0(&qword_1EBA7DFF8, &qword_1EBA7DFE8, &unk_1B81FF9A8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1B81930C0(&qword_1EDC8A630, &unk_1EBA7CBB0, &unk_1B81FD100, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7DFF0);
  }

  return result;
}

void sub_1B81D4E1C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E000, &qword_1B81FF9B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E008, &qword_1B81FF9C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27[-v13 - 8];
  if (j__OUTLINED_FUNCTION_18())
  {
    v26 = v3;
    v15 = *sub_1B8186E00();
    v16 = *sub_1B8186DF4();
    sub_1B8186DE8();
    sub_1B81F8EB8();
    if (v15 > v16)
    {
      sub_1B81F9198();
      v17 = sub_1B81F88B8();
      sub_1B81F8018();
    }

    sub_1B81F8398();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E010, &qword_1B81FF9C8);
    OUTLINED_FUNCTION_2();
    (*(v19 + 16))(v11, v1, v18);
    memcpy((v11 + *(v7 + 36)), v27, 0x70uLL);
    sub_1B81D6D98();
    sub_1B81D6CE0();
    swift_storeEnumTagMultiPayload();
    sub_1B81D5164();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v20, &qword_1EBA7E010, &qword_1B81FF9C8, v21);
    sub_1B81F8718();
    sub_1B8192D84(v14, &qword_1EBA7E008, &qword_1B81FF9C0);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E010, &qword_1B81FF9C8);
    OUTLINED_FUNCTION_2();
    (*(v23 + 16))(v6, v1, v22);
    swift_storeEnumTagMultiPayload();
    sub_1B81D5164();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v24, &qword_1EBA7E010, &qword_1B81FF9C8, v25);
    sub_1B81F8718();
  }

  OUTLINED_FUNCTION_36();
}

unint64_t sub_1B81D5164()
{
  result = qword_1EBA7E018;
  if (!qword_1EBA7E018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E008, &qword_1B81FF9C0);
    sub_1B81930C0(&qword_1EBA7E020, &qword_1EBA7E010, &qword_1B81FF9C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E018);
  }

  return result;
}

void sub_1B81D5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_33();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E028, &qword_1B81FF9D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E030, &qword_1B81FF9D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_27_3();
  if (j__OUTLINED_FUNCTION_18())
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E038, &qword_1B81FF9E0);
    OUTLINED_FUNCTION_2();
    (*(v35 + 16))(v24, v28, v34);
    OUTLINED_FUNCTION_43_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v36, &qword_1EBA7E038, &qword_1B81FF9E0, v37);
    sub_1B81D5468();
    OUTLINED_FUNCTION_24_4();
    sub_1B81F8718();
  }

  else
  {
    v38 = sub_1B81F88E8();
    sub_1B81F8148();
    OUTLINED_FUNCTION_8_0();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E038, &qword_1B81FF9E0);
    OUTLINED_FUNCTION_2();
    (*(v40 + 16))(v32, v28, v39);
    v41 = &v32[*(v29 + 36)];
    *v41 = v38;
    OUTLINED_FUNCTION_10_3(v41);
    sub_1B81D6CE0();
    OUTLINED_FUNCTION_43_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_1();
    sub_1B81930C0(v42, &qword_1EBA7E038, &qword_1B81FF9E0, v43);
    sub_1B81D5468();
    OUTLINED_FUNCTION_24_4();
    sub_1B81F8718();
    sub_1B8192D84(v32, &qword_1EBA7E028, &qword_1B81FF9D0);
  }

  OUTLINED_FUNCTION_36();
}

unint64_t sub_1B81D5468()
{
  result = qword_1EBA7E048;
  if (!qword_1EBA7E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E028, &qword_1B81FF9D0);
    sub_1B81930C0(&qword_1EBA7E040, &qword_1EBA7E038, &qword_1B81FF9E0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E048);
  }

  return result;
}

uint64_t sub_1B81D5528(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E050, &qword_1B81FF9E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_27_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E058, &qword_1B81FF9F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  if (j__OUTLINED_FUNCTION_18())
  {
    v6 = *sub_1B81B03D4();
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E060, &qword_1B81FFA28);
    OUTLINED_FUNCTION_2();
    (*(v8 + 16))(v1, a1);
    v9 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E068, &qword_1B81FFA30) + 36));
    *v9 = KeyPath;
    v9[1] = v6;

    v10 = sub_1B81F8C98();
  }

  else
  {
    v11 = sub_1B81F8A08();
    v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E060, &qword_1B81FFA28);
    OUTLINED_FUNCTION_2();
    (*(v13 + 16))(v1, a1);
    v14 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E068, &qword_1B81FFA30) + 36));
    *v14 = v12;
    v14[1] = v11;
    v10 = sub_1B81F8CA8();
  }

  v15 = swift_getKeyPath();
  v16 = (v1 + *(v4 + 36));
  *v16 = v15;
  v16[1] = v10;
  sub_1B81D6CE0();
  swift_storeEnumTagMultiPayload();
  sub_1B81D5DC4();
  OUTLINED_FUNCTION_24_4();
  sub_1B81F8718();
  return sub_1B8192D84(v1, &qword_1EBA7E058, &qword_1B81FF9F0);
}

void sub_1B81D5780()
{
  OUTLINED_FUNCTION_38();
  v44[1] = v1;
  v48 = v2;
  v46 = sub_1B81F8768();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = v7 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E098, &qword_1B81FFA68);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v44[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E0A0, &qword_1B81FFA70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = sub_1B81F8348();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6();
  v21 = v20 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E0A8, &qword_1B81FFA78);
  OUTLINED_FUNCTION_1_0();
  v23 = v22;
  OUTLINED_FUNCTION_13();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v44 - v25;
  if (j__OUTLINED_FUNCTION_18())
  {
    sub_1B81F8ED8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E0B0, &qword_1B81FFA80);
    OUTLINED_FUNCTION_3_1();
    v30 = sub_1B81930C0(v28, &qword_1EBA7E0B0, &qword_1B81FFA80, v29);
    OUTLINED_FUNCTION_16_5();
    v33 = sub_1B81D69C0(v31, v32, MEMORY[0x1E697C1E8]);
    OUTLINED_FUNCTION_24_4();
    sub_1B81F8C18();
    (*(v17 + 8))(v21, v15);
    v34 = v45;
    (*(v23 + 16))(v0, v26, v45);
    swift_storeEnumTagMultiPayload();
    v49 = v27;
    v50 = v15;
    v51 = v30;
    v52 = v33;
    OUTLINED_FUNCTION_13_9();
    v49 = v27;
    v50 = v46;
    v51 = v30;
    v52 = MEMORY[0x1E697C750];
    OUTLINED_FUNCTION_13_9();
    sub_1B81F8718();
    (*(v23 + 8))(v26, v34);
  }

  else
  {
    sub_1B81F8758();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E0B0, &qword_1B81FFA80);
    OUTLINED_FUNCTION_3_1();
    v38 = sub_1B81930C0(v36, &qword_1EBA7E0B0, &qword_1B81FFA80, v37);
    OUTLINED_FUNCTION_39_3();
    v39 = v46;
    sub_1B81F8C28();
    (*(v4 + 8))(v8, v39);
    v40 = v47;
    (*(v10 + 16))(v0, v13, v47);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_16_5();
    v43 = sub_1B81D69C0(v41, v42, MEMORY[0x1E697C1E8]);
    v49 = v35;
    v50 = v15;
    v51 = v38;
    v52 = v43;
    OUTLINED_FUNCTION_13_9();
    v49 = v35;
    v50 = v39;
    v51 = v38;
    v52 = MEMORY[0x1E697C750];
    OUTLINED_FUNCTION_13_9();
    sub_1B81F8718();
    (*(v10 + 8))(v13, v40);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1B81D5C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1B8CBAA00](v4, a3, &type metadata for CatalystToolBarModifier);
}

uint64_t sub_1B81D5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CatalystContentBackgroundModifier(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  sub_1B81F8178();
  OUTLINED_FUNCTION_2();
  (*(v11 + 16))(v10, a1);
  MEMORY[0x1B8CBAA00](v10, a2, v6, a3);
  return sub_1B81D5FAC(v10);
}

unint64_t sub_1B81D5DC4()
{
  result = qword_1EBA7E070;
  if (!qword_1EBA7E070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E058, &qword_1B81FF9F0);
    sub_1B81D5E7C();
    sub_1B81930C0(&qword_1EDC8A948, &qword_1EBA7CBC0, &unk_1B81FF380, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E070);
  }

  return result;
}

unint64_t sub_1B81D5E7C()
{
  result = qword_1EBA7E078;
  if (!qword_1EBA7E078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E068, &qword_1B81FFA30);
    sub_1B81930C0(&unk_1EBA7E080, &qword_1EBA7E060, &qword_1B81FFA28, MEMORY[0x1E697FDF8]);
    sub_1B81930C0(&qword_1EDC8AE80, &qword_1EBA7E090, &unk_1B81FDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E078);
  }

  return result;
}

uint64_t type metadata accessor for CatalystContentBackgroundModifier(uint64_t a1)
{
  result = qword_1EBA7F220;
  if (!qword_1EBA7F220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81D5FAC(uint64_t a1)
{
  v2 = type metadata accessor for CatalystContentBackgroundModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B81D60F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1B81D6144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B81D619C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

void *sub_1B81D61E0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_57(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_57(result, a2);
    }
  }

  return result;
}

uint64_t sub_1B81D624C(uint64_t a1)
{
  result = sub_1B81F8178();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B81D62F8()
{
  result = qword_1EBA7E0C8;
  if (!qword_1EBA7E0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DF98, &qword_1B81FF968);
    sub_1B81930C0(&qword_1EBA7E0D0, &qword_1EBA7E0D8, &qword_1B81FFEC8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E0C8);
  }

  return result;
}

unint64_t sub_1B81D63B0()
{
  result = qword_1EBA7E0E0;
  if (!qword_1EBA7E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E0E8, &qword_1B81FFED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFB0, &qword_1B81FF980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFB8, &qword_1B81FF988);
    sub_1B81930C0(&qword_1EBA7DFC0, &qword_1EBA7DFB0, &qword_1B81FF980, MEMORY[0x1E697FDF8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7DFC8, &qword_1B81FF990);
    sub_1B81930C0(&qword_1EBA7DFD0, &qword_1EBA7DFC8, &qword_1B81FF990, MEMORY[0x1E697C288]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E0E0);
  }

  return result;
}

unint64_t sub_1B81D6540()
{
  result = qword_1EBA7E0F0;
  if (!qword_1EBA7E0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E0F8, &qword_1B81FFED8);
    sub_1B81D4CDC();
    sub_1B81930C0(&qword_1EBA7DFF8, &qword_1EBA7DFE8, &unk_1B81FF9A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E0F0);
  }

  return result;
}

unint64_t sub_1B81D65F8()
{
  result = qword_1EBA7E100;
  if (!qword_1EBA7E100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E108, &qword_1B81FFEE0);
    sub_1B81D5164();
    sub_1B81930C0(&qword_1EBA7E020, &qword_1EBA7E010, &qword_1B81FF9C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E100);
  }

  return result;
}

unint64_t sub_1B81D66B0()
{
  result = qword_1EBA7E110;
  if (!qword_1EBA7E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E118, &qword_1B81FFEE8);
    sub_1B81930C0(&qword_1EBA7E040, &qword_1EBA7E038, &qword_1B81FF9E0, MEMORY[0x1E697FDF8]);
    sub_1B81D5468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E110);
  }

  return result;
}

unint64_t sub_1B81D6768()
{
  result = qword_1EBA7E120;
  if (!qword_1EBA7E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E128, &qword_1B81FFEF0);
    sub_1B81D5DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E120);
  }

  return result;
}

unint64_t sub_1B81D67EC()
{
  result = qword_1EBA7E130;
  if (!qword_1EBA7E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E138, &qword_1B81FFEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E0B0, &qword_1B81FFA80);
    sub_1B81F8348();
    sub_1B81930C0(&qword_1EBA7E0B8, &qword_1EBA7E0B0, &qword_1B81FFA80, MEMORY[0x1E697FDF8]);
    sub_1B81D69C0(&qword_1EBA7E0C0, MEMORY[0x1E697C1F0], MEMORY[0x1E697C1E8]);
    swift_getOpaqueTypeConformance2();
    sub_1B81F8768();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E130);
  }

  return result;
}

unint64_t sub_1B81D696C()
{
  result = qword_1EBA7E140;
  if (!qword_1EBA7E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E140);
  }

  return result;
}

uint64_t sub_1B81D69C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B81D6A08()
{
  result = qword_1EBA7E150;
  if (!qword_1EBA7E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E150);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx015CoreSuggestionsB023TopImagePaddingModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1B81F8308();
  a3();
  OUTLINED_FUNCTION_9_4();
  return swift_getWitnessTable();
}

id sub_1B81D6B08(id result, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    return result;
  }

  return result;
}

void sub_1B81D6B20(id a1, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
  }
}

uint64_t sub_1B81D6B38()
{
  result = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x1D0))();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v5[4] = sub_1B8192BC0;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B81889F4;
    v5[3] = &block_descriptor_6;
    v4 = _Block_copy(v5);
    swift_unknownObjectRetain();

    dispatchInContext(1, v4);
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B81D6C58()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x1B8))();
  sub_1B8188DE0();
  v1 = sub_1B81F8AF8();
  return OUTLINED_FUNCTION_121_0(v1, v2, v3, v4);
}

uint64_t sub_1B81D6CE0()
{
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  return v0;
}

uint64_t sub_1B81D6D38()
{
  sub_1B8188DE0();

  v0 = sub_1B81F8AF8();
  return OUTLINED_FUNCTION_121_0(v0, v1, v2, v3);
}

uint64_t sub_1B81D6D98()
{
  OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_16_0();
  v4(v3);
  return v0;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1B81D6E08(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1B81D6E18(a1, a2, a3, a4);
  }

  return result;
}

double sub_1B81D6E18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8192C18(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B81D6E5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_1B81D6E6C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1B81D6E6C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B8190C24(result, a2, a3 & 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return sub_1B81D6CE0();
}

uint64_t sub_1B81D7080(uint64_t a1)
{
  OUTLINED_FUNCTION_3_2(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B81D70D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_1B81D712C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x98);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1B81D7190(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_suggestionDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1B8194D4C;
}

uint64_t sub_1B81D7214(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_state;
  OUTLINED_FUNCTION_2_1(a1);
  return *(v1 + v2);
}

uint64_t sub_1B81D7248(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_state;
  result = OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1B81D72D4()
{
  v1 = (v0 + OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_identifier);
  OUTLINED_FUNCTION_4_7();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B81D7328(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double sub_1B81D73D4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_1(a1);

  return result;
}

uint64_t sub_1B81D740C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passDictionary;
  OUTLINED_FUNCTION_3_2(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1B81D74A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_logger;
  OUTLINED_FUNCTION_4_7();
  swift_beginAccess();
  sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t sub_1B81D751C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_logger;
  swift_beginAccess();
  sub_1B81F8058();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

id sub_1B81D75F0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_realtime;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1B81D7634(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_realtime;
  OUTLINED_FUNCTION_3_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B81D76C8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passViewManager;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1B81D770C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passViewManager;
  OUTLINED_FUNCTION_3_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SGWalletPassSuggestion.__allocating_init(realtimeWalletPass:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_12();
  return SGWalletPassSuggestion.init(realtimeWalletPass:)(v2);
}

id SGWalletPassSuggestion.init(realtimeWalletPass:)(void *a1)
{
  v2 = v1;
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passDictionary;
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passDictionary] = 0;
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_realtime] = a1;
  v13 = a1;
  v14 = [v13 state];
  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_state] = v14;
  v15 = [v13 identifier];
  v16 = sub_1B81F8F98();
  v18 = v17;

  v19 = &v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_identifier];
  *v19 = v16;
  v19[1] = v18;
  sub_1B8186FE0();

  sub_1B81F8038();
  v20 = OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_logger;
  v58 = v6;
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_logger], v11, v4);
  v21 = objc_opt_self();
  v22 = [v13 walletPassDictionaryData];
  v23 = sub_1B81F79F8();
  v25 = v24;

  v26 = sub_1B81F79E8();
  sub_1B81B85E4(v23, v25);
  v60[0] = 0;
  v27 = [v21 JSONObjectWithData:v26 options:0 error:v60];

  if (v27)
  {
    v28 = v60[0];
    sub_1B81F9228();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D880, &unk_1B81FE8F0);
    if (swift_dynamicCast())
    {
      v29 = v61[0];
      swift_beginAccess();
      *&v2[v12] = v29;
    }
  }

  else
  {
    v30 = v60[0];
    v31 = sub_1B81F7988();

    swift_willThrow();
    OUTLINED_FUNCTION_4_7();
    swift_beginAccess();
    (*(v58 + 16))(v57, &v2[v20], v4);
    v32 = v31;
    v33 = sub_1B81F8028();
    v34 = sub_1B81F9188();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61[0] = v56;
      *v35 = 136315394;
      type metadata accessor for SGWalletPassSuggestion(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v37 = NSStringFromClass(ObjCClassFromMetadata);
      v38 = sub_1B81F8F98();
      v40 = v39;

      v41 = sub_1B81B7ED8(v38, v40, v61);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      v42 = v31;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v43;
      v44 = v55;
      *v55 = v43;
      _os_log_impl(&dword_1B8182000, v33, v34, "%s - Encountered Error while resolving passDictionary: %@", v35, 0x16u);
      sub_1B8192D84(v44, &unk_1EBA7D190, &unk_1B81FFFD0);
      OUTLINED_FUNCTION_5_1();
      __swift_destroy_boxed_opaque_existential_0(v56);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_5_1();
    }

    else
    {
    }

    (*(v58 + 8))(v57, v4);
  }

  sub_1B8189AF0(0, &unk_1EBA7E220, &off_1E7CD82A0);
  v45 = [v13 walletPassData];
  v46 = sub_1B81F79F8();
  v48 = v47;

  *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_passViewManager] = sub_1B81D7D58(v46, v48);
  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  v2[OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_bannerForVisionDevice] = v50 == 6;
  v51 = type metadata accessor for SGWalletPassSuggestion(0);
  v59.receiver = v2;
  v59.super_class = v51;
  v52 = objc_msgSendSuper2(&v59, sel_init);

  return v52;
}

id sub_1B81D7D58(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B81F79E8();
  v6 = [v4 initWithData_];

  sub_1B81B85E4(a1, a2);
  return v6;
}

uint64_t sub_1B81D7E30()
{
  if (currentUIContext())
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
    OUTLINED_FUNCTION_7_4();
  }

  else
  {
    switch((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
    {
      case 1u:
      case 3u:
        v1 = 0x80000001B8202BB0;
        v2 = 0xD000000000000025;
        goto LABEL_8;
      case 2u:
        v3 = "v36@0:8B16@20@?28";
        v2 = 0xD000000000000027;
        goto LABEL_7;
      case 4u:
        v3 = "rUpdatedWalletPassTitle";
        v2 = 0xD000000000000028;
LABEL_7:
        v1 = v3 | 0x8000000000000000;
LABEL_8:
        sub_1B81871D4(v2, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1B81FD1B0;
        v5 = MEMORY[0x1E69E65A8];
        *(v4 + 56) = MEMORY[0x1E69E6530];
        *(v4 + 64) = v5;
        *(v4 + 32) = 1;
        sub_1B81F8F68();
        OUTLINED_FUNCTION_7_4();

        break;
      default:
        return OUTLINED_FUNCTION_16_0();
    }
  }

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81D8034()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_9_5();
  result = (*(v2 + 216))();
  if (result)
  {
    sub_1B81B6B34(result, &v22, 0x7470697263736564, 0xEB000000006E6F69);
    if (v23)
    {
      if (swift_dynamicCast())
      {
        v4 = *((*v1 & *v0) + 0x120);
        v5 = v4();
        v6 = [v5 passStyle];

        v7 = sub_1B81F8F98();
        v9 = v8;

        *&v22 = v7;
        *(&v22 + 1) = v9;

        MEMORY[0x1B8CBAE10](8250, 0xE200000000000000);

        MEMORY[0x1B8CBAE10]();

        v11 = v22;
        v12 = (v4)(v10);
        [v12 passTimeInterval];
        v14 = v13;

        v15 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
        v22 = v11;

        MEMORY[0x1B8CBAE10](10, 0xE100000000000000);
        v16 = v22;
        result = [objc_opt_self() fullDayFormatter];
        if (result)
        {
          v17 = result;

          v18 = [v17 stringFromDate_];

          v19 = sub_1B81F8F98();
          v21 = v20;

          v22 = v16;

          MEMORY[0x1B8CBAE10](v19, v21);

          return v22;
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else
    {

      sub_1B8192D84(&v22, &qword_1EBA7DBF0, &unk_1B81FEF78);
    }

    return 0;
  }

  return result;
}

id sub_1B81D8394()
{
  sub_1B8189AF0(0, &unk_1EBA7D8C0, off_1E7CD8260);
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  return sub_1B81A5204(v1, v3, sub_1B81D9B9C, v4);
}

void sub_1B81D8474(void *a1)
{
  v2 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF0))(v6);
  v9 = sub_1B81F8028();
  v10 = sub_1B81F9178();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v2;
    v34 = v12;
    v13 = v12;
    *v11 = 136315138;
    type metadata accessor for SGWalletPassSuggestion(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = NSStringFromClass(ObjCClassFromMetadata);
    v16 = sub_1B81F8F98();
    v18 = v17;

    v19 = sub_1B81B7ED8(v16, v18, &v34);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_1B8182000, v9, v10, "%s - SGWalletPassSuggestion primary action initiated", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();

    (*(v4 + 8))(v8, v33);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_0_5();
  v21 = (*(v20 + 168))();
  if ((v21 - 1) < 2)
  {
    OUTLINED_FUNCTION_0_5();
    v23 = (*(v22 + 144))();
    if (!v23)
    {
      return;
    }

    v24 = v23;
    OUTLINED_FUNCTION_0_5();
    v26 = (*(v25 + 288))();
    v27 = [v26 addPassViewController];

    if (!v27)
    {
      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_11;
  }

  if (v21 == 3)
  {
    OUTLINED_FUNCTION_0_5();
    v29 = (*(v28 + 144))();
    if (v29)
    {
      v24 = v29;
      OUTLINED_FUNCTION_0_5();
      (*(v30 + 288))();
      v31 = objc_allocWithZone(type metadata accessor for PKViewPassController());
      v32 = OUTLINED_FUNCTION_12();
      v27 = sub_1B81D91DC(v32);
LABEL_11:
      [v24 presentViewController_];
      swift_unknownObjectRelease();
    }
  }
}

id sub_1B81D87C8()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_12();
  return sub_1B81D91DC(v2);
}

uint64_t sub_1B81D883C()
{
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI22SGWalletPassSuggestion_bannerForVisionDevice))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

id sub_1B81D8894()
{
  OUTLINED_FUNCTION_9_5();
  v1 = (*(v0 + 288))();
  v2 = [v1 icon];

  if (v2)
  {
    return v2;
  }

  OUTLINED_FUNCTION_9_5();
  v5 = *(v4 + 432);

  return v5();
}

id sub_1B81D89D0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B81F8F58();

  return v5;
}

uint64_t sub_1B81D8A58(unint64_t a1)
{
  OUTLINED_FUNCTION_14_4("SuggestionsBannerMixedSubtitleWalletPasses");
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
  *(swift_allocObject() + 16) = xmmword_1B81FD1B0;
  v2 = sub_1B8189548(a1);
  OUTLINED_FUNCTION_17_5(v2, MEMORY[0x1E69E6530]);
  OUTLINED_FUNCTION_7_4();

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81D8BB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0, &unk_1B81FD110);
  v6 = sub_1B81F90C8();
  v7 = a1;
  a4(v6);

  v8 = sub_1B81F8F58();

  return v8;
}

uint64_t sub_1B81D8CE0()
{
  v1 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = currentUIContext();
  v8 = MEMORY[0x1E69E7D40];
  switch((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    case 0u:
      (*((*v8 & *v0) + 0xF0))();
      v9 = sub_1B81F8028();
      v10 = sub_1B81F9188();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1B8182000, v9, v10, "Error: Encountered Wallet Pass with Unknown state", v11, 2u);
        OUTLINED_FUNCTION_5_1();
      }

      (*(v3 + 8))(v6, v1);
      return OUTLINED_FUNCTION_16_0();
    case 1u:
      OUTLINED_FUNCTION_13_3();
      v20 = v23 - 3;
      v21 = v23 + 7;
      v14 = "uttonAddToReminders";
      v22 = "SuggestionsListButtonAddToWalletPass";
      goto LABEL_12;
    case 2u:
      OUTLINED_FUNCTION_13_3();
      v13 = v12 + 8;
      v14 = "uttonUpdateWalletOrder";
      v15 = "SuggestionsListButtonUpdateWalletPass";
      goto LABEL_7;
    case 3u:
      OUTLINED_FUNCTION_13_3();
      v20 = v19 - 2;
      v21 = v19 + 11;
      v14 = "uttonDuplicateWalletOrder";
      v22 = "SuggestionsListButtonDuplicateWalletPass";
LABEL_12:
      v16 = v22 - 32;
      v17 = v7 == 0;
      if (v7)
      {
        v18 = v21;
      }

      else
      {
        v18 = v20;
      }

      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_13_3();
      v13 = v12 + 8;
      v14 = "uttonRemoveWalletOrder";
      v15 = "SuggestionsListButtonRemoveWalletPass";
LABEL_7:
      v16 = v15 - 32;
      v17 = v7 == 0;
      if (v7)
      {
        v18 = v13;
      }

      else
      {
        v18 = v12;
      }

LABEL_15:
      if (v17)
      {
        v24 = v14;
      }

      else
      {
        v24 = v16;
      }

      sub_1B81871D4(v18, v24 | 0x8000000000000000);
      OUTLINED_FUNCTION_7_4();

      break;
    default:
      return OUTLINED_FUNCTION_16_0();
  }

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81D8F58()
{
  v0 = [objc_opt_self() spotlightIconImageWithBundleIdentifier_];

  return v0;
}

id SGWalletPassSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B81D9104(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC17CoreSuggestionsUI20PKViewPassController_passViewManager;
  OUTLINED_FUNCTION_2_1(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1B81D9148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI20PKViewPassController_passViewManager;
  OUTLINED_FUNCTION_3_2(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1B81D91DC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI20PKViewPassController_passViewManager) = a1;
  v5 = type metadata accessor for PKViewPassController();
  OUTLINED_FUNCTION_4_7();
  return objc_msgSendSuper2(v2, v3, v1, v5);
}

void sub_1B81D928C()
{
  v1 = type metadata accessor for PKViewPassController();
  v53.receiver = v0;
  v53.super_class = v1;
  v2 = objc_msgSendSuper2(&v53, sel_viewDidLoad);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = (v3)(v2);
  v5 = [v4 title];

  v6 = sub_1B81F8F98();
  v8 = v7;

  sub_1B81C1020(v6, v8, v0);
  v9 = sub_1B81871D4(0xD000000000000021, 0x80000001B8201F60);
  v11 = v10;
  v52[3] = v1;
  v52[0] = v0;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v12 = v0;
  v13 = sub_1B81C0E2C(v9, v11, 2, v52, sel_dismissalPressed_);
  v14 = [v12 navigationItem];
  [v14 setRightBarButtonItem_];

  v15 = [v12 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setShadowImage_];
  }

  v52[0] = v3();
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E238, &unk_1B81FFFE0));
  v19 = sub_1B81F8618();
  [v12 addChildViewController_];
  v20 = OUTLINED_FUNCTION_16_6();
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  v22 = OUTLINED_FUNCTION_33_1();
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = OUTLINED_FUNCTION_16_6();

  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v23 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B81FEAB0;
  v26 = OUTLINED_FUNCTION_16_6();

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = [v26 leadingAnchor];

  v28 = OUTLINED_FUNCTION_33_1();
  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = OUTLINED_FUNCTION_30_0();
  *(v25 + 32) = v31;
  v32 = OUTLINED_FUNCTION_16_6();

  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = [v32 trailingAnchor];

  v34 = OUTLINED_FUNCTION_33_1();
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = OUTLINED_FUNCTION_30_0();
  *(v25 + 40) = v37;
  v38 = OUTLINED_FUNCTION_16_6();

  if (!v38)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = [v38 topAnchor];

  v40 = OUTLINED_FUNCTION_33_1();
  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = OUTLINED_FUNCTION_30_0();
  *(v25 + 48) = v43;
  v44 = OUTLINED_FUNCTION_16_6();

  if (!v44)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45 = [v44 bottomAnchor];

  v46 = OUTLINED_FUNCTION_33_1();
  if (v46)
  {
    v47 = v46;
    v48 = objc_opt_self();
    v49 = [v47 bottomAnchor];

    v50 = [v45 constraintEqualToAnchor_];
    *(v25 + 56) = v50;
    sub_1B8189AF0(0, &qword_1EDC8AF38, 0x1E696ACD8);
    v51 = sub_1B81F90A8();

    [v48 activateConstraints_];

    [v19 didMoveToParentViewController_];
    return;
  }

LABEL_25:
  __break(1u);
}

id sub_1B81D997C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1B81D99C4(int a1, id a2)
{
  result = [a2 passView];
  if (!result)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);

    return [v3 init];
  }

  return result;
}

uint64_t sub_1B81D9A28()
{
  OUTLINED_FUNCTION_21_2();
  v0 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1B81D9A6C()
{
  OUTLINED_FUNCTION_21_2();
  v0 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1B81D9AB0(uint64_t a1)
{
  sub_1B81DA248();
  sub_1B81F86D8();
  __break(1u);
}

id PKPassHostingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *a1 = sub_1B81F8528();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v4;

  return v4;
}

uint64_t type metadata accessor for SGWalletPassSuggestion(uint64_t a1)
{
  result = qword_1EBA7F3D0;
  if (!qword_1EBA7F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B81D9BCC()
{
  result = qword_1EBA7E240;
  if (!qword_1EBA7E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E240);
  }

  return result;
}

uint64_t sub_1B81D9C44(uint64_t a1)
{
  result = sub_1B81F8058();
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

uint64_t sub_1B81DA108(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B81DA148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B81DA194()
{
  result = qword_1EBA7E248;
  if (!qword_1EBA7E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E250, &qword_1B8200238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E248);
  }

  return result;
}

void type metadata accessor for SGRealtimeWalletPassState()
{
  if (!qword_1EBA7E258)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBA7E258);
    }
  }
}

unint64_t sub_1B81DA248()
{
  result = qword_1EBA7E268;
  if (!qword_1EBA7E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E268);
  }

  return result;
}

id OUTLINED_FUNCTION_16_6()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_17_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[4] = a1;

  return sub_1B81F8F68();
}

unint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_1B81DA248();
}

uint64_t sub_1B81DA330()
{
  v0 = sub_1B81F8058();
  __swift_allocate_value_buffer(v0, qword_1EBA7F5F8);
  __swift_project_value_buffer(v0, qword_1EBA7F5F8);
  sub_1B8186FE0();

  return sub_1B81F8038();
}

uint64_t sub_1B81DA3B0()
{
  if (qword_1EBA7F3E0 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1EBA7F3E0);
  }

  v0 = sub_1B81F8058();

  return __swift_project_value_buffer(v0, qword_1EBA7F5F8);
}

uint64_t sub_1B81DA404@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E270, &unk_1B8200260);
  v12 = OUTLINED_FUNCTION_21(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  sub_1B81DA904(v2, MEMORY[0x1E69D9F08], MEMORY[0x1E69D9F40], MEMORY[0x1E69D9F10], MEMORY[0x1E69D9F18], 40, &v26[-v13]);
  v15 = sub_1B81F7AB8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B81C7CD0(v14, &unk_1EBA7E270, &unk_1B8200260);
    if (qword_1EBA7F3E0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EBA7F3E0);
    }

    v16 = __swift_project_value_buffer(v4, qword_1EBA7F5F8);
    OUTLINED_FUNCTION_18_6(v16);
    v17 = OUTLINED_FUNCTION_12_9();
    v18(v17);
    v19 = sub_1B81F8028();
    v20 = sub_1B81F9188();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      OUTLINED_FUNCTION_19_3(&dword_1B8182000, v22, v23, "TextUnderstandingEvent: failed to detect startTimeZone");
      MEMORY[0x1B8CBBAE0](v21, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    return sub_1B81F7AA8();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();
    return (*(v25 + 32))(a1, v14, v15);
  }
}

uint64_t sub_1B81DA684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E270, &unk_1B8200260);
  v12 = OUTLINED_FUNCTION_21(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  sub_1B81DA904(v2, MEMORY[0x1E69D9F00], MEMORY[0x1E69D9F38], MEMORY[0x1E69D9F18], MEMORY[0x1E69D9F10], 75, &v26[-v13]);
  v15 = sub_1B81F7AB8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1B81C7CD0(v14, &unk_1EBA7E270, &unk_1B8200260);
    if (qword_1EBA7F3E0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1EBA7F3E0);
    }

    v16 = __swift_project_value_buffer(v4, qword_1EBA7F5F8);
    OUTLINED_FUNCTION_18_6(v16);
    v17 = OUTLINED_FUNCTION_12_9();
    v18(v17);
    v19 = sub_1B81F8028();
    v20 = sub_1B81F9188();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      OUTLINED_FUNCTION_19_3(&dword_1B8182000, v22, v23, "TextUnderstandingEvent: failed to detect endTimeZone");
      MEMORY[0x1B8CBBAE0](v21, -1, -1);
    }

    (*(v6 + 8))(v10, v4);
    return sub_1B81F7AA8();
  }

  else
  {
    OUTLINED_FUNCTION_15_4();
    return (*(v25 + 32))(a1, v14, v15);
  }
}

uint64_t sub_1B81DA904@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v146[2] = a6;
  v160 = a5;
  v166 = a4;
  v175 = a3;
  v181 = a2;
  v182 = a7;
  v152 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v151 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v10);
  v149 = sub_1B81F7CB8();
  OUTLINED_FUNCTION_1_0();
  v148 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v13);
  v156 = sub_1B81F7BC8();
  OUTLINED_FUNCTION_1_0();
  v155 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v16);
  v159 = sub_1B81F7C68();
  OUTLINED_FUNCTION_1_0();
  v158 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_4();
  v157 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E270, &unk_1B8200260);
  v21 = OUTLINED_FUNCTION_21(v20);
  MEMORY[0x1EEE9AC00](v21);
  v167 = v146 - v22;
  OUTLINED_FUNCTION_37_0();
  v165 = sub_1B81F7C28();
  OUTLINED_FUNCTION_1_0();
  v164 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_22_1(v25);
  sub_1B81F7BA8();
  OUTLINED_FUNCTION_1_0();
  v169 = v27;
  v170 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_4();
  v168 = v28;
  OUTLINED_FUNCTION_37_0();
  sub_1B81F7D48();
  OUTLINED_FUNCTION_1_0();
  v173 = v30;
  v174 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_4();
  v172 = v31;
  OUTLINED_FUNCTION_37_0();
  sub_1B81F7D88();
  OUTLINED_FUNCTION_1_0();
  v177 = v33;
  v178 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_4();
  v176 = v34;
  OUTLINED_FUNCTION_37_0();
  sub_1B81F7CF8();
  OUTLINED_FUNCTION_1_0();
  v179 = v36;
  v180 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  v39 = v38 - v37;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DC70, &qword_1B81FF090);
  v41 = OUTLINED_FUNCTION_21(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_40_0();
  v171 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v146 - v48;
  v50 = sub_1B81F7BF8();
  OUTLINED_FUNCTION_1_0();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6();
  v56 = v55 - v54;
  v57 = sub_1B81F7DF8();
  OUTLINED_FUNCTION_1_0();
  v59 = v58;
  v61 = MEMORY[0x1EEE9AC00](v60);
  MEMORY[0x1EEE9AC00](v61);
  v63 = v146 - v62;
  v146[1] = a1;
  sub_1B81F7E08();
  v64 = (*(v59 + 88))(v63, v57);
  if (v64 == *MEMORY[0x1E69D9FE0])
  {
    v65 = OUTLINED_FUNCTION_4_8();
    v66(v65);
    v67 = (*(v52 + 32))(v56, v63, v50);
    v181(v67);
    v68 = sub_1B81F7FC8();
    OUTLINED_FUNCTION_11_9(v49);
    if (!v69)
    {
      sub_1B81F7FB8();
      (*(v52 + 8))(v56, v50);
      OUTLINED_FUNCTION_5_6();
      return (*(v80 + 8))(v49, v68);
    }

    (*(v52 + 8))(v56, v50);
    v70 = v49;
    goto LABEL_5;
  }

  if (v64 == *MEMORY[0x1E69D9FB8])
  {
    v75 = OUTLINED_FUNCTION_4_8();
    v76(v75);
    v78 = v179;
    v77 = v180;
    OUTLINED_FUNCTION_14_9();
    v79(v39, v63, v77);
    sub_1B81F7CC8();
    return (*(v78 + 8))(v39, v77);
  }

  if (v64 == *MEMORY[0x1E69D9FC8])
  {
    v82 = OUTLINED_FUNCTION_4_8();
    v83(v82);
    v84 = v176;
    v85 = v177;
    v86 = OUTLINED_FUNCTION_15_7();
    v87 = v178;
    v88(v86);
    sub_1B81F7D68();
    return (*(v85 + 8))(v84, v87);
  }

  if (v64 == *MEMORY[0x1E69D9FC0])
  {
    v89 = OUTLINED_FUNCTION_4_8();
    v90(v89);
    v92 = v172;
    v91 = v173;
    OUTLINED_FUNCTION_14_9();
    v93 = v174;
    v95 = v94(v92, v63, v174);
    v96 = v171;
    v175(v95);
  }

  else
  {
    if (v64 == *MEMORY[0x1E69D9FD0])
    {
      v98 = OUTLINED_FUNCTION_4_8();
      v99(v98);
      v84 = v168;
      v85 = v169;
      v100 = OUTLINED_FUNCTION_15_7();
      v87 = v170;
      v101(v100);
      sub_1B81F7B58();
      return (*(v85 + 8))(v84, v87);
    }

    if (v64 == *MEMORY[0x1E69D9FE8])
    {
      v103 = OUTLINED_FUNCTION_4_8();
      v104(v103);
      v105 = (*(v164 + 32))(v163, v63, v165);
      v106 = v161;
      v166(v105);
      v107 = sub_1B81F7FC8();
      OUTLINED_FUNCTION_11_9(v106);
      if (v69)
      {
        sub_1B81C7CD0(v106, &qword_1EBA7DC70, &qword_1B81FF090);
        v108 = sub_1B81F7AB8();
        v112 = v167;
        EnumTagSinglePayload = __swift_storeEnumTagSinglePayload(v167, 1, 1, v108);
        v109 = v162;
      }

      else
      {
        v112 = v167;
        sub_1B81F7FB8();
        OUTLINED_FUNCTION_5_6();
        (*(v113 + 8))(v106, v107);
        v114 = sub_1B81F7AB8();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, 1, v114);
        v109 = v162;
        if (EnumTagSinglePayload != 1)
        {
          v129 = OUTLINED_FUNCTION_9_6();
          v130(v129);
          OUTLINED_FUNCTION_15_4();
          v132 = v182;
          (*(v131 + 32))(v182, v112, v114);
          v71 = v132;
          v72 = 0;
          v73 = 1;
          v74 = v114;
          return __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
        }
      }

      v160(EnumTagSinglePayload);
      OUTLINED_FUNCTION_11_9(v109);
      if (v69)
      {
        v116 = OUTLINED_FUNCTION_9_6();
        v117(v116);
        sub_1B81C7CD0(v109, &qword_1EBA7DC70, &qword_1B81FF090);
        sub_1B81F7AB8();
        v118 = OUTLINED_FUNCTION_17_6();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
      }

      else
      {
        sub_1B81F7FB8();
        v125 = OUTLINED_FUNCTION_9_6();
        v126(v125);
        OUTLINED_FUNCTION_5_6();
        (*(v127 + 8))(v109, v107);
      }

      v128 = sub_1B81F7AB8();
      result = __swift_getEnumTagSinglePayload(v112, 1, v128);
      if (result != 1)
      {
        return sub_1B81C7CD0(v112, &unk_1EBA7E270, &unk_1B8200260);
      }

      return result;
    }

    if (v64 == *MEMORY[0x1E69D9FA8])
    {
      v110 = OUTLINED_FUNCTION_4_8();
      v111(v110);
      v85 = v158;
      v84 = v157;
      v87 = v159;
      (*(v158 + 32))(v157, v63, v159);
      sub_1B81F7C38();
      return (*(v85 + 8))(v84, v87);
    }

    if (v64 == *MEMORY[0x1E69D9FD8])
    {
      v122 = OUTLINED_FUNCTION_4_8();
      v123(v122);
      v91 = v155;
      OUTLINED_FUNCTION_14_9();
      v92 = v154;
      v93 = v156;
      v124(v154, v63, v156);
      v96 = v153;
      sub_1B81F7BB8();
    }

    else
    {
      if (v64 == *MEMORY[0x1E69D9FA0])
      {
        if (qword_1EBA7F3E0 != -1)
        {
          OUTLINED_FUNCTION_0_6(&qword_1EBA7F3E0);
        }

        v133 = v152;
        v134 = __swift_project_value_buffer(v152, qword_1EBA7F5F8);
        swift_beginAccess();
        (*(v151 + 16))(v150, v134, v133);
        v135 = sub_1B81F8028();
        v136 = sub_1B81F9188();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_1B8182000, v135, v136, "Generic event is not supported", v137, 2u);
          MEMORY[0x1B8CBBAE0](v137, -1, -1);
        }

        v138 = OUTLINED_FUNCTION_9_6();
        v139(v138);
        v140 = v182;
        sub_1B81F7AA8();
        v141 = sub_1B81F7AB8();
        __swift_storeEnumTagSinglePayload(v140, 0, 1, v141);
        return (*(v59 + 8))(v63, v57);
      }

      if (v64 != *MEMORY[0x1E69D9FB0])
      {
        v183 = 0;
        v184 = 0xE000000000000000;
        sub_1B81F9298();

        v183 = 0xD00000000000001BLL;
        v184 = 0x80000001B8202300;
        sub_1B81F7E08();
        v145 = sub_1B81F8FA8();
        MEMORY[0x1B8CBAE10](v145);

        result = sub_1B81F9328();
        __break(1u);
        return result;
      }

      v142 = OUTLINED_FUNCTION_4_8();
      v143(v142);
      v91 = v148;
      OUTLINED_FUNCTION_14_9();
      v92 = v147;
      v93 = v149;
      v144(v147, v63, v149);
      v96 = v146[3];
      sub_1B81F7CA8();
    }
  }

  v97 = sub_1B81F7FC8();
  OUTLINED_FUNCTION_11_9(v96);
  if (v69)
  {
    (*(v91 + 8))(v92, v93);
    v70 = v96;
LABEL_5:
    sub_1B81C7CD0(v70, &qword_1EBA7DC70, &qword_1B81FF090);
    sub_1B81F7AB8();
    v71 = OUTLINED_FUNCTION_17_6();
    return __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  }

  sub_1B81F7FB8();
  (*(v91 + 8))(v92, v93);
  OUTLINED_FUNCTION_5_6();
  return (*(v102 + 8))(v96, v97);
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B81DB8E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_banner;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_banner, a1);
  sub_1B81F77D8();
  OUTLINED_FUNCTION_2();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_1B81DB958(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_banner;
  swift_beginAccess();
  sub_1B81F77D8();
  OUTLINED_FUNCTION_2();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B81DBA58(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_extractionSource;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_extractionSource, a2);
  return *(v2 + v3);
}

uint64_t sub_1B81DBAB8(int a1)
{
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_extractionSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B81DBB08@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

id SGRealtimeWalletOrderExtraction.init(banner:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_extractionSource] = 3;
  v3 = OBJC_IVAR____TtC17CoreSuggestionsUI31SGRealtimeWalletOrderExtraction_banner;
  v4 = sub_1B81F77D8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SGRealtimeWalletOrderExtraction(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for SGRealtimeWalletOrderExtraction(uint64_t a1)
{
  result = qword_1EBA7F3E8;
  if (!qword_1EBA7F3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81DBD70()
{
  v1 = sub_1B81F77D8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(v5);
  v8 = sub_1B81F77C8();
  (*(v3 + 8))(v7, v1);
  return v8;
}

uint64_t sub_1B81DBE64()
{
  v1 = sub_1B81F77D8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x60))();
  sub_1B81F77B8();
  return (*(v3 + 8))(v0, v1);
}

uint64_t sub_1B81DBFAC(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1B81F77D8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v8 = (*((*MEMORY[0x1E69E7D40] & v7) + 0x60))();
  v9 = a1(v8);
  (*(v5 + 8))(v1, v3);
  return v9;
}

id SGRealtimeWalletOrderExtraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGRealtimeWalletOrderExtraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SGRealtimeWalletOrderExtraction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B81DC1BC(uint64_t a1)
{
  result = sub_1B81F77D8();
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

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_1B81DC490(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SGBannerPaddingParams(0);
  v5 = *(v4 + 84);
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  v8 = [v7 userInterfaceIdiom];

  *(a2 + v5) = v8;
  v9 = *(v4 + 88);
  v10 = [v6 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  *(a2 + v9) = v11 == 6;
  sub_1B8186FE0();

  sub_1B8186FEC();

  sub_1B81F8038();
  v69 = a1;
  v12 = sub_1B81F8028();
  v13 = sub_1B81F91A8();

  v14 = os_log_type_enabled(v12, v13);
  v15 = MEMORY[0x1E69E7D40];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v70 = v17;
    *v16 = 136315138;
    (*((*v15 & *v69) + 0x230))();
    v18 = sub_1B8188C88();
    v20 = sub_1B81B7ED8(v18, v19, &v70);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1B8182000, v12, v13, "SGBannerPaddingParams: Action Button: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_7();
  v21 += 70;
  v22 = *v21;
  switch((*v21)())
  {
    case 0:
    case 5:
      v23 = sub_1B8186CE0();
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 104) = xmmword_1B82002B0;
      *(a2 + 120) = 0x4028000000000000;
      if (sub_1B81F8E98())
      {
        *a2 = xmmword_1B82002C0;
        *(a2 + 16) = 0x4010000000000000;
        OUTLINED_FUNCTION_0_7();
        v25 = (*(v24 + 416))();
        if (v25 && (v26 = sub_1B8189548(v25), , v26) || (OUTLINED_FUNCTION_0_7(), v28 = (*(v27 + 584))(), v29 = 22.0, v28) && (v30 = sub_1B8189548(v28), , v30))
        {
          v29 = 6.0;
        }

        *(a2 + 32) = v29;
        *(a2 + 24) = 0x4022000000000000;
        *(a2 + 48) = xmmword_1B82002D0;
        v31 = 9.0;
        v32 = 12.0;
      }

      else
      {
        v33 = sub_1B8186CC8();
        *a2 = *v23;
        v34 = sub_1B8186CF8();
        v31 = *v34;
        *(a2 + 24) = *v34;
        *(a2 + 32) = *v33;
        *(a2 + 48) = v31;
        *(a2 + 56) = 0x4044000000000000;
        v35 = (*((*v15 & *v69) + 0x308))();
        if (v35 <= 0.0)
        {
          v35 = 0.0;
        }

        v32 = *v23 + v35;
      }

      *(a2 + 80) = v32;
      if (v22() == 5)
      {
        v36 = *sub_1B8186E18();
        v37 = 10.0;
        v38 = v36;
      }

      else
      {
        v38 = 0.0;
        v36 = 10.0;
        v37 = 0.0;
      }

      *(a2 + 96) = v36;
      *(a2 + 64) = v36;
      *(a2 + 72) = v38;
      *(a2 + 40) = v37;
      *(a2 + 88) = 0;
      v39 = (*((*v15 & *v69) + 0x158))();
      v41 = sub_1B81DCCE4(v39, v40, 1u);

      if (v41)
      {
      }

      else
      {
        *(a2 + 24) = v31 + *sub_1B8186D04();
        v42 = *sub_1B8186D10();

        *(a2 + 48) = v31 + v42;
      }

      return;
    case 1:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v48 = sub_1B8186CF8();
      *(a2 + 24) = *v48;
      v49 = sub_1B8186E24();
      OUTLINED_FUNCTION_8_5(v49);
      *(a2 + 48) = *v48;
      *(a2 + 40) = *sub_1B8186E30();
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0u;
      *(a2 + 88) = 0u;
      v50 = *((*v15 & *v69) + 0x308);
      if (v50() > 0.0)
      {
        v51 = v50();
        v52 = *sub_1B8186CE0();

        v47 = v51 + v52;
        goto LABEL_34;
      }

      v47 = *sub_1B8186CE0();
      goto LABEL_33;
    case 2:
      v43 = sub_1B8186E3C();
      *a2 = *v43;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v44 = sub_1B8186CF8();
      *(a2 + 24) = *v44;
      v45 = sub_1B8186E48();
      OUTLINED_FUNCTION_8_5(v45);
      *(a2 + 48) = *v44;
      *(a2 + 64) = *sub_1B8186E54();
      v46 = sub_1B8186E60();
      OUTLINED_FUNCTION_2_9(v46);
      *(a2 + 88) = 0;
      *(a2 + 40) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0;
      v47 = *v43;
LABEL_33:

LABEL_34:
      *(a2 + 80) = v47;
      goto LABEL_35;
    case 3:
      *a2 = *sub_1B8186E84();
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v56 = sub_1B8186EB4();
      v57 = *v56;
      *(a2 + 24) = *v56;
      v58 = sub_1B8186E90();
      OUTLINED_FUNCTION_8_5(v58);
      v59 = *v56;
      *(a2 + 48) = *v56;
      *(a2 + 64) = *sub_1B8186E9C();
      v60 = sub_1B8186EA8();
      OUTLINED_FUNCTION_2_9(v60);
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0;
      *(a2 + 88) = *sub_1B8186E78();
      *(a2 + 40) = 0;
      v61 = *((*v15 & *v69) + 0x308);
      v62 = v61();
      v63 = 0.0;
      if (v62 > 0.0)
      {
        v63 = (v61)(0.0);
      }

      *(a2 + 80) = v63;
      OUTLINED_FUNCTION_0_7();
      v65 = (*(v64 + 344))();
      v67 = sub_1B81DCCE4(v65, v66, 1u);

      if (v67)
      {
      }

      else
      {
        *(a2 + 24) = v57 + *sub_1B8186D04();
        v68 = *sub_1B8186D10();

        *(a2 + 48) = v59 + v68;
      }

      goto LABEL_35;
    case 4:
      *(a2 + 8) = 0;
      *a2 = *sub_1B8186F08();
      *(a2 + 16) = *sub_1B8186D28();
      *(a2 + 24) = *sub_1B8186F20();
      v53 = sub_1B8186F14();
      OUTLINED_FUNCTION_8_5(v53);
      *(a2 + 48) = *sub_1B8186F2C();
      *(a2 + 64) = *sub_1B8186F5C();
      v54 = sub_1B8186F68();
      OUTLINED_FUNCTION_2_9(v54);
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = 0;
      *(a2 + 88) = *sub_1B8186F44();
      v55 = *sub_1B8186F50();

      *(a2 + 80) = v55;
      *(a2 + 40) = 0;
LABEL_35:
      *(a2 + 56) = 0;
      break;
    default:

      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
  }
}

unint64_t sub_1B81DCCE4(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v4 = (v3 != 0) & a3;

    while (1)
    {
      v5 = sub_1B81F9018();
      if (!v6)
      {
        v9 = 256;
LABEL_14:

        return v9 | v4;
      }

      result = sub_1B81DDC70(v5, v6);
      if ((result & 0x100000000) != 0)
      {
        break;
      }

      v8 = result;

      if ((v8 - 14) > 0xFFFFFFFB)
      {
        v9 = 0;
        goto LABEL_14;
      }

      v9 = 0;
      if ((v8 - 8232) < 2 || v8 == 133)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v4 = 0;
    return v9 | v4;
  }

  return result;
}

void sub_1B81DCDB8(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  v4 = (a2 + 40);
  *(a2 + 72) = 0u;
  v45 = (a2 + 72);
  *(a2 + 88) = 0u;
  *(a2 + 56) = 0u;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *a2 = v6 == 6;
  sub_1B8186FE0();

  sub_1B8186FEC();
  type metadata accessor for SGBannerIconParams(0);

  v7 = sub_1B81F8038();
  *(a2 + 1) = 0;
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x230);
  if ((v8)(v7))
  {
    v9 = v8() == 5;
    *(a2 + 104) = 0;
    if (v6 != 6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(a2 + 104) = 0;
    if (v6 != 6)
    {
      goto LABEL_6;
    }
  }

  *(a2 + 104) = *sub_1B8186EC0();
  if (v8() != 3)
  {
    v9 = v8() == 4;
    goto LABEL_8;
  }

LABEL_6:
  v9 = 1;
LABEL_8:
  *(a2 + 8) = 0u;
  v46 = (a2 + 8);
  *(a2 + 24) = 0u;
  v47 = a1;
  v10 = sub_1B81F8028();
  v11 = sub_1B81F91A8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = v8;
    v14 = swift_slowAlloc();
    v48 = v14;
    *v12 = 136315394;
    v13();
    v15 = sub_1B8188C88();
    v17 = sub_1B81B7ED8(v15, v16, &v48);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v9;
    _os_log_impl(&dword_1B8182000, v10, v11, "SGBanner Type: %s Supports: %{BOOL}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v8 = v13;
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();
  }

  if (!v9)
  {

    return;
  }

  v18 = (*((*MEMORY[0x1E69E7D40] & *v47) + 0x248))();
  if (v18)
  {
    v19 = v18;
    if (sub_1B8189548(v18) <= 0)
    {
      *(a2 + 88) = 0;
      goto LABEL_25;
    }

    v20 = OUTLINED_FUNCTION_10_9();
    if (!sub_1B8189548(v20))
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_48;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v19 + 32);
      *(a2 + 88) = v21;
      v22 = v21;
      if (v10 == 1)
      {
        goto LABEL_25;
      }

      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
      {
        v23 = *(v19 + 40);
LABEL_19:
        OUTLINED_FUNCTION_10_9();

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
LABEL_52:
      __break(1u);
    }

    __break(1u);
    goto LABEL_54;
  }

  v10 = 0;
  *(a2 + 88) = 0;
  while (1)
  {
LABEL_26:
    *(a2 + 96) = v10;
    OUTLINED_FUNCTION_0_7();
    v25 = (*(v24 + 416))();
    if (!v25)
    {
      v10 = 0;
      *(a2 + 48) = 0;
      goto LABEL_36;
    }

    v19 = v25;
    if (sub_1B8189548(v25) <= 0)
    {
      *(a2 + 48) = 0;

      v10 = 0;
      goto LABEL_36;
    }

    v26 = OUTLINED_FUNCTION_10_9();
    if (sub_1B8189548(v26))
    {
      break;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    *(a2 + 88) = MEMORY[0x1B8CBB0B0](0, v19);
    if (v10 != 1)
    {
      MEMORY[0x1B8CBB0B0](1, v19);
      goto LABEL_19;
    }

LABEL_25:

    v10 = 0;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    *(a2 + 48) = MEMORY[0x1B8CBB0B0](0, v19);
    MEMORY[0x1B8CBB0B0](1, v19);
LABEL_33:
    OUTLINED_FUNCTION_10_9();

LABEL_36:
    *v4 = v10;
    OUTLINED_FUNCTION_0_7();
    v31 = (*(v30 + 824))();
    if (v31)
    {
      v32 = v31;
      v33 = v31[2];
      if (v33)
      {
        v35 = v31[4];
        v34 = v31[5];
        *(a2 + 72) = v35;
        *(a2 + 80) = v34;

        if (v33 != 1)
        {
          v37 = v32[6];
          v36 = v32[7];

          goto LABEL_43;
        }
      }

      else
      {
        *v45 = 0;
        v45[1] = 0;
      }

      v37 = 0;
      v36 = 0;
    }

    else
    {
      v37 = 0;
      v36 = 0;
      *v45 = 0;
      v45[1] = 0;
    }

LABEL_43:
    *(a2 + 56) = v37;
    *(a2 + 64) = v36;
    v38 = sub_1B81DD3CC(v47);
    v39 = v38 > 0xFFu;
    *(a2 + 1) = v38 & 1;
    *(a2 + 2) = v39;
    v40 = v8();
    v41 = sub_1B81DD52C(v40, v39);
    *(a2 + 16) = v41;
    *(a2 + 24) = v42;
    *(a2 + 32) = v43;
    v44 = sub_1B81F8E98();

    if (v44)
    {
      *v46 = 36.0;
    }

    else
    {
      *v46 = v41;
    }

    return;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

  v27 = *(v19 + 32);
  *(a2 + 48) = v27;
  v28 = v27;
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
  {
    v29 = *(v19 + 40);
    goto LABEL_33;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_1B81DD3CC(void *a1)
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x248))();
  if (v1)
  {
    v2 = sub_1B8189548(v1);

    v3 = v2 > 1;
    if (v2 > 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_24_0();
  v5 = (*(v4 + 416))();
  if (!v5 || (v6 = sub_1B8189548(v5), , v3 = v6 > 1, v6 <= 0))
  {
    OUTLINED_FUNCTION_24_0();
    v9 = (*(v8 + 824))();
    if (v9)
    {
      v10 = *(v9 + 16);

      v7 = v10 != 0;
      v3 = v10 > 1;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_11;
  }

LABEL_7:
  v7 = 1;
LABEL_11:
  if (v3)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return v11 | v7;
}

double sub_1B81DD52C(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 0:
      case 5:
        v2 = 20.0;
        if ((sub_1B81F8E98() & 1) == 0)
        {
          v3 = sub_1B8186CA4();
          goto LABEL_17;
        }

        goto LABEL_18;
      case 3:
        v3 = sub_1B8186E6C();
        goto LABEL_17;
      case 4:
        v3 = sub_1B8186F38();
        goto LABEL_17;
      default:
        v3 = sub_1B8186C98();
LABEL_17:
        v2 = *v3;
LABEL_18:
        sub_1B8186CB0();
        sub_1B8186CBC();
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2 = 30.0;
        if ((sub_1B81F8E98() & 1) == 0)
        {
          return *sub_1B8186C98();
        }

        return v2;
      case 3:
        v4 = sub_1B8186E6C();
        goto LABEL_14;
      case 4:
        v4 = sub_1B8186F38();
        goto LABEL_14;
      case 5:
        v4 = sub_1B8186E0C();
        goto LABEL_14;
      default:
        v4 = sub_1B8186C98();
LABEL_14:
        v2 = *v4;
        break;
    }
  }

  return v2;
}

uint64_t sub_1B81DD638(void *a1)
{
  v1 = a1;
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A8))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 position];
    if (v4)
    {
      v5 = [v3 color];
      v6 = sub_1B81F8C38();
    }

    else
    {
      v6 = sub_1B81F8C58();
    }

    v7 = v6;
    if ((v4 & 2) != 0)
    {
      v8 = [v3 color];
      sub_1B81F8C38();
    }

    else
    {
      sub_1B81F8C58();
    }

    v1 = v3;
  }

  else
  {
    sub_1B81F8C58();
    v7 = sub_1B81F8C58();
  }

  return v7;
}

void sub_1B81DD758(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  *a2 = v5 == 6;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1B8))();
  v9 = v8;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  *(a2 + 3) = v11 != 0;
  v12 = (*((*v6 & *a1) + 0x188))(v10);
  v13 = 0x6B72616D78;
  if (v12 == 2)
  {
    v13 = 0x2E6E6F7276656863;
  }

  v14 = 0xE500000000000000;
  if (v12 == 2)
  {
    v14 = 0xEF64726177726F66;
  }

  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  v15 = *((*v6 & *a1) + 0x230);
  v16 = v15();
  if (v5 != 6)
  {
    if (v16)
    {
      v17 = 5;
      goto LABEL_12;
    }

LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

  if (v16 == 4)
  {
    goto LABEL_13;
  }

  v17 = 3;
LABEL_12:
  v18 = v15() == v17;
LABEL_14:
  v19 = sub_1B81DDA60(a1);
  *(a2 + 1) = v19 & 1;
  *(a2 + 2) = v19 > 0xFFu;
  OUTLINED_FUNCTION_24_0();
  v21 = (*(v20 + 344))();
  v23 = sub_1B81DCCE4(v21, v22, v18);
  v24 = v23;
  v25 = v23 > 0xFFu;

  *(a2 + 4) = v24 & 1;
  *(a2 + 5) = v25;
  *(a2 + 6) = (*((*v6 & *a1) + 0x320))(v26) & 1;
  v27 = type metadata accessor for SGBannerViewModel(0);
  v28 = v27[12];
  v29 = a1;
  sub_1B81DCDB8(v29, a2 + v28);
  v30 = v29;
  v31 = sub_1B81DD638(v30);
  v32 = a2 + v27[13];
  *v32 = v31;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  *(v32 + 17) = v35 & 1;
  sub_1B81DC490(v30, a2 + v27[14]);
}

uint64_t sub_1B81DDA60(void *a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x188);
  v5 = v4();
  if (v3 == 6)
  {
    if (v5 == 1)
    {
      OUTLINED_FUNCTION_24_0();
      v6 += 70;
      v7 = *v6;
      v8 = (*v6)() == 2 || v7() == 4;
    }

    else
    {
      v8 = 0;
    }

    v12 = v4() == 1 && !v8;
    if (v8)
    {
      goto LABEL_22;
    }

LABEL_23:
    v14 = 0;
    return v14 | v12;
  }

  v9 = v5 == 1 || v4() == 2;
  OUTLINED_FUNCTION_24_0();
  v10 += 70;
  v11 = *v10;
  if (!(*v10)() || v11() == 5)
  {
    if (v9)
    {
      v12 = 0;
LABEL_22:
      v14 = 256;
      return v14 | v12;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_23;
  }

  v13 = v11();
  if (!v9)
  {
    goto LABEL_16;
  }

  v12 = 0;
  if (v13 == 1)
  {
    goto LABEL_22;
  }

  v14 = 0;
  v12 = 1;
  return v14 | v12;
}

unint64_t sub_1B81DDC70(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B81DE29C(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = sub_1B81F9288();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1B81F92C8();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

void sub_1B81DDE6C()
{
  sub_1B81F8058();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIUserInterfaceIdiom();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_1();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B81DDF48()
{
  sub_1B81DE0CC(319, &unk_1EDC8AF00, &qword_1EDC8AF10, 0x1E69DCAB8);
  if (v0 <= 0x3F)
  {
    sub_1B81DE07C(319, &qword_1EDC8AF58, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B81DE0CC(319, &qword_1EDC8AF18, &qword_1EDC8AF20, 0x1E69DD250);
      if (v2 <= 0x3F)
      {
        sub_1B81F8058();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_20_1();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B81DE07C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B81DE0CC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B8189AF0(255, a3, a4);
    v5 = sub_1B81F91F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B81DE138(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1B81DE178(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B81DE1F0()
{
  result = type metadata accessor for SGBannerIconParams(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SGBannerPaddingParams(319);
    if (v2 <= 0x3F)
    {
      OUTLINED_FUNCTION_20_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B81DE29C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B81DE33C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B81DE3AC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B81DE33C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1B81DE4C8(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B81DE3AC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1B81F92C8();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1B81DE4C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B81F9048();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CBAE40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

double OUTLINED_FUNCTION_2_9(double *a1)
{
  result = *a1;
  *(v1 + 96) = *a1;
  *(v1 + 72) = 0;
  return result;
}

double OUTLINED_FUNCTION_8_5(double *a1)
{
  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

Swift::Void __swiftcall SGReminderSuggestion.dismissViewController(_:finished:)(UIViewController *_, Swift::Bool finished)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewController_];
    [v6 suggestion:v2 actionFinished:finished];

    swift_unknownObjectRelease();
  }
}

Swift::String __swiftcall SGReminderSuggestion.suggestionTitle()()
{
  if (currentUIContext())
  {
    v2 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) title];
    sub_1B81F8F98();
    OUTLINED_FUNCTION_3_4();

    v3 = v0;
    v4 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    sub_1B81871D4(0xD000000000000024, v5);
    OUTLINED_FUNCTION_7_4();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
    v7 = OUTLINED_FUNCTION_15_2(v6);
    *(v7 + 16) = xmmword_1B81FD1B0;
    v8 = OUTLINED_FUNCTION_1_5(v7, MEMORY[0x1E69E6530]);
    v10 = v9;

    v3 = v8;
    v4 = v10;
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

SGSuggestionAction __swiftcall SGReminderSuggestion.suggestionPrimaryAction()()
{
  v1 = v0;
  v2 = sub_1B81F8028();
  v3 = sub_1B81F9178();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = [*(v1 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) loggingIdentifier];
    v7 = sub_1B81F8F98();
    v9 = v8;

    v10 = sub_1B81B7ED8(v7, v9, &v19);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_1B8182000, v2, v3, "SGReminderSuggestion - SGReminder %s primary action initialized", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();
  }

  sub_1B8189AF0(0, &unk_1EBA7D8C0, off_1E7CD8260);
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  v13 = v12;
  OUTLINED_FUNCTION_55();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_1B81A5204(v11, v13, sub_1B81DF56C, v14);
  result._handler = v18;
  result._title = v17;
  result.super.isa = v16;
  return result;
}

UIImage_optional __swiftcall SGReminderSuggestion.suggestionImage()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

SGSuggestionAction_optional __swiftcall SGReminderSuggestion.suggestionDismissAction()()
{
  sub_1B8189AF0(0, &unk_1EBA7D8C0, off_1E7CD8260);
  OUTLINED_FUNCTION_6_5();
  v2 = sub_1B81871D4(0xD000000000000023, v1);
  v4 = v3;
  OUTLINED_FUNCTION_55();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  v7 = sub_1B81A5204(v2, v4, sub_1B81DF62C, v5);
  result.value._handler = v9;
  result.value._title = v8;
  result.value.super.isa = v7;
  result.is_nil = v10;
  return result;
}

Swift::String_optional __swiftcall SGReminderSuggestion.suggestionSubtitle()()
{
  OUTLINED_FUNCTION_6_5();
  sub_1B81871D4(0xD000000000000024, v0);
  OUTLINED_FUNCTION_7_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
  v2 = OUTLINED_FUNCTION_15_2(v1);
  *(v2 + 16) = xmmword_1B81FD1B0;
  v3 = OUTLINED_FUNCTION_1_5(v2, MEMORY[0x1E69E6530]);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

NSAttributedString_optional __swiftcall SGReminderSuggestion.suggestionAttributedSubtitle()()
{
  v1 = v0;
  sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
  v2 = [*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder) title];
  v3 = sub_1B81F8F98();
  v5 = v4;

  v6 = sub_1B8187C0C(v3, v5);
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);
  v7 = sub_1B8187C0C(10, 0xE100000000000000);
  [v6 appendAttributedString_];

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x100))();
  if (v8)
  {
    OUTLINED_FUNCTION_3_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E290, &qword_1B8200378);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B81FD1B0;
    v10 = sub_1B81F8F58();
    *(inited + 64) = MEMORY[0x1E69E6158];
    *(inited + 32) = v10;
    *(inited + 40) = 5457241;
    *(inited + 48) = 0xE300000000000000;
    type metadata accessor for Key(0);
    sub_1B8189978(&qword_1EBA7C558, &unk_1B8200380);
    sub_1B81F8F08();
    v11 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v12 = OUTLINED_FUNCTION_12_4();
    v15 = sub_1B81DF4A8(v12, v13, v14);
    [v6 appendAttributedString_];
  }

  v16 = v6;
  result.is_nil = v8;
  result.value.super.isa = v16;
  return result;
}

uint64_t SGReminderSuggestion.suggestionActionButtonType()()
{
  if (*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_bannerForVisionDevice))
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

Swift::String __swiftcall SGReminderSuggestion.suggestionCategoryId()()
{
  v0 = sub_1B8186FC8();
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall SGReminderSuggestion.suggestionCategoryTitle()()
{
  OUTLINED_FUNCTION_6_5();
  v1 = sub_1B81871D4(0xD00000000000001FLL, v0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id sub_1B81DF07C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B81F8F58();

  return v5;
}

Swift::String __swiftcall SGReminderSuggestion.suggestionCategoryTitle(forItems:)(Swift::OpaquePointer forItems)
{
  if (forItems._rawValue >> 62)
  {
    v1 = sub_1B81F9348();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0xE000000000000000;
    goto LABEL_6;
  }

  v1 = *((forItems._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  OUTLINED_FUNCTION_6_5();
  v1 = sub_1B81871D4(0xD00000000000002FLL, v2);
LABEL_6:
  result._object = v3;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall SGReminderSuggestion.suggestionCategorySubtitle(forItems:)(Swift::OpaquePointer forItems)
{
  OUTLINED_FUNCTION_6_5();
  sub_1B81871D4(0xD000000000000027, v3);
  OUTLINED_FUNCTION_3_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *(v5 + 16) = xmmword_1B81FD1B0;
  v6 = sub_1B8189548(forItems._rawValue);
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  OUTLINED_FUNCTION_12_4();
  sub_1B81F8F68();
  OUTLINED_FUNCTION_7_4();

  rawValue = forItems._rawValue;
  v9 = v1;
  result.value._object = v9;
  result.value._countAndFlagsBits = rawValue;
  return result;
}

Swift::String __swiftcall SGReminderSuggestion.suggestionCategoryLocalizedCount(ofItems:)(Swift::OpaquePointer ofItems)
{
  OUTLINED_FUNCTION_6_5();
  sub_1B81871D4(0xD000000000000027, v3);
  OUTLINED_FUNCTION_3_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E280, &unk_1B81FDBE0);
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *(v5 + 16) = xmmword_1B81FD1B0;
  v6 = sub_1B8189548(ofItems._rawValue);
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  OUTLINED_FUNCTION_12_4();
  sub_1B81F8F68();
  OUTLINED_FUNCTION_7_4();

  rawValue = ofItems._rawValue;
  v9 = v1;
  result._object = v9;
  result._countAndFlagsBits = rawValue;
  return result;
}

id sub_1B81DF384(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7CBD0, &unk_1B81FD110);
  v6 = sub_1B81F90C8();
  v7 = a1;
  a4(v6);

  v8 = sub_1B81F8F58();

  return v8;
}

id SGReminderSuggestion.realtimeSuggestion()()
{
  result = getReminderSuggestion(*(v0 + OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_realTimeReminder));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B81DF4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B81F8F58();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1B8189978(&qword_1EBA7C558, &unk_1B8200380);
    v6 = sub_1B81F8EE8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

void sub_1B81DF56C()
{
  v1 = *(v0 + 16);
  v4 = [objc_allocWithZone(MEMORY[0x1E69C6D38]) initWithDelegate_];
  v2 = [v4 setModalPresentationStyle_];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v2);
  if (v3)
  {
    [v3 presentViewController_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B81DF62C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() serviceForReminders];
  v3 = *&v1[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder];
  OUTLINED_FUNCTION_55();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v9[4] = sub_1B81DF7A4;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B81A5C0C;
  v9[3] = &block_descriptor_7;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v2 rejectRealtimeReminder:v3 withCompletion:v5];
  _Block_release(v5);
  v7 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x80))();
  if (v7)
  {
    [v7 suggestion:v6 actionFinished:1];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_1B81DF7A4(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    oslog = sub_1B81F8028();
    v3 = sub_1B81F9188();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v15 = v6;
      *v4 = 136315394;
      v7 = *&v2[OBJC_IVAR____TtC17CoreSuggestionsUI20SGReminderSuggestion_reminder];
      v8 = [v7 loggingIdentifier];
      v9 = sub_1B81F8F98();
      v11 = v10;

      v12 = sub_1B81B7ED8(v9, v11, &v15);

      *(v4 + 4) = v12;
      *(v4 + 12) = 2112;
      v13 = [v7 recordId];
      *(v4 + 14) = v13;
      *v5 = v13;
      _os_log_impl(&dword_1B8182000, oslog, v3, "SGReminderSuggestionBase: Unable to reject SGReminder %s with recordId: %@", v4, 0x16u);
      sub_1B81A7248(v5);
      OUTLINED_FUNCTION_5_1();
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_5_1();
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = 1;

  return sub_1B81F8F68();
}

void sub_1B81DF9B4()
{
  OUTLINED_FUNCTION_12_10();
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v1 = MEMORY[0x1E69E7D40];
  v2 = OUTLINED_FUNCTION_7_9(18);
  v3(v2);
  OUTLINED_FUNCTION_1_6();
  (*((*v1 & v4) + 0x160))(0, 0xE000000000000000);
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);
  sub_1B8187C0C(0xD00000000000002FLL, 0x80000001B8203040);
  OUTLINED_FUNCTION_1_6();
  (*((*v1 & v5) + 0x178))();
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v6 = OUTLINED_FUNCTION_0_8();
  v8 = sub_1B818AED8(v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() redColor];
    v11 = [v9 imageWithTintColor_];

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v13 = OUTLINED_FUNCTION_24(v12);
    *(v13 + 16) = xmmword_1B81FC210;
    *(v13 + 32) = v11;
    v14 = *((*v1 & *v0) + 0x1A8);
    v15 = v11;
    v16 = OUTLINED_FUNCTION_2_10();
    v14(v16);
    OUTLINED_FUNCTION_1_6();
    v17 = OUTLINED_FUNCTION_3_7();
    v18(v17);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v19) + 0x190))(1);

    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B81DFC88()
{
  sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v36 = v1;
  v37 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SGBannerContent();
  v4 = SGBannerContent.__allocating_init()();
  sub_1B8186FE0();

  sub_1B8186FEC();

  sub_1B81F8038();
  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x130))(0xD000000000000013, 0x80000001B8203070);
  OUTLINED_FUNCTION_4_10();
  (*((*v5 & v6) + 0x160))(0, 0xE000000000000000);
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);
  sub_1B8187C0C(0xD000000000000064, 0x80000001B8203090);
  OUTLINED_FUNCTION_4_10();
  (*((*v5 & v7) + 0x178))();
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v8 = OUTLINED_FUNCTION_0_8();
  result = sub_1B818AED8(v8, v9);
  if (result)
  {
    v11 = result;
    v12 = objc_opt_self();
    v13 = [v12 redColor];
    v14 = [v11 imageWithTintColor:v13 renderingMode:1];

    v15 = v14;
    result = sub_1B818AED8(0xD00000000000001BLL, 0x80000001B8203100);
    if (result)
    {
      v16 = result;
      v17 = [v12 greenColor];
      v18 = [v16 imageWithTintColor:v17 renderingMode:1];

      v19 = objc_allocWithZone(MEMORY[0x1E695DF70]);
      v20 = v18;
      v21 = [v19 init];
      [v21 addObject_];

      [v21 addObject_];
      OUTLINED_FUNCTION_4_10();
      v22 = OUTLINED_FUNCTION_3_7();
      v23(v22);
      OUTLINED_FUNCTION_4_10();
      (*((*v5 & v24) + 0x190))(1);
      v38 = 0;
      v25 = v21;
      sub_1B81F90B8();

      v26 = v38;
      v27 = (*((*v5 & *v4) + 0x1A0))();
      if (v27)
      {
        v28 = v27;
        if (v26)
        {

          v29 = sub_1B81E1A58(v28, v26);

          swift_bridgeObjectRelease_n();
          if ((v29 & 1) == 0)
          {
LABEL_11:
            v30 = sub_1B81F8028();
            v31 = sub_1B81F9178();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              *v32 = 0;
              v33 = "Unable to assign image in preview code";
              goto LABEL_13;
            }

            goto LABEL_14;
          }

LABEL_8:
          v30 = sub_1B81F8028();
          v31 = sub_1B81F9168();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            v33 = "Multiple Test Event";
LABEL_13:
            _os_log_impl(&dword_1B8182000, v30, v31, v33, v32, 2u);
            v34 = v30;
            MEMORY[0x1B8CBBAE0](v32, -1, -1);
            v30 = v25;
LABEL_15:

            (*(v36 + 8))(v3, v37);
            return v4;
          }

LABEL_14:
          v34 = v15;
          v15 = v20;
          v20 = v25;
          goto LABEL_15;
        }
      }

      else if (!v26)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B81E022C()
{
  type metadata accessor for SGBannerContent();
  v0 = SGBannerContent.__allocating_init()();
  sub_1B8189AF0(0, &unk_1EDC8A5C0, 0x1E696AD40);
  v1 = sub_1B8187C0C(0xD000000000000010, 0x80000001B8203120);
  v2 = [v1 length];
  v3 = *MEMORY[0x1E69DB648];
  v4 = [objc_opt_self() boldSystemFontOfSize_];
  [v1 addAttribute:v3 value:v4 range:{0, v2}];

  OUTLINED_FUNCTION_1_6();
  v5 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & v6) + 0x148);
  v8 = v1;
  v9 = OUTLINED_FUNCTION_2_10();
  v7(v9);
  v10 = [v2 string];

  v11 = sub_1B81F8F98();
  v13 = v12;

  OUTLINED_FUNCTION_1_6();
  (*((*v5 & v14) + 0x130))(v11, v13);
  OUTLINED_FUNCTION_1_6();
  v15 = OUTLINED_FUNCTION_3_7();
  v16(v15);
  OUTLINED_FUNCTION_1_6();
  (*((*v5 & v17) + 0x190))(1);

  return v0;
}

void *sub_1B81E0468()
{
  type metadata accessor for SGBannerContent();
  v0 = SGBannerContent.__allocating_init()();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))(0xD000000000000010, 0x80000001B8203140);
  OUTLINED_FUNCTION_8_6();
  (*((*v1 & v2) + 0x160))(0x54206E657275614CLL, 0xEE00616E6E617061);
  OUTLINED_FUNCTION_8_6();
  (*((*v1 & v3) + 0x1C0))(0x657461647055, 0xE600000000000000);
  OUTLINED_FUNCTION_8_6();
  (*((*v1 & v4) + 0x238))(0);
  OUTLINED_FUNCTION_8_6();
  (*((*v1 & v5) + 0x190))(1);
  return v0;
}

void sub_1B81E0624()
{
  OUTLINED_FUNCTION_12_10();
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(0xD00000000000002CLL, 0x80000001B8203160);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v3 = sub_1B818AED8(0x74616C736E617274, 0xE900000000000065);
  if (v3)
  {
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v6 = OUTLINED_FUNCTION_24(v5);
    *(v6 + 16) = xmmword_1B81FC210;
    *(v6 + 32) = v4;
    v7 = *((*v2 & *v0) + 0x1A8);
    v8 = v4;
    v7(v6);
    (*((*v2 & *v0) + 0x1C0))(0xD00000000000001BLL, 0x80000001B8203190);
    OUTLINED_FUNCTION_1_6();
    (*((*v2 & v9) + 0x238))(5);
    OUTLINED_FUNCTION_1_6();
    (*((*v2 & v10) + 0x190))(1);

    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B81E0868()
{
  v0 = sub_1B81F7908();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  type metadata accessor for SGBannerContent();
  v9 = SGBannerContent.__allocating_init()();
  sub_1B81F78F8();
  sub_1B81F89F8();
  sub_1B81F8978();
  v10 = sub_1B81F89B8();

  v22 = v10;
  sub_1B81E1C2C();
  sub_1B81F7928();
  v22 = sub_1B81F8CA8();
  sub_1B81E1C80();
  sub_1B81F7928();
  OUTLINED_FUNCTION_4_10();
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v12) + 0x238))(0);
  OUTLINED_FUNCTION_4_10();
  (*((*v11 & v13) + 0x358))(1);
  sub_1B8189AF0(0, &qword_1EBA7DC98, 0x1E696AAB0);
  (*(v2 + 16))(v6, v8, v0);
  sub_1B81F91B8();
  OUTLINED_FUNCTION_4_10();
  (*((*v11 & v14) + 0x148))();
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  result = sub_1B818AED8(0x616C707265706170, 0xEA0000000000656ELL);
  if (result)
  {
    v16 = result;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v18 = OUTLINED_FUNCTION_24(v17);
    *(v18 + 16) = xmmword_1B81FC210;
    *(v18 + 32) = v16;
    v19 = *((*v11 & *v9) + 0x1A8);
    v20 = v16;
    v19(v18);

    (*(v2 + 8))(v8, v0);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B81E0BC4()
{
  OUTLINED_FUNCTION_12_10();
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v1 = MEMORY[0x1E69E7D40];
  v2 = OUTLINED_FUNCTION_7_9(26);
  v3(v2);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v4 = sub_1B818AED8(0x6C69662E74726163, 0xE90000000000006CLL);
  if (v4)
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v7 = OUTLINED_FUNCTION_24(v6);
    *(v7 + 16) = xmmword_1B81FC210;
    *(v7 + 32) = v5;
    v8 = *((*v1 & *v0) + 0x1A8);
    v9 = v5;
    v8(v7);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v10) + 0x238))(0);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v11) + 0x358))(1);

    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B81E0DA8()
{
  OUTLINED_FUNCTION_12_10();
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v1 = MEMORY[0x1E69E7D40];
  v2 = OUTLINED_FUNCTION_7_9(26);
  v3(v2);
  (*((*v1 & *v0) + 0x160))(0xD00000000000005DLL, 0x80000001B8203200);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v4 = sub_1B818AED8(1953653091, 0xE400000000000000);
  if (v4)
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v7 = OUTLINED_FUNCTION_24(v6);
    *(v7 + 16) = xmmword_1B81FC210;
    *(v7 + 32) = v5;
    v8 = *((*v1 & *v0) + 0x1A8);
    v9 = v5;
    v8(v7);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v10) + 0x238))(0);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v11) + 0x358))(1);

    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B81E0FDC()
{
  OUTLINED_FUNCTION_12_10();
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v1 = MEMORY[0x1E69E7D40];
  v2 = OUTLINED_FUNCTION_7_9(32);
  v3(v2);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v4 = sub_1B818AED8(0x6C63692E6B6E696CLL, 0xEB0000000064756FLL);
  if (v4)
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v7 = OUTLINED_FUNCTION_24(v6);
    *(v7 + 16) = xmmword_1B81FC210;
    *(v7 + 32) = v5;
    v8 = *((*v1 & *v0) + 0x1A8);
    v9 = v5;
    v8(v7);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v10) + 0x1C0))(0x6E6F432064616F4CLL, 0xEC000000746E6574);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v11) + 0x358))(1);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v12) + 0x238))(0);

    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B81E121C()
{
  type metadata accessor for SGBannerContent();
  SGBannerContent.__allocating_init()();
  OUTLINED_FUNCTION_5_7();
  v1 = MEMORY[0x1E69E7D40];
  v2 = OUTLINED_FUNCTION_7_9(19);
  v3(v2);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v4 = OUTLINED_FUNCTION_0_8();
  result = sub_1B818AED8(v4, v5);
  if (result)
  {
    v7 = result;
    (*((*v1 & *v0) + 0x160))(0xD00000000000004ELL, 0x80000001B82032B0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v9 = OUTLINED_FUNCTION_24(v8);
    *(v9 + 16) = xmmword_1B81FC210;
    *(v9 + 32) = v7;
    v10 = *((*v1 & *v0) + 0x1A8);
    v11 = v7;
    v12 = OUTLINED_FUNCTION_2_10();
    v10(v12);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v13) + 0x1C0))(6579265, 0xE300000000000000);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v14) + 0x238))(5);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v15) + 0x190))(1);
    OUTLINED_FUNCTION_1_6();
    (*((*v1 & v16) + 0x358))(1);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B81E14C0()
{
  type metadata accessor for SGBannerContent();
  v0 = SGBannerContent.__allocating_init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E290, &qword_1B8200378);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1B81FC7C0;
  v3 = *v2;
  *(inited + 32) = *v2;
  v42 = objc_opt_self();
  v4 = *MEMORY[0x1E69DDD80];
  v41 = v3;
  v5 = [v42 preferredFontForTextStyle_];
  v40 = sub_1B8189AF0(0, &qword_1EBA7C578, 0x1E69DB878);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v40;
  *(inited + 72) = v6;
  v38 = objc_opt_self();
  v39 = v6;
  v7 = [v38 systemGrayColor];
  v8 = sub_1B8189AF0(0, &qword_1EBA7C4B8, 0x1E69DC888);
  *(inited + 104) = v8;
  *(inited + 80) = v7;
  type metadata accessor for Key(0);
  sub_1B8189978(&qword_1EBA7C558, &unk_1B8200380);
  v9 = OUTLINED_FUNCTION_10_10();
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = sub_1B81DF4A8(0xD00000000000001ALL, 0x80000001B8203300, v9);
  OUTLINED_FUNCTION_1_6();
  v12 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & v13) + 0x148);
  v37 = v11;
  v14(v11);
  OUTLINED_FUNCTION_1_6();
  (*((*v12 & v15) + 0x130))(0xD00000000000001ALL, 0x80000001B8203300);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1B81FC7C0;
  *(v16 + 32) = v41;
  *(v16 + 40) = [v42 boldSystemFontOfSize_];
  *(v16 + 64) = v40;
  *(v16 + 72) = v39;
  v17 = [v38 systemRedColor];
  *(v16 + 104) = v8;
  *(v16 + 80) = v17;
  v18 = OUTLINED_FUNCTION_10_10();
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1B81DF4A8(0xD000000000000013, 0x80000001B8203320, v18);
  OUTLINED_FUNCTION_1_6();
  v22 = *((*v12 & v21) + 0x178);
  v23 = v20;
  v22(v20);
  OUTLINED_FUNCTION_1_6();
  (*((*v12 & v24) + 0x160))(0xD000000000000013, 0x80000001B8203320);
  sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
  v25 = OUTLINED_FUNCTION_0_8();
  result = sub_1B818AED8(v25, v26);
  if (result)
  {
    v28 = result;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7C520, &qword_1B81FC450);
    v30 = OUTLINED_FUNCTION_24(v29);
    *(v30 + 16) = xmmword_1B81FC210;
    *(v30 + 32) = v28;
    v31 = *((*v12 & *v0) + 0x1A8);
    v32 = v28;
    v31(v30);
    OUTLINED_FUNCTION_1_6();
    (*((*v12 & v33) + 0x1C0))(1953064005, 0xE400000000000000);
    OUTLINED_FUNCTION_1_6();
    (*((*v12 & v34) + 0x238))(0);
    OUTLINED_FUNCTION_1_6();
    (*((*v12 & v35) + 0x190))(0);
    OUTLINED_FUNCTION_1_6();
    (*((*v12 & v36) + 0x358))(1);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B81E1A58(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B81F9348())
  {
    if (a2 >> 62)
    {
      result = sub_1B81F9348();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1B8189AF0(0, &qword_1EDC8AF10, 0x1E69DCAB8);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1B8CBB0B0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1B8CBB0B0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1B81F91E8();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B81E1C2C()
{
  result = qword_1EBA7E318;
  if (!qword_1EBA7E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E318);
  }

  return result;
}

unint64_t sub_1B81E1C80()
{
  result = qword_1EBA7E320;
  if (!qword_1EBA7E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E320);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_10()
{

  return sub_1B81F8F08();
}

id SGTextProcessingServiceWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SGTextProcessingServiceWrapper.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B81F7AD8();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_service] = sub_1B81F7AC8();
  sub_1B8186FE0();

  sub_1B81F8038();
  (*(v4 + 32))(&v0[OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_logger], v7, v2);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t SGTextProcessingServiceWrapper.suggestions(from:persistResults:)()
{
  OUTLINED_FUNCTION_2_4();
  *(v1 + 320) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  v4 = sub_1B81F7E98();
  *(v1 + 88) = v4;
  OUTLINED_FUNCTION_22_2(v4);
  *(v1 + 96) = v5;
  *(v1 + 104) = swift_task_alloc();
  v6 = sub_1B81F7AF8();
  *(v1 + 112) = v6;
  OUTLINED_FUNCTION_22_2(v6);
  *(v1 + 120) = v7;
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v8 = sub_1B81F7B38();
  *(v1 + 144) = v8;
  OUTLINED_FUNCTION_22_2(v8);
  *(v1 + 152) = v9;
  *(v1 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E330, &qword_1B8200408);
  *(v1 + 168) = swift_task_alloc();
  v10 = sub_1B81F7EE8();
  *(v1 + 176) = v10;
  OUTLINED_FUNCTION_22_2(v10);
  *(v1 + 184) = v11;
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v12 = sub_1B81F8058();
  *(v1 + 208) = v12;
  OUTLINED_FUNCTION_22_2(v12);
  *(v1 + 216) = v13;
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B81E21D4, 0, 0);
}

void sub_1B81E21D4()
{
  v92 = v0;
  v2 = *(v0 + 256);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_logger;
  *(v0 + 264) = OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_logger;
  OUTLINED_FUNCTION_13_4(v6 + v7, v0 + 16);
  v8 = *(v4 + 16);
  *(v0 + 272) = v8;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6 + v7, v3);
  v9 = v5;
  v10 = sub_1B81F8028();
  v11 = sub_1B81F91A8();
  v12 = &unk_1B81FE000;
  if (OUTLINED_FUNCTION_15_8(v11))
  {
    v87 = v8;
    v88 = v6;
    OUTLINED_FUNCTION_14_10();
    v91 = OUTLINED_FUNCTION_13_10();
    *v3 = 136315394;
    sub_1B81E4714(v1);
    v14 = v13;

    if (!v14)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v15 = *(v0 + 216);
    v85 = *(v0 + 208);
    v86 = *(v0 + 256);
    v16 = *(v0 + 72);
    v17 = OUTLINED_FUNCTION_17_7();
    v20 = sub_1B81B7ED8(v17, v18, v19);

    *(v3 + 4) = v20;
    *(v3 + 12) = 2080;
    v21 = [v16 uniqueIdentifier];
    v22 = sub_1B81F8F98();
    v24 = v23;

    v25 = sub_1B81B7ED8(v22, v24, &v91);

    *(v3 + 14) = v25;
    OUTLINED_FUNCTION_6_6(&dword_1B8182000, v26, v27, "SGTextProcessingServiceWrapper: Initializing Document from CSSearchableItem %s : %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();

    v29 = *(v15 + 8);
    v28 = (v15 + 8);
    v90 = v29;
    v29(v86, v85);
    v8 = v87;
    v6 = v88;
    v12 = &unk_1B81FE000;
  }

  else
  {
    v30 = *(v0 + 216);

    v28 = (v30 + 8);
    v31 = OUTLINED_FUNCTION_133();
    v90 = v32;
    (v32)(v31);
  }

  v33 = *(v0 + 168);
  v34 = *(v0 + 176);
  v35 = *(v0 + 72);
  sub_1B81F7ED8();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    v36 = *(v0 + 232);
    v37 = *(v0 + 208);
    v38 = *(v0 + 72);
    sub_1B8192D84(*(v0 + 168), &qword_1EBA7E330, &qword_1B8200408);
    v8(v36, v6 + v7, v37);
    v39 = v38;
    v40 = sub_1B81F8028();
    v41 = sub_1B81F9188();
    if (!OUTLINED_FUNCTION_15_8(v41))
    {

      v57 = OUTLINED_FUNCTION_133();
LABEL_14:
      v90(v57, v58);

      OUTLINED_FUNCTION_18_7();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_14_10();
    v91 = OUTLINED_FUNCTION_13_10();
    *v37 = v12[282];
    sub_1B81E4714(v28);
    v43 = v42;

    if (v43)
    {
      v89 = *(v0 + 232);
      v44 = *(v0 + 208);
      v45 = *(v0 + 72);
      v46 = OUTLINED_FUNCTION_17_7();
      v49 = sub_1B81B7ED8(v46, v47, v48);

      *(v37 + 4) = v49;
      *(v37 + 12) = 2080;
      v50 = [v45 uniqueIdentifier];
      v51 = sub_1B81F8F98();
      v53 = v52;

      v54 = sub_1B81B7ED8(v51, v53, &v91);

      *(v37 + 14) = v54;
      OUTLINED_FUNCTION_6_6(&dword_1B8182000, v55, v56, "SGTextProcessingServiceWrapper: Failed to construct Document from CSSearchableItem %s : %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_5_1();

      v57 = v89;
      v58 = v44;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  v59 = *(v0 + 192);
  v60 = *(v0 + 200);
  v61 = *(v0 + 176);
  v62 = *(v0 + 184);
  (*(v62 + 32))(v60, *(v0 + 168), v61);
  (*(v62 + 16))(v59, v60, v61);
  v63 = OUTLINED_FUNCTION_133();
  if (v64(v63) == *MEMORY[0x1E69DA048])
  {
    v65 = *(v0 + 192);
    v67 = *(v0 + 152);
    v66 = *(v0 + 160);
    v68 = *(v0 + 144);
    v69 = *(v0 + 80);
    (*(*(v0 + 184) + 96))(v65, *(v0 + 176));
    (*(v67 + 32))(v66, v65, v68);
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    v70 = OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_service;
    OUTLINED_FUNCTION_13_4(v69 + OBJC_IVAR____TtC17CoreSuggestionsUI30SGTextProcessingServiceWrapper_service, v0 + 40);
    *(v0 + 288) = *(v69 + v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E338, &unk_1B8200410);
    v71 = sub_1B81F7EC8();
    OUTLINED_FUNCTION_1_0();
    v73 = v72;
    v75 = *(v74 + 72);
    v76 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1B81FC7C0;
    v78 = v77 + v76;

    sub_1B81F7EA8();
    v79 = *(v73 + 104);
    v79(v78, *MEMORY[0x1E69D9FF0], v71);
    sub_1B81F7EB8();
    v79(v78 + v75, *MEMORY[0x1E69D9FF8], v71);
    *(v0 + 296) = sub_1B81E427C(v77);
    LOBYTE(v91) = 1;
    sub_1B81F7E88();
    v80 = swift_task_alloc();
    *(v0 + 304) = v80;
    *v80 = v0;
    v80[1] = sub_1B81E2924;
    OUTLINED_FUNCTION_18_7();

    __asm { BR              X4 }
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  sub_1B81F9328();
  OUTLINED_FUNCTION_18_7();
}

uint64_t sub_1B81E2924()
{
  OUTLINED_FUNCTION_11_11();
  v2 = *v1;
  *(*v1 + 312) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v3 = sub_1B81E31A4;
  }

  else
  {
    v3 = sub_1B81E2AC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B81E2AC8()
{
  v88 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  (*(v0 + 272))(*(v0 + 248), *(v0 + 80) + *(v0 + 264), *(v0 + 208));
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  v7 = sub_1B81F8028();
  v8 = sub_1B81F91A8();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v11 = *(v0 + 112);
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v87[0] = v14;
    *v13 = 134218498;
    v15 = *(sub_1B81F7AE8() + 16);

    v85 = *(v10 + 8);
    v85(v9, v11);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    sub_1B81E4714(v12);
    v17 = v16;

    if (!v17)
    {
      __break(1u);
      goto LABEL_20;
    }

    v83 = *(v0 + 248);
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 72);
    v21 = OUTLINED_FUNCTION_17_7();
    v24 = sub_1B81B7ED8(v21, v22, v23);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2080;
    v25 = [v20 uniqueIdentifier];
    v26 = sub_1B81F8F98();
    v28 = v27;

    v29 = sub_1B81B7ED8(v26, v28, v87);

    *(v13 + 24) = v29;
    _os_log_impl(&dword_1B8182000, v7, v8, "SGTextProcessingServiceWrapper: Extracted %ld events from %s : %s", v13, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();

    v30 = *(v18 + 8);
    v30(v83, v19);
  }

  else
  {
    v31 = *(v0 + 248);
    v32 = *(v0 + 208);
    v33 = *(v0 + 216);
    v14 = *(v0 + 72);
    v85 = *(*(v0 + 120) + 8);
    v85(*(v0 + 128), *(v0 + 112));

    v30 = *(v33 + 8);
    v30(v31, v32);
  }

  v34 = sub_1B81F7B18();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    v38 = sub_1B81F7B08();
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      v42 = *(v0 + 160);
      v43 = sub_1B81F7AE8();
      v44 = swift_task_alloc();
      v44[2] = v40;
      v44[3] = v41;
      v44[4] = v36;
      v44[5] = v37;
      v44[6] = v42;
      v45 = sub_1B81E3508(sub_1B81E4778, v44, v43);

      if (v45 >> 62)
      {
        sub_1B8189AF0(0, &unk_1EDC8A2A0, 0x1E69E58C0);

        v46 = sub_1B81F9338();
      }

      else
      {

        sub_1B81F9398();
        sub_1B8189AF0(0, &unk_1EDC8A2A0, 0x1E69E58C0);
        v46 = v45;
      }

      v47 = *(v0 + 200);
      v48 = *(v0 + 176);
      v49 = *(v0 + 184);
      v50 = *(v0 + 136);
      v51 = *(v0 + 112);

      sub_1B81E45C8(v46);
      v85(v50, v51);
      (*(v49 + 8))(v47, v48);
      goto LABEL_15;
    }
  }

  v84 = v30;
  v52 = *(v0 + 72);
  (*(v0 + 272))(*(v0 + 240), *(v0 + 80) + *(v0 + 264), *(v0 + 208));
  v53 = v52;
  v54 = sub_1B81F8028();
  v55 = sub_1B81F9188();
  if (!OUTLINED_FUNCTION_15_8(v55))
  {
    v69 = *(v0 + 184);
    v80 = *(v0 + 176);
    v82 = *(v0 + 200);
    v70 = *(v0 + 136);
    v71 = *(v0 + 112);
    v72 = *(v0 + 72);

    v73 = OUTLINED_FUNCTION_133();
    v84(v73);
    v85(v70, v71);
    (*(v69 + 8))(v82, v80);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_14_10();
  v87[0] = OUTLINED_FUNCTION_13_10();
  *v52 = 136315394;
  v56 = sub_1B81E4714(v14);
  v58 = v57;

  if (!v58)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v81 = *(v0 + 200);
  v59 = *(v0 + 184);
  v78 = *(v0 + 240);
  v79 = *(v0 + 176);
  v76 = *(v0 + 208);
  v77 = *(v0 + 136);
  v75 = *(v0 + 112);
  v60 = *(v0 + 72);
  v61 = sub_1B81B7ED8(v56, v58, v87);

  *(v52 + 1) = v61;
  *(v52 + 6) = 2080;
  v62 = [v60 uniqueIdentifier];
  v63 = sub_1B81F8F98();
  v65 = v64;

  v66 = sub_1B81B7ED8(v63, v65, v87);

  *(v52 + 14) = v66;
  OUTLINED_FUNCTION_6_6(&dword_1B8182000, v67, v68, "SGTextProcessingServiceWrapper: CSSearchableItem '%s : %s' is missing source identifiers");
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();

  (v84)(v78, v76);
  v85(v77, v75);
  (*(v59 + 8))(v81, v79);
LABEL_15:
  v86 = *(v0 + 64);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  OUTLINED_FUNCTION_4_11();

  v74 = *(v0 + 8);

  v74(v86);
}

uint64_t sub_1B81E31A4()
{
  v1 = *(v0 + 312);
  (*(v0 + 272))(*(v0 + 224), *(v0 + 80) + *(v0 + 264), *(v0 + 208));
  v2 = v1;
  v3 = sub_1B81F8028();
  v4 = sub_1B81F9188();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B8182000, v3, v4, "SGTextProcessingServiceWrapper: Text processing failed: %@", v6, 0xCu);
    sub_1B8192D84(v7, &unk_1EBA7D190, &unk_1B81FFFD0);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_5_1();
  }

  v10 = *(v0 + 312);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v14 = *(v0 + 200);
  v13 = *(v0 + 208);
  v15 = *(v0 + 176);
  v16 = *(v0 + 184);

  (*(v12 + 8))(v11, v13);
  (*(v16 + 8))(v14, v15);
  v19 = *(v0 + 64);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  OUTLINED_FUNCTION_4_11();

  v17 = *(v0 + 8);

  return v17(v19);
}

uint64_t sub_1B81E33D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v19 = a6;
  sub_1B81F7A28();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8189AF0(0, &qword_1EBA7E350, 0x1E6999218);
  sub_1B81F7B28();
  v14 = sub_1B81E5040(a1, a2, a3, a4, a5, v13);
  v15 = OUTLINED_FUNCTION_17_7();
  result = v16(v15);
  *v19 = v14;
  return result;
}

void *sub_1B81E3508(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = sub_1B81F7E38();
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = (v5)(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x1B8CBAEA0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B81F90D8();
      }

      result = sub_1B81F90E8();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B81E370C(void *a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;
  a4;
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1B81E37D8;

  return SGTextProcessingServiceWrapper.suggestions(from:persistResults:)();
}

uint64_t sub_1B81E37D8()
{
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_4_10();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v6 = v5;

  sub_1B8189AF0(0, &unk_1EDC8A2A0, 0x1E69E58C0);
  v7 = sub_1B81F90A8();

  (v2)[2](v2, v7);

  _Block_release(v2);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1B81E3968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958, &qword_1B81FEF70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1B81F9138();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1B8200470;
  v9[5] = v8;
  sub_1B81E3DD4(0, 0, v6, &unk_1B8200480, v9);
}

id SGTextProcessingServiceWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B81E3B24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B81E4EF8;

  return v6();
}

uint64_t sub_1B81E3C0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B81E3CF4;

  return v7();
}

uint64_t sub_1B81E3CF4()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_10();
  v1 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11_5();

  return v3();
}

uint64_t sub_1B81E3DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D958, &qword_1B81FEF70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1B81BBD0C(a3, v22 - v10);
  v12 = sub_1B81F9138();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B8192D84(v11, &qword_1EBA7D958, &qword_1B81FEF70);
  }

  else
  {
    sub_1B81F9128();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1B81F90F8();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1B81F8FB8() + 32;
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

      sub_1B8192D84(a3, &qword_1EBA7D958, &qword_1B81FEF70);

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

  sub_1B8192D84(a3, &qword_1EBA7D958, &qword_1B81FEF70);
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

uint64_t sub_1B81E40A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B81E4198;

  return v6(a1);
}

uint64_t sub_1B81E4198()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_4_10();
  v1 = *v0;
  OUTLINED_FUNCTION_10_4();
  *v2 = v1;

  OUTLINED_FUNCTION_11_5();

  return v3();
}

uint64_t sub_1B81E427C(uint64_t a1)
{
  v2 = sub_1B81F7EC8();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E358, &qword_1B82004A8);
  result = sub_1B81F9258();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1B81E4EB4(&unk_1EDC8A480, MEMORY[0x1E69DA010]);
    v14 = sub_1B81F8F18();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_1B81E4EB4(&qword_1EDC8A478, MEMORY[0x1E69DA018]);
      v21 = sub_1B81F8F48();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1B81E45A4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B81E45C8(unint64_t a1)
{
  v3 = sub_1B8189548(a1);
  v4 = sub_1B8189548(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1B81E4674(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B81E4C48(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B81E4674(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B81F9348();
LABEL_9:
  result = sub_1B81F92B8();
  *v2 = result;
  return result;
}

uint64_t sub_1B81E4714(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B81F8F98();

  return v3;
}

uint64_t type metadata accessor for SGTextProcessingServiceWrapper(uint64_t a1)
{
  result = qword_1EDC8B360;
  if (!qword_1EDC8B360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B81E4800(uint64_t a1)
{
  result = sub_1B81F8058();
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

uint64_t sub_1B81E48A0()
{
  OUTLINED_FUNCTION_11_11();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B81E3CF4;

  return sub_1B81E370C(v2, v3, v5, v4);
}

uint64_t sub_1B81E4960()
{
  OUTLINED_FUNCTION_11_11();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B81E4EF8;
  v2 = OUTLINED_FUNCTION_133();

  return v3(v2);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B81E4A58()
{
  OUTLINED_FUNCTION_11_11();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_6(v6);
  *v7 = v8;
  v7[1] = sub_1B81E4EF8;

  return sub_1B81E3C0C(v2, v3, v4, v5);
}

uint64_t sub_1B81E4B18()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81E4BB0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1B81E4C48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B81F9348();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B8189548(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1B8189AF0(0, &unk_1EDC8A2A0, 0x1E69E58C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B81E4E50();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E340, &qword_1B82004A0);
          v9 = sub_1B81E4DBC(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1B81E4DBC(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1B81E4598(a3);
  sub_1B81E45A4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1B8CBB0B0](a2, a3);
  }

  *a1 = v7;
  return sub_1B81E4E48;
}

unint64_t sub_1B81E4E50()
{
  result = qword_1EBA7E348;
  if (!qword_1EBA7E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA7E340, &qword_1B82004A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E348);
  }

  return result;
}

uint64_t sub_1B81E4EB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B81F7EC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_6_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_15_8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1B81E4FC4()
{
  v0 = sub_1B81F8058();
  __swift_allocate_value_buffer(v0, qword_1EBA7F620);
  v1 = OUTLINED_FUNCTION_16_0();
  __swift_project_value_buffer(v1, v2);
  sub_1B8186FE0();

  return sub_1B81F8038();
}

id sub_1B81E5040(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v208 = a6;
  v215 = a5;
  v214 = a4;
  v213 = a3;
  v212 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7D868, &unk_1B81FE8E0);
  v8 = OUTLINED_FUNCTION_21(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v194 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA7E270, &unk_1B8200260);
  v12 = OUTLINED_FUNCTION_21(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31();
  v209 = v14;
  OUTLINED_FUNCTION_37_0();
  v207 = sub_1B81F7AB8();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v203 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7DCB8, &qword_1B81FF0B0);
  v18 = OUTLINED_FUNCTION_21(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31();
  v211 = v22;
  OUTLINED_FUNCTION_37_0();
  v216 = sub_1B81F7A28();
  OUTLINED_FUNCTION_1_0();
  v217 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_31();
  v219 = v28;
  OUTLINED_FUNCTION_37_0();
  v29 = sub_1B81F7C78();
  OUTLINED_FUNCTION_1_0();
  v231 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  v225 = v32;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_40_0();
  v230 = v34;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40_0();
  v226 = v36;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_40_0();
  v229 = v38;
  OUTLINED_FUNCTION_19();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = (&v194 - v41);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v194 - v43;
  v224 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v46 = v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_14_2();
  v50 = v48 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_31();
  v232 = v54;
  OUTLINED_FUNCTION_37_0();
  v55 = sub_1B81F7DF8();
  OUTLINED_FUNCTION_1_0();
  v57 = v56;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_6();
  v61 = v60 - v59;
  if ((sub_1B81F7B48() & 1) == 0)
  {
    if (qword_1EBA7F3F8 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
    }

    v72 = v224;
    v73 = __swift_project_value_buffer(v224, qword_1EBA7F620);
    OUTLINED_FUNCTION_10_11(v73);
    (*(v46 + 16))(v50, v44, v72);
    v74 = sub_1B81F8028();
    v75 = sub_1B81F91A8();
    if (OUTLINED_FUNCTION_14_11(v75))
    {
      *OUTLINED_FUNCTION_6_1() = 0;
      OUTLINED_FUNCTION_12_11(&dword_1B8182000, v76, v77, "SGExternalEventExtraction: extraction is not a valid calendar event");
      OUTLINED_FUNCTION_5_1();
    }

    (*(v46 + 8))(v50, v72);
    return 0;
  }

  v195 = v10;
  v218 = v46;
  sub_1B81F7E08();
  v62 = (*(v57 + 88))(v61, v55);
  v63 = *MEMORY[0x1E69D9FA0];
  (*(v57 + 8))(v61, v55);
  if (v62 == v63)
  {
    if (qword_1EBA7F3F8 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
    }

    v64 = v224;
    v65 = __swift_project_value_buffer(v224, qword_1EBA7F620);
    OUTLINED_FUNCTION_10_11(v65);
    v66 = v218;
    v67 = v232;
    (*(v218 + 16))(v232, v44, v64);
    v68 = sub_1B81F8028();
    v69 = sub_1B81F9188();
    if (OUTLINED_FUNCTION_14_11(v69))
    {
      *OUTLINED_FUNCTION_6_1() = 0;
      OUTLINED_FUNCTION_12_11(&dword_1B8182000, v70, v71, "SGExternalEventExtraction: ignore unexpected generic event");
      OUTLINED_FUNCTION_5_1();
    }

    (*(v66 + 8))(v67, v64);
    return 0;
  }

  v79 = sub_1B81F7C88();
  v196 = a1;
  if (v79)
  {
    v80 = *(v79 + 16);
    v194 = v79;
    if (v80)
    {
      v81 = *(v231 + 16);
      v82 = v79 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
      v83 = *(v231 + 72);
      v228 = v231 + 88;
      LODWORD(v227) = *MEMORY[0x1E69D9F28];
      v84 = (v231 + 8);
      v220 = v231 + 96;
      v232 = MEMORY[0x1E69E7CC0];
      v222 = v81;
      v223 = (v231 + 16);
      v221 = v83;
      do
      {
        (v81)(v44, v82, v29);
        (v81)(v42, v44, v29);
        v85 = OUTLINED_FUNCTION_11_12();
        v87 = v86(v85);
        if (v87 == v227)
        {
          v88 = OUTLINED_FUNCTION_11_12();
          v89(v88);
          v90 = *v42;
          v91 = v42[1];
          if (sub_1B81F9058())
          {
            v235 = v90;
            v236 = v91;
            v233 = 124;
            v234 = 0xE100000000000000;
            sub_1B81E7774();
            sub_1B81F9148();

            v90 = MEMORY[0x1B8CBADD0](v237, v238, v239, v240);
            v91 = v92;
          }

          (*v84)(v44, v29);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v93 = v232;
          }

          else
          {
            v98 = OUTLINED_FUNCTION_16_7();
            v93 = sub_1B81891F8(v98, v99, v100, v101);
          }

          v95 = *(v93 + 2);
          v94 = *(v93 + 3);
          if (v95 >= v94 >> 1)
          {
            v93 = sub_1B81891F8((v94 > 1), v95 + 1, 1, v93);
          }

          *(v93 + 2) = v95 + 1;
          v232 = v93;
          v96 = &v93[16 * v95];
          *(v96 + 4) = v90;
          *(v96 + 5) = v91;
          v81 = v222;
          v83 = v221;
        }

        else
        {
          v97 = *v84;
          (*v84)(v44, v29);
          v97(v42, v29);
        }

        v82 += v83;
        --v80;
      }

      while (v80);
    }

    else
    {
      v232 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v232 = 0;
  }

  v102 = sub_1B81F7C88();
  v103 = v218;
  v104 = v219;
  v105 = v226;
  if (v102)
  {
    v103 = *(v102 + 16);
    v220 = v102;
    if (v103)
    {
      v106 = *(v231 + 16);
      v107 = v102 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
      v228 = *(v231 + 72);
      v108 = (v231 + 32);
      v109 = (v231 + 88);
      LODWORD(v227) = *MEMORY[0x1E69D9F20];
      v221 = (v231 + 96);
      v222 = (v231 + 8);
      v110 = MEMORY[0x1E69E7CC0];
      v223 = v106;
      do
      {
        v104 = v229;
        v106(v229, v107, v29);
        (*v108)(v105, v104, v29);
        v111 = (*v109)(v105, v29);
        if (v111 == v227)
        {
          v112 = OUTLINED_FUNCTION_11_12();
          v113(v112);
          v114 = v105;
          v115 = *v105;
          v104 = v114[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = OUTLINED_FUNCTION_16_7();
            v110 = sub_1B81891F8(v122, v123, v124, v110);
          }

          v117 = *(v110 + 2);
          v116 = *(v110 + 3);
          v118 = v110;
          if (v117 >= v116 >> 1)
          {
            v118 = sub_1B81891F8((v116 > 1), v117 + 1, 1, v110);
          }

          *(v118 + 2) = v117 + 1;
          v110 = v118;
          v119 = &v118[16 * v117];
          *(v119 + 4) = v115;
          *(v119 + 5) = v104;
          v105 = v226;
          v106 = v223;
        }

        else
        {
          v120 = OUTLINED_FUNCTION_11_12();
          v121(v120);
        }

        v107 += v228;
        --v103;
      }

      while (v103);
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_13_11();
  }

  else
  {
    v110 = 0;
  }

  v222 = sub_1B81F7C88();
  if (v222)
  {
    v221 = v110;
    v125 = *(v222 + 2);
    if (v125)
    {
      v104 = *(v231 + 16);
      v126 = &v222[(*(v231 + 80) + 32) & ~*(v231 + 80)];
      v127 = *(v231 + 72);
      v128 = (v231 + 32);
      LODWORD(v229) = *MEMORY[0x1E69D9F30];
      v226 = (v231 + 8);
      v231 += 16;
      v223 = (v231 + 80);
      v129 = MEMORY[0x1E69E7CC0];
      v103 = v225;
      v227 = v127;
      v228 = v104;
      do
      {
        v130 = v230;
        v104(v230, v126, v29);
        (*v128)(v103, v130, v29);
        v131 = OUTLINED_FUNCTION_8_7();
        v133 = v132(v131);
        if (v133 == v229)
        {
          v134 = OUTLINED_FUNCTION_8_7();
          v135(v134);
          v136 = *v103;
          v137 = *(v103 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = OUTLINED_FUNCTION_16_7();
            v129 = sub_1B81891F8(v143, v144, v145, v129);
          }

          v139 = *(v129 + 2);
          v138 = *(v129 + 3);
          if (v139 >= v138 >> 1)
          {
            v129 = sub_1B81891F8((v138 > 1), v139 + 1, 1, v129);
          }

          *(v129 + 2) = v139 + 1;
          v140 = &v129[16 * v139];
          *(v140 + 4) = v136;
          *(v140 + 5) = v137;
          v103 = v225;
          v127 = v227;
          v104 = v228;
        }

        else
        {
          v141 = OUTLINED_FUNCTION_8_7();
          v142(v141);
        }

        v126 += v127;
        --v125;
      }

      while (v125);
    }

    else
    {
      v129 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_13_11();
    v110 = v221;
  }

  else
  {
    v129 = 0;
  }

  v146 = v224;
  v147 = v216;
  if (v232)
  {
    if (*(v232 + 2))
    {
      v148 = *(v232 + 5);
      v228 = *(v232 + 4);
      v230 = v148;

      goto LABEL_73;
    }
  }

  if (!v110 || !*(v110 + 2))
  {
    if (v129)
    {
      if (*(v129 + 2))
      {
        v150 = *(v129 + 4);
        v149 = *(v129 + 5);
        goto LABEL_72;
      }
    }

    if (qword_1EBA7F3F8 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
    }

    v188 = __swift_project_value_buffer(v146, qword_1EBA7F620);
    OUTLINED_FUNCTION_10_11(v188);
    v189 = v201;
    (*(v103 + 16))(v201, v129, v146);
    v190 = sub_1B81F8028();
    v191 = sub_1B81F9188();
    if (OUTLINED_FUNCTION_14_11(v191))
    {
      *OUTLINED_FUNCTION_6_1() = 0;
      OUTLINED_FUNCTION_12_11(&dword_1B8182000, v192, v193, "SGExternalEventExtraction: TextUnderstanding.Event is missing unique identifier");
      OUTLINED_FUNCTION_5_1();
    }

    (*(v103 + 8))(v189, v146);
    return 0;
  }

  v150 = *(v110 + 4);
  v149 = *(v110 + 5);
LABEL_72:
  v228 = v150;
  v230 = v149;

LABEL_73:

  v229 = sub_1B81C54AC(v212, v213, v214, v215);
  v151 = sub_1B81E6294();
  v231 = v152;
  v232 = v151;
  v153 = sub_1B81F7E18();
  v154 = v211;
  if (v153)
  {
    sub_1B81F7E28();
    if (__swift_getEnumTagSinglePayload(v154, 1, v147) != 1)
    {
      v156 = v110;
      v157 = v217;
      v158 = *(v217 + 32);
      v158(v104, v154, v147);
      v159 = *(v157 + 16);
      v159(v202, v104, v147);
      sub_1B81DA404(v203);
      v160 = v198;
      sub_1B81F7DE8();
      v161 = v160;
      if (__swift_getEnumTagSinglePayload(v160, 1, v147) == 1)
      {
        v162 = v197;
        v159(v197, v104, v147);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v161, 1, v147);
        v164 = v218;
        v165 = v199;
        if (EnumTagSinglePayload != 1)
        {
          sub_1B81BBD7C(v161, &qword_1EBA7DCB8, &qword_1B81FF0B0);
        }
      }

      else
      {
        v162 = v197;
        v158(v197, v161, v147);
        v164 = v218;
        v165 = v199;
      }

      sub_1B8189AF0(0, &qword_1EBA7E360, 0x1E6999290);
      v180 = v200;
      sub_1B81DA684(v200);
      v181 = sub_1B81E644C(v202, v203, v162, v180);
      if (([v181 isValidAllDayRange] & 1) == 0)
      {

        if (qword_1EBA7F3F8 != -1)
        {
          OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
        }

        v182 = __swift_project_value_buffer(v146, qword_1EBA7F620);
        OUTLINED_FUNCTION_10_11(v182);
        v183 = OUTLINED_FUNCTION_23_1();
        v184(v183);
        v185 = sub_1B81F8028();
        v186 = sub_1B81F9188();
        if (OUTLINED_FUNCTION_14_11(v186))
        {
          v187 = OUTLINED_FUNCTION_6_1();
          *v187 = 0;
          _os_log_impl(&dword_1B8182000, v185, v165, "SGExternalEventExtraction: TextUnderstanding.Event has invalid time range for an all day event", v187, 2u);
          OUTLINED_FUNCTION_5_1();
        }

        sub_1B81E7760(v232, v231);
        (*(v164 + 8))(v165, v146);
        (*(v217 + 8))(v219, v147);
        return 0;
      }

      (*(v217 + 8))(v219, v147);

      v110 = v156;
      if (!v156)
      {
        goto LABEL_83;
      }

      goto LABEL_77;
    }

    sub_1B81BBD7C(v154, &qword_1EBA7DCB8, &qword_1B81FF0B0);
  }

  if (!v110)
  {
LABEL_83:
    v226 = 0;
    v227 = 0;
    goto LABEL_84;
  }

LABEL_77:
  if (!*(v110 + 2))
  {

    goto LABEL_83;
  }

  v155 = *(v110 + 4);
  v226 = *(v110 + 5);
  v227 = v155;

LABEL_84:
  v225 = sub_1B81E65B0();
  v224 = sub_1B81E6A1C();
  v166 = sub_1B81F7DB8();
  v222 = v167;
  v223 = v166;
  v168 = sub_1B81F7DA8();
  v170 = v169;
  v171 = v204;
  (*(v217 + 16))(v204, v208, v147);
  v172 = v205;
  sub_1B81F7E28();
  v173 = v209;
  sub_1B81DA404(v209);
  v174 = v207;
  __swift_storeEnumTagSinglePayload(v173, 0, 1, v207);
  v175 = v206;
  sub_1B81F7DE8();
  v176 = v210;
  sub_1B81DA684(v210);
  __swift_storeEnumTagSinglePayload(v176, 0, 1, v174);
  v177 = sub_1B81F7E18();
  v178 = v195;
  sub_1B81F7D98();
  v179 = objc_allocWithZone(MEMORY[0x1E6999218]);
  return sub_1B81E7348(v228, v230, v227, v226, v225, v224, v223, v222, v168, v170, v171, v172, v173, v175, v176, v177 & 1, v229, v232, v231, v178);
}

uint64_t sub_1B81E6294()
{
  sub_1B81F7DF8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  v3 = v2 - v1;
  v4 = sub_1B81F7CB8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v10 = v9 - v8;
  sub_1B81F7E08();
  v11 = OUTLINED_FUNCTION_125();
  if (v12(v11) == *MEMORY[0x1E69D9FB0])
  {
    v13 = OUTLINED_FUNCTION_125();
    v14(v13);
    (*(v6 + 32))(v10, v3, v4);
    sub_1B81F7C98();
    (*(v6 + 8))(v10, v4);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_125();
    v16(v15);
  }

  return OUTLINED_FUNCTION_16_0();
}

id sub_1B81E644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B81F7A08();
  v9 = sub_1B81F7A98();
  v10 = sub_1B81F7A08();
  v11 = sub_1B81F7A98();
  v12 = [swift_getObjCClassFromMetadata() rangeWithStartDate:v8 startTimeZone:v9 endDate:v10 endTimeZone:v11];

  v13 = sub_1B81F7AB8();
  v14 = *(*(v13 - 8) + 8);
  v14(a4, v13);
  v15 = sub_1B81F7A28();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v14(a2, v13);
  v16(a1, v15);
  return v12;
}

uint64_t sub_1B81E65B0()
{
  v1 = sub_1B81F7E38();
  OUTLINED_FUNCTION_1_0();
  v38 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6();
  v6 = v5 - v4;
  v7 = sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v12 - v11;
  v14 = sub_1B81F7DC8();
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  sub_1B81F7DD8();
  v21 = (*(v16 + 88))(v20, v14);
  if (v21 == *MEMORY[0x1E69D9F98])
  {
    return 1;
  }

  if (v21 == *MEMORY[0x1E69D9F80])
  {
    return 2;
  }

  if (v21 == *MEMORY[0x1E69D9F90])
  {
    return 3;
  }

  if (v21 == *MEMORY[0x1E69D9F88])
  {
    return 4;
  }

  if (v21 == *MEMORY[0x1E69D9F70])
  {
    return 5;
  }

  if (v21 == *MEMORY[0x1E69D9F68])
  {
    return 6;
  }

  if (v21 == *MEMORY[0x1E69D9F60])
  {
    return 7;
  }

  if (v21 != *MEMORY[0x1E69D9F78])
  {
    if (qword_1EBA7F3F8 != -1)
    {
      OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
    }

    v36 = __swift_project_value_buffer(v7, qword_1EBA7F620);
    swift_beginAccess();
    v37 = v9;
    (*(v9 + 16))(v13, v36, v7);
    v23 = v38;
    (*(v38 + 16))(v6, v0, v1);
    v24 = sub_1B81F8028();
    LODWORD(v36) = sub_1B81F9188();
    if (os_log_type_enabled(v24, v36))
    {
      v35 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v35 = 136315138;
      v33 = v24;
      sub_1B81F7DD8();
      v25 = sub_1B81F8FA8();
      v27 = v26;
      (*(v23 + 8))(v6, v1);
      v28 = sub_1B81B7ED8(v25, v27, &v39);

      v29 = v35;
      *(v35 + 4) = v28;
      v30 = v33;
      _os_log_impl(&dword_1B8182000, v33, v36, "Unsupported event status %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_5_1();
    }

    else
    {

      (*(v23 + 8))(v6, v1);
    }

    v31 = OUTLINED_FUNCTION_125();
    v32(v31);
    (*(v16 + 8))(v20, v14);
  }

  return 0;
}

uint64_t sub_1B81E6A1C()
{
  sub_1B81F7E38();
  OUTLINED_FUNCTION_1_0();
  v99[2] = v1;
  v99[3] = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6();
  v99[1] = v3 - v2;
  OUTLINED_FUNCTION_37_0();
  sub_1B81F8058();
  OUTLINED_FUNCTION_1_0();
  v101 = v5;
  v102 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v100 = v7 - v6;
  OUTLINED_FUNCTION_37_0();
  sub_1B81F7D28();
  OUTLINED_FUNCTION_1_0();
  v108 = v9;
  v109 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v103 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  v105 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B81F7D48();
  OUTLINED_FUNCTION_1_0();
  v106 = v15;
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA7E370, &unk_1B82004B0);
  v20 = OUTLINED_FUNCTION_21(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v99 - v21;
  v23 = sub_1B81F7BA8();
  OUTLINED_FUNCTION_1_0();
  v104 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v28 = v27 - v26;
  v29 = sub_1B81F7DF8();
  OUTLINED_FUNCTION_1_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v99 - v34;
  sub_1B81F7E08();
  v36 = (*(v31 + 88))(v35, v29);
  if (v36 == *MEMORY[0x1E69D9FE0])
  {
    v37 = OUTLINED_FUNCTION_6_7();
    v38(v37);
    return 1;
  }

  else if (v36 == *MEMORY[0x1E69D9FB8])
  {
    v40 = OUTLINED_FUNCTION_6_7();
    v41(v40);
    return 4;
  }

  else if (v36 == *MEMORY[0x1E69D9FC8])
  {
    v42 = OUTLINED_FUNCTION_6_7();
    v43(v42);
    return 8;
  }

  else if (v36 == *MEMORY[0x1E69D9FC0])
  {
    (*(v31 + 96))(v35, v29);
    (*(v106 + 32))(v18, v35, v107);
    sub_1B81F7D38();
    v44 = v108;
    isa = v108[11].isa;
    v46 = OUTLINED_FUNCTION_8_7();
    if ((isa)(v46) == *MEMORY[0x1E69D9F48])
    {
      v47 = OUTLINED_FUNCTION_17_8();
      v48(v47);
      v49 = OUTLINED_FUNCTION_8_7();
      v50(v49);
      return 2;
    }

    else
    {
      v54 = v44[1].isa;
      v55 = OUTLINED_FUNCTION_8_7();
      v54(v55);
      sub_1B81F7D38();
      v56 = OUTLINED_FUNCTION_8_7();
      if ((isa)(v56) == *MEMORY[0x1E69D9F50])
      {
        v57 = OUTLINED_FUNCTION_17_8();
        v58(v57);
        v59 = OUTLINED_FUNCTION_8_7();
        v54(v59);
        return 10;
      }

      else
      {
        v68 = OUTLINED_FUNCTION_8_7();
        v54(v68);
        sub_1B81F7D38();
        v69 = OUTLINED_FUNCTION_17_8();
        v70(v69);
        v71 = OUTLINED_FUNCTION_8_7();
        v72 = (isa)(v71);
        v73 = *MEMORY[0x1E69D9F58];
        v74 = OUTLINED_FUNCTION_8_7();
        v54(v74);
        if (v72 == v73)
        {
          return 3;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else if (v36 == *MEMORY[0x1E69D9FD0])
  {
    (*(v31 + 96))(v35, v29);
    (*(v104 + 32))(v28, v35, v23);
    sub_1B81F7B98();
    v51 = OUTLINED_FUNCTION_18_8();
    v52(v51);
    v53 = sub_1B81F7B88();
    if (__swift_getEnumTagSinglePayload(v22, 1, v53) == 1)
    {
      sub_1B81BBD7C(v22, &qword_1EBA7E370, &unk_1B82004B0);
      return 6;
    }

    else
    {
      v62 = OUTLINED_FUNCTION_23_1();
      v64 = v63(v62);
      v65 = *MEMORY[0x1E69D9EF8];
      v66 = OUTLINED_FUNCTION_23_1();
      v67(v66);
      if (v64 == v65)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }
  }

  else if (v36 == *MEMORY[0x1E69D9FE8])
  {
    v60 = OUTLINED_FUNCTION_6_7();
    v61(v60);
    return 5;
  }

  else if (v36 == *MEMORY[0x1E69D9FA8])
  {
    v75 = OUTLINED_FUNCTION_6_7();
    v76(v75);
    return 11;
  }

  else if (v36 == *MEMORY[0x1E69D9FD8])
  {
    v77 = OUTLINED_FUNCTION_6_7();
    v78(v77);
    return 9;
  }

  else
  {
    if (v36 != *MEMORY[0x1E69D9FA0] && v36 != *MEMORY[0x1E69D9FB0])
    {
      if (qword_1EBA7F3F8 != -1)
      {
        OUTLINED_FUNCTION_0_9(&qword_1EBA7F3F8);
      }

      __swift_project_value_buffer(v102, qword_1EBA7F620);
      swift_beginAccess();
      v80 = v100;
      v79 = v101;
      v81 = OUTLINED_FUNCTION_23_1();
      v82(v81);
      v83 = OUTLINED_FUNCTION_16_0();
      v84(v83);
      v85 = sub_1B81F8028();
      LODWORD(v109) = sub_1B81F9188();
      if (os_log_type_enabled(v85, v109))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v110 = v87;
        *v86 = 136315138;
        v108 = v85;
        sub_1B81F7E08();
        v88 = sub_1B81F8FA8();
        v90 = v89;
        v91 = OUTLINED_FUNCTION_18_8();
        v92(v91);
        v93 = sub_1B81B7ED8(v88, v90, &v110);

        *(v86 + 4) = v93;
        v94 = v108;
        _os_log_impl(&dword_1B8182000, v108, v109, "Unsupported event status %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_5_1();

        (*(v101 + 8))(v100, v102);
      }

      else
      {

        v95 = OUTLINED_FUNCTION_18_8();
        v96(v95);
        (*(v79 + 8))(v80, v102);
      }
    }

    v97 = OUTLINED_FUNCTION_6_7();
    v98(v97);
    return 0;
  }
}

id sub_1B81E7348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20)
{
  v37 = sub_1B81F8F58();

  if (a4)
  {
    v36 = sub_1B81F8F58();
  }

  else
  {
    v36 = 0;
  }

  v35 = sub_1B81F8F58();

  if (a10)
  {
    v34 = sub_1B81F8F58();
  }

  else
  {
    v34 = 0;
  }

  v33 = sub_1B81F7A08();
  v21 = sub_1B81F7A28();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(a12, 1, v21) != 1)
  {
    v22 = sub_1B81F7A08();
    (*(*(v21 - 8) + 8))(a12, v21);
  }

  v23 = sub_1B81F7AB8();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(a13, 1, v23) != 1)
  {
    v24 = sub_1B81F7A98();
    (*(*(v23 - 8) + 8))(a13, v23);
  }

  if (__swift_getEnumTagSinglePayload(a14, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_1B81F7A08();
    (*(*(v21 - 8) + 8))(a14, v21);
  }

  if (__swift_getEnumTagSinglePayload(a15, 1, v23) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1B81F7A98();
    (*(*(v23 - 8) + 8))(a15, v23);
  }

  sub_1B8189AF0(0, &qword_1EBA7E378, 0x1E6999228);
  v27 = sub_1B81F90A8();

  v28 = 0;
  if (a19 >> 60 != 15)
  {
    v28 = sub_1B81F79E8();
    sub_1B81E7760(a18, a19);
  }

  v29 = sub_1B81F79D8();
  v30 = 0;
  if (__swift_getEnumTagSinglePayload(a20, 1, v29) != 1)
  {
    v30 = sub_1B81F79A8();
    (*(*(v29 - 8) + 8))(a20, v29);
  }

  LOBYTE(v32) = a16 & 1;
  v41 = [v38 initWithIdentifier:v37 fallbackIdentifier:v36 status:a5 category:a6 title:v35 content:v34 creationDate:v33 startTime:v22 startTimeZone:v24 endTime:v25 endTimeZone:v26 isAllDay:v32 locations:v27 icsAttachmentData:v28 url:v30];

  (*(*(v21 - 8) + 8))(a11);
  return v41;
}

uint64_t sub_1B81E7760(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B81B85E4(a1, a2);
  }

  return a1;
}

unint64_t sub_1B81E7774()
{
  result = qword_1EBA7E368;
  if (!qword_1EBA7E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA7E368);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_12_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_14_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1B81E7AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSGMailClientUtilClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreSuggestionsInternalsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreSuggestionsInternalsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7CD9150;
    v6 = 0;
    CoreSuggestionsInternalsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreSuggestionsInternalsLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SGMailClientUtil");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "SGMailClientUtil");
  }

  getSGMailClientUtilClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreSuggestionsInternalsLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreSuggestionsInternalsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getEKEventViewControllerClass_block_invoke(uint64_t a1)
{
  EventKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EKEventViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "EKEventViewController");
    __44__SGEventSuggestion_suggestionPrimaryAction__block_invoke_34(v2, v3);
  }
}

void EventKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!EventKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __EventKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7CD9230;
    v3 = 0;
    EventKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (EventKitUILibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __EventKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  EventKitUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getEKEventEditViewControllerClass_block_invoke(uint64_t a1)
{
  EventKitUILibrary();
  result = objc_getClass("EKEventEditViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getEKEventEditViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "EKEventEditViewController");
    return [(SGEventSuggestion *)v3 suggestionAttributedSubtitle];
  }

  return result;
}

void __getFKSaveOrderClass_block_invoke(uint64_t a1)
{
  FinanceKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FKSaveOrder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFKSaveOrderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "FKSaveOrder");
    __61__SGWalletOrderSuggestionHelpers_saveOrderForURL_completion___block_invoke(v2, v3, v4);
  }
}

void FinanceKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FinanceKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FinanceKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7CD9270;
    v3 = 0;
    FinanceKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (FinanceKitUILibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __FinanceKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B81EA828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFKOrderImportPreviewControllerProviderClass_block_invoke(uint64_t a1)
{
  FinanceKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FKOrderImportPreviewControllerProvider");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFKOrderImportPreviewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "FKOrderImportPreviewControllerProvider");
    __74__SGWalletOrderSuggestionHelpers_orderPreviewControllerForURL_completion___block_invoke(v2, v3, v4);
  }
}

void sub_1B81EAD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFKSuggestionsOrderBannerClass_block_invoke(uint64_t a1)
{
  FinanceKitUILibrary();
  result = objc_getClass("FKSuggestionsOrderBanner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFKSuggestionsOrderBannerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "FKSuggestionsOrderBanner");
    return [(SGContactSuggestionHelpers *)v3 formattedStringForPhone:v4, v5];
  }

  return result;
}

uint64_t dispatchInContext(uint64_t a1, uint64_t a2)
{
  v2 = _currentContext;
  if (_currentContext == a1)
  {
    v3 = *(a2 + 16);

    return v3(a2);
  }

  else
  {
    _currentContext = a1;
    result = (*(a2 + 16))(a2);
    _currentContext = v2;
  }

  return result;
}

id suggestionImage(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v1 suggestionImage], (v2 = objc_claimAutoreleasedReturnValue()) == 0) && _currentContext)
  {
    v3 = [v1 suggestionCategory];
    v2 = [v3 suggestionCategoryImage];
  }

  return v2;
}

id suggestionImageSGView(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 suggestionImageSGView];
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = [v1 suggestionCategory];
    v2 = [v3 suggestionCategoryImageSGView];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void runOnMainThread(void *a1)
{
  v1 = MEMORY[0x1E696AF00];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void runOnMainThreadSync(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

id getRealtimeSuggestion(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 realtimeSuggestion];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *SGUserInterfaceIdiomToNSString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"Unspecified";
  }

  else
  {
    return *(&off_1E7CD9288 + a1);
  }
}

void sub_1B81EB674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKAddPassesViewControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKAddPassesViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKAddPassesViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np("Unable to find class %s", "PKAddPassesViewController");
    PassKitUILibrary();
  }
}

void PassKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7CD92D8;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (PassKitUILibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

uint64_t __PassKitUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B81EB95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPassViewClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPassView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np("Unable to find class %s", "PKPassView");
    return [(SGWalletPassViewManager *)v3 icon];
  }

  return result;
}

void sub_1B81EBD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPassClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7CD92C0;
    v6 = 0;
    PassKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PassKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKPass");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "PKPass");
  }

  getPKPassClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *timeStringForDate(void *a1)
{
  v1 = a1;
  v2 = [v1 startDate];
  v3 = [v1 endDate];
  v4 = &stru_1F3012140;
  v5 = &stru_1F3012140;
  if (([v1 isAllDay] & 1) == 0)
  {
    if (v3)
    {
      if (isMultiDayEvent(v1))
      {
        v6 = +[SGUIDateFormatting multiDayDateFormatter];
        v7 = [v6 stringFromDate:v2];

        v8 = MEMORY[0x1E696AEC0];
        v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
        v10 = [v9 localizedStringForKey:@"SuggestionsBannerMultiEventsTimeFormat" value:&stru_1F3012140 table:0];
        v5 = [v8 localizedStringWithFormat:v10, v7];
      }

      else
      {
        v11 = +[SGUIDateFormatting singleDayTimeFormatter];
        v7 = [v11 stringFromDate:v2];

        v12 = +[SGUIDateFormatting singleDayTimeFormatter];
        v9 = [v12 stringFromDate:v3];

        v13 = MEMORY[0x1E696AEC0];
        v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
        v14 = [v10 localizedStringForKey:@"SuggestionsBannerSingleEventTimeFormat%1$@%2$@" value:&stru_1F3012140 table:0];
        v5 = [v13 localizedStringWithFormat:v14, v7, v9];
      }
    }

    else
    {
      v7 = +[SGUIDateFormatting fullDayTimeFormatter];
      v5 = [v7 stringFromDate:v2];
    }

    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = &stru_1F3012140;
    }

    v4 = v15;
  }

  return v4;
}

BOOL isMultiDayEvent(void *a1)
{
  v1 = a1;
  v2 = [v1 endDate];
  v3 = [v1 startDate];

  [v2 timeIntervalSinceDate:v3];
  v5 = v4 >= 86400.0;

  return v5;
}

__CFString *dateStringForDate(void *a1)
{
  v1 = a1;
  v2 = [v1 startDate];
  v3 = [v1 endDate];
  if ([v1 isAllDay])
  {
    v4 = +[SGUIDateFormatting allDayFormatter];
    v5 = v4;
LABEL_8:
    v15 = [v4 stringFromDate:v2];
    v6 = v15;
    v16 = &stru_1F3012140;
    if (v15)
    {
      v16 = v15;
    }

    v14 = v16;
    goto LABEL_11;
  }

  if (!isMultiDayEvent(v1))
  {
    v5 = +[SGUIDateFormatting allDayFormatter];
    [v5 setDoesRelativeDateFormatting:1];
    v4 = v5;
    goto LABEL_8;
  }

  v5 = +[SGUIDateFormatting singleDayDateFormatter];
  v6 = [v5 stringFromDate:v2];
  v7 = [v5 stringFromDate:v3];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreSuggestionsUI"];
  v10 = [v9 localizedStringForKey:@"SuggestionsBannerSingleEventMultiDayFormat%1$@%2$@" value:&stru_1F3012140 table:0];
  v11 = [v8 localizedStringWithFormat:v10, v6, v7];
  v12 = v11;
  v13 = &stru_1F3012140;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

LABEL_11:

  return v14;
}

uint64_t SGSuggestionEventTrailingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = getRealtimeSuggestion(a2);
  v6 = getRealtimeSuggestion(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = v6;
    v8 = v7;
    v9 = 0;
    if (v5 && v7)
    {
      v10 = [v5 event];
      v11 = [v10 start];

      v12 = [v8 event];
      v13 = [v12 start];

      v9 = [v11 compare:v13];
    }
  }

  else
  {
    v14 = sgEventsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *v16 = 0;
      _os_log_fault_impl(&dword_1B8182000, v14, OS_LOG_TYPE_FAULT, "Unsupported SGRealtimeEvent Class found. Returning...", v16, 2u);
    }

    v9 = 0;
  }

  return v9;
}

void sub_1B81F07CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id serialQueue()
{
  if (serialQueue__pasOnceToken2 != -1)
  {
    dispatch_once(&serialQueue__pasOnceToken2, &__block_literal_global_703);
  }

  v1 = serialQueue__pasExprOnceResult;

  return v1;
}

void __serialQueue_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E69C5D10] autoreleasingSerialQueueWithLabel:"com.apple.suggestions.CoreSuggestionsUI" qosClass:25];
  v2 = serialQueue__pasExprOnceResult;
  serialQueue__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id getFKExtractedOrderSuggestionsBannerProviderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFKExtractedOrderSuggestionsBannerProviderClass_softClass;
  v7 = getFKExtractedOrderSuggestionsBannerProviderClass_softClass;
  if (!getFKExtractedOrderSuggestionsBannerProviderClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFKExtractedOrderSuggestionsBannerProviderClass_block_invoke;
    v3[3] = &unk_1E7CD9710;
    v3[4] = &v4;
    __getFKExtractedOrderSuggestionsBannerProviderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B81F3118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFKExtractedOrderSuggestionsBannerProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FinanceKitUILibraryCore_frameworkLibrary_854)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FinanceKitUILibraryCore_block_invoke_855;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7CD9600;
    v6 = 0;
    FinanceKitUILibraryCore_frameworkLibrary_854 = _sl_dlopen();
    v2 = v4[0];
    if (FinanceKitUILibraryCore_frameworkLibrary_854)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FKExtractedOrderSuggestionsBannerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "FKExtractedOrderSuggestionsBannerProvider");
  }

  getFKExtractedOrderSuggestionsBannerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FinanceKitUILibraryCore_block_invoke_855(uint64_t a1)
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore_frameworkLibrary_854 = result;
  return result;
}

void sub_1B81F47C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKICSPreviewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EventKitUILibraryCore_frameworkLibrary_939)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EventKitUILibraryCore_block_invoke_940;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7CD9730;
    v6 = 0;
    EventKitUILibraryCore_frameworkLibrary_939 = _sl_dlopen();
    v2 = v4[0];
    if (EventKitUILibraryCore_frameworkLibrary_939)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("EKICSPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "EKICSPreviewController");
  }

  getEKICSPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EventKitUILibraryCore_block_invoke_940(uint64_t a1)
{
  result = _sl_dlopen();
  EventKitUILibraryCore_frameworkLibrary_939 = result;
  return result;
}

void sub_1B81F6E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}