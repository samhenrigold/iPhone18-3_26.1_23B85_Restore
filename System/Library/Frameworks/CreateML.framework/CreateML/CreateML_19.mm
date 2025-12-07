void sub_237B7ADD8()
{
  OUTLINED_FUNCTION_74();
  v64 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v69 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D478, &qword_237C13BC0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_5();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4F0, &unk_237C14A80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_52_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  OUTLINED_FUNCTION_0();
  v62 = v12;
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  sub_237C05FCC();
  OUTLINED_FUNCTION_45_3();
  sub_237C05FCC();
  v65 = v18;
  if (sub_237B7B4D8() & 1) != 0 && (sub_237B7B4D8())
  {
    sub_237C05DDC();
    v19 = *(v8 + 52);
    v71 = v15;
    sub_237C05DDC();
    v20 = *(v69 + 32);
    v20(v7, v1, v3);
    sub_2379D9224(&qword_27DE9D438, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1900]);
    OUTLINED_FUNCTION_5_21();
    sub_237C0885C();
    v20(v7, v1 + v19, v3);
    v21 = v2 + *(v61 + 52);
    OUTLINED_FUNCTION_5_21();
    sub_237C0885C();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D448, &unk_237C13C80);
    v22 = *(v69 + 36);
    sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
    v59 = 0;
    v60 = MEMORY[0x277D84F98];
    v68 = v22;
    while (1)
    {
      v23 = v71;
      while (1)
      {
        OUTLINED_FUNCTION_32_3();
        sub_237C08B5C();
        if (*(v2 + v22) == v70[0])
        {
          goto LABEL_26;
        }

        v24 = sub_237C08B9C();
        v26 = v25[1];
        v67 = *v25;

        v24(v70, 0);
        sub_237C08B6C();
        v27 = *(v69 + 36);
        OUTLINED_FUNCTION_32_3();
        sub_237C08B5C();
        if (*(v21 + v27) == v70[0])
        {

LABEL_26:
          v55 = *(v61 + 56);
          v56 = *(v62 + 8);
          v57 = v63;
          v56(v23, v63);
          v56(v65, v57);
          *(v2 + v55) = 1;
          sub_2379D9054(v2, &qword_27DE9D4F0, &unk_237C14A80);
          sub_237A560B8(v59);
          goto LABEL_27;
        }

        v28 = sub_237C08B9C();
        v30 = v29[1];
        v66 = *v29;

        v28(v70, 0);
        sub_237C08B6C();
        if (v26)
        {
          break;
        }

        v23 = v71;
        v22 = v68;
      }

      v22 = v68;
      if (!v30)
      {

        continue;
      }

      sub_237A560B8(v59);
      v31 = v60;
      LODWORD(v59) = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v31;
      v32 = sub_237ACAC78(v66, v30);
      v34 = v31[2];
      v35 = (v33 & 1) == 0;
      v60 = (v34 + v35);
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v36 = v32;
      v37 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
      v38 = sub_237C090AC();
      v60 = v70[0];
      if (v38)
      {
        v39 = sub_237ACAC78(v66, v30);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_30;
        }

        v36 = v39;
      }

      if (v37)
      {

        v41 = v60;
      }

      else
      {
        v41 = v60;
        v60[(v36 >> 6) + 8] |= 1 << v36;
        v42 = (v41[6] + 16 * v36);
        *v42 = v66;
        v42[1] = v30;
        *(v41[7] + 8 * v36) = MEMORY[0x277D84F90];
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_29;
        }

        v41[2] = v45;
      }

      v46 = v41[7];
      v47 = *(v46 + 8 * v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 8 * v36) = v47;
      v66 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_32_13();
        sub_237BC0CB8();
        v47 = v51;
        *(v46 + 8 * v36) = v51;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_13();
        sub_237BC0CB8();
        v47 = v52;
        *(v66 + 8 * v36) = v52;
      }

      *(v47 + 16) = v49 + 1;
      v50 = v47 + 16 * v49;
      v22 = v68;
      *(v50 + 32) = v67;
      *(v50 + 40) = v26;
      v59 = sub_237A5D5F8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_237C0932C();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_237C085AC();
    v53 = v63;
    v54 = *(v62 + 8);
    v54(v15, v63);
    v54(v65, v53);
LABEL_27:
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_237B7B4D8()
{
  v0 = sub_237C0602C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  sub_237C05FBC();
  v4 = sub_237C05C9C();
  v6 = v5;

  if (v6)
  {
    return 0;
  }

  result = sub_237C05D8C();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= *(result + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v1 + 16))(v3, result + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4, v0);

  v8 = sub_237C05FFC();
  (*(v1 + 8))(v3, v0);
  return v8 == MEMORY[0x277D837D0];
}

uint64_t sub_237B7B664(uint64_t a1)
{
  OUTLINED_FUNCTION_3_75();
  sub_237B7C134(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9C938, &unk_237C14AB0);
  v4 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable);
  sub_2379DBC84(v4, v5);
  v6 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
  sub_2379DBC9C(v6, v7);
  v8 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures);
  sub_2379DBC9C(v8, v9);

  return v1;
}

uint64_t sub_237B7B71C(uint64_t a1)
{
  sub_237B7B664(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9D768;
  if (!qword_27DE9D768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B7B7C8(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237B7B8D0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_237B7B8D0(uint64_t a1)
{
  if (!qword_27DE9D778)
  {
    _s20PersistentParametersVMa(255);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9D778);
    }
  }
}

uint64_t sub_237B7B9BC()
{
  sub_237B778D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237B7BA70()
{
  sub_237B77F88();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237B7BB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C938, &unk_237C14AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B7BC04()
{
  result = qword_27DE9D788;
  if (!qword_27DE9D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9D780, &unk_237C14AC0);
    sub_237A35F1C(&qword_27DE9B530, &qword_27DE9ACF0, &unk_237C14060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D788);
  }

  return result;
}

uint64_t sub_237B7BCA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05DC0(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + v9;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v14 = *(v13 + 8);
        v14(v0 + v9, v12);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v14(v10 + v15[12], v12);
        OUTLINED_FUNCTION_105(v15[16]);

        OUTLINED_FUNCTION_105(v15[20]);

        OUTLINED_FUNCTION_105(v15[24]);

        v16 = v15[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        (*(v11 + 8))(v0 + v9);
        break;
      case 3u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v17 + 8))(v0 + v9);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v18[12]);

        OUTLINED_FUNCTION_105(v18[16]);

        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v19 + 8))(v0 + v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v20[12]);

        OUTLINED_FUNCTION_105(v20[16]);

        OUTLINED_FUNCTION_105(v20[20]);

        v16 = v20[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v16);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B7C07C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237B7C0D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237B7C134(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_30(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_22_28()
{
  *(v1 - 192) = v0;

  return sub_237C08DEC();
}

uint64_t OUTLINED_FUNCTION_29_16(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  v3 = *(v2 - 176);
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
  *(v2 - 224) = v3;
  return v2 - 224;
}

void *OUTLINED_FUNCTION_70_5()
{
  *(v0 + 480) = 0;

  return MLDataTable.init(contentsOf:options:)(v1, (v0 + 344), (v2 - 128));
}

void OUTLINED_FUNCTION_71_7()
{

  sub_237A347A4();
}

unint64_t OUTLINED_FUNCTION_72_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;

  return sub_237A20C10();
}

void OUTLINED_FUNCTION_82_6(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = -1;
}

uint64_t OUTLINED_FUNCTION_84_3()
{
  *(v2 - 200) = v0;
  *(v2 - 192) = v1;
  *(v2 - 224) = v3;
  return v2 - 224;
}

void OUTLINED_FUNCTION_103_2()
{
  v2 = *(v0 - 448);
  v3 = *(v0 - 476);

  sub_2379DBC9C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_104_1()
{
}

uint64_t OUTLINED_FUNCTION_105_2()
{

  return _s20PersistentParametersVMa(0);
}

uint64_t OUTLINED_FUNCTION_106_2()
{

  return _s20PersistentParametersVMa(0);
}

uint64_t OUTLINED_FUNCTION_107_2()
{
}

void OUTLINED_FUNCTION_108_1()
{
  v2 = *(v0 + 680);
  v3 = *(v0 + 688);

  sub_2379DBC9C(v2, v3);
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D790;
  if (!qword_27DE9D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_237B7C62C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A2A8D8(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x237B7C880);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237B7C890(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A2A8D8(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

id MLBoostedTreeClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeClassifier(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLBoostedTreeClassifier(uint64_t a1)
{
  result = qword_27DE9D7C8;
  if (!qword_27DE9D7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLBoostedTreeClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLBoostedTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLBoostedTreeClassifier.targetColumn.getter()
{
  type metadata accessor for MLBoostedTreeClassifier(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLBoostedTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLBoostedTreeClassifier(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLBoostedTreeClassifier.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLBoostedTreeClassifier(v0);
  return nullsub_1;
}

uint64_t MLBoostedTreeClassifier.featureColumns.getter()
{
  type metadata accessor for MLBoostedTreeClassifier(0);
}

uint64_t MLBoostedTreeClassifier.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLBoostedTreeClassifier.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLBoostedTreeClassifier(v0);
  return nullsub_1;
}

uint64_t MLBoostedTreeClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLBoostedTreeClassifier(v2) + 32);

  return sub_237B7D020(v3, v0);
}

uint64_t MLBoostedTreeClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLBoostedTreeClassifier(v0);
  return OUTLINED_FUNCTION_22_29(*(v1 + 36));
}

uint64_t MLBoostedTreeClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLBoostedTreeClassifier(v0);
  return OUTLINED_FUNCTION_22_29(*(v1 + 40));
}

uint64_t sub_237B7D0D4()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9D7A0);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D7A0);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLBoostedTreeClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9D7A0);
  OUTLINED_FUNCTION_2_74();
  return sub_237B81AA0(v3, a1);
}

void MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v198 = v0;
  v207 = v1;
  v199 = v2;
  v205 = v3;
  v195 = v4;
  v212 = v5;
  v7 = v6;
  v8 = type metadata accessor for AnyClassificationMetrics(0);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v12 = OUTLINED_FUNCTION_21_3(v11);
  v13 = type metadata accessor for MLClassifierMetrics(v12);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  v17 = OUTLINED_FUNCTION_21_3(v16);
  v18 = type metadata accessor for AnyTreeClassifierModel(v17);
  v19 = OUTLINED_FUNCTION_1(v18);
  v182 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v21);
  v183 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0(v174 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v28);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_21_3(v174 - v30);
  v188 = sub_237C0602C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_58();
  v35 = OUTLINED_FUNCTION_21_3(v34);
  v36 = type metadata accessor for AnyTreeClassifier(v35);
  v37 = OUTLINED_FUNCTION_20(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v39 - v38);
  v206 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v201 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  v46 = OUTLINED_FUNCTION_21_3(v45);
  v196 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(v46);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v49 - v48);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v55);
  v57 = v174 - v56;
  v203 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v202 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v60);
  v62 = v174 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v65 = v64;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v66);
  v68 = v174 - v67;
  v69 = type metadata accessor for MLBoostedTreeClassifier(0);
  v70 = (v7 + *(v69 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v68);
  sub_2379E5C70(v68);
  (*(v65 + 8))(v68, v63);
  v71 = v7;
  v72 = v207;
  *v70 = 0;
  v73 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v200 = v70;
  swift_storeEnumTagMultiPayload();
  v181 = v69;
  v74 = *(v69 + 40);
  v75 = v62;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v76 = swift_allocError();
  *v77 = 0xD0000000000000C0;
  v77[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v76, v77);
  *(v71 + v74) = v78;
  v204 = v71;
  v179 = v73;
  swift_storeEnumTagMultiPayload();
  sub_237B7D020(v72, v211);
  sub_237C071CC();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C070DC();
  sub_237C071BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237B7E76C(v211);
  sub_2379E9068(v72, &v209, &qword_27DE9A998, &unk_237C0C100);
  if (v210)
  {
    OUTLINED_FUNCTION_23_17();
    v80 = *(v79 + 48);
    sub_2379DAD24(&v209, v211);
    v81 = v197;
    swift_dynamicCast();
    v82 = v198;
    sub_2379EA3A8(v57, &v57[v80], v212);
    if (v82)
    {
      OUTLINED_FUNCTION_59_9();
      OUTLINED_FUNCTION_32_16();

      sub_237B7E76C(v72);
      OUTLINED_FUNCTION_36_3();
      v83(v212, v206);
      v84 = OUTLINED_FUNCTION_5_61();
      v85(v84);
      OUTLINED_FUNCTION_6_59();
      sub_237B81EC0();
      sub_237B81EC0();
      sub_237B81EC0();
    }

    else
    {
      OUTLINED_FUNCTION_6_59();
      sub_237B81EC0();
      v86 = v205;
      sub_237B19700(v57, v195, v205, v199);
      v198 = v87;
      v196 = v74;

      v199 = v57;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v88, v89, v90, v91);
      OUTLINED_FUNCTION_23_17();
      v93 = *(v92 + 48);
      v94 = v206;
      if (__swift_getEnumTagSinglePayload(v81 + v93, 1, v206) == 1)
      {
        sub_2379D9054(v81 + v93, &qword_27DE9A9A0, &qword_237C0BF60);
        v95 = *(v201 + 8);
        v96 = (v201 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v95(v81, v94);
      }

      else
      {
        OUTLINED_FUNCTION_58_7();
        v110 = v81 + v93;
        v111 = v81;
        v81 = v186;
        (*(v109 + 32))(v186, v110, v94);
        v197 = *(v57 + 1);
        v197(v111, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v195;
        *(inited + 40) = v86;

        sub_2379F2DA4();
        v192 = (v57 + 8);
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_237C0B670;
        v125 = MEMORY[0x277D83B88];
        *(v124 + 32) = MEMORY[0x277D837D0];
        *(v124 + 40) = v125;
        sub_2379F30EC();
        v96 = v192 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v94 = v206;
        v95 = v197;
        v197(v81, v206);
      }

      v97 = v199;
      OUTLINED_FUNCTION_48_9();
      sub_2379E9068(v98, v99, v100, v101);
      sub_237C05DFC();
      v95(v81, v94);
      v102 = v97;
      v103 = v190;
      sub_2379E9068(v102, v190, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_48_9();
      sub_237AE7128(v104, v105, v106, v107);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v94);
      v197 = v95;
      v192 = v96;
      if (EnumTagSinglePayload == 1)
      {
        v95(v103, v94);
        sub_2379D9054(v81, &qword_27DE9A9A0, &qword_237C0BF60);
        v103 = v189;
        __swift_storeEnumTagSinglePayload(v189, 1, 1, v188);
      }

      else
      {
        OUTLINED_FUNCTION_58_7();
        sub_237C05DFC();
        v95(v81, v94);
        __swift_storeEnumTagSinglePayload(v103, 0, 1, v188);
        v95(v190, v94);
      }

      v113 = v202;
      OUTLINED_FUNCTION_23_17();
      v190 = *(v114 + 48);
      v115 = v187;
      (*(v113 + 16))(v187, v75, v203);

      v116 = v198;

      v117 = sub_237AB7E28(v193, v103, v195, v86, v116, v115, v191);
      OUTLINED_FUNCTION_47_16(v117, &qword_27DE9A9A0, &qword_237C0BF60);
      OUTLINED_FUNCTION_71();
      v118 = v191;
      sub_237AB87DC(v119, v120, v121, v122, v123);
      v194 = v75;
      if ((sub_237A37A64() & 1) == 0)
      {
        OUTLINED_FUNCTION_32_16();
        OUTLINED_FUNCTION_48_9();
        sub_2379E9068(v126, v127, v128, v129);
        OUTLINED_FUNCTION_23_17();
        v131 = *(v130 + 48);
        v132 = sub_237C05D3C();
        OUTLINED_FUNCTION_16_29();
        v133();
        sub_237A37AEC(5, 0xD000000000000015, 0x8000000237C17C00, v132);
        sub_2379D9054(v118 + v131, &qword_27DE9A9A0, &qword_237C0BF60);
        sub_237A37AEC(5, 0xD000000000000010, 0x8000000237C1AE80, *(v191[3] + 16));
      }

      v134 = v181;
      v135 = v204;
      v136 = (v204 + v181[6]);
      v137 = v205;
      *v136 = v195;
      v136[1] = v137;
      v138 = v134[8];
      sub_237B7D020(v207, v135 + v138);
      *(v135 + v134[7]) = v198;
      OUTLINED_FUNCTION_3_76();
      v139 = v185;
      v140 = v184;
      sub_237B81AA0(v185, v184);
      v141 = (*(v182 + 80) + 16) & ~*(v182 + 80);
      swift_allocObject();
      OUTLINED_FUNCTION_21_31();
      sub_237B81F14(v140, v142 + v141);
      sub_2379DD56C();
      v144 = v143;
      v195 = v138;

      v145 = v204;
      *(v204 + v134[5]) = v144;
      OUTLINED_FUNCTION_3_76();
      sub_237B81AA0(v139, v145);
      v146 = v180;
      v147 = v199;
      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v148, v149);
      v151 = *v204;
      v150 = v204[1];
      sub_237C05DFC();
      OUTLINED_FUNCTION_58_7();
      v193 = v151;
      v190 = v150;
      sub_237C05DFC();
      v152 = v178;
      sub_237B0CBBC();
      v153 = v206;
      v197(v146, v206);
      OUTLINED_FUNCTION_7_46();
      OUTLINED_FUNCTION_48_9();
      sub_237B81F14(v154, v155);
      swift_storeEnumTagMultiPayload();
      sub_2379DC1F8(v152, v200);
      v156 = v177;
      sub_2379E9068(v147, v177, &qword_27DE9ADC0, &unk_237C0BF40);
      OUTLINED_FUNCTION_23_17();
      v158 = *(v157 + 48);
      if (__swift_getEnumTagSinglePayload(v156 + v158, 1, v153) == 1)
      {
        sub_237B7E76C(v207);
        v159 = v197;
        v197(v212, v153);
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        sub_2379D9054(v147, &qword_27DE9ADC0, &unk_237C0BF40);
        v160 = OUTLINED_FUNCTION_5_61();
        v161(v160);
        OUTLINED_FUNCTION_0_80();
        OUTLINED_FUNCTION_61_8();
        sub_2379D9054(v156 + v158, &qword_27DE9A9A0, &qword_237C0BF60);
        v159(v156, v153);
      }

      else
      {
        (*(v201 + 32))(v175, v156 + v158, v153);
        v162 = v156;
        v163 = v197;
        v197(v162, v153);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v164, v165);
        sub_237C05DFC();
        OUTLINED_FUNCTION_58_7();
        v166 = v175;
        sub_237C05DFC();
        v167 = v174[1];
        sub_237B0CBBC();
        v163(v176, v153);
        OUTLINED_FUNCTION_50_13();
        v163(v212, v153);
        v163(v166, v153);
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        v168 = OUTLINED_FUNCTION_32_16();
        sub_2379D9054(v168, v169, v170);
        v171 = OUTLINED_FUNCTION_5_61();
        v172(v171);
        OUTLINED_FUNCTION_7_46();
        v173 = v174[0];
        sub_237B81F14(v167, v174[0]);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_0_80();
        OUTLINED_FUNCTION_61_8();
        sub_2379DC1F8(v173, v204 + v196);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237B7E7C4()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE3610(v5);
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  LOBYTE(v10) = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  sub_237A70ED4(&v13, v11);
  sub_237B7D020(a5, &v13);
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237B7E76C(a5);
}

void MLBoostedTreeClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v90 = v0;
  v99 = v1;
  v3 = v2;
  v80 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v6);
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v96 = v7;
  v97 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v87 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v95 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v88 = v13;
  v94 = type metadata accessor for AnyTreeClassifier(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v20 = type metadata accessor for AnyTreeClassifierModel(0);
  v21 = OUTLINED_FUNCTION_1(v20);
  v84 = v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_134();
  v86 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v83 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v89 = v27;
  v82 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  v85 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v77 - v35;
  v37 = type metadata accessor for MLBoostedTreeClassifier(0);
  v38 = (v3 + *(v37 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v36);
  sub_2379E5C70(v36);
  (*(v33 + 8))(v36, v31);
  *v38 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v93 = v38;
  swift_storeEnumTagMultiPayload();
  v77 = v37;
  v39 = *(v37 + 40);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v40 = swift_allocError();
  *v41 = 0xD0000000000000C0;
  v41[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v40, v41);
  *(v3 + v39) = v42;
  swift_storeEnumTagMultiPayload();
  v43 = *(v99 + *(type metadata accessor for MLCheckpoint(0) + 20));
  v92 = v39;
  switch(v43)
  {
    case 2:

      goto LABEL_4;
    default:
      v44 = sub_237C0929C();

      if (v44)
      {
LABEL_4:
        v91 = v16;
        v81 = v3;
        sub_237AE1948(MEMORY[0x277D84FA0]);
        v46 = v45;
        v47 = v88;
        sub_237C071CC();
        *v19 = 0;
        *(v19 + 1) = 0xE000000000000000;
        v48 = MEMORY[0x277D84F90];
        *(v19 + 2) = MEMORY[0x277D84F90];
        v49 = v90;
        sub_237AE1458(v46);
        v51 = v50;

        v98[0] = v51;

        sub_237AE69B4(v98);
        if (v49)
        {

          __break(1u);
          JUMPOUT(0x237B7F35CLL);
        }

        v52 = v97;
        *(v19 + 3) = v98[0];
        v19[32] = 0;
        *(v19 + 5) = v48;
        *(v19 + 6) = 0xD000000000000013;
        *(v19 + 7) = 0x8000000237C17BE0;
        v53 = v96;
        v90 = *(v52 + 16);
        v90(v95, v47, v96);
        sub_237C06D7C();
        v54 = *(v52 + 8);
        v97 = v52 + 8;
        v54(v47, v53);
        sub_237AE6A00();
        v55 = v89;
        sub_237C0743C();
        OUTLINED_FUNCTION_0_80();
        sub_237B81EC0();
        v58 = v81;
        v59 = v85;
        sub_237B81F14(v55, v85);
        OUTLINED_FUNCTION_3_76();
        v60 = v83;
        sub_237B81AA0(v59, v83);
        v61 = (*(v84 + 80) + 16) & ~*(v84 + 80);
        v62 = swift_allocObject();
        sub_237B81F14(v60, v62 + v61);
        sub_2379DD56C();
        v64 = v63;

        v65 = v77;
        *(v58 + v77[5]) = v64;
        OUTLINED_FUNCTION_3_76();
        sub_237B81AA0(v59, v58);
        v66 = v79;
        *v79 = 0;
        *(v66 + 8) = 0;
        *(v66 + 16) = 256;
        v67 = v80;
        swift_storeEnumTagMultiPayload();
        v68 = v58 + v65[8];
        *v68 = 0u;
        *(v68 + 16) = 0u;
        *(v68 + 32) = xmmword_237C0BF20;
        *(v68 + 48) = xmmword_237C0BF30;
        *(v68 + 64) = 42;
        *(v68 + 72) = 0x3FD3333333333333;
        *(v68 + 80) = 0;
        *(v68 + 88) = 1;
        __asm { FMOV            V0.2D, #1.0 }

        *(v68 + 96) = _Q0;
        v74 = v78;
        sub_237B81AA0(v66, v78);
        v98[3] = v67;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v98);
        sub_237B81F14(v74, boxed_opaque_existential_0);
        OUTLINED_FUNCTION_6_59();
        sub_237B81EC0();
        sub_2379DAE54(v98, v68);
        v76 = (v58 + v65[6]);
        *v76 = 0;
        v76[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_12_43();
        sub_237B81EC0();
        OUTLINED_FUNCTION_1_76();
        sub_237B81EC0();
        *(v58 + v65[7]) = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v56 = swift_allocError();
        *v57 = 0xD000000000000042;
        v57[1] = 0x8000000237C1DA40;
        OUTLINED_FUNCTION_23_3(v56, v57);
        swift_willThrow();
        OUTLINED_FUNCTION_12_43();
        sub_237B81EC0();
        sub_237B81EC0();
        sub_237B81EC0();
      }

      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v2 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(v1 + 8);
  v11 = *v1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v4 + 8))(v8, v2);
  if (!v0)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
    OUTLINED_FUNCTION_91(v10);
    sub_237BECD04();
  }

  OUTLINED_FUNCTION_73();
}

void static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v38 = v1;
  v3 = v2;
  v40 = v4;
  v37 = v5;
  v36 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v12);
  v13 = sub_237C071DC();
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v39 = v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_138();
  v21 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v24 = v33 - v23;
  v25 = v3;
  sub_2379E9068(v3, &v44, &qword_27DE9A998, &unk_237C0C100);
  if (v45)
  {
    v26 = *(v16 + 48);
    sub_2379DAD24(&v44, &v41);
    swift_dynamicCast();
    sub_2379EA3A8(v24, &v24[v26], v8);
    OUTLINED_FUNCTION_6_59();
    sub_237B81EC0();
    if (!v0)
    {
      sub_2379E9068(v24, v21, &qword_27DE9ADC0, &unk_237C0BF40);
      v33[1] = *(v16 + 48);
      sub_2379E9068(v24, v39, &qword_27DE9ADC0, &unk_237C0BF40);
      sub_237B7D020(v25, &v41);

      sub_237C071CC();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C070DC();
      sub_237C071BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237B7E76C(&v41);
      OUTLINED_FUNCTION_2_74();
      v27 = v35;
      sub_237B81AA0(v38, v35);
      v28 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v28);
      sub_237A6A6F8();
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v30 = (*(v29 + 8))(v39);
      OUTLINED_FUNCTION_64_0(v30, &qword_27DE9A9A0, &qword_237C0BF60);
      v42 = v28;
      v43 = &off_284AC2A08;
      *&v41 = v27;
      OUTLINED_FUNCTION_2_74();
      v31 = v34;
      sub_237B81AA0(v38, v34);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7C0, &qword_237C14B20);
      OUTLINED_FUNCTION_91(v32);

      sub_2379E4398(&v41, v31, 5);
      sub_2379D9054(v24, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLBoostedTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
  OUTLINED_FUNCTION_91(v1);

  sub_237BECD04();
}

