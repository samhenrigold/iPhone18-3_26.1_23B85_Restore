uint64_t sub_237B4E204(uint64_t a1)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(v2);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_113_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_121_1();

  return sub_237B4C774(v6, v7, v8, v9);
}

uint64_t sub_237B4E2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4E36C);
}

uint64_t sub_237B4E36C()
{
  OUTLINED_FUNCTION_123_1();
  v14 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[13];
  v3 = v0[9];
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  sub_237A96C5C(v2, *(v3 + 16), (v0 + 2));
  v4 = sub_237A4CCA0(v3, (v0 + 2));
  v5 = v0[10];

  v6 = sub_237A4CCA0(v5, (v0 + 2));

  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  OUTLINED_FUNCTION_13_19(&dword_237C13FD0);
  v13 = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[14] = v8;
  *v8 = v9;
  v8[1] = sub_237B4E504;
  v10 = v0[12];
  v11 = v0[8];

  return v13(v11, v4, v6, v10);
}

uint64_t sub_237B4E504()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B4E600()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B4E674()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  *v2 = a1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  MLSoundClassifier.init(trainingData:parameters:)();
  OUTLINED_FUNCTION_0_75();
  return sub_237B57CC0();
}

uint64_t sub_237B4E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v6[8] = v7;
  v6[9] = *(v7 + 64);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4E8A0);
}

uint64_t sub_237B4E8A0()
{
  OUTLINED_FUNCTION_123_1();
  v11 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[6];
  OUTLINED_FUNCTION_23_28();
  sub_237B57D10();
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v2;
  OUTLINED_FUNCTION_10_40();
  sub_237B5805C();
  OUTLINED_FUNCTION_53_9(&dword_237C0E1F0);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[12] = v4;
  *v4 = v5;
  v4[1] = sub_237B4E9BC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7, sub_237B58630, v3);
}

uint64_t sub_237B4E9BC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B4EB00()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B4EB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v5[7] = v6;
  v5[8] = *(v6 + 64);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B4EC28);
}

uint64_t sub_237B4EC28()
{
  OUTLINED_FUNCTION_123_1();
  v10 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[5];
  OUTLINED_FUNCTION_23_28();
  sub_237B57D10();
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  OUTLINED_FUNCTION_10_40();
  sub_237B5805C();
  OUTLINED_FUNCTION_53_9(&dword_237C0E208);

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_237B4ED44;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v6, sub_237B58630, v3);
}

uint64_t sub_237B4ED44()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B4EE88()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B4EEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B238, &qword_237C0E110);
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v4 = v41 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v41 - v6;
  v8 = type metadata accessor for MLSoundClassifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_237B57D10();
  v11 = (v10 + ((*(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  sub_237B5805C();
  *(v12 + v11) = a1;

  v13 = v49;
  v14 = sub_2379DDD80(&unk_237C13ED0, v12);

  if (!v13)
  {
    v16 = v52;
    v43 = a1;
    v44 = 0;
    v49 = v7;
    KeyPath = swift_getKeyPath();
    v18 = *(v14 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v42 = v5;
      v56 = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v20 = v56;
      v21 = v16 + 16;
      v22 = *(v16 + 2);
      v23 = v16[80];
      v41[1] = v14;
      v24 = v14 + ((v23 + 32) & ~v23);
      v47 = *(v16 + 9);
      v48 = v22;
      v46 = (v16 + 8);
      v25 = v50;
      v52 = v21;
      do
      {
        (v48)(v4, v24, v25);
        v26 = KeyPath;
        swift_getAtKeyPath();
        (*v46)(v4, v25);
        v28 = v54;
        v27 = v55;
        v56 = v20;
        v29 = *(v20 + 16);
        if (v29 >= *(v20 + 24) >> 1)
        {
          sub_237AC8A74();
          v20 = v56;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + 16 * v29;
        *(v30 + 32) = v28;
        *(v30 + 40) = v27;
        v24 += v47;
        --v18;
        v25 = v50;
        KeyPath = v26;
      }

      while (v18);

      v5 = v42;
      v19 = MEMORY[0x277D84F90];
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v56 = v20;
    swift_getKeyPath();
    v31 = v43;
    v32 = *(v43 + 16);
    v33 = v49;
    if (v32)
    {
      v53 = v19;
      sub_237AC8A74();
      v34 = v53;
      v35 = *(v51 + 16);
      v51 += 16;
      v52 = v35;
      v36 = v31 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
      v50 = *(v51 + 56);
      v48 = (v51 - 8);
      do
      {
        (v52)(v33, v36, v5);
        swift_getAtKeyPath();
        (*v48)(v33, v5);
        v38 = v54;
        v37 = v55;
        v53 = v34;
        v39 = *(v34 + 16);
        if (v39 >= *(v34 + 24) >> 1)
        {
          sub_237AC8A74();
          v34 = v53;
        }

        *(v34 + 16) = v39 + 1;
        v40 = v34 + 16 * v39;
        *(v40 + 32) = v38;
        *(v40 + 40) = v37;
        v36 += v50;
        --v32;
        v33 = v49;
      }

      while (v32);
    }

    else
    {

      v34 = MEMORY[0x277D84F90];
    }

    v54 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_2379D9224(&qword_27DE9B8B8, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83988]);
    return sub_237C06FBC();
  }

  return result;
}

uint64_t sub_237B4F48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_237A37A64();
  if ((result & 1) == 0)
  {
    sub_237A37AEC(19, 0xD000000000000011, 0x8000000237C1C420, a1);
    sub_237A37AEC(19, 0xD000000000000011, 0x8000000237C1A2F0, a2);
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    sub_237A37AEC(19, 0x726574492078614DLL, 0xEE00736E6F697461, *(a3 + *(v7 + 20)));
    v8 = *(a3 + *(v7 + 24));
    sub_237A38140(19, 0x2070616C7265764FLL, 0xEE00726F74636146, v8);
    sub_237A40628();
    if (v12)
    {
      swift_dynamicCast();
    }

    else
    {
      sub_237A7B808(&v10, &qword_27DE9A998, &unk_237C0C100);
    }

    v10 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
    v11 = v9;

    MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

    sub_237A3825C(19, 0x687469726F676C41, 0xE90000000000006DLL, v10, v11);
  }

  return result;
}

uint64_t MLSoundClassifier.init(checkpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v4 = _s5ModelVMa_0(0);
  v5 = OUTLINED_FUNCTION_1(v4);
  v82 = v6;
  MEMORY[0x28223BE20](v5);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v92 = v9;
  v10 = OUTLINED_FUNCTION_41_0();
  v88 = type metadata accessor for MLSoundClassifier.ModelParameters(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v89 = v13 - v12;
  v14 = OUTLINED_FUNCTION_41_0();
  v90 = _s10ClassifierVMa_0(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v91 = v17 - v16;
  v18 = OUTLINED_FUNCTION_41_0();
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v18);
  v20 = OUTLINED_FUNCTION_20(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v87 = v22 - v21;
  v23 = OUTLINED_FUNCTION_41_0();
  v86 = _s20PersistentParametersVMa_2(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v96 = v26 - v25;
  OUTLINED_FUNCTION_41_0();
  v98 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v93 = v30 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v80 - v33;
  MEMORY[0x28223BE20](v35);
  v95 = &v80 - v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v100 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v41 = v40;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_108();
  type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = type metadata accessor for MLSoundClassifier(0);
  v48 = (a2 + *(v47 + 32));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v2);
  sub_2379E5C70(v2);
  (*(v41 + 8))(v2, v39);
  v49 = v101;
  *v48 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v99 = v48;
  swift_storeEnumTagMultiPayload();
  v97 = v47;
  v50 = *(v47 + 36);
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v51 = swift_allocError();
  *v52 = 0xD0000000000000C0;
  v52[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v51, v52);
  *(a2 + v50) = v53;
  v102 = a2;
  swift_storeEnumTagMultiPayload();
  switch(*(v49 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      v54 = v100;
      goto LABEL_4;
    default:
      v55 = sub_237C0929C();

      v54 = v100;
      if (v55)
      {
LABEL_4:
        v85 = v50;
        sub_237C05A5C();
        sub_237C05A2C();
        v56 = v95;
        sub_237C05A3C();
        v57 = v34;
        v58 = *(v28 + 8);
        v59 = v98;
        v58(v57, v98);
        v60 = v93;
        (*(v28 + 16))(v93, v54, v59);
        v61 = v96;
        v62 = v94;
        sub_237AD5F50(v60, v96);
        if (!v62)
        {
          v94 = v58;
          v65 = v102 + *(v97 + 28);
          v66 = v86;
          sub_237B57D10();
          v67 = v66[9];
          v81 = *(v61 + v66[8]);
          v68 = *(v61 + v66[6]);
          v93 = *(v61 + v67);
          LODWORD(v86) = *(v61 + v67 + 8);
          v69 = v88;
          v70 = (v65 + *(v88 + 28));
          *v70 = 0u;
          v70[1] = 0u;
          OUTLINED_FUNCTION_86_3(v65 + v69[8]);
          *(v65 + v71) = v72;
          sub_237B57D10();
          *(v65 + v69[5]) = v81;
          *(v65 + v69[6]) = v68;
          v105 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
          v103 = v93;
          v104 = v86;
          OUTLINED_FUNCTION_11_42();
          sub_237B57CC0();
          sub_237A6F014();
          OUTLINED_FUNCTION_1_71();
          v73 = v89;
          sub_237B57D10();
          sub_237B59204(MEMORY[0x277D84FA0], v73, v91);
          sub_237B56FD4(&qword_27DE9B8A0, _s10ClassifierVMa_0, &unk_237C14110);
          sub_237C0734C();
          sub_237B57D10();
          swift_allocObject();
          OUTLINED_FUNCTION_21_28();
          sub_237B5805C();
          sub_2379DD56C();
          v75 = v74;

          OUTLINED_FUNCTION_13_33();
          sub_237B57CC0();
          OUTLINED_FUNCTION_3_69();
          sub_237B57CC0();
          OUTLINED_FUNCTION_9_43();
          sub_237B57CC0();
          v76 = v56;
          v77 = v98;
          v78 = v94;
          v94(v76, v98);
          v78(v100, v77);
          *(v102 + *(v97 + 24)) = v75;
          OUTLINED_FUNCTION_21_28();
          return sub_237B5805C();
        }

        OUTLINED_FUNCTION_13_33();
        sub_237B57CC0();
        v58(v56, v59);
        v58(v54, v59);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v63 = swift_allocError();
        *v64 = 0xD00000000000003BLL;
        v64[1] = 0x8000000237C1D260;
        OUTLINED_FUNCTION_23_3(v63, v64);
        swift_willThrow();
        OUTLINED_FUNCTION_13_33();
        sub_237B57CC0();
      }

      sub_237A7B808(v102, &qword_27DE9B8D0, &qword_237C0E1E8);
      sub_237B57CC0();
      return sub_237B57CC0();
  }
}

uint64_t sub_237B5006C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B50114;

  return sub_237B91B5C();
}

uint64_t sub_237B50114()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MLSoundClassifier.DataSource.labeledSounds()();
  if (!v3)
  {
    static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(v7, a2, a3);
    a1 = v8;
  }

  return a1;
}

void static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MLSoundClassifier.DataSource(0);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  *v4 = a1;
  swift_storeEnumTagMultiPayload();

  v8 = OUTLINED_FUNCTION_114_1();
  static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(v8, v9, a3);
  OUTLINED_FUNCTION_4_59();
  sub_237B57CC0();
  if (!v3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D558, &qword_237C13D68);
    OUTLINED_FUNCTION_91(v10);
    sub_237BEC9F4();
  }
}

void static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v66 = a1;
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v15 = OUTLINED_FUNCTION_20(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v24 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v25 = OUTLINED_FUNCTION_20(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  sub_237A39CD0();
  if (!v3)
  {
    v57 = v10;
    v58 = v4;
    v54 = v20;
    v55 = v23;
    v56 = v13;
    sub_237B19584(a2);
    v53 = 0;
    v29 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    v66 = v28;
    sub_237B57D10();
    OUTLINED_FUNCTION_48_13();
    sub_237B57D10();
    v30 = *(a2 + v16[5]);
    v31 = *(a2 + v16[6]);
    sub_237A40628();
    if (v64)
    {
      v32 = swift_dynamicCast();
      v34 = v54;
      v33 = v55;
      if (v32)
      {
        v52 = v60;
        v35 = v61;
      }

      else
      {
        v52 = 1;
        v35 = 1;
      }

      v36 = v56;
    }

    else
    {
      sub_237A7B808(&v62, &qword_27DE9A998, &unk_237C0C100);
      v52 = 1;
      v35 = 1;
      v33 = v55;
      v36 = v56;
      v34 = v54;
    }

    v37 = (v34 + v16[7]);
    *v37 = 0u;
    v37[1] = 0u;
    v38 = v34 + v16[8];
    *v38 = 0;
    *(v38 + 8) = 1;
    *(v34 + v16[9]) = 32;
    OUTLINED_FUNCTION_48_13();
    sub_237B57D10();
    *(v34 + v16[5]) = v30;
    *(v34 + v16[6]) = v31;
    v64 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v62 = v52;
    LOBYTE(v63) = v35;
    sub_237A6F014();
    *v38 = v29;
    *(v38 + 8) = 0;
    if (v29 >= 0.5)
    {
      if (v29 <= 15.0)
      {
        OUTLINED_FUNCTION_11_42();
        sub_237B57CC0();
LABEL_14:
        v46 = v57;
        OUTLINED_FUNCTION_15_36();
        sub_237B5805C();
        OUTLINED_FUNCTION_12_40();
        sub_237B57D10();
        v47 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
        OUTLINED_FUNCTION_91(v47);
        v48 = v53;
        v49 = sub_237A48FF0(v66, 0, v33, v36);
        if (!v48)
        {
          v64 = v47;
          v65 = &off_284AC2598;
          v62 = v49;
          OUTLINED_FUNCTION_12_40();
          OUTLINED_FUNCTION_114_1();
          sub_237B57D10();
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D560, &qword_237C13D70);
          OUTLINED_FUNCTION_91(v50);
          sub_2379E4328(&v62, v46, 19);
        }

        return;
      }

      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_90_3(&v62);
      OUTLINED_FUNCTION_119_1();
      OUTLINED_FUNCTION_90_3(&v62);
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      v43 = OUTLINED_FUNCTION_37_0();
      sub_237BABE74(v43, v44, v45);

      OUTLINED_FUNCTION_11_42();
      sub_237B57CC0();
      v42 = 0x402E000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_92_3(&v62);
      OUTLINED_FUNCTION_119_1();
      OUTLINED_FUNCTION_92_3(&v62);
      MEMORY[0x2383DC360](46, 0xE100000000000000);
      sub_237C08C4C();
      v39 = OUTLINED_FUNCTION_37_0();
      sub_237BABE74(v39, v40, v41);

      OUTLINED_FUNCTION_11_42();
      sub_237B57CC0();
      v42 = 0x3FE0000000000000;
    }

    *v38 = v42;
    *(v38 + 8) = 0;
    goto LABEL_14;
  }
}

void static MLSoundClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D558, &qword_237C13D68);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC9F4();
}

void static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v11 = *(a2 + 32);
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  sub_237B5096C(a1, v7, a3);
  if (!v3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D568, &qword_237C13D78);
    OUTLINED_FUNCTION_91(v6);
    sub_237BECB5C();
  }
}

uint64_t sub_237B5096C(uint64_t a1, double *a2, uint64_t a3)
{
  v52 = a3;
  v45 = a1;
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v43 - v7;
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = *a2;
  v21 = a2[1];
  v23 = *(a2 + 16);
  v24 = *(a2 + 3);
  v25 = *(a2 + 32);
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 8) = 256;
  swift_storeEnumTagMultiPayload();
  if (v23)
  {
    v21 = 0.975;
  }

  v26 = &v19[v14[9]];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = &v19[v14[10]];
  *v27 = 0;
  v27[8] = 1;
  *&v19[v14[11]] = 32;
  sub_237B57D10();
  *&v19[v14[7]] = 25;
  *&v19[v14[8]] = v22;
  v50 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v48 = v24;
  LOBYTE(v49) = v25;
  sub_237A6F014();
  *v27 = v21;
  v27[8] = 0;
  if (v21 < 0.5)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000056, 0x8000000237C18BD0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18BB0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v28 = v48;
    v29 = v49;
    v30 = sub_237C08C4C();
    sub_237BABE74(v28, v29, v30);

    sub_237B57CC0();
    v31 = 0x3FE0000000000000;
LABEL_7:
    *v27 = v31;
    v27[8] = 0;
    goto LABEL_9;
  }

  if (v21 > 15.0)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000056, 0x8000000237C18B50);
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18BB0);
    sub_237C08A8C();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v32 = v48;
    v33 = v49;
    v34 = sub_237C08C4C();
    sub_237BABE74(v32, v33, v34);

    sub_237B57CC0();
    v31 = 0x402E000000000000;
    goto LABEL_7;
  }

  sub_237B57CC0();
LABEL_9:
  sub_237B5805C();
  v35 = v44;
  sub_237B57D10();
  sub_237B57D10();
  v36 = v46;
  sub_237B57D10();
  v37 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  swift_allocObject();
  v38 = v47;
  v39 = sub_237A48FF0(v35, 1, v16, v36);
  if (v38)
  {
    sub_237B57CC0();
  }

  else
  {
    v50 = v37;
    v51 = &off_284AC2598;
    v48 = v39;
    v40 = v43;
    sub_237B57D10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D598, &qword_237C13F90);
    swift_allocObject();

    sub_2379E4360(&v48, v40, 19);
    v37 = v41;
    sub_237B57CC0();
  }

  return v37;
}

void sub_237B50FB8()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D590, &unk_237C13F80);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = (&v24 - v13);
  if (v9)
  {
    *v14 = v11;
    swift_storeEnumTagMultiPayload();
    v15 = v11;
    v3(v14);
  }

  else
  {
    sub_2379E8624(v7 + qword_27DEACD88, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();
    v16 = v26;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
    v18 = (v14 + v17[12]);
    v19 = v17[16];
    v24 = v1;
    v25 = v3;
    v20 = (v14 + v19);
    v21 = v14 + v17[20];
    OUTLINED_FUNCTION_31_11(v16 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);

    sub_237A5384C(v22);

    *v18 = 0x7365727574616566;
    v18[1] = 0xE800000000000000;
    *v20 = 0x62614C7373616C63;
    v20[1] = 0xEA00000000006C65;
    v23 = *(v5 + 16);
    *v21 = *v5;
    *(v21 + 1) = v23;
    v21[32] = *(v5 + 32);
    type metadata accessor for MLSoundClassifier.DataSource(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v25(v14);
  }

  sub_237A7B808(v14, &qword_27DE9D590, &unk_237C13F80);
  OUTLINED_FUNCTION_150();
}

void static MLSoundClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-1] - v8;
  OUTLINED_FUNCTION_12_40();
  sub_237B57D10();
  v10 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = sub_237A48E68(v9);
  if (!v1)
  {
    v14[3] = v10;
    v14[4] = &off_284AC2598;
    v14[0] = v11;
    OUTLINED_FUNCTION_12_40();
    sub_237B57D10();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D560, &qword_237C13D70);
    OUTLINED_FUNCTION_91(v12);
    sub_2379E4328(v14, v6, 19);
  }
}

