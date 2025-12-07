uint64_t OUTLINED_FUNCTION_163()
{
}

__n128 OUTLINED_FUNCTION_168_0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_184()
{

  return sub_237C075FC();
}

uint64_t OUTLINED_FUNCTION_185()
{

  return sub_237C0683C();
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_2379E8624(v0 - 192, v0 - 272);
}

uint64_t OUTLINED_FUNCTION_187(uint64_t a1)
{

  return sub_237C079DC();
}

uint64_t sub_237BBA7D8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB50, &qword_237C15C38);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BBA900);
}

uint64_t sub_237BBA900()
{
  sub_2379F1A00(v0[8], v0[14]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379F1A64(v0[14], v0[12]);
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_237BBAAA0;
    v2 = v0[11];

    return sub_2379EF7A4(v2);
  }

  else
  {
    v4 = v0[7];
    v5 = v0[8];
    [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    v6 = sub_237C06D5C();
    v7 = MEMORY[0x277CC5020];
    v0[5] = v6;
    v0[6] = v7;
    __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_237C06D4C();
    OUTLINED_FUNCTION_0_88();
    sub_237BBAD28(v5, v8);
    sub_237A1FCF0(v0 + 1, v4);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_237BBAAA0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_237BBAC8C;
  }

  else
  {
    v2 = sub_237BBABB4;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_237BBABB4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v6[3] = v3;
  v6[4] = sub_237BBAD88();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(v4 + 32))(boxed_opaque_existential_0, v1, v3);
  OUTLINED_FUNCTION_0_88();
  sub_237BBAD28(v5, v8);
  OUTLINED_FUNCTION_1_86();
  sub_237BBAD28(v2, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_237BBAC8C()
{
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_0_88();
  sub_237BBAD28(v2, v3);
  OUTLINED_FUNCTION_1_86();
  sub_237BBAD28(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_237BBAD28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_237BBAD88()
{
  result = qword_27DE9DB58;
  if (!qword_27DE9DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9DB50, &qword_237C15C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB58);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237BBAE00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_237BBAE40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237BBAEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_237BBD3A8(a3, v25 - v11);
  v13 = sub_237C08A3C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2379D9054(v12, &qword_27DE9AA98, &unk_237C0DEB0);
  }

  else
  {
    sub_237C08A2C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_237C089FC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_237C0876C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2379D9054(a3, &qword_27DE9AA98, &unk_237C0DEB0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2379D9054(a3, &qword_27DE9AA98, &unk_237C0DEB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_237BBB194()
{
  OUTLINED_FUNCTION_9();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_20(v4);
  v0[5] = swift_task_alloc();
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_20(v5);
  v0[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[7] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[8] = v7;
  v0[9] = swift_task_alloc();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237BBB2A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for MLImageClassifier(0);
  v8 = v7[6];
  *(v0 + 104) = v8;
  v9 = (v5 + v8);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v2);
  sub_2379E5C70(v2);
  (*(v1 + 8))(v2, v4);
  *v9 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v10 = v7[7];
  *(v0 + 108) = v10;
  sub_2379E8AF0();
  v11 = swift_allocError();
  *v12 = 0xD0000000000000C0;
  v12[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v11, v12);
  *(v5 + v10) = v13;
  swift_storeEnumTagMultiPayload();
  *(v0 + 112) = v7[8];
  OUTLINED_FUNCTION_10_46();
  sub_237BBD244(v6, v5 + v14, v15);
  sub_237A9E314(v18, v5 + 8);
  MLImageClassifier.ModelParameters.algorithm.getter(v3);
  sub_237BBC76C(v3, v19, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_237BBB4AC;

  return sub_237A636DC();
}

uint64_t sub_237BBB4AC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237BBB5C0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[12];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[2];
  sub_237AA27EC(v0[4]);
  OUTLINED_FUNCTION_9_54();
  sub_237BBC8F8(v3, v5);
  OUTLINED_FUNCTION_0_89();
  sub_237BBC8F8(v2, v6);
  *v4 = v1;

  OUTLINED_FUNCTION_8();

  return v7();
}

uint64_t sub_237BBB670()
{
  v2 = *(v0 + 108);
  v1 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  sub_237AA27EC(*(v0 + 32));
  sub_237BBC8F8(v5, _s5ModelVMa_1);
  OUTLINED_FUNCTION_0_89();
  sub_237BBC8F8(v4, v7);
  sub_237AA27EC(v6 + 8);
  sub_237BBC8F8(v6 + v3, type metadata accessor for MLClassifierMetrics);
  sub_237BBC8F8(v6 + v2, type metadata accessor for MLClassifierMetrics);
  sub_237BBC8F8(v6 + v1, _s5ModelVMa_1);

  OUTLINED_FUNCTION_8();

  return v8();
}

uint64_t MLImageClassifier.init(checkpoint:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v139 = a1;
  v3 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v116 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v6);
  v117 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v9);
  v10 = _s5ModelVMa_1(0);
  v11 = OUTLINED_FUNCTION_1(v10);
  v113 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v13);
  v114 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  v129 = v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v126 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0(&v109 - v19);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C460, &unk_237C16A10);
  OUTLINED_FUNCTION_0();
  v123 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v120 = v22 - v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v25);
  v26 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v27 = OUTLINED_FUNCTION_20(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18_0();
  v112 = v28 - v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  v130 = v31;
  v122 = _s10ClassifierVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v33);
  v34 = _s20PersistentParametersVMa_5(0);
  v35 = OUTLINED_FUNCTION_20(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_22();
  v135 = v36;
  v136 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18_0();
  v131 = (v40 - v41);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v42);
  v44 = &v109 - v43;
  MEMORY[0x28223BE20](v45);
  v133 = &v109 - v46;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_58();
  v134 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v51 = v50;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v52);
  v54 = &v109 - v53;
  v55 = type metadata accessor for MLImageClassifier(0);
  v56 = (a2 + *(v55 + 24));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v54);
  sub_2379E5C70(v54);
  (*(v51 + 8))(v54, v49);
  *v56 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v137 = v56;
  swift_storeEnumTagMultiPayload();
  v111 = v55;
  v57 = *(v55 + 28);
  sub_2379E8AF0();
  v58 = swift_allocError();
  *v59 = 0xD0000000000000C0;
  v59[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v58, v59);
  *(a2 + v57) = v60;
  v141 = a2;
  v138 = v57;
  v61 = v139;
  swift_storeEnumTagMultiPayload();
  switch(*(v61 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v62 = sub_237C0929C();

      if ((v62 & 1) == 0)
      {
        v71 = swift_allocError();
        *v72 = 0xD00000000000003CLL;
        v72[1] = 0x8000000237C1EDA0;
        OUTLINED_FUNCTION_23_3(v71, v72);
        swift_willThrow();
        OUTLINED_FUNCTION_1_87();
        goto LABEL_7;
      }

LABEL_4:
      v63 = v134;
      sub_237C05A5C();
      sub_237C05A2C();
      v64 = v133;
      sub_237C05A3C();
      v65 = *(v38 + 8);
      v66 = v44;
      v67 = v63;
      v68 = v136;
      v65(v66, v136);
      v69 = v131;
      (*(v38 + 16))(v131, v67, v68);
      v70 = v132;
      sub_237B85F14(v69, v135);
      if (v70)
      {
        OUTLINED_FUNCTION_1_87();
        v65(v64, v68);
        v65(v67, v68);
LABEL_7:
        v73 = v141;
LABEL_8:
        sub_237BBC8F8(v137, type metadata accessor for MLClassifierMetrics);
        return sub_237BBC8F8(v73 + v138, type metadata accessor for MLClassifierMetrics);
      }

      v131 = v65;
      v132 = v38 + 8;
      v73 = v141;
      sub_237B85BBC();
      sub_237A9E314((v73 + 1), v140);
      MLImageClassifier.ModelParameters.algorithm.getter(v130);
      sub_237A0C928();
      v75 = v121;
      sub_237C072AC();
      v76 = v124;
      sub_237C0725C();
      v77 = v123;
      v78 = *(v123 + 16);
      v110 = 0;
      v78(v120, v75, v76);
      v79 = v125;
      sub_237C0730C();
      (*(v77 + 8))(v75, v76);
      sub_237AA27EC(v140);
      v80 = v128;
      (*(v126 + 32))(v128, v79, v127);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_89();
      sub_237BBC8F8(v130, v81);
      sub_237BBC364();
      v82 = v129;
      v83 = v110;
      sub_237C0734C();
      if (v83)
      {
        OUTLINED_FUNCTION_1_87();
        v84 = v134;
        v97 = v131;
        OUTLINED_FUNCTION_8_52();
        sub_237BBC8F8(v80, v98);
        OUTLINED_FUNCTION_12_51();
        v99 = v136;
        v97(v64, v136);
        v97(v84, v99);
        sub_237AA27EC((v73 + 1));
        goto LABEL_8;
      }

      v85 = v112;
      MLImageClassifier.ModelParameters.algorithm.getter(v112);
      v86 = v85;
      v87 = v119;
      sub_237BBC76C(v86, v119, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      OUTLINED_FUNCTION_10_46();
      v88 = v115;
      sub_237BBD244(v82, v115, v89);
      v90 = v87;
      v91 = v118;
      sub_237BBD244(v87, v118, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      v92 = (*(v113 + 80) + 16) & ~*(v113 + 80);
      v93 = (v114 + *(v116 + 80) + v92) & ~*(v116 + 80);
      v94 = swift_allocObject();
      OUTLINED_FUNCTION_11_48();
      sub_237BBC76C(v88, v95 + v92, v96);
      sub_237BBC76C(v91, v94 + v93, type metadata accessor for MLImageClassifier.FeatureExtractorType);
      sub_2379DD56C();
      v101 = v100;

      OUTLINED_FUNCTION_1_87();
      OUTLINED_FUNCTION_0_89();
      sub_237BBC8F8(v90, v102);
      OUTLINED_FUNCTION_8_52();
      sub_237BBC8F8(v128, v103);
      OUTLINED_FUNCTION_12_51();
      v104 = v136;
      v105 = v131;
      v131(v133, v136);
      v105(v134, v104);
      *v141 = v101;
      OUTLINED_FUNCTION_11_48();
      return sub_237BBC76C(v129, v107 + v106, v108);
  }
}

unint64_t sub_237BBC364()
{
  result = qword_27DE9DB60;
  if (!qword_27DE9DB60)
  {
    _s10ClassifierVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB60);
  }

  return result;
}

uint64_t sub_237BBC3BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237BBC45C;

  return sub_237A636DC();
}

uint64_t sub_237BBC45C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v10);
  }
}

