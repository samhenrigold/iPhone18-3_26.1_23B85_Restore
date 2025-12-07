void sub_23BA485E8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v9;
  v14 = v12 | v9 | 7;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  if (v18 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = 16;
  if (v19 > 0x10)
  {
    v20 = v19;
  }

  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = (v13 + 32) & ~v14;
  v26 = ((v20 + 1 + v14) & ~v14) + v20 + 1;
  v27 = *(v22 + 80);
  v28 = ((((v27 + 19 + ((v26 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v27) + *(v22 + 64)) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v24 >= a3)
  {
    v31 = 0;
  }

  else
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  if (v24 < a2)
  {
    v32 = ~v24 + a2;
    bzero(a1, v28);
    if (v28 <= 3)
    {
      v33 = (v32 >> 8) + 1;
    }

    else
    {
      v33 = 1;
    }

    if (v28 > 3)
    {
      *a1 = v32;
    }

    else
    {
      *a1 = v32;
    }

    switch(v31)
    {
      case 1:
        *(a1 + v28) = v33;
        return;
      case 2:
        *(a1 + v28) = v33;
        return;
      case 3:
        goto LABEL_52;
      case 4:
        *(a1 + v28) = v33;
        return;
      default:
        return;
    }
  }

  switch(v31)
  {
    case 1:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 2:
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    case 3:
LABEL_52:
      __break(1u);
      JUMPOUT(0x23BA4894CLL);
    case 4:
      *(a1 + v28) = 0;
      goto LABEL_39;
    default:
LABEL_39:
      if (a2)
      {
LABEL_40:
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v27 + 19 + ((v26 + ((a1 + v14 + 32) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v27, a2, v23, v21);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[2] = 0;
          a1[3] = 0;
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_23BA489D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  sub_23BBDB148();
  OUTLINED_FUNCTION_7();
  v75 = v4;
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C7A0, &unk_23BBF0400);
  v6 = *(a1 + 24);
  v71 = *(a1 + 16);
  v72 = a1;
  v70 = v6;
  type metadata accessor for Sublabels(255, v71, v6, v7);
  v8 = OUTLINED_FUNCTION_7_15();
  v11 = OUTLINED_FUNCTION_6_5(v8, v9, v10);
  v65 = OUTLINED_FUNCTION_12_14(v11);
  OUTLINED_FUNCTION_2_5();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_23BBDC078();
  OUTLINED_FUNCTION_7();
  v66 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v16 = v57 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  v17 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v68 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = v57 - v20;
  v22 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v67 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  v61 = v57 - v25;
  OUTLINED_FUNCTION_12_6();
  v26 = swift_getWitnessTable();
  v57[1] = v26;
  OUTLINED_FUNCTION_1_15();
  v28 = sub_23BA52ADC(v27);
  v87 = v26;
  v88 = v28;
  OUTLINED_FUNCTION_8_2();
  v69 = v29;
  v58 = swift_getWitnessTable();
  v85 = v58;
  v86 = MEMORY[0x277CDFC60];
  v59 = swift_getWitnessTable();
  v83 = v22;
  v84 = v59;
  v60 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v62 = v31;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v32);
  v34 = v57 - v33;
  sub_23BBDB2B8();
  v35 = sub_23BBDA358();
  OUTLINED_FUNCTION_7();
  v63 = v36;
  MEMORY[0x28223BE20](v37);
  v39 = v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v57 - v41;
  sub_23BBDAB58();
  v78 = v71;
  v79 = v70;
  v80 = v73;
  sub_23BBDC068();
  sub_23BBDBA08();
  OUTLINED_FUNCTION_13_16();
  v43(v16, v12);
  sub_23BBDC328();
  v44 = v17;
  v45 = v61;
  sub_23BBDBB18();
  OUTLINED_FUNCTION_13_16();
  v46(v21, v44);
  v47 = v74;
  sub_23BBDB128();
  v48 = v59;
  sub_23BBDB968();
  (*(v75 + 8))(v47, v76);
  OUTLINED_FUNCTION_13_16();
  v49(v45, v22);
  KeyPath = swift_getKeyPath();
  v83 = v22;
  v84 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23B9968C4(KeyPath, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  OUTLINED_FUNCTION_13_16();
  v52(v34, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_2_20();
  v54 = sub_23BA4B584(v53);
  v81 = OpaqueTypeConformance2;
  v82 = v54;
  swift_getWitnessTable();
  sub_23B9D2D88();
  v55 = *(v63 + 8);
  v55(v39, v35);
  sub_23B9D2D88();
  return (v55)(v42, v35);
}

uint64_t sub_23BA49080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a4;
  v99 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v98 = &v77[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for Sublabels(0, v8, v9, v10);
  v102 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v104 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v103 = &v77[-v13];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7A8, &qword_23BBF0430);
  MEMORY[0x28223BE20](v88);
  v91 = &v77[-v14];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7B0, &qword_23BBF0438);
  MEMORY[0x28223BE20](v89);
  v87 = &v77[-v15];
  v86 = sub_23BBDA928();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7B8, &qword_23BBF0440);
  MEMORY[0x28223BE20](v94);
  v90 = &v77[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7C0, &qword_23BBF0448);
  MEMORY[0x28223BE20](v18);
  v20 = &v77[-v19];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7C8, &qword_23BBF0450);
  MEMORY[0x28223BE20](v93);
  v92 = &v77[-v21];
  v22 = type metadata accessor for V1TopRowContent(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7A0, &unk_23BBF0400);
  MEMORY[0x28223BE20](v95);
  v97 = &v77[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v77[-v27];
  v100 = a2;
  v101 = a3;
  v30 = type metadata accessor for AutomaticSubscriptionPickerOptionLabelInternal(0, a2, a3, v29);
  v31 = a1;
  v32 = v30;
  v33 = *(a1 + *(v30 + 60));
  v35 = *a1;
  v34 = a1[1];
  v36 = *(a1 + 16);
  v37 = a1[3];
  v38 = *(v30 + 36);
  if (v33)
  {
    v81 = v22;
    v83 = v28;
    v39 = v31;
    sub_23BA4B744(v31 + v38, &v20[v18[9]], type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
    v40 = *(v39 + v32[12]);
    v41 = *(v39 + v32[13]);
    v42 = *(v39 + v32[15]);
    *v20 = v35;
    *(v20 + 1) = v34;
    v20[16] = v36;
    *(v20 + 3) = v37;
    v20[v18[11]] = v40;
    v20[v18[12]] = v41;
    v20[v18[13]] = 1;
    v43 = v18[14];
    v78 = v42;
    v20[v43] = v42;
    v44 = v18[15];
    v80 = v20;
    v45 = &v20[v44];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    v46 = v32[16];
    v82 = v39;
    v47 = v39 + v46;
    v48 = *v47;
    LODWORD(v45) = v47[8];

    v49 = v32;
    v79 = v18;
    if (v45 == 1)
    {
      v50 = v92;
      if ((v48 & 1) == 0)
      {
LABEL_4:
        v51 = v80;
        sub_23B9A721C(v80, v91, &qword_27E19C7C0, &qword_23BBF0448);
        swift_storeEnumTagMultiPayload();
        sub_23BA4B4A0();
        sub_23BA52ADC(&unk_27E19C7F8);
        v52 = v90;
        sub_23BBDACD8();
LABEL_8:
        v28 = v83;
        sub_23B9A721C(v52, v50, &qword_27E19C7B8, &qword_23BBF0440);
        swift_storeEnumTagMultiPayload();
        sub_23BA4B584(&unk_27E19C800);
        sub_23BA4B5C8();
        sub_23BBDACD8();
        sub_23B9A8E20(v52, &qword_27E19C7B8);
        sub_23B9A8E20(v51, &qword_27E19C7C0);
        v53 = v82;
        goto LABEL_9;
      }
    }

    else
    {
      sub_23B995044(v48, 0);
      sub_23BBDD5A8();
      v56 = sub_23BBDB338();
      sub_23BBD9978();

      v57 = v84;
      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v48, 0);
      (*(v85 + 8))(v57, v86);
      v50 = v92;
      if (LOBYTE(v109[0]) != 1)
      {
        goto LABEL_4;
      }
    }

    KeyPath = swift_getKeyPath();
    v59 = sub_23BBDC2C8();
    v61 = v60;
    v62 = v87;
    v63 = &v87[*(v89 + 36)];
    v51 = v80;
    sub_23B9A721C(v80, v63, &qword_27E19C7C0, &qword_23BBF0448);
    v64 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7F0, &qword_23BBF04A8) + 36));
    *v64 = v59;
    v64[1] = v61;
    *v62 = v78;
    *(v62 + 8) = KeyPath;
    *(v62 + 16) = 0;
    sub_23B9A721C(v62, v91, &qword_27E19C7B0, &qword_23BBF0438);
    swift_storeEnumTagMultiPayload();
    sub_23BA4B4A0();
    sub_23BA52ADC(&unk_27E19C7F8);
    v52 = v90;
    sub_23BBDACD8();
    sub_23B9A8E20(v62, &qword_27E19C7B0);
    goto LABEL_8;
  }

  v53 = v31;
  sub_23BA4B744(v31 + v38, &v24[v22[5]], type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
  v54 = *(v53 + v32[12]);
  v55 = *(v53 + v32[13]);
  *v24 = v35;
  *(v24 + 1) = v34;
  v24[16] = v36;
  *(v24 + 3) = v37;
  v24[v22[6]] = v54;
  v24[v22[7]] = v55;
  v24[v22[8]] = 1;
  sub_23BA4B744(v24, v92, type metadata accessor for V1TopRowContent);
  swift_storeEnumTagMultiPayload();
  sub_23BA4B584(&unk_27E19C800);
  sub_23BA4B5C8();

  sub_23BBDACD8();
  sub_23BA5081C(v24, type metadata accessor for V1TopRowContent);
  v49 = v32;
LABEL_9:
  v65 = v98;
  v66 = v100;
  (*(v99 + 16))(v98, v53 + v49[14], v100);
  v67 = v104;
  sub_23BA49C10(v65, *(v53 + v49[10]), *(v53 + v49[10] + 8), *(v53 + v49[15]), v66, v104, v101);
  v68 = v96;
  WitnessTable = swift_getWitnessTable();
  v70 = v103;
  sub_23B9D2D88();
  v71 = v102;
  v72 = *(v102 + 8);

  v72(v67, v68);
  v73 = v28;
  v74 = v28;
  v75 = v97;
  sub_23B9A721C(v73, v97, &qword_27E19C7A0, &unk_23BBF0400);
  v109[0] = v75;
  (*(v71 + 16))(v67, v70, v68);
  v109[1] = v67;
  v108[0] = v95;
  v108[1] = v68;
  v106 = sub_23BA4B680();
  v107 = WitnessTable;
  sub_23BB6739C(v109, 2, v108);
  v72(v70, v68);
  sub_23B9A8E20(v74, &qword_27E19C7A0);
  v72(v67, v68);
  return sub_23B9A8E20(v75, &qword_27E19C7A0);
}

uint64_t sub_23BA49C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7@<X5>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v14 = type metadata accessor for Sublabels(0, a5, a7, v13);
  v15 = (a6 + v14[9]);
  *v15 = a2;
  v15[1] = a3;
  *(a6 + v14[10]) = a4;
  v16 = a6 + v14[11];
  result = swift_getKeyPath();
  *v16 = result;
  *(v16 + 8) = 0;
  return result;
}

uint64_t sub_23BA49CC8()
{
  sub_23BA4D308();
  sub_23BBDA958();
  return v1;
}

uint64_t sub_23BA49D88(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC10, &qword_23BBF0C30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC18, &qword_23BBF0C38);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v4 = sub_23BBDC078();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  sub_23BBDAB58();
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_23BBDC068();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_23B9D2D88();
  return (v12)(v10, v4);
}

uint64_t sub_23BA49FB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v52 = a4;
  v57 = a2;
  v60 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v45 - v7;
  v8 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_27E197628;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27E1BF840;
  v54 = sub_23BBDB648();
  v53 = v13;
  v15 = v14;
  v55 = v16;
  KeyPath = swift_getKeyPath();
  sub_23BBDB478();
  v19 = v18;
  v56 = v15 & 1;
  v80 = v15 & 1;
  v79 = 0;
  v78 = 0;
  v21 = type metadata accessor for PrimaryLabels(0, v57, v58, v20);
  sub_23BA4B744(a1 + *(v21 + 36), v10, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
  sub_23BB94F68();
  v23 = v22;
  v46 = v22;
  v25 = v24;
  v47 = v26;
  v28 = v27;
  v29 = swift_getKeyPath();
  v30 = v59;
  sub_23B9D2D88();
  v31 = v54;
  v32 = v53;
  v69 = v54;
  v70 = v53;
  v71 = v80;
  v72 = v55;
  v73 = KeyPath;
  v50 = KeyPath;
  v74 = v79;
  v75 = v19;
  v76 = v78;
  v63 = v23;
  v64 = v25;
  v48 = v25;
  v33 = v47 & 1;
  v65 = v47 & 1;
  v47 &= 1u;
  v66 = v28;
  v67 = v29;
  v49 = v28;
  v68 = 0;
  v77[0] = &v69;
  v77[1] = &v63;
  v34 = v51;
  v35 = v30;
  v36 = v57;
  (*(v60 + 16))(v51, v35, v57);
  v77[2] = v34;
  sub_23BA51B84(v31, v32, v56);

  v37 = v46;
  sub_23BA51B84(v46, v25, v33);

  v62[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC10, &qword_23BBF0C30);
  v38 = v60;
  v62[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC18, &qword_23BBF0C38);
  v62[2] = v36;
  v61[0] = sub_23BA51BE8(&unk_27E19CC20);
  v61[1] = sub_23BA51BE8(&unk_27E19CC30);
  v61[2] = v58;
  sub_23BB6739C(v77, 3, v62);
  sub_23BA51C9C(v37, v48, v47);

  sub_23BA51C9C(v54, v53, v56);

  v39 = *(v38 + 8);
  v39(v59, v36);
  v39(v34, v36);
  v40 = v67;
  v41 = v68;
  sub_23BA51C9C(v63, v64, v65);

  sub_23B97B450(v40, v41);
  v42 = v73;
  v43 = v74;
  sub_23BA51C9C(v69, v70, v71);

  return sub_23B97B450(v42, v43);
}

uint64_t sub_23BA4A56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v16 = type metadata accessor for PrimaryLabels(0, a10, a11, a4);
  sub_23B9A1130(a5, a9 + v16[9]);
  result = (*(*(a10 - 8) + 32))(a9 + v16[10], a6, a10);
  *(a9 + v16[11]) = a7;
  *(a9 + v16[12]) = a8;
  return result;
}

uint64_t sub_23BA4A634(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 60);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v10 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v11[15] != 1)
    {
      return 0;
    }
  }

  if (qword_27E1977E8 != -1)
  {
    swift_once();
  }

  if (byte_27E1A04D1 != 3)
  {
    return byte_27E1A04D1 == 1;
  }

  storekit_dyld_fall_2024_os_versions();
  return dyld_program_minos_at_least();
}

uint64_t sub_23BA4A7EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9C8, &qword_23BBF07A8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for PrimaryLabels(255, v3, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D0, &qword_23BBF07B0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D8, &qword_23BBF07B8);
  swift_getTupleTypeMetadata3();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v6 = sub_23BBDC078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-v11];
  sub_23BBDAB58();
  v16 = v3;
  v17 = v4;
  v18 = v1;
  sub_23BBDC068();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_23B9D2D88();
  return (v13)(v12, v6);
}

uint64_t sub_23BA4AA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v31 = a4;
  type metadata accessor for PrimaryLabels(255, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D0, &qword_23BBF07B0);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  swift_getWitnessTable();
  v8 = sub_23BBDBFE8();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v33 = &v28 - v12;
  v14 = type metadata accessor for TopRowContent(0, a2, a3, v13);
  if ((sub_23BA4A634(v14) & 1) != 0 && *(a1 + v14[13]) == 1)
  {
    v15 = *(a1 + v14[11]);
    KeyPath = swift_getKeyPath();
    if (*(a1 + v14[14]) == 2)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 4.0;
    }

    v17 = sub_23BBDB398();
    v45[0] = 0;
    LOBYTE(__src[0]) = v15;
    __src[1] = KeyPath;
    LOBYTE(__src[2]) = 0;
    LOBYTE(__src[3]) = v17;
    *&__src[4] = v16;
    *&__src[5] = xmmword_23BBF0340;
    __src[7] = 0;
    LOBYTE(__src[8]) = 0;
  }

  else
  {
    __src[0] = 2;
    memset(&__src[1], 0, 57);
  }

  v18 = sub_23BBDA9B8();
  MEMORY[0x28223BE20](v18);
  *(&v28 - 4) = a2;
  *(&v28 - 3) = a3;
  *(&v28 - 2) = a1;
  sub_23BBDBFD8();
  WitnessTable = swift_getWitnessTable();
  sub_23B9D2D88();
  KeyPath = *(v32 + 8);
  KeyPath(v10, v8);
  if (*(a1 + v14[12]) == 1)
  {
    v19 = sub_23BBDAF28();
    v20 = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v22 = *(a1 + v14[14]);
    v23 = swift_getKeyPath();
    v45[0] = 0;
    v41[0] = 0;
    LODWORD(v46) = v19;
    BYTE8(v46) = 1;
    BYTE8(v47) = 0;
    v48[8] = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    *(&v47 + 1) = 0;
    *&v48[8] = 0;
    v46 = 0uLL;
  }

  *&v47 = v20;
  *v48 = v21;
  *&v48[16] = v23;
  v48[24] = v22;
  memcpy(v41, __src, 0x41uLL);
  v42[0] = v41;
  v24 = v33;
  (*(v32 + 16))(v10, v33, v8);
  v38 = v46;
  v39 = v47;
  v40[0] = *v48;
  *(v40 + 9) = *&v48[9];
  v42[1] = v10;
  v42[2] = &v38;
  sub_23B9A721C(__src, v45, &qword_27E19C9C8, &qword_23BBF07A8);
  sub_23B9A721C(&v46, v45, &qword_27E19C9D8, &qword_23BBF07B8);
  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C9C8, &qword_23BBF07A8);
  v37[1] = v8;
  v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C9D8, &qword_23BBF07B8);
  v34 = sub_23BA50238();
  v35 = WitnessTable;
  v36 = sub_23BA5039C();
  sub_23BB6739C(v42, 3, v37);
  sub_23B9A8E20(&v46, &qword_27E19C9D8);
  sub_23B9A8E20(__src, &qword_27E19C9C8);
  v25 = v24;
  v26 = KeyPath;
  KeyPath(v25, v8);
  v43[0] = v38;
  v43[1] = v39;
  v44[0] = v40[0];
  *(v44 + 9) = *(v40 + 9);
  sub_23B9A8E20(v43, &qword_27E19C9D8);
  v26(v10, v8);
  memcpy(v45, v41, 0x41uLL);
  return sub_23B9A8E20(v45, &qword_27E19C9C8);
}