uint64_t sub_237B51308(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52_8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v25[-v14 - 8];
  if (a2)
  {
    *v5 = a1;
    swift_storeEnumTagMultiPayload();
    v16 = a1;
    a4(v5);
    return sub_237A7B808(v5, &qword_27DE9D5A0, &unk_237C13F98);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();
    v18 = v24;
    sub_237C08A3C();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v18;
    v23[5] = a4;
    v23[6] = a5;

    sub_237BBAEC8(0, 0, v15, &unk_237C13FB0, v23);
  }
}

uint64_t sub_237B514EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B515A8);
}

uint64_t sub_237B515A8()
{
  OUTLINED_FUNCTION_9();

  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_237B51644;

  return sub_237B518A4();
}

uint64_t sub_237B51644()
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

uint64_t sub_237B51740()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_237B57C50(v3, v4);
  OUTLINED_FUNCTION_94_0();
  v1(v2);
  sub_237A7B808(v2, &qword_27DE9D5A0, &unk_237C13F98);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_237B517F4()
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_94_0();
  v2(v0);
  sub_237A7B808(v0, &qword_27DE9D5A0, &unk_237C13F98);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_121_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_237B518A4()
{
  OUTLINED_FUNCTION_9();
  v0[18] = v1;
  v0[19] = v2;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v0[20] = v3;
  OUTLINED_FUNCTION_20(v3);
  v0[21] = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v4);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B890, &qword_237C0E0D0);
  OUTLINED_FUNCTION_20(v5);
  v0[24] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLSoundClassifier(0);
  v0[25] = v6;
  OUTLINED_FUNCTION_20(v6);
  v0[26] = OUTLINED_FUNCTION_19();
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_20(v7);
  v0[27] = OUTLINED_FUNCTION_19();
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v0[28] = v8;
  OUTLINED_FUNCTION_20(v8);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8B0, &qword_237C13FC0);
  OUTLINED_FUNCTION_20(v9);
  v0[31] = OUTLINED_FUNCTION_19();
  v10 = _s20PersistentParametersVMa_2(0);
  v0[32] = v10;
  OUTLINED_FUNCTION_20(v10);
  v0[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_237B51A5C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_31_11(*(v0 + 152) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters);
  sub_237A40628();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v20 = *(v0 + 192);
  v8 = *(v0 + 152);
  sub_237B5805C();
  sub_237B57D10();
  v9 = v5[9];
  v10 = *(v4 + v5[8]);
  v11 = *(v4 + v5[6]);
  v12 = *(v4 + v9);
  v13 = *(v4 + v9 + 8);
  v14 = (v6 + v7[7]);
  *v14 = 0u;
  v14[1] = 0u;
  OUTLINED_FUNCTION_86_3(v6 + v7[8]);
  *(v6 + v15) = v16;
  sub_237B57D10();
  *(v6 + v7[5]) = v10;
  *(v6 + v7[6]) = v11;
  *(v0 + 16) = v12;
  *(v0 + 40) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *(v0 + 24) = v13;
  OUTLINED_FUNCTION_11_42();
  sub_237B57CC0();
  OUTLINED_FUNCTION_85_3();
  sub_237A6F014();
  OUTLINED_FUNCTION_31_11(v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model);
  sub_237A40628();
  v17 = _s5ModelVMa_0(0);
  result = __swift_getEnumTagSinglePayload(v20, 1, v17);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 272) = v18;
  *v18 = v19;
  v18[1] = sub_237B51CD0;

  return sub_237B4BC0C();
}

uint64_t sub_237B51CD0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B51DCC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  OUTLINED_FUNCTION_22_25();
  sub_237B5805C();
  OUTLINED_FUNCTION_31_11(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics);
  sub_237A40628();
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[25];
    v6 = v0[23];
    v8 = v0[19];
    v7 = v0[20];
    v9 = v0[18];
    OUTLINED_FUNCTION_9_43();
    sub_237B57CC0();
    OUTLINED_FUNCTION_0_75();
    sub_237B57CC0();
    sub_2379DC1F8(v6, v9 + *(v5 + 32));
    OUTLINED_FUNCTION_31_11(v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics);
    sub_237A40628();

    v10 = OUTLINED_FUNCTION_71_5();
    if (__swift_getEnumTagSinglePayload(v10, v11, v7) == 1)
    {
      sub_237A7B808(v0[22], &qword_27DE9B660, &qword_237C0DD00);
    }

    else
    {
      v12 = v0[25];
      v13 = v0[21];
      v14 = v0[18];
      sub_237B5805C();
      sub_2379DC1F8(v13, v14 + *(v12 + 36));
    }

    OUTLINED_FUNCTION_8();

    return v15();
  }

  return result;
}

uint64_t sub_237B51FF0()
{

  OUTLINED_FUNCTION_9_43();
  sub_237B57CC0();
  OUTLINED_FUNCTION_0_75();
  sub_237B57CC0();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t MLSoundClassifier.evaluation(on:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52_8();
  MLSoundClassifier.DataSource.labeledSounds()();
  sub_237B5223C(v7, v1);

  (*(v5 + 32))(a1, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_126();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_126();
  return swift_storeEnumTagMultiPayload();
}

void sub_237B5223C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLSoundClassifier(0);
  v30 = v2;
  v31 = v6;
  sub_237B57D10();
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v39 = a1;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (!v10)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v14);
          ++v12;
          if (v10)
          {
            v12 = v14;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v15 = *(*(v39 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
      v16 = *(v15 + 16);
      v17 = *(v13 + 16);
      if (__OFADD__(v17, v16))
      {
        goto LABEL_24;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v17 + v16 > *(v13 + 24) >> 1)
      {
        sub_237BC0BF0();
        v13 = v18;
      }

      v10 &= v10 - 1;
      if (!*(v15 + 16))
      {
        break;
      }

      v19 = (*(v13 + 24) >> 1) - *(v13 + 16);
      sub_237C05ADC();
      if (v19 < v16)
      {
        goto LABEL_25;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = *(v13 + 16);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_26;
        }

        *(v13 + 16) = v22;
      }
    }
  }

  while (!v16);
  __break(1u);
LABEL_20:

  sub_237B43384();
  v24 = *(v23 + 16);

  sub_237A96C5C(v31, v24, v36);
  v33[0] = v36[0];
  v33[1] = v36[1];
  v34 = v37;
  v35 = v38;

  v26 = v32;
  sub_237A96D40(v25, v33, v36);
  if (!v26)
  {
    sub_237A9726C();
    v28 = v27;

    sub_237B4EEE4(v28, v29);
  }
}

uint64_t MLSoundClassifier.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v11[-v8];
  sub_237B5223C(a1, &v11[-v8]);
  (*(v6 + 32))(a2, v9, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  OUTLINED_FUNCTION_126();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_126();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B52674()
{
  type metadata accessor for MLSoundClassifier(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237B52740;

  return sub_237A5088C();
}

uint64_t sub_237B52740()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_110_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void MLSoundClassifier.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = _s5ModelVMa_0(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = v2;
  v18 = v17 - v16;
  memcpy(v56, v15, 0x48uLL);
  sub_2379F25FC();
  if (!v0)
  {
    v40 = v6;
    v41 = v13;
    type metadata accessor for MLSoundClassifier(0);
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();
    v19 = *(&v56[0] + 1);
    if (*(&v56[0] + 1))
    {
      v20 = *&v56[0];
      v21 = *(&v56[1] + 1);
      v22 = *&v56[1];
      v23 = v56[2];
      v24 = *(&v56[3] + 1);
      v25 = *&v56[3];
      v26 = *&v56[4];
    }

    else
    {
      v27 = v18;
      v28 = NSFullUserName();
      v20 = sub_237C086EC();
      v19 = v29;

      v18 = v27;
      v26 = 0;
      v21 = 0x8000000237C17C90;
      v23 = 0uLL;
      v24 = 0xE100000000000000;
      v22 = 0xD000000000000033;
      v25 = 49;
    }

    v51[0] = v20;
    v51[1] = v19;
    v51[2] = v22;
    v51[3] = v21;
    v52 = v23;
    v53 = v25;
    v54 = v24;
    v55 = v26;
    sub_237A40628();
    sub_2379FB3C4(v51, v30, v31, v32, v33, v34, v35, v36, v39, v10, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_2_70();
    sub_237B57CC0();
    sub_2379FC064(v51);
    sub_237C07E5C();
    v37 = OUTLINED_FUNCTION_55();
    v38(v37);
    (*(v42 + 8))(v18, v11);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLSoundClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v5 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v11 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  memcpy(v21, v4, sizeof(v21));
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  (*(v7 + 104))(v2, *MEMORY[0x277CC91D8], v5);

  sub_237C05ABC();
  MLSoundClassifier.write(to:metadata:)();
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_73();
}

uint64_t MLSoundClassifier.predictions(from:)(uint64_t a1)
{
  type metadata accessor for MLSoundClassifier(0);
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v2, v2);
}

uint64_t MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, double a2, double a3)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0();
  v113 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v134 = v8;
  OUTLINED_FUNCTION_41_0();
  v121 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v116 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v114 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OUTLINED_FUNCTION_41_0();
  v14 = type metadata accessor for MLSoundClassifier(v13);
  v115 = *(v14 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = (&v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v117 = v3;
  v22 = a1;
  OUTLINED_FUNCTION_1_71();
  sub_237B57D10();
  v23 = *(a1 + 16);
  sub_237A96C5C(v21, v23, &v130);
  v127[0] = v130;
  v127[1] = v131;
  v128 = v132;
  v129 = v133;
  v24 = v126;
  v25 = sub_237A988C8(v22, v127);
  if (v24)
  {
    return v17;
  }

  v109 = v22;
  v112 = v25;
  v110 = v23;
  v107 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = 0;
  v108 = v11;
  sub_237A40628();
  if (*(&v131 + 1))
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_56_8();
    if ((v29 & 1) != 0 && (BYTE8(v127[0]) & 1) == 0 && a3 != 0.975)
    {
      OUTLINED_FUNCTION_50_8();
      *&v130 = 0;
      *(&v130 + 1) = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000004BLL, 0x8000000237C1D2E0);
      sub_237C08A8C();
      MEMORY[0x2383DC360](0x73646E6F63657320, 0xE90000000000002ELL);
      v30 = v130;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      swift_allocError();
      *v31 = v30;
      *(v31 + 16) = 0u;
      *(v31 + 32) = 0u;
      *(v31 + 48) = 1;
LABEL_13:
      swift_willThrow();
      return v17;
    }
  }

  else
  {
    sub_237A7B808(&v130, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_56_8();
  }

  if (a3 < 0.5 || a3 > 15.0)
  {
    OUTLINED_FUNCTION_50_8();
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C1D2A0);
    OUTLINED_FUNCTION_92_3(&v130);
    MEMORY[0x2383DC360](544175136, 0xE400000000000000);
    OUTLINED_FUNCTION_90_3(&v130);
    v33 = v130;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v34 = swift_allocError();
    *v35 = v33;
    OUTLINED_FUNCTION_23_3(v34, v35);
    goto LABEL_13;
  }

  v119 = 0;
  v37 = 0;
  v105 = v28 + 16;
  v104 = v15 + 7;
  v103 = v28 + 32;
  v124 = v26 + 16;
  v17 = MEMORY[0x277D84F90];
  v123 = (v26 + 8);
  v38 = v109;
  while (1)
  {
    if (v37 == v110)
    {
      OUTLINED_FUNCTION_50_8();
      sub_237A560B8(v119);
      return v17;
    }

    v118 = v17;
    v39 = *(v28 + 80);
    v40 = *(v28 + 72);
    v122 = v37;
    v41 = v38 + ((v39 + 32) & ~v39) + v40 * v37;
    v42 = v27;
    v43 = v28;
    sub_237B57D10();
    v17 = v114;
    (*(v43 + 16))(v114, v41, v42);
    v44 = (v104 + ((*(v16 + 80) + 16) & ~*(v16 + 80))) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_22_25();
    sub_237B5805C();
    *(v45 + v44) = v112;
    (*(v43 + 32))(v45 + ((v39 + v44 + 8) & ~v39), v17, v121);

    v46 = v120;
    v47 = sub_2379DDFA4(&unk_237C13D90, v45);
    if (v46)
    {

      OUTLINED_FUNCTION_50_8();

      sub_237A560B8(v119);
      return v17;
    }

    v48 = v47;
    v120 = 0;

    KeyPath = swift_getKeyPath();
    v50 = *(v48 + 16);
    if (v50)
    {
      *&v127[0] = MEMORY[0x277D84F90];
      sub_237AC8A74();
      v51 = *&v127[0];
      v52 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v106 = v48;
      v53 = v48 + v52;
      v54 = *(v113 + 72);
      v125 = *(v113 + 16);
      v126 = v54;
      v55 = v111;
      v56 = v134;
      do
      {
        v125(v56, v53, v55);
        v57 = KeyPath;
        swift_getAtKeyPath();
        (*v123)(v56, v55);
        v58 = v130;
        *&v127[0] = v51;
        v59 = *(v51 + 2);
        if (v59 >= *(v51 + 3) >> 1)
        {
          sub_237AC8A74();
          v55 = v111;
          v51 = *&v127[0];
        }

        *(v51 + 2) = v59 + 1;
        *&v51[16 * v59 + 32] = v58;
        v53 += v126;
        --v50;
        v56 = v134;
        KeyPath = v57;
      }

      while (v50);

      v60 = v51;
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    v16 = v119;
    v126 = *(v60 + 2);
    if (v126)
    {
      break;
    }

    v63 = MEMORY[0x277D84F98];
LABEL_40:
    v80 = 1 << *(v63 + 32);
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v82 = v81 & *(v63 + 64);
    if (!v82)
    {
      v87 = 0;
      v86 = (v80 + 63) >> 6;
      while (1)
      {
        v83 = v82 + 1;
        if (v82 + 1 >= v86)
        {
          goto LABEL_69;
        }

        v88 = *(v63 + 72 + 8 * v82);
        v87 += 64;
        ++v82;
        if (v88)
        {
          v85 = (v88 - 1) & v88;
          v84 = __clz(__rbit64(v88)) + v87;
          goto LABEL_49;
        }
      }
    }

    v83 = 0;
    v84 = __clz(__rbit64(v82));
    v85 = (v82 - 1) & v82;
    v86 = (v80 + 63) >> 6;
LABEL_49:
    ++v122;
    v89 = (*(v63 + 48) + 16 * v84);
    v90 = *v89;
    v91 = v89[1];
    v92 = *(*(v63 + 56) + 8 * v84);

LABEL_50:

    while (v85)
    {
LABEL_56:
      v94 = __clz(__rbit64(v85));
      v85 &= v85 - 1;
      v95 = v94 | (v83 << 6);
      v96 = *(*(v63 + 56) + 8 * v95);
      if (v92 < v96)
      {
        v90 = *(*(v63 + 48) + 16 * v95);

        v92 = v96;
        goto LABEL_50;
      }
    }

    while (1)
    {
      v93 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v93 >= v86)
      {
        break;
      }

      v85 = *(v63 + 64 + 8 * v93);
      ++v83;
      if (v85)
      {
        v83 = v93;
        goto LABEL_56;
      }
    }

    v119 = v16;

    v17 = v118;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237BC0CB8();
      v17 = v99;
    }

    v38 = v109;
    v37 = v122;
    OUTLINED_FUNCTION_56_8();
    v97 = *(v17 + 16);
    if (v97 >= *(v17 + 24) >> 1)
    {
      v100 = v27;
      v101 = v28;
      sub_237BC0CB8();
      v28 = v101;
      v27 = v100;
      v17 = v102;
    }

    *(v17 + 16) = v97 + 1;
    v98 = v17 + 16 * v97;
    *(v98 + 32) = v90;
    *(v98 + 40) = v91;
  }

  v61 = 0;
  v62 = (v60 + 40);
  v63 = MEMORY[0x277D84F98];
  v125 = v60;
  while (v61 < *(v60 + 2))
  {
    v65 = *(v62 - 1);
    v64 = *v62;

    sub_237A560B8(v16);
    swift_isUniquelyReferenced_nonNull_native();
    *&v130 = v63;
    v66 = sub_237ACAC78(v65, v64);
    if (__OFADD__(*(v63 + 16), (v67 & 1) == 0))
    {
      goto LABEL_67;
    }

    v68 = v66;
    v69 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3E8, &qword_237C13B50);
    v70 = sub_237C090AC();
    v63 = v130;
    if (v70)
    {
      v71 = sub_237ACAC78(v65, v64);
      if ((v69 & 1) != (v72 & 1))
      {
        goto LABEL_71;
      }

      v68 = v71;
    }

    if (v69)
    {
    }

    else
    {
      *(v63 + 8 * (v68 >> 6) + 64) |= 1 << v68;
      v73 = (*(v63 + 48) + 16 * v68);
      *v73 = v65;
      v73[1] = v64;
      *(*(v63 + 56) + 8 * v68) = 0;
      v74 = *(v63 + 16);
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_70;
      }

      *(v63 + 16) = v76;
    }

    v77 = *(v63 + 56);
    v78 = *(v77 + 8 * v68);
    v75 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    v60 = v125;
    if (v75)
    {
      goto LABEL_68;
    }

    ++v61;
    *(v77 + 8 * v68) = v79;
    v62 += 2;
    v16 = sub_2379E3E94;
    if (v126 == v61)
    {
      goto LABEL_40;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237B53910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  _s5ModelVMa_0(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B539A4);
}