uint64_t sub_237BBC594()
{
  v1 = _s5ModelVMa_1(0);
  OUTLINED_FUNCTION_1(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8);
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = &qword_27DE9A780;
    v9 = &unk_237C0A700;
  }

  else
  {
    v8 = &qword_27DE9A788;
    v9 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_4();
  (*(v10 + 8))(v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    (*(v11 + 8))(v0 + v7);
    type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237BBC76C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237BBC7CC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = _s5ModelVMa_1(0);
  OUTLINED_FUNCTION_1(v4);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_20(v5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2379D6854;

  return sub_237BBC3BC(v3);
}

uint64_t sub_237BBC8F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void static MLImageClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB68, &qword_237C15CC8);
    OUTLINED_FUNCTION_91(v4);
    sub_237BECFD4();
  }
}

void static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  sub_237B82504();
  if (!v3)
  {
    sub_237A9E314(a2, v19);
    OUTLINED_FUNCTION_2_82();
    sub_237BBD244(a3, v13, v14);
    v15 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
    OUTLINED_FUNCTION_91(v15);
    sub_237BF7A98();
    v19[3] = v15;
    v19[4] = &off_284AC6A38;
    v19[0] = v16;
    OUTLINED_FUNCTION_2_82();
    sub_237BBD244(a3, v10, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB70, &qword_237C15CD0);
    OUTLINED_FUNCTION_91(v18);
    sub_2379E4408(v19, v10, 12);
  }
}

void static MLImageClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB68, &qword_237C15CC8);
  OUTLINED_FUNCTION_91(v1);

  sub_237BECFD4();
}

void static MLImageClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  OUTLINED_FUNCTION_2_82();
  sub_237BBD244(a1, v10, v11);
  v12 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237BF793C(v10);
  if (!v1)
  {
    v17[3] = v12;
    v17[4] = &off_284AC6A38;
    v17[0] = v13;
    OUTLINED_FUNCTION_2_82();
    sub_237BBD244(a1, v7, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB70, &qword_237C15CD0);
    OUTLINED_FUNCTION_91(v15);
    sub_2379E4408(v17, v7, 12);
  }
}

uint64_t sub_237BBCC84(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB78, &qword_237C15CD8);
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
    return sub_2379D9054(v12, &qword_27DE9DB78, &qword_237C15CD8);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
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

    sub_237BBAEC8(0, 0, v16, &unk_237C15CE8, v21);
  }
}

uint64_t sub_237BBCE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB78, &qword_237C15CD8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BBCF2C);
}

uint64_t sub_237BBCF2C()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237BBCFCC;

  return sub_237AA1DB4();
}

uint64_t sub_237BBCFCC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237BBD0CC()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  sub_237BBD6C0(v2, v3);
  OUTLINED_FUNCTION_24_34();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9DB78, &qword_237C15CD8);

  OUTLINED_FUNCTION_8();

  return v4();
}

uint64_t sub_237BBD18C()
{
  OUTLINED_FUNCTION_33();
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_34();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9DB78, &qword_237C15CD8);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237BBD244(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237BBD2A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237BBD2EC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237BBCE70(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_237BBD3A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237BBD418(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_237BBD510;

  return v6(a1);
}

uint64_t sub_237BBD510()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237BBD5F4()
{
  OUTLINED_FUNCTION_49();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_38(v1);

  return v4(v3);
}

uint64_t sub_237BBD688()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237BBD6C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DB78, &qword_237C15CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_87()
{

  return sub_237BBC8F8(v0, type metadata accessor for MLCheckpoint);
}

uint64_t OUTLINED_FUNCTION_12_51()
{
  v2 = *(v0 - 208);

  return sub_237BBC8F8(v2, _s20PersistentParametersVMa_5);
}

uint64_t OUTLINED_FUNCTION_24_34()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_237BBD6C0(v2, v3);
}

uint64_t sub_237BBD85C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void sub_237BBD8CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_1_88(a2);
}

unint64_t sub_237BBD964()
{
  result = qword_27DE9DB80;
  if (!qword_27DE9DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB80);
  }

  return result;
}

unint64_t sub_237BBD9BC()
{
  result = qword_27DE9DB88;
  if (!qword_27DE9DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB88);
  }

  return result;
}

unint64_t sub_237BBDACC()
{
  result = qword_27DE9DB90;
  if (!qword_27DE9DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB90);
  }

  return result;
}

unint64_t sub_237BBDB24()
{
  result = qword_27DE9DB98;
  if (!qword_27DE9DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DB98);
  }

  return result;
}