uint64_t sub_23BA4AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v46 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v12 = type metadata accessor for PrimaryLabels(0, a2, a3, v11);
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = *(a1 + 8);
  v45 = *a1;
  LODWORD(v44) = *(a1 + 16);
  v42 = *(a1 + 24);
  v19 = v42;
  v43 = v18;
  v21 = type metadata accessor for TopRowContent(0, a2, a3, v20);
  sub_23BA4B744(a1 + v21[9], v10, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
  v22 = v48;
  (*(v46 + 16))(v48, a1 + v21[10], a2);
  sub_23BA4A56C(v45, v43, v44, v19, v10, v22, *(a1 + v21[12]), *(a1 + v21[14]), v14, a2, v41);
  WitnessTable = swift_getWitnessTable();
  v48 = v17;
  v46 = WitnessTable;
  sub_23B9D2D88();
  v24 = v47;
  v25 = *(v47 + 8);

  v25(v14, v12);
  if ((sub_23BA4A634(v21) & 1) != 0 || *(a1 + v21[13]) != 1)
  {
    __src[0] = 0;
    __src[1] = 0;
    __src[2] = 2;
    memset(&__src[3], 0, 57);
  }

  else
  {
    v26 = v21[11];
    v44 = v14;
    v27 = *(a1 + v26);
    KeyPath = swift_getKeyPath();
    v29 = sub_23BBDB3A8();
    v45 = v12;
    v30 = v29;
    sub_23BBD9B18();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    LOBYTE(__src[0]) = 0;
    LOBYTE(v55[0]) = 0;
    LOBYTE(v54[0]) = v27;
    v54[1] = KeyPath;
    LOBYTE(v54[2]) = 0;
    LOBYTE(v54[3]) = v30;
    v54[4] = v31;
    v54[5] = v33;
    v54[6] = v35;
    v54[7] = v37;
    LOBYTE(v54[8]) = 0;
    memcpy(&v50[7], v54, 0x41uLL);
    LOBYTE(v56[0]) = v27;
    v14 = v44;
    v56[1] = KeyPath;
    LOBYTE(v56[2]) = 0;
    LOBYTE(v56[3]) = v30;
    v56[4] = v32;
    v56[5] = v34;
    v56[6] = v36;
    v56[7] = v38;
    LOBYTE(v56[8]) = 0;
    sub_23B9A721C(v54, __src, &qword_27E19C9F0, &qword_23BBF07C0);
    sub_23B9A8E20(v56, &qword_27E19C9F0);
    __src[0] = 0x4024000000000000;
    LOBYTE(__src[1]) = 0;
    v12 = v45;
    memcpy(&__src[1] + 1, v50, 0x48uLL);
  }

  v39 = v48;
  (*(v24 + 16))(v14, v48, v12);
  v55[0] = v14;
  memcpy(v54, __src, 0x51uLL);
  v55[1] = v54;
  sub_23B9A721C(__src, v56, &qword_27E19C9D0, &qword_23BBF07B0);
  v53[0] = v12;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C9D0, &qword_23BBF07B0);
  v51 = v46;
  v52 = sub_23BA5074C();
  sub_23BB6739C(v55, 2, v53);
  sub_23B9A8E20(__src, &qword_27E19C9D0);
  v25(v39, v12);
  memcpy(v56, v54, 0x51uLL);
  sub_23B9A8E20(v56, &qword_27E19C9D0);
  return (v25)(v14, v12);
}

unint64_t sub_23BA4B4A0()
{
  result = qword_27E19C7D0;
  if (!qword_27E19C7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C7B0, &qword_23BBF0438);
    sub_23BA52ADC(&unk_27E19C7D8);
    sub_23BA52ADC(&unk_27E19C7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C7D0);
  }

  return result;
}

unint64_t sub_23BA4B584(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_15(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23BA4B5C8()
{
  result = qword_27E19C808;
  if (!qword_27E19C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C7B8, &qword_23BBF0440);
    sub_23BA4B4A0();
    sub_23BA52ADC(&unk_27E19C7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C808);
  }

  return result;
}

unint64_t sub_23BA4B680()
{
  result = qword_27E19C810;
  if (!qword_27E19C810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C7A0, &unk_23BBF0400);
    sub_23BA4B584(&unk_27E19C800);
    sub_23BA4B5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C810);
  }

  return result;
}

uint64_t sub_23BA4B744(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_17_0();
  v5(v4);
  return a2;
}

uint64_t sub_23BA4B7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = a1;
  *a6 = sub_23BBDC2C8();
  a6[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C9B0, &unk_23BBF0798);
  return sub_23BA4B824(v10, a2, a3 & 1, a4, a5);
}

uint64_t sub_23BA4B824(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v15 = a2;
  }

  else
  {
    v20 = v12;

    sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    v17 = sub_23B9B6460(a2, 0);
    (*(v11 + 8))(v14, v20, v17);
    v15 = v21;
  }

  v21 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3 & 1;
  sub_23BA50134(a2, a3 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19A3C8, &unk_23BBE9EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7C0, &qword_23BBF0448);
  sub_23BA52ADC(&unk_27E19C9B8);
  sub_23BA52ADC(&unk_27E19C7F8);
  sub_23BA4B584(&unk_27E19C9C0);
  return sub_23BBDC198();
}

uint64_t sub_23BA4BB04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_23BBDAA38();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *(a1 + *(type metadata accessor for SubscriptionStoreCopyWriter(0) + 36));
  if ((v6 & 8) != 0)
  {
    sub_23BBDAA28();
    sub_23BBDAA18();
    sub_23BBDAA08();
    sub_23BBDAA18();
    v7 = sub_23BBDAA58();
  }

  else if ((v6 & 6) != 0)
  {
    v7 = sub_23BB747BC(*(a1 + 24), *(a1 + 32));
  }

  else
  {

    v7 = sub_23BBDAA48();
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19C7C0, &qword_23BBF0448);
  v16 = a3 + v15[9];
  sub_23BB95108();
  v17 = *(type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0) + 20);
  v18 = _s11PriceStringOMa(0);
  __swift_storeEnumTagSinglePayload(v16 + v17, 1, 1, v18);
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  *(a3 + v15[11]) = 0;
  *(a3 + v15[12]) = v6 == 1;
  *(a3 + v15[13]) = 1;
  *(a3 + v15[14]) = a2;
  v19 = a3 + v15[15];
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  return result;
}

void *sub_23BA4BD18@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_23BBDAB58();
  v10 = 0;
  sub_23BA4BDF0(v2, __src);
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v12, __src, 0x49uLL);
  sub_23B9A721C(__dst, v7, &qword_27E19CD60, &qword_23BBF0D80);
  sub_23B9A8E20(v12, &qword_27E19CD60);
  memcpy(&v9[7], __dst, 0x49uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x50uLL);
}

double sub_23BA4BDF0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[4])
  {
    KeyPath = swift_getKeyPath();
    v4 = sub_23BBDAF28() << 32;
  }

  else
  {
    KeyPath = 0;
    v4 = 0;
  }

  v5 = qword_27E197628;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_27E1BF840;
  v7 = sub_23BBDB648();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = swift_getKeyPath();
  sub_23BBDB478();
  *a2 = KeyPath;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11 & 1;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = 0;

  sub_23BA51B84(v7, v9, v11 & 1);

  sub_23B995044(v14, 0);

  sub_23BA51C9C(v7, v9, v11 & 1);

  sub_23B97B450(v14, 0);

  return result;
}

uint64_t sub_23BA4BFE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for V1TopRowContent.SecondaryLabel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = type metadata accessor for V1TopRowContent(0);
  if (*(v2 + *(v10 + 28)) == 1)
  {
    v11 = sub_23BBDA9A8();
  }

  else
  {
    v11 = sub_23BBDA998();
  }

  v12 = v11;
  v21 = 1;
  sub_23BA4C260(v2, v19);
  memcpy(v16, v19, 0x49uLL);
  memcpy(v17, v19, 0x49uLL);
  sub_23B9A721C(v16, v18, &qword_27E19CA88, &qword_23BBF0878);
  sub_23B9A8E20(v17, &qword_27E19CA88);
  memcpy(&__src[7], v16, 0x49uLL);
  v13 = v21;
  sub_23BA4B744(v2 + *(v10 + 20), v9, type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
  sub_23BA4B744(v9, v6, type metadata accessor for V1TopRowContent.SecondaryLabel);
  v18[0] = v12;
  v18[1] = 0;
  LOBYTE(v18[2]) = v13;
  memcpy(&v18[2] + 1, __src, 0x50uLL);
  memcpy(a1, v18, 0x61uLL);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CA90, &qword_23BBF0880);
  sub_23BA4B744(v6, a1 + *(v14 + 48), type metadata accessor for V1TopRowContent.SecondaryLabel);
  sub_23B9A721C(v18, v19, &qword_27E19CA98, &qword_23BBF0888);
  sub_23BA5081C(v9, type metadata accessor for V1TopRowContent.SecondaryLabel);
  sub_23BA5081C(v6, type metadata accessor for V1TopRowContent.SecondaryLabel);
  v19[0] = v12;
  v19[1] = 0;
  LOBYTE(v19[2]) = v13;
  memcpy(&v19[2] + 1, __src, 0x50uLL);
  return sub_23B9A8E20(v19, &qword_27E19CA98);
}

uint64_t sub_23BA4C260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = type metadata accessor for V1TopRowContent(0);
  v9 = *(a1 + v8[7]);
  if (*(a1 + v8[8]) == 1)
  {
    v10 = *(a1 + v8[6]);
    KeyPath = swift_getKeyPath();

    j__swift_retain(KeyPath);
    j_j__swift_release(KeyPath);
    j__swift_retain(KeyPath);
    v12 = 1;
  }

  else
  {

    v12 = 0;
    KeyPath = 0;
    v10 = 2;
  }

  sub_23BA50874(0, v12, v10, KeyPath);
  sub_23BA50890(0, v12, v10, KeyPath);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = v12;
  *(a2 + 56) = v10;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  sub_23BA50890(0, v12, v10, KeyPath);
}

uint64_t sub_23BA4C3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23BA4B744(v1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair);
  sub_23BB94F68();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = swift_getKeyPath();
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_23BA4C4A4(uint64_t a1)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + *(a1 + 36) + 8))
  {
    v7 = v1 + *(a1 + 44);
    v8 = *v7;
    if (*(v7 + 8) != 1)
    {

      sub_23BBDD5A8();
      v9 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v8, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v8) = v11[15];
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23BA4C610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v35 = *(a1 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v9;
  v11 = *(v10 + 24);
  type metadata accessor for Sublabels.SublabelDivider(255, v6, v11, v12);
  type metadata accessor for TertiaryContent(255);
  swift_getTupleTypeMetadata2();
  sub_23BBDC3D8();
  v13 = sub_23BBDACE8();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_23BA508E4();
  v43 = WitnessTable;
  v44 = v15;
  v32 = v13;
  v31 = swift_getWitnessTable();
  v39 = v6;
  v40 = v13;
  v41 = v11;
  v42 = v31;
  v30[1] = sub_23BBDAEC8();
  v16 = sub_23BBDBE28();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v30 - v21;
  (*(v7 + 16))(v9, v2, v6, v20);
  v24 = v34;
  v23 = v35;
  v25 = a1;
  (*(v35 + 16))(v34, v2, a1);
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v11;
  (*(v23 + 32))(v27 + v26, v24, v25);
  sub_23BBDBE08();
  v38 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23B9D2D88();
  v28 = *(v33 + 8);
  v28(v18, v16);
  sub_23B9D2D88();
  return (v28)(v22, v16);
}

uint64_t sub_23BA4CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a5;
  v58 = a1;
  v9 = type metadata accessor for Sublabels.SublabelDivider(255, a3, a4, a4);
  v10 = type metadata accessor for TertiaryContent(255);
  v53 = v9;
  swift_getTupleTypeMetadata2();
  v11 = sub_23BBDC3D8();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v12;
  v13 = v10;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = sub_23BBDACE8();
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v24 = type metadata accessor for Sublabels(0, a3, a4, v23);
  v25 = a2;
  if ((sub_23BA4C4A4(v24) & 1) != 0 || !sub_23BA20C8C(v26))
  {
    v30 = v53;
    WitnessTable = swift_getWitnessTable();
    sub_23B9D2D88();
    v31 = (a2 + *(v24 + 36));
    v32 = *v31;
    v49 = v31[1];
    v50 = v32;
    v51 = v16;
    v33 = v13;
    v34 = *(v13 + 20);
    v35 = v22;
    v36 = v11;
    v37 = v20;
    v38 = sub_23BBDAA98();
    (*(*(v38 - 8) + 16))(&v19[v34], v58, v38);
    v39 = v38;
    v20 = v37;
    v40 = v36;
    v22 = v35;
    __swift_storeEnumTagSinglePayload(&v19[v34], 0, 1, v39);
    v41 = *(v25 + *(v24 + 40));
    v42 = v49;
    *v19 = v50;
    *(v19 + 1) = v42;
    v19[*(v33 + 24)] = v41;
    v43 = &v19[*(v33 + 28)];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = v51;
    sub_23BA4B744(v19, v51, type metadata accessor for TertiaryContent);
    v60 = v44;

    v68[0] = v30;
    v68[1] = v33;
    v66 = WitnessTable;
    v67 = sub_23BA4B584(&unk_27E19CAA8);
    v45 = v55;
    sub_23BB6739C(v59, 2, v68);
    sub_23BA5081C(v44, type metadata accessor for TertiaryContent);
    swift_getWitnessTable();
    sub_23BA508E4();
    sub_23BA82D64();
    (*(v54 + 8))(v45, v40);
    sub_23BA5081C(v19, type metadata accessor for TertiaryContent);
  }

  else
  {
    v27 = *(a2 + *(v24 + 40));
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v59[0] = v27;
    v60 = KeyPath;
    v61 = 0;
    v62 = v29;
    v63 = 0;
    swift_getWitnessTable();
    sub_23BA508E4();
    sub_23BA82E14();
  }

  v46 = swift_getWitnessTable();
  v47 = sub_23BA508E4();
  v64 = v46;
  v65 = v47;
  swift_getWitnessTable();
  sub_23B9D2D88();
  return (*(v56 + 8))(v22, v20);
}

uint64_t sub_23BA4CF34@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v23 = sub_23BBDB148();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC60, &qword_23BBF0C88);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC68, &qword_23BBF0C90);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC70, &qword_23BBF0C98);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  sub_23BBDC158();
  v12 = sub_23BBDBD28();
  v13 = [objc_opt_self() systemGray2Color];
  v14 = sub_23BBDBCA8();
  v27 = v12;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198270, &unk_23BBE65E0);
  sub_23B987F20();
  sub_23BA52ADC(&qword_27E198298);
  v15 = sub_23BBDBDE8();
  v16 = sub_23BBDB398();
  v17 = &v6[*(v4 + 36)];
  *v17 = v15;
  v17[8] = v16;
  sub_23BBDB118();
  v18 = sub_23BA51CAC();
  sub_23BBDB968();
  (*(v1 + 8))(v3, v23);
  sub_23B9A8E20(v6, &qword_27E19CC60);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  v27 = v4;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_23BBDBA28();

  (*(v24 + 8))(v9, v19);
  sub_23BBDA338();
  return sub_23B9A8E20(v11, &qword_27E19CC70);
}

unint64_t sub_23BA4D308()
{
  result = qword_27E19C818[0];
  if (!qword_27E19C818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19C818);
  }

  return result;
}

void sub_23BA4D36C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23B9CE218(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA4D45C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = a1[v8];
        if (!a1[v8])
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v13 = *&a1[v8];
        if (*&a1[v8])
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA4D5B8);
      case 4:
        v13 = *&a1[v8];
        if (!v13)
        {
          break;
        }

LABEL_22:
        v15 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v16 = *a1;
        }

        else
        {
          v15 = 0;
          v16 = *a1;
        }

        return v7 + (v16 | v15) + 1;
      default:
        break;
    }
  }

  if (v5 >= 0x7FFFFFFE)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_23BA4D5CC(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        return;
      case 2:
        *&a1[v10] = v16;
        return;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        return;
      default:
        return;
    }
  }

  switch(v14)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_43:
      __break(1u);
      JUMPOUT(0x23BA4D7C8);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v7 < 0x7FFFFFFE)
        {
          v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v17 = 0;
            v17[1] = 0;
            *v17 = a2 - 0x7FFFFFFF;
          }

          else
          {
            v17[1] = a2;
          }
        }

        else
        {

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }
      }

      return;
  }
}

void sub_23BA4D7F0(uint64_t a1)
{
  type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23B9CE218(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23BA4D8D8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v7;
  v12 = v10 | v7 | 7;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  if (v16 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  if (v17 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v19 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v19 + 84);
  }

  v23 = *(v19 + 80);
  v24 = *(v19 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = ((v20 + 1 + v12) & ~v12) + v20 + 1 + v23;
  if (v22 < a2)
  {
    v26 = ((v24 + ((v25 + ((v11 + 32) & ~v12)) & ~v23) + 11) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v26 <= 3)
    {
      v27 = ((a2 - v22 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    switch(v29)
    {
      case 1:
        v30 = a1[v26];
        if (!a1[v26])
        {
          break;
        }

        goto LABEL_32;
      case 2:
        v30 = *&a1[v26];
        if (*&a1[v26])
        {
          goto LABEL_32;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x23BA4DBC4);
      case 4:
        v30 = *&a1[v26];
        if (!v30)
        {
          break;
        }

LABEL_32:
        v32 = (v30 - 1) << (8 * v26);
        if (v26 <= 3)
        {
          v33 = *a1;
        }

        else
        {
          v32 = 0;
          v33 = *a1;
        }

        return v22 + (v33 | v32) + 1;
      default:
        break;
    }
  }

  if ((v21 & 0x80000000) != 0)
  {

    return __swift_getEnumTagSinglePayload((v25 + (&a1[v12 + 32] & ~v12)) & ~v23, v21, v18);
  }

  else
  {
    v34 = *(a1 + 1);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    return (v34 + 1);
  }
}

void sub_23BA4DBD8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v9;
  v14 = v12 | v9 | 7;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  if (v18 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v19 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + 1;
  v26 = (v20 + 1 + v14) & ~v14;
  v27 = (v13 + 32) & ~v14;
  v28 = *(v22 + 80);
  v29 = v26 + v25 + v28;
  v30 = ((*(v22 + 64) + ((v29 + v27) & ~v28) + 11) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v24 >= a3)
  {
    v33 = 0;
  }

  else
  {
    if (v30 <= 3)
    {
      v31 = ((a3 - v24 + 255) >> 8) + 1;
    }

    else
    {
      v31 = 2;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  if (v24 < a2)
  {
    v34 = ~v24 + a2;
    bzero(a1, v30);
    if (v30 <= 3)
    {
      v35 = (v34 >> 8) + 1;
    }

    else
    {
      v35 = 1;
    }

    if (v30 > 3)
    {
      *a1 = v34;
    }

    else
    {
      *a1 = v34;
    }

    switch(v33)
    {
      case 1:
        *(a1 + v30) = v35;
        return;
      case 2:
        *(a1 + v30) = v35;
        return;
      case 3:
        goto LABEL_53;
      case 4:
        *(a1 + v30) = v35;
        return;
      default:
        return;
    }
  }

  switch(v33)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    case 3:
LABEL_53:
      __break(1u);
      JUMPOUT(0x23BA4DF28);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_40;
    default:
LABEL_40:
      if (a2)
      {
LABEL_41:
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v29 + ((a1 + v14 + 32) & ~v14)) & ~v28, a2, v23, v21);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          a1[2] = 0;
          a1[3] = 0;
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          a1[1] = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_23BA4DF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23BA4DFD0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_14_14();
    return (v2 + 1);
  }

  else
  {
    type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
    v4 = OUTLINED_FUNCTION_10_12();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_23BA4E058()
{
  OUTLINED_FUNCTION_19();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);
    v3 = OUTLINED_FUNCTION_10_12();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_23BA4E0CC(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA4E154(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C7A0, &unk_23BBF0400);
  type metadata accessor for Sublabels(255, v1, v2, v4);
  v5 = OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_6_5(v5, v3, v6);
  OUTLINED_FUNCTION_12_14(v7);
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198DF8, &qword_23BBE6C10);
  OUTLINED_FUNCTION_7_15();
  sub_23BBDA358();
  sub_23BBDA358();
  OUTLINED_FUNCTION_12_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_15();
  sub_23BA52ADC(v8);
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23BBDB2B8();
  OUTLINED_FUNCTION_4();
  sub_23BBDA358();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_20();
  sub_23BA4B584(v9);
  return swift_getWitnessTable();
}

uint64_t sub_23BA4E318()
{
  v1 = type metadata accessor for SubscriptionStoreCopyWriter(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + 16);
  v9 = *(v0 + 8);
  v17 = v9;
  if (v18 == 1)
  {
  }

  else
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9A8E20(&v17, &unk_27E19CC58);
    result = (*(v6 + 8))(v8, v5);
    v9 = v16[1];
  }

  v12 = 0;
  v13 = *(v9 + 16);
  while (1)
  {
    v14 = v12;
    if (v13 == v12)
    {
      goto LABEL_9;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    sub_23BA4B744(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12++, v4, type metadata accessor for SubscriptionStoreCopyWriter);
    v15 = *(v4 + 6);

    result = sub_23BA5081C(v4, type metadata accessor for SubscriptionStoreCopyWriter);
    if (v15)
    {

LABEL_9:

      return v13 != v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BA4E59C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC40, &qword_23BBF0C68);
  MEMORY[0x28223BE20](v3);
  v5 = &v14[-v4];
  v6 = sub_23BBDA928();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + 32);
  v10 = *(v1 + 24);
  v15 = v10;
  if (v16 == 1)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v11 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9A8E20(&v15, &qword_27E19CC48);
    (*(v7 + 8))(v9, v6);
    if (v14[15] != 1)
    {
LABEL_7:
      v12 = 1;
      return __swift_storeEnumTagSinglePayload(a1, v12, 1, v3);
    }
  }

  if ((sub_23BA4E318() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_23BA4E7BC(v1, v5);
  sub_23B9A71D0(v5, a1, &qword_27E19CC40, &qword_23BBF0C68);
  v12 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v3);
}

uint64_t sub_23BA4E7BC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for TertiaryContent(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - v9);
  v11 = sub_23BBDC168();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_23BBDC158();
  v18 = v5[7];
  v19 = sub_23BBDAA98();
  __swift_storeEnumTagSinglePayload(v10 + v18, 1, 1, v19);
  v20 = *a1;
  *v10 = 0;
  v10[1] = 0;
  *(v10 + v5[8]) = v20;
  v21 = v10 + v5[9];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = *(v12 + 16);
  v22(v14, v17, v11);
  sub_23BA4B744(v10, v7, type metadata accessor for TertiaryContent);
  v22(a2, v14, v11);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC50, &qword_23BBF0C78);
  sub_23BA4B744(v7, &a2[*(v23 + 48)], type metadata accessor for TertiaryContent);
  sub_23BA5081C(v10, type metadata accessor for TertiaryContent);
  v24 = *(v12 + 8);
  v24(v17, v11);
  sub_23BA5081C(v7, type metadata accessor for TertiaryContent);
  return (v24)(v14, v11);
}

uint64_t sub_23BA4EA70()
{
  v1 = sub_23BBDB518();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TertiaryContent(0) + 24)) == 2)
  {
    sub_23BBDB568();
    (*(v2 + 104))(v4, *MEMORY[0x277CE0A10], v1);
    v5 = sub_23BBDB548();

    (*(v2 + 8))(v4, v1);
    return v5;
  }

  else
  {

    return sub_23BBDB428();
  }
}

uint64_t sub_23BA4EBBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CC98, &qword_23BBF0CA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCA0, &qword_23BBF0CB0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = sub_23BBDA998();
  v11 = type metadata accessor for TertiaryContent(0);
  v12 = *(v1 + *(v11 + 24)) == 0;
  v13 = 0x4024000000000000;
  if (!*(v1 + *(v11 + 24)))
  {
    v13 = 0;
  }

  *v5 = v10;
  *(v5 + 1) = v13;
  v5[16] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCA8, &qword_23BBF0CB8);
  sub_23BA4ED70(v1, &v5[*(v14 + 44)]);
  v15 = sub_23BA4EA70();
  KeyPath = swift_getKeyPath();
  sub_23B9A71D0(v5, v9, &qword_27E19CC98, &qword_23BBF0CA8);
  v17 = &v9[*(v7 + 44)];
  *v17 = KeyPath;
  v17[1] = v15;
  LODWORD(v15) = sub_23BBDAEF8();
  sub_23B9A71D0(v9, a1, &qword_27E19CCA0, &qword_23BBF0CB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCB0, &qword_23BBF0CF0);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_23BA4ED70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCB8, &qword_23BBF0CF8);
  MEMORY[0x28223BE20](v41);
  v4 = &v38 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCC0, &qword_23BBF0D00);
  MEMORY[0x28223BE20](v39);
  v6 = (&v38 - v5);
  v7 = sub_23BBDA928();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCC8, &qword_23BBF0D08);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CB40, &qword_23BBF0A00);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for TertiaryContent(0);
  v21 = a1 + *(v20 + 20);
  v40 = v19;
  sub_23B9A721C(v21, v19, &qword_27E19CB40, &qword_23BBF0A00);
  v22 = a1[1];
  if (!v22)
  {
    v24 = v14;
    v25 = v38;
    v26 = a1 + *(v20 + 28);
    v27 = *v26;
    if (v26[8] == 1)
    {
      if ((v27 & 1) == 0)
      {
LABEL_5:
        v23 = 1;
        goto LABEL_8;
      }
    }

    else
    {

      sub_23BBDD5A8();
      v28 = sub_23BBDB338();
      sub_23BBD9978();

      sub_23BBDA918();
      swift_getAtKeyPath();
      sub_23B97B450(v27, 0);
      (*(v25 + 8))(v9, v7);
      if (v45 != 1)
      {
        goto LABEL_5;
      }
    }

    KeyPath = swift_getKeyPath();
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = KeyPath;
    v4[24] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCE0, &qword_23BBF0D48);
    sub_23BA51DA0();
    sub_23BA52108();
    sub_23BBDACD8();
    v23 = 0;
    goto LABEL_8;
  }

  sub_23BA4F2E8(*a1, v22, a1, v6);
  *(v6 + *(v39 + 36)) = 0x3FF0000000000000;
  sub_23B9A721C(v6, v4, &qword_27E19CCC0, &qword_23BBF0D00);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCE0, &qword_23BBF0D48);
  sub_23BA51DA0();
  sub_23BA52108();
  sub_23BBDACD8();
  sub_23B9A8E20(v6, &qword_27E19CCC0);
  v23 = 0;
  v24 = v14;