uint64_t sub_237B539A4()
{
  OUTLINED_FUNCTION_123_1();
  v8 = v1;
  OUTLINED_FUNCTION_33();
  v2 = v0[5];
  v3 = v0[4];
  type metadata accessor for MLSoundClassifier(0);
  OUTLINED_FUNCTION_8_39();
  sub_237B57D10();
  result = sub_237AC9C4C(v2, v3);
  v0[7] = result;
  if (result)
  {
    OUTLINED_FUNCTION_13_19(&unk_237C13EB0);
    v7 = v5;
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_237B53A8C;
    OUTLINED_FUNCTION_11();

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237B53A8C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
    OUTLINED_FUNCTION_2_70();
  }

  sub_237B57CC0();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_237B53BF8()
{
  OUTLINED_FUNCTION_9();
  **(v0 + 16) = *(v0 + 80);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237B53C60()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B53CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = _s5ModelVMa_0(0);
  v4[7] = swift_task_alloc();
  v5 = sub_237C074BC();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v4[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B53F8C);
}

uint64_t sub_237B53F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v10[25] = *(v10[2] + 16);
  sub_237BC23A0();
  v10[26] = 0;
  v10[27] = v11;
  if (v10[25])
  {
    (*(v10[23] + 16))(v10[24], v10[2] + ((*(v10[23] + 80) + 32) & ~*(v10[23] + 80)), v10[22]);
    sub_237C08A4C();
    OUTLINED_FUNCTION_79_4();
    sub_237A40628();
    OUTLINED_FUNCTION_30();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v22 = OUTLINED_FUNCTION_78_3();
      v23(v22);
      swift_task_alloc();
      OUTLINED_FUNCTION_35();
      v10[30] = v24;
      *v24 = v25;
      OUTLINED_FUNCTION_18_32(v24);
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821153B0](v26);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_77_3();
      v29(v28);
      swift_task_alloc();
      OUTLINED_FUNCTION_35();
      v10[28] = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_17_26(v30);
      OUTLINED_FUNCTION_68();

      return MEMORY[0x2821153A0](v32);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_68();

    return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
  }
}

uint64_t sub_237B5420C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B54308()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B54404()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v2 = v0[29];
  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
    sub_237BC23A0();
  }

  v4 = OUTLINED_FUNCTION_46_12();
  v5(v4);
  if (v1)
  {
    v7 = v0[9];
    v6 = v0[10];
    v43 = v0[25];
    v44 = v0[8];
    v8 = v0[3];
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();

    sub_237C0874C();
    OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_45_11();
    sub_237B56FD4(v9, v10, MEMORY[0x277CC4F90]);
    v11 = sub_237C085AC();
    OUTLINED_FUNCTION_82_4(v11, v12, v13, v14, v15, v16, v17, v18, v42, v43);
    v8(v6);
    sub_237A560B8(v8);
    (*(v7 + 8))(v6, v44);
  }

  v19 = OUTLINED_FUNCTION_41_11();
  v20(v19);
  OUTLINED_FUNCTION_83_4();
  if (v21)
  {
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_52_13();
  v24();
  sub_237C08A4C();
  if (v2)
  {
    v25 = OUTLINED_FUNCTION_41_11();
    v26(v25);

    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_79_4();
  sub_237A40628();
  OUTLINED_FUNCTION_30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = OUTLINED_FUNCTION_78_3();
    v30(v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[30] = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_18_32(v31);
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153B0](v33);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_77_3();
    v36(v35);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_17_26(v37);
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153A0](v39);
  }
}

uint64_t sub_237B54788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_105_1();
  v10();

  v11 = OUTLINED_FUNCTION_85_3();
  v12(v11);
  OUTLINED_FUNCTION_29_14();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_68();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_237B54858()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v2 = v0[31];
  OUTLINED_FUNCTION_104_0();
  if (v3)
  {
    sub_237BC23A0();
  }

  v4 = OUTLINED_FUNCTION_46_12();
  v5(v4);
  if (v1)
  {
    v7 = v0[9];
    v6 = v0[10];
    v43 = v0[25];
    v44 = v0[8];
    v8 = v0[3];
    OUTLINED_FUNCTION_8_39();
    sub_237B57D10();

    sub_237C0874C();
    OUTLINED_FUNCTION_55_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    OUTLINED_FUNCTION_45_11();
    sub_237B56FD4(v9, v10, MEMORY[0x277CC4F90]);
    v11 = sub_237C085AC();
    OUTLINED_FUNCTION_82_4(v11, v12, v13, v14, v15, v16, v17, v18, v42, v43);
    v8(v6);
    sub_237A560B8(v8);
    (*(v7 + 8))(v6, v44);
  }

  v19 = OUTLINED_FUNCTION_41_11();
  v20(v19);
  OUTLINED_FUNCTION_83_4();
  if (v21)
  {
    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_52_13();
  v24();
  sub_237C08A4C();
  if (v2)
  {
    v25 = OUTLINED_FUNCTION_41_11();
    v26(v25);

    OUTLINED_FUNCTION_29_14();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_53_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_79_4();
  sub_237A40628();
  OUTLINED_FUNCTION_30();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = OUTLINED_FUNCTION_78_3();
    v30(v29);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[30] = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_18_32(v31);
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153B0](v33);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_77_3();
    v36(v35);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v37;
    *v37 = v38;
    OUTLINED_FUNCTION_17_26(v37);
    OUTLINED_FUNCTION_53_3();

    return MEMORY[0x2821153A0](v39);
  }
}

uint64_t sub_237B54BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_105_1();
  v10();

  v11 = OUTLINED_FUNCTION_85_3();
  v12(v11);
  OUTLINED_FUNCTION_29_14();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_68();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

void MLSoundClassifier.debugDescription.getter()
{
  OUTLINED_FUNCTION_153();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  type metadata accessor for MLSoundClassifier(0);
  v1 = MLSoundClassifier.ModelParameters.description.getter();
  v3 = v2;
  v4 = MLClassifierMetrics.description.getter();
  v6 = v5;
  sub_237B57D10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_237B57CC0();
  v8 = MLClassifierMetrics.description.getter();
  v10 = v9;
  MEMORY[0x2383DC360](v1, v3);

  MEMORY[0x2383DC360](v4, v6);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (EnumCaseMultiPayload <= 1)
  {
    MEMORY[0x2383DC360](v8, v10);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  OUTLINED_FUNCTION_150();
}

id MLSoundClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLSoundClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

void sub_237B54EF0()
{
  OUTLINED_FUNCTION_74();
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  v3 = sub_237C05A8C();
  v5 = v4;
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_114_1();
  v6(v7);
  sub_237C06C7C();
  v8 = sub_237C05A8C();
  v10 = v9;
  v11 = OUTLINED_FUNCTION_114_1();
  v6(v11);
  sub_237A556DC(v8, v10, v3, v5);

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B55038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = MEMORY[0x277CBFD28];
  sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
  sub_2379D9224(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30, v9);
  sub_237C0831C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
}

uint64_t sub_237B551C4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
  v5 = v3;
  sub_237C0830C();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_237B55278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = *(v3 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
  sub_237C082BC();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t sub_237B55398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v14;
    v6 = (v3 + 32);
    v7 = *(v14 + 16);
    v8 = v4;
    do
    {
      v9 = *v6;
      v15 = v5;
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v15;
      }

      v10 = v9;
      *(v5 + 16) = v7 + 1;
      *(v5 + 4 * v7 + 32) = v10;
      ++v6;
      ++v7;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_237C0B660;
  *(v11 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
  sub_237C082BC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

void sub_237B55548(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v6 = 0;
    v5 = v14;
    v7 = v3 + 32;
    while (v6 < *(v3 + 16))
    {
      sub_2379FED88(v7, v13);
      v8 = sub_237B5574C();
      sub_237A7B808(v13, &qword_27DE9A998, &unk_237C0C100);
      v14 = v5;
      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v14;
      }

      ++v6;
      *(v5 + 16) = v9 + 1;
      *(v5 + 4 * v9 + 32) = v8;
      v7 += 32;
      if (v4 == v6)
      {
        v2 = a2;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v13[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_237C0B660;
    *(v10 + 32) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
    sub_237C082BC();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v11);
  }
}

float sub_237B5574C()
{
  sub_237A40628();
  if (!v53)
  {
    goto LABEL_16;
  }

  v0 = sub_237A40628();
  v7 = OUTLINED_FUNCTION_42_13(v0, v1, v2, MEMORY[0x277D83A90], v3, v4, v5, v6, v39, v45, v51[0]);
  if (!v7)
  {
    v15 = OUTLINED_FUNCTION_42_13(v7, v8, v9, MEMORY[0x277D839F8], v10, v11, v12, v13, v40, v46, v51[0]);
    if (v15)
    {
      v14 = *&v41;
      goto LABEL_14;
    }

    if (OUTLINED_FUNCTION_42_13(v15, v16, v17, MEMORY[0x277D83B88], v18, v19, v20, v21, v41, v47, v51[0]))
    {
      v14 = v42;
      goto LABEL_14;
    }

    v22 = sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    v29 = OUTLINED_FUNCTION_42_13(v22, v23, v24, v22, v25, v26, v27, v28, v42, v48, v51[0]);
    if (v29)
    {
      [v43 floatValue];
      v14 = v36;

      goto LABEL_14;
    }

    if (OUTLINED_FUNCTION_42_13(v29, v30, v31, MEMORY[0x277D837D0], v32, v33, v34, v35, v43, v49, v51[0]))
    {
      v37 = sub_237B55FF4(v44, v50);
      if ((v37 & 0x100000000) != 0)
      {
        v14 = NAN;
      }

      else
      {
        v14 = *&v37;
      }

      goto LABEL_14;
    }

    __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_16:
    v14 = NAN;
    goto LABEL_17;
  }

  v14 = *&v40;
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_17:
  sub_237A7B808(v52, &qword_27DE9A998, &unk_237C0C100);
  return v14;
}

uint64_t sub_237B558B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v13;
    v6 = *(v13 + 16);
    v7 = (v3 + 36);
    v8 = v4;
    do
    {
      if (*v7)
      {
        v9 = NAN;
      }

      else
      {
        v9 = *(v7 - 1);
      }

      v14 = v5;
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v14;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 4 * v6 + 32) = v9;
      v7 += 2;
      ++v6;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237C0B660;
  *(v10 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
  sub_237C082BC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
}

uint64_t sub_237B55A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v15 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = (v3 + 40);
    v8 = v4;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v16 = v5;
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_237AC8CD4();
        v5 = v16;
      }

      v11 = v9;
      if (v10)
      {
        v11 = NAN;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 4 * v6 + 32) = v11;
      v7 += 2;
      ++v6;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237C0B660;
  *(v12 + 32) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
  sub_237C082BC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
}

void sub_237B55C48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
LABEL_24:
    v24[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_237C0B660;
    *(v14 + 32) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
    sub_237C082BC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v15);
    return;
  }

  v25 = MEMORY[0x277D84F90];
  v17 = v4;
  sub_237AC8CD4();
  v6 = 0;
  v5 = v25;
  v7 = v3 + 32;
  while (v6 < *(v3 + 16))
  {
    sub_237A40628();
    sub_237A40628();
    if (!v23)
    {
      goto LABEL_19;
    }

    sub_237A40628();
    if (swift_dynamicCast())
    {
      v8 = *&v19;
    }

    else if (swift_dynamicCast())
    {
      v8 = *&v19;
    }

    else if (swift_dynamicCast())
    {
      v8 = v19;
    }

    else
    {
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v9 = v19;
        [v19 floatValue];
        v8 = v10;
      }

      else
      {
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_19:
          v8 = NAN;
          goto LABEL_20;
        }

        v18 = 0.0;
        v11 = sub_237B4AC34(v19, v20, &v18);

        v12 = !v11;
        v4 = v17;
        if (v12)
        {
          v8 = NAN;
        }

        else
        {
          v8 = v18;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_20:
    sub_237A7B808(v22, &qword_27DE9A998, &unk_237C0C100);
    sub_237A7B808(v24, &qword_27DE9A998, &unk_237C0C100);
    v25 = v5;
    v13 = *(v5 + 16);
    if (v13 >= *(v5 + 24) >> 1)
    {
      sub_237AC8CD4();
      v4 = v17;
      v5 = v25;
    }

    ++v6;
    *(v5 + 16) = v13 + 1;
    *(v5 + 4 * v13 + 32) = v8;
    v7 += 32;
    if (v4 == v6)
    {
      v2 = a2;
      goto LABEL_24;
    }
  }

  __break(1u);
}

unint64_t sub_237B55FF4(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_237B4AC34(a1, a2, &v5);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

uint64_t sub_237B56060()
{
  v1 = _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_88_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + v3;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    OUTLINED_FUNCTION_126();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v6 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        sub_2379DBC9C(*v4, *(v4 + 8));

        goto LABEL_5;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v12 + 8))(v0 + v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);

        goto LABEL_5;
      default:
        break;
    }
  }

  v7 = (v4 + *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = &qword_27DE9A780;
    v10 = &unk_237C0A700;
  }

  else
  {
    v9 = &qword_27DE9A788;
    v10 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_12_0();
  (*(v11 + 8))(v4 + v8);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B562C0()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_46();
  v3 = _s5ModelVMa_0(v2);
  OUTLINED_FUNCTION_20(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2379D6854;

  return sub_237B5006C(v0);
}

uint64_t sub_237B5638C()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier(0);
  OUTLINED_FUNCTION_88_0();
  v4 = *(v3 + 80);
  v53 = *(v5 + 64);
  v56 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v52 = *(v6 + 80);
  v54 = (v4 + 16) & ~v4;
  v8 = v1 + v54;
  v9 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v1 + v54, 1, v9))
  {
    sub_237C05BFC();
    OUTLINED_FUNCTION_12_0();
    (*(v10 + 8))(v1 + v54);
  }

  v11 = v8 + v2[5];
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v13 = OUTLINED_FUNCTION_111_0();
        v14(v13);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        sub_2379DBC9C(*v11, *(v11 + 8));

        goto LABEL_7;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v46 + 8))(v11);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_108_0(*(v47 + 48));

        OUTLINED_FUNCTION_108_0(*(v47 + 64));
        goto LABEL_7;
      default:
        break;
    }
  }

  v15 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v16 = (v11 + *(v15 + 28));
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v17 = *(_s5ModelVMa_0(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = &qword_27DE9A780;
    v19 = &unk_237C0A700;
  }

  else
  {
    v18 = &qword_27DE9A788;
    v19 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_12_0();
  (*(v20 + 8))(v11 + v17);

  v21 = v8 + v2[7];
  v22 = swift_getEnumCaseMultiPayload();
  if (v22 == 2)
  {
LABEL_17:
  }

  else if (v22 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        v23 = OUTLINED_FUNCTION_111_0();
        v24(v23);
        break;
      case 2u:
        goto LABEL_17;
      case 3u:
        sub_2379DBC9C(*v21, *(v21 + 8));

        goto LABEL_17;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v48 + 8))(v21);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_108_0(*(v49 + 48));

        OUTLINED_FUNCTION_108_0(*(v49 + 64));
        goto LABEL_17;
      default:
        break;
    }
  }

  v25 = (v21 + *(v15 + 28));
  if (v25[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v26 = (v8 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v27 = swift_getEnumCaseMultiPayload();
  v55 = v7;
  switch(v27)
  {
    case 2:

      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v51 = v1;
      v31 = *(v30 + 20);
      v32 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v34 = *(v33 + 8);
      v35 = v26 + v31;
      v1 = v51;
      v34(v35, v32);
      v34(v26 + *(v30 + 24), v32);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = &qword_27DE9AA00;
        v29 = &qword_237C0B6F0;
      }

      else
      {
        v28 = &qword_27DE9A9C8;
        v29 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      OUTLINED_FUNCTION_12_0();
      (*(v36 + 8))(v26);
      break;
  }

  v37 = (v8 + v2[9]);
  OUTLINED_FUNCTION_85_3();
  v38 = swift_getEnumCaseMultiPayload();
  switch(v38)
  {
    case 2:

      break;
    case 1:
      v41 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v42 = *(v41 + 20);
      v43 = sub_237C05DBC();
      v44 = *(*(v43 - 8) + 8);
      v44(v37 + v42, v43);
      v44(v37 + *(v41 + 24), v43);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_87_3() == 1)
      {
        v39 = &qword_27DE9AA00;
        v40 = &qword_237C0B6F0;
      }

      else
      {
        v39 = &qword_27DE9A9C8;
        v40 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      OUTLINED_FUNCTION_12_0();
      (*(v45 + 8))(v37);
      break;
  }

  (*(v55 + 8))(v1 + ((((v53 + v54 + 7) & 0xFFFFFFFFFFFFFFF8) + v52 + 8) & ~v52), v56);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_237B56A5C(uint64_t a1)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_80_4();
  v2 = type metadata accessor for MLSoundClassifier(v1);
  OUTLINED_FUNCTION_1(v2);
  v3 = sub_237C05ADC();
  OUTLINED_FUNCTION_20(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81_3(v4);
  *v5 = v6;
  v5[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_121_1();

  return sub_237B53910(v7, v8, v9, v10);
}

id sub_237B56B9C@<X0>(void *a1@<X8>)
{
  result = MLSoundClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B56BE0(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  _s5ModelVMa_0(0);
  OUTLINED_FUNCTION_135();
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
    type metadata accessor for MLSoundClassifier.ModelParameters(0);
    OUTLINED_FUNCTION_135();
    if (*(v16 + 84) == a2)
    {
      v8 = v15;
      v12 = a3[7];
    }

    else
    {
      v8 = type metadata accessor for MLClassifierMetrics(0);
      v12 = a3[8];
    }

    goto LABEL_5;
  }

  v14 = *(a1 + a3[6]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_237B56D4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8D0, &qword_237C0E1E8);
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    _s5ModelVMa_0(0);
    OUTLINED_FUNCTION_135();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6]) = (a2 - 1);
        return;
      }

      type metadata accessor for MLSoundClassifier.ModelParameters(0);
      OUTLINED_FUNCTION_135();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[7];
      }

      else
      {
        v10 = type metadata accessor for MLClassifierMetrics(0);
        v14 = a4[8];
      }
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_237B56EA0(uint64_t a1)
{
  sub_237B56F7C(319);
  if (v1 <= 0x3F)
  {
    _s5ModelVMa_0(319);
    if (v2 <= 0x3F)
    {
      sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MLSoundClassifier.ModelParameters(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MLClassifierMetrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_237B56F7C(uint64_t a1)
{
  if (!qword_27DE9B888)
  {
    type metadata accessor for TrainingTablePrinter(255);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9B888);
    }
  }
}

uint64_t sub_237B56FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_237B5701C@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t sub_237B57088(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2379D9D48;

  return sub_237B4EB5C(a1, a2, v10, a4, a5);
}

uint64_t sub_237B57150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a3;
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2379D6854;

  return sub_237B4E7D4(a1, a2, v11, v12, a5, a6);
}

uint64_t sub_237B57220(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B572C0;

  return sub_237B52674();
}

uint64_t sub_237B572C0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_237B573B8()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier(0);
  OUTLINED_FUNCTION_88_0();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = type metadata accessor for TrainingTablePrinter(0);
  v6 = OUTLINED_FUNCTION_71_5();
  if (!__swift_getEnumTagSinglePayload(v6, v7, v5))
  {
    sub_237C05BFC();
    OUTLINED_FUNCTION_12_0();
    (*(v8 + 8))(v4);
  }

  v9 = v4 + v2[5];
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_55();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
  }

  else if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v11 + 8))(v9);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        sub_2379DBC9C(*v9, *(v9 + 8));

        goto LABEL_7;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v40 + 8))(v9);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_103_1(*(v41 + 48));

        OUTLINED_FUNCTION_103_1(*(v41 + 64));
        goto LABEL_7;
      default:
        break;
    }
  }

  v12 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v13 = (v9 + *(v12 + 28));
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = *(_s5ModelVMa_0(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = &qword_27DE9A780;
    v16 = &unk_237C0A700;
  }

  else
  {
    v15 = &qword_27DE9A788;
    v16 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_12_0();
  (*(v17 + 8))(v9 + v14);

  v18 = v4 + v2[7];
  OUTLINED_FUNCTION_55();
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 == 2)
  {
LABEL_17:
  }

  else if (v19 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v20 + 8))(v18);
        break;
      case 2u:
        goto LABEL_17;
      case 3u:
        sub_2379DBC9C(*v18, *(v18 + 8));

        goto LABEL_17;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v42 + 8))(v18);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_103_1(*(v43 + 48));

        OUTLINED_FUNCTION_103_1(*(v43 + 64));
        goto LABEL_17;
      default:
        break;
    }
  }

  v21 = (v18 + *(v12 + 28));
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = (v4 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_55();
  v23 = swift_getEnumCaseMultiPayload();
  switch(v23)
  {
    case 2:

      break;
    case 1:
      v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v45 = *(v26 + 20);
      v27 = sub_237C05DBC();
      v28 = *(*(v27 - 8) + 8);
      v28(v22 + v45, v27);
      v28(v22 + *(v26 + 24), v27);
      v1 = v0;
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = &qword_27DE9AA00;
        v25 = &qword_237C0B6F0;
      }

      else
      {
        v24 = &qword_27DE9A9C8;
        v25 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      OUTLINED_FUNCTION_12_0();
      (*(v29 + 8))(v22);
      break;
  }

  v30 = (v4 + v2[9]);
  v31 = swift_getEnumCaseMultiPayload();
  switch(v31)
  {
    case 2:

      break;
    case 1:
      v34 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v35 = *(v34 + 20);
      v36 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v38 = *(v37 + 8);
      v38(v30 + v35, v36);
      v38(v30 + *(v34 + 24), v36);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      OUTLINED_FUNCTION_126();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = &qword_27DE9AA00;
        v33 = &qword_237C0B6F0;
      }

      else
      {
        v32 = &qword_27DE9A9C8;
        v33 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_12_0();
      (*(v39 + 8))(v30);
      break;
  }

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_237B57A44(uint64_t a1)
{
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_33();
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLSoundClassifier(v2);
  OUTLINED_FUNCTION_1(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_121_1();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_237B57B54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B57B9C()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_2379D6854;
  v7 = OUTLINED_FUNCTION_57_7();

  return sub_237B514EC(v7, v8, v9, v2, v3, v4);
}

uint64_t sub_237B57C50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D5A0, &unk_237C13F98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B57CC0()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237B57D10()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t sub_237B57D68()
{
  OUTLINED_FUNCTION_153();
  v1 = _s10ClassifierVMa_0(0);
  OUTLINED_FUNCTION_88_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 80);
  v7 = v0 + v3;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v8 = OUTLINED_FUNCTION_87_3();
  if (v8 == 2)
  {
LABEL_5:
  }

  else if (v8 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v9 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        goto LABEL_5;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v19 + 8))(v0 + v3);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v20 + 48));

        OUTLINED_FUNCTION_56(*(v20 + 64));
        goto LABEL_5;
      default:
        break;
    }
  }

  v10 = (v7 + *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = &qword_27DE9A700;
    v13 = &qword_237C0A160;
  }

  else
  {
    v12 = &qword_27DE9A6F8;
    v13 = &unk_237C10180;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_12_0();
  (*(v14 + 8))(v7 + v11);
  OUTLINED_FUNCTION_74_5();

  v15 = v0 + ((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6);
  sub_237C05BFC();
  OUTLINED_FUNCTION_12_0();
  (*(v16 + 8))(v15);

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v17);
}