uint64_t sub_237BBDBD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MLHandPoseClassifier.ImageAugmentationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237BBDC10@<X0>(uint64_t *a1@<X8>)
{
  result = MLHandPoseClassifier.ImageAugmentationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237BBDD1C@<X0>(void (*a1)(uint64_t *, __n128)@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  a1(&v14, v9);
  swift_storeEnumTagMultiPayload();
  return sub_237BA0F20(v11, a4, a2, a3);
}

uint64_t MLUntypedColumn.init<A>(_:)()
{
  OUTLINED_FUNCTION_59_14();
  v2 = sub_237BBDC94(sub_237BBF8C0);
  OUTLINED_FUNCTION_42_17(v2, v3);
  return (*(v4 + 8))(v1, v0);
}

{
  OUTLINED_FUNCTION_59_14();
  v2 = sub_237BBDC94(sub_237BBFC14);
  OUTLINED_FUNCTION_42_17(v2, v3);
  return (*(v4 + 8))(v1, v0);
}

void MLUntypedColumn.type.getter()
{
  OUTLINED_FUNCTION_29_21();
  if (v1)
  {
    v2 = 6;
  }

  else
  {

    sub_237A60248(&v3);
    OUTLINED_FUNCTION_14_39();
  }

  *v0 = v2;
}

uint64_t MLUntypedColumn.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_237BC0018(a1, a2, a3, a4, 1, a5);
}

{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;

  sub_237BBFA84(1, sub_237BC0DD0, v10, a3, a4, a5);
}

uint64_t MLUntypedColumn.count.getter()
{
  if (*(v0 + 8))
  {
    return -1;
  }

  v2 = sub_237A2F128();
  v3 = OUTLINED_FUNCTION_88();
  sub_2379DBC9C(v3, v4);
  return v2;
}

void MLUntypedColumn.ints.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

void MLUntypedColumn.subscript.getter()
{
  OUTLINED_FUNCTION_29_21();
  if (v2)
  {
    v3 = 0uLL;
    v4 = 6;
  }

  else
  {
    v5 = v1;

    sub_237A607E0(v5, &v8);
    v6 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v6, v7);
    v3 = v8;
    v4 = v9;
  }

  *v0 = v3;
  *(v0 + 16) = v4;
}

{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (, v1 = sub_237A2F128(), v2 = OUTLINED_FUNCTION_4_26(), sub_2379DBC9C(v2, v3), v1 < 0))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A365A8();
    sub_237C088CC();
    MLUntypedColumn.subscript.getter(v4, v5);
  }
}

void MLUntypedColumn.strings.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3 != 2))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

void sub_237BBE190()
{
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_45_19();
  if (v3)
  {
    v4 = v0;
    v5 = 1;
LABEL_7:
    OUTLINED_FUNCTION_62_11(v5);
    OUTLINED_FUNCTION_25_9();
    return;
  }

  v6 = *v1;
  if (*(v1 + 8))
  {
    v7 = v6;
    v5 = 1;
    goto LABEL_7;
  }

  v8 = v2;
  v9 = *(v0[2] + 16);
  v10 = *(v6[2] + 16);
  v11 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v11, v12);
  v13 = OUTLINED_FUNCTION_3_22();
  sub_2379DBCF4(v13, v14);
  v15 = sub_237B13164(v9, v8, v10);
  if (v15)
  {
    v16 = type metadata accessor for CMLColumn();
    v17 = OUTLINED_FUNCTION_12_18(v16);
    *(v17 + 16) = v15;
    v18 = type metadata accessor for _UntypedColumn();
    *(OUTLINED_FUNCTION_12_18(v18) + 16) = v17;
    v19 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v19, v20);
    v21 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_70_9(v21, v22);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237BBE2D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    *&v24 = *a1;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      OUTLINED_FUNCTION_69_10();
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
      *v18 = v3;
    }

    v17 = 1;
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = OUTLINED_FUNCTION_41_17();
    v9 = v8(v7);
    OUTLINED_FUNCTION_58_14(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21.n128_i64[0], v21.n128_i64[1], v22, v23, v24);
    sub_237A60280(a3, v3, &v21);
    sub_2379E8CE8(v21.n128_u64[0], v21.n128_u64[1], v22);
    OUTLINED_FUNCTION_47_20();
  }

  OUTLINED_FUNCTION_62_11(v17);
}

void sub_237BBE41C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*(a2 + 8))
  {
    *&v24 = *a2;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (sub_237C0925C())
    {
      OUTLINED_FUNCTION_69_10();
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
      *v18 = v3;
    }

    v17 = 1;
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = OUTLINED_FUNCTION_41_17();
    v9 = v8(v7);
    OUTLINED_FUNCTION_58_14(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21.n128_i64[0], v21.n128_i64[1], v22, v23, v24);
    sub_237A60530(a3, &v21);
    sub_2379E8CE8(v21.n128_u64[0], v21.n128_u64[1], v22);
    OUTLINED_FUNCTION_47_20();
  }

  OUTLINED_FUNCTION_62_11(v17);
}

uint64_t MLUntypedColumn.map<A>(to:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v74 = a2;
  v6 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v12 = *v4;
  LOBYTE(v13) = *(v4 + 8);
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_237C08EDC();

  *&v75 = 0xD000000000000016;
  *(&v75 + 1) = 0x8000000237C1EE00;
  OUTLINED_FUNCTION_38_16();
  v14 = sub_237C094DC();
  MEMORY[0x2383DC360](v14);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  v16 = *(&v75 + 1);
  v15 = v75;
  v17 = sub_2379E8AF0();
  v18 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  v73 = v18;
  *v19 = v15;
  v19[1] = v16;
  OUTLINED_FUNCTION_38_4(v18, v19);
  *(v20 + 48) = 1;
  if (swift_dynamicCastMetatype())
  {
    if (v13)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v21 = OUTLINED_FUNCTION_13_40();
    v22 = OUTLINED_FUNCTION_55_13(v21, 0);
    if (v15)
    {
      goto LABEL_14;
    }

    v23 = v22;
    if (v22)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v70 = v11;
  v71 = v17;
  v24 = v8;
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_11;
  }

  if (v13)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v25 = OUTLINED_FUNCTION_13_40();
  v26 = OUTLINED_FUNCTION_55_13(v25, 1);
  if (v15)
  {
LABEL_14:

    v29 = v13;
LABEL_15:
    v30 = 0;
    goto LABEL_23;
  }

  v23 = v26;
  if (v26)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_11:
  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
      if (!swift_dynamicCastMetatype())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
        if (!swift_dynamicCastMetatype())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
          if (!swift_dynamicCastMetatype())
          {
            if (swift_dynamicCastMetatype())
            {
              if (v13)
              {
                goto LABEL_21;
              }

              v13 = v12;
              v67 = OUTLINED_FUNCTION_13_40();
              v68 = OUTLINED_FUNCTION_55_13(v67, 5);
              if (v15)
              {
                goto LABEL_14;
              }

              v23 = v68;
              if (v68)
              {
                goto LABEL_30;
              }

              __break(1u);
            }

            v35 = 1;
            v15 = v73;
            goto LABEL_26;
          }
        }
      }
    }

    if ((v13 & 1) == 0)
    {
      v36 = OUTLINED_FUNCTION_13_40();
      result = OUTLINED_FUNCTION_55_13(v36, 4);
      if (v15)
      {

        v29 = v12;
        goto LABEL_15;
      }

      v42 = result;
      if (result)
      {
        v43 = type metadata accessor for CMLColumn();
        *(OUTLINED_FUNCTION_12_18(v43) + 16) = v42;

        sub_2379DBC9C(v12, 0);
        v44 = type metadata accessor for _UntypedColumn();
        v45 = OUTLINED_FUNCTION_12_18(v44);
        OUTLINED_FUNCTION_51_11(v45);
        swift_retain_n();
        v46 = sub_237A2F128();
        v47 = OUTLINED_FUNCTION_30_25();
        sub_2379DBC9C(v47, v48);
        if (v46 <= 0)
        {
          v63 = OUTLINED_FUNCTION_30_25();
          sub_2379DBC9C(v63, v64);
        }

        else
        {
          v49 = v6;

          sub_237A607E0(0, &v75);
          v50 = OUTLINED_FUNCTION_30_25();
          sub_2379DBC9C(v50, v51);
          v52 = v70;
          v53 = v74;
          (*(a3 + 16))(&v75, v74, a3);
          v35 = 1;
          if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
          {
            (*(v24 + 8))(v52, v49);
            *&v75 = 0;
            *(&v75 + 1) = 0xE000000000000000;
            sub_237C08EDC();
            MEMORY[0x2383DC360](0xD000000000000039, 0x8000000237C1EE20);
            OUTLINED_FUNCTION_38_16();
            v54 = sub_237C094DC();
            MEMORY[0x2383DC360](v54);

            MEMORY[0x2383DC360](46, 0xE100000000000000);
            v55 = v75;
            v56 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            *v57 = v55;
            OUTLINED_FUNCTION_38_4(v56, v57);
            *(v58 + 48) = 1;
            v59 = OUTLINED_FUNCTION_30_25();
            sub_2379DBC9C(v59, v60);
            v61 = OUTLINED_FUNCTION_30_25();
            sub_2379DBC9C(v61, v62);
            v15 = v56;
            goto LABEL_26;
          }

          v65 = OUTLINED_FUNCTION_30_25();
          sub_2379DBC9C(v65, v66);
          (*(v24 + 8))(v52, v49);
        }

        v35 = 0;
        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_21:
    *&v75 = v12;
    v31 = v12;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v33 = sub_237C0925C();
    if (!v33)
    {
      v15 = OUTLINED_FUNCTION_6_2(v32);
      *v34 = v12;

      goto LABEL_25;
    }

    v15 = v33;

    v29 = v12;
    v30 = 1;
LABEL_23:
    sub_2379DBC9C(v29, v30);
LABEL_25:
    v35 = 1;
LABEL_26:
    *&v75 = v15;
    BYTE8(v75) = v35;
    return sub_237A7C11C(&v75, v72);
  }

  if (v13)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v27 = OUTLINED_FUNCTION_13_40();
  result = OUTLINED_FUNCTION_55_13(v27, 2);
  if (v15)
  {
    goto LABEL_14;
  }

  v23 = result;
  if (result)
  {
LABEL_30:
    v37 = type metadata accessor for CMLColumn();
    v38 = OUTLINED_FUNCTION_12_18(v37);
    *(v38 + 16) = v23;

    v39 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v39, v40);
    v41 = type metadata accessor for _UntypedColumn();
    v15 = OUTLINED_FUNCTION_12_18(v41);
    v35 = 0;
    v15[2] = v38;
    goto LABEL_26;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void MLUntypedColumn.doubles.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3 != 1))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