void static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7B8, &qword_237C14B18);
    OUTLINED_FUNCTION_91(v7);
    sub_237BECD04();
  }
}

void static MLBoostedTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-1] - v8;
  OUTLINED_FUNCTION_2_74();
  sub_237B81AA0(a1, v9);
  v10 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = sub_237A6A5D0(v9);
  if (!v1)
  {
    v14[3] = v10;
    v14[4] = &off_284AC2A08;
    v14[0] = v11;
    OUTLINED_FUNCTION_2_74();
    sub_237B81AA0(a1, v6);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7C0, &qword_237C14B20);
    OUTLINED_FUNCTION_91(v12);
    sub_2379E4398(v14, v6, 5);
  }
}

uint64_t sub_237B7FC24(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7D8, &qword_237C14BE8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9D7D8, &qword_237C14BE8);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C14BF8, v21);
  }
}

uint64_t sub_237B7FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7D8, &qword_237C14BE8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B7FECC);
}

uint64_t sub_237B7FECC()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237B7FF6C;

  return sub_237B80244();
}

uint64_t sub_237B7FF6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B80068()
{
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_37_0();
  sub_237AE7128(v1, v2, &qword_27DE9D7D8, &qword_237C14BE8);
  v3 = v0[8];
  v4 = v0[3];
  sub_237AE7128(v0[7], v3, &qword_27DE9D7D8, &qword_237C14BE8);
  v4(v3);
  sub_2379D9054(v3, &qword_27DE9D7D8, &qword_237C14BE8);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237B8015C()
{
  *v0[7] = v0[10];
  swift_storeEnumTagMultiPayload();
  v1 = v0[8];
  v2 = v0[3];
  sub_237AE7128(v0[7], v1, &qword_27DE9D7D8, &qword_237C14BE8);
  v2(v1);
  sub_2379D9054(v1, &qword_27DE9D7D8, &qword_237C14BE8);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237B80244()
{
  OUTLINED_FUNCTION_9();
  v0[42] = v1;
  v0[43] = v2;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v0[44] = v3;
  OUTLINED_FUNCTION_20(v3);
  v0[45] = swift_task_alloc();
  v0[46] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v4);
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  v5 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v5);
  v0[49] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[50] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[51] = v7;
  v0[52] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v8);
  v0[53] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for MLBoostedTreeClassifier(0);
  v0[54] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v10);
  v0[57] = OUTLINED_FUNCTION_19();
  v11 = sub_237C071DC();
  v0[58] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[59] = v12;
  v0[60] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v13);
  v0[61] = OUTLINED_FUNCTION_19();
  v14 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[62] = v14;
  OUTLINED_FUNCTION_20(v14);
  v0[63] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_237B804BC()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 344);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 496);
  v6 = *(v0 + 504);
  v8 = *(v0 + 480);
  v9 = *(v0 + 464);
  v10 = *(v0 + 472);
  v11 = *(v0 + 456);
  v12 = *(v0 + 424);
  v13 = *(v0 + 344);
  sub_237B81F14(*(v0 + 488), v6);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379E9068(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A8F498(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v15 = v14[1];
  v32 = *v14;
  *(v0 + 512) = v15;
  v16 = *(v6 + v7[7]);
  *(v0 + 520) = v16;
  v17 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v13 + v17, v12, &qword_27DE9BC78, &qword_237C0EBD0);
  v18 = type metadata accessor for AnyTreeClassifierModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v18);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v22 = *(v0 + 408);
  v21 = *(v0 + 416);
  v23 = *(v0 + 400);
  sub_237B7D020(v0 + 16, v0 + 128);
  v24 = v20[9];
  *(v0 + 560) = v24;
  v25 = (v19 + v24);

  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v21);
  sub_2379E5C70(v21);
  (*(v22 + 8))(v21, v23);
  *v25 = 0;
  *(v0 + 528) = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v26 = v20[10];
  *(v0 + 564) = v26;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v27 = swift_allocError();
  *v28 = 0xD0000000000000C0;
  v28[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v27, v28);
  *(v19 + v26) = v29;
  swift_storeEnumTagMultiPayload();
  *(v19 + v20[7]) = v16;
  v30 = (v19 + v20[6]);
  *v30 = v32;
  v30[1] = v15;
  v31 = swift_task_alloc();
  *(v0 + 536) = v31;
  *v31 = v0;
  v31[1] = sub_237B807FC;

  return sub_237B919A4();
}

uint64_t sub_237B807FC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 544) = v0;

  if (!v0)
  {
    *(v5 + 552) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237B8090C()
{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[48];
  v6 = v0[43];
  v5 = v0[44];
  v7 = v0[42];
  *(v2 + *(v3 + 20)) = v0[69];
  OUTLINED_FUNCTION_21_31();
  sub_237B81F14(v8, v2);
  memcpy((v2 + *(v3 + 32)), v0 + 16, 0x70uLL);
  sub_237B81F14(v2, v1);
  sub_237B81F14(v1, v7);
  v9 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v6 + v9, v4, &qword_27DE9BC88, &unk_237C11AF0);
  result = __swift_getEnumTagSinglePayload(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[54];
    v13 = v0[48];
    v12 = v0[49];
    v14 = v0[47];
    v16 = v0[43];
    v15 = v0[44];
    v17 = v0[42];
    sub_237B7E76C((v0 + 2));
    OUTLINED_FUNCTION_7_46();
    sub_237B81F14(v13, v12);
    OUTLINED_FUNCTION_37_0();
    swift_storeEnumTagMultiPayload();
    sub_2379DC1F8(v12, v17 + *(v11 + 36));
    v18 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v16 + v18, v14, &qword_27DE9BC88, &unk_237C11AF0);

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      v19 = v0[47];
      OUTLINED_FUNCTION_13_36();
      sub_237B81EC0();
      sub_2379D9054(v19, &qword_27DE9BC88, &unk_237C11AF0);
    }

    else
    {
      v20 = v0[54];
      v21 = v0[46];
      v22 = v0[45];
      v23 = v0[42];
      sub_237B81F14(v0[47], v21);
      sub_237B81F14(v21, v22);
      v24 = *(v20 + 40);
      sub_237B81EC0();
      sub_237B81F14(v22, v23 + v24);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_36();
      sub_237B81EC0();
    }

    OUTLINED_FUNCTION_8();

    return v25();
  }

  return result;
}

uint64_t sub_237B80C3C()
{
  sub_237B7E76C(v0 + 128);
  OUTLINED_FUNCTION_1_76();
  sub_237B81EC0();

  sub_237B81EC0();
  sub_237B81EC0();

  sub_237B7E76C(v0 + 16);
  OUTLINED_FUNCTION_13_36();
  sub_237B81EC0();

  OUTLINED_FUNCTION_8();

  return v1();
}

void MLBoostedTreeClassifier.predictions(from:)()
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v6 = OUTLINED_FUNCTION_47_3();
  type metadata accessor for MLBoostedTreeClassifier(v6);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A5DEEC(v7, v8);
    sub_237C05DFC();
    (*(v4 + 8))(v1, v2);
  }
}

uint64_t MLBoostedTreeClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v6 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v10 = sub_237C0602C();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v12 = *(a1 + 8);
  v14 = *a1;
  v15 = v12;
  sub_2379DBCF4(v14, v12);
  sub_237A70ED4(&v14, v3);
  MLBoostedTreeClassifier.predictions(from:)();
  if (v2)
  {
    return (*(v8 + 8))(v3, v6);
  }

  (*(v8 + 8))(v3, v6);
  return sub_237A72900(v4, 1, v1);
}

uint64_t MLBoostedTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_146();
  v6 = type metadata accessor for AnyClassificationMetrics(v5);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_47_3();
  v9 = type metadata accessor for MLBoostedTreeClassifier(v8);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v11 = (v2 + *(v9 + 24));
  v12 = v11[1];
  *(inited + 32) = *v11;
  *(inited + 40) = v12;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A5EF84(a1, v3);
  OUTLINED_FUNCTION_7_46();
  sub_237B81F14(v3, v1);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLBoostedTreeClassifier.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLBoostedTreeClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v42 = v0;
  v3 = v2;
  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v18 = v3;
  v21 = v20 - v19;
  memcpy(v41, v18, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v34 = v11;
    OUTLINED_FUNCTION_3_76();
    sub_237B81AA0(v42, v8);
    v22 = *(&v41[0] + 1);
    if (*(&v41[0] + 1))
    {
      v23 = *&v41[0];
      v24 = *(&v41[1] + 1);
      v25 = *&v41[1];
      v26 = v41[2];
      v27 = *(&v41[3] + 1);
      v28 = *&v41[3];
      v29 = *&v41[4];
    }

    else
    {
      v30 = v21;
      v31 = NSFullUserName();
      v23 = sub_237C086EC();
      v22 = v32;

      v21 = v30;
      v29 = 0;
      v24 = 0x8000000237C17C90;
      v25 = 0xD000000000000033;
      v26 = 0uLL;
      v27 = 0xE100000000000000;
      v28 = 49;
    }

    v36[0] = v23;
    v36[1] = v22;
    v36[2] = v25;
    v36[3] = v24;
    v37 = v26;
    v38 = v28;
    v39 = v27;
    v40 = v29;
    sub_2379E9068(v41, &v35, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB398(v36);
    OUTLINED_FUNCTION_1_76();
    sub_237B81EC0();
    sub_2379FC064(v36);
    sub_237C07E5C();
    (*(v34 + 8))(v15, v9);
    OUTLINED_FUNCTION_36_3();
    v33(v21, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLBoostedTreeClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v22[1] = v4;
  v23 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v22 - v13;
  v15 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  memcpy(v24, v6, sizeof(v24));
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v9 + 104))(v3, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLBoostedTreeClassifier.write(to:metadata:)();
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_73();
}

unint64_t MLBoostedTreeClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  v4 = MLBoostedTreeClassifier.ModelParameters.description.getter();
  v6 = v5;
  v7 = MLClassifierMetrics.description.getter();
  v9 = v8;
  sub_237B81AA0(v0 + *(v3 + 40), v1);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  sub_237B81EC0();
  v10 = MLClassifierMetrics.description.getter();
  v12 = v11;
  MEMORY[0x2383DC360](v4, v6);

  MEMORY[0x2383DC360](v7, v9);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v3 <= 1)
  {
    MEMORY[0x2383DC360](v10, v12);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD000000000000022;
}

id MLBoostedTreeClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLBoostedTreeClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237B819E4()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for AnyTreeClassifierModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237AE42C4(v5);
}

uint64_t sub_237B81AA0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