uint64_t sub_237B5805C()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t sub_237B580B4()
{
  OUTLINED_FUNCTION_27();
  v3 = OUTLINED_FUNCTION_80_4();
  v4 = _s10ClassifierVMa_0(v3);
  OUTLINED_FUNCTION_1(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  OUTLINED_FUNCTION_107_1();
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_20(v10);
  v12 = (*(v11 + 80) + v9 + 8) & ~*(v11 + 80);
  v13 = *(v0 + v9);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_81_3(v14);
  *v15 = v16;
  v15[1] = sub_2379D9D48;

  return sub_237B57150(v1, v0 + v6, (v0 + v2), (v0 + v8), v13, v0 + v12);
}

uint64_t sub_237B5820C()
{
  OUTLINED_FUNCTION_153();
  v1 = _s10ClassifierVMa_0(0);
  OUTLINED_FUNCTION_88_0();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 80);
  v7 = v0 + v3;
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v8 = OUTLINED_FUNCTION_87_3();
  if (v8 == 2)
  {
LABEL_5:
  }

  else if (v8 == 1)
  {
    type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(OUTLINED_FUNCTION_87_3())
    {
      case 0u:
      case 1u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v9 + 8))(v0 + v3);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        OUTLINED_FUNCTION_101_0();
        goto LABEL_5;
      case 4u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v19 + 8))(v0 + v3);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C970, &unk_237C11770);
        OUTLINED_FUNCTION_56(*(v20 + 48));

        OUTLINED_FUNCTION_56(*(v20 + 64));
        goto LABEL_5;
      default:
        break;
    }
  }

  v10 = (v7 + *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v11 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = &qword_27DE9A700;
    v13 = &qword_237C0A160;
  }

  else
  {
    v12 = &qword_27DE9A6F8;
    v13 = &unk_237C10180;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_12_0();
  (*(v14 + 8))(v7 + v11);
  OUTLINED_FUNCTION_74_5();

  v15 = v0 + ((v7 + v6 + 8) & ~v6);
  sub_237C05BFC();
  OUTLINED_FUNCTION_12_0();
  (*(v16 + 8))(v15);

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v17);
}

uint64_t sub_237B584F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_80_4();
  v11 = _s10ClassifierVMa_0(v10);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_107_1();
  v12 = type metadata accessor for TrainingTablePrinter(0);
  OUTLINED_FUNCTION_20(v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_81_3(v13);
  *v14 = v15;
  v14[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_68();

  return v21(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for TrainingTablePrinter(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_237C05BFC();
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 8))(v0 + v2);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B58738(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = OUTLINED_FUNCTION_46();
  v5 = type metadata accessor for TrainingTablePrinter(v4);
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a2(v2, v7, v8);
}

uint64_t OUTLINED_FUNCTION_29_14()
{
}

uint64_t OUTLINED_FUNCTION_42_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2)
{

  return sub_237C05F6C();
}

uint64_t OUTLINED_FUNCTION_44_13()
{

  return sub_237B5805C();
}

unint64_t OUTLINED_FUNCTION_46_12()
{
  v4 = *(v2 + 160);
  *(v0 + 16) = v1;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_50_9()
{

  return sub_237B57D10();
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1)
{

  return swift_dynamicCastMetatype();
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_82_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_237C0748C();
}

uint64_t OUTLINED_FUNCTION_83_4()
{
  ++v1[26];
  v1[27] = v0;
  return v1[24];
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_90_3(uint64_t a1)
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_92_3(uint64_t a1)
{

  return sub_237C08A8C();
}

void OUTLINED_FUNCTION_93_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_237B57C50(v2, v3);
}

uint64_t OUTLINED_FUNCTION_101_0()
{
  sub_2379DBC9C(*v0, *(v0 + 8));
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return sub_2379DDF5C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_118_0()
{
  *(v0 - 136) = 0;
  *(v0 - 128) = 0xE000000000000000;

  return sub_237C08EDC();
}

void OUTLINED_FUNCTION_119_1()
{

  JUMPOUT(0x2383DC360);
}

uint64_t sub_237B58F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_237B5903C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t _s10ClassifierVMa_0(uint64_t a1)
{
  result = qword_27DE9D5B8;
  if (!qword_27DE9D5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237B59138(uint64_t a1)
{
  type metadata accessor for MLSoundClassifier.ModelParameters(319);
  if (v1 <= 0x3F)
  {
    sub_2379D4F64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237B59204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v25 = v6;
  v26 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C460, &unk_237C16A10);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v23 - v17;
  v27 = a3;
  sub_237B5C4AC(a2, a3);
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  sub_2379D8FF4(a2 + *(v19 + 28), v28, &qword_27DE9A998, &unk_237C0C100);
  if (v29)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_2379D9054(v28, &qword_27DE9A998, &unk_237C0C100);
  }

  sub_237A0C928();
  sub_237C072AC();
  sub_237C0725C();
  (*(v11 + 16))(v15, v18, v9);
  v20 = v24;
  sub_237C0730C();
  sub_237B5C510(a2);
  (*(v11 + 8))(v18, v9);
  v21 = _s10ClassifierVMa_0(0);
  (*(v25 + 32))(v27 + *(v21 + 20), v20, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B5950C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v21 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = OUTLINED_FUNCTION_83();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_14_31();
  v18 = _s10ClassifierVMa_0(v17);
  sub_2379D8FF4(v1 + *(v18 + 20), v2, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v21;
    (*(v21 + 32))(v7, v2, v3);
    sub_237B5C4AC(v1, v22);
    _s5ModelVMa_0(0);
    sub_237C0737C();
    (*(v19 + 8))(v7, v3);
  }

  else
  {
    (*(v10 + 32))(v13, v2, v8);
    sub_237B5C4AC(v1, v22);
    _s5ModelVMa_0(0);
    sub_237C072BC();
    (*(v10 + 8))(v13, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_237B597BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[12] = v9;
  OUTLINED_FUNCTION_1(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[15] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[16] = v12;
  v0[17] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[18] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[19] = v14;
  v0[20] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[21] = v15;
  OUTLINED_FUNCTION_20(v15);
  v0[22] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_237B599A8()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = _s10ClassifierVMa_0(0);
  sub_2379D8FF4(v2 + *(v3 + 20), v1, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v5, v0[12]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[25] = v6;
    *v6 = v7;
    v6[1] = sub_237B59D2C;
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115360](v8);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v5, v0[18]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[23] = v9;
    *v9 = v10;
    v9[1] = sub_237B59B38;
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115308](v11);
  }
}

uint64_t sub_237B59B38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B59C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[17];
  v14 = v12[15];
  (*(v12[19] + 8))(v12[20], v12[18]);
  v15 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v15, v16);
  v17 = _s5ModelVMa_0(0);
  v18 = OUTLINED_FUNCTION_84_1(v17);
  v19(v18, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_237B59D2C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B59E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = *(v12 + 88);
  v14 = *(v12 + 72);
  v15 = OUTLINED_FUNCTION_38();
  v16(v15);
  v17 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v17, v18);
  v19 = _s5ModelVMa_0(0);
  v20 = OUTLINED_FUNCTION_84_1(v19);
  v21(v20, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_237B59F1C()
{
  OUTLINED_FUNCTION_9();
  v1[10] = v22;
  v1[11] = v0;
  v1[8] = v2;
  v1[9] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[12] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[15] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[18] = v14;
  OUTLINED_FUNCTION_1(v14);
  v1[19] = v15;
  v1[20] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[21] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[24] = v18;
  OUTLINED_FUNCTION_20(v18);
  v1[25] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_237B5A120()
{
  v1 = v0[25];
  v2 = v0[11];
  v3 = _s10ClassifierVMa_0(0);
  sub_2379D8FF4(v2 + *(v3 + 20), v1, &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[25];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[16] + 32))(v0[17], v5, v0[15]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v6;
    *v6 = v7;
    v6[1] = sub_237B5A4A4;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115358](v8);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v5, v0[21]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[26] = v9;
    *v9 = v10;
    v9[1] = sub_237B5A2B0;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115300](v11);
  }
}

uint64_t sub_237B5A2B0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B5A3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = v12[20];
  v14 = v12[18];
  (*(v12[22] + 8))(v12[23], v12[21]);
  v15 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v15, v16);
  v17 = _s5ModelVMa_0(0);
  v18 = OUTLINED_FUNCTION_84_1(v17);
  v19(v18, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_237B5A4A4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B5A59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_116_0();
  v13 = *(v12 + 112);
  v14 = *(v12 + 96);
  v15 = OUTLINED_FUNCTION_38();
  v16(v15);
  v17 = OUTLINED_FUNCTION_83();
  sub_237B5C4AC(v17, v18);
  v19 = _s5ModelVMa_0(0);
  v20 = OUTLINED_FUNCTION_84_1(v19);
  v21(v20, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_161();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_99_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_237B5A694(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v57 = v4;
  v58 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v55 = v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v54 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v53 = v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v50 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v49 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718) - 8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v27 = OUTLINED_FUNCTION_14_31();
  v28 = *(_s10ClassifierVMa_0(v27) + 20);
  v29 = *(_s5ModelVMa_0(0) + 20);
  v30 = *(v25 + 56);
  sub_2379D8FF4(v59 + v28, v2, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v60 + v29, v2 + v30, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v2, v21, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v31 = v53;
      v32 = v54;
      v33 = OUTLINED_FUNCTION_21();
      v34 = v56;
      v35(v33, v21, v56);
      v36 = v57;
      OUTLINED_FUNCTION_28_18();
      v37 = v55;
      v38 = v58;
      v39(v55);
      sub_2379D9224(&qword_27DE9A7A0, &qword_27DE9A700, &qword_237C0A160, MEMORY[0x277CC5148]);
      sub_2379D9224(&qword_27DE9A7A8, &qword_27DE9A780, &unk_237C0A700, MEMORY[0x277CC5170]);
      sub_237C06EBC();
      (*(v36 + 8))(v37, v38);
      (*(v32 + 8))(v31, v34);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }

    v49 = v54;
    v51 = v56;
    v24 = v21;
  }

  else
  {
    sub_2379D8FF4(v2, v24, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v40 = v49;
      v41 = OUTLINED_FUNCTION_21();
      v42 = v51;
      v43(v41, v24, v51);
      v44 = v50;
      OUTLINED_FUNCTION_28_18();
      v45 = v52;
      v46(v13);
      OUTLINED_FUNCTION_25();
      sub_237C072DC();
      (*(v44 + 8))(v13, v45);
      (*(v40 + 8))(v17, v42);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  (*(v49 + 8))(v24, v51);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B5AC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_237B597BC();
}

uint64_t sub_237B5AD0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_237B59F1C();
}

uint64_t sub_237B5AEB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237B5AEF8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[13] = v9;
  OUTLINED_FUNCTION_1(v9);
  v0[14] = v10;
  v0[15] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[16] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[17] = v12;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[20] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[21] = v14;
  v0[22] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[23] = v15;
  OUTLINED_FUNCTION_20(v15);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  v0[26] = v16;
  OUTLINED_FUNCTION_20(v16);
  v0[27] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v17);
}

void sub_237B5B150()
{
  OUTLINED_FUNCTION_116_0();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(_s10ClassifierVMa_0(0) + 20);
  v6 = *(_s5ModelVMa_0(0) + 20);
  *(v0 + 304) = v6;
  v7 = *(v2 + 48);
  sub_2379D8FF4(v3 + v5, v1, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v4 + v6, v1 + v7, &qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 216);
  if (EnumCaseMultiPayload == 1)
  {
    v10 = (v0 + 192);
    sub_2379D8FF4(v9, *(v0 + 192), &qword_27DE9A6D8, &qword_237C0A140);
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v0 + 96);
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);
      (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 192), *(v0 + 104));
      v14 = *(v13 + 32);
      *(v0 + 272) = v14;
      *(v0 + 280) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v14(v11, v1 + v7, v12);
      v15 = swift_task_alloc();
      *(v0 + 288) = v15;
      *v15 = v0;
      v15[1] = sub_237B5B6E4;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_33_19();

      MEMORY[0x282115368](v16);
      return;
    }

    v18 = 104;
    v19 = 112;
LABEL_9:
    (*(*(v0 + v19) + 8))(*v10, *(v0 + v18));
    OUTLINED_FUNCTION_2();
    sub_237C090DC();
    OUTLINED_FUNCTION_33_19();
    return;
  }

  v10 = (v0 + 200);
  sub_2379D8FF4(v9, *(v0 + 200), &qword_27DE9A6D8, &qword_237C0A140);
  *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = 160;
    v19 = 168;
    goto LABEL_9;
  }

  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 200), *(v0 + 160));
  v23 = *(v22 + 32);
  *(v0 + 232) = v23;
  *(v0 + 240) = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v20, v1 + v7, v21);
  v24 = swift_task_alloc();
  *(v0 + 248) = v24;
  *v24 = v0;
  v24[1] = sub_237B5B48C;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_33_19();

  MEMORY[0x282115318](v25);
}

uint64_t sub_237B5B48C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B5B584()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 304);
  v5 = *(v0 + 216);
  v6 = *(v0 + 128);
  v7 = *(v0 + 16);
  (*(*(v0 + 168) + 8))();
  v1(v3, v2, v6);
  sub_2379D9054(v7 + v4, &qword_27DE9A790, &qword_237C0A710);
  v1(v7 + v4, v3, v6);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v5, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v8();
}

uint64_t sub_237B5B6E4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B5B7DC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 304);
  v6 = *(v0 + 216);
  v7 = *(v0 + 16);
  (*(*(v0 + 112) + 8))();
  v1(v3, v2, v4);
  sub_2379D9054(v7 + v5, &qword_27DE9A790, &qword_237C0A710);
  v1(v7 + v5, v3, v4);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v6, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v8();
}