void MLUntypedColumn.sequences.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3 != 3))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

void MLUntypedColumn.dictionaries.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3 != 4))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

void MLUntypedColumn.multiArrays.getter()
{
  OUTLINED_FUNCTION_29_21();
  if ((v0 & 1) != 0 || (v1 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v1, v2), sub_237A60248(&v6), OUTLINED_FUNCTION_14_39(), v3 != 5))
  {
    OUTLINED_FUNCTION_16_33();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_8_53();

    sub_2379DBCF4(v4, v5);
  }
}

id MLUntypedColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t MLUntypedColumn.init(repeating:count:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v8 = *a1;
  v9 = v5;
  v6 = type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_12_18(v6);
  result = sub_237A5FDF0(&v8, a2);
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

uint64_t MLUntypedColumn.init<A>(repeating:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UntypedColumn();
  (*(v11 + 16))(v14, a1, a3);
  v15 = sub_237A5FED4(v14, a2, a3, a4);
  result = (*(v11 + 8))(a1, a3);
  *a5 = v15;
  *(a5 + 8) = 0;
  return result;
}

void MLUntypedColumn.init()(uint64_t a1@<X8>)
{
  sub_2379E8AF0();
  v2 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v3 = 0xD00000000000001DLL;
  v3[1] = 0x8000000237C19A10;
  OUTLINED_FUNCTION_38_4(v2, v3);
  *(v4 + 48) = 1;
  *a1 = v5;
  *(a1 + 8) = 1;
}

void MLUntypedColumn.append(contentsOf:)()
{
  OUTLINED_FUNCTION_24_11();
  if (*(v0 + 8))
  {
    v2 = 1;
  }

  else
  {
    v3 = *v1;
    if (*(v1 + 8))
    {
      v4 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v4, v5);
      v6 = v3;
      v2 = 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v7, v8);
      v9 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v9, v10);
      sub_237A60168(v3);
      v11 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v11, v12);
      v13 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v13, v14);
      v15 = OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_70_9(v15, v16);
    }
  }

  OUTLINED_FUNCTION_62_11(v2);
  OUTLINED_FUNCTION_25_9();
}

void MLUntypedColumn.materialize()(uint64_t a1@<X8>)
{
  v5 = *v2;
  if (*(v2 + 8))
  {
    swift_willThrow();
    sub_2379DBCF4(v5, 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v6, v7);
    sub_237A2F234();
    v8 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v8, v9);
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 8) = 0;
      v10 = OUTLINED_FUNCTION_88();
      sub_2379DBCF4(v10, v11);
    }
  }
}

void MLUntypedColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 7106403;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  sub_2379DBCF4(v5, v6);
  v8 = sub_237C085AC();
  sub_237B6CB9C(v8, &v14);
  v9 = v14;
  v10 = v15;
  MLDataTable.subscript.getter(&v12, a1, a2);
  sub_2379DBC9C(v9, v10);
  v11 = v12;
  LOBYTE(a2) = v13;
  MLDataTable.subscript.getter();
  sub_2379DBC9C(v11, a2);
}

void Array<A>.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v18 = *(a1 + 8);
  if (v18)
  {
LABEL_10:
    sub_2379DBC9C(v1, v18);
    return;
  }

  v2 = sub_237A2F128();
  v3 = OUTLINED_FUNCTION_88();
  sub_2379DBC9C(v3, v4);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      do
      {
        v7 = OUTLINED_FUNCTION_88();
        sub_2379DBCF4(v7, v8);
        sub_237A607E0(v5, v19);
        v9 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v9, v10);
        v11 = v19[0];
        v12 = v19[1];
        v13 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237BC1CA8();
          v6 = v16;
        }

        v14 = *(v6 + 16);
        if (v14 >= *(v6 + 24) >> 1)
        {
          sub_237BC1CA8();
          v6 = v17;
        }

        ++v5;
        *(v6 + 16) = v14 + 1;
        v15 = v6 + 24 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        *(v15 + 48) = v13;
      }

      while (v2 != v5);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_237BBF460()
{
  OUTLINED_FUNCTION_45_19();
  if (v2)
  {
    v12.n128_u64[0] = v0;
    v3 = v0;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10(v4, v5, MEMORY[0x277D84950], v6))
    {
      sub_2379DBC9C(v0, 1);
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
      *v11 = v0;
    }

    v10 = 1;
  }

  else
  {
    v7 = *(v1 + 16);
    v9 = *v1;
    v8 = *(v1 + 8);
    type metadata accessor for _UntypedColumn();
    v12.n128_u64[0] = v9;
    v12.n128_u64[1] = v8;
    v13 = v7;
    sub_237A60280(4, v0, &v12);
    OUTLINED_FUNCTION_47_20();
  }

  OUTLINED_FUNCTION_11_19(v10);
}