LABEL_8:
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCD0, &qword_23BBF0D10);
  __swift_storeEnumTagSinglePayload(v24, v23, 1, v30);
  v31 = v24;
  v32 = v40;
  v33 = v42;
  sub_23B9A721C(v40, v42, &qword_27E19CB40, &qword_23BBF0A00);
  v34 = v43;
  sub_23B9A721C(v31, v43, &qword_27E19CCC8, &qword_23BBF0D08);
  v35 = v44;
  sub_23B9A721C(v33, v44, &qword_27E19CB40, &qword_23BBF0A00);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CCD8, &qword_23BBF0D18);
  sub_23B9A721C(v34, v35 + *(v36 + 48), &qword_27E19CCC8, &qword_23BBF0D08);
  sub_23B9A8E20(v31, &qword_27E19CCC8);
  sub_23B9A8E20(v32, &qword_27E19CB40);
  sub_23B9A8E20(v34, &qword_27E19CCC8);
  return sub_23B9A8E20(v33, &qword_27E19CB40);
}

uint64_t sub_23BA4F2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a3;
  v32 = a4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD58, &qword_23BBF0D78);
  MEMORY[0x28223BE20](v30);
  v7 = &v27 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD18, &qword_23BBF0D60);
  MEMORY[0x28223BE20](v31);
  v9 = &v27 - v8;
  v10 = sub_23BBDA928();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD48, &qword_23BBF7650);
  MEMORY[0x28223BE20](v29);
  v15 = &v27 - v14;
  v33 = a1;
  v34 = a2;
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v16 = qword_27E197648;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_23BBDBA28();

  v17 = v28 + *(type metadata accessor for TertiaryContent(0) + 28);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v18, 0);
    (*(v11 + 8))(v13, v10);
    if (v33 != 1)
    {
      goto LABEL_5;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    v21 = sub_23BBDC2C8();
    v23 = v22;
    v24 = &v9[*(v31 + 36)];
    sub_23B9A721C(v15, v24, &qword_27E19CD48, &qword_23BBF7650);
    v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CD38, &qword_23BBF0D70) + 36));
    *v25 = v21;
    v25[1] = v23;
    v9[24] = 0;
    *v9 = KeyPath;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    sub_23B9A721C(v9, v7, &qword_27E19CD18, &qword_23BBF0D60);
    swift_storeEnumTagMultiPayload();
    sub_23BA51F68();
    sub_23BA5204C();
    sub_23BBDACD8();
    sub_23B9A8E20(v9, &qword_27E19CD18);
    return sub_23B9A8E20(v15, &qword_27E19CD48);
  }

  if (v18)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_23B9A721C(v15, v7, &qword_27E19CD48, &qword_23BBF7650);
  swift_storeEnumTagMultiPayload();
  sub_23BA51F68();
  sub_23BA5204C();
  sub_23BBDACD8();
  return sub_23B9A8E20(v15, &qword_27E19CD48);
}

double sub_23BA4F744@<D0>(uint64_t a1@<X8>)
{
  sub_23BB2FDF4(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_23BA4F78C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v33 = a5;
  v34 = a4;
  v32 = a1;
  v7 = sub_23BBDA928();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CDE0, &qword_23BBF0F48);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CDE8, &qword_23BBF0F50);
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v28 - v14;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CDF0, &qword_23BBF0F58);
  MEMORY[0x28223BE20](v31);
  v17 = &v28 - v16;
  if (a3)
  {
    v18 = a2;
  }

  else
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    v28 = v7;
    v20 = v19;
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    (*(v29 + 8))(v9, v28);
    v18 = v35;
  }

  v21 = v31;
  if (v18 == 2)
  {
    v22 = sub_23BBDB4F8();
  }

  else
  {
    v22 = sub_23BBDB578();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CDF8, &qword_23BBF0F60);
  (*(*(v25 - 8) + 16))(v12, v32, v25);
  v26 = &v12[*(v10 + 36)];
  *v26 = KeyPath;
  v26[1] = v23;
  sub_23BA52820();
  sub_23BBDB6D8();
  sub_23B9A8E20(v12, &qword_27E19CDE0);
  LODWORD(v23) = sub_23BBDAEF8();
  (*(v13 + 32))(v17, v15, v30);
  *&v17[*(v21 + 36)] = v23;
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23BA52904();

  sub_23BBDBA28();

  return sub_23B9A8E20(v17, &qword_27E19CDF0);
}

uint64_t sub_23BA4FBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  v6 = sub_23BBDB518();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BBDA928();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CE18, &qword_23BBF0F68);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CE20, &qword_23BBF0F70);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  if (a3)
  {
    v18 = a2;
  }

  else
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    v29 = v9;
    v30 = v12;
    v20 = a2;
    v21 = v19;
    sub_23BBD9978();

    v12 = v30;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(v20, 0);
    (*(v31 + 8))(v11, v29);
    v18 = v35;
  }

  if (v18 == 2)
  {
    sub_23BBDB568();
    v22 = v32;
    (*(v7 + 104))(v32, *MEMORY[0x277CE0A10], v6);
    v23 = sub_23BBDB548();

    (*(v7 + 8))(v22, v6);
  }

  else
  {
    v23 = sub_23BBDB428();
  }

  KeyPath = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CE28, &qword_23BBF0F78);
  (*(*(v25 - 8) + 16))(v14, v33, v25);
  v26 = &v14[*(v12 + 36)];
  *v26 = KeyPath;
  v26[1] = v23;
  sub_23BA529F8();
  sub_23BBDB6D8();
  sub_23B9A8E20(v14, &qword_27E19CE18);
  *&v17[*(v15 + 36)] = sub_23BBDAEF8();
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  sub_23BA52B1C();

  sub_23BBDBA28();

  return sub_23B9A8E20(v17, &qword_27E19CE20);
}

uint64_t sub_23BA500E4()
{
  sub_23B9B6460(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_23BA50134(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_23BA50140(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BBDB748();

  return result;
}

uint64_t sub_23BA501B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA57D90();
  *a1 = result;
  return result;
}

unint64_t sub_23BA50238()
{
  result = qword_27E19C9E0;
  if (!qword_27E19C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9C8, &qword_23BBF07A8);
    sub_23BA502BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C9E0);
  }

  return result;
}

unint64_t sub_23BA502BC()
{
  result = qword_27E19C9E8;
  if (!qword_27E19C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9F0, &qword_23BBF07C0);
    sub_23BA50348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C9E8);
  }

  return result;
}

unint64_t sub_23BA50348()
{
  result = qword_27E19C9F8;
  if (!qword_27E19C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19C9F8);
  }

  return result;
}

unint64_t sub_23BA5039C()
{
  result = qword_27E19CA00;
  if (!qword_27E19CA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D8, &qword_23BBF07B8);
    sub_23BA50420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA00);
  }

  return result;
}

unint64_t sub_23BA50420()
{
  result = qword_27E19CA08;
  if (!qword_27E19CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CA10, &qword_23BBF07C8);
    sub_23BA504D8();
    sub_23BA52ADC(&unk_27E19CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA08);
  }

  return result;
}

unint64_t sub_23BA504D8()
{
  result = qword_27E19CA18;
  if (!qword_27E19CA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CA20, &qword_23BBF07D0);
    sub_23BA50564();
    sub_23BA50648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA18);
  }

  return result;
}

unint64_t sub_23BA50564()
{
  result = qword_27E19CA28;
  if (!qword_27E19CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CA30, &qword_23BBF07D8);
    sub_23BA52ADC(&unk_27E19CA38);
    sub_23BA52ADC(&unk_27E19CA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA28);
  }

  return result;
}

unint64_t sub_23BA50648()
{
  result = qword_27E19CA58;
  if (!qword_27E19CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA58);
  }

  return result;
}

uint64_t sub_23BA5069C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA57F08();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BA506F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BA57D90();
  *a1 = result;
  return result;
}

unint64_t sub_23BA5074C()
{
  result = qword_27E19CA70;
  if (!qword_27E19CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D0, &qword_23BBF07B0);
    sub_23BA52ADC(&unk_27E19CA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CA70);
  }

  return result;
}

uint64_t sub_23BA5081C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_23BA50874(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 != 2)
  {
    return j__swift_retain(a4);
  }

  return result;
}

uint64_t sub_23BA50890(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3 != 2)
  {
    return j_j__swift_release(a4);
  }

  return result;
}

unint64_t sub_23BA508E4()
{
  result = qword_27E19CAA0;
  if (!qword_27E19CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CAA0);
  }

  return result;
}

uint64_t sub_23BA50938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Sublabels(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  sub_23B97B450(*(v7 + v6[13]), *(v7 + v6[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_23BA50A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for Sublabels(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_23BA4CA04(a1, v9, v6, v7, a3);
}

uint64_t sub_23BA50AE4(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
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

uint64_t sub_23BA50B94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23BBDCD08() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_23BBDCBE8() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | v7;
  v12 = v10 | v7 | 7;
  v13 = (v8 + 7 + ((*(v9 + 64) + v7 + ((v10 + 16) & ~v10)) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 8;
  v15 = v13 + 10;
  if (v15 <= v14)
  {
    v15 = v14;
  }

  if (v15 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 + ((((v7 + 16) & ~v7) + v8 + v12) & ~v12);
  if (v16 + 1 > ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  if (v17 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v17;
  }

  v21 = *(v19 + 84);
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = *(v19 + 84);
  }

  v23 = *(v19 + 80);
  v24 = *(v19 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = ((v20 + 1 + v12) & ~v12) + v20 + 1 + v23;
  if (a2 <= v22)
  {
    goto LABEL_35;
  }

  v26 = v24 + ((v25 + ((v11 + 32) & ~v12)) & ~v23) + 2;
  v27 = 8 * v26;
  if (v26 <= 3)
  {
    v30 = ((a2 - v22 + ~(-1 << v27)) >> v27) + 1;
    if (HIWORD(v30))
    {
      v28 = *(a1 + v26);
      if (!v28)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v30 > 0xFF)
    {
      v28 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (v30 < 2)
    {
LABEL_35:
      if ((v21 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((v25 + ((a1 + v12 + 32) & ~v12)) & ~v23, v21, v18);
      }

      else
      {
        v34 = *(a1 + 1);
        if (v34 >= 0xFFFFFFFF)
        {
          LODWORD(v34) = -1;
        }

        return (v34 + 1);
      }
    }
  }

  v28 = *(a1 + v26);
  if (!*(a1 + v26))
  {
    goto LABEL_35;
  }

LABEL_25:
  v31 = (v28 - 1) << v27;
  if (v26 > 3)
  {
    v31 = 0;
  }

  if (v26)
  {
    if (v26 <= 3)
    {
      v32 = v26;
    }

    else
    {
      v32 = 4;
    }

    switch(v32)
    {
      case 2:
        v33 = *a1;
        break;
      case 3:
        v33 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v33 = *a1;
        break;
      default:
        v33 = *a1;
        break;
    }
  }

  else
  {
    v33 = 0;
  }

  return v22 + (v33 | v31) + 1;
}

void sub_23BA50EBC(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23BBDCD08() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23BBDCBE8() - 8);
  v12 = *(v11 + 80);
  v13 = v12 | v9;
  v14 = v12 | v9 | 7;
  v15 = (v10 + 7 + ((*(v11 + 64) + v9 + ((v12 + 16) & ~v12)) & ~v9)) & 0xFFFFFFFFFFFFFFF8;
  v16 = v15 + 8;
  v17 = v15 + 10;
  if (v17 <= v16)
  {
    v17 = v16;
  }

  if (v17 <= 3)
  {
    v17 = 3;
  }

  v18 = v17 + ((((v9 + 16) & ~v9) + v10 + v14) & ~v14);
  if (v18 + 1 > ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v19 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(a4 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 84);
  if (v23 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = *(v22 + 84);
  }

  v25 = v20 + 1;
  v26 = (v20 + 1 + v14) & ~v14;
  v27 = (v13 + 32) & ~v14;
  v28 = *(v22 + 80);
  v29 = v26 + v25 + v28;
  v30 = *(v22 + 64) + ((v29 + v27) & ~v28) + 2;
  v31 = 8 * v30;
  if (a3 <= v24)
  {
    v32 = 0;
  }

  else if (v30 <= 3)
  {
    v35 = ((a3 - v24 + ~(-1 << v31)) >> v31) + 1;
    if (HIWORD(v35))
    {
      v32 = 4;
    }

    else
    {
      if (v35 < 0x100)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      if (v35 >= 2)
      {
        v32 = v36;
      }

      else
      {
        v32 = 0;
      }
    }
  }

  else
  {
    v32 = 1;
  }

  if (v24 < a2)
  {
    v33 = ~v24 + a2;
    if (v30 < 4)
    {
      v34 = (v33 >> v31) + 1;
      if (v30)
      {
        v37 = v33 & ~(-1 << v31);
        bzero(a1, v30);
        if (v30 == 3)
        {
          *a1 = v37;
          *(a1 + 2) = BYTE2(v37);
        }

        else if (v30 == 2)
        {
          *a1 = v37;
        }

        else
        {
          *a1 = v33;
        }
      }
    }

    else
    {
      bzero(a1, v30);
      *a1 = v33;
      v34 = 1;
    }

    switch(v32)
    {
      case 1:
        *(a1 + v30) = v34;
        return;
      case 2:
        *(a1 + v30) = v34;
        return;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v30) = v34;
        return;
      default:
        return;
    }
  }

  switch(v32)
  {
    case 1:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 2:
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    case 3:
LABEL_54:
      __break(1u);
      JUMPOUT(0x23BA51264);
    case 4:
      *(a1 + v30) = 0;
      goto LABEL_36;
    default:
LABEL_36:
      if (a2)
      {
LABEL_37:
        if ((v23 & 0x80000000) != 0)
        {

          __swift_storeEnumTagSinglePayload((v29 + ((a1 + v14 + 32) & ~v14)) & ~v28, a2, v23, v21);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *(a1 + 2) = 0;
          *(a1 + 3) = 0;
          *a1 = a2 & 0x7FFFFFFF;
          *(a1 + 1) = 0;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return;
  }
}

uint64_t sub_23BA512A0()
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_23BA512F8()
{
  OUTLINED_FUNCTION_19();
  v2 = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(0);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_23BA51340(uint64_t a1)
{
  result = type metadata accessor for SubscriptionStoreCopyWriter.AccessibilityPair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23BA513AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23BA513EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BA51440(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_23BA51480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BA514EC(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_14_14();
    v3 = v2 - 1;
    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CB40, &qword_23BBF0A00);
    v5 = OUTLINED_FUNCTION_10_12();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_23BA5158C()
{
  OUTLINED_FUNCTION_19();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CB40, &qword_23BBF0A00);
    v3 = OUTLINED_FUNCTION_10_12();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_23BA5160C(uint64_t a1)
{
  sub_23B9CE218(319, &qword_27E197B20, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    sub_23BA516F8(319, v1);
    if (v3 <= 0x3F)
    {
      sub_23B9CE218(319, &qword_27E197E40, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BA516F8(uint64_t a1, double a2)
{
  if (!qword_27E19CB58[0])
  {
    sub_23BBDAA98();
    v2 = sub_23BBDD648();
    if (!v3)
    {
      atomic_store(v2, qword_27E19CB58);
    }
  }
}

unint64_t sub_23BA51754()
{
  result = qword_27E19CBE0;
  if (!qword_27E19CBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CBE8, &qword_23BBF0A38);
    sub_23BA52ADC(&unk_27E19CBF0);
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CBE0);
  }

  return result;
}

uint64_t sub_23BA5180C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9C8, &qword_23BBF07A8);
  v4 = type metadata accessor for PrimaryLabels(255, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D0, &qword_23BBF07B0);
  v5 = OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_6_5(v5, v4, v6);
  OUTLINED_FUNCTION_12_14(v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4();
  sub_23BBDBFE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19C9D8, &qword_23BBF07B8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_14(TupleTypeMetadata3);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();

  return swift_getWitnessTable();
}

uint64_t sub_23BA51960(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Sublabels.SublabelDivider(255, *a1, a1[1], a4);
  type metadata accessor for TertiaryContent(255);
  v5 = OUTLINED_FUNCTION_4();
  v7 = OUTLINED_FUNCTION_6_5(v5, v4, v6);
  OUTLINED_FUNCTION_12_14(v7);
  sub_23BBDACE8();
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  sub_23BA508E4();
  swift_getWitnessTable();
  sub_23BBDAEC8();
  sub_23BBDBE28();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23BA51B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23BA51B94()
{
  result = qword_27E19CC28;
  if (!qword_27E19CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CC28);
  }

  return result;
}

unint64_t sub_23BA51BE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_15(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_2_6(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = OUTLINED_FUNCTION_9_16();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23BA51C48()
{
  result = qword_27E19CC38;
  if (!qword_27E19CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CC38);
  }

  return result;
}

void sub_23BA51C9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23BA51CAC()
{
  result = qword_27E19CC78;
  if (!qword_27E19CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC60, &qword_23BBF0C88);
    sub_23BA4B584(&unk_27E19CC80);
    sub_23BA52ADC(&unk_27E19CC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CC78);
  }

  return result;
}

unint64_t sub_23BA51DA0()
{
  result = qword_27E19CCE8;
  if (!qword_27E19CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CCC0, &qword_23BBF0D00);
    sub_23BA51E58();
    sub_23BA52ADC(&qword_27E198E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CCE8);
  }

  return result;
}

unint64_t sub_23BA51E58()
{
  result = qword_27E19CCF0;
  if (!qword_27E19CCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CCF8, &qword_23BBF0D50);
    sub_23BA51EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CCF0);
  }

  return result;
}

unint64_t sub_23BA51EDC()
{
  result = qword_27E19CD00;
  if (!qword_27E19CD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CD08, &qword_23BBF0D58);
    sub_23BA51F68();
    sub_23BA5204C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD00);
  }

  return result;
}

unint64_t sub_23BA51F68()
{
  result = qword_27E19CD10;
  if (!qword_27E19CD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CD18, &qword_23BBF0D60);
    sub_23BA52ADC(&unk_27E19CD20);
    sub_23BA52ADC(&unk_27E19CD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD10);
  }

  return result;
}

unint64_t sub_23BA5204C()
{
  result = qword_27E19CD40;
  if (!qword_27E19CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CD48, &qword_23BBF7650);
    sub_23BA4B584(&qword_27E198368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD40);
  }

  return result;
}

unint64_t sub_23BA52108()
{
  result = qword_27E19CD50;
  if (!qword_27E19CD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CCE0, &qword_23BBF0D48);
    sub_23BA52ADC(&unk_27E19CD20);
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD50);
  }

  return result;
}

uint64_t sub_23BA521D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_23BA52210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BA52268(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC10, &qword_23BBF0C30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC18, &qword_23BBF0C38);
  OUTLINED_FUNCTION_4();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_14(TupleTypeMetadata3);
  OUTLINED_FUNCTION_2_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_15();
  sub_23BBDC078();
  OUTLINED_FUNCTION_12_6();

  return swift_getWitnessTable();
}

unint64_t sub_23BA52304()
{
  result = qword_27E19CD68;
  if (!qword_27E19CD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CD70, &qword_23BBF0E88);
    sub_23BA52388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD68);
  }

  return result;
}

unint64_t sub_23BA52388()
{
  result = qword_27E19CD78;
  if (!qword_27E19CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC40, &qword_23BBF0C68);
    sub_23BA52414();
    sub_23B97AD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD78);
  }

  return result;
}

unint64_t sub_23BA52414()
{
  result = qword_27E19CD80;
  if (!qword_27E19CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CD88, &qword_23BBF0E90);
    sub_23BA52ADC(&unk_27E19CD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CD80);
  }

  return result;
}