uint64_t sub_237B5B948(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v57 = v4;
  v58 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23();
  v55 = v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v54 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v53 = v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v50 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v49 = v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v48 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718) - 8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_14_31();
  v27 = *(_s10ClassifierVMa_0(v26) + 20);
  v28 = *(_s5ModelVMa_0(0) + 20);
  v29 = *(v24 + 56);
  sub_2379D8FF4(v59 + v27, v2, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v60 + v28, v2 + v29, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v2, v20, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v30 = v53;
      v31 = v54;
      v32 = OUTLINED_FUNCTION_21();
      v33 = v56;
      v34(v32, v20, v56);
      v36 = v57;
      v35 = v58;
      OUTLINED_FUNCTION_28_18();
      v37 = v55;
      v38(v55);
      OUTLINED_FUNCTION_25();
      sub_237C0738C();
      (*(v36 + 8))(v37, v35);
      (*(v31 + 8))(v30, v33);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }

    v48 = v54;
    v51 = v56;
    v23 = v20;
  }

  else
  {
    sub_2379D8FF4(v2, v23, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v39 = v48;
      v40 = OUTLINED_FUNCTION_21();
      v41 = v51;
      v42(v40, v23, v51);
      v44 = v49;
      v43 = v50;
      OUTLINED_FUNCTION_28_18();
      v45 = v52;
      v46(v44);
      OUTLINED_FUNCTION_25();
      sub_237C072CC();
      (*(v43 + 8))(v44, v45);
      (*(v39 + 8))(v16, v41);
      return sub_2379D9054(v2, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  (*(v48 + 8))(v23, v51);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B5BE70@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v62 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v59 = v6;
  v60 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v69 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v67 = v10;
  v68 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v66 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v57 = v14;
  v58 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  v65 = v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v55 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v56 = &v55 - v21;
  v22 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v23 = OUTLINED_FUNCTION_20(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v64 = (v24 - v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v63 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &v55 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v55 - v35;
  v37 = _s10ClassifierVMa_0(0);
  v38 = v4;
  sub_2379D8FF4(v4 + *(v37 + 20), v36, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v66;
    v40 = v67;
    v41 = OUTLINED_FUNCTION_21();
    v42 = v68;
    v43(v41, v36, v68);
    v28 = v64;
    sub_237B5C4AC(v38, v64);
    v44 = v73;
    v71(v72, v42);
    if (v44)
    {
      sub_237B5C510(v28);
      return (*(v40 + 8))(v39, v42);
    }

    (*(v40 + 8))(v39, v42);
    v48 = v55;
    v49 = OUTLINED_FUNCTION_30();
    v50(v49);
  }

  else
  {
    v46 = v63;
    (*(v63 + 32))(v33, v36, v29);
    sub_237B5C4AC(v4, v28);
    v47 = v73;
    v70(v72, v29);
    if (v47)
    {
      sub_237B5C510(v28);
      return (*(v46 + 8))(v33, v29);
    }

    (*(v46 + 8))(v33, v29);
    v48 = v56;
    v51 = OUTLINED_FUNCTION_30();
    v52(v51);
  }

  swift_storeEnumTagMultiPayload();
  v53 = v62;
  sub_237B5C56C(v28, v62);
  v54 = _s5ModelVMa_0(0);
  return sub_2379D8F84(v48, v53 + *(v54 + 20));
}

uint64_t sub_237B5C380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_237B5AEF8();
}

uint64_t sub_237B5C4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B5C510(uint64_t a1)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237B5C56C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237B5C650()
{
  result = qword_27DE9D5D8;
  if (!qword_27DE9D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5D8);
  }

  return result;
}

unint64_t sub_237B5C6A8()
{
  result = qword_27DE9D5E0;
  if (!qword_27DE9D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5E0);
  }

  return result;
}

unint64_t sub_237B5C7B8()
{
  result = qword_27DE9D5E8;
  if (!qword_27DE9D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5E8);
  }

  return result;
}

unint64_t sub_237B5C810()
{
  result = qword_27DE9D5F0;
  if (!qword_27DE9D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D5F0);
  }

  return result;
}

uint64_t sub_237B5C890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MLHandActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237B5C8D0@<X0>(uint64_t *a1@<X8>)
{
  result = MLHandActionClassifier.VideoAugmentationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void MLHandActionClassifier.DataSource.videosWithAnnotations()(uint64_t a1@<X8>)
{
  v388 = a1;
  v1 = sub_237C05DBC();
  v2 = OUTLINED_FUNCTION_0_26(v1, &v421);
  v387 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v8);
  v9 = sub_237C0825C();
  v10 = OUTLINED_FUNCTION_0_26(v9, v420);
  v384 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_82_5();
  v13 = sub_237C05ADC();
  v14 = OUTLINED_FUNCTION_0_26(v13, &v423);
  v389 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v376 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v376 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v376 - v25;
  v27 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = OUTLINED_FUNCTION_36_4();
  sub_237AB6644(v32, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_29_15();
      v95(v23, v31, v390);
      sub_237C0822C();
      OUTLINED_FUNCTION_83();
      v96 = v422;
      sub_237A5C58C();
      if (v96)
      {
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_34_7();
        v97();
        v87 = OUTLINED_FUNCTION_28_19();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_34_7();
      v194();
      sub_237AB2468();

      v220 = OUTLINED_FUNCTION_2_71();
      v222 = OUTLINED_FUNCTION_22_26(v220, v221);
      OUTLINED_FUNCTION_21_29(v222, v223, v224, v225, v226, v227, v228, v229, v376);
      OUTLINED_FUNCTION_69_6();
      v293 = OUTLINED_FUNCTION_3_70(&v424);
      sub_2379DBC9C(v293, v294);
      v291 = OUTLINED_FUNCTION_28_19();
      goto LABEL_54;
    case 2u:
      OUTLINED_FUNCTION_29_15();
      v84(v26, v31, v390);
      sub_237C0822C();
      v85 = v422;
      sub_237A5D608();
      if (v85)
      {
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_34_7();
        v86();
        v87 = OUTLINED_FUNCTION_27_16();
LABEL_12:
        v88(v87);
        return;
      }

      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_34_7();
      v171();
      sub_237AB2468();

      v210 = OUTLINED_FUNCTION_2_71();
      v212 = OUTLINED_FUNCTION_22_26(v210, v211);
      OUTLINED_FUNCTION_21_29(v212, v213, v214, v215, v216, v217, v218, v219, v376);
      OUTLINED_FUNCTION_69_6();
      v289 = OUTLINED_FUNCTION_3_70(&v424);
      sub_2379DBC9C(v289, v290);
      v291 = OUTLINED_FUNCTION_27_16();
LABEL_54:
      v292(v291);
      OUTLINED_FUNCTION_86_4();
      goto LABEL_53;
    case 3u:
      sub_237A28130(v31);
      v89 = MEMORY[0x2383DDC00](0);
      if (!v89)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        JUMPOUT(0x237B5DD28);
      }

      v90 = v89;
      type metadata accessor for CMLTable();
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      v92 = type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2(v92);
      sub_237B6C578(v91);
      OUTLINED_FUNCTION_88_2();
      *v94 = v93;
      *(v94 + 8) = 0;
      return;
    case 4u:
      v57 = *v31;
      v58 = *(v31 + 8);
      v59 = *(v31 + 16);
      v389 = *(v31 + 24);
      v61 = *(v31 + 32);
      v60 = *(v31 + 40);
      v62 = *(v31 + 48);
      OUTLINED_FUNCTION_74_6(*(v31 + 56));
      v63 = *(v31 + 64);
      v64 = *(v31 + 72);
      v418 = v57;
      v419 = v58;
      v391 = v57;
      LOBYTE(v392) = v58;
      v65 = OUTLINED_FUNCTION_7_0();
      sub_2379DBCF4(v65, v66);
      v67 = OUTLINED_FUNCTION_7_0();
      sub_2379DBCF4(v67, v68);
      v387 = v59;
      v69 = v59;
      v70 = v389;
      v386 = v61;
      v71 = v61;
      v72 = v60;
      v73 = v60;
      v74 = v62;
      v75 = v62;
      v76 = v390;
      v77 = v422;
      sub_237AB28BC(&v391, v69, v389, v71, v73, v75, v390, v63, v64);
      v422 = v77;
      if (v77)
      {

        v78 = OUTLINED_FUNCTION_7_0();
        sub_2379DBC9C(v78, v79);
        v80 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v80, v81);
        v82 = OUTLINED_FUNCTION_7_0();
        sub_2379DBC9C(v82, v83);
        return;
      }

      v381 = v74;
      v382 = v63;
      LODWORD(v384) = v58;
      v383 = v57;
      v385 = v64;
      v118 = v386;
      v119 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v119, v120);
      if (v76)
      {
        sub_237B6C670(v121, v122, v123, v124, v125, v126, v127, v128, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
        OUTLINED_FUNCTION_20_13();
        v129 = OUTLINED_FUNCTION_30_6();
        sub_237B6DAB4(v129, v390, v130, 0xE500000000000000, v131, v132, v133, v134, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v135 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v135, v136);
        }
      }

      v27 = v385;
      if (v385)
      {
        sub_237B6C670(v121, v122, v123, v124, v125, v126, v127, v128, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4(v137, v138, v139, v140, v141, v142, v143, v144, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v145 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v145, v146);
        }
      }

      sub_237B6C670(v121, v122, v123, v124, v125, v126, v127, v128, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_51_8();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4(v147, v148, v149, v150, v151, v152, v153, v154, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);

      if ((v419 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v163 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v163, v164);
      }

      sub_237B6C670(v155, v156, v157, v158, v159, v160, v161, v162, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v118, v72, v165, 0xE500000000000000, v166, v167, v168, v169, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);

      OUTLINED_FUNCTION_32_8();
      if (v70)
      {
        v170 = &v418;
      }

      else
      {
        v206 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v206, v207);
        sub_237B6C588();
      }

      OUTLINED_FUNCTION_86_4();
      v208 = v383;
      v209 = v384;

      OUTLINED_FUNCTION_8_21();

      sub_2379DBC9C(v208, v209);
      goto LABEL_52;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      v98 = MEMORY[0x2383DDC00](0);
      if (!v98)
      {
        goto LABEL_72;
      }

      v99 = v98;
      type metadata accessor for CMLTable();
      v100 = swift_allocObject();
      *(v100 + 16) = v99;
      v101 = type metadata accessor for _DataTable();
      OUTLINED_FUNCTION_75_2(v101);
      sub_237B6C578(v100);
      OUTLINED_FUNCTION_88_2();
      *v103 = v102;
      *(v103 + 8) = 0;
      OUTLINED_FUNCTION_9_44();
      v104(v31, v386);
      return;
    case 6u:
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v106 = (v31 + v105[12]);
      v107 = v106[1];
      v390 = *v106;
      v108 = (v31 + v105[16]);
      v109 = v108[1];
      v389 = *v108;
      v110 = (v31 + v105[20]);
      v111 = v110[1];
      v384 = *v110;
      v112 = (v31 + v105[24]);
      v113 = v112[1];
      v385 = *v112;
      v114 = v387;
      v115 = v382;
      v116 = v386;
      (*(v387 + 32))(v382, v31, v386);
      (*(v114 + 16))(v6, v115, v116);
      v117 = v422;
      sub_237A70684(v6, 0, &v391);
      if (v117)
      {
        (*(v114 + 8))(v115, v116);

        return;
      }

      v195 = OUTLINED_FUNCTION_2_71();
      OUTLINED_FUNCTION_22_26(v195, v196);
      sub_237AB28BC(&v391, v390, v107, v389, v109, v384, v111, v385, v113);
      OUTLINED_FUNCTION_69_6();
      v197 = v111;
      v27 = v109;
      v230 = v389;
      v231 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v231, v232);
      if (v197)
      {
        sub_237B6C670(v233, v234, v235, v236, v237, v238, v239, v240, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        OUTLINED_FUNCTION_20_13();
        v241 = OUTLINED_FUNCTION_13_11();
        sub_237B6DAB4(v241, v242, v243, 0xE500000000000000, v244, v245, v246, v247, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v248 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v248, v249);
        }
      }

      if (v113)
      {
        sub_237B6C670(v233, v234, v235, v236, v237, v238, v239, v240, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4(v250, v251, v252, v253, v254, v255, v256, v257, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v258 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v258, v259);
        }
      }

      sub_237B6C670(v233, v234, v235, v236, v237, v238, v239, v240, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_53_10(&v423);
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4(v260, v261, v262, v263, v264, v265, v266, v267, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);

      if ((v419 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v276 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v276, v277);
      }

      sub_237B6C670(v268, v269, v270, v271, v272, v273, v274, v275, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v230, v109, v278, 0xE500000000000000, v279, v280, v281, v282, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);

      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_86_4();
      v283 = v387;
      v284 = v382;
      if (v197)
      {
        v285 = &v418;
      }

      else
      {
        sub_2379DBCF4(&v418, 0);
        sub_237B6C588();
      }

      (*(v283 + 8))(v284, v386);
LABEL_52:
      v286 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v286, v287);
      goto LABEL_53;
    default:
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370) + 48);
      OUTLINED_FUNCTION_47_14();
      v384 = v35;
      v386 = v36;
      v38 = (v31 + *(v37 + 80));
      v39 = v38[1];
      v382 = *v38;
      OUTLINED_FUNCTION_47_14();
      v379 = v40;
      v387 = v41;
      OUTLINED_FUNCTION_47_14();
      v378 = v42;
      v385 = v43;
      v44 = v389;
      v45 = *(v389 + 32);
      v46 = v383;
      v47 = v390;
      v45(v383, v31, v390);
      v48 = v31 + v34;
      v49 = v381;
      v45(v381, v48, v47);
      v50 = v49;
      v51 = OUTLINED_FUNCTION_13_11();
      v52(v51);
      LOBYTE(v391) = 1;
      *(&v391 + 1) = *v417;
      HIDWORD(v391) = *&v417[3];
      v392 = 44;
      v393 = 0xE100000000000000;
      v394 = 0;
      v395 = 0xE000000000000000;
      v396 = 92;
      v397 = 0xE100000000000000;
      v398 = 1;
      *v399 = *v416;
      *&v399[3] = *&v416[3];
      v400 = 34;
      v401 = 0xE100000000000000;
      v402 = 1;
      *v403 = *v415;
      *&v403[3] = *&v415[3];
      v404 = &unk_284ABEBF0;
      v405 = 10;
      v406 = 0xE100000000000000;
      v407 = 0;
      v408 = 0;
      v409 = 1;
      *v410 = *v414;
      *&v410[3] = *&v414[3];
      v411 = 0;
      v53 = v422;
      MLDataTable.init(contentsOf:options:)(v18, &v391, &v412);
      if (v53)
      {
        v54 = *(v44 + 8);
        v54(v50, v47);

        OUTLINED_FUNCTION_51_8();

        v55 = v46;
        v56 = v47;
LABEL_37:
        v54(v55, v56);
        return;
      }

      v172 = v382;
      v377 = v39;
      v173 = v385;
      v418 = v412;
      v419 = v413;
      v174 = v384;
      v175 = v386;
      MLDataTable.subscript.getter();
      v176 = v391;
      if ((v392 & 1) != 0 || (v177 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v177, v178), v422 = v176, sub_237A60248(&v412), v179 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v179, v180), v412 != 2))
      {
        OUTLINED_FUNCTION_73_4();

        OUTLINED_FUNCTION_51_8();

        v198 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v198, v199);
        v391 = 0;
        v392 = 0xE000000000000000;
        sub_237C08EDC();

        v391 = 0x206E6D756C6F43;
        v392 = 0xE700000000000000;
        MEMORY[0x2383DC360](v174, v175);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        v200 = v391;
        v201 = v392;
        sub_2379E8AF0();
        swift_allocError();
        *v202 = v200;
        *(v202 + 8) = v201;
        *(v202 + 16) = 0u;
        *(v202 + 32) = 0u;
        *(v202 + 48) = 0;
        swift_willThrow();
        v54 = *(v44 + 8);
        v203 = v390;
        v54(v50, v390);
        v204 = OUTLINED_FUNCTION_78_4();
        sub_2379DBC9C(v204, v205);
        v55 = v383;
        v56 = v203;
        goto LABEL_37;
      }

      v181 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v181, v182);
      sub_237A607E0(0, &v391);
      sub_2379DBC9C(v422, 0);
      v183 = v391;
      v184 = v392;
      v185 = v173;
      v27 = 0;
      if (v393 != 2)
      {
        sub_2379E8CE8(v391, v392, v393);
        v183 = 0;
        v184 = 0xE000000000000000;
      }

      v186 = v380;
      v187 = v172;
      v391 = v183;
      v392 = v184;
      sub_237C0883C();
      sub_237C059BC();

      v188 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      v189 = sub_237C086BC();

      v190 = [v188 fileExistsAtPath_];

      if (v190)
      {
        v191 = v418;
        v192 = v419;
        v193 = v387;
      }

      else
      {
        v295 = v422;
        sub_2379DBCF4(v422, 0);
        v296 = sub_2379DFC10(v295, 0);
        MEMORY[0x28223BE20](v296);
        v297 = sub_2379E1FAC(sub_237B61EA4, (&v376 - 4), v296);

        v391 = v297;
        MEMORY[0x28223BE20](v298);
        v374 = &v391;
        v299 = sub_237BBDC94(sub_2379F5678);
        v301 = v300;

        sub_237B6C670(v302, v303, v304, v305, v306, v307, v308, v309, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395);
        v391 = v299;
        LOBYTE(v392) = v301 & 1;
        sub_237B6CF70(&v391, v384, v175);
        v310 = OUTLINED_FUNCTION_2_71();
        sub_2379DBC9C(v310, v311);
        v191 = v418;
        if (v419)
        {
          v192 = 1;
        }

        else
        {
          v312 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v312, v313);
          sub_237B6C588();
          v314 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v314, v315);
          v192 = 0;
        }

        v193 = v387;
        v187 = v172;
      }

      v316 = v379;
      v391 = v191;
      LOBYTE(v392) = v192;
      sub_2379DBCF4(v191, v192);
      sub_237AB28BC(&v391, v384, v175, v187, v377, v316, v193, v378, v185);
      OUTLINED_FUNCTION_69_6();
      v317 = OUTLINED_FUNCTION_2_71();
      sub_2379DBC9C(v317, v318);
      if (v193)
      {
        sub_237B6C670(v319, v320, v321, v322, v323, v324, v325, v326, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4(v379, v193, v327, 0xE500000000000000, v328, v329, v330, v331, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v332 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v332, v333);
        }
      }

      if (v185)
      {
        sub_237B6C670(v319, v320, v321, v322, v323, v324, v325, v326, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_18_33();
        sub_237B6DAB4(v334, v335, v336, v337, v338, v339, v340, v341, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
        if ((v419 & 1) == 0)
        {
          OUTLINED_FUNCTION_7_43();
          v342 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v342, v343);
        }
      }

      sub_237B6C670(v319, v320, v321, v322, v323, v324, v325, v326, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_50_10();
      sub_237B6DAB4(v344, v345, v346, v347, v348, v349, v350, v351, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);

      if ((v419 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v360 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v360, v361);
      }

      sub_237B6C670(v352, v353, v354, v355, v356, v357, v358, v359, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v187, v377, v362, 0xE500000000000000, v363, v364, v365, v366, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);

      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_86_4();
      if (v193)
      {
        v367 = &v418;
      }

      else
      {
        sub_2379DBCF4(&v418, 0);
        sub_237B6C588();
      }

      OUTLINED_FUNCTION_51_8();

      sub_2379DBC9C(v422, 0);
      v368 = *(v389 + 8);
      v369 = v390;
      v368(v186, v390);
      v370 = OUTLINED_FUNCTION_30_6();
      v368(v370, v369);
      v371 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v371, v372);
      v373 = OUTLINED_FUNCTION_53_10(&v418);
      (v368)(v373);
LABEL_53:
      v288 = v419;
      *v27 = v418;
      *(v27 + 8) = v288;
      return;
  }
}