void *MLUntypedColumn.column<A>(type:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  if (v9)
  {
    v10 = 6;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_30_25();
    sub_2379DBCF4(v11, v12);
    sub_237A60248(&v20);
    v13 = OUTLINED_FUNCTION_30_25();
    sub_2379DBC9C(v13, v14);
    v10 = v20;
  }

  result = (*(a3 + 8))(&v20, a2, a3);
  if (v10 == v20)
  {
    v18 = v8;
    v19 = v9;
    sub_237A7C11C(&v18, &v20);
    v16 = v20;
    v17 = v21;
    result = sub_2379DBCF4(v8, v9);
  }

  else
  {
    v16 = 0;
    v17 = -1;
  }

  *a4 = v16;
  *(a4 + 8) = v17;
  return result;
}

BOOL MLUntypedColumn.isEmpty.getter()
{
  if (*(v0 + 8))
  {
    return 1;
  }

  v2 = sub_237A2F128();
  v3 = OUTLINED_FUNCTION_88();
  sub_2379DBC9C(v3, v4);
  return v2 < 1;
}

uint64_t sub_237BBF684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UntypedColumn();
  (*(v11 + 16))(v13, a1, a2);
  result = sub_237A5F30C(v13, a2, a3);
  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237BBF79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v17 = a6;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _UntypedColumn();
  (*(v12 + 16))(v14, a1, a2);
  result = sub_237A5F91C(v14, a2, a3, a4);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *v17 = result;
  }

  return result;
}

uint64_t MLUntypedColumn.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_237BBF914(a1, a2, sub_237A6003C, a3);
}

{
  return sub_237BBF914(a1, a2, sub_237A600CC, a3);
}

uint64_t sub_237BBF914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_12_18(v8);
  result = a3(a1, a2);
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

void _s8CreateML15MLUntypedColumnVyA2Ccig_0()
{
  OUTLINED_FUNCTION_24_11();
  v3 = v2;
  v4 = *v0;
  if (*(v0 + 8))
  {
    v5 = v4;
    v6 = 1;
LABEL_7:
    *v3 = v4;
    *(v3 + 8) = v6;
    OUTLINED_FUNCTION_25_9();
    return;
  }

  v7 = *v1;
  if (*(v1 + 8))
  {
    v8 = v7;
    v6 = 1;
    v4 = v7;
    goto LABEL_7;
  }

  v9 = *(v4[2] + 16);
  v10 = *(v7[2] + 16);
  sub_2379DBCF4(v4, 0);
  v11 = OUTLINED_FUNCTION_3_22();
  sub_2379DBCF4(v11, v12);
  v13 = sub_237B10FA0(v9, v10);
  if (v13)
  {
    v14 = type metadata accessor for CMLColumn();
    *(OUTLINED_FUNCTION_12_18(v14) + 16) = v13;
    v15 = type metadata accessor for _UntypedColumn();
    v16 = OUTLINED_FUNCTION_12_18(v15);
    OUTLINED_FUNCTION_51_11(v16);
    v17 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v17, v18);
    OUTLINED_FUNCTION_70_9(v4, 0);
    v4 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_237BBFA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *v6;
  v14 = *(v6 + 8);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a2;
  v15[5] = a3;
  if (v14)
  {
    v26 = v13;

    sub_2379DBCF4(v13, 1);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v17 = sub_237C0925C();
    if (v17)
    {
      a1 = v17;

      sub_2379DBC9C(v13, 1);
    }

    else
    {
      v23 = OUTLINED_FUNCTION_6_2(v16);
      OUTLINED_FUNCTION_15_13(v23, v24);
    }

    v22 = 1;
  }

  else
  {

    v18 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v18, v19);
    sub_237BBFE5C(sub_237BC2998, v15, a1 & 1, a4, a5, &v26);

    v20 = OUTLINED_FUNCTION_4_26();
    sub_2379DBC9C(v20, v21);
    v22 = 0;
    a1 = v26;
  }

  v26 = a1;
  v27 = v22;
  return sub_237A7C11C(&v26, a6);
}

uint64_t sub_237BBFC38(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a2;
  v6 = sub_237C08D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_237AFC548(v14, v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = v24;
  v22(v23);
  if (__swift_getEnumTagSinglePayload(v9, 1, a4) == 1)
  {
    (*(v7 + 8))(v9, v6);
    type metadata accessor for CMLFeatureValue();
    v18 = sub_237A2E78C();
    sub_2379E8CE8(v15, v16, v17);
  }

  else
  {
    (*(v10 + 32))(v13, v9, a4);
    v18 = sub_237B70DD4(a4, v21);
    sub_2379E8CE8(v15, v16, v17);
    (*(v10 + 8))(v13, a4);
  }

  return v18;
}

uint64_t sub_237BBFE5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  (*(a5 + 8))(&v11, a4, a5);
  result = sub_237A60CE8(a1, a2, a3, &v11);
  *a6 = result;
  return result;
}

uint64_t sub_237BBFFB8@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  a1();

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

void MLUntypedColumn.fillMissing(with:)(uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v2 + 8))
  {
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v7 = sub_237C0925C();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_69_10();
    }

    else
    {
      v8 = OUTLINED_FUNCTION_6_2(v6);
      *v11 = v4;
    }

    v12 = 1;
    goto LABEL_7;
  }

  v9 = sub_237AFC858();
  v10 = sub_237B11000(*(v4[2] + 16), *(v9 + 16));
  v13 = v10;
  if (v10)
  {
    v14 = type metadata accessor for CMLColumn();
    v15 = OUTLINED_FUNCTION_12_18(v14);
    *(v15 + 16) = v13;
    v16 = type metadata accessor for _UntypedColumn();
    v8 = OUTLINED_FUNCTION_12_18(v16);
    *(v8 + 16) = v15;

    v12 = 0;
LABEL_7:
    *a2 = v8;
    *(a2 + 8) = v12;
    return;
  }

  __break(1u);
}

void sub_237BC0510()
{
  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_45_19();
  if (v2)
  {
    v3 = v0;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (OUTLINED_FUNCTION_26_10(v4, v5, MEMORY[0x277D84950], v6))
    {
      sub_2379DBC9C(v0, 1);
    }

    else
    {
      OUTLINED_FUNCTION_9_17();
      *v16 = v0;
    }

    v14 = v0;
    v15 = 1;
    goto LABEL_8;
  }

  v7 = v1;
  v8 = *(v0[2] + 16);
  v9 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v9, v10);
  v11 = OUTLINED_FUNCTION_55_13(v8, v7);
  if (v7)
  {
    v12 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v12, v13);
    v14 = OUTLINED_FUNCTION_85();
LABEL_8:
    sub_2379DBC9C(v14, v15);
    v17 = 1;
LABEL_9:
    OUTLINED_FUNCTION_11_19(v17);
    OUTLINED_FUNCTION_25_9();
    return;
  }

  v18 = v11;
  if (v11)
  {
    v19 = type metadata accessor for CMLColumn();
    v20 = OUTLINED_FUNCTION_12_18(v19);
    *(v20 + 16) = v18;
    v21 = type metadata accessor for _UntypedColumn();
    *(OUTLINED_FUNCTION_12_18(v21) + 16) = v20;
    v22 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v22, v23);
    v24 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_70_9(v24, v25);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t MLUntypedColumn.customMirror.getter()
{
  v1 = sub_237C0942C();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE9BE58, &unk_237C0ECD8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27[-v8];
  v10 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_237C0B670;
  *(v11 + 32) = 0x746E756F63;
  *(v11 + 40) = 0xE500000000000000;
  if (v10)
  {
    v13 = MEMORY[0x277D83B88];
    *(v11 + 48) = -1;
    *(v11 + 72) = v13;
    *(v11 + 80) = 1701869940;
    *(v11 + 88) = 0xE400000000000000;
    *(v11 + 120) = &type metadata for MLDataValue.ValueType;
    v14 = 6;
  }

  else
  {

    v15 = sub_237A2F128();
    v16 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v16, v17);
    v18 = MEMORY[0x277D83B88];
    *(v12 + 48) = v15;
    *(v12 + 72) = v18;
    *(v12 + 80) = 1701869940;
    *(v12 + 88) = 0xE400000000000000;
    *(v12 + 120) = &type metadata for MLDataValue.ValueType;

    sub_237A60248(&v28);
    v19 = OUTLINED_FUNCTION_38_16();
    sub_2379DBC9C(v19, v20);
    v14 = v28;
  }

  *(v12 + 96) = v14;
  v29 = &type metadata for MLUntypedColumn;
  v21 = *MEMORY[0x277D84BF8];
  v22 = sub_237C0941C();
  OUTLINED_FUNCTION_4();
  (*(v23 + 104))(v9, v21, v22);
  v24 = OUTLINED_FUNCTION_4_26();
  __swift_storeEnumTagSinglePayload(v24, v25, 1, v22);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C30], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DBA0, &qword_237C15F30);
  return sub_237C0943C();
}