unint64_t sub_23BA524C8()
{
  result = qword_27E19CDA0;
  if (!qword_27E19CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC70, &qword_23BBF0C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CC60, &qword_23BBF0C88);
    sub_23BA51CAC();
    swift_getOpaqueTypeConformance2();
    sub_23BA4B584(&qword_27E198368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CDA0);
  }

  return result;
}

unint64_t sub_23BA525C4()
{
  result = qword_27E19CDA8;
  if (!qword_27E19CDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CCB0, &qword_23BBF0CF0);
    sub_23BA5267C();
    sub_23BA52ADC(&qword_27E19CDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CDA8);
  }

  return result;
}

unint64_t sub_23BA5267C()
{
  result = qword_27E19CDB0;
  if (!qword_27E19CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CCA0, &qword_23BBF0CB0);
    sub_23BA52ADC(&unk_27E19CDB8);
    sub_23BA52ADC(&qword_27E198388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CDB0);
  }

  return result;
}

unint64_t sub_23BA52820()
{
  result = qword_27E19CE00;
  if (!qword_27E19CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CDE0, &qword_23BBF0F48);
    sub_23BA52ADC(&unk_27E19CE08);
    sub_23BA52ADC(&qword_27E198388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CE00);
  }

  return result;
}

unint64_t sub_23BA52904()
{
  result = qword_27E19CE10;
  if (!qword_27E19CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CDF0, &qword_23BBF0F58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CDE0, &qword_23BBF0F48);
    sub_23BA52820();
    swift_getOpaqueTypeConformance2();
    sub_23BA52ADC(&qword_27E19CDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CE10);
  }

  return result;
}

unint64_t sub_23BA529F8()
{
  result = qword_27E19CE30;
  if (!qword_27E19CE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CE18, &qword_23BBF0F68);
    sub_23BA52ADC(&unk_27E19CE38);
    sub_23BA52ADC(&qword_27E198388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CE30);
  }

  return result;
}

unint64_t sub_23BA52ADC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_15(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_2_6(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23BA52B1C()
{
  result = qword_27E19CE40;
  if (!qword_27E19CE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CE20, &qword_23BBF0F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CE18, &qword_23BBF0F68);
    sub_23BA529F8();
    swift_getOpaqueTypeConformance2();
    sub_23BA52ADC(&qword_27E19CDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CE40);
  }

  return result;
}

unint64_t sub_23BA52C54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_15_15(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_2_6(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_2_20();
    sub_23BA4B584(v8);
    result = OUTLINED_FUNCTION_9_16();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{

  return sub_23BBDC3D8();
}

uint64_t sub_23BA52DF8()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDCA28();
  *v0 = result;
  return result;
}

uint64_t sub_23BA52E20()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDCD68();
  *v0 = result;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  return result;
}

uint64_t sub_23BA52E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v97) = a3;
  v95 = sub_23BBDCB58();
  OUTLINED_FUNCTION_7();
  v89 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_6();
  v94 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_6_1();
  v93 = v12 - v13;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v14);
  v92 = &v84 - v15;
  v16 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for Subscription(v16);
  OUTLINED_FUNCTION_7();
  v91 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_6();
  v90 = v19;
  v20 = *(a5 + 8);
  v86 = sub_23BBDD788();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  v85 = &v84 - v22;
  OUTLINED_FUNCTION_5_3();
  v23 = sub_23BBDD928();
  OUTLINED_FUNCTION_7();
  v25 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  swift_getWitnessTable();
  v96 = sub_23BBDD8A8();
  OUTLINED_FUNCTION_7();
  v88 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v87 = v31 - v32;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  v100 = a2;
  LOBYTE(v101) = v97 & 1;
  v97 = sub_23BBDD198();
  v36 = *(v97 + 16);
  if (v36 != sub_23BBDD458())
  {
    MEMORY[0x23EEB59C0](a4, v20);
    swift_getWitnessTable();
    sub_23BBDD9C8();
    swift_getWitnessTable();
    sub_23BBDD9B8();
    (*(v25 + 8))(v28, v23);
    if (qword_27E1976D0 != -1)
    {
LABEL_27:
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v37 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v37, qword_27E1BFC88);
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000076, 0x800000023BBE1250);
    (*(v88 + 16))(v87, v35, v96);
    swift_getWitnessTable();
    sub_23BBDD2B8();
    v38 = MEMORY[0x23EEB5A30]();
    v40 = v39;

    MEMORY[0x23EEB5890](v38, v40);

    v41 = v104;
    v42 = v105;
    v43 = sub_23BBDD598();

    v44 = sub_23BBD9988();

    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v45 = 136446466;
      *(v45 + 4) = OUTLINED_FUNCTION_11_14();
      *(v45 + 12) = 2082;
      v46 = sub_23BA5AB90(v41, v42, &v104);

      *(v45 + 14) = v46;
      _os_log_impl(&dword_23B970000, v44, v43, "%{public}s%{public}s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    v47 = OUTLINED_FUNCTION_61_0();
    v48(v47);
  }

  v49 = 0;
  v103 = MEMORY[0x277D84FA0];
  v50 = v97;
  v96 = *(v97 + 16);
  v51 = v90;
  v52 = (v89 + 32);
  v53 = (v89 + 8);
  v35 = v92;
  while (v96 != v49)
  {
    if (v49 >= *(v50 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    sub_23BA54F2C(v50 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v49, v51);
    sub_23BBDC8F8();
    v54 = v93;
    sub_23B99FCE0(v35, v93, &qword_27E197B90, &qword_23BBE3F90);
    v55 = v95;
    if (__swift_getEnumTagSinglePayload(v54, 1, v95) == 1)
    {
      result = sub_23B979910(v54, &qword_27E197B90, &qword_23BBE3F90);
      __break(1u);
      return result;
    }

    ++v49;
    sub_23B979910(v35, &qword_27E197B90, &qword_23BBE3F90);
    v56 = v94;
    (*v52)(v94, v54, v55);
    v57 = sub_23BBDCAA8();
    v58 = v55;
    v59 = v57;
    v61 = v60;
    (*v53)(v56, v58);
    sub_23B9B9680(&v104, v59, v61, v62, v63, v64, v65, v66, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);

    sub_23BA1D2DC(v51);
    v50 = v97;
  }

  v67 = v103;
  v68 = *(v103 + 16);
  if (v68 > 1)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v69 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v69, qword_27E1BFC88);
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_23BBDD768();
    MEMORY[0x23EEB5890](0xD000000000000083, 0x800000023BBE1320);
    sub_23BA98AB8(v67);
    v70 = MEMORY[0x23EEB5A30]();
    v72 = v71;

    MEMORY[0x23EEB5890](v70, v72);

    v74 = v104;
    v73 = v105;
    v75 = sub_23BBDD598();

    v76 = sub_23BBD9988();

    if (os_log_type_enabled(v76, v75))
    {
      v77 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v77 = 136446466;
      *(v77 + 4) = OUTLINED_FUNCTION_11_14();
      *(v77 + 12) = 2082;
      v78 = sub_23BA5AB90(v74, v73, &v104);

      *(v77 + 14) = v78;
      _os_log_impl(&dword_23B970000, v76, v75, "%{public}s%{public}s", v77, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }

    else
    {
    }

    v68 = *(v67 + 16);
  }

  if (!v68)
  {
    if (qword_27E1976D0 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_27E1976D0);
    }

    v79 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v79, qword_27E1BFC88);
    v80 = sub_23BBDD598();
    v81 = sub_23BBD9988();
    if (os_log_type_enabled(v81, v80))
    {
      v82 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v82 = 136446466;
      *(v82 + 4) = OUTLINED_FUNCTION_11_14();
      *(v82 + 12) = 2082;
      *(v82 + 14) = sub_23BA5AB90(0xD00000000000004BLL, 0x800000023BBE12D0, &v104);
      _os_log_impl(&dword_23B970000, v81, v80, "%{public}s%{public}s", v82, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_15_3();
    }
  }

  return v50;
}

uint64_t sub_23BA538D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  v9 = sub_23BBDCDB8();
  OUTLINED_FUNCTION_7();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_1();
  v15 = v13 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v25[-v18];
  v20 = *(v11 + 16);
  v20(&v25[-v18], a1, v9, v17);
  sub_23BBDC8F8();
  v21 = sub_23BBDCB58();
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    (*(v11 + 8))(v19, v9);
    sub_23B979910(v8, &qword_27E197B90, &qword_23BBE3F90);
    v22 = 1;
  }

  else
  {
    sub_23B979910(v8, &qword_27E197B90, &qword_23BBE3F90);
    (v20)(v15, v19, v9);
    sub_23BBA7A78(v15, v27, v26 & 1, a4);
    (*(v11 + 8))(v19, v9);
    v22 = 0;
  }

  v23 = type metadata accessor for Subscription(0);
  return __swift_storeEnumTagSinglePayload(a4, v22, 1, v23);
}

BOOL sub_23BA53B00(double a1)
{
  v1 = sub_23BBDC8A8();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  sub_23BBDCD28();
  sub_23BBDC878();
  sub_23BA54EC4(&qword_27E1987F8, MEMORY[0x277CDD168], MEMORY[0x277CDD170]);
  v9 = sub_23BBDCF38();
  v10 = *(v3 + 8);
  v10(v7, v1);
  v11 = OUTLINED_FUNCTION_61_0();
  (v10)(v11);
  return (v9 & 1) == 0;
}