id sub_237B81AF8@<X0>(void *a1@<X8>)
{
  result = MLBoostedTreeClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B81B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_87();
  v7 = type metadata accessor for AnyTreeClassifierModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    v9 = v3 + *(a3 + 36);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_237B81C1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_87();
  result = type metadata accessor for AnyTreeClassifierModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v10 = type metadata accessor for MLClassifierMetrics(0);
    v11 = v4 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_237B81CE4(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLClassifierMetrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_237B81DB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B81E00(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237B7FE10(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237B81EC0()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237B81F14(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_29@<X0>(uint64_t a1@<X8>)
{

  return sub_237B81AA0(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_47_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 400) + *(v3 - 432);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_50_13()
{
  v2 = *(v0 - 296);

  return sub_237B7E76C(v2);
}

uint64_t OUTLINED_FUNCTION_59_9()
{
}

uint64_t OUTLINED_FUNCTION_60_12()
{
}

uint64_t OUTLINED_FUNCTION_61_8()
{

  return sub_237B81EC0();
}

uint64_t sub_237B82140(uint64_t a1)
{
  v2 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v48 = (v6 - v7);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = *(v4 + 16);
  v13 = v4 + 16;
  v12 = v14;
  OUTLINED_FUNCTION_119_0();
  v44 = v15;
  v16 = a1 + v15;
  v49 = v13 - 8;
  v43 = (v13 + 16);
  v17 = *(v13 + 56);
  v46 = 0x8000000237C1DAE0;
  v52 = MEMORY[0x277D84F90];
  v51 = xmmword_237C0B660;
  v47 = v10;
  v45 = v2;
  do
  {
    v12(v10, v16, v2);
    v18 = sub_237C059EC();
    v19 = CGImageSourceCreateWithURL(v18, 0);

    if (v19 && (v20 = CGImageSourceCopyPropertiesAtIndex(v19, 0, 0), v19, v20))
    {

      v12(v48, v10, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC0BF0();
        v52 = v40;
      }

      v22 = *(v52 + 16);
      v21 = *(v52 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_106(v21);
        sub_237BC0BF0();
        v52 = v41;
      }

      v23 = OUTLINED_FUNCTION_30_21();
      v24(v23);
      v25 = v52;
      *(v52 + 16) = v22 + 1;
      (*v43)(v25 + v44 + v22 * v17, v48, v2);
    }

    else
    {
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_237C08EDC();

      v53 = 0xD00000000000001BLL;
      v54 = v46;
      v26 = sub_237C05A9C();
      MEMORY[0x2383DC360](v26);

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      v27 = v12;
      v28 = v13;
      v29 = v17;
      v30 = v53;
      v31 = v54;
      v50 = sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
      v32 = swift_allocObject();
      OUTLINED_FUNCTION_34_18(v32);
      v33 = MEMORY[0x277D837D0];
      v34[7] = MEMORY[0x277D837D0];
      v34[4] = v30;
      v34[5] = v31;

      OUTLINED_FUNCTION_22_30();
      sub_237C0939C();

      sub_2379F5634();
      v35 = sub_237C08CFC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v36 = swift_allocObject();
      OUTLINED_FUNCTION_34_18(v36);
      *(v37 + 56) = v33;
      v36[4].n128_u64[0] = sub_237A8E8E4();
      v36[2].n128_u64[0] = v30;
      v36[2].n128_u64[1] = v31;
      v13 = v28;
      v12 = v27;
      v2 = v45;
      v10 = v47;
      v17 = v29;
      sub_237C0826C("%@\n", 3, 2, &dword_2379D3000, v35, v50, v36);

      v38 = OUTLINED_FUNCTION_30_21();
      v39(v38);
    }

    v16 += v17;
    --v11;
  }

  while (v11);
  return v52;
}

void sub_237B82504()
{
  OUTLINED_FUNCTION_74();
  v125 = v0;
  *&v138 = v3;
  v137 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_21();
  v11 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v131 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v128 = (v14 - v15);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v17);
  v141 = &v116 - v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v116 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v116 - v23;
  type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  sub_237B855E8(v138, v27 - v26, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_64;
    }

    v30 = v131;
    v31 = *(v131 + 32);
    v31(v21, v28, v11);
    sub_237C0821C();
    v32 = v125;
    sub_237A5D608();
    v125 = v32;
    if (v32)
    {
      (*(v5 + 8))(v9, v137);
      (*(v30 + 8))(v21, v11);
LABEL_64:
      OUTLINED_FUNCTION_73();
      return;
    }

    v38 = v33;
    v127 = v31;
    v1 = v9;
    v24 = v21;
  }

  else
  {
    v34 = v131;
    v35 = *(v131 + 32);
    v35(v24, v28, v11);
    sub_237C0821C();
    v36 = v125;
    sub_237A5C58C();
    v125 = v36;
    if (v36)
    {
      (*(v5 + 8))(v1, v137);
      (*(v34 + 8))(v24, v11);
      goto LABEL_64;
    }

    v127 = v35;
    v38 = v37;
  }

  (*(v5 + 8))(v1, v137);
  v136 = *(v131 + 8);
  v137 = v131 + 8;
  v136(v24, v11);
  OUTLINED_FUNCTION_5_33();
  v41 = v40 & v39;
  *&v138 = (v42 + 63) >> 6;
  v124 = v38;
  swift_bridgeObjectRetain_n();
  v43 = v38 + 64;
  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = v141;
  v123 = v38 + 64;
  do
  {
    while (1)
    {
      if (!v41)
      {
        while (1)
        {
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_67;
          }

          if (v47 >= v138)
          {
            goto LABEL_27;
          }

          v41 = *(v43 + 8 * v47);
          ++v44;
          if (v41)
          {
            v44 = v47;
            break;
          }
        }
      }

      v48 = *(*(v124 + 56) + ((v44 << 9) | (8 * __clz(__rbit64(v41)))));
      v49 = *(v48 + 16);
      v50 = *(v45 + 16);
      if (__OFADD__(v50, v49))
      {
        goto LABEL_70;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v50 + v49 > *(v45 + 24) >> 1)
      {
        sub_237BC0BF0();
        v45 = v51;
      }

      v41 &= v41 - 1;
      if (!*(v48 + 16))
      {
        break;
      }

      if ((*(v45 + 24) >> 1) - *(v45 + 16) < v49)
      {
        goto LABEL_71;
      }

      swift_arrayInitWithCopy();

      v46 = v141;
      v43 = v123;
      if (v49)
      {
        v52 = *(v45 + 16);
        v53 = __OFADD__(v52, v49);
        v54 = v52 + v49;
        if (v53)
        {
          goto LABEL_72;
        }

        *(v45 + 16) = v54;
      }
    }

    v46 = v141;
    v43 = v123;
  }

  while (!v49);
  __break(1u);
LABEL_27:
  v55 = v124;

  sub_237B82140(v45);

  sub_237B43384();
  v57 = v56;
  v58 = 0;
  v59 = 1 << *(v55 + 32);
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  else
  {
    v60 = -1;
  }

  v61 = v60 & *(v55 + 64);
  v62 = (v59 + 63) >> 6;
  v63 = v131;
  *&v138 = v131 + 16;
  v135 = v56 + 56;
  v126 = v131 + 32;
  v64 = MEMORY[0x277D84F98];
  v117 = v62;
LABEL_31:
  v122 = v64;
  if (v61)
  {
    v65 = v58;
LABEL_36:
    v121 = (v61 - 1) & v61;
    v120 = v65;
    v66 = __clz(__rbit64(v61)) | (v65 << 6);
    v67 = *(v124 + 56);
    v68 = (*(v124 + 48) + 16 * v66);
    v69 = v68[1];
    v118 = *v68;
    v70 = *(v67 + 8 * v66);
    v132 = *(v70 + 16);
    v119 = v69;

    v71 = 0;
    v129 = v70;
    v130 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v71 == v132)
      {

        v85 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139 = v85;
        sub_237B40B0C(v130, v118, v119, isUniquelyReferenced_nonNull_native);

        v64 = v139;
        v58 = v120;
        v62 = v117;
        v61 = v121;
        goto LABEL_31;
      }

      if (v71 >= *(v70 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_119_0();
      v134 = v72;
      v73 = *(v63 + 72);
      v74 = *(v63 + 16);
      v74(v46, v70 + v72 + v73 * v71++, v11);
      if (*(v57 + 16))
      {
        v133 = v71;
        sub_237B85440(&qword_27DE9C210, MEMORY[0x277CC9270]);
        v75 = sub_237C0861C();
        v76 = ~(-1 << *(v57 + 32));
        do
        {
          v77 = v75 & v76;
          if (((*(v135 + (((v75 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v75 & v76)) & 1) == 0)
          {
            v63 = v131;
            v46 = v141;
            v70 = v129;
            v71 = v133;
            goto LABEL_49;
          }

          v74(v2, *(v57 + 48) + v77 * v73, v11);
          sub_237B85440(&qword_27DE9C860, MEMORY[0x277CC9278]);
          v78 = sub_237C0867C();
          v136(v2, v11);
          v75 = v77 + 1;
        }

        while ((v78 & 1) == 0);
        v46 = v141;
        v127(v128, v141, v11);
        v79 = v130;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v79;
        v139 = v79;
        if ((v80 & 1) == 0)
        {
          sub_237AC8AF4(0, *(v79 + 16) + 1, 1);
          v81 = v139;
        }

        v63 = v131;
        v71 = v133;
        v83 = *(v81 + 16);
        v82 = *(v81 + 24);
        if (v83 >= v82 >> 1)
        {
          v84 = OUTLINED_FUNCTION_106(v82);
          sub_237AC8AF4(v84, v83 + 1, 1);
          v71 = v133;
          v81 = v139;
        }

        *(v81 + 16) = v83 + 1;
        v130 = v81;
        v127(v81 + v134 + v83 * v73, v128, v11);
        v70 = v129;
      }

      else
      {
LABEL_49:
        v136(v46, v11);
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
    v65 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v65 >= v62)
    {

      v87 = v125;
      v88 = sub_237B85484(v64);
      v125 = v87;
      v89 = v88 + 8;
      OUTLINED_FUNCTION_5_33();
      v92 = v91 & v90;
      v94 = (v93 + 63) >> 6;
      v136 = 0x8000000237C1A100;
      v137 = v95;

      v96 = 0;
      v138 = xmmword_237C0B660;
      if (!v92)
      {
        goto LABEL_53;
      }

      do
      {
LABEL_57:
        OUTLINED_FUNCTION_26_23();
        v99 = *v98;
        v100 = v98[1];
        v92 &= v92 - 1;
        v139 = 0;
        v140 = 0xE000000000000000;

        sub_237C08EDC();

        v139 = 0xD000000000000019;
        v140 = v136;
        MEMORY[0x2383DC360](v99, v100);

        MEMORY[0x2383DC360](11815, 0xE200000000000000);
        v102 = v139;
        v101 = v140;
        v142 = sub_237C08C3C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
        v103 = swift_allocObject();
        OUTLINED_FUNCTION_34_18(v103);
        v104 = MEMORY[0x277D837D0];
        v105[7] = MEMORY[0x277D837D0];
        v105[4] = v102;
        v105[5] = v101;

        OUTLINED_FUNCTION_22_30();
        sub_237C0939C();

        sub_2379F5634();
        v106 = sub_237C08CFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
        v107 = swift_allocObject();
        OUTLINED_FUNCTION_34_18(v107);
        *(v108 + 56) = v104;
        v107[4].n128_u64[0] = sub_237A8E8E4();
        v107[2].n128_u64[0] = v102;
        v107[2].n128_u64[1] = v101;
        sub_237C0826C("%@\n", 3, 2, &dword_2379D3000, v106, v142, v107);
      }

      while (v92);
LABEL_53:
      while (1)
      {
        v97 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_69;
        }

        if (v97 >= v94)
        {
          v109 = v137;

          if (*(v109 + 16))
          {

            v110 = 0xE000000000000000;
            v139 = 0;
            v140 = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C1CD60);
            v111 = sub_237B3B28C(v109);
            if (v112)
            {
              v110 = v112;
            }

            else
            {
              v111 = 0;
            }

            MEMORY[0x2383DC360](v111, v110);

            MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C1CD80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
            v113 = sub_237C085CC();
            MEMORY[0x2383DC360](v113);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            sub_2379E8AF0();
            v114 = swift_allocError();
            OUTLINED_FUNCTION_25_27(v114, v115);
          }

          else
          {
          }

          goto LABEL_64;
        }

        v92 = v89[v97];
        ++v96;
        if (v92)
        {
          v96 = v97;
          goto LABEL_57;
        }
      }
    }

    v61 = *(v123 + 8 * v65);
    ++v58;
    if (v61)
    {
      goto LABEL_36;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_237B830A8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v41 = v2;
  v51 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v50 = v7 - v6;
  v8 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v9 = sub_237BA2F3C();
  v10 = v9;
  v46 = *(v9 + 16);
  if (v46)
  {
    v11 = 0;
    v45 = v9 + 32;
    v49 = (v4 + 8);
    v44 = v1;
    v43 = v4;
    v42 = v9;
    while (v11 < *(v10 + 16))
    {
      v12 = (v45 + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v1 + 16);

      v48 = v13;
      v53 = v14;
      if (v15 && (v16 = sub_237ACAC78(v14, v13), (v17 & 1) != 0))
      {
        v18 = *(*(v1 + 56) + 8 * v16);
      }

      else
      {
        v18 = v8;
      }

      v19 = *(v18 + 16);
      if (v19)
      {
        v47 = v11;
        sub_237AC8A74();
        v20 = v8;
        OUTLINED_FUNCTION_119_0();
        v22 = v18 + v21;
        v52 = *(v4 + 72);
        v23 = *(v4 + 16);
        do
        {
          v23(v50, v22, v51);
          v24 = sub_237C05A9C();
          v26 = v25;
          (*v49)(v50, v51);
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          if (v28 >= v27 >> 1)
          {
            OUTLINED_FUNCTION_106(v27);
            sub_237AC8A74();
          }

          *(v20 + 16) = v28 + 1;
          v29 = v20 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
          v22 += v52;
          --v19;
        }

        while (v19);

        v1 = v44;
        v4 = v43;
        v8 = MEMORY[0x277D84F90];
        v10 = v42;
        v11 = v47;
      }

      else
      {

        v20 = v8;
      }

      v30 = *(v20 + 16);
      if (v30)
      {
        v31 = sub_237C0898C();
        *(v31 + 16) = v30;
        v32 = v30 - 1;
        for (i = 32; ; i += 16)
        {
          v34 = (v31 + i);
          *v34 = v53;
          v34[1] = v48;
          if (!v32)
          {
            break;
          }

          --v32;
        }
      }

      else
      {

        v31 = v8;
      }

      ++v11;
      sub_237A96708(v31);
      sub_237A96708(v20);
      if (v11 == v46)
      {

        v35 = v55;
        v36 = v54;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    *(inited + 72) = v38;
    v39 = sub_237AB66E4();
    *(inited + 48) = v35;
    *(inited + 80) = v39;
    *(inited + 88) = 0x7461506567616D69;
    *(inited + 128) = v38;
    *(inited + 136) = v39;
    *(inited + 96) = 0xE900000000000068;
    *(inited + 104) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v40 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v40, v41);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237B834F8()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v274 = v4;
  v273 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v272 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v268 = (&v266 - v11);
  v271 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v270 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v14);
  v275 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v276 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v266 = v17 - v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v20);
  v267 = &v266 - v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  v269 = &v266 - v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_31_21();
  v27 = type metadata accessor for MLHandPoseClassifier.DataSource(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  OUTLINED_FUNCTION_6_60();
  sub_237B855E8(v3, v31, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35_17();
      v65();
      sub_237C0821C();
      sub_237A5C58C();
      if (!v0)
      {
        v141 = v66;
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_34_7();
        v142();
        sub_237B830A8();

        OUTLINED_FUNCTION_15_39();
        v303 = v27;
        v304 = v141;
        OUTLINED_FUNCTION_5_62();
        OUTLINED_FUNCTION_7_47();
        v155 = OUTLINED_FUNCTION_36_4();
        sub_2379DBC9C(v155, v201);
        v202 = OUTLINED_FUNCTION_12_44();
        v203(v202);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_34_7();
      v67();
      v68 = OUTLINED_FUNCTION_12_44();
      v69(v68);
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_35_17();
      v61();
      sub_237C0821C();
      sub_237A5D608();
      if (!v0)
      {
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_34_7();
        v122();
        sub_237B830A8();

        v303 = v277;
        v304 = v278;
        v152 = OUTLINED_FUNCTION_37_0();
        sub_2379DBCF4(v152, v153);
        OUTLINED_FUNCTION_7_47();
        v154 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v154, v198);
        v199 = OUTLINED_FUNCTION_13_37();
        v200(v199);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_34_7();
      v62();
      v63 = OUTLINED_FUNCTION_13_37();
      v64(v63);
      goto LABEL_39;
    case 3u:
      sub_237A9A80C(v31);
      goto LABEL_12;
    case 4u:
      v47 = *(v31 + 8);
      v49 = *(v31 + 16);
      v48 = *(v31 + 24);
      v51 = *(v31 + 32);
      v50 = *(v31 + 40);
      v303 = *v31;
      v304 = v47;
      v277 = v303;
      LOBYTE(v278) = v47;
      v52 = OUTLINED_FUNCTION_58_0();
      sub_2379DBCF4(v52, v53);
      v54 = OUTLINED_FUNCTION_58_0();
      sub_2379DBCF4(v54, v55);
      sub_237B845E8(&v277, v49, v48, v51, v50);
      if (v0)
      {

        v56 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v56, v57);
        v58 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v58, v59);
        v60 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v60, v156);
        goto LABEL_39;
      }

      v84 = OUTLINED_FUNCTION_58_0();
      sub_2379DBC9C(v84, v85);
      sub_237B6C670(v86, v87, v88, v89, v90, v91, v92, v93, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      OUTLINED_FUNCTION_8_45();
      sub_237B6DAB4(v49, v48, v94, 0xE900000000000068, v95, v96, v97, v98, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

      if ((v304 & 1) == 0)
      {
        v107 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v107, v108);
        sub_237B6C588();
        v109 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v109, v110);
      }

      sub_237B6C670(v99, v100, v101, v102, v103, v104, v105, v106, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v51, v50, v111, 0xE500000000000000, v112, v113, v114, v115, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

      v116 = v303;
      if (v304)
      {
        v117 = v303;
        v118 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v118, v119);
        v120 = v116;
        v121 = 1;
      }

      else
      {
        v148 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v148, v149);
        sub_237B6C588();
        v150 = OUTLINED_FUNCTION_58_0();
        sub_2379DBC9C(v150, v151);
        v120 = OUTLINED_FUNCTION_85();
      }

      goto LABEL_37;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      (*(v272 + 8))(v31, v273);
LABEL_12:
      v70 = MEMORY[0x2383DDC00](0);
      if (!v70)
      {
        __break(1u);
        JUMPOUT(0x237B845CCLL);
      }

      v71 = v70;
      type metadata accessor for CMLTable();
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      type metadata accessor for _DataTable();
      swift_allocObject();
      v303 = sub_237B6C578(v72);
      v304 = 0;
      v73 = sub_237C08C1C();
      sub_237BABE74(0xD0000000000000A7, 0x8000000237C1DB00, v73);
      goto LABEL_38;
    case 6u:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
      v75 = (v31 + *(v74 + 48));
      v77 = *v75;
      v76 = v75[1];
      v78 = (v31 + *(v74 + 64));
      v80 = *v78;
      v79 = v78[1];
      v81 = v272;
      v82 = v268;
      v83 = v273;
      (*(v272 + 32))(v268, v31, v273);
      (*(v81 + 16))(v9, v82, v83);
      sub_237A70684(v9, 0, &v277);
      if (v0)
      {
        (*(v81 + 8))(v82, v83);

        goto LABEL_39;
      }

      OUTLINED_FUNCTION_15_39();
      v303 = v82;
      v304 = v9;
      OUTLINED_FUNCTION_5_62();
      sub_237B845E8(&v277, v77, v76, v80, v79);
      v157 = OUTLINED_FUNCTION_36_4();
      sub_2379DBC9C(v157, v158);
      sub_237B6C670(v159, v160, v161, v162, v163, v164, v165, v166, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      OUTLINED_FUNCTION_8_45();
      sub_237B6DAB4(v77, v76, v167, 0xE900000000000068, v168, v169, v170, v171, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

      if ((v304 & 1) == 0)
      {
        v180 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v180, v181);
        sub_237B6C588();
        v182 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v182, v183);
      }

      sub_237B6C670(v172, v173, v174, v175, v176, v177, v178, v179, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v80, v79, v184, 0xE500000000000000, v185, v186, v187, v188, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

      v189 = v303;
      v190 = v304;
      if (v304)
      {
        v191 = v303;
      }

      else
      {
        v192 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v192, v193);
        sub_237B6C588();
      }

      v194 = OUTLINED_FUNCTION_27_17();
      v195(v194);
      v120 = v189;
      v121 = v190;
LABEL_37:
      sub_2379DBC9C(v120, v121);
      goto LABEL_38;
    default:
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v34 = v33[12];
      v35 = (v31 + v33[16]);
      v37 = *v35;
      v36 = v35[1];
      v272 = v37;
      v273 = v36;
      v38 = v31 + v33[20];
      v39 = *(v38 + 8);
      v271 = *v38;
      v40 = v276;
      v41 = *(v276 + 32);
      v42 = v269;
      v43 = v275;
      v41(v269, v31, v275);
      v44 = v31 + v34;
      v45 = v267;
      v41(v267, v44, v43);
      (*(v40 + 16))(v1, v45, v43);
      LOBYTE(v277) = 1;
      *(&v277 + 1) = *v302;
      HIDWORD(v277) = *&v302[3];
      v278 = 44;
      v279 = 0xE100000000000000;
      v280 = 0;
      v281 = 0xE000000000000000;
      v282 = 92;
      v283 = 0xE100000000000000;
      LOBYTE(v284) = 1;
      *(&v284 + 1) = *v301;
      HIDWORD(v284) = *&v301[3];
      v285 = 34;
      v286 = 0xE100000000000000;
      v287 = 1;
      *v288 = *v300;
      *&v288[3] = *&v300[3];
      v289 = &unk_284ABEBF0;
      v290 = 10;
      v291 = 0xE100000000000000;
      v292 = 0;
      v293 = 0;
      v294 = 1;
      *v295 = *v299;
      *&v295[3] = *&v299[3];
      v296 = 0;
      MLDataTable.init(contentsOf:options:)(v1, &v277, &v297);
      if (v0)
      {
        v46 = *(v40 + 8);
        v46(v45, v43);

        v46(v42, v43);
      }

      else
      {
        v305 = v39;
        v303 = v297;
        v304 = v298;
        v123 = v272;
        v124 = v273;
        MLDataTable.subscript.getter();
        OUTLINED_FUNCTION_15_39();
        if ((v43 & 1) != 0 || (v125 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v125, v126), sub_237A60248(&v297), v127 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v127, v128), v297 != 2))
        {

          v143 = OUTLINED_FUNCTION_36_4();
          sub_2379DBC9C(v143, v144);
          v277 = 0;
          v278 = 0xE000000000000000;
          sub_237C08EDC();

          v277 = 0x206E6D756C6F43;
          v278 = 0xE700000000000000;
          MEMORY[0x2383DC360](v123, v124);

          MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
          sub_2379E8AF0();
          v145 = swift_allocError();
          OUTLINED_FUNCTION_25_27(v145, v146);
          v147 = *(v40 + 8);
          v147(v45, v43);
          sub_2379DBC9C(v303, v304);
          v147(v269, v43);
        }

        else
        {
          v129 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v129, v130);
          sub_237A607E0(0, &v277);
          v131 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v131, v132);
          v133 = v277;
          v134 = v278;
          v270 = &v303;
          if (v279 != 2)
          {
            sub_2379E8CE8(v277, v278, v279);
            v133 = 0;
            v134 = 0xE000000000000000;
          }

          v277 = v133;
          v278 = v134;
          sub_237C0883C();
          sub_237C059BC();

          v135 = [objc_opt_self() defaultManager];
          sub_237C05A9C();
          v136 = sub_237C086BC();

          v137 = [v135 fileExistsAtPath_];

          if (v137)
          {
            v138 = v269;
            v139 = v305;
            v140 = v272;
          }

          else
          {
            v204 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v204, v205);
            v206 = OUTLINED_FUNCTION_88();
            v208 = sub_2379DFC10(v206, v207);
            MEMORY[0x28223BE20](v208);
            *(&v266 - 2) = v269;
            v209 = sub_2379E1FAC(sub_237B856CC, (&v266 - 4), v208);

            v277 = v209;
            MEMORY[0x28223BE20](v210);
            *(&v266 - 2) = &v277;
            v211 = sub_237BBDC94(sub_2379F5678);
            v213 = v212;

            sub_237B6C670(v214, v215, v216, v217, v218, v219, v220, v221, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
            v277 = v211;
            LOBYTE(v278) = v213 & 1;
            v140 = v272;
            sub_237B6CF70(&v277, v272, v124);
            sub_2379DBC9C(v277, v278);
            if ((v304 & 1) == 0)
            {
              v222 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v222, v223);
              sub_237B6C588();
              v224 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v224, v225);
            }

            v138 = v269;
            v139 = v305;
          }

          OUTLINED_FUNCTION_5_62();
          sub_237B845E8(&v277, v140, v124, v271, v139);
          v226 = OUTLINED_FUNCTION_36_4();
          sub_2379DBC9C(v226, v227);
          sub_237B6C670(v228, v229, v230, v231, v232, v233, v234, v235, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
          OUTLINED_FUNCTION_8_45();
          sub_237B6DAB4(v140, v124, v236, 0xE900000000000068, v237, v238, v239, v240, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

          if ((v304 & 1) == 0)
          {
            v249 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v249, v250);
            sub_237B6C588();
            v251 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v251, v252);
          }

          sub_237B6C670(v241, v242, v243, v244, v245, v246, v247, v248, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
          OUTLINED_FUNCTION_19_17();
          sub_237B6DAB4(v271, v139, v253, 0xE500000000000000, v254, v255, v256, v257, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);

          v258 = v303;
          v259 = v304;
          if (v304)
          {
            v260 = v303;
          }

          else
          {
            v261 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v261, v262);
            sub_237B6C588();
          }

          sub_2379DBC9C(v270, 0);
          v263 = *(v40 + 8);
          v264 = OUTLINED_FUNCTION_32_17(&v299[4]);
          v263(v264);
          v265 = OUTLINED_FUNCTION_32_17(&v300[5]);
          v263(v265);
          sub_2379DBC9C(v258, v259);
          (v263)(v138, v43);
LABEL_38:
          v196 = v304;
          v197 = v274;
          *v274 = v303;
          *(v197 + 8) = v196;
        }
      }

LABEL_39:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B845E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  OUTLINED_FUNCTION_33_21();

  sub_2379F2B84();
  if (!v5)
  {
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_33_21();
    v11 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
    *(v21 + 32) = a4;
    *(v21 + 40) = a5;

    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    v22 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
    *(v32 + 32) = a2;
    *(v32 + 40) = a3;
    OUTLINED_FUNCTION_33_21();

    OUTLINED_FUNCTION_42_5();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_33_21();
    v33 = swift_initStackObject();
    OUTLINED_FUNCTION_21_32(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
    *(v43 + 32) = a4;
    *(v43 + 40) = a5;

    OUTLINED_FUNCTION_42_5();
  }

  swift_setDeallocating();
  return sub_237B9082C();
}

uint64_t sub_237B84798@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_237C05ADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05A2C();
  v7 = sub_237C05A9C();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_237B84894()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v123 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v114 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D528, &qword_237C13D08);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v114 - v11;
  sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v127 = v12;
  v128 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v126 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v124 = v17;
  v125 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v114 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  MEMORY[0x28223BE20](v20 - 8);
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v120 = v22;
  v121 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_6_60();
  sub_237B855E8(v3, v29, v30);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_237B834F8();
    v122 = v0;
    if (v0)
    {
      sub_237A9A80C(v29);
    }

    else
    {
      OUTLINED_FUNCTION_45_3();
      v59 = v130.n128_u64[0];
      LODWORD(v60) = v130.n128_u8[8];
      sub_2379DF938(v130.n128_i8[8], &v134);
      v61 = OUTLINED_FUNCTION_37_0();
      sub_2379DFAE0(v61, v62, v63);
      v64 = OUTLINED_FUNCTION_37_0();
      sub_2379DBC9C(v64, v65);
      v66 = sub_2379DFC10(v130.n128_i64[0], v130.n128_i8[8]);
      sub_2379DF938(v60, &v130);
      v67 = sub_2379DFC10(v130.n128_i64[0], v130.n128_i8[8]);
      v68 = *(v67 + 16);
      v118 = v59;
      v119 = v29;
      v117 = v66;
      LODWORD(v127) = v60;
      if (v68)
      {
        v130.n128_u64[0] = MEMORY[0x277D84F90];
        v69 = v67;
        sub_237AC8AF4(0, v68, 0);
        v70 = v130.n128_u64[0];
        v71 = v69 + 40;
        do
        {

          sub_237C059BC();

          v130.n128_u64[0] = v70;
          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          v74 = v70;
          if (v73 >= v72 >> 1)
          {
            v76 = OUTLINED_FUNCTION_106(v72);
            sub_237AC8AF4(v76, v73 + 1, 1);
            v74 = v130.n128_u64[0];
          }

          *(v74 + 16) = v73 + 1;
          OUTLINED_FUNCTION_119_0();
          (*(v5 + 32))(v74 + v75 + *(v5 + 72) * v73, v9, v123);
          v71 += 16;
          --v68;
          v70 = v74;
        }

        while (v68);
        v114 = v74;

        v59 = v118;
        v29 = v119;
        LOBYTE(v60) = v127;
        v66 = v117;
      }

      else
      {

        v114 = MEMORY[0x277D84F90];
      }

      v116 = *(v66 + 16);
      if (v116)
      {
        v77 = 0;
        v115 = (v66 + 32);
        v128 = MEMORY[0x277D84F98];
        v126 = MEMORY[0x277D84F98];
        while (v77 < *(v66 + 16))
        {
          v129 = v77;
          v78 = &v115[16 * v77];
          v80 = *v78;
          v79 = v78[1];
          v134 = v59;
          v135 = v60;

          OUTLINED_FUNCTION_45_3();
          MLDataTable.subscript.getter();
          v81 = v132;
          v137 = v80;
          if (v133)
          {
            v130.n128_u64[0] = v132;
            v82 = v79;

            sub_2379DBCF4(v81, 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            v83 = sub_237C0925C();
            if (v83)
            {
              v84 = v83;
              sub_2379DBC9C(v81, 1);
            }

            else
            {
              v84 = swift_allocError();
              *v90 = v81;
            }

            v89 = 1;
            sub_2379DBC9C(v81, 1);
          }

          else
          {
            type metadata accessor for _UntypedColumn();
            v130.n128_u64[0] = v80;
            v130.n128_u64[1] = v79;
            v131 = 2;
            swift_bridgeObjectRetain_n();
            v85 = v122;
            v86 = sub_237A60280(4, v81, &v130);
            if (v85)
            {
              sub_2379E8CE8(v130.n128_u64[0], v130.n128_u64[1], v131);
              v87 = OUTLINED_FUNCTION_88();
              sub_2379DBC9C(v87, v88);

              v82 = v79;
              v89 = 1;
              v84 = v85;
              v122 = 0;
            }

            else
            {
              v84 = v86;
              v122 = 0;
              sub_2379E8CE8(v130.n128_u64[0], v130.n128_u64[1], v131);
              v91 = OUTLINED_FUNCTION_88();
              sub_2379DBC9C(v91, v92);

              v82 = v79;
              v89 = 0;
            }
          }

          v93 = v129;
          v130.n128_u64[0] = v59;
          v130.n128_u8[8] = v127;
          v132 = v84;
          v133 = v89;
          MLDataTable.subscript.getter(&v132, &v134);
          sub_2379DBC9C(v132, v133);
          v94 = v134;
          v95 = v135;
          v130.n128_u64[0] = v134;
          v130.n128_u8[8] = v135;
          v96 = MLDataTable.size.getter();
          v97 = v128;
          swift_isUniquelyReferenced_nonNull_native();
          v134 = v97;
          sub_237B40A38(v96, v137, v82);
          v128 = v134;
          v125 = v94;
          LODWORD(v124) = v95;
          sub_2379DF938(v95, &v134);
          v98 = OUTLINED_FUNCTION_37_0();
          sub_2379DFAE0(v98, v99, v100);
          v101 = OUTLINED_FUNCTION_37_0();
          sub_2379DBC9C(v101, v102);
          v103 = sub_2379DFC10(v130.n128_i64[0], v130.n128_i8[8]);
          v104 = *(v103 + 16);
          v105 = v82;
          if (v104)
          {
            v121 = v82;
            v130.n128_u64[0] = MEMORY[0x277D84F90];
            sub_237AC8AF4(0, v104, 0);
            v60 = v130.n128_u64[0];
            v120 = v103;
            v106 = v103 + 40;
            v107 = v123;
            do
            {

              sub_237C059BC();

              v130.n128_u64[0] = v60;
              v109 = *(v60 + 16);
              v108 = *(v60 + 24);
              if (v109 >= v108 >> 1)
              {
                v111 = OUTLINED_FUNCTION_106(v108);
                sub_237AC8AF4(v111, v109 + 1, 1);
                v107 = v123;
                v60 = v130.n128_u64[0];
              }

              *(v60 + 16) = v109 + 1;
              OUTLINED_FUNCTION_119_0();
              (*(v5 + 32))(v60 + v110 + *(v5 + 72) * v109, v1, v107);
              v106 += 16;
              --v104;
            }

            while (v104);

            v93 = v129;
            v105 = v121;
          }

          else
          {

            v60 = MEMORY[0x277D84F90];
          }

          v77 = (v93 + 1);
          v112 = v126;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130.n128_u64[0] = v112;
          sub_237B40B0C(v60, v137, v105, isUniquelyReferenced_nonNull_native);
          sub_2379DBC9C(v125, v124);

          v126 = v130.n128_u64[0];
          v66 = v117;
          v59 = v118;
          v29 = v119;
          LOBYTE(v60) = v127;
          if (v77 == v116)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_44;
      }

LABEL_41:

      sub_2379DBC9C(v59, v60);
      sub_237A9A80C(v29);
    }

LABEL_42:
    OUTLINED_FUNCTION_73();
    return;
  }

  v31 = sub_237A9A80C(v29);
  MLHandPoseClassifier.DataSource.extractKeypoints()(v31, v32, v33, v34, v35, v36, v37, v38, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125);
  if (v0)
  {
    goto LABEL_42;
  }

  v122 = 0;
  OUTLINED_FUNCTION_45_3();
  v136 = v25;
  sub_237C05DEC();
  v130.n128_u64[0] = 0;
  v130.n128_u64[1] = 0xE000000000000000;
  sub_237B85648();
  v39 = v125;
  sub_237C05EAC();
  v124[1](v19, v39);
  v40 = 0;
  v41 = sub_237B43058() + 56;
  OUTLINED_FUNCTION_5_33();
  v44 = v43 & v42;
  v46 = (v45 + 63) >> 6;
  v124 = (v128 + 8);
  v125 = v47;
  v48 = MEMORY[0x277D84F98];
  if ((v43 & v42) == 0)
  {
    goto LABEL_5;
  }

  do
  {
    v128 = v48;
LABEL_9:
    v44 &= v44 - 1;
    OUTLINED_FUNCTION_26_23();
    v52 = *v50;
    v51 = v50[1];
    MEMORY[0x28223BE20](v53);
    *(&v114 - 2) = v52;
    *(&v114 - 1) = v51;

    v54 = v126;
    OUTLINED_FUNCTION_45_3();
    v55 = v122;
    sub_237C05D6C();
    v122 = v55;
    sub_237C05D2C();
    sub_237B431E0();
    v57 = *(v56 + 16);

    v58 = v128;
    swift_isUniquelyReferenced_nonNull_native();
    v130.n128_u64[0] = v58;
    sub_237B40A38(v57, v52, v51);

    (*v124)(v54, v127);
    v48 = v130.n128_u64[0];
  }

  while (v44);
LABEL_5:
  while (1)
  {
    v49 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v49 >= v46)
    {
      (*(v120 + 8))(v136, v121);

      goto LABEL_42;
    }

    v44 = *(v41 + 8 * v49);
    ++v40;
    if (v44)
    {
      v128 = v48;
      v40 = v49;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_237B853E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  if (*a1 == a2 && v5 == a3)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C() & 1;
  }
}