uint64_t sub_237B5DD44@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v37 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v36 - v14;
  v16 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  sub_2379D9224(&qword_27DE9B048, &qword_27DE9AE60, &qword_237C0D000, MEMORY[0x277D83970]);
  v40 = v15;
  sub_237C05EEC();
  v43 = v16;
  v41 = v12;
  sub_237C05EEC();

  v17 = sub_237BA2F3C();

  v39 = *(v17 + 16);
  if (v39)
  {
    v36[1] = v17;
    v36[2] = a6;
    v18 = 0;
    v38 = v17 + 32;
    do
    {
      v19 = (v38 + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(a1 + 16);

      if (v22)
      {

        v23 = sub_237ACAC78(v21, v20);
        v24 = MEMORY[0x277D84F90];
        if (v25)
        {
          v24 = *(*(a1 + 56) + 8 * v23);
        }
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v26 = *(v24 + 16);
      if (v26)
      {
        v27 = sub_237C0898C();
        *(v27 + 16) = v26;
        v28 = v26 - 1;
        for (i = 32; ; i += 16)
        {
          v30 = (v27 + i);
          *v30 = v21;
          v30[1] = v20;
          if (!v28)
          {
            break;
          }

          --v28;
        }
      }

      else
      {

        v27 = MEMORY[0x277D84F90];
      }

      ++v18;
      v43 = v27;
      sub_237C05F2C();

      v43 = v24;
      sub_237C05F2C();
    }

    while (v18 != v39);
  }

  sub_237C05DAC();
  v31 = v40;
  sub_237C05D4C();
  v32 = v41;
  sub_237C05D4C();
  v33 = *(v37 + 8);
  v34 = v42;
  v33(v32, v42);
  return (v33)(v31, v34);
}

void MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:)(uint64_t a1@<X8>)
{
  v4 = v1;
  v186 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B908, &qword_237C0E258);
  OUTLINED_FUNCTION_0_26(v5, &v194);
  v180 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_35_15(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v9, &v196);
  v183 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v182 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v16 = v15;
  v17 = sub_237C0602C();
  v18 = OUTLINED_FUNCTION_0_26(v17, &v197);
  v187 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v168 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_82_5();
  v27 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v188 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  sub_237AB6644(v4, v35 - v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      v40 = *(v36 + 24);
      v41 = *(v36 + 32);
      v42 = *(v36 + 40);
      v44 = *(v36 + 48);
      v43 = *(v36 + 56);
      v194 = *v36;
      v195 = v38;
      v45 = v190;
      sub_237ACECE8(&v194, v44, v43);
      v46 = v194;
      v47 = v195;
      if (v45)
      {
        sub_2379DBC9C(v194, v195);

LABEL_27:

        return;
      }

      v192 = v194;
      v193 = v195;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      v190 = v39;
      *(inited + 32) = v39;
      *(inited + 40) = v40;
      *(inited + 48) = v44;
      *(inited + 56) = v43;
      *(inited + 64) = v41;
      *(inited + 72) = v42;
      sub_2379DBCF4(v46, v47);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_60_10();
      sub_237B6C670(v90, v91, v92, v93, v94, v95, v96, v97, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_53_10(&v198);
      OUTLINED_FUNCTION_72_6();
      sub_237B6DAB4(v98, v99, v100, v101, v102, v103, v104, v105, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);

      if ((v195 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v114 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v114, v115);
      }

      sub_237B6C670(v106, v107, v108, v109, v110, v111, v112, v113, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_71_6();
      sub_237B6DAB4(v116, v117, v118, v119, v120, v121, v122, v123, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);

      if ((v195 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v132 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v132, v133);
      }

      sub_237B6C670(v124, v125, v126, v127, v128, v129, v130, v131, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v41, v42, v134, 0xE500000000000000, v135, v136, v137, v138, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);

      v139 = v195;
      v140 = v194;
      if ((v195 & 1) == 0)
      {
        v141 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v141, v142);
        sub_237B6C588();
        v143 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v143, v144);
      }

      v192 = v140;
      v193 = v139;
      v145 = OUTLINED_FUNCTION_30();
      sub_2379DBCF4(v145, v146);
      OUTLINED_FUNCTION_88_2();
      sub_237A70ED4(v147, v148);
      sub_2379DBC9C(v140, v139);
    }

    else
    {
      _s16FeatureExtractorCMa();
      OUTLINED_FUNCTION_57_8();
      sub_2379F3924(v67, v68, v70, v69);
      if (!v2)
      {
        v192 = v194;
        v193 = v195;
        OUTLINED_FUNCTION_88_2();
        sub_237A70ED4(v71, v72);
      }

      sub_237A28130(v36);
    }

    return;
  }

  v172 = v25;
  v171 = v22;
  v173 = v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
  v49 = (v36 + v48[12]);
  v51 = *v49;
  v50 = v49[1];
  v174 = v51;
  v176 = v50;
  v52 = (v36 + v48[16]);
  v54 = *v52;
  v53 = v52[1];
  v175 = v54;
  v177 = v53;
  v55 = *(v36 + v48[20]);
  v56 = v188 + 32;
  v57 = OUTLINED_FUNCTION_13_11();
  v178 = v27;
  v59 = v58;
  v170 = v56;
  v169 = v60;
  (v60)(v57);
  v61 = v55;
  sub_237C05DFC();
  v62 = sub_237C05FFC();
  v63 = v187;
  v64 = *(v187 + 8);
  v64(v3, v189);
  if (v62 == MEMORY[0x277D837D0])
  {
    v168 = v64;
    v185 = v3;
    v74 = v182;
    OUTLINED_FUNCTION_48_14();
    sub_237C05DEC();
    v75 = v173;
    OUTLINED_FUNCTION_57_8();
    sub_237B62FE0(v76);
    v66 = v2;
    if (v2)
    {

      OUTLINED_FUNCTION_36_3();
      v77(v74, v184);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v189);
      sub_237B61F04(v75);
      v66 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_36_3();
      v149(v74, v184);
      OUTLINED_FUNCTION_80_0();
      v150 = v189;
      __swift_storeEnumTagSinglePayload(v151, v152, v153, v189);
      (*(v63 + 32))(v172, v75, v150);
      v154 = v172;
      (*(v63 + 16))(v185, v172, v150);

      OUTLINED_FUNCTION_36_4();
      sub_237C05E0C();
      v168(v154, v150);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    sub_237C05DFC();
    v65 = sub_237C05FFC();
    v64(v3, v189);
    if (v65 == MEMORY[0x277CC9318])
    {
      v168 = v64;
      v81 = v179;
      OUTLINED_FUNCTION_48_14();
      sub_237C05DEC();
      v82 = v81;
      OUTLINED_FUNCTION_57_8();
      sub_237B64134(v83);
      v66 = v2;
      v84 = v188;
      if (v2)
      {

        OUTLINED_FUNCTION_36_3();
        v85(v81, v181);
        v86 = v185;
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v189);
        sub_237B61F04(v86);
        v66 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_36_3();
        v161(v81, v181);
        OUTLINED_FUNCTION_51_8();
        OUTLINED_FUNCTION_80_0();
        v162 = v189;
        __swift_storeEnumTagSinglePayload(v163, v164, v165, v189);
        OUTLINED_FUNCTION_29_15();
        v166(v171, v185, v162);
        (*(v82 + 16))(v3, v171, v162);

        sub_237C05E0C();
        v167 = OUTLINED_FUNCTION_53_10(&v191);
        (v168)(v167);
      }

      goto LABEL_25;
    }

    v66 = v190;
  }

  v84 = v188;
LABEL_25:
  v155 = v177;
  v156 = OUTLINED_FUNCTION_48_14();
  sub_237A384C8(v156, v157, v158);
  v159 = v176;
  if (v66)
  {
    (*(v84 + 8))(v32, v178);

    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v160 = swift_initStackObject();
  *(v160 + 16) = xmmword_237C0B680;
  *(v160 + 32) = v174;
  *(v160 + 40) = v159;
  *(v160 + 48) = v61;
  *(v160 + 56) = v59;
  *(v160 + 64) = v175;
  *(v160 + 72) = v155;

  OUTLINED_FUNCTION_19_15();
  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_72_6();
  sub_237C05C8C();

  OUTLINED_FUNCTION_15_37();
  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_71_6();
  sub_237C05C8C();

  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_73_4();
  sub_237C05C8C();

  (v169)(v186, v32, v178);
}

void MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(id **a1@<X8>)
{
  v209 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0_26(v2, &v221);
  v208 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v210 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_21_3(v7);
  v8 = sub_237C0602C();
  v9 = OUTLINED_FUNCTION_0_26(v8, &v222);
  v212 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v197 - v15;
  v17 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v214 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v197 - v24;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  v30 = OUTLINED_FUNCTION_36_4();
  sub_237AB6644(v30, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v33 = *v29;
      v34 = *(v29 + 8);
      v35 = *(v29 + 24);
      OUTLINED_FUNCTION_74_6(*(v29 + 16));
      v36 = *(v29 + 40);
      v214 = *(v29 + 32);
      v37 = *(v29 + 56);
      v38 = *(v29 + 48);
      v219 = v33;
      LOBYTE(v220) = v34;
      sub_2379DBCF4(v33, v34);
      v39 = v215;
      sub_237ACECE8(&v219, v38, v37);
      v40 = v219;
      v41 = v220;
      if (v39)
      {
        sub_2379DBC9C(v219, v220);

        sub_2379DBC9C(v33, v34);
        return;
      }

      LODWORD(v215) = v34;
      v217 = v219;
      v218 = v220;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B680;
      *(inited + 32) = v213;
      *(inited + 40) = v35;
      *(inited + 48) = v38;
      *(inited + 56) = v37;
      *(inited + 64) = v214;
      *(inited + 72) = v36;
      sub_2379DBCF4(v40, v41);

      OUTLINED_FUNCTION_19_15();
      sub_2379F2B84();
      swift_setDeallocating();
      sub_237B9082C();
      OUTLINED_FUNCTION_60_10();
      sub_237B6C670(v72, v73, v74, v75, v76, v77, v78, v79, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
      OUTLINED_FUNCTION_16_27();
      OUTLINED_FUNCTION_8_21();
      OUTLINED_FUNCTION_72_6();
      sub_237B6DAB4(v80, v81, v82, v83, v84, v85, v86, v87, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

      if ((v220 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v96 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v96, v97);
      }

      sub_237B6C670(v88, v89, v90, v91, v92, v93, v94, v95, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_71_6();
      sub_237B6DAB4(v98, v99, v100, v101, v102, v103, v104, v105, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

      v114 = v214;
      if ((v220 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_43();
        v115 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v115, v116);
      }

      sub_237B6C670(v106, v107, v108, v109, v110, v111, v112, v113, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v114, v36, v117, 0xE500000000000000, v118, v119, v120, v121, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

      v70 = v219;
      if (v220)
      {
        v122 = v219;
        OUTLINED_FUNCTION_58_8();
        LOBYTE(v43) = 1;
        sub_2379DBC9C(v70, 1);
      }

      else
      {
        v137 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v137, v138);
        sub_237B6C588();
        OUTLINED_FUNCTION_58_8();
        v139 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v139, v140);
        LOBYTE(v43) = 0;
      }
    }

    else
    {
      _s16FeatureExtractorCMa();
      OUTLINED_FUNCTION_57_8();
      sub_2379F3924(v57, v58, v60, v59);
      if (v1)
      {
        sub_237A28130(v29);
        return;
      }

      v70 = v217;
      LOBYTE(v43) = v218;
      sub_237A28130(v29);
    }

    goto LABEL_13;
  }

  v200 = v13;
  v42 = v210;
  v203 = v22;
  v43 = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
  OUTLINED_FUNCTION_47_14();
  v201 = v44;
  OUTLINED_FUNCTION_35_15(v45);
  OUTLINED_FUNCTION_47_14();
  OUTLINED_FUNCTION_77_4(v46);
  v48 = (v29 + v47);
  v50 = *v48;
  v49 = v48[1];
  v51 = *(v214 + 32);
  v206 = v17;
  v51(v25, v29, v17);
  sub_237C05DFC();
  v52 = sub_237C05FFC();
  v53 = *(v212 + 8);
  v53(v16, v213);
  if (v52 == MEMORY[0x277D837D0])
  {
    v198 = v16;
    v62 = v50;
    v63 = v42;
    v64 = v62;
    v199 = v25;
    sub_237C05DEC();
    OUTLINED_FUNCTION_41_12();
    OUTLINED_FUNCTION_57_8();
    sub_237B62FE0(v65);
    if (v1)
    {
      v54 = v64;
      v55 = v49;

      OUTLINED_FUNCTION_36_3();
      v66(v63, v43);
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v213);
      sub_237B61F04(v25);
      v56 = 0;
      OUTLINED_FUNCTION_81_4();
      v25 = v199;
    }

    else
    {
      OUTLINED_FUNCTION_36_3();
      v123(v42, v43);
      OUTLINED_FUNCTION_80_0();
      v124 = v213;
      __swift_storeEnumTagSinglePayload(v125, v126, v127, v213);
      v128 = v212;
      v43 = v200;
      (*(v212 + 32))(v200, v25, v124);
      (*(v128 + 16))(v198, v43, v124);

      v54 = v64;
      v55 = v49;
      v25 = v199;
      sub_237C05E0C();
      v56 = 0;
      v53(v43, v124);
      OUTLINED_FUNCTION_81_4();
    }
  }

  else
  {
    v54 = v50;
    v55 = v49;
    OUTLINED_FUNCTION_81_4();
    v56 = v215;
  }

  v129 = v214;
  v130 = v203;
  v131 = v206;
  (*(v214 + 16))(v203, v25, v206);
  sub_237A70684(v130, 0, &v217);
  if (!v56)
  {
    v219 = v217;
    LOBYTE(v220) = v218;
    v132 = v54;
    sub_237ACECE8(&v219, v54, v55);
    v199 = v25;
    v133 = v219;
    v134 = v220;
    v217 = v219;
    v218 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v135 = swift_initStackObject();
    *(v135 + 16) = xmmword_237C0B680;
    v136 = v204;
    *(v135 + 32) = v201;
    *(v135 + 40) = v136;
    *(v135 + 48) = v132;
    *(v135 + 56) = v55;
    v215 = v132;
    *(v135 + 64) = v202;
    *(v135 + 72) = v43;

    sub_2379DBCF4(v133, v134);

    OUTLINED_FUNCTION_19_15();
    sub_2379F2B84();
    swift_setDeallocating();
    sub_237B9082C();
    OUTLINED_FUNCTION_60_10();
    sub_237B6C670(v141, v142, v143, v144, v145, v146, v147, v148, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_72_6();
    sub_237B6DAB4(v149, v150, v151, v152, v153, v154, v155, v156, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

    if ((v220 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_43();
      v165 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v165, v166);
    }

    sub_237B6C670(v157, v158, v159, v160, v161, v162, v163, v164, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_71_6();
    sub_237B6DAB4(v167, v168, v169, v170, v171, v172, v173, v174, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

    if ((v220 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_43();
      v183 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v183, v184);
    }

    v70 = &v219;
    sub_237B6C670(v175, v176, v177, v178, v179, v180, v181, v182, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, *v216);
    OUTLINED_FUNCTION_19_17();
    v185 = OUTLINED_FUNCTION_13_11();
    sub_237B6DAB4(v185, v186, v187, 0xE500000000000000, v188, v189, v190, v191, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);

    OUTLINED_FUNCTION_32_8();
    if (v43)
    {
      v192 = &v219;
    }

    else
    {
      v193 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v193, v194);
      sub_237B6C588();
    }

    (*(v129 + 8))(v199, v131);
    v195 = OUTLINED_FUNCTION_30();
    sub_2379DBC9C(v195, v196);
    OUTLINED_FUNCTION_32_8();
LABEL_13:
    v71 = v209;
    *v209 = v70;
    *(v71 + 8) = v43;
    return;
  }

  (*(v129 + 8))(v25, v131);

  OUTLINED_FUNCTION_30_6();
}

void MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()(uint64_t a1@<X8>)
{
  v186 = a1;
  v3 = sub_237C05DBC();
  v4 = OUTLINED_FUNCTION_0_26(v3, v201);
  v194 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v7);
  v8 = sub_237C0825C();
  v9 = OUTLINED_FUNCTION_0_26(v8, v202);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v177 - v11;
  v203 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v187 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v177 - v19);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  v26 = OUTLINED_FUNCTION_21_3(v25);
  type metadata accessor for MLHandActionClassifier.DataSource(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  v31 = v1;
  sub_237AB6644(v1, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_79_5();
      v71 = v185;
      v72 = v203;
      v20[4](v185, v30, v203);
      sub_237C0822C();
      OUTLINED_FUNCTION_36_4();
      OUTLINED_FUNCTION_67_6();
      sub_237A5C58C();
      v74 = v2;
      if (v2)
      {
        v75 = OUTLINED_FUNCTION_65_5();
        v76(v75);
        v67 = v20[1];
        v65 = v71;
        v66 = v72;
        goto LABEL_10;
      }

      v126 = v73;
      v127 = OUTLINED_FUNCTION_65_5();
      v128(v127);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
      v130 = sub_237C0910C();
      v131 = OUTLINED_FUNCTION_12_41(v130);
      v133 = *(v132 - 256);
      OUTLINED_FUNCTION_32_14(v131);
      if (v134)
      {
LABEL_35:
        OUTLINED_FUNCTION_15_26();
        goto LABEL_41;
      }

LABEL_36:
      v137 = v2;
      while (1)
      {
        v2 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          goto LABEL_79;
        }

        if (v2 >= v72)
        {
          break;
        }

        ++v137;
        if (*(v178 + 8 * v2))
        {
          OUTLINED_FUNCTION_75_4();
LABEL_41:
          v138 = v135 | (v2 << 6);
          v183 = v136;
          v139 = *(v126 + 56);
          v140 = (*(v126 + 48) + 16 * v138);
          v142 = *v140;
          v141 = v140[1];
          v184 = v138;
          if (*(*(v139 + 8 * v138) + 16))
          {
            v181 = v142;
            v182 = v2;
            v197 = MEMORY[0x277D84F90];
            v180 = v141;

            OUTLINED_FUNCTION_89_2();
            OUTLINED_FUNCTION_20_29();
            do
            {
              OUTLINED_FUNCTION_87_4();
              OUTLINED_FUNCTION_63_5();
              v143();
              OUTLINED_FUNCTION_41_12();
              sub_237C0595C();
              v129 = v74;
              sub_237C05A9C();
              v194 = v144;
              v145 = OUTLINED_FUNCTION_55_8();
              v74(v145);
              v146 = OUTLINED_FUNCTION_13_11();
              v74(v146);
              OUTLINED_FUNCTION_64_4();
              if (v120)
              {
                OUTLINED_FUNCTION_59_8();
              }

              OUTLINED_FUNCTION_30_19();
            }

            while (!v121);

            v74 = v189;
            OUTLINED_FUNCTION_46_13();
            v2 = v182;
            v72 = v179;
            v142 = v181;
          }

          else
          {
          }

          OUTLINED_FUNCTION_23_29(&v199);
          *v148 = v142;
          v148[1] = v147;
          OUTLINED_FUNCTION_76_6();
          if (!v125)
          {
            *(v31 + 16) = v149;
            v133 = v188;
            OUTLINED_FUNCTION_79_5();
            if (v183)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

LABEL_81:
          __break(1u);
          JUMPOUT(0x237B60940);
        }
      }

      OUTLINED_FUNCTION_24_28();
      (*v191)(v129, v203);
      OUTLINED_FUNCTION_80_0();
      v160 = v133;
      goto LABEL_55;
    case 2u:
      OUTLINED_FUNCTION_79_5();
      v20[4](v184, v30, v203);
      sub_237C0822C();
      OUTLINED_FUNCTION_67_6();
      sub_237A5D608();
      v62 = v2;
      if (v2)
      {
        v63 = OUTLINED_FUNCTION_66_6();
        v64(v63);
        v65 = OUTLINED_FUNCTION_36_4();
LABEL_10:
        (v67)(v65, v66);
      }

      else
      {
        v101 = v61;
        v102 = OUTLINED_FUNCTION_66_6();
        v103(v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
        v104 = sub_237C0910C();
        v105 = OUTLINED_FUNCTION_12_41(v104);
        v107 = *(v106 - 256);
        OUTLINED_FUNCTION_32_14(v105);
        if (v108)
        {
LABEL_17:
          OUTLINED_FUNCTION_15_26();
          goto LABEL_23;
        }

LABEL_18:
        v111 = v2;
        while (1)
        {
          v2 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v2 >= v12)
          {
            break;
          }

          ++v111;
          if (*(v178 + 8 * v2))
          {
            OUTLINED_FUNCTION_75_4();
LABEL_23:
            v112 = v109 | (v2 << 6);
            v182 = v110;
            v113 = *(v101 + 56);
            v114 = (*(v101 + 48) + 16 * v112);
            v115 = v114[1];
            v183 = *v114;
            v185 = v112;
            if (*(*(v113 + 8 * v112) + 16))
            {
              v181 = v2;
              v197 = MEMORY[0x277D84F90];
              v180 = v115;

              OUTLINED_FUNCTION_89_2();
              OUTLINED_FUNCTION_20_29();
              do
              {
                OUTLINED_FUNCTION_87_4();
                OUTLINED_FUNCTION_63_5();
                v116();
                OUTLINED_FUNCTION_41_12();
                sub_237C0595C();
                sub_237C05A9C();
                v194 = v117;
                v118 = OUTLINED_FUNCTION_55_8();
                v62(v118);
                v119 = OUTLINED_FUNCTION_13_11();
                v62(v119);
                OUTLINED_FUNCTION_64_4();
                if (v120)
                {
                  OUTLINED_FUNCTION_59_8();
                }

                OUTLINED_FUNCTION_30_19();
              }

              while (!v121);

              v62 = v189;
              OUTLINED_FUNCTION_46_13();
              v2 = v181;
              v12 = v179;
            }

            else
            {
            }

            OUTLINED_FUNCTION_23_29(&v200);
            *v123 = v183;
            v123[1] = v122;
            OUTLINED_FUNCTION_76_6();
            if (!v125)
            {
              *(v1 + 16) = v124;
              v107 = v188;
              OUTLINED_FUNCTION_79_5();
              if (v182)
              {
                goto LABEL_17;
              }

              goto LABEL_18;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }
        }

        OUTLINED_FUNCTION_24_28();
        v155 = OUTLINED_FUNCTION_36_4();
        v156(v155);
        OUTLINED_FUNCTION_80_0();
        v160 = v107;
LABEL_55:
        __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
      }

      return;
    case 3u:
      sub_237A28130(v30);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_64();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v188);
      return;
    case 4u:
      v46 = *v30;
      v47 = *(v30 + 8);
      v48 = *(v30 + 16);
      v49 = *(v30 + 24);
      v50 = *(v30 + 40);
      *&v193 = *(v30 + 32);
      v203 = v50;
      v51 = *(v30 + 56);
      v192 = *(v30 + 48);
      OUTLINED_FUNCTION_74_6(v51);
      v52 = *(v30 + 72);
      OUTLINED_FUNCTION_35_15(*(v30 + 64));
      v197 = v46;
      v198 = v47;
      v53 = OUTLINED_FUNCTION_38_15();
      sub_2379DBCF4(v53, v54);
      v55 = v191;
      sub_237A70ED4(&v197, v191);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v57 = OUTLINED_FUNCTION_75_2(v56);
      v195 = xmmword_237C0B660;
      *(v57 + 16) = xmmword_237C0B660;
      OUTLINED_FUNCTION_45_12(v57, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_48_14();
      OUTLINED_FUNCTION_67_6();
      sub_2379F30EC();
      if (v2)
      {
        OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_70_4();
        v58();

        OUTLINED_FUNCTION_8_21();

        v59 = OUTLINED_FUNCTION_38_15();
        sub_2379DBC9C(v59, v60);
        return;
      }

      v187 = v48;
      v189 = v49;
      v97 = v196;
      OUTLINED_FUNCTION_91_2();
      v98 = OUTLINED_FUNCTION_75_2(v56);
      OUTLINED_FUNCTION_25_26(v98);
      *(v99 + 32) = MEMORY[0x277D837D0];
      sub_2379F30EC();
      v100 = v55;

      if (v97)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_25_26(inited);
        *(v162 + 32) = v192;
        *(v162 + 40) = v97;

        OUTLINED_FUNCTION_33_20();
        sub_2379F2DA4();
        swift_setDeallocating();
        sub_237B9082C();
      }

      v166 = v190;
      if (v52)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        v167 = swift_initStackObject();
        OUTLINED_FUNCTION_25_26(v167);
        *(v168 + 32) = v166;
        *(v168 + 40) = v52;

        OUTLINED_FUNCTION_40_14();
        sub_2379F2DA4();
        swift_setDeallocating();
        sub_237B9082C();
      }

      if (v97)
      {
        OUTLINED_FUNCTION_20_13();
        sub_237C05C8C();
      }

      if (v52)
      {
        OUTLINED_FUNCTION_18_33();
        sub_237C05C8C();
      }

      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_50_10();
      sub_237C05C8C();

      OUTLINED_FUNCTION_19_17();
      sub_237C05C8C();
      v172 = OUTLINED_FUNCTION_38_15();
      sub_2379DBC9C(v172, v173);

      v174 = v188;
      (*(v194 + 32))(v186, v100, v188);
      goto LABEL_76;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_64();
      v77 = v188;
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v188);
      OUTLINED_FUNCTION_9_44();
      v81(v30, v77);
      return;
    case 6u:
      v82 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0) + 48));
      v83 = *v82;
      v84 = v82[1];
      OUTLINED_FUNCTION_36_14();
      v191 = v85;
      v203 = v86;
      OUTLINED_FUNCTION_36_14();
      v187 = v87;
      OUTLINED_FUNCTION_74_6(v88);
      OUTLINED_FUNCTION_36_14();
      v185 = v89;
      *&v195 = v90;
      v91 = v194;
      v92 = v194 + 32;
      v93 = v192;
      OUTLINED_FUNCTION_35_15(*(v194 + 32));
      v94();
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v96 = OUTLINED_FUNCTION_75_2(v95);
      v193 = xmmword_237C0B660;
      *(v96 + 16) = xmmword_237C0B660;
      OUTLINED_FUNCTION_45_12(v96, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_67_6();
      sub_2379F30EC();
      if (v2)
      {
        (*(v91 + 8))(v93, v188);

        OUTLINED_FUNCTION_8_21();
      }

      else
      {
        v183 = v83;
        v184 = v92;
        v189 = v84;
        v150 = v195;
        v151 = v196;
        OUTLINED_FUNCTION_91_2();
        v152 = OUTLINED_FUNCTION_75_2(v95);
        OUTLINED_FUNCTION_26_22(v152);
        *(v153 + 32) = MEMORY[0x277D837D0];
        sub_2379F30EC();
        v154 = v93;

        if (v151)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v163 = swift_initStackObject();
          OUTLINED_FUNCTION_26_22(v163);
          *(v164 + 32) = v187;
          *(v164 + 40) = v151;

          OUTLINED_FUNCTION_33_20();
          sub_2379F2DA4();
          v165 = v190;
          swift_setDeallocating();
          sub_237B9082C();
        }

        else
        {
          v165 = v190;
        }

        v169 = v185;
        if (v150)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v170 = swift_initStackObject();
          OUTLINED_FUNCTION_26_22(v170);
          *(v171 + 32) = v169;
          *(v171 + 40) = v150;

          OUTLINED_FUNCTION_40_14();
          sub_2379F2DA4();
          swift_setDeallocating();
          sub_237B9082C();
          v165 = v190;
        }

        if (v151)
        {
          OUTLINED_FUNCTION_20_13();
          sub_237C05C8C();
        }

        if (v150)
        {
          OUTLINED_FUNCTION_18_33();
          sub_237C05C8C();
        }

        OUTLINED_FUNCTION_9_26();
        OUTLINED_FUNCTION_50_10();
        sub_237C05C8C();

        OUTLINED_FUNCTION_19_17();
        sub_237C05C8C();

        v174 = v188;
        v165(v186, v154, v188);