uint64_t sub_23BA53C48()
{
  OUTLINED_FUNCTION_13_1();
  result = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

BOOL sub_23BA53C70()
{
  v0 = sub_23BBDCCC8();
  OUTLINED_FUNCTION_7();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_1();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  sub_23BBDCCD8();
  sub_23BBDCCD8();
  v10 = sub_23BBDCCB8();
  v11 = *(v2 + 8);
  v11(v6, v0);
  v11(v9, v0);
  if (v10)
  {
    v12 = sub_23BBDCCE8();
    v13 = sub_23BBDCCE8();
    return v12 < v13;
  }

  v14 = sub_23BA53E18();
  if (v15 & 1) != 0 || (v16 = v14, v17 = sub_23BA53E18(), (v18))
  {
    v19 = sub_23BA53F54();
    if (v20 & 1) != 0 || (v16 = v19, v17 = sub_23BA53F54(), (v21))
    {
      v22 = sub_23BA54090();
      if (v23 & 1) != 0 || (v16 = v22, v17 = sub_23BA54090(), (v24))
      {
        v12 = sub_23BA5421C();
        v13 = sub_23BA5421C();
        return v12 < v13;
      }
    }
  }

  return v16 < v17;
}

uint64_t sub_23BA53E18()
{
  v0 = sub_23BBDCCC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDCCD8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDD2D0])
  {
    return sub_23BBDCCE8();
  }

  if (v4 == *MEMORY[0x277CDD2D8])
  {
    v6 = sub_23BBDCCE8();
    v7 = (v6 * 7) >> 64;
    result = 7 * v6;
    if (v7 != result >> 63)
    {
      __break(1u);
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_23BA53F54()
{
  v0 = sub_23BBDCCC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDCCD8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDD2E8])
  {
    return sub_23BBDCCE8();
  }

  if (v4 == *MEMORY[0x277CDD2E0])
  {
    v6 = sub_23BBDCCE8();
    v7 = (v6 * 12) >> 64;
    result = 12 * v6;
    if (v7 != result >> 63)
    {
      __break(1u);
    }
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return result;
}

uint64_t sub_23BA54090()
{
  v0 = sub_23BBDCCC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDCCD8();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CDD2D0])
  {
    if (!(sub_23BBDCCE8() % 7))
    {
      v5 = sub_23BBDCCE8() / 7;
LABEL_10:
      (*(v1 + 8))(v3, v0);
      return v5;
    }

    goto LABEL_9;
  }

  if (v4 == *MEMORY[0x277CDD2D8])
  {
    v5 = sub_23BBDCCE8();
    goto LABEL_10;
  }

  if (v4 != *MEMORY[0x277CDD2E0])
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  result = sub_23BBDCCE8();
  v5 = 52 * result;
  if ((result * 52) >> 64 == (52 * result) >> 63)
  {
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BA5421C()
{
  v0 = sub_23BBDCCC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BBDCCD8();
  LODWORD(result) = (*(v1 + 88))(v3, v0);
  if (result == *MEMORY[0x277CDD2D0])
  {
    return sub_23BBDCCE8();
  }

  if (result == *MEMORY[0x277CDD2D8])
  {
    v5 = sub_23BBDCCE8();
    v6 = (v5 * 7) >> 64;
    result = 7 * v5;
    if (v6 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277CDD2E8])
  {
    v7 = sub_23BBDCCE8();
    v8 = (v7 * 28) >> 64;
    result = 28 * v7;
    if (v8 == result >> 63)
    {
      return result;
    }

    __break(1u);
  }

  if (result == *MEMORY[0x277CDD2E0])
  {
    v9 = sub_23BBDCCE8();
    result = 365 * v9;
    if ((v9 * 365) >> 64 == (365 * v9) >> 63)
    {
      return result;
    }

    __break(1u);
  }

  (*(v1 + 8))(v3, v0);
  return -1;
}

uint64_t sub_23BA543B4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v123) = a3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B80, &qword_23BC03950);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v118 = v109 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_1();
  v112 = v8 - v9;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_3();
  v111 = v11;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_3();
  v116 = v13;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_3();
  v117 = v15;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_3();
  v113 = v17;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v18);
  v119 = (v109 - v19);
  OUTLINED_FUNCTION_5_3();
  sub_23BBDCC88();
  OUTLINED_FUNCTION_7();
  v121 = v20;
  v122 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v110 = v22 - v23;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_3();
  v114 = v25;
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x28223BE20](v26);
  v120 = v109 - v27;
  OUTLINED_FUNCTION_5_3();
  v28 = sub_23BBDCD08();
  OUTLINED_FUNCTION_7();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_1();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  swift_getKeyPath();
  v124 = a1;
  sub_23B9FCC2C();
  v37 = v36;
  v38 = a2;

  swift_getKeyPath();
  sub_23B9FCC2C();
  v40 = v39;

  if (v37 != v40)
  {
    swift_getKeyPath();
    sub_23B9FCC2C();
    v55 = v54;

    swift_getKeyPath();
    sub_23B9FCC2C();
    v57 = v56;

    v58 = v55 < v57;
    return v58 & 1;
  }

  KeyPath = swift_getKeyPath();
  sub_23B9FF918(KeyPath);

  v42 = swift_getKeyPath();
  sub_23B9FF918(v42);

  sub_23BA54EC4(&qword_27E19CE68, MEMORY[0x277CDD300], MEMORY[0x277CDD310]);
  v43 = sub_23BBDCF38();
  v44 = v38;
  v47 = *(v30 + 8);
  v45 = v30 + 8;
  v46 = v47;
  v48 = OUTLINED_FUNCTION_8_19();
  v47(v48);
  v49 = OUTLINED_FUNCTION_61_0();
  v47(v49);
  if ((v43 & 1) == 0)
  {
    v59 = swift_getKeyPath();
    sub_23B9FF918(v59);

    v60 = swift_getKeyPath();
    sub_23B9FF918(v60);

    v58 = sub_23BA53C70();
    v61 = OUTLINED_FUNCTION_8_19();
    v46(v61);
    v62 = OUTLINED_FUNCTION_61_0();
    v46(v62);
    return v58 & 1;
  }

  v109[2] = v44;
  if ((v123 & 1) == 0)
  {
    goto LABEL_28;
  }

  v109[0] = v34;
  v109[1] = v28;
  v123 = v45;
  v50 = swift_getKeyPath();
  v51 = v119;
  sub_23B9FF918(v50);
  v52 = v121;

  OUTLINED_FUNCTION_3_18(v51);
  if (v76)
  {
    v53 = v122;
  }

  else
  {
    v63 = v122;
    v119 = *(v122 + 32);
    v119(v120, v51, v52);
    v64 = swift_getKeyPath();
    v51 = v113;
    sub_23B9FF918(v64);

    v65 = v52;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v52);
    if (EnumTagSinglePayload != 1)
    {
      v119(v114, v51, v52);
      v81 = v120;
      sub_23BBDCC68();
      sub_23BBDCC68();
      v82 = sub_23BBDCF38();
      v83 = OUTLINED_FUNCTION_8_19();
      v46(v83);
      v84 = OUTLINED_FUNCTION_61_0();
      v46(v84);
      v85 = v81;
      if ((v82 & 1) == 0)
      {
        v101 = v114;
        sub_23BBDCC68();
        sub_23BBDCC68();
        v58 = sub_23BA53C70();
        v102 = OUTLINED_FUNCTION_8_19();
        v46(v102);
        v103 = OUTLINED_FUNCTION_61_0();
        v46(v103);
        v104 = *(v122 + 8);
        v104(v101, v65);
        v104(v85, v65);
        return v58 & 1;
      }

      v86 = v81;
      sub_23BBDCC58();
      OUTLINED_FUNCTION_5_19();
      v87 = v114;
      sub_23BBDCC58();
      OUTLINED_FUNCTION_9_17();
      v88 = v122;
      if ((v89 & 1) == 0)
      {
        sub_23BBDCC58();
        OUTLINED_FUNCTION_5_19();
        v105 = sub_23BBDCC58();
        v58 = MEMORY[0x23EEB5DF0](v105);
        v106 = *(v88 + 8);
        v107 = v121;
        v106(v87, v121);
        v106(v86, v107);
        return v58 & 1;
      }

      v90 = *(v122 + 8);
      v91 = v121;
      v90(v87, v121);
      v90(v86, v91);
      goto LABEL_28;
    }

    (*(v63 + 8))(v120, v52);
    v53 = v63;
  }

  sub_23B979910(v51, &unk_27E19FEF0, &unk_23BBE3E40);
  v67 = swift_getKeyPath();
  v68 = v117;
  sub_23B9FF918(v67);

  v69 = swift_getKeyPath();
  v70 = v116;
  sub_23B9FF918(v69);

  v71 = *(v115 + 48);
  v72 = v118;
  sub_23B99FCE0(v68, v118, &unk_27E19FEF0, &unk_23BBE3E40);
  sub_23B99FCE0(v70, v72 + v71, &unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_3_18(v72);
  if (v76)
  {
    sub_23B979910(v70, &unk_27E19FEF0, &unk_23BBE3E40);
    v73 = OUTLINED_FUNCTION_8_19();
    sub_23B979910(v73, v74, &unk_23BBE3E40);
    OUTLINED_FUNCTION_3_18(v72 + v71);
    if (v76)
    {
      sub_23B979910(v72, &unk_27E19FEF0, &unk_23BBE3E40);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v75 = v111;
  sub_23B99FCE0(v72, v111, &unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_3_18(v72 + v71);
  if (v76)
  {
    sub_23B979910(v70, &unk_27E19FEF0, &unk_23BBE3E40);
    v77 = OUTLINED_FUNCTION_8_19();
    sub_23B979910(v77, v78, &unk_23BBE3E40);
    (*(v53 + 8))(v75, v52);
LABEL_19:
    sub_23B979910(v72, &qword_27E197B80, &qword_23BC03950);
    goto LABEL_20;
  }

  v92 = v110;
  (*(v53 + 32))(v110, v72 + v71, v52);
  sub_23BA54EC4(&qword_27E197B88, MEMORY[0x277CDD2B8], MEMORY[0x277CDD2C8]);
  OUTLINED_FUNCTION_61_0();
  LODWORD(v123) = sub_23BBDCF38();
  v93 = *(v53 + 8);
  v93(v92, v52);
  sub_23B979910(v70, &unk_27E19FEF0, &unk_23BBE3E40);
  sub_23B979910(v68, &unk_27E19FEF0, &unk_23BBE3E40);
  v93(v75, v52);
  sub_23B979910(v72, &unk_27E19FEF0, &unk_23BBE3E40);
  if (v123)
  {
LABEL_28:
    sub_23BBDCD68();
    OUTLINED_FUNCTION_5_19();
    sub_23BBDCD68();
    OUTLINED_FUNCTION_9_17();
    if (v94)
    {
      v95 = sub_23BBDC8C8();
      v97 = v96;
      if (v95 == sub_23BBDC8C8() && v97 == v98)
      {

        v58 = 0;
      }

      else
      {
        v58 = sub_23BBDDA88();
      }
    }

    else
    {
      sub_23BBDCD68();
      OUTLINED_FUNCTION_5_19();
      v100 = sub_23BBDCD68();
      v58 = MEMORY[0x23EEB5DF0](v100);
    }

    return v58 & 1;
  }

LABEL_20:
  v79 = swift_getKeyPath();
  v80 = v112;
  sub_23B9FF918(v79);

  OUTLINED_FUNCTION_3_18(v80);
  if (v76)
  {
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  sub_23B979910(v80, &unk_27E19FEF0, &unk_23BBE3E40);
  return v58 & 1;
}

uint64_t sub_23BA54E54()
{
  OUTLINED_FUNCTION_13_1();
  result = sub_23BBDCA28();
  *v0 = result;
  return result;
}

uint64_t sub_23BA54EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA54F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_9_17()
{

  JUMPOUT(0x23EEB5E00);
}

unint64_t OUTLINED_FUNCTION_11_14()
{

  return sub_23BA5AB90(0, 0xE000000000000000, (v0 - 112));
}

uint64_t sub_23BA55030(uint64_t a1)
{
  result = sub_23BBD96B8();
  if (v2 <= 0x3F)
  {
    result = _s11PriceStringOMa(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23BA550E0(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for PlaceholderLayouts(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  OUTLINED_FUNCTION_10_2();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_5:
    v9 = a1 + v12;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
    OUTLINED_FUNCTION_10_2();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[13];
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
      v12 = a3[14];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[11]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_23BA55264(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for PlaceholderLayouts(0);
  OUTLINED_FUNCTION_10_2();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
    OUTLINED_FUNCTION_10_2();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AA18, qword_23BBF1050);
      OUTLINED_FUNCTION_10_2();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[13];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
        v14 = a4[14];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_23BA553F0(uint64_t a1)
{
  type metadata accessor for PlaceholderLayouts(319);
  if (v1 <= 0x3F)
  {
    sub_23BA55644(319, &qword_27E19CE90, type metadata accessor for ProductViewText.Storage, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23BA55588(319);
      if (v3 <= 0x3F)
      {
        sub_23BA555EC();
        if (v4 <= 0x3F)
        {
          sub_23BA55644(319, &qword_27E198D28, MEMORY[0x277CDFB98], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_23BA55644(319, &qword_27E198D30, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23BA55588(uint64_t a1)
{
  if (!qword_27E197B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E197B18, qword_23BBE3DF0);
    v1 = sub_23BBDD648();
    if (!v2)
    {
      atomic_store(v1, &qword_27E197B10);
    }
  }
}

void sub_23BA555EC()
{
  if (!qword_27E19CE98)
  {
    v0 = sub_23BBDDC08();
    if (!v1)
    {
      atomic_store(v0, &qword_27E19CE98);
    }
  }
}

void sub_23BA55644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ProductViewText.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA55774);
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

unint64_t sub_23BA557B0()
{
  result = qword_27E19CEA0;
  if (!qword_27E19CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CEA0);
  }

  return result;
}

uint64_t sub_23BA55820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEA8, &qword_23BBF1150);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v1);
  v3 = &v8[-v2];
  *v3 = sub_23BBDC318();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEB0, &qword_23BBF1158);
  sub_23BA559F4(v0, (v3 + *(v5 + 44)));
  type metadata accessor for ProductViewText(0);
  if (qword_27E197648 != -1)
  {
    swift_once();
  }

  memcpy(v9, &qword_27E1BF870, sizeof(v9));
  memcpy(v8, &qword_27E1BF870, sizeof(v8));
  sub_23B996E0C(v9, v10);
  swift_getAtKeyPath();
  memcpy(v10, v8, sizeof(v10));
  sub_23B996E44(v10);
  sub_23B97B518(&qword_27E19CEB8, &qword_27E19CEA8, &qword_23BBF1150, MEMORY[0x277CE11A8]);
  sub_23BBDBA28();

  return sub_23B979910(v3, &qword_27E19CEA8, &qword_23BBF1150);
}

uint64_t sub_23BA559F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v86 = sub_23BBDB148();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LayoutMetrics(0);
  MEMORY[0x28223BE20](v4 - 8);
  v80 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23BBDA468();
  MEMORY[0x28223BE20](v76);
  v81 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEC0, &qword_23BBF1160);
  MEMORY[0x28223BE20](v77);
  v78 = &v72 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEC8, &qword_23BBF1168);
  MEMORY[0x28223BE20](v89);
  v79 = &v72 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CED0, &qword_23BBF1170);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = &v72 - v9;
  *&v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CED8, &qword_23BBF1178);
  MEMORY[0x28223BE20](v90);
  v82 = &v72 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEE0, &qword_23BBF1180);
  MEMORY[0x28223BE20](v94);
  *&v91 = &v72 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEE8, &unk_23BBF1188);
  MEMORY[0x28223BE20](v93);
  v92 = (&v72 - v12);
  v13 = sub_23BBDA308();
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BBDA438();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  v25 = type metadata accessor for ProductViewText.Storage(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ProductViewText(0);
  sub_23BA56E18(a1 + v28[5], v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_23B979910(v24, &qword_27E198E90, &unk_23BBE6CD0);
  }

  else
  {
    sub_23BA56E88();
    sub_23B9B75DC();
    sub_23BBDA428();
    sub_23BA576D8(&qword_27E198E48, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    v29 = sub_23BBDD6A8();
    v30 = *(v16 + 8);
    v30(v18, v15);
    v30(v21, v15);
    if ((v29 & 1) == 0)
    {
      sub_23BA56514(v100);
      v90 = v100[1];
      v91 = v100[0];
      LODWORD(v89) = LOWORD(v100[2]);
      v59 = BYTE2(v100[2]);
      v60 = *(a1 + v28[6]);
      v61 = *(a1 + v28[7]);
      v62 = *(a1 + v28[8]);
      v63 = (a1 + v28[10]);
      if (*v63)
      {
        v64 = (*v63)();
        v66 = v65;
      }

      else
      {
        v67 = v73;
        sub_23B9B70F0();
        v66 = sub_23BBDA2E8();
        (*(v74 + 8))(v67, v75);
        if (v66)
        {
          v64 = 0;
        }

        else
        {
          v64 = 2;
        }
      }

      v99[0] = v59;
      KeyPath = swift_getKeyPath();
      v69 = v99[0];
      LOBYTE(v100[0]) = v66 & 1;
      v70 = v92;
      v71 = v90;
      *v92 = v91;
      v70[1] = v71;
      *(v70 + 16) = v89;
      *(v70 + 34) = v69;
      *(v70 + 35) = v60;
      *(v70 + 36) = v61;
      *(v70 + 37) = v62;
      *(v70 + 5) = KeyPath;
      *(v70 + 6) = v64;
      *(v70 + 56) = v66 & 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF00, &qword_23BBF1198);
      sub_23BA571B4();
      sub_23BA5755C();
      sub_23BBDACD8();
      return sub_23BA57780(v27, type metadata accessor for ProductViewText.Storage);
    }

    sub_23BA57780(v27, type metadata accessor for ProductViewText.Storage);
  }

  v31 = a1;
  v32 = *(a1 + v28[6]);
  v33 = v88;
  v34 = v89;
  if (v32 == 3)
  {
    v35 = v91;
    v36 = v91;
    v37 = 1;
  }

  else
  {
    v38 = *(v76 + 20);
    v39 = *MEMORY[0x277CE0118];
    v40 = sub_23BBDAA88();
    v41 = v81;
    (*(*(v40 - 8) + 104))(&v81[v38], v39, v40);
    __asm { FMOV            V0.2D, #2.0 }

    *v41 = _Q0;
    type metadata accessor for PlaceholderLayouts(0);
    v76 = v31;
    sub_23BA57728();
    v47 = sub_23BBDC318();
    v49 = v48;
    v50 = v78;
    v51 = &v78[*(v77 + 36)];
    sub_23BA56E88();
    v52 = type metadata accessor for LayoutMetricsModifier(0);
    v51[*(v52 + 20)] = 1;
    v53 = &v51[*(v52 + 24)];
    *v53 = v47;
    v53[1] = v49;
    sub_23BA56E88();
    v54 = v79;
    sub_23BA56EE0(v50, v79);
    v55 = v83;
    sub_23BBDB128();
    v56 = sub_23BA56F50();
    sub_23BBDB968();
    (*(v84 + 8))(v55, v86);
    sub_23B979910(v54, &qword_27E19CEC8, &qword_23BBF1168);
    if (qword_27E197648 != -1)
    {
      swift_once();
    }

    memcpy(v99, &qword_27E1BF870, sizeof(v99));
    memcpy(v98, &qword_27E1BF870, sizeof(v98));
    sub_23B996E0C(v99, v100);
    swift_getAtKeyPath();
    memcpy(v100, v98, sizeof(v100));
    sub_23B996E44(v100);
    v96 = v34;
    v97 = v56;
    swift_getOpaqueTypeConformance2();
    v57 = v87;
    sub_23BBDBA28();

    (*(v85 + 8))(v33, v57);
    v35 = v91;
    sub_23BA570F4();
    v36 = v35;
    v37 = 0;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v90);
  sub_23BA57154();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF00, &qword_23BBF1198);
  sub_23BA571B4();
  sub_23BA5755C();
  sub_23BBDACD8();
  return sub_23B979910(v35, &qword_27E19CEE0, &qword_23BBF1180);
}

double sub_23BA56514@<D0>(_OWORD *a2@<X8>)
{
  v62 = a2;
  v2 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - v6;
  v8 = _s11PriceStringOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v60 - v12;
  v13 = sub_23BBD96B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for ProductViewText.Storage(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BA57728();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (qword_27E197628 != -1)
      {
        swift_once();
      }

      v47 = qword_27E1BF840;
      v48 = sub_23BBDB648();
      v50 = v49;
      v52 = v51 & 1;
      *&v63 = v48;
      *(&v63 + 1) = v49;
      *&v64 = v51 & 1;
      *(&v64 + 1) = v53;
      LOBYTE(v65) = 1;
      sub_23BA51B84(v48, v49, v51 & 1);

      sub_23BBDACD8();
      v63 = v67;
      v64 = v68;
      v65 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF58, &unk_23BBF11C0);
      sub_23BA5748C();
      sub_23BBDACD8();
      if (HIBYTE(v69))
      {
        v54 = 256;
      }

      else
      {
        v54 = 0;
      }

      v63 = v67;
      v64 = v68;
      v65 = v54 | v69;
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF48, &qword_23BBF11B8);
      sub_23BA57408();
      sub_23BBDACD8();
      sub_23BA51C9C(v48, v50, v52);
      goto LABEL_22;
    case 2u:
      (*(v14 + 32))(v19, v22, v13);
      (*(v14 + 16))(v16, v19, v13);
      v30 = sub_23BBDB668();
      v32 = v31;
      *&v63 = v30;
      *(&v63 + 1) = v31;
      v34 = v33 & 1;
      *&v64 = v33 & 1;
      *(&v64 + 1) = v35;
      LOBYTE(v65) = 0;
      sub_23BA51B84(v30, v31, v33 & 1);

      sub_23BBDACD8();
      v63 = v67;
      v64 = v68;
      LOBYTE(v65) = v69;
      HIBYTE(v65) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF58, &unk_23BBF11C0);
      sub_23BA5748C();
      sub_23BBDACD8();
      if (HIBYTE(v69))
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      v63 = v67;
      v64 = v68;
      v65 = v36 | v69;
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF48, &qword_23BBF11B8);
      sub_23BA57408();
      sub_23BBDACD8();
      sub_23BA51C9C(v30, v32, v34);

      (*(v14 + 8))(v19, v13);
      break;
    case 3u:
      v37 = v61;
      sub_23BA56E88();
      sub_23BA57728();
      sub_23BAE1C0C();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      sub_23BA57780(v10, _s11PriceStringOMa);
      *&v63 = v39;
      *(&v63 + 1) = v41;
      *&v64 = v43 & 1;
      *(&v64 + 1) = v45;
      LOBYTE(v65) = 1;
      sub_23BA51B84(v39, v41, v43 & 1);

      sub_23BBDACD8();
      v63 = v67;
      v64 = v68;
      LOBYTE(v65) = v69;
      HIBYTE(v65) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF58, &unk_23BBF11C0);
      sub_23BA5748C();
      sub_23BBDACD8();
      if (HIBYTE(v69))
      {
        v46 = 256;
      }

      else
      {
        v46 = 0;
      }

      v63 = v67;
      v64 = v68;
      v65 = v46 | v69;
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF48, &qword_23BBF11B8);
      sub_23BA57408();
      sub_23BBDACD8();
      sub_23BA51C9C(v39, v41, v43 & 1);

      v29 = v37;
      v28 = _s11PriceStringOMa;
      goto LABEL_15;
    case 4u:
      sub_23BA56E88();
      sub_23BA57728();
      *&v63 = sub_23BB95790(v4);
      *(&v63 + 1) = v25;
      *&v64 = v26 & 1;
      *(&v64 + 1) = v27;
      v65 = 0;
      v66 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF48, &qword_23BBF11B8);
      sub_23BA57408();
      sub_23BBDACD8();
      v28 = type metadata accessor for SubscriptionStoreCopyWriter.StringKeyOrResource;
      v29 = v7;
LABEL_15:
      sub_23BA57780(v29, v28);
      break;
    default:
      v23 = v22[1];
      *&v63 = *v22;
      *(&v63 + 1) = v23;
      *&v64 = 0;
      *(&v64 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v65) = 0;

      sub_23BBDACD8();
      v63 = v67;
      v64 = v68;
      v65 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF58, &unk_23BBF11C0);
      sub_23BA5748C();
      sub_23BBDACD8();
      if (HIBYTE(v69))
      {
        v24 = 256;
      }

      else
      {
        v24 = 0;
      }

      v63 = v67;
      v64 = v68;
      v65 = v24 | v69;
      v66 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CF48, &qword_23BBF11B8);
      sub_23BA57408();
      sub_23BBDACD8();
LABEL_22:

      break;
  }

  result = *&v67;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v59 = v62;
  *v62 = v67;
  v59[1] = v56;
  *(v59 + 16) = v57;
  *(v59 + 34) = v58;
  return result;
}

uint64_t sub_23BA56E18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198E90, &unk_23BBE6CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA56E88()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA56EE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEC0, &qword_23BBF1160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BA56F50()
{
  result = qword_27E19CEF0;
  if (!qword_27E19CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CEC8, &qword_23BBF1168);
    sub_23BA57008();
    sub_23B97B518(&qword_27E1991E0, &qword_27E1991D0, &qword_23BBE7740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CEF0);
  }

  return result;
}

unint64_t sub_23BA57008()
{
  result = qword_27E19CEF8;
  if (!qword_27E19CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CEC0, &qword_23BBF1160);
    sub_23BA576D8(&qword_27E19ABB8, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_23BA576D8(&qword_27E198D70, type metadata accessor for LayoutMetricsModifier, &unk_23BBE3CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CEF8);
  }

  return result;
}

uint64_t sub_23BA570F4()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CED8, &qword_23BBF1178);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

uint64_t sub_23BA57154()
{
  OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19CEE0, &qword_23BBF1180);
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_17_0();
  v2(v1);
  return v0;
}

unint64_t sub_23BA571B4()
{
  result = qword_27E19CF08;
  if (!qword_27E19CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF00, &qword_23BBF1198);
    sub_23BA5726C();
    sub_23B97B518(&qword_27E19CF68, &qword_27E19CF70, &qword_23BBFFDF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF08);
  }

  return result;
}

unint64_t sub_23BA5726C()
{
  result = qword_27E19CF10;
  if (!qword_27E19CF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF18, &qword_23BBF11A0);
    sub_23BA572F8();
    sub_23BA57508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF10);
  }

  return result;
}

unint64_t sub_23BA572F8()
{
  result = qword_27E19CF20;
  if (!qword_27E19CF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF28, &qword_23BBF11A8);
    sub_23BA5737C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF20);
  }

  return result;
}

unint64_t sub_23BA5737C()
{
  result = qword_27E19CF30;
  if (!qword_27E19CF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF38, &qword_23BBF11B0);
    sub_23BA57408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF30);
  }

  return result;
}

unint64_t sub_23BA57408()
{
  result = qword_27E19CF40;
  if (!qword_27E19CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF48, &qword_23BBF11B8);
    sub_23BA5748C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF40);
  }

  return result;
}

unint64_t sub_23BA5748C()
{
  result = qword_27E19CF50;
  if (!qword_27E19CF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF58, &unk_23BBF11C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF50);
  }

  return result;
}