uint64_t sub_237B85440(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t *sub_237B85484(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_237B42360(v8, v4, v2);
      MEMORY[0x2383DD950](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_237B468E8(0, v4, v5);
  v6 = sub_237B42274(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_237B855E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_237B85648()
{
  result = qword_27DE9B910;
  if (!qword_27DE9B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ACA0, &unk_237C0E0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B910);
  }

  return result;
}

id OUTLINED_FUNCTION_5_62()
{
  *(v2 - 296) = v0;
  *(v2 - 288) = v1;

  return sub_2379DBCF4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_7_47()
{

  return sub_237B845E8(v0 - 296, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
}

__n128 OUTLINED_FUNCTION_21_32(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_27(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_34_18(__n128 *a1)
{
  result = *(v1 - 128);
  a1[1] = result;
  return result;
}

uint64_t sub_237B858AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237B8598C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t _s20PersistentParametersVMa_5(uint64_t a1)
{
  result = qword_27DE9D7E0;
  if (!qword_27DE9D7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B85AA0(uint64_t a1)
{
  sub_2379FCE48(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MLImageClassifier.FeatureExtractorType(319);
      if (v3 <= 0x3F)
      {
        sub_237B85B6C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_237B85B6C()
{
  if (!qword_27DE9D7F0)
  {
    v0 = sub_237C08D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9D7F0);
    }
  }
}

void sub_237B85BBC()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v27 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v26 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = _s20PersistentParametersVMa_5(0);
  sub_237B88FAC(v0 + v17[5], v16, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v18 = *(v0 + v17[8]);
  v19 = *(v0 + v17[9]);
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v0 + v20, v8, v21);
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *v2 = v18;
  *(v2 + 8) = v19;
  sub_237B88FAC(v16, v13, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v29 = v9;
  __swift_allocate_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_13_38();
  sub_237B8900C(v13, v22, v23);
  sub_2379DAE54(v28, v2 + 16);
  v24 = v26;
  sub_237B88FAC(v8, v26, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v29 = v27;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  sub_237B8900C(v24, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  sub_237B8906C(v8, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  sub_237B8906C(v16, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  sub_2379DAE54(v28, v2 + 48);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B85DF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = _s20PersistentParametersVMa_5(0);
  v12 = v11[7];
  *(a3 + v12) = 1;
  *a3 = a1;
  result = sub_2379F6D68((a2 + 2), &v17);
  if (v18)
  {
    sub_2379DAD24(&v17, &v19);
    type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    swift_dynamicCast();
    MLImageClassifier.ModelParameters.algorithm.getter(v10);
    OUTLINED_FUNCTION_14_34();
    sub_237B8900C(v10, a3 + v14, v15);
    *(a3 + v12) = 0;
    v16 = a2[1];
    *(a3 + v11[8]) = *a2;
    result = sub_237AA27EC(a2);
    *(a3 + v11[9]) = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B85F14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v169[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D7F8, &qword_237C14C28);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v158 = &v133 - v8;
  v9 = OUTLINED_FUNCTION_41_0();
  v159 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v157 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D800, &unk_237C14C30);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v161 = &v133 - v15;
  v16 = OUTLINED_FUNCTION_41_0();
  v160 = type metadata accessor for MLImageClassifier.FeatureExtractorType(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v163 = v19 - v18;
  OUTLINED_FUNCTION_41_0();
  v20 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v165 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v27);
  v29 = &v133 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_18();
  v31 = _s20PersistentParametersVMa_5(0);
  v32 = *(v31 + 28);
  v162 = a2;
  *(a2 + v32) = 1;
  v33 = a1;
  sub_237C05A2C();
  v34 = v164;
  v35 = sub_237C05B1C();
  if (v34)
  {
    v37 = *(v165 + 8);
    v37(v33, v20);
    return (v37)(v3, v20);
  }

  v154 = v29;
  v151 = v32;
  v149 = v25;
  v152 = v31;
  v153 = v2;
  v150 = 0;
  v164 = a1;
  v39 = v165;
  v40 = v165 + 8;
  v41 = *(v165 + 8);
  v42 = v35;
  v43 = v20;
  v44 = v36;
  v41(v3, v43);
  v45 = objc_opt_self();
  v46 = sub_237C05B6C();
  *&v167 = 0;
  v47 = [v45 propertyListWithData:v46 options:0 format:0 error:&v167];

  v48 = v167;
  if (!v47)
  {
    v64 = v48;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v42, v44);
    return (v41)(v164, v43);
  }

  v155 = v42;
  v156 = v44;
  v49 = v43;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v169, &v167);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  v51 = OUTLINED_FUNCTION_10_43();
  if ((OUTLINED_FUNCTION_49_10(v51, v52, v53) & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v65, 0xD000000000000037);
    sub_2379E86D4(v155, v156);
    v41(v164, v49);
    return __swift_destroy_boxed_opaque_existential_1(v169);
  }

  v148 = v40;
  v54 = v166;
  sub_237AC9A74(v166, &v167, 0x73656C6966, 0xE500000000000000);
  v55 = v49;
  if (!v168)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v56 = v166;
  sub_237AC9A74(v54, &v167, 0xD000000000000014, 0x8000000237C17EA0);
  if (!v168)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  v147 = v166;
  sub_237AC9A74(v54, &v167, 0x726574695F78616DLL, 0xEE00736E6F697461);
  if (!v168)
  {
LABEL_17:

LABEL_18:

    v61 = &qword_27DE9A998;
    v62 = &unk_237C0C100;
    v63 = &v167;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_10_43();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v143 = v166;
  sub_237AC9A74(v54, &v167, 0xD000000000000011, 0x8000000237C1AF40);
  if (!v168)
  {
    goto LABEL_17;
  }

  v57 = OUTLINED_FUNCTION_10_43();
  if ((OUTLINED_FUNCTION_49_10(v57, v58, v59) & 1) == 0)
  {
    goto LABEL_20;
  }

  v60 = v161;
  sub_237B86C20();
  if (__swift_getEnumTagSinglePayload(v60, 1, v160) == 1)
  {

    v61 = &qword_27DE9D800;
    v62 = &unk_237C14C30;
    v63 = v60;
LABEL_19:
    sub_2379D9054(v63, v61, v62);
LABEL_22:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v66, 0xD000000000000034);
    sub_2379E86D4(v155, v156);
    v41(v164, v55);
    return __swift_destroy_boxed_opaque_existential_1(v169);
  }

  v160 = v55;
  v135 = v54;
  OUTLINED_FUNCTION_14_34();
  v67 = v60;
  v68 = v163;
  sub_237B8900C(v67, v163, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  v70 = sub_237C0910C();
  v71 = v56;
  v72 = v70;
  v73 = 0;
  v142 = v71;
  v134 = v71 + 64;
  OUTLINED_FUNCTION_5_33();
  v77 = (v76 + 63) >> 6;
  v161 = (v39 + 32);
  v139 = v78 + 8;
  v138 = v78;
  v137 = v50;
  v136 = v77;
  if ((v75 & v74) != 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_15_26();
    goto LABEL_31;
  }

LABEL_26:
  v81 = v73;
  while (1)
  {
    v73 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      goto LABEL_56;
    }

    if (v73 >= v77)
    {
      break;
    }

    ++v81;
    if (*(v134 + 8 * v73))
    {
      OUTLINED_FUNCTION_8_26();
      v80 = v83 & v82;
LABEL_31:
      v84 = v79 | (v73 << 6);
      v144 = v80;
      v85 = *(v142 + 56);
      v86 = (*(v142 + 48) + 16 * v84);
      v87 = v86[1];
      v145 = *v86;
      v146 = v84;
      v88 = *(v85 + 8 * v84);
      v89 = *(v88 + 16);
      if (v89)
      {
        v141 = v73;
        v90 = v89;
        *&v167 = MEMORY[0x277D84F90];
        v140 = v87;

        sub_237AC8AF4(0, v90, 0);
        v91 = 0;
        v92 = v167;
        v93 = v88 + 40;
        v94 = v154;
        while (v91 < *(v88 + 16))
        {
          v95 = v88;

          sub_237C059BC();

          v96 = v92;
          *&v167 = v92;
          v98 = *(v92 + 16);
          v97 = *(v92 + 24);
          if (v98 >= v97 >> 1)
          {
            sub_237AC8AF4(v97 > 1, v98 + 1, 1);
            v96 = v167;
          }

          ++v91;
          *(v96 + 16) = v98 + 1;
          OUTLINED_FUNCTION_119_0();
          v92 = v99;
          (*(v101 + 32))(v99 + v100 + *(v101 + 72) * v98, v94, v160);
          v93 += 16;
          v88 = v95;
          if (v90 == v91)
          {

            v68 = v163;
            v72 = v138;
            v73 = v141;
            v77 = v136;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v92 = MEMORY[0x277D84F90];
LABEL_39:
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_21_33(v102);
      v104 = (v72[6] + 16 * v103);
      *v104 = v145;
      v104[1] = v105;
      *(v72[7] + 8 * v103) = v92;
      v106 = v72[2];
      v107 = __OFADD__(v106, 1);
      v108 = v106 + 1;
      if (v107)
      {
LABEL_57:
        __break(1u);
      }

      v72[2] = v108;
      if (v144)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }
  }

  v109 = v162;
  *v162 = v72;
  v110 = v152;
  *(v109 + *(v152 + 32)) = v143;
  v111 = *(v110 + 24);
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v68, v109 + v111, v112);
  *(v109 + *(v110 + 36)) = v147;
  sub_237AC9A74(v135, &v167, 0x6966697373616C63, 0xEF657079745F7265);
  if (v168)
  {
    v113 = OUTLINED_FUNCTION_10_43();
    v116 = OUTLINED_FUNCTION_49_10(v113, v114, v115);
    v117 = v160;
    if (v116)
    {
      sub_237B87138(v166, &v167);
    }

    OUTLINED_FUNCTION_29_17();
  }

  else
  {
    sub_2379D9054(&v167, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_29_17();
    v117 = v160;
  }

  *(v119 + v118) = 0;
  sub_237C05A2C();
  sub_237AC9A74(v135, &v167, 0x69746164696C6176, 0xEA00000000006E6FLL);

  if (!v168)
  {
    sub_2379E86D4(v155, v156);
    v124 = OUTLINED_FUNCTION_11_45();
    (v41)(v124);
    v125 = OUTLINED_FUNCTION_20_31();
    (v41)(v125);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v169);
    sub_2379D9054(&v167, &qword_27DE9A998, &unk_237C0C100);
LABEL_53:
    OUTLINED_FUNCTION_47_17();
    return swift_storeEnumTagMultiPayload();
  }

  if ((OUTLINED_FUNCTION_49_10(&v166, &v167, MEMORY[0x277D84F70] + 8) & 1) == 0)
  {
    sub_2379E86D4(v155, v156);
    v126 = OUTLINED_FUNCTION_11_45();
    (v41)(v126);
    v127 = OUTLINED_FUNCTION_20_31();
    (v41)(v127);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v169);
    goto LABEL_53;
  }

  (*(v165 + 16))(v149, v153, v117);
  v120 = v158;
  sub_237B8722C();
  if (__swift_getEnumTagSinglePayload(v120, 1, v159) == 1)
  {
    sub_2379D9054(v120, &qword_27DE9D7F8, &qword_237C14C28);
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v121, 0xD000000000000037);
    sub_2379E86D4(v155, v156);
    v122 = OUTLINED_FUNCTION_11_45();
    (v41)(v122);
    v123 = OUTLINED_FUNCTION_20_31();
    (v41)(v123);
    sub_237B8906C(v163, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    __swift_destroy_boxed_opaque_existential_1(v169);

    return sub_237B8906C(v162 + v111, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  }

  else
  {
    sub_2379E86D4(v155, v156);
    v128 = OUTLINED_FUNCTION_11_45();
    (v41)(v128);
    v129 = OUTLINED_FUNCTION_20_31();
    (v41)(v129);
    OUTLINED_FUNCTION_7_48();
    __swift_destroy_boxed_opaque_existential_1(v169);
    v130 = v157;
    sub_237B8900C(v120, v157, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    OUTLINED_FUNCTION_47_17();
    return sub_237B8900C(v130, v132 + v131, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  }
}

void sub_237B86C20()
{
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_18();
  v17 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

  v25 = OUTLINED_FUNCTION_19_22();
  v27 = sub_237ACAC78(v25, v26);
  if ((v28 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v27, &v54);
  OUTLINED_FUNCTION_24_30();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_27;
  }

  v49 = v24;
  v50 = v5;
  v30 = v52;
  v29 = v53;
  v31 = v52 == 0x697270656E656373 && v53 == 0xEA0000000000746ELL;
  if (v31 || (OUTLINED_FUNCTION_38_0(0x697270656E656373, 0xEA0000000000746ELL) & 1) != 0)
  {

    sub_237AC9A74(v3, &v54, 0x6E6F697369766572, 0xE800000000000000);

    v5 = v50;
    if (v55)
    {
      OUTLINED_FUNCTION_24_30();
      v32 = OUTLINED_FUNCTION_26_3();
      v33 = v52;
      if (!v32)
      {
        v33 = 0;
      }

      v34 = v32 ^ 1;
    }

    else
    {
      sub_2379D9054(&v54, &qword_27DE9A998, &unk_237C0C100);
      v33 = 0;
      v34 = 1;
    }

    *v21 = v33;
    v21[8] = v34;
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  if (v30 == 0x6D6F74737563 && v29 == 0xE600000000000000)
  {
  }

  else
  {
    v38 = OUTLINED_FUNCTION_38_0(0x6D6F74737563, 0xE600000000000000);

    if ((v38 & 1) == 0)
    {

LABEL_31:
      v36 = 1;
      v5 = v50;
      goto LABEL_29;
    }
  }

  sub_237AC9A74(v3, &v54, 0x61705F6C65646F6DLL, 0xEA00000000006874);
  if (!v55)
  {

    sub_2379D9054(&v54, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_24_30();
  v39 = OUTLINED_FUNCTION_26_3();
  v5 = v50;
  if ((v39 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_237C05AAC();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_2379D9054(v9, &qword_27DE9AA18, &qword_237C0B710);
LABEL_28:
    v36 = 1;
    goto LABEL_29;
  }

  v40 = v51;
  v41 = *(v51 + 32);
  v41(v1, v9, v10);
  (*(v40 + 16))(v15, v1, v10);
  sub_237AC9A74(v3, &v54, 0x74757074756FLL, 0xE600000000000000);

  v42 = OUTLINED_FUNCTION_37_14();
  v43(v42);
  if (v55)
  {
    OUTLINED_FUNCTION_24_30();
    v44 = OUTLINED_FUNCTION_26_3();
    if (v44)
    {
      v45 = v52;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v53;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    sub_2379D9054(&v54, &qword_27DE9A998, &unk_237C0C100);
    v45 = 0;
    v46 = 0;
  }

  v47 = &v0[*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20)];
  v41(v0, v15, v10);
  *v47 = v45;
  *(v47 + 1) = v46;
  swift_storeEnumTagMultiPayload();
  v21 = v0;
  v5 = v50;
LABEL_15:
  v35 = v49;
  sub_237B8900C(v21, v49, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  sub_237B8900C(v35, v5, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v36 = 0;
LABEL_29:
  __swift_storeEnumTagSinglePayload(v5, v36, 1, v17);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B87138@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = OUTLINED_FUNCTION_19_22(), v6 = sub_237ACAC78(v4, v5), (v7 & 1) != 0))
  {
    sub_2379FED88(*(a1 + 56) + 32 * v6, v14);

    result = OUTLINED_FUNCTION_26_3();
    if (result)
    {
      if (v12 == 0xD000000000000011 && 0x8000000237C1DBB0 == v13)
      {

        v11 = 0;
        goto LABEL_12;
      }

      v10 = sub_237C0929C();

      v11 = 0;
      if (v10)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

  v11 = 1;
LABEL_12:
  *a2 = v11;
  return result;
}

void sub_237B8722C()
{
  OUTLINED_FUNCTION_153();
  v55 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D808, &qword_237C14C40);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = OUTLINED_FUNCTION_19_22();
  sub_237AC9A74(v2, v28, v26, v27);
  if (!v61)
  {
    sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_30();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v53 = v4;
  v54 = v21;
  v30 = v56;
  v29 = v57;
  v31 = v56 == 1701736302 && v57 == 0xE400000000000000;
  if (!v31 && (OUTLINED_FUNCTION_38_0(1701736302, 0xE400000000000000) & 1) == 0)
  {
    v38 = v30 == 0x756F735F61746164 && v29 == 0xEB00000000656372;
    if (v38 || (OUTLINED_FUNCTION_38_0(0x756F735F61746164, 0xEB00000000656372) & 1) != 0)
    {

      OUTLINED_FUNCTION_30_22();

      v4 = v53;
      v21 = v54;
      if (!v61)
      {
        v40 = OUTLINED_FUNCTION_9_4();
        v41(v40);
        sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
        goto LABEL_14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      OUTLINED_FUNCTION_24_30();
      if (OUTLINED_FUNCTION_26_3())
      {
        v39 = v55;
        (*(v7 + 16))(v11, v55, v5);
        sub_237B88960();
        (*(v7 + 8))(v39, v5);
        if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
        {
          sub_2379D9054(v15, &qword_27DE9D808, &qword_237C14C40);
          v35 = 1;
          v21 = v54;
          goto LABEL_15;
        }

        sub_237B8900C(v15, v20, type metadata accessor for MLImageClassifier.DataSource);
        v48 = OUTLINED_FUNCTION_37_14();
        sub_237B8900C(v48, v49, type metadata accessor for MLImageClassifier.DataSource);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v30 == 0x74696C7073 && v29 == 0xE500000000000000)
    {
    }

    else
    {
      v43 = OUTLINED_FUNCTION_38_0(0x74696C7073, 0xE500000000000000);

      if ((v43 & 1) == 0)
      {

        v4 = v53;
        v21 = v54;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_30_22();

    v21 = v54;
    if (!v61)
    {
      v50 = OUTLINED_FUNCTION_9_4();
      v51(v50);
      sub_2379D9054(&v58, &qword_27DE9A998, &unk_237C0C100);
      v35 = 1;
      v4 = v53;
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
    OUTLINED_FUNCTION_24_30();
    v44 = OUTLINED_FUNCTION_26_3();
    v4 = v53;
    if (v44)
    {
      sub_237A283AC(v56, &v58);
      v45 = OUTLINED_FUNCTION_9_4();
      v46(v45);
      if ((v60 & 1) == 0)
      {
        v47 = v59;
        *v25 = v58;
        *(v25 + 16) = v47;
        *(v25 + 17) = HIBYTE(v47) & 1;
        goto LABEL_10;
      }

LABEL_14:
      v35 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v36 = OUTLINED_FUNCTION_9_4();
    v37(v36);
    goto LABEL_14;
  }

  v32 = OUTLINED_FUNCTION_9_4();
  v33(v32);
  v4 = v53;
LABEL_9:
  v21 = v54;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_13_38();
  sub_237B8900C(v25, v4, v34);
  v35 = 0;
LABEL_15:
  __swift_storeEnumTagSinglePayload(v4, v35, 1, v21);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237B876FC(uint64_t a1)
{
  v64 = a1;
  v90 = *MEMORY[0x277D85DE8];
  v83 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v6);
  v81 = &v64 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6C0;
  *(inited + 32) = 0x73656C6966;
  *(inited + 40) = 0xE500000000000000;
  v65 = inited;
  v66 = v1;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v10 = sub_237C0910C();
  v11 = 0;
  v67 = v9 + 64;
  v73 = v9;
  OUTLINED_FUNCTION_5_33();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v80 = v4 + 16;
  v70 = v4;
  v71 = v2;
  v82 = (v4 + 8);
  v72 = v17 + 64;
  v68 = v16;
  v69 = v17;
  if ((v13 & v12) != 0)
  {
    goto LABEL_2;
  }

LABEL_3:
  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v16)
    {
      break;
    }

    ++v19;
    if (*(v67 + 8 * v11))
    {
      OUTLINED_FUNCTION_8_26();
      v14 = v21 & v20;
      while (2)
      {
        v22 = v18 | (v11 << 6);
        v23 = (*(v73 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(*(*(v73 + 56) + 8 * v22) + 16);
        if (v26)
        {
          v76 = *v23;
          v77 = v22;
          v78 = v14;
          v79 = v11;
          *&v88 = MEMORY[0x277D84F90];
          v75 = v24;

          sub_237AC8A74();
          v27 = v88;
          OUTLINED_FUNCTION_119_0();
          v74 = v28;
          v30 = v28 + v29;
          v32 = *(v31 + 72);
          v84 = *(v31 + 16);
          v85 = v32;
          do
          {
            v33 = v81;
            v34 = v83;
            v84(v81, v30, v83);
            v35 = sub_237C05A9C();
            v37 = v36;
            (*v82)(v33, v34);
            *&v88 = v27;
            v38 = *(v27 + 16);
            if (v38 >= *(v27 + 24) >> 1)
            {
              sub_237AC8A74();
              v27 = v88;
            }

            *(v27 + 16) = v38 + 1;
            v39 = v27 + 16 * v38;
            *(v39 + 32) = v35;
            *(v39 + 40) = v37;
            v30 += v85;
            --v26;
          }

          while (v26);

          v2 = v71;
          v16 = v68;
          v10 = v69;
          v14 = v78;
          v11 = v79;
          v25 = v76;
          v22 = v77;
        }

        else
        {
        }

        OUTLINED_FUNCTION_40_16();
        OUTLINED_FUNCTION_21_33(v40);
        v41 = (*(v10 + 48) + 16 * v22);
        *v41 = v25;
        v41[1] = v42;
        OUTLINED_FUNCTION_38_18();
        if (!v44)
        {
          *(v10 + 16) = v43;
          if (!v14)
          {
            goto LABEL_3;
          }

LABEL_2:
          OUTLINED_FUNCTION_45_14();
          continue;
        }

        break;
      }

LABEL_24:
      __break(1u);
    }
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  v46 = v65;
  *(v65 + 48) = v10;
  *(v46 + 72) = v45;
  *(v46 + 80) = 0x69746164696C6176;
  *(v46 + 88) = 0xEA00000000006E6FLL;
  v47 = _s20PersistentParametersVMa_5(0);
  v48 = v66;
  v49 = sub_237B87D08();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  *(v46 + 96) = v49;
  *(v46 + 120) = v50;
  *(v46 + 128) = 0xD000000000000011;
  *(v46 + 136) = 0x8000000237C1AF40;
  *(v46 + 144) = sub_237B880EC();
  *(v46 + 168) = v50;
  strcpy((v46 + 176), "max_iterations");
  *(v46 + 191) = -18;
  v51 = MEMORY[0x277D83B88];
  *(v46 + 192) = *(v48 + v47[8]);
  *(v46 + 216) = v51;
  *(v46 + 224) = 0xD000000000000014;
  *(v46 + 232) = 0x8000000237C17EA0;
  v52 = *(v48 + v47[9]);
  *(v46 + 264) = v51;
  *(v46 + 240) = v52;
  v53 = sub_237C085AC();
  if ((*(v48 + v47[7]) & 1) == 0)
  {
    v54 = sub_237B883B4();
    v89 = v50;
    *&v88 = v54;
    sub_2379DAD24(&v88, v87);
    swift_isUniquelyReferenced_nonNull_native();
    v86 = v53;
    sub_237B40B6C(v87, 0x6966697373616C63, 0xEF657079745F7265);
  }

  v55 = objc_opt_self();
  v56 = sub_237C0855C();

  *&v88 = 0;
  v57 = [v55 dataWithPropertyList:v56 format:200 options:0 error:{&v88, v64}];

  v58 = v88;
  if (v57)
  {
    v59 = sub_237C05B7C();
    v61 = v60;

    sub_237C05A2C();
    sub_237C05B9C();
    (*v82)(v2, v83);
    return sub_2379E86D4(v59, v61);
  }

  else
  {
    v63 = v58;
    sub_237C0593C();

    return swift_willThrow();
  }
}

uint64_t sub_237B87D08()
{
  v1 = v0;
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v6 = type metadata accessor for MLImageClassifier.DataSource(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  sub_237B88FAC(v1, v13 - v12, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_66();
      sub_237B8900C(v14, v10, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      inited = swift_initStackObject();
      v35 = OUTLINED_FUNCTION_0_8(inited, xmmword_237C0B670);
      v36 = MEMORY[0x277D837D0];
      v37 = OUTLINED_FUNCTION_15_40(v35);
      v37[9] = v36;
      v37[10] = v38;
      v37[11] = v39;
      sub_237B88434();
      v41 = v40;
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      inited[6].n128_u64[0] = v41;
      v27 = sub_237C085AC();
      v28 = type metadata accessor for MLImageClassifier.DataSource;
      v29 = v10;
      goto LABEL_7;
    case 2u:
      *v5 = *v14;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v20 = swift_initStackObject();
      v21 = OUTLINED_FUNCTION_0_8(v20, xmmword_237C0B670);
      v22 = MEMORY[0x277D837D0];
      v23 = OUTLINED_FUNCTION_15_40(v21);
      v23[9] = v22;
      v23[10] = v24;
      v23[11] = v25;
      v26 = sub_237AD7E98();
      v20[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v20[6].n128_u64[0] = v26;
      v27 = sub_237C085AC();
      v28 = type metadata accessor for MLSoundClassifier.DataSource;
      v29 = v5;
LABEL_7:
      sub_237B8906C(v29, v28);
      return v27;
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v30 = swift_initStackObject();
      v31 = OUTLINED_FUNCTION_0_8(v30, xmmword_237C0B660);
      v31[4].n128_u64[1] = MEMORY[0x277D837D0];
      v31[3].n128_u64[0] = 1701736302;
      v31[3].n128_u64[1] = v32;
      return sub_237C085AC();
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
      v15 = swift_initStackObject();
      v16 = OUTLINED_FUNCTION_0_8(v15, xmmword_237C0B670);
      v17 = MEMORY[0x277D837D0];
      v16[3].n128_u64[0] = 0x74696C7073;
      v16[3].n128_u64[1] = 0xE500000000000000;
      v16[4].n128_u64[1] = v17;
      v16[5].n128_u64[0] = 1635017060;
      v16[5].n128_u64[1] = v18;
      v19 = sub_237A28200();
      v15[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
      v15[6].n128_u64[0] = v19;
      return sub_237C085AC();
  }
}

uint64_t sub_237B880EC()
{
  v1 = v0;
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_3_77();
  sub_237B88FAC(v1, v10, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_237B8900C(v10, v6, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    v12 = MEMORY[0x277D837D0];
    v32 = 0x6D6F74737563;
    v33 = 0xE600000000000000;
    OUTLINED_FUNCTION_36_15();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_46_15();
    v13 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_33_22(v13);
    v14 = sub_237C05ADC();
    v34 = v14;
    v15 = __swift_allocate_boxed_opaque_existential_0(&v32);
    (*(*(v14 - 8) + 16))(v15, v6, v14);
    OUTLINED_FUNCTION_36_15();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_46_15();
    v16 = OUTLINED_FUNCTION_28_20();
    sub_237B40B6C(v16, v17, 0xEA00000000006874);
    v18 = v31;
    v19 = (v6 + *(v2 + 20));
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v34 = v12;
      v32 = v21;
      v33 = v20;
      OUTLINED_FUNCTION_36_15();

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_15();
      v22 = OUTLINED_FUNCTION_28_20();
      sub_237B40B6C(v22, v23, 0xE600000000000000);
      v18 = v31;
    }

    sub_237B8906C(v6, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v24 = *v10;
    v25 = *(v10 + 8);
    v34 = MEMORY[0x277D837D0];
    v32 = 0x697270656E656373;
    v33 = 0xEA0000000000746ELL;
    OUTLINED_FUNCTION_36_15();
    v26 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v27 = OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_33_22(v27);
    v18 = v26;
    if ((v25 & 1) == 0)
    {
      v34 = MEMORY[0x277D83B88];
      v32 = v24;
      OUTLINED_FUNCTION_36_15();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_46_15();
      v28 = OUTLINED_FUNCTION_28_20();
      sub_237B40B6C(v28, v29, 0xE800000000000000);
      return v26;
    }
  }

  return v18;
}

uint64_t sub_237B883B4()
{
  v4 = MEMORY[0x277D837D0];
  *&v3 = 0xD000000000000011;
  *(&v3 + 1) = 0x8000000237C1DBB0;
  sub_2379DAD24(&v3, v2);
  v0 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_33_22(v2);
  return v0;
}

void sub_237B88434()
{
  OUTLINED_FUNCTION_153();
  v3 = v0;
  v69 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v68 = v8 - v7;
  v9 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLImageClassifier.DataSource(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = (v12 - v11);
  sub_237B88FAC(v3, v12 - v11, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = OUTLINED_FUNCTION_22_16();
    v22(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    inited = swift_initStackObject();
    v17 = inited;
    *(inited + 16) = xmmword_237C0B670;
    v19 = 0xE400000000000000;
    *(inited + 32) = 1684957547;
    *(inited + 40) = 0xE400000000000000;
    v20 = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000013;
    *(inited + 56) = 0x8000000237C17F40;
LABEL_5:
    *(inited + 72) = v20;
    *(inited + 80) = 1752457584;
    *(inited + 88) = v19;
    v23 = sub_237C05A9C();
    v17[7].n128_u64[1] = v20;
    v17[6].n128_u64[0] = v23;
    v17[6].n128_u64[1] = v24;
    sub_237C085AC();
    (*(v1 + 8))(v2, v5);
LABEL_24:
    OUTLINED_FUNCTION_150();
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = OUTLINED_FUNCTION_22_16();
    v16(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
    v17 = swift_initStackObject();
    inited = OUTLINED_FUNCTION_0_8(v17, xmmword_237C0B670);
    v20 = MEMORY[0x277D837D0];
    strcpy((inited + 48), "labeled_files");
    *(inited + 62) = -4864;
    goto LABEL_5;
  }

  v25 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v26 = swift_initStackObject();
  v27 = OUTLINED_FUNCTION_0_8(v26, xmmword_237C0B670);
  v28 = MEMORY[0x277D837D0];
  strcpy(&v27[3], "files_by_label");
  v27[3].n128_u8[15] = -18;
  v27[4].n128_u64[1] = v28;
  v27[5].n128_u64[0] = 0x73656C6966;
  v57 = v27;
  v27[5].n128_u64[1] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v29 = sub_237C0910C();
  v30 = 0;
  v58 = v25 + 64;
  OUTLINED_FUNCTION_5_33();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v66 = (v5 + 8);
  v62 = v5;
  v60 = v36;
  v61 = v25;
  v59 = v35;
  if ((v32 & v31) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_45_14();
LABEL_13:
      v41 = v37 | (v30 << 6);
      v65 = *(*(v25 + 48) + 16 * v41);
      v42 = *(*(*(v25 + 56) + 8 * v41) + 16);
      if (v42)
      {
        v63 = v37 | (v30 << 6);
        v64 = v30;
        v70 = MEMORY[0x277D84F90];

        sub_237AC8A74();
        OUTLINED_FUNCTION_119_0();
        v45 = v44 + v43;
        v67 = *(v5 + 72);
        v46 = *(v5 + 16);
        do
        {
          v46(v68, v45, v69);
          v47 = sub_237C05A9C();
          v49 = v48;
          (*v66)(v68, v69);
          v50 = *(v70 + 16);
          if (v50 >= *(v70 + 24) >> 1)
          {
            sub_237AC8A74();
          }

          *(v70 + 16) = v50 + 1;
          v51 = v70 + 16 * v50;
          *(v51 + 32) = v47;
          *(v51 + 40) = v49;
          v45 += v67;
          --v42;
        }

        while (v42);

        v25 = v61;
        v5 = v62;
        v35 = v59;
        v29 = v60;
        v30 = v64;
        v41 = v63;
      }

      else
      {
      }

      OUTLINED_FUNCTION_40_16();
      OUTLINED_FUNCTION_21_33(v52);
      v53 = (*(v29 + 48) + 16 * v41);
      *v53 = v65;
      v53[1] = v54;
      OUTLINED_FUNCTION_38_18();
      if (v56)
      {
        break;
      }

      *(v29 + 16) = v55;
      if (!v33)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v38 = v30;
    while (1)
    {
      v30 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v30 >= v35)
      {

        v57[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
        v57[6].n128_u64[0] = v29;
        sub_237C085AC();
        goto LABEL_24;
      }

      ++v38;
      if (*(v58 + 8 * v30))
      {
        OUTLINED_FUNCTION_8_26();
        v33 = v40 & v39;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_237B88960()
{
  OUTLINED_FUNCTION_153();
  v3 = v2;
  v5 = v4;
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_27_18();
  if (!*(v3 + 16))
  {
    goto LABEL_26;
  }

  v16 = OUTLINED_FUNCTION_19_22();
  v18 = sub_237ACAC78(v16, v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_2379FED88(*(v3 + 56) + 32 * v18, &v82);
  OUTLINED_FUNCTION_43_11();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
    goto LABEL_26;
  }

  v79 = v1;
  v20 = v80 == 0xD000000000000013 && 0x8000000237C17F40 == v81;
  if (v20 || (OUTLINED_FUNCTION_24_4(0xD000000000000013, 0x8000000237C17F40) & 1) != 0)
  {

    OUTLINED_FUNCTION_32_18();

    if (v83)
    {
      OUTLINED_FUNCTION_43_11();
      if (OUTLINED_FUNCTION_26_3())
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v26 = v80 == 0x5F64656C6562616CLL && v81 == 0xED000073656C6966;
  if (v26 || (OUTLINED_FUNCTION_24_4(0x5F64656C6562616CLL, 0xED000073656C6966) & 1) != 0)
  {

    OUTLINED_FUNCTION_32_18();

    if (v83)
    {
      OUTLINED_FUNCTION_43_11();
      if (swift_dynamicCast())
      {
LABEL_11:
        sub_237C059BC();

        v21 = OUTLINED_FUNCTION_9_48();
        v22(v21);
        OUTLINED_FUNCTION_37_14();
        swift_storeEnumTagMultiPayload();
LABEL_12:
        OUTLINED_FUNCTION_4_66();
        sub_237B8900C(v1, v5, v23);
        v24 = v5;
        v25 = 0;
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v80 == 0x79625F73656C6966 && v81 == 0xEE006C6562616C5FLL)
  {
  }

  else
  {
    v28 = OUTLINED_FUNCTION_24_4(0x79625F73656C6966, 0xEE006C6562616C5FLL);

    if ((v28 & 1) == 0)
    {
LABEL_26:
      v29 = OUTLINED_FUNCTION_9_48();
      v30(v29);

LABEL_27:
      v24 = v5;
      v25 = 1;
LABEL_28:
      __swift_storeEnumTagSinglePayload(v24, v25, 1, v13);
      OUTLINED_FUNCTION_150();
      return;
    }
  }

  sub_237AC9A74(v3, &v82, 0x73656C6966, 0xE500000000000000);

  if (!v83)
  {
LABEL_50:
    v63 = OUTLINED_FUNCTION_9_48();
    v64(v63);
    sub_2379D9054(&v82, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C978, &qword_237C11780);
  OUTLINED_FUNCTION_43_11();
  if ((OUTLINED_FUNCTION_26_3() & 1) == 0)
  {
LABEL_51:
    v65 = OUTLINED_FUNCTION_9_48();
    v66(v65);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C990, &qword_237C11798);
  v31 = sub_237C0910C();
  OUTLINED_FUNCTION_5_33();
  v36 = (v35 + 63) >> 6;
  v74 = v36;
  v72 = v13;
  v73 = v5;
  v71 = v37;
  v70 = v0;
  if ((v34 & v33) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_15_26();
LABEL_39:
      v45 = v38 | (v40 << 6);
      v75 = v39;
      v76 = v40;
      v46 = *(v80 + 56);
      v77 = *(*(v80 + 48) + 16 * v45);
      v47 = *(*(v46 + 8 * v45) + 16);
      if (v47)
      {
        break;
      }

      v50 = MEMORY[0x277D84F90];
LABEL_47:
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_21_33(v56);
      v58 = (v31[6] + 16 * v57);
      *v58 = v77;
      v58[1] = v59;
      *(v31[7] + 8 * v57) = v50;
      v60 = v31[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_55;
      }

      v31[2] = v62;
      v32 = v76;
      v36 = v74;
      if (!v75)
      {
        goto LABEL_34;
      }
    }

    v48 = *(v46 + 8 * v45);
    *&v82 = MEMORY[0x277D84F90];

    v78 = v47;
    sub_237AC8AF4(0, v47, 0);
    v49 = 0;
    v50 = v82;
    v51 = v48 + 40;
    while (v49 < *(v48 + 16))
    {
      v52 = v48;

      sub_237C059BC();

      *&v82 = v50;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_237AC8AF4(v53 > 1, v54 + 1, 1);
        v50 = v82;
      }

      ++v49;
      *(v50 + 16) = v54 + 1;
      OUTLINED_FUNCTION_119_0();
      (*(v8 + 32))(v50 + v55 + *(v8 + 72) * v54, v12, v6);
      v51 += 16;
      v48 = v52;
      if (v78 == v49)
      {

        v13 = v72;
        v5 = v73;
        v31 = v71;
        v1 = v79;
        v0 = v70;
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    v41 = v32;
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v36)
      {

        v67 = OUTLINED_FUNCTION_9_48();
        v68(v67);
        *v0 = v31;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_66();
        sub_237B8900C(v0, v1, v69);
        goto LABEL_12;
      }

      ++v41;
      if (*(v80 + 64 + 8 * v42))
      {
        OUTLINED_FUNCTION_8_26();
        v39 = v44 & v43;
        goto LABEL_39;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_237B88FAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237B8900C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237B8906C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_48()
{
  v2 = *(v0 - 192);

  return sub_237B8906C(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t OUTLINED_FUNCTION_15_40(uint64_t result)
{
  *(result + 48) = 0x756F735F61746164;
  *(result + 56) = 0xEB00000000656372;
  return result;
}

double OUTLINED_FUNCTION_30_22()
{

  return sub_237AC9A74(v0, (v1 - 112), 1635017060, 0xE400000000000000);
}

double OUTLINED_FUNCTION_32_18()
{

  return sub_237AC9A74(v0, (v1 - 120), 1752457584, 0xE400000000000000);
}

_OWORD *OUTLINED_FUNCTION_33_22(uint64_t a1)
{

  return sub_237B40B6C(a1, 1684957547, 0xE400000000000000);
}

_OWORD *OUTLINED_FUNCTION_36_15()
{

  return sub_2379DAD24((v0 - 80), (v0 - 112));
}

uint64_t OUTLINED_FUNCTION_49_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t sub_237B89344(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v4 = sub_2379D9224(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE1908]);
  v5 = sub_237C08B3C();
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v5 & ~(v5 >> 63), 0);
    v26 = v28;
    sub_237C08B2C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; !__OFADD__(i, 1); ++i)
      {
        v25 = i + 1;
        v8 = a1;
        v9 = v3;
        v10 = v4;
        v11 = sub_237C08B9C();
        v13 = *v12;
        v14 = v12[1];

        v11(v27, 0);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0xE000000000000000;
        }

        v16 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_20;
        }

        if (v14)
        {
          v17 = v13;
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_237ACAC78(v17, v15);
        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }

        v20 = *(*(v16 + 56) + 8 * v18);

        v21 = v26;
        v28 = v26;
        v23 = *(v26 + 16);
        v22 = *(v26 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_237AC8A34(v22 > 1, v23 + 1, 1);
          v21 = v28;
        }

        *(v21 + 16) = v23 + 1;
        v26 = v21;
        *(v21 + 8 * v23 + 32) = v20;
        a1 = v8;
        v3 = v9;
        v4 = v10;
        sub_237C08B6C();
        if (v25 == v5)
        {
          return v26;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:

LABEL_21:

    __break(1u);
  }

  return result;
}

unint64_t sub_237B89590(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v70 = v3;
  v71 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v69 = &v66 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v68 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v66 - v12;
  v14 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v72 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v67 = &v66 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v73 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v75 = 0;
    v76 = 0xE000000000000000;
    v27 = OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    sub_237C05EAC();
    v28 = *(v73 + 1);
    v28(v25, v21);
    v29 = sub_237B43058();
    sub_237B8A1B8(v77, v13);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_237B61F04(v13);
    }

    else
    {
      v77 = v29;
      v52 = v72;
      v53 = *(v72 + 32);
      v73 = v27;
      v54 = v67;
      v53(v67, v13, v14);
      sub_237C05FEC();
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_237C05EAC();
      v28(v25, v21);
      v55 = sub_237B43058();
      sub_237AB8620(v55, v77);
      v57 = v56;
      (*(v52 + 8))(v54, v14);
      v29 = v57;
    }

    sub_237B98EF8(v29, v30, v31, v32, v33, v34, v35, v36, v66, v67);
LABEL_12:
    v59 = v58;

    return v59;
  }

  v73 = v10;
  v67 = v18;
  v37 = v69;
  v39 = v70;
  v38 = v71;
  v40 = v77;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v75 = 0;
    v66 = OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    sub_237C05EAC();
    v41 = *(v39 + 8);
    v41(v37, v38);
    v42 = sub_237B4351C();
    v43 = v73;
    sub_237B8A1B8(v40, v73);
    if (__swift_getEnumTagSinglePayload(v43, 1, v14) == 1)
    {
      sub_237B61F04(v43);
      v51 = v42;
    }

    else
    {
      v77 = v42;
      v61 = v72;
      v62 = v67;
      (*(v72 + 32))(v67, v43, v14);
      sub_237C05FEC();
      v75 = 0;
      sub_237C05EAC();
      v41(v37, v38);
      v63 = sub_237B4351C();
      sub_237AB8710(v63, v77);
      v51 = v64;
      (*(v61 + 8))(v62, v14);
    }

    sub_237B98E78(v51, v44, v45, v46, v47, v48, v49, v50, v66, v67);
    goto LABEL_12;
  }

  v59 = 0x8000000237C1A840;
  sub_2379E8AF0();
  swift_allocError();
  *v60 = 0xD000000000000025;
  *(v60 + 8) = 0x8000000237C1A840;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 1;
  swift_willThrow();
  return v59;
}

uint64_t sub_237B89BDC(uint64_t a1, uint64_t a2, char a3)
{
  v66 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  if (a3)
  {
    v64 = v15;
    v65 = v13;
    v67 = v12;
    v16 = 0;
    v17 = *(a2 + 16);
    v18 = MEMORY[0x277D84F98];
    for (i = (a2 + 40); ; i += 2)
    {
      if (v17 == v16)
      {
        v68[0] = v18;
        v44 = v64;
        sub_237B63BC4(v64);
        v45 = sub_237B89344(v44, v68);
        (*(v65 + 8))(v44, v67);
        goto LABEL_40;
      }

      v21 = *(i - 1);
      v20 = *i;

      swift_isUniquelyReferenced_nonNull_native();
      v68[0] = v18;
      v22 = sub_237ACAC78(v21, v20);
      if (__OFADD__(v18[2], (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
      if (sub_237C090AC())
      {
        v26 = sub_237ACAC78(v21, v20);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_49;
        }

        v24 = v26;
      }

      if (v25)
      {

        v18 = v68[0];
        *(*(v68[0] + 56) + 8 * v24) = v16;
      }

      else
      {
        v18 = v68[0];
        *(v68[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v28 = (v18[6] + 16 * v24);
        *v28 = v21;
        v28[1] = v20;
        *(v18[7] + 8 * v24) = v16;
        v29 = v18[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_46;
        }

        v18[2] = v31;
      }

      ++v16;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v67 = v10;
  v65 = v7;
  v32 = *(a2 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = MEMORY[0x277D84F98];
    while (1)
    {
      v35 = *(a2 + 32 + 8 * v33);
      swift_isUniquelyReferenced_nonNull_native();
      v68[0] = v34;
      v36 = sub_237ACB3E0(v35);
      if (__OFADD__(v34[2], (v37 & 1) == 0))
      {
        goto LABEL_42;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D810, &qword_237C14CE8);
      if (sub_237C090AC())
      {
        v40 = sub_237ACB3E0(v35);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_49;
        }

        v38 = v40;
      }

      v34 = v68[0];
      if (v39)
      {
        *(*(v68[0] + 56) + 8 * v38) = v33;
      }

      else
      {
        *(v68[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
        *(v34[6] + 8 * v38) = v35;
        *(v34[7] + 8 * v38) = v33;
        v42 = v34[2];
        v30 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v30)
        {
          goto LABEL_47;
        }

        v34[2] = v43;
      }

      if (v32 == ++v33)
      {
        goto LABEL_27;
      }
    }
  }

  v34 = MEMORY[0x277D84F98];
LABEL_27:
  v46 = v67;
  sub_237C05FEC();
  sub_2379D9224(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900, MEMORY[0x277CE1908]);
  v47 = sub_237C08B3C();
  v45 = MEMORY[0x277D84F90];
  if (!v47)
  {
LABEL_39:
    (*(v65 + 8))(v46, v5);
LABEL_40:

    return v45;
  }

  v48 = v47;
  v69 = MEMORY[0x277D84F90];
  sub_237AC8A34(0, v47 & ~(v47 >> 63), 0);
  v45 = v69;
  sub_237C08B2C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v49 = 0;
    v66 = v48;
    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v51 = v5;
      v52 = sub_237C08B9C();
      v54 = *v53;
      v55 = *(v53 + 8);
      v52(v68, 0);
      if (!v34[2])
      {
        goto LABEL_44;
      }

      if (v55)
      {
        v56 = 0;
      }

      else
      {
        v56 = v54;
      }

      v57 = sub_237ACB3E0(v56);
      if ((v58 & 1) == 0)
      {
        goto LABEL_45;
      }

      v59 = *(v34[7] + 8 * v57);
      v69 = v45;
      v61 = *(v45 + 16);
      v60 = *(v45 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_237AC8A34(v60 > 1, v61 + 1, 1);
        v45 = v69;
      }

      *(v45 + 16) = v61 + 1;
      *(v45 + 8 * v61 + 32) = v59;
      v46 = v67;
      v5 = v51;
      sub_237C08B6C();
      ++v49;
      if (v50 == v66)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
LABEL_49:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B8A178(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_237AC703C(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_237AC6FE0(a1, a3);
}

uint64_t sub_237B8A1B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B8A228(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23();
  v67 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  v66 = v7;
  sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v62 = v9;
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v61 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v59 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v58 = sub_237C075FC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v25 = sub_237C064FC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  sub_237C0787C();
  v32 = *(_s12CausalConv1DVMa(0) + 20);
  v64 = v27;
  v65 = v25;
  v33 = *(v27 + 16);
  v68 = a1;
  v33(v31, a1 + v32, v25);
  OUTLINED_FUNCTION_5_63();
  MEMORY[0x2383DA070]();
  sub_237C067EC();
  v34 = OUTLINED_FUNCTION_10_44();
  v25(v34);
  OUTLINED_FUNCTION_12_45();
  v35 = sub_237C0786C();
  MEMORY[0x2383DA040](v35);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_237A28BFC(v18);
  }

  else
  {
    sub_237C067EC();
    (v25)(v18, v19);
    v36 = v25;
    v37 = v59;
    OUTLINED_FUNCTION_12_45();
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v58);
    v25 = v36;
    sub_237C0783C();
  }

  v60 = v25;
  OUTLINED_FUNCTION_5_63();
  v38 = MEMORY[0x2383DA070]();
  v39 = v61;
  OUTLINED_FUNCTION_11_46(v38);
  (v25)(v23, v19);
  sub_237C0612C();
  v40 = v63;
  v41 = *(v62 + 8);
  v41(v39, v63);
  sub_237C0782C();
  OUTLINED_FUNCTION_5_63();
  v42 = MEMORY[0x2383DA070]();
  OUTLINED_FUNCTION_11_46(v42);
  v60(v23, v19);
  sub_237C0612C();
  v41(v39, v40);
  sub_237C0780C();
  sub_237C0647C();
  sub_237C0779C();
  v70 = 1;
  v69 = sub_237C0648C();
  v43 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v43, v44);
  sub_237C077BC();
  v70 = 1;
  v69 = sub_237C064BC();
  v45 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v45, v46);
  sub_237C0785C();
  v70 = 1;
  v69 = sub_237C064EC();
  v47 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v47, v48);
  sub_237C077EC();
  v49 = v67;
  sub_237C0762C();
  v50 = *MEMORY[0x277D25190];
  v51 = sub_237C077DC();
  OUTLINED_FUNCTION_4();
  (*(v52 + 104))(v49, v50, v51);
  v53 = OUTLINED_FUNCTION_8_46();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v51);
  sub_237C0784C();
  sub_237B8ADCC(v68, _s12CausalConv1DVMa);
  return (*(v64 + 8))(v31, v65);
}

uint64_t sub_237B8A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D818, &qword_237C14CF0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v68 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D820, &qword_237C14CF8);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v67 = v8;
  sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v63 = v10;
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v62 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4B0, &qword_237C0CFB8);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v61 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v20 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237C075FC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v27 = sub_237C065CC();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  sub_237C0787C();
  v65 = v29;
  v66 = v27;
  (*(v29 + 16))(v33, v70, v27);
  OUTLINED_FUNCTION_5_63();
  sub_237C0658C();
  sub_237C067EC();
  v34 = OUTLINED_FUNCTION_10_44();
  v27(v34);
  OUTLINED_FUNCTION_12_45();
  sub_237C0786C();
  sub_237C0654C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v69 = a2;
  if (EnumTagSinglePayload == 1)
  {
    sub_237A28BFC(v19);
  }

  else
  {
    sub_237C067EC();
    (v27)(v19, v20);
    OUTLINED_FUNCTION_12_45();
    v36 = OUTLINED_FUNCTION_8_46();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v25);
    sub_237C0783C();
  }

  OUTLINED_FUNCTION_5_63();
  v39 = sub_237C0658C();
  v40 = v62;
  OUTLINED_FUNCTION_11_46(v39);
  (v27)(v24, v20);
  sub_237C0612C();
  v41 = *(v63 + 8);
  v42 = v64;
  v41(v40, v64);
  sub_237C0782C();
  OUTLINED_FUNCTION_5_63();
  v43 = sub_237C0658C();
  OUTLINED_FUNCTION_11_46(v43);
  (v27)(v24, v20);
  sub_237C0612C();
  v41(v40, v42);
  sub_237C0780C();
  sub_237C0650C();
  sub_237C0779C();
  v72 = sub_237C0651C();
  sub_237C0651C();
  v71 = v44;
  v45 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v45, v46);
  sub_237C077BC();
  v72 = sub_237C0656C();
  sub_237C0656C();
  v71 = v47;
  v48 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v48, v49);
  sub_237C0785C();
  v72 = sub_237C065BC();
  sub_237C065BC();
  v71 = v50;
  v51 = OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_9_49(v51, v52);
  sub_237C077EC();
  v53 = v68;
  sub_237C0762C();
  v54 = *MEMORY[0x277D25190];
  v55 = sub_237C077DC();
  OUTLINED_FUNCTION_4();
  (*(v56 + 104))(v53, v54, v55);
  v57 = OUTLINED_FUNCTION_8_46();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v55);
  sub_237C0784C();
  sub_237B8ADCC(v70, _s11LeakyConv2DVMa);
  return (*(v65 + 8))(v33, v66);
}

uint64_t sub_237B8ADCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_49(uint64_t a1, uint64_t a2)
{

  return sub_237C07ACC();
}

uint64_t OUTLINED_FUNCTION_11_46(uint64_t a1)
{

  return sub_237C0679C();
}

uint64_t OUTLINED_FUNCTION_12_45()
{

  return sub_237C0760C();
}

void sub_237B8AEC4(uint64_t a1)
{
  v2 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v51 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v38 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v40 = a1 + 64;
  v41 = v4;
  OUTLINED_FUNCTION_5_33();
  v14 = v13 & v12;
  v39 = (v15 + 63) >> 6;
  v48 = (v4 + 8);
  v49 = v4 + 16;
  v54 = v16;
  v47 = v16 + 32;

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v42 = a1;
  do
  {
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v39)
          {
            goto LABEL_25;
          }

          v14 = *(v40 + 8 * v19);
          ++v17;
          if (v14)
          {
            v17 = v19;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

LABEL_7:
      v20 = __clz(__rbit64(v14)) | (v17 << 6);
      v21 = *(*(a1 + 56) + 8 * v20);
      v22 = *(v21 + 16);
      if (v22)
      {
        v44 = v18;
        v45 = v17;
        v46 = v14;
        v23 = (*(a1 + 48) + 16 * v20);
        v24 = v23[1];
        v53 = *v23;
        v58 = MEMORY[0x277D84F90];

        sub_237AC8E34(0, v22, 0);
        v25 = v58;
        v26 = *(v41 + 80);
        v43 = v21;
        v27 = v21 + ((v26 + 32) & ~v26);
        v52 = *(v41 + 72);
        v28 = *(v41 + 16);
        do
        {
          v29 = v50;
          v28(v50, v27, v2);
          v28(v51, v29, v2);
          v56 = v53;
          v57 = v24;

          sub_237C06C6C();
          (*v48)(v29, v2);
          v58 = v25;
          v31 = *(v25 + 16);
          v30 = *(v25 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_237AC8E34(v30 > 1, v31 + 1, 1);
            v25 = v58;
          }

          *(v25 + 16) = v31 + 1;
          (*(v54 + 32))(v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v31, v11, v55);
          v27 += v52;
          --v22;
        }

        while (v22);

        a1 = v42;
        v17 = v45;
        v14 = v46;
        v18 = v44;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      v32 = *(v25 + 16);
      v33 = *(v18 + 16);
      if (__OFADD__(v33, v32))
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v33 + v32 > *(v18 + 24) >> 1)
      {
        sub_237BC122C();
        v18 = v34;
      }

      v14 &= v14 - 1;
      if (!*(v25 + 16))
      {
        break;
      }

      if ((*(v18 + 24) >> 1) - *(v18 + 16) < v32)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v32)
      {
        v35 = *(v18 + 16);
        v36 = __OFADD__(v35, v32);
        v37 = v35 + v32;
        if (v36)
        {
          goto LABEL_29;
        }

        *(v18 + 16) = v37;
      }
    }
  }

  while (!v32);
  __break(1u);
LABEL_25:
}

uint64_t sub_237B8B31C()
{
  v1[2] = v0;
  v2 = sub_237C05ADC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B8B3DC);
}

void sub_237B8B3DC()
{
  sub_237B82504();
  v2 = v1;
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D838, &qword_237C14D28);
  v4 = sub_237C0910C();
  v5 = 0;
  v6 = v2 + 64;
  OUTLINED_FUNCTION_5_33();
  v9 = v8 & v7;
  v32 = (v10 + 63) >> 6;
  v33 = v11;
  v40 = v3;
  v34 = v2;
  v35 = v11 + 8;
  v31 = v2 + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v13 = (v9 - 1) & v9;
LABEL_8:
      v16 = v12 | (v5 << 6);
      v37 = v13;
      v17 = (*(v2 + 48) + 16 * v16);
      v38 = *v17;
      v39 = v16;
      v18 = *(*(v2 + 56) + 8 * v16);
      v19 = *(v18 + 16);
      if (v19)
      {
        break;
      }

      v24 = MEMORY[0x277D84F90];
LABEL_14:
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v26 = (v4[6] + 16 * v39);
      *v26 = v38;
      v26[1] = v25;
      *(v4[7] + 8 * v39) = v24;
      v27 = v4[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_22;
      }

      v4[2] = v29;
      v9 = v37;
      if (!v37)
      {
        goto LABEL_3;
      }
    }

    v41 = MEMORY[0x277D84F90];
    v36 = v17[1];

    sub_237C08FCC();
    v20 = 0;
    v21 = v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    while (v20 < *(v18 + 16))
    {
      (*(v40 + 16))(v0[5], v21 + *(v40 + 72) * v20, v0[3]);
      sub_237C06ACC();
      ++v20;
      v22 = OUTLINED_FUNCTION_3_78();
      v23(v22);
      sub_237C08F8C();
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      if (v19 == v20)
      {

        v24 = v41;
        v4 = v33;
        v2 = v34;
        v6 = v31;
        v25 = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v32)
      {

        v30 = v0[1];

        v30(v4);
        return;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v12 = __clz(__rbit64(v15));
        v13 = (v15 - 1) & v15;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t MLImageClassifier.DataSource.stratifiedSplit(proportions:seed:)(uint64_t a1, uint64_t a2)
{
  sub_237B03618(a2, v36);
  sub_237B82504();
  if (v2)
  {
    OUTLINED_FUNCTION_1_77(v4, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    sub_237B07C38(&v21);
  }

  else
  {
    sub_237B3CAEC();
    a1 = v13;
    OUTLINED_FUNCTION_1_77(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    sub_237B07C38(&v21);
  }

  return a1;
}

uint64_t MLImageClassifier.DataSource.stratifiedSplit<A>(proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237B82504();
  if (!v4)
  {
    a4 = sub_237B038C8(a1, a2, v9, a3, a4);
  }

  return a4;
}

uint64_t type metadata accessor for MLImageClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9D828;
  if (!qword_27DE9D828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B8B8D8(uint64_t a1)
{
  sub_237A6191C();
  if (v1 <= 0x3F)
  {
    sub_2379FCE48(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *OUTLINED_FUNCTION_1_77(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va1, a23);
  va_start(__srca, a23);
  __src = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0x78uLL);
}

uint64_t sub_237B8B9CC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, MEMORY[0x277CBFD28]);

  sub_237C0837C();
  v9 = sub_237A59760();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v19[0] = a2;
  v16 = v19[5];
  sub_237B8BC08(MEMORY[0x277D84F90], v9, v11, v13, v15, v19);
  if (v16)
  {
    (*(*(v8 - 8) + 8))(a5, v8);
  }

  swift_unknownObjectRelease();
  return sub_237A286E0(v19);
}

uint64_t sub_237B8BB4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_237ADFA24(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_237B8C124(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237B8BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a5 >> 1 == a4)
  {
    v11 = sub_2379F6D68(a6, &v75);
    if (v77)
    {
      if (OUTLINED_FUNCTION_0_81(v11, v12, v13, MEMORY[0x277D839F8], v14, v15, v16))
      {
        v75 = *&v74[0];
        *&v74[0] = a1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
        sub_2379D9224(&qword_27DE9D840, &qword_27DE9AEC8, &qword_237C0C2A0, MEMORY[0x277D83988]);
        return sub_237C082CC();
      }
    }

    else
    {
LABEL_23:
      sub_237A286E0(&v75);
    }

    sub_2379E8AF0();
    swift_allocError();
    *v42 = 0xD000000000000035;
    *(v42 + 8) = 0x8000000237C1DBF0;
    goto LABEL_47;
  }

  if ((a5 >> 1) <= a4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = a3;
  v7 = *(a3 + 8 * a4);
  sub_2379F6D68(a6, &v75);
  if (!v77)
  {
    sub_237A286E0(&v75);
    goto LABEL_26;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  if (OUTLINED_FUNCTION_0_81(v18, v19, v20, v18, v21, v22, v23))
  {
    OUTLINED_FUNCTION_6_61();
    if (!v25)
    {
      v43 = v24;

      v7 = v43;
      goto LABEL_26;
    }

    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_7_50();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_11:
      v27 = *(a1 + 16);
      v26 = *(a1 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        OUTLINED_FUNCTION_4_67(v26);
        a1 = v68;
      }

      v29 = 0;
      OUTLINED_FUNCTION_2_75();
      while (v8 != v29)
      {
        if (v29 >= *(v7 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        sub_2379FED88(v28, &v76);
        v30 = *(a1 + 16);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (!v30)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_237B05F04(a1, v31, v32, v33);
          a1 = v41;
          if (!v30)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        if (v30 > *(a1 + 16))
        {
          goto LABEL_52;
        }

        *(a1 + 8 * v30 + 24) = v29;
        v34 = sub_2379DAD24(&v76, v74);
        OUTLINED_FUNCTION_1_78(v34, v35, v36, v37, v38, v74, v39, v40, v71, v72, v73);
        if (v6)
        {
          swift_unknownObjectRelease();

          sub_237A286E0(v74);
        }

        sub_237A286E0(v74);
        v28 += 32;
        ++v29;
      }

      goto LABEL_45;
    }

LABEL_56:
    OUTLINED_FUNCTION_3_79();
    a1 = v67;
    goto LABEL_11;
  }

LABEL_26:
  sub_2379F6D68(a6, &v75);
  if (!v77)
  {
LABEL_44:
    sub_237A286E0(&v75);
    goto LABEL_46;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
  if ((OUTLINED_FUNCTION_0_81(v44, v45, v46, v44, v47, v48, v49) & 1) == 0)
  {
LABEL_46:
    v75 = 0;
    *&v76 = 0xE000000000000000;
    sub_237C08EDC();

    v75 = 0xD00000000000001DLL;
    *&v76 = 0x8000000237C1DBD0;
    *&v74[0] = v7;
    v64 = sub_237C0924C();
    MEMORY[0x2383DC360](v64);

    MEMORY[0x2383DC360](0x746E656D656C6520, 0xEA00000000002E73);
    v65 = v75;
    v66 = v76;
    sub_2379E8AF0();
    swift_allocError();
    *v42 = v65;
    *(v42 + 8) = v66;
LABEL_47:
    *(v42 + 16) = 0u;
    *(v42 + 32) = 0u;
    *(v42 + 48) = 0;
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_6_61();
  if (!v25)
  {
    v63 = v50;

    v7 = v63;
    goto LABEL_46;
  }

  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_7_50();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_3_79();
    a1 = v69;
  }

  v52 = *(a1 + 16);
  v51 = *(a1 + 24);
  v53 = v52 + 1;
  if (v52 >= v51 >> 1)
  {
    OUTLINED_FUNCTION_4_67(v51);
    a1 = v70;
  }

  v54 = 0;
  OUTLINED_FUNCTION_2_75();
  while (v8 != v54)
  {
    if (v54 >= *(v7 + 16))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_2379F6D68(v53, &v76);
    v55 = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_237B05F04(a1, v57, v58, v59);
      a1 = isUniquelyReferenced_nonNull_native;
      if (!v55)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    if (v55 > *(a1 + 16))
    {
      goto LABEL_54;
    }

    *(a1 + 8 * v55 + 24) = v54;
    OUTLINED_FUNCTION_1_78(isUniquelyReferenced_nonNull_native, v57, v58, v59, v60, &v76, v61, v62, v71, v72, v73);
    if (v6)
    {
      sub_237A286E0(&v76);

      return swift_unknownObjectRelease();
    }

    sub_237A286E0(&v76);
    v53 += 32;
    ++v54;
  }

LABEL_45:

  swift_unknownObjectRelease();
}

uint64_t sub_237B8C124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
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
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_81(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_237B8BC08(v11, a11, a10, a9, v12, a6);
}

void OUTLINED_FUNCTION_3_79()
{
  v2 = *(v0 + 16) + 1;

  sub_237BC0EB4(0, v2, 1, v0);
}

void OUTLINED_FUNCTION_4_67(unint64_t a1@<X8>)
{

  sub_237BC0EB4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_5_64()
{

  return sub_237B8BB4C(1, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_7_50()
{
}

void MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v231 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v25, &a12);
  v230 = v26;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v29);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v31);
  v32 = sub_237C0602C();
  v33 = OUTLINED_FUNCTION_0_26(v32, &a14);
  v234 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v220 - v39;
  v41 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v236 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_0();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = &v220 - v48;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_0();
  v53 = v52 - v51;
  v54 = OUTLINED_FUNCTION_36_4();
  sub_237B8CDFC(v54, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v222 = v37;
    v225 = v46;
    v65 = v233;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    OUTLINED_FUNCTION_47_14();
    v223 = v66;
    v226 = v67;
    OUTLINED_FUNCTION_47_14();
    v224 = v68;
    v227 = v69;
    v71 = (v53 + *(v70 + 80));
    v73 = *v71;
    v72 = v71[1];
    v74 = *(v236 + 32);
    v228 = v41;
    v74(v49, v53, v41);
    sub_237C05DFC();
    v75 = sub_237C05FFC();
    v76 = *(v234 + 8);
    v76(v40, v235);
    if (v75 == MEMORY[0x277D837D0])
    {
      v220 = v40;
      v81 = v73;
      v221 = v49;
      sub_237C05DEC();
      v82 = v229;
      sub_237B62FE0(v229);
      if (v21)
      {
        v77 = v73;
        v78 = v72;

        OUTLINED_FUNCTION_9_50();
        v83 = OUTLINED_FUNCTION_56_9();
        v84(v83);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v85, v86, v87, v235);
        sub_237B61F04(v82);
        v79 = 0;
        OUTLINED_FUNCTION_69_7();
        v49 = v221;
      }

      else
      {
        OUTLINED_FUNCTION_9_50();
        v142 = OUTLINED_FUNCTION_56_9();
        v143(v142);
        v144 = OUTLINED_FUNCTION_33_23();
        v145 = v235;
        __swift_storeEnumTagSinglePayload(v144, v146, 1, v235);
        v147 = v234;
        v65 = v222;
        (*(v234 + 32))(v222, v82, v145);
        (*(v147 + 16))(v220, v65, v145);

        v77 = v81;
        v78 = v72;
        v49 = v221;
        sub_237C05E0C();
        v79 = 0;
        v76(v65, v145);
        OUTLINED_FUNCTION_69_7();
      }
    }

    else
    {
      v77 = v73;
      v78 = v72;
      OUTLINED_FUNCTION_69_7();
      v79 = v21;
    }

    v148 = v236;
    v149 = v225;
    v150 = v228;
    (*(v236 + 16))(v225, v49, v228);
    sub_237A70684(v149, 0, &v240);
    if (v79)
    {
      (*(v148 + 8))(v49, v150);

      goto LABEL_24;
    }

    v242 = v240;
    v243 = v241;
    v151 = v77;
    sub_2379E0CC4(&v242, v77, v78);
    v221 = v49;
    v152 = v242;
    v153 = v243;
    v240 = v242;
    v241 = v243;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B680;
    v155 = v226;
    *(inited + 32) = v223;
    *(inited + 40) = v155;
    *(inited + 48) = v151;
    *(inited + 56) = v78;
    *(inited + 64) = v224;
    *(inited + 72) = v65;

    sub_2379DBCF4(v152, v153);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v160, v161, v162, v163, v164, v165, v166, v167, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4(v168, v169, v170, v171, v172, v173, v174, v175, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    if ((v243 & 1) == 0)
    {
      v184 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v184, v185);
      sub_237B6C588();
      v186 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v186, v187);
    }

    sub_237B6C670(v176, v177, v178, v179, v180, v181, v182, v183, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_15_37();
    v188 = OUTLINED_FUNCTION_55_9();
    sub_237B6DAB4(v188, v189, v190, v191, v192, v193, v194, v195, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    if ((v243 & 1) == 0)
    {
      v204 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v204, v205);
      sub_237B6C588();
      v206 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v206, v207);
    }

    v88 = &v242;
    sub_237B6C670(v196, v197, v198, v199, v200, v201, v202, v203, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_19_17();
    v208 = OUTLINED_FUNCTION_13_11();
    sub_237B6DAB4(v208, v209, v210, 0xE500000000000000, v211, v212, v213, v214, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    OUTLINED_FUNCTION_32_8();
    if (v65)
    {
      v215 = &v242;
    }

    else
    {
      v216 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v216, v217);
      sub_237B6C588();
    }

    (*(v148 + 8))(v221, v150);
    v218 = OUTLINED_FUNCTION_30();
    sub_2379DBC9C(v218, v219);
    OUTLINED_FUNCTION_32_8();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 3)
  {
    _s16FeatureExtractorCMa_0();
    sub_237BA586C(v20, 0, &v240);
    if (v21)
    {
      sub_237A9A80C(v53);
      goto LABEL_24;
    }

    v88 = v240;
    LOBYTE(v65) = v241;
    sub_237A9A80C(v53);
LABEL_13:
    v89 = v231;
    *v231 = v88;
    *(v89 + 8) = v65;
    goto LABEL_24;
  }

  v57 = *v53;
  v58 = *(v53 + 8);
  v59 = *(v53 + 24);
  v235 = *(v53 + 16);
  v60 = *(v53 + 40);
  v236 = *(v53 + 32);
  v61 = *(v53 + 56);
  v62 = *(v53 + 48);
  v242 = v57;
  v243 = v58;
  sub_2379DBCF4(v57, v58);
  sub_2379E0CC4(&v242, v62, v61);
  v63 = v242;
  v64 = v243;
  if (!v21)
  {
    v244 = v58;
    v240 = v242;
    v241 = v243;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_237C0B680;
    *(v80 + 32) = v235;
    *(v80 + 40) = v59;
    *(v80 + 48) = v62;
    *(v80 + 56) = v61;
    *(v80 + 64) = v236;
    *(v80 + 72) = v60;
    sub_2379DBCF4(v63, v64);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v90, v91, v92, v93, v94, v95, v96, v97, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4(v98, v99, v100, v101, v102, v103, v104, v105, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    if ((v243 & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v114, v115);
      sub_237B6C588();
      v116 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v116, v117);
    }

    sub_237B6C670(v106, v107, v108, v109, v110, v111, v112, v113, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_15_37();
    sub_237B6DAB4(v62, v61, v118, 0xE900000000000073, v119, v120, v121, v122, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    v131 = v236;
    if ((v243 & 1) == 0)
    {
      v132 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v132, v133);
      sub_237B6C588();
      v134 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v134, v135);
    }

    sub_237B6C670(v123, v124, v125, v126, v127, v128, v129, v130, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
    OUTLINED_FUNCTION_19_17();
    sub_237B6DAB4(v131, v60, v136, 0xE500000000000000, v137, v138, v139, v140, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);

    v88 = v242;
    if (v243)
    {
      v141 = v242;
      sub_2379DBC9C(v57, v244);
      LOBYTE(v65) = 1;
      sub_2379DBC9C(v88, 1);
    }

    else
    {
      v156 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v156, v157);
      sub_237B6C588();
      sub_2379DBC9C(v57, v244);
      v158 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v158, v159);
      LOBYTE(v65) = 0;
    }

    goto LABEL_13;
  }

  sub_2379DBC9C(v242, v243);

  sub_2379DBC9C(v57, v58);
LABEL_24:
  OUTLINED_FUNCTION_73();
}

uint64_t MLHandPoseClassifier.DataSource.labeledMedia()()
{
  sub_237B84894();
  v2 = v1;
  if (!v0)
  {
  }

  return v2;
}

uint64_t type metadata accessor for MLHandPoseClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9D848;
  if (!qword_27DE9D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B8CDFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MLHandPoseClassifier.DataSource.imagesWithAnnotations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  a10 = v21;
  v331 = v24;
  v25 = sub_237C05DBC();
  v26 = OUTLINED_FUNCTION_0_26(v25, &v362);
  v327 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_18_0();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v32);
  v33 = sub_237C0825C();
  v34 = OUTLINED_FUNCTION_0_26(v33, &a10);
  v329 = v35;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_82_5();
  v37 = sub_237C05ADC();
  v38 = OUTLINED_FUNCTION_0_26(v37, &a12);
  v333 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  v42 = &v323 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  v47 = &v323 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v323 - v49;
  v51 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v55 = v54 - v53;
  sub_237B8CDFC(v20, v54 - v53);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_71_8();
      OUTLINED_FUNCTION_59_10();
      v100();
      sub_237C0821C();
      v101 = a10;
      sub_237A5C58C();
      if (!v101)
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v179();
        sub_237B830A8();

        v197 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v197, v198);
        OUTLINED_FUNCTION_24_31();
        v244 = OUTLINED_FUNCTION_3_70(&a14);
        sub_2379DBC9C(v244, v245);
        OUTLINED_FUNCTION_36_3();
        v246(v47, v51);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_9_50();
      OUTLINED_FUNCTION_34_19();
      v102();
      (*(v30 + 8))(v47, v51);
      goto LABEL_49;
    case 2u:
      OUTLINED_FUNCTION_71_8();
      OUTLINED_FUNCTION_59_10();
      v92();
      sub_237C0821C();
      v93 = a10;
      sub_237A5D608();
      if (!v93)
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v159();
        sub_237B830A8();

        v195 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v195, v196);
        OUTLINED_FUNCTION_24_31();
        v240 = OUTLINED_FUNCTION_3_70(&a14);
        sub_2379DBC9C(v240, v241);
        v242 = OUTLINED_FUNCTION_138_0();
        v243(v242);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_9_50();
      OUTLINED_FUNCTION_34_19();
      v94();
      (*(v30 + 8))(v50, v51);
      goto LABEL_49;
    case 3u:
      sub_237A9A80C(v55);
      v95 = MEMORY[0x2383DDC00](0);
      if (!v95)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        JUMPOUT(0x237B8DED4);
      }

      v96 = v95;
      type metadata accessor for CMLTable();
      v97 = swift_allocObject();
      *(v97 + 16) = v96;
      v98 = type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2(v98);
      v99 = sub_237B6C578(v97);
      OUTLINED_FUNCTION_53_12(v99);
      goto LABEL_49;
    case 4u:
      v75 = *v55;
      v76 = *(v55 + 8);
      v77 = *(v55 + 40);
      v360 = v75;
      v361 = v76;
      v334 = v75;
      LOBYTE(v335) = v76;
      v78 = OUTLINED_FUNCTION_55();
      sub_2379DBCF4(v78, v79);
      v80 = OUTLINED_FUNCTION_55();
      sub_2379DBCF4(v80, v81);
      v82 = OUTLINED_FUNCTION_63_8();
      v83 = a10;
      sub_237B845E8(v82, v84, v85, v86, v77);
      if (!v83)
      {
        v116 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v116, v117);
        sub_237B6C670(v118, v119, v120, v121, v122, v123, v124, v125, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237B6DAB4(v126, v127, v128, v129, v130, v131, v132, v133, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

        if ((v361 & 1) == 0)
        {
          v142 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v142, v143);
          sub_237B6C588();
          v144 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v144, v145);
        }

        sub_237B6C670(v134, v135, v136, v137, v138, v139, v140, v141, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
        OUTLINED_FUNCTION_19_17();
        v146 = OUTLINED_FUNCTION_13_11();
        sub_237B6DAB4(v146, v147, v148, 0xE500000000000000, v149, v150, v151, v152, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

        v153 = v360;
        if (v361)
        {
          v154 = v360;
          v155 = OUTLINED_FUNCTION_55();
          sub_2379DBC9C(v155, v156);
          v157 = v153;
          v158 = 1;
        }

        else
        {
          v191 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v191, v192);
          sub_237B6C588();
          v193 = OUTLINED_FUNCTION_55();
          sub_2379DBC9C(v193, v194);
          v157 = OUTLINED_FUNCTION_85();
        }

        sub_2379DBC9C(v157, v158);
        goto LABEL_48;
      }

      v87 = OUTLINED_FUNCTION_55();
      sub_2379DBC9C(v87, v88);
      v89 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v89, v90);
      v91 = OUTLINED_FUNCTION_55();
      sub_2379DBC9C(v91, v199);
      goto LABEL_49;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      v103 = MEMORY[0x2383DDC00](0);
      if (!v103)
      {
        goto LABEL_51;
      }

      v104 = v103;
      type metadata accessor for CMLTable();
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      v106 = type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2(v106);
      v107 = sub_237B6C578(v105);
      OUTLINED_FUNCTION_53_12(v107);
      OUTLINED_FUNCTION_36_3();
      v108(v55, v328);
      goto LABEL_49;
    case 6u:
      v109 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0) + 64));
      v111 = *v109;
      v110 = v109[1];
      v112 = v327;
      v113 = v325;
      v114 = v328;
      (*(v327 + 32))();
      (*(v112 + 16))(v30, v113, v114);
      v115 = a10;
      sub_237A70684(v30, 0, &v334);
      if (!v115)
      {
        v180 = OUTLINED_FUNCTION_2_71();
        OUTLINED_FUNCTION_22_26(v180, v181);
        v182 = OUTLINED_FUNCTION_63_8();
        sub_237B845E8(v182, v183, v184, v185, v110);
        v200 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v200, v201);
        sub_237B6C670(v202, v203, v204, v205, v206, v207, v208, v209, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237B6DAB4(v210, v211, v212, v213, v214, v215, v216, v217, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

        if ((v361 & 1) == 0)
        {
          v226 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v226, v227);
          sub_237B6C588();
          v228 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v228, v229);
        }

        sub_237B6C670(v218, v219, v220, v221, v222, v223, v224, v225, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
        OUTLINED_FUNCTION_19_17();
        sub_237B6DAB4(v111, v110, v230, 0xE500000000000000, v231, v232, v233, v234, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

        OUTLINED_FUNCTION_32_8();
        if (v113)
        {
          v235 = &v360;
        }

        else
        {
          v236 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v236, v237);
          sub_237B6C588();
        }

        (*(v112 + 8))(v325, v114);
        v238 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v238, v239);
        goto LABEL_48;
      }

      (*(v112 + 8))(v113, v114);

      goto LABEL_49;
    default:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v57 = v56[12];
      v58 = (v55 + v56[16]);
      v60 = *v58;
      v59 = v58[1];
      v329 = v60;
      v330 = v59;
      v61 = v55 + v56[20];
      v62 = *(v61 + 8);
      v328 = *v61;
      OUTLINED_FUNCTION_45_15();
      v63 = *(v47 + 4);
      v64 = v326;
      v65 = OUTLINED_FUNCTION_56_9();
      v66 = v332;
      v63(v65);
      v67 = v55 + v57;
      v68 = v324;
      (v63)(v324, v67, v66);
      v69 = v68;
      v70 = OUTLINED_FUNCTION_13_11();
      v71(v70);
      LOBYTE(v334) = 1;
      *(&v334 + 1) = *v359;
      HIDWORD(v334) = *&v359[3];
      v335 = 44;
      v336 = 0xE100000000000000;
      v337 = 0;
      v338 = 0xE000000000000000;
      v339 = 92;
      v340 = 0xE100000000000000;
      LOBYTE(v341) = 1;
      *(&v341 + 1) = *v358;
      HIDWORD(v341) = *&v358[3];
      v342 = 34;
      v343 = 0xE100000000000000;
      v344 = 1;
      *v345 = *v357;
      *&v345[3] = *&v357[3];
      v346 = &unk_284ABEBF0;
      v347 = 10;
      v348 = 0xE100000000000000;
      v349 = 0;
      v350 = 0;
      v351 = 1;
      *v352 = *v356;
      *&v352[3] = *&v356[3];
      v353 = 0;
      v72 = a10;
      MLDataTable.init(contentsOf:options:)(v42, &v334, &v354);
      if (v72)
      {
        v73 = *(v47 + 1);
        v73(v69, v66);

        v74 = v64;
LABEL_30:
        v73(v74, v66);
        goto LABEL_49;
      }

      v160 = v62;
      v360 = v354;
      v361 = v355;
      v161 = v329;
      v162 = v330;
      MLDataTable.subscript.getter();
      v163 = v334;
      if ((v335 & 1) != 0 || (v164 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v164, v165), v47 = v163, sub_237A60248(&v354), v166 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v166, v167), v354 != 2))
      {

        v186 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v186, v187);
        v334 = 0;
        v335 = 0xE000000000000000;
        sub_237C08EDC();

        v334 = 0x206E6D756C6F43;
        v335 = 0xE700000000000000;
        MEMORY[0x2383DC360](v161, v162);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        v188 = v334;
        v189 = v335;
        sub_2379E8AF0();
        swift_allocError();
        *v190 = v188;
        *(v190 + 8) = v189;
        *(v190 + 16) = 0u;
        *(v190 + 32) = 0u;
        *(v190 + 48) = 0;
        swift_willThrow();
        OUTLINED_FUNCTION_45_15();
        v73 = *(v47 + 1);
        v73(v69, v66);
        sub_2379DBC9C(v360, v361);
        v74 = v326;
        goto LABEL_30;
      }

      v168 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v168, v169);
      sub_237A607E0(0, &v334);
      v170 = OUTLINED_FUNCTION_33_23();
      sub_2379DBC9C(v170, v171);
      v172 = v334;
      v173 = v335;
      if (v336 != 2)
      {
        sub_2379E8CE8(v334, v335, v336);
        v172 = 0;
        v173 = 0xE000000000000000;
      }

      v334 = v172;
      v335 = v173;
      sub_237C0883C();
      sub_237C059BC();

      v174 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      v175 = sub_237C086BC();

      v176 = [v174 fileExistsAtPath_];

      if (v176)
      {
        v177 = v360;
        v178 = v361;
      }

      else
      {
        v247 = OUTLINED_FUNCTION_33_23();
        sub_2379DBCF4(v247, v248);
        v249 = OUTLINED_FUNCTION_33_23();
        v251 = sub_2379DFC10(v249, v250);
        MEMORY[0x28223BE20](v251);
        OUTLINED_FUNCTION_17_14();
        *(v252 - 16) = v326;
        v254 = sub_2379E1FAC(sub_237B90868, v253, v251);

        v334 = v254;
        MEMORY[0x28223BE20](v255);
        OUTLINED_FUNCTION_17_14();
        *(v256 - 16) = v257;
        v258 = sub_237BBDC94(sub_2379F5678);
        v260 = v259;

        sub_237B6C670(v261, v262, v263, v264, v265, v266, v267, v268, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
        v334 = v258;
        LOBYTE(v335) = v260 & 1;
        sub_237B6CF70(&v334, v161, v162);
        v269 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v269, v270);
        v177 = v360;
        if (v361)
        {
          v178 = 1;
        }

        else
        {
          v271 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v271, v272);
          sub_237B6C588();
          v273 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v273, v274);
          v178 = 0;
        }
      }

      v275 = v328;
      v334 = v177;
      LOBYTE(v335) = v178;
      sub_2379DBCF4(v177, v178);
      sub_237B845E8(&v334, v161, v162, v275, v160);
      v276 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v276, v277);
      sub_237B6C670(v278, v279, v280, v281, v282, v283, v284, v285, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4(v286, v287, v288, v289, v290, v291, v292, v293, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

      if ((v361 & 1) == 0)
      {
        v302 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v302, v303);
        sub_237B6C588();
        v304 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v304, v305);
      }

      sub_237B6C670(v294, v295, v296, v297, v298, v299, v300, v301, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v275, v160, v306, 0xE500000000000000, v307, v308, v309, v310, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);

      OUTLINED_FUNCTION_32_8();
      if (v275)
      {
        v311 = &v360;
      }

      else
      {
        v312 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v312, v313);
        sub_237B6C588();
      }

      v314 = v326;
      v315 = OUTLINED_FUNCTION_33_23();
      sub_2379DBC9C(v315, v316);
      OUTLINED_FUNCTION_45_15();
      v317 = *(v47 + 1);
      v318 = v332;
      v317(v323, v332);
      v317(v324, v318);
      v319 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v319, v320);
      v317(v314, v318);
LABEL_48:
      v321 = v331;
      v322 = v361;
      *v331 = v360;
      *(v321 + 8) = v322;
LABEL_49:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void MLHandPoseClassifier.DataSource.extractKeypoints()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v25 = v20;
  v194 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0_26(v27, &v201);
  v188 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v31, &a10);
  v191 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v36 = OUTLINED_FUNCTION_20(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v39 = v38;
  v40 = sub_237C0602C();
  v41 = OUTLINED_FUNCTION_0_26(v40, &a15);
  v195 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_0();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v175 - v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_82_5();
  v50 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v196 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2_0();
  v55 = v54 - v53;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_0();
  v59 = v58 - v57;
  sub_237B8CDFC(v25, v58 - v57);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v180 = v48;
    v179 = v45;
    v181 = v39;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
    v72 = (v59 + v71[12]);
    v74 = *v72;
    v73 = v72[1];
    v182 = v74;
    v184 = v73;
    v75 = (v59 + v71[16]);
    v77 = *v75;
    v76 = v75[1];
    v183 = v77;
    v185 = v76;
    v78 = *(v59 + v71[20]);
    v79 = v196 + 32;
    v80 = OUTLINED_FUNCTION_13_11();
    v186 = v50;
    v82 = v81;
    v178 = v79;
    v177 = v83;
    (v83)(v80);
    v84 = v78;
    OUTLINED_FUNCTION_62_8();
    sub_237C05DFC();
    v85 = sub_237C05FFC();
    OUTLINED_FUNCTION_45_15();
    v86 = *(v25 + 8);
    v86(v22, v197);
    if (v85 == MEMORY[0x277D837D0])
    {
      v176 = v86;
      v193 = v22;
      OUTLINED_FUNCTION_48_14();
      sub_237C05DEC();
      v91 = v181;
      v92 = a10;
      sub_237B62FE0(v181);
      v88 = v92;
      if (v92)
      {

        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v93();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v197);
        sub_237B61F04(v91);
        v88 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_50();
        OUTLINED_FUNCTION_34_19();
        v163();
        v164 = v197;
        __swift_storeEnumTagSinglePayload(v91, 0, 1, v197);
        (*(v25 + 32))(v180, v91, v164);
        v165 = v180;
        (*(v25 + 16))(v193, v180, v164);

        OUTLINED_FUNCTION_36_4();
        sub_237C05E0C();
        v176(v165, v164);
      }
    }

    else
    {
      OUTLINED_FUNCTION_48_14();
      sub_237C05DFC();
      v87 = sub_237C05FFC();
      v86(v22, v197);
      if (v87 == MEMORY[0x277CC9318])
      {
        v176 = v86;
        v97 = v187;
        OUTLINED_FUNCTION_48_14();
        sub_237C05DEC();
        v98 = a10;
        sub_237B64134(v193);
        v88 = v98;
        v99 = v196;
        if (v98)
        {

          OUTLINED_FUNCTION_36_3();
          v100(v97, v189);
          v101 = v193;
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v102, v103, v104, v197);
          sub_237B61F04(v101);
          v88 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_36_3();
          v172(v97, v189);
          v173 = v197;
          __swift_storeEnumTagSinglePayload(v193, 0, 1, v197);
          v174 = v195;
          (*(v195 + 32))(v179, v193, v173);
          (*(v174 + 16))(v22, v179, v173);

          sub_237C05E0C();
          v176(v179, v173);
        }

        goto LABEL_25;
      }

      v88 = a10;
    }

    v99 = v196;
LABEL_25:
    v166 = v185;
    v167 = OUTLINED_FUNCTION_48_14();
    sub_237A384C8(v167, v168, v169);
    v170 = v184;
    if (!v88)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      *(inited + 32) = v182;
      *(inited + 40) = v170;
      *(inited + 48) = v84;
      *(inited + 56) = v82;
      *(inited + 64) = v183;
      *(inited + 72) = v166;

      OUTLINED_FUNCTION_19_15();
      sub_2379F2DA4();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_72_6();
      sub_237C05C8C();

      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_55_9();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();

      v177(v194, v55, v186);
      goto LABEL_28;
    }

    (*(v99 + 8))(v55, v186);

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    v63 = *(v59 + 24);
    v64 = *(v59 + 32);
    v65 = *(v59 + 40);
    v67 = *(v59 + 48);
    v66 = *(v59 + 56);
    v200 = *v59;
    v201 = v61;
    v68 = a10;
    sub_2379E0CC4(&v200, v67, v66);
    v69 = v200;
    v70 = v201;
    if (v68)
    {
      sub_2379DBC9C(v200, v201);

LABEL_27:

      goto LABEL_28;
    }

    v198 = v200;
    v199 = v201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v90 = swift_initStackObject();
    *(v90 + 16) = xmmword_237C0B680;
    a10 = v62;
    *(v90 + 32) = v62;
    *(v90 + 40) = v63;
    *(v90 + 48) = v67;
    *(v90 + 56) = v66;
    *(v90 + 64) = v64;
    *(v90 + 72) = v65;
    sub_2379DBCF4(v69, v70);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v105, v106, v107, v108, v109, v110, v111, v112, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4(v113, v114, v115, v116, v117, v118, v119, v120, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);

    if ((v201 & 1) == 0)
    {
      v129 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v129, v130);
      sub_237B6C588();
      v131 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v131, v132);
    }

    sub_237B6C670(v121, v122, v123, v124, v125, v126, v127, v128, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
    OUTLINED_FUNCTION_15_37();
    sub_237B6DAB4(v67, v66, v133, 0xE900000000000073, v134, v135, v136, v137, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);

    if ((v201 & 1) == 0)
    {
      v146 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v146, v147);
      sub_237B6C588();
      v148 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v148, v149);
    }

    sub_237B6C670(v138, v139, v140, v141, v142, v143, v144, v145, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194);
    OUTLINED_FUNCTION_19_17();
    sub_237B6DAB4(v64, v65, v150, 0xE500000000000000, v151, v152, v153, v154, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186);

    v155 = v201;
    v156 = v200;
    if ((v201 & 1) == 0)
    {
      v157 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v157, v158);
      sub_237B6C588();
      v159 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v159, v160);
    }

    v198 = v156;
    v199 = v155;
    v161 = OUTLINED_FUNCTION_30();
    sub_2379DBCF4(v161, v162);
    sub_237A70ED4(&v198, v194);
    sub_2379DBC9C(v156, v155);
  }

  else
  {
    _s16FeatureExtractorCMa_0();
    v89 = a10;
    sub_237BA586C(v25, 0, &v200);
    if (!v89)
    {
      v198 = v200;
      v199 = v201;
      sub_237A70ED4(&v198, v194);
    }

    sub_237A9A80C(v59);
  }

LABEL_28:
  OUTLINED_FUNCTION_73();
}

void MLHandPoseClassifier.DataSource.gatherAnnotatedFileNames()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v23;
  a20 = v24;
  v265 = v21;
  v270 = v20;
  v263 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v26, &a13);
  v251 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_0_26(v30, &a16);
  v254 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v33);
  v34 = sub_237C05FAC();
  v35 = OUTLINED_FUNCTION_0_26(v34, &a18);
  v247 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v38 - v37);
  v39 = sub_237C05E5C();
  v40 = OUTLINED_FUNCTION_20(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v42 - v41);
  v43 = sub_237C05E9C();
  v44 = OUTLINED_FUNCTION_20(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_0();
  v259 = v46 - v45;
  v47 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v269 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_18_0();
  v266 = (v50 - v51);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v246 - v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_138();
  v258 = v57;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v59);
  v60 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_18_0();
  v66 = v64 - v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_82_5();
  v275 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v264 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_138();
  v72 = v71;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  v267 = v74;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_138();
  v268 = v76;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_138();
  *&v261 = v78;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_138();
  v272 = v80;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_138();
  *&v271 = v82;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_58();
  *&v260 = v84;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_0();
  v88 = v87 - v86;
  sub_237B8CDFC(v270, v87 - v86);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v136 = v264;
      v137 = OUTLINED_FUNCTION_36_4();
      v138(v137);
      sub_237C0821C();
      OUTLINED_FUNCTION_62_8();
      v139 = v265;
      sub_237A5C58C();
      if (v139)
      {
        (*(v62 + 8))(v66, v60);
        v131 = OUTLINED_FUNCTION_36_4();
        goto LABEL_16;
      }

      v205 = v140;
      (*(v62 + 8))(v66, v60);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v206 = sub_237C0910C();
      v207 = 0;
      OUTLINED_FUNCTION_16_30();
      v253 = v208;
      v265 = 0;
      v262 = v47;
      v254 = v205;
      OUTLINED_FUNCTION_70_6(v209);
      if (v60)
      {
LABEL_44:
        OUTLINED_FUNCTION_45_14();
        goto LABEL_50;
      }

LABEL_45:
      v211 = v207;
      while (1)
      {
        v207 = v211 + 1;
        if (__OFADD__(v211, 1))
        {
          goto LABEL_70;
        }

        if (v207 >= v54)
        {
          break;
        }

        ++v211;
        if (*(v250 + 8 * v207))
        {
          OUTLINED_FUNCTION_66_8();
LABEL_50:
          v212 = v210 | (v207 << 6);
          v213 = *(v205 + 56);
          v214 = (*(v205 + 48) + 16 * v212);
          v215 = v214[1];
          *&v260 = *v214;
          v216 = *(v213 + 8 * v212);
          if (*(v216 + 16))
          {
            v257 = v212;
            v258 = v60;
            v259 = v207;
            v273 = MEMORY[0x277D84F90];
            v256 = v215;

            OUTLINED_FUNCTION_72_8();
            OUTLINED_FUNCTION_21_34();
            do
            {
              v217 = OUTLINED_FUNCTION_35_18();
              v218(v217);
              v219 = v272;
              sub_237C0595C();
              v220 = sub_237C05A9C();
              v221 = OUTLINED_FUNCTION_30_23(v220);
              v219(v221);
              (v219)(v206, v136);
              OUTLINED_FUNCTION_60_13();
              if (v197)
              {
                OUTLINED_FUNCTION_46_16();
                v216 = v273;
              }

              OUTLINED_FUNCTION_28_21();
            }

            while (!v97);

            v206 = v252;
            v60 = v258;
            v207 = v259;
            v54 = v251;
            v212 = v257;
          }

          else
          {

            v216 = MEMORY[0x277D84F90];
          }

          OUTLINED_FUNCTION_41_14((v212 >> 3) & 0x1FFFFFFFFFFFFFF8);
          v223 = (v222 + 16 * v212);
          *v223 = v260;
          v223[1] = v224;
          *(*(v206 + 56) + 8 * v212) = v216;
          v225 = *(v206 + 16);
          v203 = __OFADD__(v225, 1);
          v226 = v225 + 1;
          v205 = v254;
          if (!v203)
          {
            *(v206 + 16) = v226;
            v47 = v262;
            v136 = v264;
            if (v60)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }

LABEL_72:
          __break(1u);
          JUMPOUT(0x237B90064);
        }
      }

      OUTLINED_FUNCTION_20_32();
      (*v267)(v261, v275);
      goto LABEL_65;
    case 2u:
      v126 = v264;
      v127 = OUTLINED_FUNCTION_36_4();
      v128(v127);
      sub_237C0821C();
      v129 = v265;
      sub_237A5D608();
      if (v129)
      {
        (*(v62 + 8))(v22, v60);
        v131 = OUTLINED_FUNCTION_62_8();
LABEL_16:
        v132(v131);
      }

      else
      {
        v180 = v130;
        (*(v62 + 8))(v22, v60);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
        v181 = sub_237C0910C();
        v182 = 0;
        OUTLINED_FUNCTION_16_30();
        v254 = v183;
        v265 = 0;
        v262 = v47;
        v253 = v180;
        OUTLINED_FUNCTION_70_6(v184);
        if (v60)
        {
LABEL_26:
          OUTLINED_FUNCTION_45_14();
          goto LABEL_32;
        }

LABEL_27:
        v186 = v182;
        while (1)
        {
          v182 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          if (v182 >= v54)
          {
            break;
          }

          ++v186;
          if (*(v250 + 8 * v182))
          {
            OUTLINED_FUNCTION_66_8();
LABEL_32:
            v187 = v185 | (v182 << 6);
            v188 = *(v180 + 56);
            v189 = (*(v180 + 48) + 16 * v187);
            v190 = v189[1];
            v259 = *v189;
            *&v261 = v187;
            v191 = *(v188 + 8 * v187);
            if (*(v191 + 16))
            {
              v257 = v60;
              v258 = v182;
              v273 = MEMORY[0x277D84F90];
              v256 = v190;

              OUTLINED_FUNCTION_72_8();
              OUTLINED_FUNCTION_21_34();
              do
              {
                v192 = OUTLINED_FUNCTION_35_18();
                v193(v192);
                v194 = v272;
                sub_237C0595C();
                v195 = sub_237C05A9C();
                v196 = OUTLINED_FUNCTION_30_23(v195);
                v194(v196);
                (v194)(v181, v126);
                OUTLINED_FUNCTION_60_13();
                if (v197)
                {
                  OUTLINED_FUNCTION_46_16();
                  v191 = v273;
                }

                OUTLINED_FUNCTION_28_21();
              }

              while (!v97);

              v180 = v253;
              v181 = v252;
              v182 = v258;
              v54 = v251;
              v60 = v257;
            }

            else
            {

              v191 = MEMORY[0x277D84F90];
            }

            OUTLINED_FUNCTION_41_14((v261 >> 3) & 0x1FFFFFFFFFFFFFF8);
            v200 = (v198 + 16 * v199);
            *v200 = v259;
            v200[1] = v201;
            *(*(v181 + 56) + 8 * v199) = v191;
            v202 = *(v181 + 16);
            v203 = __OFADD__(v202, 1);
            v204 = v202 + 1;
            if (!v203)
            {
              *(v181 + 16) = v204;
              v47 = v262;
              v126 = v264;
              if (v60)
              {
                goto LABEL_26;
              }

              goto LABEL_27;
            }

LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        OUTLINED_FUNCTION_20_32();
        (*v267)(v260, v275);
LABEL_65:
        __swift_storeEnumTagSinglePayload(v47, 0, 1, v54);
      }

      goto LABEL_68;
    case 3u:
      sub_237A9A80C(v88);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v47);
      goto LABEL_68;
    case 4u:
      v262 = v47;
      v119 = *v88;
      v47 = *(v88 + 8);
      v272 = *(v88 + 32);
      v273 = v119;
      LOBYTE(v274) = v47;
      v120 = OUTLINED_FUNCTION_13_11();
      sub_2379DBCF4(v120, v121);
      sub_237A70ED4(&v273, v54);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v123 = OUTLINED_FUNCTION_75_2(v122);
      v271 = xmmword_237C0B660;
      *(v123 + 16) = xmmword_237C0B660;
      v124 = MEMORY[0x277D837D0];
      *(v123 + 32) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_29_18();
      v125 = v265;
      sub_2379F30EC();
      if (v125)
      {
        v176 = OUTLINED_FUNCTION_25_28();
        v177(v176);

        v178 = OUTLINED_FUNCTION_13_11();
        sub_2379DBC9C(v178, v179);

        goto LABEL_62;
      }

      v175 = OUTLINED_FUNCTION_75_2(v122);
      *(v175 + 16) = v271;
      *(v175 + 32) = v124;
      sub_2379F30EC();

      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();
      v228 = OUTLINED_FUNCTION_13_11();
      sub_2379DBC9C(v228, v229);

      v230 = OUTLINED_FUNCTION_44_15();
      v231(v230);
      goto LABEL_65;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v141, v142, v143, v47);
      (*(v269 + 8))(v88, v47);
      goto LABEL_68;
    case 6u:
      v144 = *(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0) + 48));
      OUTLINED_FUNCTION_47_14();
      v272 = v145;
      v276 = v146;
      v147 = v269;
      v54 = v266;
      v148 = OUTLINED_FUNCTION_36_4();
      v270 = v149;
      (v149)(v148);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v151 = OUTLINED_FUNCTION_75_2(v150);
      v271 = xmmword_237C0B660;
      *(v151 + 16) = xmmword_237C0B660;
      *(v151 + 32) = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_29_18();
      OUTLINED_FUNCTION_138_0();
      v152 = v265;
      sub_2379F30EC();
      if (!v152)
      {
        v268 = v144;
        v262 = v47;

        v227 = OUTLINED_FUNCTION_75_2(v150);
        *(v227 + 16) = v271;
        *(v227 + 32) = MEMORY[0x277D837D0];
        v47 = v276;
        sub_2379F30EC();

        OUTLINED_FUNCTION_8_45();
        OUTLINED_FUNCTION_50_10();
        sub_237C05C8C();

        sub_237C05C8C();

        v232 = OUTLINED_FUNCTION_44_15();
        (v270)(v232);
        goto LABEL_65;
      }

      (*(v147 + 8))(v54, v47);

LABEL_62:

      goto LABEL_68;
    default:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
      v90 = *(v89 + 48);
      v266 = *(v88 + *(v89 + 64));
      OUTLINED_FUNCTION_47_14();
      v270 = v92;
      *&v271 = v91;
      v272 = v93;
      v94 = *(v264 + 32);
      v94(v268, v88, v275);
      v95 = v267;
      v94(v267, v88 + v90, v275);
      v97 = sub_237C0597C() == 1852797802 && v96 == 0xE400000000000000;
      v262 = v47;
      if (v97)
      {
      }

      else
      {
        v98 = sub_237C0929C();

        if ((v98 & 1) == 0)
        {
          (*(v264 + 16))(v256, v95, v275);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v99 = swift_allocObject();
          v260 = xmmword_237C0B670;
          *&v261 = v99;
          *(v99 + 16) = xmmword_237C0B670;
          v100 = v266;
          v101 = v270;
          *(v99 + 32) = v266;
          *(v99 + 40) = v101;
          v102 = v101;
          v103 = v272;
          *(v99 + 48) = v271;
          *(v99 + 56) = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
          OUTLINED_FUNCTION_64_6();
          v105 = *(v104 + 72);
          v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
          v108 = swift_allocObject();
          *(v108 + 16) = v260;
          v109 = (v108 + v107);
          v110 = MEMORY[0x6E6F73A2];
          *v109 = v100;
          v109[1] = v102;
          v111 = *MEMORY[0x277CE1920];
          v112 = *(v247 + 104);
          v112(v108 + v107 + v110, v111, v257);
          v113 = (v109 + v105);
          v114 = MEMORY[0x6E6F73A2];
          v115 = v272;
          *v113 = v271;
          v113[1] = v115;
          v116 = v257;
          v112(v113 + v114, v111, v257);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_237C085AC();
          sub_237B9068C(&unk_284ABFD58);
          sub_237B9068C(&unk_284ABFE18);
          sub_237B9068C(&unk_284ABFE78);
          v117 = v248;
          v112(v248, *MEMORY[0x277CE1918], v116);
          sub_237C05E4C();
          OUTLINED_FUNCTION_69_7();
          v118 = v265;
          sub_237C05CAC();
          if (v118)
          {
            goto LABEL_23;
          }

          goto LABEL_67;
        }
      }

      v153 = *(v264 + 16);
      v246 = v72;
      v153(v72, v95, v275);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v154 = swift_allocObject();
      v261 = xmmword_237C0B670;
      *(v154 + 16) = xmmword_237C0B670;
      v155 = v266;
      v156 = v270;
      *(v154 + 32) = v266;
      *(v154 + 40) = v156;
      v157 = v156;
      v158 = v272;
      *(v154 + 48) = v271;
      *(v154 + 56) = v158;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D630, &qword_237C143C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D638, &qword_237C143C8);
      OUTLINED_FUNCTION_64_6();
      *&v260 = *(v159 + 72);
      v161 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v162 = swift_allocObject();
      *(v162 + 16) = v261;
      v163 = (v162 + v161);
      v164 = MEMORY[0x6E6F73A2];
      *v163 = v155;
      v163[1] = v157;
      v165 = *MEMORY[0x277CE1938];
      v166 = sub_237C05FDC();
      OUTLINED_FUNCTION_4();
      v168 = *(v167 + 104);
      v168(v163 + v164, v165, v166);
      v169 = (v163 + v260);
      v170 = v272;
      v171 = MEMORY[0x6E6F73A2];
      *v169 = v271;
      v169[1] = v170;
      v168(v169 + v171, v165, v166);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_237C085AC();
      sub_237C05E8C();
      v172 = v258;
      v173 = v265;
      sub_237C05CCC();
      if (v173)
      {
LABEL_23:
        v174 = *(v264 + 8);
        v174(v267, v275);

        v174(v268, v275);
        goto LABEL_68;
      }

      v117 = v172;
LABEL_67:
      v269 = *(v269 + 32);
      v233 = v249;
      (v269)(v249, v117, v262);
      sub_237C05DEC();
      v273 = 0;
      v274 = 0xE000000000000000;
      sub_237B85648();
      v234 = v253;
      sub_237C05EAC();
      OUTLINED_FUNCTION_36_3();
      v235 = OUTLINED_FUNCTION_56_9();
      v237 = v236(v235);
      MEMORY[0x28223BE20](v237);
      OUTLINED_FUNCTION_17_14();
      v238 = v268;
      *(v239 - 16) = v268;
      sub_2379E20D4(sub_237B909FC);

      OUTLINED_FUNCTION_36_4();
      sub_237C05E1C();
      OUTLINED_FUNCTION_8_45();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();

      OUTLINED_FUNCTION_36_3();
      v240(v234, v255);
      v241 = *(v264 + 8);
      v241(v267, v275);
      v242 = v233;
      v243 = v262;
      (v269)(v263, v242, v262);
      v244 = OUTLINED_FUNCTION_85();
      __swift_storeEnumTagSinglePayload(v244, v245, 1, v243);
      v241(v238, v275);
LABEL_68:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B90080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_237C0596C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_237C05ADC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  v25[1] = *a1;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D0], v7, v16);
  (*(v12 + 16))(v6, v26, v11);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);

  sub_237C05ABC();
  sub_237C0595C();
  v19 = *(v12 + 8);
  v19(v18, v11);
  v20 = sub_237C05A9C();
  v22 = v21;
  result = (v19)(v14, v11);
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_237B902FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_237C05ADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05A2C();
  v7 = sub_237C05A9C();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

void MLHandPoseClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v50 = v6;
  v8 = v7;
  v57 = v9;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_62_8();
  sub_237B8CDFC(v14, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v39 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710) + 48));
    v29 = v39[1];
    v48 = *v39;

    sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    v31 = (*(v40 + 8))(v13);
LABEL_5:
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v31, v32, v33, v34, v35, v36, v37, v38, v46, v48, v50, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8]);
    if (v1)
    {
    }

    else
    {
      v44 = v55;
      v45 = v56;
      sub_237B03618(v51, v54);
      sub_237B320AC(v8, v44, v45, v49, v29, v5, v3, v57, v54);

      sub_2379DBC9C(v44, v45);
      memcpy(v53, v54, sizeof(v53));
      sub_237B07C38(v53);
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = *v13;
    v46 = v0;
    v25 = v8;
    v26 = v5;
    v27 = v3;
    v28 = *(v13 + 8);
    v29 = *(v13 + 24);
    v48 = *(v13 + 16);

    v30 = v28;
    v3 = v27;
    v5 = v26;
    v8 = v25;
    v1 = v0;
    sub_2379DBC9C(v24, v30);
    goto LABEL_5;
  }

  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(EnumCaseMultiPayload, v17, v18, v19, v20, v21, v22, v23, v46, v47, v50, v53[0], v53[1], v53[2], v53[3], v53[4], v53[5], v53[6], v53[7], v53[8]);
  if (!v0)
  {
    v41 = v55;
    v42 = v8;
    v43 = v56;
    sub_237B03618(v52, v54);
    sub_237B064E0(v42, v41, v43, v5, v3, v57, v54);
    sub_2379DBC9C(v41, v43);
    memcpy(v53, v54, sizeof(v53));
    sub_237B07C38(v53);
  }

  sub_237A9A80C(v13);
LABEL_11:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B9068C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D4A8, &qword_237C13C78);
  result = sub_237C08EAC();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_237C093CC();

    sub_237C0878C();
    result = sub_237C0940C();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_237C0929C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_237B9081C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}