LABEL_76:
        v175 = OUTLINED_FUNCTION_85();
        __swift_storeEnumTagSinglePayload(v175, v176, 1, v174);
      }

      return;
    default:
      v192 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370) + 48);
      OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_77_4(v32);
      OUTLINED_FUNCTION_36_14();
      *&v195 = v33;
      v194 = v34;
      OUTLINED_FUNCTION_36_14();
      *&v193 = v35;
      v188 = v36;
      v38 = (v30 + *(v37 + 112));
      v39 = v38[1];
      v190 = *v38;
      v40 = v187;
      v41 = *(v187 + 32);
      v42 = v203;
      v41(v20, v30, v203);
      v41(v17, v30 + v192, v42);
      v43 = v188;
      OUTLINED_FUNCTION_81_4();
      sub_237B6095C(v20, v17, v196, v39, v195, v194, v193, v43, v186, v190, v39);

      v44 = *(v40 + 8);
      v45 = v203;
      v44(v17, v203);
      v44(v20, v45);
      return;
  }
}

uint64_t sub_237B6095C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v145 = a2;
  v117 = a1;
  v121 = a9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v109 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v129 = &v109 - v18;
  v19 = sub_237C05E5C();
  MEMORY[0x28223BE20](v19 - 8);
  v113 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_237C05FAC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v109 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v112 = &v109 - v25;
  v26 = sub_237C05E9C();
  MEMORY[0x28223BE20](v26 - 8);
  v127 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_237C05ADC();
  v134 = *(v28 - 8);
  v135 = v28;
  MEMORY[0x28223BE20](v28);
  v111 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v126 = &v109 - v31;
  v123 = sub_237C05FDC();
  v143 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v124 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v132 = &v109 - v34;
  v128 = sub_237C05DBC();
  v137 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v110 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v125 = &v109 - v37;
  MEMORY[0x28223BE20](v38);
  v142 = &v109 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v40 = swift_allocObject();
  v133 = xmmword_237C0B670;
  *(v40 + 16) = xmmword_237C0B670;
  *(v40 + 32) = a3;
  *(v40 + 40) = a4;
  *(v40 + 48) = a5;
  *(v40 + 56) = a6;
  v148 = a6;

  if (a8)
  {

    v41 = 3;
    sub_237BC0CB8();
    v40 = v42;
    v42[2] = 3;
    v42[8] = a7;
    v42[9] = a8;
  }

  else
  {
    v41 = 2;
  }

  v131 = a7;
  v141 = a10;
  v122 = v22;
  if (a11)
  {
    v43 = a3;
    v44 = v21;
    v45 = v40;
    v46 = *(v40 + 24);

    if (v41 >= v46 >> 1)
    {
      sub_237BC0CB8();
      v45 = v108;
    }

    *(v45 + 16) = v41 + 1;
    v144 = v45;
    v47 = v45 + 16 * v41;
    *(v47 + 32) = v141;
    *(v47 + 40) = a11;
    v21 = v44;
    a3 = v43;
  }

  else
  {
    v144 = v40;
  }

  v140 = a5;
  v49 = sub_237C0597C() == 1852797802 && v48 == 0xE400000000000000;
  v138 = a8;
  v139 = a11;
  v130 = a4;
  v120 = a3;
  if (v49)
  {
  }

  else
  {
    v50 = sub_237C0929C();

    if ((v50 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8F0, &unk_237C0E228);
      v51 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110) - 8);
      v52 = a3;
      v53 = *(*v51 + 72);
      v54 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = v133;
      v56 = (v55 + v54);
      v57 = v51[14];
      *v56 = v52;
      v56[1] = a4;
      v58 = *MEMORY[0x277CE1920];
      v59 = *(v122 + 104);
      v59(v56 + v57, v58, v21);
      v60 = (v56 + v53);
      v61 = v51[14];
      v62 = v148;
      *v60 = v140;
      v60[1] = v62;
      v59(v56 + v53 + v61, v58, v21);

      v63 = sub_237C085AC();
      v64 = *MEMORY[0x277CE1918];
      v65 = v138;
      v143 = v59;
      if (v138)
      {
        v66 = v112;
        v67 = v64;
        (v59)(v112);
        v68 = v109;
        (*(v122 + 32))(v109, v66, v21);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v63;
        sub_237B4104C(v68, v131, v65, isUniquelyReferenced_nonNull_native);

        v63 = v146;
      }

      else
      {
        v67 = v64;
        v66 = v112;
        v68 = v109;
      }

      v97 = v139;
      if (v139)
      {
        v143(v66, v67, v21);
        (*(v122 + 32))(v68, v66, v21);

        v98 = swift_isUniquelyReferenced_nonNull_native();
        v146 = v63;
        sub_237B4104C(v68, v141, v97, v98);
      }

      (*(v134 + 16))(v111, v145, v135);

      v145 = sub_237B9068C(&unk_284ABFD58);
      sub_237B9068C(&unk_284ABFE18);
      sub_237B9068C(&unk_284ABFE78);
      v143(v66, v67, v21);
      sub_237C05E4C();
      v95 = v110;
      v99 = v136;
      sub_237C05CAC();
      if (v99)
      {
      }

      v94 = v142;
      goto LABEL_30;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D630, &qword_237C143C0);
  v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D638, &qword_237C143C8) - 8);
  v71 = *(*v70 + 72);
  v72 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v133;
  v74 = (v73 + v72);
  v75 = v70[14];
  *v74 = a3;
  *(v74 + 1) = a4;
  v76 = *MEMORY[0x277CE1938];
  v77 = *(v143 + 13);
  v78 = v123;
  v77(&v74[v75], v76, v123);
  v79 = &v74[v71];
  v80 = v78;
  v81 = v148;
  v82 = v70[14];
  *v79 = v140;
  v79[1] = v81;
  v77(v79 + v82, v76, v78);

  v83 = sub_237C085AC();
  v84 = MEMORY[0x277CE1930];
  v85 = v138;
  if (v138)
  {
    v86 = v132;
    v87 = v77;
    v77(v132, *MEMORY[0x277CE1930], v78);
    v88 = v124;
    (*(v143 + 4))(v124, v86, v80);

    v89 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v83;
    sub_237B411FC(v88, v131, v85, v89);

    v90 = v145;
    v83 = v146;
    v91 = v139;
    if (!v139)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v87 = v77;
  v91 = v139;
  v90 = v145;
  v88 = v124;
  if (v139)
  {
LABEL_19:
    v92 = v132;
    v87(v132, *v84, v80);
    (*(v143 + 4))(v88, v92, v80);

    v93 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v83;
    sub_237B411FC(v88, v141, v91, v93);
  }

LABEL_20:
  v94 = v142;
  (*(v134 + 16))(v126, v90, v135);

  sub_237C05E8C();
  v95 = v125;
  v96 = v136;
  sub_237C05CCC();
  if (v96)
  {
  }

LABEL_30:
  v101 = *(v137 + 32);
  v137 += 32;
  v101(v94, v95, v128);
  v102 = v114;
  sub_237C05DEC();
  v146 = 0;
  v147 = 0xE000000000000000;
  sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE18F0]);
  v103 = v116;
  sub_237C05EAC();
  v104 = (*(v115 + 8))(v102, v103);
  MEMORY[0x28223BE20](v104);
  sub_2379E20D4(sub_237B62574);

  v105 = v142;
  sub_237C05E1C();
  if (v138)
  {
    sub_237C05C8C();
  }

  if (v139)
  {
    sub_237C05C8C();
  }

  sub_237C05C8C();
  sub_237C05C8C();
  (*(v118 + 8))(v129, v119);
  v106 = v121;
  v107 = v128;
  v101(v121, v105, v128);
  return __swift_storeEnumTagSinglePayload(v106, 0, 1, v107);
}

uint64_t sub_237B61868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

uint64_t sub_237B61AE4@<X0>(uint64_t *a2@<X8>)
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

void MLHandActionClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v33 = a2;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_237AB6644(v5, v14 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 5)
  {
    v27 = a5;
    v28 = a1;
    v21 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710) + 48));
    v17 = *v21;
    v18 = v21[1];

    sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    (*(v22 + 8))(v15);
LABEL_5:
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(&v31);
    if (v7)
    {
    }

    else
    {
      v25 = v31;
      v26 = v32;
      sub_237B03618(v33, v30);
      sub_237B320AC(v28, v25, v26, v17, v18, a3, a4, v27, v30);
      OUTLINED_FUNCTION_90_4();
      sub_237B07C38(v29);

      sub_2379DBC9C(v25, v26);
    }

    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v27 = a5;
    v28 = a1;
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);

    v19 = OUTLINED_FUNCTION_7_0();
    v7 = v6;
    sub_2379DBC9C(v19, v20);
    goto LABEL_5;
  }

  MLHandActionClassifier.DataSource.videosWithAnnotations()(&v31);
  if (!v6)
  {
    v23 = v31;
    v24 = v32;
    sub_237B03618(v33, v30);
    sub_237B064E0(a1, v23, v24, a3, a4, a5, v30);
    OUTLINED_FUNCTION_90_4();
    sub_237B07C38(v29);
    sub_2379DBC9C(v23, v24);
  }

  sub_237A28130(v15);
}