unint64_t sub_23BA57508()
{
  result = qword_27E19CF60;
  if (!qword_27E19CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF60);
  }

  return result;
}

unint64_t sub_23BA5755C()
{
  result = qword_27E19CF78;
  if (!qword_27E19CF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CEE0, &qword_23BBF1180);
    sub_23BA575E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF78);
  }

  return result;
}

unint64_t sub_23BA575E0()
{
  result = qword_27E19CF80;
  if (!qword_27E19CF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CED8, &qword_23BBF1178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CEC8, &qword_23BBF1168);
    sub_23BA56F50();
    swift_getOpaqueTypeConformance2();
    sub_23BA576D8(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF80);
  }

  return result;
}

uint64_t sub_23BA576D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA57728()
{
  OUTLINED_FUNCTION_19();
  v1(0);
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_17_0();
  v3(v2);
  return v0;
}

uint64_t sub_23BA57780(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_23BA577DC()
{
  result = qword_27E19CF88;
  if (!qword_27E19CF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19CF90, &unk_23BBF1200);
    sub_23B97B518(&qword_27E19CEB8, &qword_27E19CEA8, &qword_23BBF1150, MEMORY[0x277CE11A8]);
    sub_23BA576D8(&qword_27E198368, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CF88);
  }

  return result;
}

uint64_t sub_23BA578C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  KeyPath = MEMORY[0x277CE0BD8];
  v31 = v3;
  v32 = MEMORY[0x277CE0BC8];
  v33 = v4;
  v5 = sub_23BBDBEA8();
  OUTLINED_FUNCTION_7();
  v25 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  OUTLINED_FUNCTION_0_28();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_23BA59F78();
  KeyPath = v5;
  v31 = &type metadata for AlreadySubscribedLabelStyle;
  v32 = WitnessTable;
  v33 = v11;
  v24[0] = v11;
  v24[1] = MEMORY[0x277CDE608];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_7();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v24 - v19;
  v27 = v3;
  v28 = v4;
  v29 = v2;
  sub_23BBDBE98();
  KeyPath = swift_getKeyPath();
  LOBYTE(v31) = 0;
  v21 = v24[0];
  sub_23BBDB6E8();

  (*(v25 + 8))(v9, v5);
  KeyPath = v5;
  v31 = &type metadata for AlreadySubscribedLabelStyle;
  v32 = WitnessTable;
  v33 = v21;
  swift_getOpaqueTypeConformance2();
  sub_23B9D2D88();
  v22 = *(v14 + 8);
  v22(v17, OpaqueTypeMetadata2);
  sub_23B9D2D88();
  return (v22)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_23BA57B98@<X0>(uint64_t a1@<X8>)
{
  sub_23BBDAA48();
  if (qword_27E197628 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1BF840;
  result = sub_23BBDB648();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23BA57C78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B9D2D88();
  sub_23B9D2D88();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23BA57D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BBDBE38();
  *a1 = result;
  return result;
}

uint64_t sub_23BA57D90()
{
  sub_23BA57E08();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BA57E08()
{
  result = qword_27E19CFA0;
  if (!qword_27E19CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19CFA0);
  }

  return result;
}

uint64_t sub_23BA57E78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23BA57E5C(a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_23BA57EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BA59DD8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BA57F08()
{
  sub_23BA57F84();
  sub_23BBDA958();
  return v1;
}

unint64_t sub_23BA57F84()
{
  result = qword_27E19CFA8[0];
  if (!qword_27E19CFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E19CFA8);
  }

  return result;
}

_BYTE *sub_23BA58004(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA580D0);
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

uint64_t sub_23BA58104(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[33])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_23BA58150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23BA581B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23BA58300(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

  if (v7 < a2)
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
        return;
      case 2:
        *&a1[v8] = v14;
        return;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 2:
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_24;
    case 3:
LABEL_37:
      __break(1u);
      JUMPOUT(0x23BA58504);
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

      return;
  }
}

unint64_t sub_23BA58564()
{
  result = qword_27E19D030;
  if (!qword_27E19D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D030);
  }

  return result;
}

double sub_23BA585B8()
{
  v1 = sub_23BBDA928();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*v0 & 1) == 0)
  {
    return 0.0;
  }

  v10 = *(v0 + 32);
  v5 = *(v0 + 24);
  v9 = v5;
  if (v10 != 1)
  {

    sub_23BBDD5A8();
    v7 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v9, &qword_27E19CC48, &qword_23BBF0C70);
    (*(v2 + 8))(v4, v1);
    result = 4.0;
    if (v8[15])
    {
      return result;
    }

    return 0.0;
  }

  result = 4.0;
  if ((v5 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_23BA58734@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_23BBDA928();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(v1 + 16);
  v7 = *(v1 + 8);
  v24 = v7;
  if (v25 == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      v8 = sub_23BBDA468();
      a1[3] = v8;
      a1[4] = sub_23BA5A668(&qword_27E19D090, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = *(v8 + 20);
      v11 = *MEMORY[0x277CE0118];
      v12 = sub_23BBDAA88();
      result = (*(*(v12 - 8) + 104))(boxed_opaque_existential_1 + v10, v11, v12);
      __asm { FMOV            V0.2D, #4.0 }

      *boxed_opaque_existential_1 = _Q0;
      return result;
    }
  }

  else
  {

    sub_23BBDD5A8();
    v19 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v24, &qword_27E19D080, &qword_23BBF16E8);
    (*(v4 + 8))(v6, v3);
    if (v23[15] != 1)
    {
      goto LABEL_3;
    }
  }

  a1[3] = sub_23BBDC148();
  a1[4] = sub_23BA5A668(&qword_27E19D098, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v20 = __swift_allocate_boxed_opaque_existential_1(a1);
  v21 = *MEMORY[0x277CE0128];
  v22 = sub_23BBDAA88();
  return (*(*(v22 - 8) + 104))(v20, v21, v22);
}

uint64_t sub_23BA589EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v4 = sub_23BBDA928();
  v80 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D048, &qword_23BBF1680);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v78 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D050, &qword_23BBF1688);
  MEMORY[0x28223BE20](v82);
  v12 = &v78 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D058, &qword_23BBF1690);
  MEMORY[0x28223BE20](v83);
  v85 = &v78 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D060, &qword_23BBF1698);
  MEMORY[0x28223BE20](v84);
  v87 = &v78 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D068, &qword_23BBF16A0);
  MEMORY[0x28223BE20](v86);
  v16 = &v78 - v15;
  KeyPath = swift_getKeyPath();
  v18 = &v10[*(v8 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D070, &qword_23BBF16D8);
  sub_23BBDA1A8();
  *v18 = KeyPath;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D078, &qword_23BBF16E0);
  (*(*(v19 - 8) + 16))(v10, v81, v19);
  v20 = sub_23BBDB388();
  if (*v2)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  v90 = *(v2 + 16);
  v22 = *(v2 + 8);
  v89 = v22;
  LODWORD(v81) = v90;
  if (v90 != 1)
  {

    sub_23BBDD5A8();
    v23 = sub_23BBDB338();
    v79 = v22;
    v22 = v10;
    v24 = v12;
    v25 = v16;
    v26 = v23;
    sub_23BBD9978();

    v27 = v80;
    v16 = v25;
    v12 = v24;
    v10 = v22;
    LOBYTE(v22) = v79;
    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v89, &qword_27E19D080, &qword_23BBF16E8);
    (*(v27 + 8))(v6, v4);
  }

  sub_23BBD9B18();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_23B989918(v10, v12, &qword_27E19D048, &qword_23BBF1680);
  v36 = &v12[*(v82 + 36)];
  *v36 = v20;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_23BBDB3F8();
  sub_23BBD9B18();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v85;
  sub_23B989918(v12, v85, &qword_27E19D050, &qword_23BBF1688);
  v47 = v46 + *(v83 + 36);
  *v47 = v37;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  v48 = sub_23BBDB3A8();
  sub_23BBD9B18();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v46;
  v58 = v87;
  sub_23B989918(v57, v87, &qword_27E19D058, &qword_23BBF1690);
  v59 = v58 + *(v84 + 36);
  *v59 = v48;
  *(v59 + 8) = v50;
  *(v59 + 16) = v52;
  *(v59 + 24) = v54;
  *(v59 + 32) = v56;
  *(v59 + 40) = 0;
  if (!v81)
  {

    sub_23BBDD5A8();
    v60 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B979910(&v89, &qword_27E19D080, &qword_23BBF16E8);
    (*(v80 + 8))(v6, v4);
    LOBYTE(v22) = v88[0];
  }

  v61 = v21;
  sub_23BA58734(v88);
  v62 = __swift_project_boxed_opaque_existential_1(v88, v88[3]);
  v63 = MEMORY[0x28223BE20](v62);
  (*(v65 + 16))(&v78 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0), v63);
  v66 = sub_23BBDC218();
  sub_23B989918(v58, v16, &qword_27E19D060, &qword_23BBF1698);
  v67 = &v16[*(v86 + 36)];
  *v67 = v22 & 1;
  *(v67 + 1) = v61;
  *(v67 + 1) = v66;
  *(v67 + 8) = 256;
  __swift_destroy_boxed_opaque_existential_1(v88);
  LOBYTE(v66) = sub_23BBDB3F8();
  sub_23BA585B8();
  sub_23BBD9B18();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  sub_23B989918(v16, a2, &qword_27E19D068, &qword_23BBF16A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D088, &unk_23BBF16F0);
  v77 = a2 + *(result + 36);
  *v77 = v66;
  *(v77 + 8) = v69;
  *(v77 + 16) = v71;
  *(v77 + 24) = v73;
  *(v77 + 32) = v75;
  *(v77 + 40) = 0;
  return result;
}

uint64_t sub_23BA59140(uint64_t a1)
{
  v2 = sub_23BBDA1C8();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23BBDA688();
}

uint64_t sub_23BA59208(uint64_t a1, char a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D158, &unk_23BBF1900);
    sub_23B97B518(&qword_27E19D160, &qword_27E19D158, &unk_23BBF1900, &unk_23BBEAB08);
  }

  else
  {
    v2 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_23BBDBCA8();
  }

  return sub_23BBD9DF8();
}

uint64_t sub_23BA592DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_23BA59208(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_23BA59344@<X0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198F10, &qword_23BBE70F8);
  MEMORY[0x28223BE20](v31);
  v7 = &v29 - v6;
  v8 = sub_23BBDA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D0F0, &qword_23BBF1850);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D0F8, &qword_23BBF1858);
  v29 = *(v15 - 8);
  v30 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  *v14 = sub_23BBDA998();
  *(v14 + 1) = 0x4008000000000000;
  v14[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D100, &qword_23BBF1860);
  sub_23BA5981C(a2, a3 & 1, &v14[*(v18 + 44)]);
  v19 = sub_23BBDAEF8();
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D108, &qword_23BBF1868) + 36)] = v19;
  if ((a3 & 1) == 0)
  {

    sub_23BBDD5A8();
    v21 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a2, 0);
    (*(v9 + 8))(v11, v8);
    if (v33)
    {
      goto LABEL_3;
    }

LABEL_5:
    if (qword_27E197778 != -1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_23BBDB558();
  while (1)
  {
    KeyPath = swift_getKeyPath();
    v23 = &v14[*(v12 + 36)];
    *v23 = KeyPath;
    v23[1] = v20;
    sub_23BBDB478();
    v24 = sub_23BA5A4CC();
    sub_23BBDB6D8();
    sub_23B979910(v14, &qword_27E19D0F0, &qword_23BBF1850);
    v25 = *MEMORY[0x277CDF9A8];
    v26 = sub_23BBDA308();
    (*(*(v26 - 8) + 104))(v7, v25, v26);
    sub_23BA5A668(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    v14 = v26;
    if (sub_23BBDCF38())
    {
      break;
    }

    __break(1u);
LABEL_10:
    swift_once();
LABEL_6:
    v20 = qword_27E1BFD28;
  }

  v33 = v12;
  v34 = v24;
  swift_getOpaqueTypeConformance2();
  sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
  v27 = v30;
  sub_23BBDB898();
  sub_23B979910(v7, &qword_27E198F10, &qword_23BBE70F8);
  return (*(v29 + 8))(v17, v27);
}

uint64_t sub_23BA5981C@<X0>(uint64_t a1@<X1>, int a2@<W2>, _BYTE *a3@<X8>)
{
  v59 = a3;
  v5 = sub_23BBDA928();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D130, &qword_23BBF18A8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50[-v10];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D138, &qword_23BBF18B0);
  MEMORY[0x28223BE20](v53);
  v58 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v50[-v14];
  MEMORY[0x28223BE20](v16);
  v57 = &v50[-v17];
  v18 = sub_23BBDAFB8();
  v54 = *(v18 - 8);
  v55 = v18;
  MEMORY[0x28223BE20](v18);
  v56 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v52 = &v50[-v21];
  sub_23BBDAFC8();
  sub_23BBDAFE8();
  v51 = a2;
  if (a2)
  {
    v22 = v6;
    v23 = v5;
    v24 = a1;
    v61 = a1;
  }

  else
  {

    sub_23BBDD5A8();
    v25 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    v22 = v6;
    v26 = *(v6 + 8);
    v23 = v5;
    v26(v8, v5);
    v24 = v61;
  }

  v27 = v11;
  v28 = &v11[*(v9 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D140, &qword_23BBF18B8) + 28);
  if (v24 == 2)
  {
    v30 = sub_23BBDB608();
    v31 = v28 + v29;
    v32 = 1;
  }

  else
  {
    v33 = *MEMORY[0x277CE0B48];
    v34 = sub_23BBDB608();
    (*(*(v34 - 8) + 104))(v28 + v29, v33, v34);
    v31 = v28 + v29;
    v32 = 0;
    v30 = v34;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  *v28 = swift_getKeyPath();
  if ((v51 & 1) == 0)
  {

    sub_23BBDD5A8();
    v36 = sub_23BBDB338();
    sub_23BBD9978();

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B97B450(a1, 0);
    (*(v22 + 8))(v8, v23);
    if (v60)
    {
      goto LABEL_9;
    }

LABEL_11:
    v35 = sub_23BBDAF28();
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v35 = sub_23BBDAEF8();
LABEL_12:
  v37 = v35;
  sub_23B989918(v27, v15, &qword_27E19D130, &qword_23BBF18A8);
  *&v15[*(v53 + 36)] = v37;
  v38 = v15;
  v39 = v57;
  sub_23B989918(v38, v57, &qword_27E19D138, &qword_23BBF18B0);
  v40 = v54;
  v41 = v55;
  v42 = *(v54 + 16);
  v43 = v56;
  v44 = v52;
  v42(v56, v52, v55);
  v45 = v58;
  sub_23B989ECC(v39, v58, &qword_27E19D138, &qword_23BBF18B0);
  v46 = v59;
  v42(v59, v43, v41);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D148, &qword_23BBF18F0);
  sub_23B989ECC(v45, &v46[*(v47 + 48)], &qword_27E19D138, &qword_23BBF18B0);
  sub_23B979910(v39, &qword_27E19D138, &qword_23BBF18B0);
  v48 = *(v40 + 8);
  v48(v44, v41);
  sub_23B979910(v45, &qword_27E19D138, &qword_23BBF18B0);
  return (v48)(v43, v41);
}

unint64_t sub_23BA59DD8()
{
  result = qword_27E19D038;
  if (!qword_27E19D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D038);
  }

  return result;
}

uint64_t sub_23BA59E2C(uint64_t a1)
{
  result = sub_23BBDC2A8();
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  byte_27E19CF98 = v2;
  return result;
}

uint64_t sub_23BA59E58@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27E197750 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_27E19CF98;
  return result;
}

uint64_t sub_23BA59EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BA58564();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_23BA59F78()
{
  result = qword_27E19D040;
  if (!qword_27E19D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D040);
  }

  return result;
}

_BYTE *sub_23BA5A020(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x23BA5A0ECLL);
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

uint64_t sub_23BA5A124(ValueMetadata **a1)
{
  v1 = sub_23BBDBEA8();
  OUTLINED_FUNCTION_0_28();
  swift_getWitnessTable();
  v10 = sub_23BA59F78();
  return OUTLINED_FUNCTION_17_2(v10, v2, v3, v4, v5, v6, v7, v8, v1);
}

unint64_t sub_23BA5A1F0()
{
  result = qword_27E19D0A8;
  if (!qword_27E19D0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D068, &qword_23BBF16A0);
    sub_23BA5A334(&qword_27E19D0B0, &qword_27E19D060, &qword_23BBF1698, sub_23BA5A2D4);
    sub_23B97B518(&qword_27E19D0E0, &qword_27E19D0E8, qword_23BBF17B8, MEMORY[0x277CE0710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D0A8);
  }

  return result;
}

uint64_t sub_23BA5A334(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BA5A3B8()
{
  result = qword_27E19D0C8;
  if (!qword_27E19D0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D048, &qword_23BBF1680);
    sub_23B97B518(&qword_27E19D0D0, &qword_27E19D078, &qword_23BBF16E0, MEMORY[0x277CE04B0]);
    sub_23B97B518(&qword_27E19D0D8, &qword_27E19D070, &qword_23BBF16D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D0C8);
  }

  return result;
}

unint64_t sub_23BA5A4CC()
{
  result = qword_27E19D110;
  if (!qword_27E19D110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D0F0, &qword_23BBF1850);
    sub_23BA5A584();
    sub_23B97B518(&qword_27E198388, &qword_27E198390, qword_23BBE52B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D110);
  }

  return result;
}

unint64_t sub_23BA5A584()
{
  result = qword_27E19D118;
  if (!qword_27E19D118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D108, &qword_23BBF1868);
    sub_23B97B518(&qword_27E19D120, &qword_27E19D128, &qword_23BBF18A0, MEMORY[0x277CE1138]);
    sub_23B97B518(&qword_27E19CDC0, &qword_27E19CDC8, &qword_23BBF2BF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D118);
  }

  return result;
}

uint64_t sub_23BA5A668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA5A6D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D150, &qword_23BBF18F8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23B989ECC(a1, &v5 - v3, &qword_27E19D150, &qword_23BBF18F8);
  return sub_23BBDA8A8();
}