uint64_t sub_237BC09C4()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_63_10();
    swift_getErrorValue();
    v2 = v1;
    sub_237C0927C();
    sub_2379DBC9C(v1, 1);
    return v7;
  }

  else
  {

    v3 = sub_237A60884();
    v4 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v4, v5);
  }

  return v3;
}

unint64_t MLUntypedColumn.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_63_10();
    swift_getErrorValue();
    v4 = v3;
    sub_237C0927C();
    OUTLINED_FUNCTION_69_10();
    v5 = v13;
    v6 = v14;
  }

  else
  {

    v5 = sub_237A60884();
    v6 = v7;
    v8 = OUTLINED_FUNCTION_30_25();
    sub_2379DBC9C(v8, v9);
  }

  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_237A02218(v5, v6, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v11;
  return result;
}

void sub_237BC0B38()
{
  OUTLINED_FUNCTION_31_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8E8, &qword_237C152D8);
      v8 = OUTLINED_FUNCTION_57_1(v7);
      OUTLINED_FUNCTION_32_2(v8);
      OUTLINED_FUNCTION_27_3(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_6_64();
        sub_237A1DCBC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC0BF0()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9B288, &qword_237C137F0);
  OUTLINED_FUNCTION_58_11();
  sub_237C05ADC();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DD20(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC0CB8()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DCBC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_237BC0D98()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_237BC0DEC()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DC08, &qword_237C160C8);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A20CF8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC0F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_8();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_67_0(a1, a2, a3, a4, a5, a6);
      v16 = OUTLINED_FUNCTION_57_1(v15);
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_29_1();
      v16[2] = v13;
      v16[3] = v17;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v16 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237BC0FD4()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DC30, &qword_237C160F0);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A20CF8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC108C()
{
  OUTLINED_FUNCTION_3_86();
  if (v2)
  {
    OUTLINED_FUNCTION_1_89();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_19_34();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_38_21();
  sub_237BC27BC(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_58_11();
  sub_237C07A8C();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v11 = OUTLINED_FUNCTION_4_73(v10);
    sub_237A1DD38(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC114C()
{
  OUTLINED_FUNCTION_31_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DBD8, &qword_237C16098);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_32_2(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 40);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DD50(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC122C()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9B248, &qword_237C0CB08);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DD78(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC12F8()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9C258, &qword_237C16A20);
  v8 = OUTLINED_FUNCTION_58_11();
  type metadata accessor for MLCheckpoint(v8);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_73(v9);
    sub_237A1DD8C(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC13C0()
{
  OUTLINED_FUNCTION_31_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DC20, &qword_237C160E0);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_32_2(v7);
      *(v3 + 16) = v2;
      *(v3 + 24) = 2 * (v8 / 24);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DDA4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DC28, &qword_237C160E8);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC14A0()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9DC38, &qword_237C160F8);
  OUTLINED_FUNCTION_58_11();
  sub_237C0813C();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DDCC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1568()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9BB70, &qword_237C0E778);
  OUTLINED_FUNCTION_58_11();
  sub_237C07F1C();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DDE4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1630()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9DBF0, &qword_237C160B0);
  OUTLINED_FUNCTION_58_11();
  sub_237C07D0C();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DDFC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC16F8()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9AD48, &qword_237C0BBD0);
  OUTLINED_FUNCTION_58_11();
  sub_237C07B9C();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DE14(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC17C0()
{
  OUTLINED_FUNCTION_31_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DBC0, &qword_237C16080);
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DE4C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), v2 << 6);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC1880()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9B230, &qword_237C0CB00);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DE6C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC194C()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9DBB8, &qword_237C16078);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DE94(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1A18()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9DBC8, &qword_237C16088);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DEA8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1AE4()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9DBB0, &qword_237C16070);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DEBC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1BB0()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B300, &qword_237C0CBB0);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DE2C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B308, &qword_237C0CBB8);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC1CA8()
{
  OUTLINED_FUNCTION_19_6();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_8();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_67_0(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_26_27(v14);
      v14[2] = v12;
      v14[3] = 2 * (v15 / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_64_9();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v10)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237BC1D7C()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9DBA8, &qword_237C16068);
  OUTLINED_FUNCTION_58_11();
  sub_237C074BC();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DFB8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC1E44()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DBF8, &qword_237C160B8);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A20CF8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DC00, &qword_237C160C0);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC1F0C()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_49_13(v2, v5, &qword_27DE9DC10, &qword_237C160D0);
  v8 = OUTLINED_FUNCTION_58_11();
  type metadata accessor for DataSourceIssue(v8);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_4_73(v9);
    sub_237A1DFD0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void sub_237BC2038()
{
  OUTLINED_FUNCTION_19_6();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_8();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      v14 = OUTLINED_FUNCTION_67_0(v3, v4, v5, v6, v7, v8);
      v15 = OUTLINED_FUNCTION_57_1(v14);
      OUTLINED_FUNCTION_26_27(v15);
      OUTLINED_FUNCTION_23_35();
      v15[2] = v12;
      v15[3] = v16;
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v15 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_64_9();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v10)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237BC20F8()
{
  OUTLINED_FUNCTION_31_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B200, &qword_237C0CAE0);
      v7 = OUTLINED_FUNCTION_57_1(v6);
      OUTLINED_FUNCTION_32_2(v7);
      OUTLINED_FUNCTION_27_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DE2C(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_10_47();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC2210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_8();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      v15 = OUTLINED_FUNCTION_67_0(a1, a2, a3, a4, a5, a6);
      v16 = OUTLINED_FUNCTION_57_1(v15);
      OUTLINED_FUNCTION_26_27(v16);
      OUTLINED_FUNCTION_23_35();
      v16[2] = v13;
      v16[3] = v17;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v16 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_237BC22E4()
{
  OUTLINED_FUNCTION_31_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_8(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_4();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B280, &qword_237C0CB38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_6_64();
        sub_237A1DF90(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = OUTLINED_FUNCTION_10_47();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_30_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_237BC23A0()
{
  OUTLINED_FUNCTION_3_86();
  if (v4)
  {
    OUTLINED_FUNCTION_1_89();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_19_34();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_71();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_31_24(v2, v5, &qword_27DE9B2D8, &qword_237C0CB88);
  OUTLINED_FUNCTION_35_21();
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_119_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_4_73(v8);
    sub_237A1DE80(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_9_55();
  }
}

void *sub_237BC246C()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v4 = OUTLINED_FUNCTION_57_1(v3);
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_29_1();
  v4[2] = v2;
  v4[3] = v5;
  return v4;
}

void *sub_237BC24F8()
{
  OUTLINED_FUNCTION_37_17();
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = OUTLINED_FUNCTION_43_15(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_57_1(v6);
  OUTLINED_FUNCTION_26_27(v7);
  OUTLINED_FUNCTION_23_35();
  v7[2] = v0;
  v7[3] = v8;
  return v7;
}

const void *sub_237BC254C()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE28, &qword_237C0ECB0);
  v2 = OUTLINED_FUNCTION_54_7(v1);
  OUTLINED_FUNCTION_26_27(v2);
  OUTLINED_FUNCTION_32_21(v3);
  return v2;
}

const void *sub_237BC25DC()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = OUTLINED_FUNCTION_43_15(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_54_7(v5);
  OUTLINED_FUNCTION_26_27(v6);
  OUTLINED_FUNCTION_32_21(v7);
  return v6;
}

const void *sub_237BC2630()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DBE0, &qword_237C160A0);
  v2 = OUTLINED_FUNCTION_54_7(v1);
  OUTLINED_FUNCTION_26_27(v2);
  OUTLINED_FUNCTION_32_21(v3);
  return v2;
}

void *sub_237BC2698()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v4 = OUTLINED_FUNCTION_57_1(v3);
  OUTLINED_FUNCTION_26_27(v4);
  v4[2] = v2;
  v4[3] = (2 * (v5 / 8)) | 1;
  return v4;
}