uint64_t type metadata accessor for MLHandActionClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9D5F8;
  if (!qword_27DE9D5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B61EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237B05D94(*a1);
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

uint64_t sub_237B61F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_237B61F6C(uint64_t a1)
{
  sub_237B62030();
  if (v1 <= 0x3F)
  {
    sub_237A6191C();
    if (v2 <= 0x3F)
    {
      sub_237B6215C(319);
      if (v3 <= 0x3F)
      {
        sub_237B62250();
        if (v4 <= 0x3F)
        {
          sub_237B62370();
          if (v5 <= 0x3F)
          {
            sub_237B62460();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_237B62030()
{
  if (!qword_27DE9D608)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05ADC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D608);
    }
  }
}

uint64_t sub_237B6215C(uint64_t a1)
{
  v1 = qword_27DE9D610;
  if (!qword_27DE9D610)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D610);
    }
  }

  return v1;
}

void sub_237B62250()
{
  if (!qword_27DE9D618)
  {
    MEMORY[0x28223BE20](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D618);
    }
  }
}

void sub_237B62370()
{
  if (!qword_27DE9D620)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D620);
    }
  }
}

void sub_237B62460()
{
  if (!qword_27DE9D628)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05DBC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B210, &unk_237C11B00);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D628);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_43()
{
  sub_2379DBCF4(*(v0 - 104), 0);

  return sub_237B6C588();
}

uint64_t OUTLINED_FUNCTION_12_41(uint64_t result)
{
  *(v3 - 504) = v1 + 64;
  *(v3 - 376) = v2 + 16;
  *(v3 - 368) = v2 + 8;
  *(v3 - 472) = result + 64;
  return result;
}

void OUTLINED_FUNCTION_20_29()
{
  *(v2 - 464) = v0;
  *(v2 - 352) = *(v1 + 72);
  *(v2 - 360) = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_21_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237AB28BC((v9 - 296), 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, a9);
}

id OUTLINED_FUNCTION_22_26(id a1, char a2)
{
  *(v2 - 104) = a1;
  *(v2 - 96) = a2;
  *(v2 - 296) = a1;
  *(v2 - 288) = a2;

  return sub_2379DBCF4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_28()
{
  v3 = *(v1 - 408);

  return sub_237B5DD44(v0, 0x7461506F65646976, 0xE900000000000068, v3);
}

__n128 OUTLINED_FUNCTION_25_26(__n128 *a1)
{
  result = *(v1 - 320);
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_26_22(__n128 *a1)
{
  result = *(v1 - 352);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_30_19()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v2;
  v6 = *(v4 - 328);
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
}

uint64_t OUTLINED_FUNCTION_32_14(uint64_t result)
{
  *(v4 - 384) = v3;
  *(v4 - 480) = v2;
  *(v4 - 488) = result;
  *(v4 - 496) = v1;
  return result;
}

void OUTLINED_FUNCTION_58_8()
{
  v3 = *(v1 - 288);

  sub_2379DBC9C(v0, v3);
}

void OUTLINED_FUNCTION_59_8()
{

  sub_237AC8A74();
}

void OUTLINED_FUNCTION_60_10()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  sub_2379DBC9C(v2, v3);
}

void OUTLINED_FUNCTION_89_2()
{

  sub_237AC8A74();
}

void *OUTLINED_FUNCTION_90_4()
{

  return memcpy((v0 + 24), (v0 + 144), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
}

uint64_t OUTLINED_FUNCTION_92_4()
{
}

uint64_t MLPhase.rawValue.getter()
{
  result = 0x696C616974696E69;
  switch(*v0)
  {
    case 1:
      v2 = 0x636172747865;
      goto LABEL_6;
    case 2:
      result = 0x676E696E69617274;
      break;
    case 3:
      v2 = 0x61756C617665;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 4:
      result = 0x636E657265666E69;
      break;
    default:
      return result;
  }

  return result;
}

CreateML::MLPhase_optional __swiftcall MLPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_237C0916C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_237B62CB0()
{
  result = qword_27DE9D640;
  if (!qword_27DE9D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D640);
  }

  return result;
}

uint64_t sub_237B62D28@<X0>(uint64_t *a1@<X8>)
{
  result = MLPhase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x237B62F54);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237B62F8C()
{
  result = qword_27DE9D648;
  if (!qword_27DE9D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D648);
  }

  return result;
}

void sub_237B6301C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v70 = v3;
  v71 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v69 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v78 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v74 = v11;
  v75 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  OUTLINED_FUNCTION_0();
  v77 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  OUTLINED_FUNCTION_0();
  v76 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36_0();
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_1_72();
    *(v26 - 16) = v0;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v27, v28, v29, v30);
    OUTLINED_FUNCTION_5_56();
    v31 = *(v23 + 8);
    v32 = v0;
    v33 = v21;
LABEL_3:
    v31(v32, v33);
    goto LABEL_6;
  }

  v34 = v78;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v35 = sub_237C0601C();
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_1_72();
    *(v36 - 16) = v20;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_9_45();
    v42(v41);
    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v43);
    OUTLINED_FUNCTION_1_72();
    *(v44 - 16) = v16;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v45, v46, v47, v48);
    v32 = OUTLINED_FUNCTION_10_41();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v49);
    OUTLINED_FUNCTION_1_72();
    *(v50 - 16) = v1;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v51, v52, v53, v54);
    OUTLINED_FUNCTION_5_56();
    (*(v74 + 8))(v1, v75);
  }

  else if (swift_dynamicCastMetatype())
  {
    v55 = MEMORY[0x277D83A90];
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v56);
    OUTLINED_FUNCTION_1_72();
    *(v57 - 16) = v34;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v58, v59, v60, v55);
    (*(v72 + 8))(v34, v73);
  }

  else if (swift_dynamicCastMetatype())
  {
    v61 = v69;
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v62);
    OUTLINED_FUNCTION_1_72();
    *(v63 - 16) = v61;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v64, v65, v66, v67);
    OUTLINED_FUNCTION_5_56();
    (*(v70 + 8))(v61, v71);
  }

LABEL_6:
  OUTLINED_FUNCTION_150();
}

void sub_237B635F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v70 = v3;
  v71 = v2;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v69 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0();
  v72 = v7;
  v73 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v78 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v74 = v11;
  v75 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B070, &qword_237C0C9E0);
  OUTLINED_FUNCTION_0();
  v77 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  OUTLINED_FUNCTION_0();
  v76 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36_0();
  sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v25);
    OUTLINED_FUNCTION_1_72();
    *(v26 - 16) = v0;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v27, v28, v29, v30);
    OUTLINED_FUNCTION_5_56();
    v31 = *(v23 + 8);
    v32 = v0;
    v33 = v21;
LABEL_3:
    v31(v32, v33);
    goto LABEL_6;
  }

  v34 = v78;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v35 = sub_237C0601C();
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_1_72();
    *(v36 - 16) = v20;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_9_45();
    v42(v41);
    goto LABEL_6;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v43);
    OUTLINED_FUNCTION_1_72();
    *(v44 - 16) = v16;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v45, v46, v47, v48);
    v32 = OUTLINED_FUNCTION_10_41();
    goto LABEL_3;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v49);
    OUTLINED_FUNCTION_1_72();
    *(v50 - 16) = v1;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v51, v52, v53, v54);
    OUTLINED_FUNCTION_5_56();
    (*(v74 + 8))(v1, v75);
  }

  else if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_4_60();
    MEMORY[0x28223BE20](v55);
    OUTLINED_FUNCTION_1_72();
    *(v56 - 16) = v34;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v57, v58, v59, v60);
    OUTLINED_FUNCTION_5_56();
    (*(v72 + 8))(v34, v73);
  }

  else if (swift_dynamicCastMetatype())
  {
    v61 = MEMORY[0x277D839F8];
    v62 = v69;
    sub_237C05FEC();
    sub_237C0601C();
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v63);
    OUTLINED_FUNCTION_1_72();
    *(v64 - 16) = v62;
    OUTLINED_FUNCTION_3_71();
    sub_237B65000(v65, v66, v67, v61);
    (*(v70 + 8))(v62, v71);
  }

LABEL_6:
  OUTLINED_FUNCTION_150();
}

void sub_237B63BC4(uint64_t a1@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v31 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0();
  v32 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v13 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_54();
  sub_237C05FFC();
  if (!swift_dynamicCastMetatype())
  {
    v30 = v13;
    v16 = v32;
    if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v30 + 8))(v2, v11);
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v16 + 8))(v10, v6);
    }

    else if (swift_dynamicCastMetatype())
    {
      sub_237C05FEC();
      sub_237C05F6C();
      (*(v31 + 8))(v1, v3);
    }

    else
    {
      v17 = sub_237C0600C();
      v19 = v18;
      sub_237C0602C();
      sub_237ADFA70();
      v20 = sub_237C08B3C();
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v22 = v20;
        v31 = v19;
        v32 = v17;
        v39 = MEMORY[0x277D84F90];
        sub_237AC8A54();
        v21 = v39;
        sub_237C08B2C();
        if (v22 < 0)
        {
          __break(1u);
          return;
        }

        do
        {
          v23 = sub_237C08B9C();
          sub_2379F6D68(v24, v36);
          v23(&v37, 0);
          sub_2379F6D68(v36, &v37);
          if (v38)
          {
            sub_2379DAD24(&v37, v35);
            sub_2379FED88(v35, v34);
            v25 = sub_237C0874C();
            v27 = v26;
            __swift_destroy_boxed_opaque_existential_1(v35);
            sub_237A286E0(v36);
          }

          else
          {
            sub_237A286E0(v36);
            v25 = 0;
            v27 = 0;
          }

          v39 = v21;
          v28 = *(v21 + 16);
          if (v28 >= *(v21 + 24) >> 1)
          {
            sub_237AC8A54();
            v21 = v39;
          }

          *(v21 + 16) = v28 + 1;
          v29 = v21 + 16 * v28;
          *(v29 + 32) = v25;
          *(v29 + 40) = v27;
          sub_237C08B6C();
          --v22;
        }

        while (v22);
      }

      *&v37 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
      sub_2379D9224(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680, MEMORY[0x277D83970]);
      sub_237C05EFC();
    }

    OUTLINED_FUNCTION_150();
    return;
  }

  OUTLINED_FUNCTION_150();

  sub_237C05FEC();
}

uint64_t sub_237B64170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  OUTLINED_FUNCTION_0();
  v22 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v21 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  result = sub_237C05ECC();
  if (!v4)
  {
    sub_237C05F0C();
    v19 = v22;
    (*(v22 + 16))(v11, v17, v7);
    sub_2379D9224(&qword_27DE9D650, &qword_27DE9B580, &qword_237C0D770, MEMORY[0x277CE1900]);
    sub_237C05EFC();
    sub_237C05EBC();
    v20 = *(v19 + 8);
    v20(v14, v7);
    return (v20)(v17, v7);
  }

  return result;
}

uint64_t sub_237B643D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237B64390();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237B64404@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237C08AAC();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237B64438@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237C08A6C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237B6446C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6453C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_8_40(a1, a2, a3, a4, a5);
  result = sub_237C05F1C();
  *v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result)
    {
      v17 = 0;
      v18 = *v6;
      do
      {
        result = OUTLINED_FUNCTION_14_32(result, v9, v10, v11, v12, v13, v14, v15, v20);
        v19 = v20;
        if (v21)
        {
          v19 = NAN;
        }

        *(v18 + 8 * v17) = v19;
        v17 = v7;
      }

      while (v16 != v7);
    }
  }

  return result;
}

uint64_t sub_237B646AC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B6477C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 8 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64848(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B088, &qword_237C0C9F8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64918(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B078, &qword_237C0C9E8);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B649E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_8_40(a1, a2, a3, a4, a5);
  result = sub_237C05F1C();
  *v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result)
    {
      v17 = 0;
      v18 = *v6;
      do
      {
        result = OUTLINED_FUNCTION_14_32(result, v9, v10, v11, v12, v13, v14, v15, v20);
        v19 = v20;
        if (v21)
        {
          v19 = NAN;
        }

        *(v18 + 4 * v17) = v19;
        v17 = v7;
      }

      while (v16 != v7);
    }
  }

  return result;
}

uint64_t sub_237B64A88(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

uint64_t sub_237B64B54(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  result = sub_237C05F1C();
  *a2 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      v7 = *a1;
      do
      {
        v8 = v6 + 1;
        result = sub_237C05F9C();
        v9 = v10;
        if (v11)
        {
          v9 = NAN;
        }

        *(v7 + 4 * v6++) = v9;
      }

      while (v5 != v8);
    }
  }

  return result;
}

void sub_237B64C40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v4 = sub_237C0873C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[1])
  {
    goto LABEL_5;
  }

  sub_237C0872C();
  v8 = sub_237C086FC();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v11 = objc_opt_self();
  v12 = sub_237C05B6C();
  v17[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:v17];

  if (!v13)
  {
    v15 = v17[0];
    sub_237C0593C();

    swift_willThrow();
    sub_237A80F30(v8, v10);
    return;
  }

  v14 = v17[0];
  sub_237C08DFC();
  sub_237A80F30(v8, v10);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
  }
}

uint64_t sub_237B64E6C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  if (v3 >> 60 == 15)
  {
LABEL_4:
    *a2 = 0;
    return result;
  }

  v4 = *result;
  v5 = objc_opt_self();
  sub_237A2C2B0(v4, v3);
  v6 = sub_237C05B6C();
  v10[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v10];

  if (v7)
  {
    v8 = v10[0];
    sub_237C08DFC();
    sub_237A80F30(v4, v3);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }

    goto LABEL_4;
  }

  v9 = v10[0];
  sub_237C0593C();

  swift_willThrow();
  return sub_237A80F30(v4, v3);
}

uint64_t sub_237B65000(uint64_t result, uint64_t (*a2)(void *, uint64_t *), uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result)
  {
    v7 = sub_237C0898C();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v7 + 32;
  v9[1] = v6;
  v10 = 0;
  v9[0] = v7 + 32;
  result = a2(v9, &v10);
  if (v4)
  {
    if (v10 <= v6)
    {
      if (!v9[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v8 == v9[0])
      {
        *(v7 + 16) = v10;

        return v7;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 > v6)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9[0])
  {
    if (v8 == v9[0])
    {
      *(v7 + 16) = v10;
      return v7;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

void *OUTLINED_FUNCTION_14_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C05F9C();
}

uint64_t type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9D658;
  if (!qword_27DE9D658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237B65378@<X0>(uint64_t a1@<X8>)
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
  v14 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A65C40(v3, v16 - v15);
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
        JUMPOUT(0x237B655CCLL);
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

uint64_t sub_237B655DC(uint64_t a1, void *a2, uint64_t a3)
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
  v27 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A65C40(v52, v29 - v28);
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

float MLFewShotSoundClassifier.ModelParameters.lossParameters.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = result;
  return result;
}

void MLFewShotSoundClassifier.ModelParameters.LossParameters.init(gamma:epsilon:alpha:)(float *a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

float (*MLFewShotSoundClassifier.ModelParameters.learningRate.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_237B65BA8;
}

float sub_237B65BA8(float *a1)
{
  result = a1[2];
  *(*a1 + 8) = result;
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.batchSize.modify(void *a1))()
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_237B65BE8;
}

float (*MLFewShotSoundClassifier.ModelParameters.lossParamters.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = *(v1 + 32);
  return sub_237B666A0;
}

float sub_237B65C28@<S0>(void (*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(&v4);
  result = v5;
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_237B65C70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 2);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

float MLFewShotSoundClassifier.ModelParameters.lossParameters.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = result;
  return result;
}

float (*MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = *(v1 + 32);
  return sub_237B65CFC;
}

float sub_237B65CFC(float *a1)
{
  v1 = *a1;
  result = a1[4];
  *(v1 + 24) = *(a1 + 1);
  *(v1 + 32) = result;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 32);
  v4 = sub_237C05ADC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.ModelParameters(uint64_t a1)
{
  result = qword_27DE9D668;
  if (!qword_27DE9D668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_76() + 32);
  v3 = sub_237C05ADC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1 + v2, v0, v3);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 36);

  return sub_237A6FAB8(v3, a1);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_0_76() + 36);

  return sub_237A9DBF0(v0, v2);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:batchSize:learningRate:lossParameters:hallucinator:pretrainedModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v14 = *(a3 + 2);
  *(a6 + 8) = 1008981770;
  *(a6 + 16) = 128;
  *(a6 + 24) = 0x33D6BF95461C4000;
  *(a6 + 32) = 0x40000000;
  v15 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v16 = *(v15 + 36);
  v17 = sub_237C05ADC();
  v18 = *a3;
  __swift_storeEnumTagSinglePayload(a6 + v16, 1, 1, v17);
  *a6 = a1;
  (*(*(v17 - 8) + 32))(a6 + *(v15 + 32), a4, v17);
  result = sub_237A9DBF0(a5, a6 + v16);
  *(a6 + 16) = a2;
  *(a6 + 8) = a7;
  *(a6 + 24) = v18;
  *(a6 + 32) = v14;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:hallucinator:pretrainedModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0x33D6BF95461C4000;
  *(a4 + 32) = 0x40000000;
  v8 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v9 = *(v8 + 36);
  v10 = sub_237C05ADC();
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  *a4 = a1;
  (*(*(v10 - 8) + 32))(a4 + *(v8 + 32), a2, v10);
  result = sub_237A9DBF0(a3, a4 + v9);
  *(a4 + 8) = 1008981770;
  *(a4 + 16) = 128;
  *(a4 + 24) = 0x33D6BF95461C4000;
  *(a4 + 32) = 0x40000000;
  return result;
}

uint64_t sub_237B661D4@<X0>(uint64_t *a1@<X8>)
{
  result = MLFewShotSoundClassifier.ModelParameters.batchSize.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B662EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05ADC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 32);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    v8 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
}

uint64_t sub_237B663A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237C05ADC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 32);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    v10 = *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_237B66458(uint64_t a1)
{
  sub_237C05ADC();
  if (v1 <= 0x3F)
  {
    sub_237B66500(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237B66500(uint64_t a1)
{
  if (!qword_27DE9C270[0])
  {
    sub_237C05ADC();
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, qword_27DE9C270);
    }
  }
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15ModelParametersV14LossParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15ModelParametersV14LossParametersVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

_BYTE *_s10__DefaultsVwst_3(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237B66664);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_76()
{

  return type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
}

uint64_t sub_237B666C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v27 - v15;
  v17 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237AF1A38(a1, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_237C0B660;
    *(v23 + 32) = *(a2 + 16);
    sub_237C0611C();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_237A7ECA4(v16);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v16, v17);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D2CCC8], v8);
  v24 = sub_237C0616C();
  v25 = __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
  MEMORY[0x28223BE20](v25);
  v27[-2] = a2;
  return sub_237C066EC();
}