uint64_t sub_23BA5A780()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D0F8, &qword_23BBF1858);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E198F10, &qword_23BBE70F8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D0F0, &qword_23BBF1850);
  v2 = sub_23BA5A4CC();
  OUTLINED_FUNCTION_17_2(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  v18 = sub_23B97B518(&qword_27E198F80, &qword_27E198F10, &qword_23BBE70F8, MEMORY[0x277D84348]);
  return OUTLINED_FUNCTION_17_2(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

Swift::Void __swiftcall RequestReviewAction.callAsFunction()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = objc_opt_self();

    [v2 requestReviewInScene_];
  }

  else
  {
    if (qword_27E1976D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for SKLogger(0);
    __swift_project_value_buffer(v3, qword_27E1BFC88);
    v4 = sub_23BBDD598();
    log = sub_23BBD9988();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446466;
      *(v5 + 4) = sub_23BA5AB90(0, 0xE000000000000000, &v8);
      *(v5 + 12) = 2082;
      *(v5 + 14) = sub_23BA5AB90(0xD000000000000028, 0x800000023BBE13B0, &v8);
      _os_log_impl(&dword_23B970000, log, v4, "%{public}s%{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB6DC0](v6, -1, -1);
      MEMORY[0x23EEB6DC0](v5, -1, -1);
    }
  }
}

void *EnvironmentValues.requestReview.getter@<X0>(void *a1@<X8>)
{
  result = sub_23BBDA658();
  if (result)
  {
    v3 = result;
    v4 = [result scene];

    if (!v4)
    {
LABEL_5:
      result = 0;
      goto LABEL_6;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  *a1 = result;
  return result;
}

uint64_t sub_23BA5AAC0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23BA5AB34(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23BA5AB90(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23BA5AB90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BA5AC54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_23B9F4E64(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23BA5AC54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23BA5AD54(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_23BBDD7C8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23BA5AD54(uint64_t a1, unint64_t a2)
{
  v3 = sub_23BA5ADA0(a1, a2);
  sub_23BA5AEB8(&unk_284E56E18);
  return v3;
}

uint64_t sub_23BA5ADA0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_23BBDD0D8())
  {
    result = sub_23BBA8B44(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23BBDD758();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_23BBDD7C8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23BA5AEB8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_23BA5AF9C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_23BA5AF9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D168, &unk_23BC04BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_23BA5B090(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23BA5B0A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_23BA5B0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23BA5B16C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_14_14();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    v6 = OUTLINED_FUNCTION_15_0(*(a3 + 28));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_23BA5B204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AB30, &unk_23BBEB0A0);
    v6 = OUTLINED_FUNCTION_15_0(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void sub_23BA5B2AC(uint64_t a1)
{
  sub_23B9989D8(319, &qword_27E19A3B0, &type metadata for ClientOverrideValues);
  if (v1 <= 0x3F)
  {
    sub_23B9C68B0(319);
    if (v2 <= 0x3F)
    {
      sub_23BA5B370(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23BA5B370(uint64_t a1)
{
  if (!qword_27E19D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D188, qword_23BBF19D8);
    v1 = sub_23BBDBF98();
    if (!v2)
    {
      atomic_store(v1, &qword_27E19D180);
    }
  }
}

void *sub_23BA5B3F0()
{
  type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1F0, &unk_23BBF1AB8);
  sub_23BBDBF68();
  if (v6)
  {
    v0 = 0;
  }

  else
  {
    v0 = v5;
  }

  result = sub_23BBDBF68();
  v2 = v5;
  if (v6)
  {
    v2 = 0;
  }

  v3 = __CFADD__(v0, v2);
  v4 = v0 + v2;
  if (!v3)
  {
    return (v4 > 2);
  }

  __break(1u);
  return result;
}

uint64_t sub_23BA5B4DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23BBDA308();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D190, &qword_23BBF1A30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  sub_23B9B70F0();
  v11 = sub_23BBDA2E8();
  v12 = *(v5 + 8);
  v12(v7, v4);
  if (v11)
  {
    v13 = sub_23BBDAB58();
  }

  else
  {
    v13 = sub_23BBDAB48();
  }

  *v10 = v13;
  *(v10 + 1) = 0x401C000000000000;
  v10[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D198, &qword_23BBF1A38);
  sub_23BA5B6D8(v2, &v10[*(v14 + 44)]);
  sub_23B9B70F0();
  v15 = sub_23BBDA2E8();
  v12(v7, v4);
  v16 = (v15 & 1) == 0;
  KeyPath = swift_getKeyPath();
  sub_23BA5CF08(v10, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1A0, &unk_23BBF1A70);
  v19 = a1 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v16;
  return result;
}

uint64_t sub_23BA5B6D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_23BBDA308();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF70, &unk_23BBFFD50);
  MEMORY[0x28223BE20](v37);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SubscriptionOfferViewNoCodeHeader.Icon(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1A8, &qword_23BBF1A80);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v40 = a1;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  if (!v17)
  {
    v16 = 0;
  }

  *v10 = v16;
  v10[1] = v17;
  v51[0] = 0x4054000000000000;
  sub_23B974940();

  sub_23BBD9D28();
  v18 = *MEMORY[0x277CDF988];
  v39 = v4;
  (*(v4 + 104))(v7, v18, v3);
  sub_23BA5CF90(&qword_27E198F50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23BBDCF38();
  if (result)
  {
    sub_23BA5CF90(&qword_27E19D1B0, type metadata accessor for SubscriptionOfferViewNoCodeHeader.Icon, &unk_23BBF1AD8);
    sub_23B97B518(&qword_27E19AF80, &qword_27E19AF70, &unk_23BBFFD50, MEMORY[0x277D84470]);
    sub_23BBDB898();
    sub_23BA5CFD8(v7);
    sub_23BA5D040(v10);
    type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
    v20 = v40;
    v21 = v38;
    sub_23B9B70F0();
    v22 = sub_23BBDA2E8();
    (*(v39 + 8))(v21, v3);
    if (v22)
    {
      v23 = sub_23BBDAB58();
    }

    else
    {
      v23 = sub_23BBDAB48();
    }

    v24 = v23;
    v57 = 0;
    sub_23BA5BCAC(v45);
    *&v56[7] = v45[0];
    *&v56[23] = v45[1];
    *&v56[39] = v45[2];
    *&v56[55] = v45[3];
    v25 = v57;
    v26 = sub_23BBDC318();
    v28 = v27;
    sub_23BA5BFD8(v20, v50);
    memcpy(v46, v50, 0x1D0uLL);
    v46[58] = v26;
    v46[59] = v28;
    memcpy(&v58[6], v46, 0x1E0uLL);
    memcpy(v47, v50, sizeof(v47));
    v48 = v26;
    v49 = v28;
    sub_23B99FCE0(v46, v51, &qword_27E19D1B8, &qword_23BBF1A88);
    sub_23B979910(v47, &qword_27E19D1B8, &qword_23BBF1A88);
    v30 = v41;
    v29 = v42;
    v31 = *(v42 + 16);
    v32 = v43;
    v31(v41, v15, v43);
    v33 = v44;
    v31(v44, v30, v32);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1C0, &qword_23BBF1A90) + 48);
    v50[0] = v24;
    v50[1] = 0x401C000000000000;
    LOBYTE(v50[2]) = v25;
    memcpy(&v50[2] + 1, v56, 0x47uLL);
    LOWORD(v50[11]) = 256;
    memcpy(&v50[11] + 2, v58, 0x1E6uLL);
    memcpy(&v33[v34], v50, 0x240uLL);
    sub_23B99FCE0(v50, v51, &qword_27E19D1C8, &qword_23BBF1A98);
    v35 = *(v29 + 8);
    v35(v15, v32);
    v51[0] = v24;
    v51[1] = 0x401C000000000000;
    v52 = v25;
    memcpy(v53, v56, sizeof(v53));
    v54 = 256;
    memcpy(v55, v58, sizeof(v55));
    sub_23B979910(v51, &qword_27E19D1C8, &qword_23BBF1A98);
    return (v35)(v30, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23BA5BCAC@<X0>(uint64_t a2@<X8>)
{
  sub_23B9F6A08();

  v2 = sub_23BBDB678();
  v4 = v3;
  v6 = v5;
  sub_23BBDB578();
  sub_23BBDB4A8();
  sub_23BBDB508();

  sub_23BA5B3F0();
  sub_23BBDB4B8();

  v7 = sub_23BBDB618();
  v9 = v8;
  v11 = v10;

  sub_23BA51C9C(v2, v4, v6 & 1);

  sub_23BBDAF28();
  v32 = sub_23BBDB5D8();
  v33 = v12;
  v14 = v13;
  v31 = v15;
  sub_23BA51C9C(v7, v9, v11 & 1);

  v16 = qword_27E197628;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_27E1BF840;
  v18 = sub_23BBDB648();
  v20 = v19;
  v22 = v21;
  sub_23BBDB458();
  sub_23BBDB478();
  sub_23BBDB508();

  sub_23BA5B3F0();
  sub_23BBDB4B8();

  v23 = sub_23BBDB618();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_23BA51C9C(v18, v20, v22 & 1);

  *a2 = v32;
  *(a2 + 8) = v14;
  *(a2 + 16) = v31 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27 & 1;
  *(a2 + 56) = v29;
  sub_23BA51B84(v32, v14, v31 & 1);

  sub_23BA51B84(v23, v25, v27 & 1);

  sub_23BA51C9C(v23, v25, v27 & 1);

  sub_23BA51C9C(v32, v14, v31 & 1);
}

void *sub_23BA5BFD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23BBDA308();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  sub_23B9B70F0();
  v8 = sub_23BBDA2E8();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = sub_23BBDAB58();
  }

  else
  {
    v10 = sub_23BBDAB48();
  }

  v14 = v10;
  v20 = 0;
  sub_23BA5C244(a1, v16);
  memcpy(v17, v16, sizeof(v17));
  memcpy(v18, v16, sizeof(v18));
  sub_23B99FCE0(v17, &v15, &qword_27E19D1D0, &unk_23BBF1AA0);
  sub_23B979910(v18, &qword_27E19D1D0, &unk_23BBF1AA0);
  memcpy(&v19[7], v17, 0x140uLL);
  v11 = v20;
  sub_23B9B70F0();
  v12 = sub_23BBDA2E8();
  v9(v7, v4);
  if (v12)
  {
    sub_23BBDAB58();
  }

  else
  {
    sub_23BBDAB48();
  }

  sub_23BBDA9D8();
  sub_23BBDA488();
  memcpy(&__src[6], v16, 0x70uLL);
  *a2 = v14;
  *(a2 + 8) = 0x401C000000000000;
  *(a2 + 16) = v11;
  memcpy((a2 + 17), v19, 0x147uLL);
  *(a2 + 344) = 256;
  return memcpy((a2 + 346), __src, 0x76uLL);
}

uint64_t sub_23BA5C244@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = v5;
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BBDA308();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[1];
  v73 = *a1;
  v74 = v10;
  sub_23B9F6A08();

  v11 = sub_23BBDB678();
  v13 = v12;
  v15 = v14;
  sub_23BBDB578();
  sub_23BBDB4A8();
  sub_23BBDB508();

  v16 = sub_23BBDB618();
  v59 = v17;
  v60 = v16;
  v19 = v18;
  v61 = v20;

  sub_23BA51C9C(v11, v13, v15 & 1);

  v51 = *(v4 + 36);
  sub_23B9B70F0();
  LOBYTE(v4) = sub_23BBDA2E8();
  v21 = *(v56 + 8);
  v52 = v9;
  v50 = v21;
  v21(v9, v55);
  if (v4)
  {
    sub_23BBDAB58();
  }

  else
  {
    sub_23BBDAB48();
  }

  sub_23BBDA9D8();
  sub_23BBDA488();
  LODWORD(v56) = v19 & 1;
  v85 = v19 & 1;
  v22 = v58;
  sub_23BA5D09C(a1, v58);
  v23 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v53 = swift_allocObject();
  v49 = v23;
  sub_23BA5D104(v22, v53 + v23);
  v24 = qword_27E197628;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27E1BF840;
  v26 = sub_23BBDB648();
  v28 = v27;
  v30 = v29;
  sub_23BBDB458();
  sub_23BBDB478();
  sub_23BBDB508();

  v31 = sub_23BBDB618();
  v46 = v32;
  v47 = v31;
  v34 = v33;
  v48 = v35;

  sub_23BA51C9C(v26, v28, v30 & 1);

  v36 = v52;
  sub_23B9B70F0();
  LOBYTE(v26) = sub_23BBDA2E8();
  v50(v36, v55);
  if (v26)
  {
    sub_23BBDAB58();
  }

  else
  {
    sub_23BBDAB48();
  }

  sub_23BBDA9D8();
  sub_23BBDA488();
  v37 = v34 & 1;
  v82 = v34 & 1;
  v38 = v58;
  sub_23BA5D09C(a1, v58);
  v39 = v49;
  v40 = swift_allocObject();
  sub_23BA5D104(v38, v40 + v39);
  v64[0] = v60;
  v64[1] = v59;
  LOBYTE(v64[2]) = v56;
  *(&v64[2] + 1) = *v84;
  HIDWORD(v64[2]) = *&v84[3];
  v64[3] = v61;
  memcpy(&v64[4], __src, 0x70uLL);
  v64[18] = sub_23BA5D168;
  v41 = v53;
  v64[19] = v53;
  memcpy(v62, v64, 0xA0uLL);
  v43 = v46;
  v42 = v47;
  v65[0] = v47;
  v65[1] = v46;
  LOBYTE(v65[2]) = v37;
  *(&v65[2] + 1) = *v81;
  HIDWORD(v65[2]) = *&v81[3];
  v44 = v48;
  v65[3] = v48;
  memcpy(&v65[4], v63, 0x70uLL);
  v65[18] = sub_23BA5D2E0;
  v65[19] = v40;
  memcpy(&v62[160], v65, 0xA0uLL);
  memcpy(v54, v62, 0x140uLL);
  v66[0] = v42;
  v66[1] = v43;
  v67 = v37;
  *v68 = *v81;
  *&v68[3] = *&v81[3];
  v69 = v44;
  memcpy(v70, v63, sizeof(v70));
  v71 = sub_23BA5D2E0;
  v72 = v40;
  sub_23B99FCE0(v64, &v73, &qword_27E19D1D8, &qword_23BBF1AB0);
  sub_23B99FCE0(v65, &v73, &qword_27E19D1D8, &qword_23BBF1AB0);
  sub_23B979910(v66, &qword_27E19D1D8, &qword_23BBF1AB0);
  v73 = v60;
  v74 = v59;
  v75 = v56;
  *v76 = *v84;
  *&v76[3] = *&v84[3];
  v77 = v61;
  memcpy(v78, __src, sizeof(v78));
  v79 = sub_23BA5D168;
  v80 = v41;
  return sub_23B979910(&v73, &qword_27E19D1D8, &qword_23BBF1AB0);
}

void sub_23BA5C8FC(double a1, double a2)
{
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  [v4 pointSize];
  v6 = v5;

  v7 = [v3 systemFontOfSize:v6 weight:*MEMORY[0x277D74420]];
  [v7 lineHeight];
  v9 = round(a2 / v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 1.84467441e19)
  {
    type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1F0, &unk_23BBF1AB8);
    sub_23BBDBF78();

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_23BA5CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_23BBD9E68();
  v13[0] = v8;
  v13[1] = v9;
  sub_23BA5D09C(a2, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_23BA5D104(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  type metadata accessor for CGSize(0);
  sub_23BA5D3A4();
  sub_23BA5CF90(&qword_27E19D1E8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  sub_23BBDBC08();

  return result;
}

void sub_23BA5CC08(double a1, double a2)
{
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle_];
  [v4 pointSize];
  v6 = v5;

  v7 = [v3 systemFontOfSize:v6 weight:*MEMORY[0x277D743F8]];
  [v7 lineHeight];
  v9 = round(a2 / v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 1.84467441e19)
  {
    type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D1F0, &unk_23BBF1AB8);
    sub_23BBDBF78();

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_23BA5CD74@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];

  sub_23BB6F948(v3, v4, __src, 80.0, 80.0);
  type metadata accessor for SubscriptionOfferViewNoCodeHeader.Icon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
  sub_23BBD9D38();
  sub_23BBDC318();
  sub_23BBDA488();
  memcpy(__dst, __src, 0x60uLL);
  v5 = sub_23BBDB398();
  memcpy(a1, __dst, 0xD0uLL);
  *(a1 + 208) = 256;
  *(a1 + 216) = v5;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  result = 7.0;
  *(a1 + 240) = xmmword_23BBF1980;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_23BA5CF08(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D190, &qword_23BBF1A30);
  OUTLINED_FUNCTION_4_1();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_23BA5CF90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23BA5CFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19AF70, &unk_23BBFFD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA5D040(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOfferViewNoCodeHeader.Icon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BA5D09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BA5D104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for SubscriptionOfferViewNoCodeHeader(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E198EB0, &qword_23BBE6D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BBDA308();
    OUTLINED_FUNCTION_4_1();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23BA5D3A4()
{
  result = qword_27E19D1E0;
  if (!qword_27E19D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D1E0);
  }

  return result;
}

uint64_t sub_23BA5D410(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SubscriptionOfferViewNoCodeHeader(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_23BA5D4B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_14_14();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    v7 = OUTLINED_FUNCTION_15_0(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t sub_23BA5D55C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197A48, qword_23BBE94E0);
    v6 = OUTLINED_FUNCTION_15_0(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

void sub_23BA5D5E4(uint64_t a1)
{
  sub_23B9989D8(319, &qword_27E197B20, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_23B9D4C08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23BA5D67C()
{
  result = qword_27E19D208;
  if (!qword_27E19D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D1A0, &unk_23BBF1A70);
    sub_23B97B518(&qword_27E19D210, &qword_27E19D190, &qword_23BBF1A30, MEMORY[0x277CE1198]);
    sub_23B97B518(&qword_27E198DF0, &qword_27E198DF8, &qword_23BBE6C10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D208);
  }

  return result;
}

unint64_t sub_23BA5D780()
{
  result = qword_27E19D218;
  if (!qword_27E19D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D220, &qword_23BBF1B28);
    sub_23BA5D80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D218);
  }

  return result;
}

unint64_t sub_23BA5D80C()
{
  result = qword_27E19D228;
  if (!qword_27E19D228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D230, &qword_23BBF1B30);
    sub_23BA5D8C4();
    sub_23B97B518(&qword_27E19D248, &qword_27E19D250, &unk_23BBF1B40, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D228);
  }

  return result;
}

unint64_t sub_23BA5D8C4()
{
  result = qword_27E19D238;
  if (!qword_27E19D238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E19D240, &qword_23BBF1B38);
    sub_23BA3A7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E19D238);
  }

  return result;
}

uint64_t sub_23BA5DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v17 = 0;
  v18 = a1;
  v19 = a2;
  a6(a1, a2);
  MEMORY[0x23EEB43C0](&KeyPath, a3, a7, a4);

  return a8(a1, a2);
}

void sub_23BA5DACC(uint64_t a1@<X8>)
{
  sub_23BBDA928();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_4();
  v71 = *(v1 + 8);
  v4 = *v1;
  v70 = *v1;

  if ((v71 & 1) == 0)
  {
    v5 = sub_23BBDD5A8();
    v6 = sub_23BBDB338();
    OUTLINED_FUNCTION_197(v5, &dword_23B970000, v6, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v7, v8, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_111();
    swift_getAtKeyPath();
    sub_23B9846E8(&v70, &qword_27E19D2D0, &qword_23BBF21E0);
    v9 = OUTLINED_FUNCTION_65_0();
    v10(v9);
    v4 = v64;
  }

  if (v4)
  {
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    OUTLINED_FUNCTION_155();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v59 = v13;

    v58 = &unk_23BBF2240;
  }

  else
  {
    v58 = 0;
    v59 = 0;
  }

  v69 = *(v1 + 24);
  v14 = v1[2];
  v68 = v14;

  if ((v69 & 1) == 0)
  {
    v15 = sub_23BBDD5A8();
    v16 = sub_23BBDB338();
    OUTLINED_FUNCTION_197(v15, &dword_23B970000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v17, v18, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_111();
    swift_getAtKeyPath();
    sub_23B9846E8(&v68, &qword_27E19D2D8, &qword_23BBF21E8);
    v19 = OUTLINED_FUNCTION_65_0();
    v20(v19);
    v14 = v64;
  }

  if (v14)
  {
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    OUTLINED_FUNCTION_155();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    v24 = &unk_23BBF2230;
  }

  else
  {
    v24 = 0;
    v23 = 0;
  }

  v67 = *(v1 + 40);
  v25 = v1[4];
  v66 = v25;

  if ((v67 & 1) == 0)
  {
    v26 = sub_23BBDD5A8();
    v27 = sub_23BBDB338();
    OUTLINED_FUNCTION_197(v26, &dword_23B970000, v27, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v28, v29, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_111();
    swift_getAtKeyPath();
    sub_23B9846E8(&v66, &qword_27E19D2E0, &qword_23BBF21F0);
    v30 = OUTLINED_FUNCTION_65_0();
    v31(v30);
    v25 = v64;
  }

  if (v25)
  {
    v33 = *(v25 + 16);
    v32 = *(v25 + 24);
    OUTLINED_FUNCTION_155();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v57 = v34;

    v56 = &unk_23BBF2220;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v64 = *(v1 + 3);
  v65 = *(v1 + 64);
  v35 = v64;
  if (v65 == 1)
  {
    v36 = *(&v64 + 1);
    sub_23BA1569C(v64, *(&v64 + 1));
    if (v64)
    {
LABEL_18:
      OUTLINED_FUNCTION_155();
      v37 = swift_allocObject();
      *(v37 + 16) = v35;
      *(v37 + 24) = v36;
      v35 = &unk_23BBF2210;
      goto LABEL_21;
    }
  }

  else
  {

    v38 = sub_23BBDD5A8();
    v39 = sub_23BBDB338();
    OUTLINED_FUNCTION_197(v38, &dword_23B970000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v40, v41, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    swift_getAtKeyPath();
    sub_23B9846E8(&v64, &qword_27E19D2E8, &qword_23BBF21F8);
    v42 = OUTLINED_FUNCTION_65_0();
    v43(v42);
    v36 = *(&v62 + 1);
    v35 = v62;
    if (v62)
    {
      goto LABEL_18;
    }
  }

  v37 = 0;
LABEL_21:
  v62 = *(v1 + 9);
  v63 = *(v1 + 88);
  if (v63 != 1)
  {

    v50 = sub_23BBDD5A8();
    v51 = sub_23BBDB338();
    OUTLINED_FUNCTION_197(v50, &dword_23B970000, v51, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v52, v53, MEMORY[0x277D84F90]);

    sub_23BBDA918();
    OUTLINED_FUNCTION_16_4();
    swift_getAtKeyPath();
    sub_23B9846E8(&v62, &qword_27E19D2F0, &qword_23BBF2200);
    v54 = OUTLINED_FUNCTION_157();
    v55(v54);
    v44 = v61;
    if (v60)
    {
      goto LABEL_23;
    }

LABEL_25:
    v45 = 0;
    v46 = 0;
    v47 = -1;
    goto LABEL_26;
  }

  v44 = *(&v62 + 1);
  sub_23BA1569C(v62, *(&v62 + 1));
  if (!v62)
  {
    goto LABEL_25;
  }

LABEL_23:
  v45 = *(v44 + 16);
  v46 = *(v44 + 24);
  v47 = *(v44 + 32);
  v48 = OUTLINED_FUNCTION_31_1();
  sub_23BA68F44(v48, v49);

LABEL_26:
  *a1 = v58;
  *(a1 + 8) = v59;
  *(a1 + 16) = v24;
  *(a1 + 24) = v23;
  *(a1 + 32) = v56;
  *(a1 + 40) = v57;
  *(a1 + 48) = v35;
  *(a1 + 56) = v37;
  *(a1 + 64) = v45;
  *(a1 + 72) = v46;
  *(a1 + 80) = v47;
}

uint64_t sub_23BA5E030(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_23BA027BC;

  return v5();
}

uint64_t sub_23BA5E124(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23BA027BC;

  return v6();
}

uint64_t sub_23BA5E224(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23BA5E320;

  return v6(v2 + 16, a1);
}

uint64_t sub_23BA5E320()
{
  OUTLINED_FUNCTION_3_13();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v3 = v2;

  v4 = *(v1 + 16);
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t sub_23BA5E420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a2;
  v4[6] = a4;
  v4[4] = a1;
  return MEMORY[0x2822009F8](sub_23BA5E444, 0, 0);
}

uint64_t sub_23BA5E444()
{
  OUTLINED_FUNCTION_4_11();
  v1 = v0[6];
  v2 = *(v1 + 16);
  v0[7] = *(v1 + 24);

  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_23BA5E54C;
  v4 = v0[4];
  v5 = v0[5];

  return (v7)(v0 + 2, v4, v5);
}

uint64_t sub_23BA5E54C()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v5 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_23BA5E6F4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_23BBDA958();
  return v3;
}

uint64_t sub_23BA5E784()
{
  v0 = type metadata accessor for SKLogger(0);
  __swift_allocate_value_buffer(v0, qword_27E19D258);
  __swift_project_value_buffer(v0, qword_27E19D258);
  return sub_23BBD9998();
}

uint64_t sub_23BA5E808(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_23BA027BC;

  return v9(a2, a3);
}

uint64_t sub_23BA5E908()
{
  v2 = sub_23BBDC928();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2B0, &qword_23BBF21C8);
  v6 = sub_23BBDC9A8();
  OUTLINED_FUNCTION_25_0(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23BBE94D0;
  sub_23BBDC998();
  v8 = MEMORY[0x277CDD1A8];
  if (*(v0 + 16))
  {
    v8 = MEMORY[0x277CDD1A0];
  }

  (*(v4 + 104))(v1, *v8, v2);
  sub_23BBDC938();
  v9 = OUTLINED_FUNCTION_49_0();
  v10(v9);
  return sub_23BA6879C(v7);
}

uint64_t sub_23BA5EA98()
{
  OUTLINED_FUNCTION_3_13();
  v1[37] = v34;
  v1[38] = v0;
  v1[35] = v2;
  v1[36] = v3;
  v1[33] = v4;
  v1[34] = v5;
  v1[31] = v6;
  v1[32] = v7;
  v1[29] = v8;
  v1[30] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D288, &qword_23BBF5E30);
  v1[39] = v10;
  OUTLINED_FUNCTION_13_0(v10);
  v1[40] = OUTLINED_FUNCTION_188();
  v1[41] = swift_task_alloc();
  v11 = type metadata accessor for SKLogger(0);
  v1[42] = v11;
  OUTLINED_FUNCTION_13_0(v11);
  v1[43] = OUTLINED_FUNCTION_46_0();
  v12 = sub_23BBDC9B8();
  v1[44] = v12;
  OUTLINED_FUNCTION_25_0(v12);
  v1[45] = v13;
  v1[46] = OUTLINED_FUNCTION_188();
  v1[47] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D290, &unk_23BBF21B0);
  OUTLINED_FUNCTION_13_0(v14);
  v1[48] = OUTLINED_FUNCTION_46_0();
  v15 = sub_23BBDCC78();
  v1[49] = v15;
  OUTLINED_FUNCTION_25_0(v15);
  v1[50] = v16;
  v1[51] = OUTLINED_FUNCTION_46_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E197B90, &qword_23BBE3F90);
  OUTLINED_FUNCTION_13_0(v17);
  v1[52] = OUTLINED_FUNCTION_188();
  v1[53] = swift_task_alloc();
  v18 = sub_23BBDCB58();
  v1[54] = v18;
  OUTLINED_FUNCTION_25_0(v18);
  v1[55] = v19;
  v1[56] = OUTLINED_FUNCTION_188();
  v1[57] = swift_task_alloc();
  v20 = sub_23BBDCBA8();
  v1[58] = v20;
  OUTLINED_FUNCTION_25_0(v20);
  v1[59] = v21;
  v1[60] = OUTLINED_FUNCTION_188();
  v1[61] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E19FEF0, &unk_23BBE3E40);
  OUTLINED_FUNCTION_13_0(v22);
  v1[62] = OUTLINED_FUNCTION_46_0();
  v23 = sub_23BBDCC88();
  v1[63] = v23;
  OUTLINED_FUNCTION_25_0(v23);
  v1[64] = v24;
  v1[65] = OUTLINED_FUNCTION_46_0();
  v25 = sub_23BBDC9A8();
  v1[66] = v25;
  OUTLINED_FUNCTION_25_0(v25);
  v1[67] = v26;
  v1[68] = OUTLINED_FUNCTION_188();
  v1[69] = swift_task_alloc();
  v27 = sub_23BBDC8A8();
  v1[70] = v27;
  OUTLINED_FUNCTION_25_0(v27);
  v1[71] = v28;
  v1[72] = OUTLINED_FUNCTION_46_0();
  v29 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_23BA602C4()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v1 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23BA61810()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 664) = v3;

  v4 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BA62CA8()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v6 = v5;
  *(v3 + 712) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BA62DB8()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  *v4 = *v1;
  v3[91] = v5;
  v3[92] = v6;
  v3[93] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BA63478(uint64_t a1)
{
  v101 = v2;
  OUTLINED_FUNCTION_136();
  v99 = 0;
  v100 = v3;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](27, 0x800000023BBE15A0);
  v4 = OUTLINED_FUNCTION_106();
  MEMORY[0x23EEB5890](v4);
  MEMORY[0x23EEB5890](0xD000000000000019, 0x800000023BBE15C0);
  v5 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  MEMORY[0x23EEB5890](v5);

  v6 = v100;
  sub_23BBDD578();

  sub_23BBD9988();
  OUTLINED_FUNCTION_138();

  v7 = OUTLINED_FUNCTION_183();
  v8 = MEMORY[0x277D84F70];
  if (v7)
  {
    OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_31_2(4.8752e-34);
    v98 = v9;
    v99 = v10;
    v100 = v11;
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_135(v12, v13, v14, v15, v16, v17, v18, v19, v88, v90, v92, 0, v98, v99, v100);
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_63();
    sub_23BA5AB90(v94, v6, &v98);
    OUTLINED_FUNCTION_194();
    unk_23BBE600E = &v99;
    OUTLINED_FUNCTION_55_0(&dword_23B970000, v20, v21, "%{public}s%{public}s");
    OUTLINED_FUNCTION_164(v22, v23, v8 + 8);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_57_1();
  }

  else
  {
  }

  v24 = *(v2 + 736);
  v25 = *(v2 + 536);
  sub_23BBDC978();
  OUTLINED_FUNCTION_138();

  v26 = 0;
  v27 = v1[2];
  while (v27 != v26)
  {
    v28 = *(v2 + 552);
    v29 = *(v2 + 384);
    v30 = v26 + 1;
    (*(v25 + 16))(v28, v1 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v26, *(v2 + 528));
    v31 = OUTLINED_FUNCTION_193();
    v99 = v24;
    v24 = &v99;
    sub_23BA68B14(v28, v31, v29);
    *(v2 + 208) = v99;
    sub_23B9846E8(v29, &qword_27E19D290, &unk_23BBF21B0);
    v26 = v30;
  }

  v32 = *(v2 + 696);
  v33 = *(v2 + 688);
  v95 = *(v2 + 520);
  v34 = *(v2 + 504);
  v35 = *(v2 + 512);
  v36 = *(v2 + 456);
  v38 = *(v2 + 432);
  v37 = *(v2 + 440);
  v39 = *(v2 + 65);

  v40 = OUTLINED_FUNCTION_16_4();
  v42 = sub_23BA68F4C(v40, v41, v39);
  v44 = *(v37 + 8);
  v43 = (v37 + 8);
  v44(v36, v38, v42);
  (*(v35 + 8))(v95, v34);
  OUTLINED_FUNCTION_85();
  if (v33)
  {
    OUTLINED_FUNCTION_144();
    sub_23BBDC8F8();
    OUTLINED_FUNCTION_34_2();
    if (!v45)
    {
      v66 = OUTLINED_FUNCTION_35_2();
      v67(v66);

      sub_23BBDD578();
      OUTLINED_FUNCTION_174();
      sub_23BBD9988();
      OUTLINED_FUNCTION_169();
      if (OUTLINED_FUNCTION_173())
      {
        OUTLINED_FUNCTION_161();
        OUTLINED_FUNCTION_132();
        OUTLINED_FUNCTION_94();
        *v36 = 136446466;
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_198();
        OUTLINED_FUNCTION_133();
        OUTLINED_FUNCTION_135(v68, v69, v70, v71, v72, v73, v74, v75, v88, v90, v92, " of successful in-app purchase", v98, v99, v100);
        OUTLINED_FUNCTION_170();
        OUTLINED_FUNCTION_38_0();
        *(v36 + 14) = sub_23BA5AB90(0xD000000000000030, v97 | 0x8000000000000000, &v98);
        OUTLINED_FUNCTION_49_1(&dword_23B970000, v76, v77, "%{public}s%{public}s");
        OUTLINED_FUNCTION_97();
        OUTLINED_FUNCTION_57_1();
        OUTLINED_FUNCTION_93();
      }

      OUTLINED_FUNCTION_10_13();
      v78 = swift_task_alloc();
      v79 = OUTLINED_FUNCTION_201(v78);
      *v79 = v80;
      OUTLINED_FUNCTION_8_20(v79);
      OUTLINED_FUNCTION_13_17();
      OUTLINED_FUNCTION_23_4();

      __asm { BRAA            X2, X16 }
    }

    v32 = *(v2 + 416);
    v46 = OUTLINED_FUNCTION_49_0();
    sub_23B979500(v46, v47);
    sub_23B9846E8(v32, &qword_27E197B90, &qword_23BBE3F90);
  }

  OUTLINED_FUNCTION_204();
  if (v38)
  {
    OUTLINED_FUNCTION_176();
    v93 = v48;
    v96 = v49;
    v89 = v1[5];
    v91 = v1[4];
    OUTLINED_FUNCTION_118();

    OUTLINED_FUNCTION_117();
    sub_23BBD9988();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_12_1();
    (*(v50 + 8))(v32);
    sub_23BBDD578();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_134();
    if (OUTLINED_FUNCTION_192())
    {
      OUTLINED_FUNCTION_88();
      v33 = OUTLINED_FUNCTION_128();
      *v1 = 136446466;
      OUTLINED_FUNCTION_44_1();
      v51 = OUTLINED_FUNCTION_106();
      MEMORY[0x23EEB5890](v51);
      v52 = MEMORY[0x23EEB5890](93, 0xE100000000000000);
      OUTLINED_FUNCTION_135(v52, v53, v54, v55, v56, v57, v58, v59, v89, v91, v93, v96, v98, v99, v100);
      OUTLINED_FUNCTION_182();
      OUTLINED_FUNCTION_62_1();
      *(v1 + 14) = sub_23BA5AB90(v39, v38, &v98);
      OUTLINED_FUNCTION_84(&dword_23B970000, v60, v61, "%{public}s Performing purchase for %{public}s");
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_175();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2B0, &qword_23BBF21C8);
    v63 = OUTLINED_FUNCTION_39_0(v62);
    OUTLINED_FUNCTION_190(v63, xmmword_23BBE7F10);
    sub_23BBDC958();
    v64 = OUTLINED_FUNCTION_6_9();
    sub_23BA66320(v64, v65);
    OUTLINED_FUNCTION_130();

    *(v2 + 208) = v33;
  }

  v83 = swift_task_alloc();
  v84 = OUTLINED_FUNCTION_83(v83);
  *v84 = v85;
  OUTLINED_FUNCTION_6_14(v84);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_23_4();

  return PurchaseAction.callAsFunction(_:options:)();
}

uint64_t sub_23BA63A74()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_17();
  *v4 = v3;
  *v4 = *v1;
  v3[97] = v5;
  v3[98] = v6;
  v3[99] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BA63B88()
{
  v64 = v0;
  v2 = v0[73];
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_23BBDD768();
  MEMORY[0x23EEB5890](0xD000000000000034, 0x800000023BBE1480);
  v3 = _s17_StoreKit_SwiftUI012SubscriptionA25ControlStyleConfigurationV12PickerOptionV2idSSvg_0();
  MEMORY[0x23EEB5890](v3);

  sub_23BBDD578();

  sub_23BBD9988();
  OUTLINED_FUNCTION_138();

  if (OUTLINED_FUNCTION_183())
  {
    OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_80_0();
    OUTLINED_FUNCTION_31_2(4.8752e-34);
    v61 = v4;
    v62 = v5;
    v63 = v6;
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_133();
    OUTLINED_FUNCTION_135(v7, v8, v9, v10, v11, v12, v13, v14, v53, v55, v57, v59, v61, v62, v63);
    OUTLINED_FUNCTION_167();
    OUTLINED_FUNCTION_63();
    sub_23BA5AB90(0, 0xE000000000000000, &v61);
    OUTLINED_FUNCTION_194();
    *(v1 + 14) = &v62;
    OUTLINED_FUNCTION_55_0(&dword_23B970000, v15, v16, "%{public}s%{public}s");
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_57_1();
  }

  else
  {
  }

  v17 = v0[98];
  v18 = v0[95];
  v19 = v0[69];
  v21 = v0[55];
  v20 = v0[56];
  v22 = v0[54];
  v23 = v0[48];
  sub_23BBDC988();

  v24 = OUTLINED_FUNCTION_193();
  v62 = v17;
  sub_23BA68B14(v19, v24, v23);
  v25 = OUTLINED_FUNCTION_49_0();
  sub_23B979500(v25, v26);
  sub_23B9846E8(v23, &qword_27E19D290, &unk_23BBF21B0);
  v28 = *(v21 + 8);
  v27 = v21 + 8;
  v28(v20, v22);
  v29 = v62;
  v0[26] = v62;
  OUTLINED_FUNCTION_204();
  if (v23)
  {
    OUTLINED_FUNCTION_176();
    v58 = v30;
    v60 = v31;
    v54 = *(v18 + 40);
    v56 = *(v18 + 32);
    OUTLINED_FUNCTION_118();

    OUTLINED_FUNCTION_117();
    sub_23BBD9988();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_12_1();
    (*(v32 + 8))(&v62);
    sub_23BBDD578();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_134();
    if (OUTLINED_FUNCTION_192())
    {
      OUTLINED_FUNCTION_88();
      v29 = OUTLINED_FUNCTION_128();
      *v18 = 136446466;
      OUTLINED_FUNCTION_44_1();
      v33 = OUTLINED_FUNCTION_106();
      MEMORY[0x23EEB5890](v33);
      v34 = MEMORY[0x23EEB5890](93, 0xE100000000000000);
      OUTLINED_FUNCTION_135(v34, v35, v36, v37, v38, v39, v40, v41, v54, v56, v58, v60, v61, v62, v63);
      OUTLINED_FUNCTION_182();
      OUTLINED_FUNCTION_62_1();
      *(v18 + 14) = sub_23BA5AB90(v27, v23, &v61);
      OUTLINED_FUNCTION_84(&dword_23B970000, v42, v43, "%{public}s Performing purchase for %{public}s");
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_175();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E19D2B0, &qword_23BBF21C8);
    v45 = OUTLINED_FUNCTION_39_0(v44);
    OUTLINED_FUNCTION_190(v45, xmmword_23BBE7F10);
    sub_23BBDC958();
    v46 = OUTLINED_FUNCTION_6_9();
    sub_23BA66320(v46, v47);
    OUTLINED_FUNCTION_130();

    v0[26] = v29;
  }

  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_83(v48);
  *v49 = v50;
  OUTLINED_FUNCTION_6_14(v49);
  OUTLINED_FUNCTION_42_2();
  OUTLINED_FUNCTION_23_4();

  return PurchaseAction.callAsFunction(_:options:)();
}

uint64_t sub_23BA63F2C()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_7_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_18();
  *v5 = v4;
  *(v6 + 808) = v0;

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23BA64028()
{
  v32 = v0;
  v2 = v0[76];
  (*(v0[45] + 32))(v0[47], v0[46], v0[44]);
  v3 = OUTLINED_FUNCTION_150();
  if (!__swift_getEnumTagSinglePayload(v3, v4, v2))
  {
    v2 = v0[47];
    v5 = v0[44];
    v6 = v0[45];
    v7 = v0[36];
    v8 = *(v0[76] + 32);
    sub_23B9846E8(v7 + v8, &qword_27E19D2A0, &unk_23BC00A40);
    (*(v6 + 16))(v7 + v8, v2, v5);
    __swift_storeEnumTagSinglePayload(v7 + v8, 0, 1, v5);
  }

  v9 = v0[38];
  v10 = *(v9 + 16);
  v0[102] = v10;
  v0[103] = *(v9 + 24);
  if (v10)
  {
    OUTLINED_FUNCTION_92();
    v11 = OUTLINED_FUNCTION_76();
    if (!__swift_getEnumTagSinglePayload(v11, v12, v13))
    {
      *(v2 + 3) = 1;
    }

    OUTLINED_FUNCTION_187();
    v14 = sub_23BBDD578();

    sub_23BBD9988();
    OUTLINED_FUNCTION_216();
    v15 = os_log_type_enabled(1, v14);
    v16 = v0[75];
    if (v15)
    {
      v17 = v0[74];
      OUTLINED_FUNCTION_132();
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_31_2(4.8752e-34);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      MEMORY[0x23EEB5890](v17, v16);
      OUTLINED_FUNCTION_133();
      sub_23BA5AB90(v30, v31, &v29);
      OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_63();
      *(v1 + 14) = sub_23BA5AB90(0xD00000000000002ELL, 0x800000023BBE1410, &v29);
      OUTLINED_FUNCTION_145(&dword_23B970000, v21, v22, "%{public}s%{public}s");
      OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_57_1();
    }

    (*(v0[45] + 16))(v0[41], v0[47], v0[44]);
    OUTLINED_FUNCTION_137();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_18();
    v28 = v23;
    v24 = swift_task_alloc();
    v0[104] = v24;
    *v24 = v0;
    v24[1] = sub_23BA64414;
    v25 = OUTLINED_FUNCTION_13_17();

    return v28(v25);
  }

  else
  {
    (*(v0[45] + 8))(v0[47], v0[44]);

    OUTLINED_FUNCTION_1_16();

    return v27();
  }
}

uint64_t sub_23BA64414()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288, &qword_23BBF5E30);
  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA64524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_125();
  sub_23B979500(*(v20 + 816), *(v20 + 824));
  v21 = OUTLINED_FUNCTION_6_9();
  v22(v21);
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_53_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23BA64638()
{
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_21_4();
  v2 = *(v1 + 320);
  v3 = *v0;
  OUTLINED_FUNCTION_1_18();
  *v4 = v3;

  sub_23B9846E8(v2, &qword_27E19D288, &qword_23BBF5E30);

  v5 = OUTLINED_FUNCTION_16_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23BA64764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_125();
  sub_23B979500(*(v20 + 848), *(v20 + 856));
  __swift_destroy_boxed_opaque_existential_1((v20 + 152));

  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_53_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}