void *sub_237BC2754()
{
  OUTLINED_FUNCTION_37_17();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
  v4 = OUTLINED_FUNCTION_57_1(v3);
  OUTLINED_FUNCTION_26_27(v4);
  OUTLINED_FUNCTION_23_35();
  v4[2] = v2;
  v4[3] = v5;
  return v4;
}

void *sub_237BC27BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_43_15(a1, a2, a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = v5;
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

size_t sub_237BC28AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_43_15(a1, a2, a3, a4);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if (result - v11 != 0x8000000000000000 || v10 != -1)
    {
      OUTLINED_FUNCTION_32_21(result - v11);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_53()
{
  *v0 = v1;
  *(v0 + 8) = 0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_9_55()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_13_40()
{
  v1 = *(v0[2] + 16);
  sub_2379DBCF4(v0, 0);
  return v1;
}

size_t OUTLINED_FUNCTION_31_24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_237BC28AC(v4, a2, a3, a4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_35_21()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_42_17(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_15(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void *OUTLINED_FUNCTION_49_13(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_237BC27BC(v5, a2, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_54_7(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_55_13(uint64_t a1, uint64_t a2)
{

  return sub_237B12C70(a1, a2, 0);
}

uint64_t OUTLINED_FUNCTION_64_9()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_69_10()
{

  sub_2379DBC9C(v0, 1);
}

uint64_t sub_237BC2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = sub_237C08A3C();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;

  v16 = sub_237BC5FE0(0, 0, v13, a5, v15);
  sub_2379D9054(v13, &qword_27DE9AA98, &unk_237C0DEB0);
  return v16;
}

uint64_t sub_237BC2DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC3ACC(a5);
}

uint64_t sub_237BC2E98()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237BC2F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC3E60(a5);
}

uint64_t sub_237BC3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC40CC(a5);
}

uint64_t sub_237BC3100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC4338(a5);
}

uint64_t sub_237BC31B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC45A4(a5);
}

uint64_t sub_237BC3270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC4810(a5);
}

uint64_t sub_237BC3328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC4A7C(a5);
}

uint64_t sub_237BC33E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC3498;

  return sub_237BC4CE8(a5);
}

uint64_t sub_237BC3498()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237BC3590()
{
  OUTLINED_FUNCTION_9();
  (*(v0 + 16))(0, 0);
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_237BC35F4()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v1;
  v2(v1, 1);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_237BC367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC5158(a5);
}

uint64_t sub_237BC3734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC53C4(a5);
}

uint64_t sub_237BC37EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC5630(a5);
}

uint64_t sub_237BC38A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC589C(a5);
}

uint64_t sub_237BC395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC5B08(a5);
}

uint64_t sub_237BC3A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_237BC2E98;

  return sub_237BC5D74(a5);
}

uint64_t sub_237BC3ACC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC3B98);
}

uint64_t sub_237BC3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC60, &qword_237C0B9A8);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BC6230(v36);
}

uint64_t sub_237BC3D38()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_277();

    OUTLINED_FUNCTION_138_1();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_18_35();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC3E60(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC3F2C);
}

uint64_t sub_237BC3F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC28, &unk_237C0B990);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BC6FB0(v36);
}

uint64_t sub_237BC40CC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC4198);
}

uint64_t sub_237BC4198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC10, &qword_237C0B988);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BC7D30(v36);
}

uint64_t sub_237BC4338(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC4404);
}

uint64_t sub_237BC4404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABF8, &qword_237C0B980);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BC8AB0(v36);
}

uint64_t sub_237BC45A4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC4670);
}

uint64_t sub_237BC4670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABC8, &qword_237C0B920);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BC9830(v36);
}

uint64_t sub_237BC4810(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC48DC);
}

uint64_t sub_237BC48DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB58, &unk_237C0B8D0);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCA5B0(v36);
}

uint64_t sub_237BC4A7C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC4B48);
}

uint64_t sub_237BC4B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB40, &qword_237C0B8C8);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCB330(v36);
}

uint64_t sub_237BC4CE8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC4DB4);
}

uint64_t sub_237BC4DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB28, &qword_237C0B8A0);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCC0B0(v36);
}

uint64_t sub_237BC4F54()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_277();

    OUTLINED_FUNCTION_138_1();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_18_35();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC507C()
{
  OUTLINED_FUNCTION_49();
  if ([*(*(v0 + 40) + qword_27DEACF00) isCancelled])
  {
    sub_2379E8AF0();
    swift_allocError();
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    OUTLINED_FUNCTION_270();

    OUTLINED_FUNCTION_6();
  }

  return v2();
}

uint64_t sub_237BC5158(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC5224);
}

uint64_t sub_237BC5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB08, &qword_237C0B898);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCCE30(v36);
}

uint64_t sub_237BC53C4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC5490);
}

uint64_t sub_237BC5490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAD8, &qword_237C0B868);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCDBB0(v36);
}

uint64_t sub_237BC5630(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC56FC);
}

uint64_t sub_237BC56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAF0, &qword_237C0B870);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCE930(v36);
}

uint64_t sub_237BC589C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC5968);
}

uint64_t sub_237BC5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAB0, &qword_237C0B830);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BCF6B0(v36);
}

uint64_t sub_237BC5B08(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC5BD4);
}

uint64_t sub_237BC5BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA70, &qword_237C0B7F8);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BD0430(v36);
}

uint64_t sub_237BC5D74(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MLCheckpoint(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237BC5E40);
}

uint64_t sub_237BC5E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_116_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA58, &qword_237C0B7F0);
  OUTLINED_FUNCTION_160_1(v17);
  OUTLINED_FUNCTION_43_16();
  if (v18)
  {
    sub_2379D9054(*(v14 + 56), &qword_27DE9B8E8, &qword_237C0EBF0);
    v19 = OUTLINED_FUNCTION_22_33(qword_27DEACD88);
    v20(v19);
    if (v13)
    {
LABEL_7:
      OUTLINED_FUNCTION_270();

      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_99_0();

      return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_28();
    OUTLINED_FUNCTION_53_15(qword_27DEACD88);
    OUTLINED_FUNCTION_132_2();
    v16();
    v21 = *(v14 + 72);
    if (v13)
    {
      OUTLINED_FUNCTION_0_90();
      sub_237BEE39C(v21, v22);

      goto LABEL_7;
    }

    OUTLINED_FUNCTION_278();
    *(v12 + *(v15 + 28)) = *(v21 + MEMORY[0x14]);
    OUTLINED_FUNCTION_0_90();
    sub_237BEE39C(v21, v32);
    OUTLINED_FUNCTION_229();
  }

  v33 = swift_task_alloc();
  v34 = OUTLINED_FUNCTION_172_0(v33);
  *v34 = v35;
  OUTLINED_FUNCTION_50_16(v34);
  OUTLINED_FUNCTION_99_0();

  return sub_237BD11B0(v36);
}

uint64_t sub_237BC5FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2379FC864(a3, v21 - v9, &qword_27DE9AA98, &unk_237C0DEB0);
  v11 = sub_237C08A3C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2379D9054(v10, &qword_27DE9AA98, &unk_237C0DEB0);
  }

  else
  {
    sub_237C08A2C();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_237C089FC();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_237C0876C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_237BC6230(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BC6250);
}

uint64_t sub_237BC6250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD2050(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDBB20(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE5E78(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B9A8);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BC650C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC6620()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC6734()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC6848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B9A8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2050(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDBB20(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE5E78(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC6AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B9A8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2050(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDBB20(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE5E78(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC6D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B9A8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2050(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDBB20(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE5E78(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC6FB0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BC6FD0);
}

uint64_t sub_237BC6FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD2B70(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDC6F0(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE6344(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &unk_237C0B990);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BC728C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC73A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC74B4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B990);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2B70(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDC6F0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6344(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC7840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B990);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2B70(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDC6F0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6344(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC7AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B990);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD2B70(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDC6F0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6344(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC7D30(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BC7D50);
}

uint64_t sub_237BC7D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD3690(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDD2C0(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE6810(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B988);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BC800C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC8120()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC8234()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC8348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B988);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD3690(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDD2C0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6810(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC85C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B988);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD3690(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDD2C0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6810(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC8838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B988);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD3690(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDD2C0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6810(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC8AB0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BC8AD0);
}

uint64_t sub_237BC8AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD41B0(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDDE90(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE6CDC(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B980);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BC8D8C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC8EA0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC8FB4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC90C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B980);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD41B0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDDE90(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6CDC(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC9340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B980);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD41B0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDDE90(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6CDC(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC95B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B980);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ([OUTLINED_FUNCTION_95_1() isCancelled] & 1) == 0)
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD41B0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDDE90(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE6CDC(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BC9830(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BC9850);
}

uint64_t sub_237BC9850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD4CD0(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDEA60(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE71A8(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B920);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BC9B0C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC9C20()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC9D34()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BC9E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B920);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD4CD0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDEA60(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE71A8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCA0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B920);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD4CD0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDEA60(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE71A8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCA338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B920);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD4CD0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDEA60(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE71A8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCA5B0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BCA5D0);
}

uint64_t sub_237BCA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD57D8(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BDF5FC(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE7674(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &unk_237C0B8D0);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BCA88C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCA9A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCAAB4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B8D0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD57D8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDF5FC(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7674(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCAE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B8D0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD57D8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDF5FC(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7674(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &unk_237C0B8D0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD57D8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BDF5FC(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7674(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCB330(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BCB350);
}

uint64_t sub_237BCB350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD62E0(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE0198(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE7B40(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B8C8);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BCB60C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCB720()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCB834()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCB948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8C8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD62E0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0198(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7B40(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCBBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8C8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD62E0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0198(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7B40(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCBE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8C8);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD62E0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0198(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE7B40(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCC0B0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BCC0D0);
}

uint64_t sub_237BCC0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD6DE8(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE0D34(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE800C(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B8A0);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BCC38C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCC4A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCC5B4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8A0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD6DE8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0D34(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE800C(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8A0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD6DE8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0D34(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE800C(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCCBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B8A0);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD6DE8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE0D34(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE800C(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCCE30(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BCCE50);
}

uint64_t sub_237BCCE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD78F0(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE18D0(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE84D8(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B898);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BCD10C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCD220()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCD334()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCD448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B898);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD78F0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE18D0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE84D8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCD6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B898);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD78F0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE18D0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE84D8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCD938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B898);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD78F0(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE18D0(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE84D8(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_237BCDBB0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_237BCDBD0);
}

uint64_t sub_237BCDBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_44_18();
  v17 = qword_27DEACF00;
  *(v14 + 56) = *(v16 + 112);
  *(v14 + 64) = v17;
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v18 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_176_1();
    v20 = v15;
    v21 = v12;
    switch(v22)
    {
      case 1:
        v23 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v20 = 0xE800000000000000;
        v21 = OUTLINED_FUNCTION_51_4();
        goto LABEL_7;
      case 3:
        v23 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v21 = OUTLINED_FUNCTION_123_3(v23);
        goto LABEL_7;
      case 4:

        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_161_1(v21);
        OUTLINED_FUNCTION_273();
        if ((v13 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_79_7();
          switch(v24)
          {
            case 1:
              v40 = swift_task_alloc();
              v41 = OUTLINED_FUNCTION_172_0(v40);
              *v41 = v42;
              OUTLINED_FUNCTION_50_16(v41);
              OUTLINED_FUNCTION_99_0();

              return sub_237BD83F8(v43);
            case 2:
              v35 = swift_task_alloc();
              v36 = OUTLINED_FUNCTION_177_1(v35);
              *v36 = v37;
              OUTLINED_FUNCTION_50_16(v36);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE246C(v38);
            case 3:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_178_0(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_99_0();

              return sub_237BE89A4(v32);
            case 4:
              continue;
            default:
              v25 = OUTLINED_FUNCTION_78_7();
              sub_237BD1F5C(v25, v26, &qword_237C0B868);
              v27 = OUTLINED_FUNCTION_7_55();
              v28(v27);
              if (!v20)
              {
                continue;
              }

              OUTLINED_FUNCTION_43_4();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_99_0();

        return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }
  }
}

uint64_t sub_237BCDE8C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCDFA0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCE0B4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }
}

uint64_t sub_237BCE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_3_87();
  while (2)
  {
    v16 = OUTLINED_FUNCTION_97_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v16, &qword_237C0B868);
    OUTLINED_FUNCTION_176_1();
    v17 = v14;
    switch(v18)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_90_7();
        goto LABEL_6;
      case 2:
        v17 = OUTLINED_FUNCTION_41_18();
        goto LABEL_7;
      case 3:
        v19 = OUTLINED_FUNCTION_88_4();
LABEL_6:
        v17 = OUTLINED_FUNCTION_96_2(v19);
        goto LABEL_7;
      case 4:
        OUTLINED_FUNCTION_173_1();
        goto LABEL_22;
      default:
LABEL_7:
        OUTLINED_FUNCTION_67_10(v17);
        OUTLINED_FUNCTION_263();
        if ((v15 & 1) == 0 && ![OUTLINED_FUNCTION_95_1() isCancelled])
        {
          OUTLINED_FUNCTION_57_13();
          switch(v20)
          {
            case 1:
              v23 = swift_task_alloc();
              v24 = OUTLINED_FUNCTION_172_0(v23);
              *v24 = v25;
              OUTLINED_FUNCTION_50_16(v24);
              OUTLINED_FUNCTION_54_2();

              return sub_237BD83F8(v26);
            case 2:
              v29 = swift_task_alloc();
              v30 = OUTLINED_FUNCTION_177_1(v29);
              *v30 = v31;
              OUTLINED_FUNCTION_50_16(v30);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE246C(v32);
            case 3:
              v34 = swift_task_alloc();
              v35 = OUTLINED_FUNCTION_178_0(v34);
              *v35 = v36;
              OUTLINED_FUNCTION_50_16(v35);
              OUTLINED_FUNCTION_54_2();

              return sub_237BE89A4(v37);
            case 4:
              continue;
            default:
              OUTLINED_FUNCTION_94_3();
              v21 = OUTLINED_FUNCTION_2_83();
              v22(v21);
              OUTLINED_FUNCTION_19_11();
              if (!v15)
              {
                continue;
              }

              OUTLINED_FUNCTION_8();
              goto LABEL_23;
          }
        }

LABEL_22:
        OUTLINED_FUNCTION_6();
LABEL_23:
        OUTLINED_FUNCTION_54_2();

        return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14);
    }
  }
}