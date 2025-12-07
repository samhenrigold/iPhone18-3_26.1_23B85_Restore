id SiriExecutionFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriExecutionFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriExecutionFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486F5138(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 slotValue];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v40 = 0;
    }

    v38 = v9;
    v39 = v11;
    v41 = v12;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000017, 0x8000000248739D70);
    swift_endAccess();
    v13 = [v5 intentName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v40 = 0;
    }

    v38 = v15;
    v39 = v17;
    v41 = v18;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000018, 0x8000000248739D50);
    swift_endAccess();
    v19 = [v5 statusReason];
    if (v19)
    {
      v20 = v19;
      v21 = sub_248730FF0();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v40 = 0;
    }

    v25 = MEMORY[0x277D837D0];
    v38 = v21;
    v39 = v23;
    v41 = v24;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD00000000000001ALL, 0x8000000248739D90);
    swift_endAccess();
    v26 = [v5 appBundleID];
    if (v26)
    {
      v27 = v26;
      v28 = sub_248730FF0();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v40 = 0;
    }

    v38 = v28;
    v39 = v30;
    v41 = v31;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000019, 0x8000000248739D30);
    swift_endAccess();
    v32 = [v5 taskStep];
    type metadata accessor for BMSiriExecutionTaskStep(0);
    v41 = v33;
    LODWORD(v38) = v32;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD000000000000016, 0x8000000248739DB0);
    swift_endAccess();
    [v5 taskStep];
    v34 = BMSiriExecutionTaskStepAsString();
    v35 = sub_248730FF0();
    v37 = v36;

    v41 = v25;
    v38 = v35;
    v39 = v37;
    swift_beginAccess();
    sub_2486C6800(&v38, 0xD00000000000001ELL, 0x8000000248739DD0);
    swift_endAccess();
  }
}

id SiriExecutionFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriExecutionFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeaturizedItemType.hashValue.getter()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486F55D4()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486F5648(uint64_t a1)
{
  v2 = *v1;
  sub_248731910();
  MEMORY[0x24C1D78A0](v2);
  return sub_248731930();
}

unint64_t sub_2486F5690()
{
  result = qword_27EEA6470;
  if (!qword_27EEA6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6470);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeaturizedItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeaturizedItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2486F5864(char *a1)
{
  v2 = sub_2487309B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_orchEvents;
  swift_beginAccess();
  v16 = *&a1[v15];
  if (v16 >> 62)
  {
    v22 = sub_248731790();
    v69 = v5;
    if (!v22)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v5;
    if (!v17)
    {
      goto LABEL_10;
    }
  }

  if ((v16 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x24C1D7600](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v18 = *(v16 + 32);
  }

  v19 = [v18 eventMetadata];

  if (v19)
  {
    v20 = [v19 requestId];

    if (v20)
    {
      sub_248731390();

      v21 = 0;
      goto LABEL_11;
    }
  }

LABEL_10:
  v21 = 1;
LABEL_11:
  (*(v3 + 56))(v14, v21, 1, v2);
  sub_2486C7B38(v14, v12);
  v16 = *(v3 + 48);
  v23 = (v16)(v12, 1, v2);
  v70 = v3;
  if (v23 == 1)
  {
    sub_2486C992C(v12);
    if (qword_28150EE60 == -1)
    {
LABEL_13:
      v24 = sub_248730DF0();
      __swift_project_value_buffer(v24, qword_28150F088);
      v25 = a1;
      v26 = sub_248730DD0();
      v27 = sub_2487313C0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v66 = v28;
        v68 = swift_slowAlloc();
        *&v71 = v68;
        *v28 = 136315138;
        LODWORD(v67) = v27;
        v29 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
        swift_beginAccess();
        v30 = v14;
        v31 = v9;
        v32 = v70;
        v33 = &v25[v29];
        v34 = v69;
        (*(v70 + 16))(v69, v33, v2);
        v35 = v16;
        v36 = sub_248730980();
        v38 = v37;
        v39 = v32;
        v9 = v31;
        v14 = v30;
        (*(v39 + 8))(v34, v2);
        v40 = v36;
        v16 = v35;
        v41 = sub_2486D3010(v40, v38, &v71);

        v42 = v66;
        *(v66 + 1) = v41;
        v43 = v42;
        _os_log_impl(&dword_2486BF000, v26, v67, "Failed to extract request ID for turn: %s", v42, 0xCu);
        v44 = v68;
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x24C1D8100](v44, -1, -1);
        MEMORY[0x24C1D8100](v43, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_28:
    swift_once();
    goto LABEL_13;
  }

  v68 = v16;
  v66 = sub_248730980();
  v46 = v45;
  v67 = *(v3 + 8);
  v67(v12, v2);
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v47 = sub_248730DF0();
  __swift_project_value_buffer(v47, qword_28150F088);

  v48 = a1;
  v49 = sub_248730DD0();
  v50 = sub_2487313C0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v65 = v9;
    v52 = v51;
    v64 = swift_slowAlloc();
    *&v71 = v64;
    *v52 = 136315394;
    v53 = sub_2486D3010(v66, v46, &v71);

    *(v52 + 4) = v53;
    *(v52 + 12) = 2080;
    v54 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v55 = v69;
    (*(v70 + 16))(v69, &v48[v54], v2);
    v56 = sub_248730980();
    v58 = v57;
    v67(v55, v2);
    v59 = sub_2486D3010(v56, v58, &v71);

    *(v52 + 14) = v59;
    _os_log_impl(&dword_2486BF000, v49, v50, "Extracted %s for turn: %s", v52, 0x16u);
    v60 = v64;
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v60, -1, -1);
    v61 = v52;
    v9 = v65;
    MEMORY[0x24C1D8100](v61, -1, -1);
  }

  else
  {
  }

  v16 = v68;
LABEL_22:
  sub_2486C7B38(v14, v9);
  if ((v16)(v9, 1, v2) == 1)
  {
    sub_2486C992C(v9);
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    *(&v72 + 1) = v2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v71);
    (*(v70 + 32))(boxed_opaque_existential_0, v9, v2);
  }

  swift_beginAccess();
  sub_2486C6800(&v71, 0x7165722E4843524FLL, 0xEE00644974736575);
  swift_endAccess();
  return sub_2486C992C(v14);
}

id ORCHFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ORCHFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ORCHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ORCHFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ORCHFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

DeepThoughtBiomeFoundation::SimilarityScoreError_optional __swiftcall SimilarityScoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248731820();

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

unint64_t SimilarityScoreError.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000044;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_2486F6144(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000044;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = &qword_2487366F0;
  }

  else
  {
    v4 = "Failed to embed turn utterances";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000044;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "Failed to embed turn utterances";
  }

  else
  {
    v7 = &qword_2487366F0;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_248731880();
  }

  return v9 & 1;
}

uint64_t sub_2486F61F0()
{
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_2486F6270(uint64_t a1)
{
  sub_2487310D0();
}

uint64_t sub_2486F62DC(uint64_t a1)
{
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_2486F6358@<X0>(char *a2@<X8>)
{
  v3 = sub_248731820();

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

void sub_2486F63B8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000044;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "Failed to embed turn utterances";
  }

  else
  {
    v3 = &qword_2487366F0;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

double SemanticSimilarityScorer.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

double SemanticSimilarityScorer.init()()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t sub_2486F644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = swift_task_alloc();
  v4[16] = v5;
  *v5 = v4;
  v5[1] = sub_2486F64E8;

  return sub_2486F6BA4((v4 + 2));
}

uint64_t sub_2486F64E8()
{

  return MEMORY[0x2822009F8](sub_2486F65E4, 0, 0);
}

uint64_t sub_2486F65E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5C70, &qword_248734E10);
  v7 = swift_allocObject();
  v0[17] = v7;
  *(v7 + 16) = xmmword_248733790;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  v8 = *(v6 + 24);

  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_2486F677C;

  return v11(v7, v5, v6);
}

uint64_t sub_2486F677C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_2486F689C, 0, 0);
}

uint64_t sub_2486F689C()
{
  v1 = *(v0 + 152);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (v1[2] != 2)
  {

LABEL_7:
    sub_2486F6D40();
    swift_allocError();
    *v8 = 0;
    goto LABEL_8;
  }

  v3 = v1[4];
  v2 = v1[5];

  *(v0 + 88) = 1065353216;
  __P = *(v3 + 16);
  if (__P == *(v2 + 16))
  {
    v5 = normalizeMatrix(_:rowCount:columnCount:)(v3, 1, *(v3 + 16));

    v6 = normalizeMatrix(_:rowCount:columnCount:)(v2, 1, __P);

    if (__P)
    {
      v7 = sub_248731290();
      *(v7 + 16) = __P;
      memset_pattern16((v7 + 32), &unk_2487332F0, 4 * __P);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    vDSP_mtrans((v6 + 32), 1, (v7 + 32), 1, __P, 1uLL);

    vDSP_mmul((v5 + 32), 1, (v7 + 32), 1, (v0 + 88), 1, 1uLL, 1uLL, __P);

    v16 = *(v0 + 88);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v17 = *(v0 + 8);

    return v17(*&v16, 0);
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v11 = sub_248730DF0();
  __swift_project_value_buffer(v11, qword_28150F088);
  v12 = sub_248730DD0();
  v13 = sub_2487313D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2486BF000, v12, v13, "Matrix 1 and Matrix 2 must have the same column count.", v14, 2u);
    MEMORY[0x24C1D8100](v14, -1, -1);
  }

  sub_2486F6D40();
  swift_allocError();
  *v15 = 1;
LABEL_8:
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2486F6BA4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_2486F6BC4, 0, 0);
}

uint64_t sub_2486F6BC4()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_2486F72A4(v1 + 16, v0 + 56);
  v2 = *(v0 + 120);
  v3 = (v0 + 56);
  if (*(v0 + 80))
  {
    sub_2486CD01C(v3, v0 + 16);
    sub_2486CD01C((v0 + 16), v2);
  }

  else
  {
    sub_2486F6DEC(v3);
    v4 = type metadata accessor for MADTextEmbedder(0);
    v2[3] = v4;
    v2[4] = &protocol witness table for MADTextEmbedder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    sub_248730DE0();
    *(boxed_opaque_existential_0 + *(v4 + 20)) = [objc_opt_self() service];
    v6 = (boxed_opaque_existential_0 + *(v4 + 24));
    *v6 = 0;
    v6[1] = 0;
    *(v0 + 40) = v4;
    *(v0 + 48) = &protocol witness table for MADTextEmbedder;
    v7 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    sub_2486F7314(boxed_opaque_existential_0, v7);
    swift_beginAccess();
    sub_2486F7378(v0 + 16, v1 + 16);
    swift_endAccess();
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_2486F6D40()
{
  result = qword_27EEA6478;
  if (!qword_27EEA6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6478);
  }

  return result;
}

uint64_t SemanticSimilarityScorer.__deallocating_deinit()
{
  sub_2486F6DEC(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2486F6DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486F6E58()
{
  result = qword_27EEA6488;
  if (!qword_27EEA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SimilarityScoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SimilarityScoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of SemanticSimilarityScorer.compute(first:second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2486F7198;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_2486F7198(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_2486F72A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486F7314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MADTextEmbedder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2486F7378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6480, &qword_248734E18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id StreamsBookmark.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for StreamsBookmark();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v4);
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_2486F748C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2486FD060(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2486FC2A8(v5);
  *a1 = v2;
  return result;
}

uint64_t StreamsBookmark.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name);

  return v1;
}

id StreamsBookmark.__allocating_init(name:timeIntervals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = a3;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id StreamsBookmark.init(name:timeIntervals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = a3;
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6.receiver = v3;
  v6.super_class = type metadata accessor for StreamsBookmark();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_2486F77A0()
{
  v1 = MEMORY[0x277D84F90];
  v2 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  *(v0 + v3) = v2;

  v4 = sub_2486D3BA8(v1);
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  *(v0 + v5) = v4;
}

id StreamsBookmark.__allocating_init(name:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(&unk_285B237D0 + v3 + 32);
    v7 = v6 == 1 ? "CONVERSATION_TURN_UKNOWN" : "22SiriUIFeatureExtractor";
    v8 = v6 ? 0xD000000000000018 : 0xD000000000000015;
    v9 = v6 ? v7 : "CONVERSATION_TURN_AIMLIS";
    v10 = v9 | 0x8000000000000000;
    sub_248730900();
    v12 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v4;
    v14 = sub_2486C94CC(v8, v10);
    v16 = v4[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v4[3] < v19)
    {
      sub_2486E5048(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_2486C94CC(v8, v10);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_66;
      }

LABEL_18:
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v25 = v14;
    sub_2486E68F4();
    v14 = v25;
    if ((v20 & 1) == 0)
    {
LABEL_19:
      v4 = v54;
      v54[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v8;
      v22[1] = v10;
      *(v4[7] + 8 * v14) = v12;
      v23 = v4[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_64;
      }

      v4[2] = v24;
      goto LABEL_3;
    }

LABEL_2:
    v5 = v14;

    v4 = v54;
    *(v54[7] + 8 * v5) = v12;
LABEL_3:
    v3 += 8;
    if (v3 == 24)
    {
      v26 = 0x20u;
      while (1)
      {
        v28 = 0xE600000000000000;
        v29 = 0x495569726953;
        switch(*(&unk_285B236F0 + v26))
        {
          case 0:
            v28 = 0xEA00000000007375;
            v29 = 0x636F466E49707041;
            break;
          case 1:
            break;
          case 2:
            v29 = 0x776F4E616964654DLL;
            v28 = 0xEF676E6979616C50;
            break;
          case 3:
            v29 = 0xD000000000000015;
            v28 = 0x800000024873C1F0;
            break;
          case 4:
            v29 = 0xD000000000000012;
            v28 = 0x800000024873C210;
            break;
          case 5:
            v28 = 0xE700000000000000;
            v29 = 0x6E776F6E6B6E55;
            break;
          case 6:
            v29 = 0x6365784569726953;
            v28 = 0xED00006E6F697475;
            break;
          case 7:
            v29 = 0xD00000000000001FLL;
            v28 = 0x800000024873C1D0;
            break;
          case 8:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C1B0;
            break;
          case 9:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C190;
            break;
          case 0xALL:
            v29 = 0x736567617373654DLL;
            v28 = 0xEC00000064616552;
            break;
          case 0xBLL:
            v29 = 0xD000000000000011;
            v28 = 0x800000024873C170;
            break;
          case 0xCLL:
            v29 = 0xD000000000000010;
            v28 = 0x800000024873C150;
            break;
          case 0xDLL:
            v28 = 0xE900000000000074;
            v29 = 0x6E65746E49707041;
            break;
          case 0xELL:
            v29 = 0xD000000000000016;
            v28 = 0x800000024873C130;
            break;
          case 0xFLL:
            v29 = 0xD000000000000012;
            v28 = 0x800000024873C110;
            break;
          case 0x10:
            v29 = 0xD00000000000001ALL;
            v28 = 0x800000024873C0F0;
            break;
          case 0x11:
            v28 = 0xE700000000000000;
            v29 = 0x4B485469726953;
            break;
          case 0x12:
            v29 = 0xD000000000000011;
            v28 = 0x800000024873C0D0;
            break;
          case 0x13:
            v29 = 0xD000000000000017;
            v28 = 0x800000024873C0B0;
            break;
          case 0x14:
            v29 = 0xD000000000000016;
            v28 = 0x800000024873C090;
            break;
          case 0x15:
            v29 = 0xD00000000000001ELL;
            v28 = 0x800000024873C070;
            break;
          case 0x16:
            v29 = 0xD000000000000021;
            v28 = 0x800000024873C040;
            break;
          case 0x17:
            v29 = 0xD000000000000014;
            v28 = 0x800000024873C020;
            break;
          default:
            v29 = 0x6E756F4620746F4ELL;
            v28 = 0xE900000000000064;
            break;
        }

        sub_248730900();
        v31 = v30;
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v54 = v4;
        v33 = sub_2486C94CC(v29, v28);
        v35 = v4[2];
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_63;
        }

        v38 = v34;
        if (v4[3] < v37)
        {
          break;
        }

        if (v32)
        {
          goto LABEL_56;
        }

        v43 = v33;
        sub_2486E68F4();
        v33 = v43;
        if ((v38 & 1) == 0)
        {
LABEL_57:
          v4 = v54;
          v54[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v4[6] + 16 * v33);
          *v40 = v29;
          v40[1] = v28;
          *(v4[7] + 8 * v33) = v31;
          v41 = v4[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_65;
          }

          v4[2] = v42;
          goto LABEL_25;
        }

LABEL_24:
        v27 = v33;

        v4 = v54;
        *(v54[7] + 8 * v27) = v31;
LABEL_25:
        v26 += 8;
        if (v26 == 224)
        {
          v44 = type metadata accessor for StreamsBookmark();
          v45 = objc_allocWithZone(v44);
          v46 = &v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
          *v46 = a1;
          *(v46 + 1) = a2;
          *&v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v4;
          *&v45[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
          v53.receiver = v45;
          v53.super_class = v44;
          v47 = objc_msgSendSuper2(&v53, sel_init);
          v48 = sub_248730970();
          (*(*(v48 - 8) + 8))(a3, v48);
          return v47;
        }
      }

      sub_2486E5048(v37, v32);
      v33 = sub_2486C94CC(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_66;
      }

LABEL_56:
      if ((v38 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_2487318B0();
  __break(1u);
  return result;
}

id StreamsBookmark.__allocating_init(name:endTimeInSecSinceReferenceDate:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v7 = *(&unk_285B23840 + v4 + 32);
    v8 = v7 == 1 ? "CONVERSATION_TURN_UKNOWN" : "22SiriUIFeatureExtractor";
    v9 = v7 ? 0xD000000000000018 : 0xD000000000000015;
    v10 = v7 ? v8 : "CONVERSATION_TURN_AIMLIS";
    v11 = v10 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v13 = sub_2486C94CC(v9, v11);
    v15 = v5[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v5[3] < v18)
    {
      sub_2486E5048(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_2486C94CC(v9, v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_66;
      }

LABEL_18:
      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v24 = v13;
    sub_2486E68F4();
    v13 = v24;
    if ((v19 & 1) == 0)
    {
LABEL_19:
      v5 = v48;
      v48[(v13 >> 6) + 8] |= 1 << v13;
      v21 = (v5[6] + 16 * v13);
      *v21 = v9;
      v21[1] = v11;
      *(v5[7] + 8 * v13) = a3;
      v22 = v5[2];
      v17 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v17)
      {
        goto LABEL_64;
      }

      v5[2] = v23;
      goto LABEL_3;
    }

LABEL_2:
    v6 = v13;

    v5 = v48;
    *(v48[7] + 8 * v6) = a3;
LABEL_3:
    v4 += 8;
    if (v4 == 24)
    {
      v25 = 0x20u;
      while (1)
      {
        v27 = 0xE600000000000000;
        v28 = 0x495569726953;
        switch(*(&unk_285B236F0 + v25))
        {
          case 0:
            v27 = 0xEA00000000007375;
            v28 = 0x636F466E49707041;
            break;
          case 1:
            break;
          case 2:
            v28 = 0x776F4E616964654DLL;
            v27 = 0xEF676E6979616C50;
            break;
          case 3:
            v28 = 0xD000000000000015;
            v27 = 0x800000024873C1F0;
            break;
          case 4:
            v28 = 0xD000000000000012;
            v27 = 0x800000024873C210;
            break;
          case 5:
            v27 = 0xE700000000000000;
            v28 = 0x6E776F6E6B6E55;
            break;
          case 6:
            v28 = 0x6365784569726953;
            v27 = 0xED00006E6F697475;
            break;
          case 7:
            v28 = 0xD00000000000001FLL;
            v27 = 0x800000024873C1D0;
            break;
          case 8:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C1B0;
            break;
          case 9:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C190;
            break;
          case 0xALL:
            v28 = 0x736567617373654DLL;
            v27 = 0xEC00000064616552;
            break;
          case 0xBLL:
            v28 = 0xD000000000000011;
            v27 = 0x800000024873C170;
            break;
          case 0xCLL:
            v28 = 0xD000000000000010;
            v27 = 0x800000024873C150;
            break;
          case 0xDLL:
            v27 = 0xE900000000000074;
            v28 = 0x6E65746E49707041;
            break;
          case 0xELL:
            v28 = 0xD000000000000016;
            v27 = 0x800000024873C130;
            break;
          case 0xFLL:
            v28 = 0xD000000000000012;
            v27 = 0x800000024873C110;
            break;
          case 0x10:
            v28 = 0xD00000000000001ALL;
            v27 = 0x800000024873C0F0;
            break;
          case 0x11:
            v27 = 0xE700000000000000;
            v28 = 0x4B485469726953;
            break;
          case 0x12:
            v28 = 0xD000000000000011;
            v27 = 0x800000024873C0D0;
            break;
          case 0x13:
            v28 = 0xD000000000000017;
            v27 = 0x800000024873C0B0;
            break;
          case 0x14:
            v28 = 0xD000000000000016;
            v27 = 0x800000024873C090;
            break;
          case 0x15:
            v28 = 0xD00000000000001ELL;
            v27 = 0x800000024873C070;
            break;
          case 0x16:
            v28 = 0xD000000000000021;
            v27 = 0x800000024873C040;
            break;
          case 0x17:
            v28 = 0xD000000000000014;
            v27 = 0x800000024873C020;
            break;
          default:
            v28 = 0x6E756F4620746F4ELL;
            v27 = 0xE900000000000064;
            break;
        }

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v5;
        v30 = sub_2486C94CC(v28, v27);
        v32 = v5[2];
        v33 = (v31 & 1) == 0;
        v17 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v17)
        {
          goto LABEL_63;
        }

        v35 = v31;
        if (v5[3] < v34)
        {
          break;
        }

        if (v29)
        {
          goto LABEL_56;
        }

        v40 = v30;
        sub_2486E68F4();
        v30 = v40;
        if ((v35 & 1) == 0)
        {
LABEL_57:
          v5 = v48;
          v48[(v30 >> 6) + 8] |= 1 << v30;
          v37 = (v5[6] + 16 * v30);
          *v37 = v28;
          v37[1] = v27;
          *(v5[7] + 8 * v30) = a3;
          v38 = v5[2];
          v17 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v17)
          {
            goto LABEL_65;
          }

          v5[2] = v39;
          goto LABEL_25;
        }

LABEL_24:
        v26 = v30;

        v5 = v48;
        *(v48[7] + 8 * v26) = a3;
LABEL_25:
        v25 += 8;
        if (v25 == 224)
        {
          v41 = type metadata accessor for StreamsBookmark();
          v42 = objc_allocWithZone(v41);
          v43 = &v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
          *v43 = a1;
          *(v43 + 1) = a2;
          *&v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
          *&v42[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(MEMORY[0x277D84F90]);
          v47.receiver = v42;
          v47.super_class = v41;
          return objc_msgSendSuper2(&v47, sel_init);
        }
      }

      sub_2486E5048(v34, v29);
      v30 = sub_2486C94CC(v28, v27);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_66;
      }

LABEL_56:
      if ((v35 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_2487318B0();
  __break(1u);
  return result;
}

uint64_t sub_2486F85E4(uint64_t a1)
{
  v2 = "CONVERSATION_TURN_AIMLIS";
  v3 = 0xD000000000000015;
  if (a1)
  {
    v3 = 0xD000000000000018;
    v2 = "22SiriUIFeatureExtractor";
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 1)
  {
    v2 = "CONVERSATION_TURN_UKNOWN";
  }

  v5 = v2 | 0x8000000000000000;
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_2486C94CC(v4, v5);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_2486F86E4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_2486C94CC(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2486F8794(uint64_t a1, uint64_t *a2)
{
  v4 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v6 = v5;
  v7 = *a2;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16) && (, v9 = sub_2486C94CC(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);

    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2486F8850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v71 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - v8;
  v10 = sub_248730970();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v73 = &v63 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64B8, &qword_248734F98);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v63 - v22;
  v75 = sub_248730A70();
  v24 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730A40();
  sub_248730A80();
  v27 = sub_248730A90();
  result = (*(*(v27 - 8) + 48))(v23, 1, v27);
  if (result != 1)
  {
    sub_248730A50();
    sub_2486FA4FC(v26, a2, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      (*(v24 + 8))(v26, v75);
      sub_2486C7940(v9, &qword_27EEA6240, &unk_248733390);
    }

    else
    {
      (*(v11 + 32))(v20, v9, v10);
      v29 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
      v31 = v30;
      v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
      swift_beginAccess();
      if (*(*(v3 + v32) + 16) && (v70 = v3, , sub_2486C94CC(v29, v31), v34 = v33, , (v34 & 1) != 0))
      {

        v35 = v73;
        sub_2487308F0();
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v36 = sub_248730DF0();
        __swift_project_value_buffer(v36, qword_28150F088);
        v37 = *(v11 + 16);
        v37(v16, v35, v10);
        v38 = v72;
        v69 = v37;
        v37(v72, v20, v10);
        v39 = sub_248730DD0();
        v40 = sub_2487313C0();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v65 = v40;
          v42 = v41;
          v68 = v41;
          v66 = swift_slowAlloc();
          v76 = v66;
          *v42 = 136315394;
          v63 = sub_2486FD6A8();
          v64 = v39;
          v43 = sub_248731850();
          v45 = v44;
          v67 = v11 + 16;
          v46 = *(v11 + 8);
          v46(v16, v10);
          v47 = sub_2486D3010(v43, v45, &v76);

          v48 = v68;
          *(v68 + 4) = v47;
          *(v48 + 12) = 2080;
          v49 = v72;
          v50 = sub_248731850();
          v52 = v51;
          v72 = v46;
          v46(v49, v10);
          v53 = sub_2486D3010(v50, v52, &v76);

          v54 = v68;
          *(v68 + 14) = v53;
          v55 = v64;
          _os_log_impl(&dword_2486BF000, v64, v65, "bookmarkDate: %s, maxNumOfDaysAgoStartTime: %s", v54, 0x16u);
          v56 = v66;
          swift_arrayDestroy();
          MEMORY[0x24C1D8100](v56, -1, -1);
          v57 = v73;
          MEMORY[0x24C1D8100](v54, -1, -1);
        }

        else
        {

          v59 = *(v11 + 8);
          v59(v38, v10);
          v72 = v59;
          v59(v16, v10);
          v57 = v73;
        }

        if (sub_248730930())
        {
          v60 = v71;
          v69(v71, v20, v10);
          (*(v11 + 56))(v60, 0, 1, v10);
          v58 = sub_2486F96D8(v74, v60);
          sub_2486C7940(v60, &qword_27EEA6240, &unk_248733390);
          v61 = v72;
          (v72)(v57, v10);
          v61(v20, v10);
          (*(v24 + 8))(v26, v75);
          return v58;
        }

        v62 = v72;
        (v72)(v57, v10);
        v62(v20, v10);
      }

      else
      {

        (*(v11 + 8))(v20, v10);
      }

      (*(v24 + 8))(v26, v75);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486F8FDC(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - v6;
  v8 = sub_248730970();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64B8, &qword_248734F98);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v65 = sub_248730A70();
  v22 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248730A40();
  sub_248730A80();
  v25 = sub_248730A90();
  result = (*(*(v25 - 8) + 48))(v21, 1, v25);
  if (result != 1)
  {
    sub_248730A50();
    sub_2486FA4FC(v24, a2, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v22 + 8))(v24, v65);
      sub_2486C7940(v7, &qword_27EEA6240, &unk_248733390);
    }

    else
    {
      (*(v9 + 32))(v18, v7, v8);
      sub_2486F85E4(v64);
      if (v27)
      {
        (*(v9 + 8))(v18, v8);
      }

      else
      {
        v60 = v18;
        v28 = v63;
        sub_2487308F0();
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v29 = sub_248730DF0();
        __swift_project_value_buffer(v29, qword_28150F088);
        v30 = *(v9 + 16);
        v58 = v30;
        v30(v14, v28, v8);
        v31 = v62;
        v59 = v9 + 16;
        v30(v62, v60, v8);
        v32 = sub_248730DD0();
        v33 = sub_2487313C0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v66 = v57;
          *v34 = 136315394;
          v54 = sub_2486FD6A8();
          v56 = v32;
          v35 = sub_248731850();
          v37 = v36;
          v55 = v33;
          v38 = *(v9 + 8);
          v38(v14, v8);
          v39 = sub_2486D3010(v35, v37, &v66);

          *(v34 + 4) = v39;
          *(v34 + 12) = 2080;
          v40 = v62;
          v41 = sub_248731850();
          v43 = v42;
          v62 = v38;
          v38(v40, v8);
          v44 = sub_2486D3010(v41, v43, &v66);

          *(v34 + 14) = v44;
          v45 = v56;
          _os_log_impl(&dword_2486BF000, v56, v55, "bookmarkDate: %s, maxNumOfDaysAgoStartTime: %s", v34, 0x16u);
          v46 = v57;
          swift_arrayDestroy();
          MEMORY[0x24C1D8100](v46, -1, -1);
          v47 = v34;
          v28 = v63;
          MEMORY[0x24C1D8100](v47, -1, -1);
        }

        else
        {

          v48 = *(v9 + 8);
          v48(v31, v8);
          v62 = v48;
          v48(v14, v8);
        }

        v49 = v60;
        if (sub_248730930())
        {
          v50 = v61;
          v58(v61, v49, v8);
          (*(v9 + 56))(v50, 0, 1, v8);
          v51 = sub_2486F9978(v64, v50);
          sub_2486C7940(v50, &qword_27EEA6240, &unk_248733390);
          v52 = v62;
          (v62)(v28, v8);
          v52(v49, v8);
          (*(v22 + 8))(v24, v65);
          return v51;
        }

        v53 = v62;
        (v62)(v28, v8);
        v53(v49, v8);
      }

      (*(v22 + 8))(v24, v65);
    }

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_2486F96D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_248730970();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v14 = v13;
  sub_2486C5C10(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_2486C7940(v7, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_248730900();
  v16 = v15;
  v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + v17);
  *(v3 + v17) = 0x8000000000000000;
  sub_2486EC5A0(v12, v14, isUniquelyReferenced_nonNull_native, v16);
  v19 = v28;
  *(v3 + v17) = v28;
  swift_endAccess();
  if (*(v19 + 16))
  {

    v20 = sub_2486C94CC(v12, v14);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v20);

      v24 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v24 = 1;
  v23 = 0.0;
LABEL_9:
  sub_248730900();
  v26 = v25;
  (*(v9 + 8))(v11, v8);
  if (v24)
  {
    return 0;
  }

  return v23 == v26;
}

BOOL sub_2486F9978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_248730970();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = "CONVERSATION_TURN_AIMLIS";
  v14 = 0xD000000000000015;
  if (a1)
  {
    v14 = 0xD000000000000018;
    v13 = "22SiriUIFeatureExtractor";
  }

  v15 = a1 == 1;
  if (a1 == 1)
  {
    v16 = 0xD000000000000018;
  }

  else
  {
    v16 = v14;
  }

  if (v15)
  {
    v17 = "CONVERSATION_TURN_UKNOWN";
  }

  else
  {
    v17 = v13;
  }

  sub_2486C5C10(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_2486C7940(v8, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_248730900();
  v19 = v18;
  v20 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + v20);
  *(v3 + v20) = 0x8000000000000000;
  sub_2486EC5A0(v16, v17 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, v19);
  v22 = v31;
  *(v3 + v20) = v31;
  swift_endAccess();
  if (*(v22 + 16))
  {

    v23 = sub_2486C94CC(v16, v17 | 0x8000000000000000);
    v25 = v24;

    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v23);

      v27 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  v27 = 1;
  v26 = 0.0;
LABEL_17:
  sub_248730900();
  v29 = v28;
  (*(v10 + 8))(v12, v9);
  if (v27)
  {
    return 0;
  }

  return v26 == v29;
}

BOOL sub_2486F9C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_248730970();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v14 = v13;
  sub_2486C5C10(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_2486C7940(v7, &qword_27EEA6240, &unk_248733390);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  if (*(*(v3 + v15) + 16))
  {

    sub_2486C94CC(v12, v14);
    v17 = v16;

    if (v17)
    {
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v18 = sub_248730DF0();
      __swift_project_value_buffer(v18, qword_28150F088);

      v19 = sub_248730DD0();
      v20 = sub_2487313C0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38[0] = v22;
        *v21 = 136315138;
        v23 = sub_2486D3010(v12, v14, v38);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_2486BF000, v19, v20, "There is already a staged bookmark for %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x24C1D8100](v22, -1, -1);
        MEMORY[0x24C1D8100](v21, -1, -1);
      }

      else
      {
      }

      (*(v9 + 8))(v11, v8);
      return 1;
    }
  }

  sub_248730900();
  v25 = v24;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  sub_2486EC5A0(v12, v14, isUniquelyReferenced_nonNull_native, v25);
  v27 = v37;
  *(v3 + v15) = v37;
  swift_endAccess();
  if (!*(v27 + 16))
  {

LABEL_14:
    v32 = 1;
    v31 = 0.0;
    goto LABEL_15;
  }

  v28 = sub_2486C94CC(v12, v14);
  v30 = v29;

  if ((v30 & 1) == 0)
  {

    goto LABEL_14;
  }

  v31 = *(*(v27 + 56) + 8 * v28);

  v32 = 0;
LABEL_15:
  sub_248730900();
  v34 = v33;
  (*(v9 + 8))(v11, v8);
  if (v32)
  {
    return 0;
  }

  return v31 == v34;
}

uint64_t sub_2486FA084(uint64_t a1)
{
  v2 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  v4 = v3;
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (, sub_2486C94CC(v2, v4), v7 = v6, , (v7 & 1) != 0))
  {
    v8 = *(v1 + v5);
    if (*(v8 + 16))
    {

      v9 = sub_2486C94CC(v2, v4);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v11 = 0;
      }

      v19 = v10 ^ 1;
    }

    else
    {
      v11 = 0;
      v19 = 1;
    }

    swift_beginAccess();

    sub_2486C68D0(v11, v19 & 1, v2, v4);
    swift_endAccess();
    swift_beginAccess();
    sub_2486EBBB8(v2, v4);
    swift_endAccess();

    return 1;
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v12 = sub_248730DF0();
    __swift_project_value_buffer(v12, qword_28150F088);

    v13 = sub_248730DD0();
    v14 = sub_2487313D0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20[0] = v16;
      *v15 = 136315138;
      v17 = sub_2486D3010(v2, v4, v20);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2486BF000, v13, v14, "No staged bookmarks for event type %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x24C1D8100](v16, -1, -1);
      MEMORY[0x24C1D8100](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_2486FA310()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
  swift_beginAccess();

  sub_2486FD448(v2, sub_2486FD700);

  *(v0 + v1) = sub_2486D3BA8(MEMORY[0x277D84F90]);

  return 1;
}

uint64_t sub_2486FA3BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a3 + v8);
  *(a3 + v8) = 0x8000000000000000;
  sub_2486EC5A0(a1, a2, isUniquelyReferenced_nonNull_native, a4);
  *(a3 + v8) = v11;
  return swift_endAccess();
}

uint64_t sub_2486FA464()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

BOOL sub_2486FA4AC()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) == 0;
}

uint64_t sub_2486FA4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = a2;
  v67 = a1;
  v3 = sub_248730A00();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_248730A10();
  v57 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2487309F0();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248730A60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v12 = MEMORY[0x28223BE20](v11);
  v53 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v51 - v17;
  v19 = sub_248730970();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v61 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v68 = v51 - v23;
  if (qword_28150F058 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v11, qword_28150F1A8);
  sub_2486C5C10(v24, v18);
  v25 = *(v20 + 48);
  v26 = v25(v18, 1, v19);
  v66 = v20;
  if (v26 == 1)
  {
    sub_248730960();
    v27 = v19;
    if (v25(v18, 1, v19) != 1)
    {
      sub_2486C7940(v18, &qword_27EEA6240, &unk_248733390);
    }
  }

  else
  {
    v28 = *(v20 + 32);
    v27 = v19;
    v28(v68, v18, v19);
  }

  (*(v8 + 104))(v10, *MEMORY[0x277CC9968], v7);
  if (v65 == 0x8000000000000000)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  sub_248730A30();
  (*(v8 + 8))(v10, v7);
  v19 = v27;
  if (v25(v16, 1, v27) == 1)
  {
    v27 = v66;
  }

  else
  {
    v51[0] = *(v66 + 32);
    v51[1] = v66 + 32;
    (v51[0])(v61, v16, v27);
    v30 = v54;
    v29 = v55;
    (*(v55 + 104))(v54, *MEMORY[0x277CC9878], v62);
    v31 = *MEMORY[0x277CC9900];
    v32 = v57;
    v33 = *(v57 + 104);
    v52 = v25;
    v34 = v56;
    v33(v56, v31, v63);
    v35 = *MEMORY[0x277CC98E8];
    v37 = v59;
    v36 = v60;
    v38 = *(v59 + 104);
    v65 = v19;
    v39 = v58;
    v38(v58, v35, v60);
    v40 = v53;
    sub_248730A20();
    v41 = v39;
    v19 = v65;
    (*(v37 + 8))(v41, v36);
    (*(v32 + 8))(v34, v63);
    (*(v29 + 8))(v30, v62);
    v27 = v66;
    v42 = *(v66 + 8);
    v42(v61, v19);
    if (v52(v40, 1, v19) != 1)
    {
      v42(v68, v19);
      v49 = v64;
      (v51[0])(v64, v40, v19);
      v48 = v49;
      v47 = 0;
      return (*(v27 + 56))(v48, v47, 1, v19);
    }

    v16 = v40;
  }

  sub_2486C7940(v16, &qword_27EEA6240, &unk_248733390);
  if (qword_28150EE60 != -1)
  {
    goto LABEL_19;
  }

LABEL_13:
  v43 = sub_248730DF0();
  __swift_project_value_buffer(v43, qword_28150F088);
  v44 = sub_248730DD0();
  v45 = sub_2487313D0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2486BF000, v44, v45, "Failed to get the start time of the date of maxNumOfDays before today.", v46, 2u);
    MEMORY[0x24C1D8100](v46, -1, -1);
  }

  (*(v27 + 8))(v68, v19);
  v47 = 1;
  v48 = v64;
  return (*(v27 + 56))(v48, v47, 1, v19);
}

uint64_t static CustomDate.current()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if (qword_28150F058 != -1)
  {
    v11 = v3;
    swift_once();
    v3 = v11;
  }

  v6 = __swift_project_value_buffer(v3, qword_28150F1A8);
  sub_2486C5C10(v6, v5);
  v7 = sub_248730970();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_248730960();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_2486C7940(v5, &qword_27EEA6240, &unk_248733390);
  }

  return result;
}

void sub_2486FAE3C(void *a1)
{
  v2 = sub_248730FC0();
  v3 = sub_248730FC0();
  [a1 encodeObject:v2 forKey:v3];

  swift_beginAccess();

  v4 = sub_248730F00();

  v5 = sub_248730FC0();
  [a1 encodeObject:v4 forKey:v5];

  swift_beginAccess();

  v6 = sub_248730F00();

  v7 = sub_248730FC0();
  [a1 encodeObject:v6 forKey:v7];
}

char *StreamsBookmark.init(coder:)(void *a1)
{
  sub_2486CF4C4(0, &qword_28150EF58, 0x277CCACA8);
  v2 = sub_248731510();
  if (v2)
  {
    v9 = 0;
    v10 = 0;
    v3 = v2;
    sub_248730FE0();
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v4 = sub_248730DF0();
  __swift_project_value_buffer(v4, qword_28150F088);
  v5 = sub_248730DD0();
  v6 = sub_2487313D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2486BF000, v5, v6, "StreamsBookmark cannot be decoded", v7, 2u);
    MEMORY[0x24C1D8100](v7, -1, -1);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2486FB51C()
{
  v1 = sub_248730970();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_248731650();

  v25 = 0xD000000000000017;
  v26 = 0x800000024873C250;
  MEMORY[0x24C1D70A0](*(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name), *(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8));
  MEMORY[0x24C1D70A0](34, 0xE100000000000000);
  v5 = v26;
  v24 = v25;
  v28 = v25;
  v29 = v26;
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v21 = v2;
    v9 = sub_2486DD920(v8, 0);
    v10 = sub_2486FD074(&v25, v9 + 4, v8, v7);
    v11 = v25;
    v22 = v27;
    v23 = v10;
    swift_bridgeObjectRetain_n();
    sub_2486CA188(v11);
    if (v23 != v8)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v21;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v25 = v9;
  sub_2486F748C(&v25);

  v12 = *(v25 + 16);
  if (v12)
  {
    v13 = (v2 + 8);
    v24 = v25;
    v14 = v25 + 48;
    do
    {
      v15 = *(v14 - 16);
      v16 = *(v14 - 8);
      v14 += 24;

      sub_2487308F0();
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_248731650();

      v25 = 0x6D6165727473202CLL;
      v26 = 0xEB0000000022203ALL;
      MEMORY[0x24C1D70A0](v15, v16);

      MEMORY[0x24C1D70A0](2112034, 0xE300000000000000);
      v17 = sub_248730910();
      MEMORY[0x24C1D70A0](v17);

      MEMORY[0x24C1D70A0](v25, v26);

      (*v13)(v4, v1);
      --v12;
    }

    while (v12);

    v18 = v28;
    v5 = v29;
  }

  else
  {

    v18 = v24;
  }

  v25 = v18;
  v26 = v5;

  MEMORY[0x24C1D70A0](41, 0xE100000000000000);

  return v25;
}

uint64_t static StreamsBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) == *(a2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) && *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8) == *(a2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);
  if (v4 || (sub_248731880()) && (v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals, swift_beginAccess(), v6 = *(a1 + v5), v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals, swift_beginAccess(), v8 = *(a2 + v7), , , v9 = sub_2486FB9A8(v6, v8), , , (v9))
  {
    v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
    swift_beginAccess();
    v11 = *(a1 + v10);
    v12 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals;
    swift_beginAccess();
    v13 = *(a2 + v12);

    v14 = sub_2486FB9A8(v11, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_2486FB9A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_2486C94CC(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id StreamsBookmark.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StreamsBookmarkCollection.__allocating_init(bookmarks:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id StreamsBookmarkCollection.init(bookmarks:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StreamsBookmarkCollection();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_2486FBE00(void *a1)
{
  type metadata accessor for StreamsBookmark();
  v2 = sub_248731230();
  v3 = sub_248730FC0();
  [a1 encodeObject:v2 forKey:v3];
}

id StreamsBookmarkCollection.init(coder:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA64D0, &unk_248734FA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_248733790;
  *(v2 + 32) = sub_2486CF4C4(0, &qword_28150EF60, 0x277CBEA60);
  *(v2 + 40) = type metadata accessor for StreamsBookmark();
  sub_248731520();

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA64F8, qword_248734FB8);
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for StreamsBookmarkCollection();
      v4 = objc_allocWithZone(v3);
      *&v4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = v8;
      v7.receiver = v4;
      v7.super_class = v3;
      v5 = objc_msgSendSuper2(&v7, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {

    sub_2486C7940(v9, &qword_27EEA64E0, &qword_248733800);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_2486FC1C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2486FC208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  __swift_allocate_value_buffer(v0, qword_28150F1A8);
  v1 = __swift_project_value_buffer(v0, qword_28150F1A8);
  v2 = sub_248730970();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2486FC2A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248731840();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEA6570, &unk_248735040);
        v5 = sub_248731290();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2486FC4EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2486FC3B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2486FC3B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 24 * a3 - 24;
    v7 = result - a3;
LABEL_5:
    v8 = (v5 + 24 * v4);
    v10 = *v8;
    v9 = *(v8 + 1);
    v11 = v8[2];
    v12 = v7;
    v18 = v6;
    while (1)
    {
      v13 = *(v6 + 16);
      v14 = *&v10 == *v6 && v9 == *(v6 + 8);
      if (v14 || (result = sub_248731880(), (result & 1) != 0))
      {
        if (v11 >= v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        result = sub_248731880();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v5)
      {
        break;
      }

      v10 = *(v6 + 24);
      v9 = *(v6 + 32);
      v11 = *(v6 + 40);
      v15 = *(v6 + 16);
      *(v6 + 24) = *v6;
      *(v6 + 40) = v15;
      *v6 = v10;
      *(v6 + 8) = v9;
      *(v6 + 16) = v11;
      v6 -= 24;
      if (__CFADD__(v12++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v18 + 24;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2486FC4EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v5 = v6;
    v6 = *v105;
    if (!*v105)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_111:
      v98 = *(v9 + 2);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v99 = *&v9[16 * v98];
          v100 = *&v9[16 * v98 + 24];
          sub_2486FCC4C((*a3 + 24 * v99), (*a3 + 24 * *&v9[16 * v98 + 16]), *a3 + 24 * v100, v6);
          if (v5)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2486FD038(v9);
          }

          if (v98 - 2 >= *(v9 + 2))
          {
            goto LABEL_136;
          }

          v101 = &v9[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          result = sub_2486FCFAC(v98 - 1);
          v98 = *(v9 + 2);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_2486FD038(v9);
    v9 = result;
    goto LABEL_111;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  v112 = v9;
  if (v8 < v7)
  {
    v108 = v7;
    v11 = *a3;
    v12 = *a3 + 24 * v8;
    v13 = v10;
    v14 = *v12;
    v5 = *(v12 + 8);
    v15 = *(v12 + 16);
    v106 = v13;
    v16 = *a3 + 24 * v13;
    v17 = *(v16 + 16);
    v18 = v14 == *v16 && v5 == *(v16 + 8);
    v103 = v6;
    if (v18 || (result = sub_248731880(), (result & 1) != 0))
    {
      v110 = v15 < v17;
    }

    else
    {
      result = sub_248731880();
      v110 = result;
    }

    v19 = 0;
    v20 = v106 + 2;
    v21 = (v11 + 24 * v106 + 64);
    v22 = v8;
    do
    {
      v23 = v20;
      v6 = v22;
      v24 = v19;
      if (v20 >= v108)
      {
        break;
      }

      v5 = *(v21 - 2);
      v25 = *v21;
      v26 = *(v21 - 3);
      v27 = v5 == *(v21 - 5) && *(v21 - 1) == *(v21 - 4);
      result = v27 || (sub_248731880() & 1) != 0 ? v25 < v26 : sub_248731880();
      v9 = v112;
      v20 = v23 + 1;
      v21 += 3;
      v22 = (v6 + 1);
      v19 = v24 + 24;
    }

    while (((v110 ^ result) & 1) == 0);
    if (v110)
    {
      v10 = v106;
      if (v23 < v106)
      {
        goto LABEL_139;
      }

      if (v106 < v23)
      {
        v28 = 0;
        v29 = v106;
        do
        {
          if (v29 != v6)
          {
            if (!*a3)
            {
              goto LABEL_145;
            }

            v30 = *a3 + 24 * v106;
            v31 = (v30 + v28);
            v32 = v30 + v24;
            v33 = *v31;
            v34 = v31[1];
            v35 = v31[2];
            v36 = *(v32 + 40);
            *v31 = *(v32 + 24);
            v31[2] = v36;
            *(v32 + 24) = v33;
            *(v32 + 32) = v34;
            *(v32 + 40) = v35;
          }

          v29 = (v29 + 1);
          v24 -= 24;
          v28 += 24;
          v37 = v29 < v6;
          v6 = (v6 - 1);
        }

        while (v37);
      }

      v8 = v23;
      v6 = v103;
    }

    else
    {
      v8 = v23;
      v6 = v103;
      v10 = v106;
    }
  }

  v38 = a3[1];
  if (v8 >= v38)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_138;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_58;
  }

  v39 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_140;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v10)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v8 == v39)
  {
    goto LABEL_58;
  }

  v104 = v6;
  v40 = *a3;
  v41 = *a3 + 24 * v8 - 24;
  v107 = v10;
  v109 = v39;
  v42 = v10 - v8;
LABEL_44:
  v111 = v8;
  v43 = v40 + 24 * v8;
  v5 = *v43;
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  v46 = v42;
  v47 = v41;
  while (1)
  {
    v48 = *(v47 + 16);
    v49 = v5 == *v47 && v44 == *(v47 + 8);
    if (v49 || (result = sub_248731880(), (result & 1) != 0))
    {
      if (v45 >= v48)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = sub_248731880();
      if ((result & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    if (!v40)
    {
      break;
    }

    v5 = *(v47 + 24);
    v44 = *(v47 + 32);
    v45 = *(v47 + 40);
    v50 = *(v47 + 16);
    *(v47 + 24) = *v47;
    *(v47 + 40) = v50;
    *v47 = v5;
    *(v47 + 8) = v44;
    *(v47 + 16) = v45;
    v47 -= 24;
    if (__CFADD__(v46++, 1))
    {
LABEL_43:
      ++v8;
      v41 += 24;
      --v42;
      if (v111 + 1 != v109)
      {
        goto LABEL_44;
      }

      v8 = v109;
      v6 = v104;
      v9 = v112;
      v10 = v107;
LABEL_58:
      if (v8 < v10)
      {
        goto LABEL_137;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2486C45C0(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v53 = *(v9 + 2);
      v52 = *(v9 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        result = sub_2486C45C0((v52 > 1), v53 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v54;
      v55 = &v9[16 * v53];
      *(v55 + 4) = v10;
      *(v55 + 5) = v8;
      v56 = *v105;
      if (!*v105)
      {
        goto LABEL_147;
      }

      if (v53)
      {
        while (1)
        {
          v5 = v54 - 1;
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v57 = *(v9 + 4);
            v58 = *(v9 + 5);
            v67 = __OFSUB__(v58, v57);
            v59 = v58 - v57;
            v60 = v67;
LABEL_78:
            if (v60)
            {
              goto LABEL_126;
            }

            v73 = &v9[16 * v54];
            v75 = *v73;
            v74 = *(v73 + 1);
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_129;
            }

            v79 = &v9[16 * v5 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v67 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v67)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v77, v82))
            {
              goto LABEL_133;
            }

            if (v77 + v82 >= v59)
            {
              if (v59 < v82)
              {
                v5 = v54 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v83 = &v9[16 * v54];
          v85 = *v83;
          v84 = *(v83 + 1);
          v67 = __OFSUB__(v84, v85);
          v77 = v84 - v85;
          v78 = v67;
LABEL_92:
          if (v78)
          {
            goto LABEL_128;
          }

          v86 = &v9[16 * v5];
          v88 = *(v86 + 4);
          v87 = *(v86 + 5);
          v67 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v67)
          {
            goto LABEL_131;
          }

          if (v89 < v77)
          {
            goto LABEL_3;
          }

LABEL_99:
          v94 = v5 - 1;
          if (v5 - 1 >= v54)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*a3)
          {
            goto LABEL_144;
          }

          v95 = *&v9[16 * v94 + 32];
          v96 = *&v9[16 * v5 + 40];
          sub_2486FCC4C((*a3 + 24 * v95), (*a3 + 24 * *&v9[16 * v5 + 32]), *a3 + 24 * v96, v56);
          if (v6)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2486FD038(v9);
          }

          if (v94 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v97 = &v9[16 * v94];
          *(v97 + 4) = v95;
          *(v97 + 5) = v96;
          result = sub_2486FCFAC(v5);
          v54 = *(v9 + 2);
          if (v54 <= 1)
          {
            goto LABEL_3;
          }
        }

        v61 = &v9[16 * v54 + 32];
        v62 = *(v61 - 64);
        v63 = *(v61 - 56);
        v67 = __OFSUB__(v63, v62);
        v64 = v63 - v62;
        if (v67)
        {
          goto LABEL_124;
        }

        v66 = *(v61 - 48);
        v65 = *(v61 - 40);
        v67 = __OFSUB__(v65, v66);
        v59 = v65 - v66;
        v60 = v67;
        if (v67)
        {
          goto LABEL_125;
        }

        v68 = &v9[16 * v54];
        v70 = *v68;
        v69 = *(v68 + 1);
        v67 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v67)
        {
          goto LABEL_127;
        }

        v67 = __OFADD__(v59, v71);
        v72 = v59 + v71;
        if (v67)
        {
          goto LABEL_130;
        }

        if (v72 >= v64)
        {
          v90 = &v9[16 * v5 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v67 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v67)
          {
            goto LABEL_134;
          }

          if (v59 < v93)
          {
            v5 = v54 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_2486FCC4C(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v41 = a3;
  v4 = __dst;
  v5 = __dst - __src;
  v6 = (__dst - __src) / 24;
  v7 = a3 - __dst;
  v8 = (a3 - __dst) / 24;
  if (v6 >= v8)
  {
    v13 = a4;
    if (a4 != __dst || &__dst[3 * v8] <= a4)
    {
      memmove(a4, __dst, 24 * v8);
    }

    v12 = &v13[3 * v8];
    if (v7 < 24 || v4 <= __src)
    {
LABEL_45:
      v22 = v4;
      goto LABEL_46;
    }

    v40 = v13;
    while (1)
    {
      v23 = 0;
      v24 = v12;
      v38 = v4 - 3;
      while (1)
      {
        v25 = &v24[v23];
        v26 = &v24[v23 - 3];
        v27 = v24[v23 - 1];
        v28 = *(v4 - 1);
        if (*v26 != *(v4 - 3) || *&v24[v23 - 2] != *(v4 - 2))
        {
          v30 = v24;
          v31 = sub_248731880();
          v24 = v30;
          if ((v31 & 1) == 0)
          {
            break;
          }
        }

        if (v27 < v28)
        {
          goto LABEL_40;
        }

LABEL_38:
        if ((v41 + v23 * 8) != v25)
        {
          v33 = v41 + v23 * 8 - 24;
          v34 = *v26;
          *(v33 + 16) = v26[2];
          *v33 = v34;
        }

        v23 -= 3;
        v12 = &v24[v23];
        v13 = v40;
        if (&v24[v23] <= v40)
        {
          goto LABEL_45;
        }
      }

      v32 = sub_248731880();
      v24 = v30;
      if ((v32 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_40:
      v22 = v4 - 3;
      if ((v41 + v23 * 8) != v4)
      {
        v35 = *v38;
        *(v41 + v23 * 8 - 8) = *(v4 - 1);
        *(v41 + v23 * 8 - 24) = v35;
      }

      v41 = v41 + v23 * 8 - 24;
      v12 = &v24[v23];
      v13 = v40;
      if (&v24[v23] > v40)
      {
        v4 -= 3;
        if (v38 > __src)
        {
          continue;
        }
      }

      v12 = &v24[v23];
      goto LABEL_46;
    }
  }

  v9 = __src;
  if (a4 != __src || &__src[3 * v6] <= a4)
  {
    v10 = a4;
    memmove(a4, __src, 24 * v6);
    v9 = __src;
    a4 = v10;
  }

  v12 = &a4[3 * v6];
  v13 = a4;
  if (v5 >= 24 && v4 < v41)
  {
    do
    {
      v14 = v4[2];
      v15 = v13[2];
      v16 = *v4 == *v13 && *(v4 + 1) == *(v13 + 1);
      if (v16 || (v17 = v9, v18 = sub_248731880(), v9 = v17, (v18 & 1) != 0))
      {
        if (v14 >= v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = sub_248731880();
        v9 = v17;
        if ((v20 & 1) == 0)
        {
LABEL_17:
          v19 = v13;
          v16 = v9 == v13;
          v13 += 3;
          if (v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          v21 = *v19;
          v9[2] = v19[2];
          *v9 = v21;
          goto LABEL_19;
        }
      }

      v19 = v4;
      v16 = v9 == v4;
      v4 += 3;
      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_19:
      v9 += 3;
    }

    while (v13 < v12 && v4 < v41);
  }

  v22 = v9;
LABEL_46:
  v36 = (v12 - v13) / 24;
  if (v22 != v13 || v22 >= &v13[3 * v36])
  {
    memmove(v22, v13, 24 * v36);
  }

  return 1;
}

uint64_t sub_2486FCFAC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2486FD038(v3);
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

void *sub_2486FD074(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2486FD1D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2486FD324(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2486FD448(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v27 = MEMORY[0x277D84F90];
  sub_2486DA340(0, v2, 0);
  v3 = v27;
  v25 = a1 + 64;
  result = sub_2487315C0();
  v6 = result;
  v7 = 0;
  v26 = *(a1 + 36);
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v25 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v6);

    a2(v12, v11, v13);

    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_2486DA340((v14 > 1), v15 + 1, 1);
    }

    *(v27 + 16) = v16;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v17 = *(v25 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_2486FDB94(v6, v26, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_2486FDB94(v6, v26, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_2486FD6A8()
{
  result = qword_27EEA64C0;
  if (!qword_27EEA64C0)
  {
    sub_248730970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA64C0);
  }

  return result;
}

uint64_t sub_2486FDB94(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2486FDBF0()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t sub_2486FDC64(uint64_t a1)
{
  v2 = *v1;
  sub_248731910();
  MEMORY[0x24C1D78A0](v2);
  return sub_248731930();
}

unint64_t sub_2486FDCA8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2486FE7F0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL static EventUtils.isFeaturizedEventOfType(featurizedEvent:expectedEventType:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  return *(a1 + v4) == a2;
}

id EventUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double sub_2486FDDD0()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2486FDE14()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2486FDE58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2486FDEB8()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_2486FDF0C()
{
  v1 = v0;
  sub_248731650();
  MEMORY[0x24C1D70A0](0x6D617473656D6954, 0xEB00000000203A70);
  swift_beginAccess();
  sub_248731350();
  MEMORY[0x24C1D70A0](0x7420746E6576450ALL, 0xED0000203A657079);
  swift_beginAccess();
  v2 = _s26DeepThoughtBiomeFoundation10EventUtilsC17eventTypeToString0gH0SSAA0eH0O_tFZ_0();
  MEMORY[0x24C1D70A0](v2);

  MEMORY[0x24C1D70A0](0x203A746E6576450ALL, 0xE800000000000000);
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v4 = [*(v1 + v3) debugDescription];
  v5 = sub_248730FF0();
  v7 = v6;

  MEMORY[0x24C1D70A0](v5, v7);

  return 0;
}

id sub_2486FE130(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2486FE180(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2486FE1DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s26DeepThoughtBiomeFoundation12EventFactoryC4from9timestamp03rawE0AA0E0CSgSd_So11BMEventBaseCtFZ_0(void *a1, double a2)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 1;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = 2;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v4 = 3;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v4 = 4;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v4 = 6;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v4 = 7;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v4 = 8;
                }

                else
                {
                  objc_opt_self();
                  if (swift_dynamicCastObjCClass())
                  {
                    v4 = 9;
                  }

                  else
                  {
                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      v4 = 10;
                    }

                    else
                    {
                      objc_opt_self();
                      if (swift_dynamicCastObjCClass())
                      {
                        v4 = 11;
                      }

                      else
                      {
                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v4 = 12;
                        }

                        else
                        {
                          objc_opt_self();
                          if (swift_dynamicCastObjCClass())
                          {
                            v4 = 13;
                          }

                          else
                          {
                            objc_opt_self();
                            if (swift_dynamicCastObjCClass())
                            {
                              v4 = 14;
                            }

                            else
                            {
                              objc_opt_self();
                              if (swift_dynamicCastObjCClass())
                              {
                                v4 = 15;
                              }

                              else
                              {
                                objc_opt_self();
                                if (swift_dynamicCastObjCClass())
                                {
                                  v4 = 16;
                                }

                                else
                                {
                                  objc_opt_self();
                                  if (swift_dynamicCastObjCClass())
                                  {
                                    v4 = 18;
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    result = swift_dynamicCastObjCClass();
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v4 = 19;
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
  }

  v6 = type metadata accessor for Event();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp] = a2;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType] = v4;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody] = a1;
  v9.receiver = v7;
  v9.super_class = v6;
  v8 = a1;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_2486FE7F0(unint64_t result)
{
  if (result > 0x17)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2486FE870()
{
  result = qword_27EEA65F8;
  if (!qword_27EEA65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA65F8);
  }

  return result;
}

unint64_t sub_2486FE8C8()
{
  result = qword_27EEA6600;
  if (!qword_27EEA6600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6608, &qword_2487350F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6600);
  }

  return result;
}

void sub_2486FEA30(void (*a1)(uint64_t, unint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v108 = &v106 - v6;
  v7 = sub_2487309B0();
  v111 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v109 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_ttsEvents;
  swift_beginAccess();
  v114 = a1;
  v110 = v9;
  v10 = *(a1 + v9);
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_73;
  }

  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v107 = v5;
  v112 = v7;

  v7 = MEMORY[0x277D84F90];
  if (v12)
  {
    v13 = 0;
    v5 = off_278F52000;
    do
    {
      v113 = v7;
      v7 = v13;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1D7600](v7, v10);
        }

        else
        {
          if (v7 >= *(v11 + 16))
          {
            goto LABEL_70;
          }

          v14 = *(v10 + 8 * v7 + 32);
        }

        v15 = v14;
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v16 = [v14 requestReceivedTier1];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 textToSynthesize];

          if (v18)
          {
            break;
          }
        }

        ++v7;
        if (v13 == v12)
        {
          v7 = v113;
          goto LABEL_22;
        }
      }

      v19 = sub_248730FF0();
      v21 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v113 = sub_2486C44B4(0, *(v113 + 2) + 1, 1, v113);
      }

      v24 = *(v113 + 2);
      v23 = *(v113 + 3);
      if (v24 >= v23 >> 1)
      {
        v113 = sub_2486C44B4((v23 > 1), v24 + 1, 1, v113);
      }

      v25 = v113;
      *(v113 + 2) = v24 + 1;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v19;
      *(v26 + 5) = v21;
      v7 = v25;
    }

    while (v13 != v12);
  }

LABEL_22:

  if (*(v7 + 16))
  {
    v27 = *(v7 + 32);
    v28 = *(v7 + 40);

    v118 = MEMORY[0x277D837D0];
    v116 = v27;
    v117 = v28;
    swift_beginAccess();

    sub_2486C6800(&v116, 0xD000000000000014, 0x8000000248739370);
    swift_endAccess();
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v29 = sub_248730DF0();
    __swift_project_value_buffer(v29, qword_28150F088);

    v7 = v114;
    v30 = sub_248730DD0();
    v31 = sub_2487313C0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v116 = v33;
      *v32 = 136315394;
      v34 = sub_2486D3010(v27, v28, &v116);

      *(v32 + 4) = v34;
      *(v32 + 12) = 2080;
      v35 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v37 = v111;
      v36 = v112;
      v38 = v109;
      (*(v111 + 16))(v109, v7 + v35, v112);
      v39 = sub_248730980();
      v41 = v40;
      (*(v37 + 8))(v38, v36);
      v7 = sub_2486D3010(v39, v41, &v116);

      *(v32 + 14) = v7;
      _os_log_impl(&dword_2486BF000, v30, v31, "Extracted %s for turn: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v33, -1, -1);
      MEMORY[0x24C1D8100](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_33;
  }

  if (qword_28150EE60 != -1)
  {
    goto LABEL_85;
  }

  while (1)
  {
    v42 = sub_248730DF0();
    __swift_project_value_buffer(v42, qword_28150F088);
    v43 = v114;
    v44 = sub_248730DD0();
    v45 = sub_2487313C0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v116 = v7;
      *v46 = 136315138;
      v47 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v49 = v111;
      v48 = v112;
      v50 = v109;
      (*(v111 + 16))(v109, &v43[v47], v112);
      v51 = sub_248730980();
      v53 = v52;
      (*(v49 + 8))(v50, v48);
      v54 = sub_2486D3010(v51, v53, &v116);

      *(v46 + 4) = v54;
      _os_log_impl(&dword_2486BF000, v44, v45, "Failed to extract textToSynthesize for turn: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1D8100](v7, -1, -1);
      MEMORY[0x24C1D8100](v46, -1, -1);
    }

LABEL_33:
    v55 = *(v114 + v110);
    v116 = MEMORY[0x277D84F90];
    if (v55 >> 62)
    {
      v56 = sub_248731790();
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v56)
    {
      v11 = 0;
      v5 = (v55 & 0xC000000000000001);
      v10 = MEMORY[0x277D84F90];
LABEL_37:
      v57 = v11;
      while (1)
      {
        if (v5)
        {
          v58 = MEMORY[0x24C1D7600](v57, v55);
        }

        else
        {
          if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v58 = *(v55 + 8 * v57 + 32);
        }

        v7 = v58;
        v11 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v59 = [v58 requestReceivedTier1];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 linkId];

          if (v61)
          {
            MEMORY[0x24C1D71A0]();
            if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v7 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_248731260();
            }

            sub_2487312A0();
            v10 = v116;
            if (v11 != v56)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }
        }

        else
        {
        }

        ++v57;
        if (v11 == v56)
        {
          goto LABEL_53;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      v12 = sub_248731790();
      goto LABEL_3;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_53:

    if (!(v10 >> 62))
    {
      v62 = v112;
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_55;
    }

    v94 = sub_248731790();
    v62 = v112;
    if (!v94)
    {
      break;
    }

LABEL_55:
    if ((v10 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x24C1D7600](0, v10);
      goto LABEL_58;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v63 = *(v10 + 32);
LABEL_58:
      v64 = v63;

      if (!v64)
      {
        goto LABEL_77;
      }

      v65 = [v64 toSafeNSUUID];
      v66 = v111;
      if (v65)
      {
        v67 = v107;
        v68 = v65;
        sub_248730990();

        v69 = 0;
      }

      else
      {
        v69 = 1;
        v67 = v107;
      }

      (*(v66 + 56))(v67, v69, 1, v62);
      v70 = v108;
      sub_2486C98BC(v67, v108);
      if ((*(v66 + 48))(v70, 1, v62) == 1)
      {
        sub_2486C992C(v70);
        goto LABEL_77;
      }

      v71 = sub_248730980();
      v73 = v72;
      v74 = *(v66 + 8);
      v74(v70, v62);
      v118 = MEMORY[0x277D837D0];
      v116 = v71;
      v117 = v73;
      swift_beginAccess();

      sub_2486C6800(&v116, 0x6B6E696C2E535454, 0xEA00000000006449);
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v75 = sub_248730DF0();
      __swift_project_value_buffer(v75, qword_28150F088);
      v76 = v114;

      v77 = sub_248730DD0();
      v78 = sub_2487313C0();

      if (!os_log_type_enabled(v77, v78))
      {

        goto LABEL_82;
      }

      v79 = swift_slowAlloc();
      v114 = v74;
      v80 = v79;
      v81 = swift_slowAlloc();
      v82 = v71;
      v83 = v81;
      v115[0] = v81;
      *v80 = 136315394;
      v84 = sub_2486D3010(v82, v73, v115);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      v85 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v86 = v112;
      v87 = &v76[v85];
      v88 = v109;
      (*(v111 + 16))(v109, v87, v112);
      v89 = sub_248730980();
      v91 = v90;
      v114(v88, v86);
      v92 = sub_2486D3010(v89, v91, v115);

      *(v80 + 14) = v92;
      _os_log_impl(&dword_2486BF000, v77, v78, "Extracted %s for turn: %s", v80, 0x16u);
      swift_arrayDestroy();
      v93 = v83;
LABEL_81:
      MEMORY[0x24C1D8100](v93, -1, -1);
      MEMORY[0x24C1D8100](v80, -1, -1);
      goto LABEL_82;
    }

    __break(1u);
LABEL_85:
    swift_once();
  }

  v64 = 0;
LABEL_77:
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v95 = sub_248730DF0();
  __swift_project_value_buffer(v95, qword_28150F088);
  v96 = v114;
  v77 = sub_248730DD0();
  v97 = sub_2487313C0();

  if (os_log_type_enabled(v77, v97))
  {
    v80 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v115[0] = v98;
    *v80 = 136315138;
    v99 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v100 = v111;
    v101 = v109;
    (*(v111 + 16))(v109, &v96[v99], v62);
    v102 = sub_248730980();
    v104 = v103;
    (*(v100 + 8))(v101, v62);
    v105 = sub_2486D3010(v102, v104, v115);

    *(v80 + 4) = v105;
    _os_log_impl(&dword_2486BF000, v77, v97, "Failed to extract linkId for turn: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    v93 = v98;
    goto LABEL_81;
  }

LABEL_82:
}

id TTSIntraTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSIntraTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTSIntraTurnFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TTSIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id MediaNowPlayingFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaNowPlayingFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaNowPlayingFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486FF95C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 album];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v55 = 0;
    }

    v53 = v9;
    v54 = v11;
    v56 = v12;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739B90);
    swift_endAccess();
    v13 = [v5 artist];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v55 = 0;
    }

    v53 = v15;
    v54 = v17;
    v56 = v18;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000016, 0x8000000248739B70);
    swift_endAccess();
    v19 = [v5 title];
    if (v19)
    {
      v20 = v19;
      v21 = sub_248730FF0();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v55 = 0;
    }

    v53 = v21;
    v54 = v23;
    v56 = v24;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739BF0);
    swift_endAccess();
    v25 = [v5 genre];
    if (v25)
    {
      v26 = v25;
      v27 = sub_248730FF0();
      v29 = v28;

      v30 = MEMORY[0x277D837D0];
    }

    else
    {
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v55 = 0;
    }

    v53 = v27;
    v54 = v29;
    v56 = v30;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000015, 0x8000000248739B50);
    swift_endAccess();
    v31 = [v5 bundleID];
    if (v31)
    {
      v32 = v31;
      v33 = sub_248730FF0();
      v35 = v34;

      v36 = MEMORY[0x277D837D0];
    }

    else
    {
      v33 = 0;
      v35 = 0;
      v36 = 0;
      v55 = 0;
    }

    v37 = MEMORY[0x277D837D0];
    v53 = v33;
    v54 = v35;
    v56 = v36;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000018, 0x8000000248739BD0);
    swift_endAccess();
    v38 = [v5 mediaType];
    if (v38)
    {
      v39 = v38;
      v40 = sub_248730FF0();
      v42 = v41;

      v43 = MEMORY[0x277D837D0];
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v55 = 0;
    }

    v53 = v40;
    v54 = v42;
    v56 = v43;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000019, 0x8000000248739BB0);
    swift_endAccess();
    v44 = [v5 playbackState];
    type metadata accessor for BMMediaNowPlayingPlaybackState(0);
    v56 = v45;
    LODWORD(v53) = v44;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD00000000000001DLL, 0x8000000248739C50);
    swift_endAccess();
    [v5 playbackState];
    v46 = BMMediaNowPlayingPlaybackStateAsString();
    v47 = sub_248730FF0();
    v49 = v48;

    v56 = v37;
    v53 = v47;
    v54 = v49;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000025, 0x8000000248739C70);
    swift_endAccess();
    v50 = [v5 elapsed];
    v51 = MEMORY[0x277D84CC0];
    v56 = MEMORY[0x277D84CC0];
    LODWORD(v53) = v50;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000017, 0x8000000248739C10);
    swift_endAccess();
    v52 = [v5 duration];
    v56 = v51;
    LODWORD(v53) = v52;
    swift_beginAccess();
    sub_2486C6800(&v53, 0xD000000000000018, 0x8000000248739C30);
    swift_endAccess();
  }
}

id MediaNowPlayingFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaNowPlayingFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2486FFF34(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2487309B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150EE60 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v8 = sub_248730DF0();
    v9 = __swift_project_value_buffer(v8, qword_28150F088);
    v10 = a1;
    v143 = v9;
    v11 = sub_248730DD0();
    v12 = sub_2487313B0();

    v13 = os_log_type_enabled(v11, v12);
    v147 = v10;
    v139 = v5;
    v138 = v7;
    v144 = v2;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v154 = v15;
      *v14 = 136315138;
      v16 = sub_24870FDD8();
      v18 = sub_2486D3010(v16, v17, &v154);

      *(v14 + 4) = v18;
      v10 = v147;
      _os_log_impl(&dword_2486BF000, v11, v12, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1D8100](v15, -1, -1);
      MEMORY[0x24C1D8100](v14, -1, -1);
    }

    v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_mhEvents;
    swift_beginAccess();
    v146 = v19;
    v20 = *&v19[v10];
    if (v20 >> 62)
    {
      v21 = sub_248731790();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = off_278F52000;
    v140 = v4;
    if (v21)
    {
      if (v21 < 1)
      {
        __break(1u);
        return;
      }

      v148 = 0;
      v22 = 0;
      v23 = 0.0;
      v151 = 1;
      v152 = 2;
      v149 = 1;
      v150 = 1;
      v24 = 0.0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x24C1D7600](v22, v20);
        }

        else
        {
          v25 = *(v20 + 8 * v22 + 32);
        }

        v26 = v25;
        v27 = [v25 endpointDetected];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 endpointFeaturesAtEndpoint];

          if (v29)
          {
            [v29 clientSilenceProbability];
            v24 = v30;

            v149 = 0;
          }
        }

        v31 = [v26 endpointDetected];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 endpointFeaturesAtEndpoint];

          if (v33)
          {
            [v33 endOfSentenceLikelihood];
            v23 = v34;

            v150 = 0;
          }
        }

        v35 = [v26 unintendedResponseSuppressionExecutionContext];
        if (v35)
        {
          v36 = v35;
          v37 = [v35 startedOrChanged];

          if (v37)
          {
            v38 = [v37 trailingSilenceDurationInNs];

            v151 = 0;
            v148 = v38 / 0xF4240;
          }
        }

        v39 = [v26 voiceTriggerContext];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 ended];

          if (v41)
          {
            v42 = [v41 voiceTriggerEventInfo];
            if (v42)
            {
              v43 = v42;
              v152 = [v42 satTriggered];
            }

            else
            {

              v152 = 2;
            }
          }
        }

        v44 = [v26 voiceTriggerContext];
        if (v44)
        {
          v45 = v44;
          v46 = [v44 failed];

          if (v46)
          {
            v47 = [v46 voiceTriggerEventInfo];
            if (v47)
            {
              v48 = v47;
              v152 = [v47 satTriggered];
            }

            else
            {

              v152 = 2;
            }
          }
        }

        v49 = [v26 voiceTriggerContext];
        if (v49 && (v50 = v49, v51 = [v49 cancelled], v50, v51))
        {
          v52 = [v51 voiceTriggerEventInfo];
          if (v52)
          {
            v53 = v52;
            v152 = [v52 satTriggered];
          }

          else
          {

            v152 = 2;
          }
        }

        else
        {
        }

        ++v22;
      }

      while (v21 != v22);
    }

    else
    {
      v148 = 0;
      v23 = 0.0;
      v151 = 1;
      v152 = 2;
      v149 = 1;
      v150 = 1;
      v24 = 0.0;
    }

    v54 = *&v146[v147];
    v4 = v54 & 0xFFFFFFFFFFFFFF8;
    if (v54 >> 62)
    {
      v7 = sub_248731790();
    }

    else
    {
      v7 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v55 = 0;
      v2 = v54 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      do
      {
        v145 = v56;
        a1 = v55;
        while (1)
        {
          if (v2)
          {
            v57 = MEMORY[0x24C1D7600](a1, v54);
          }

          else
          {
            if (a1 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_159;
            }

            v57 = *(v54 + 8 * a1 + 32);
          }

          v58 = v57;
          v55 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v59 = [v57 unintendedResponseSuppressionExecutionContext];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 ended];

            if (v61)
            {
              break;
            }
          }

          ++a1;
          if (v55 == v7)
          {
            v56 = v145;
            goto LABEL_62;
          }
        }

        [v61 score];
        v63 = v62;

        v64 = v145;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = sub_2486C5DD4();
        }

        v66 = *(v64 + 16);
        v67 = v64;
        if (v66 >= *(v64 + 24) >> 1)
        {
          v67 = sub_2486C5DD4();
        }

        *(v67 + 16) = v66 + 1;
        v56 = v67;
        *(v67 + 4 * v66 + 32) = v63;
      }

      while (v55 != v7);
    }

    else
    {
      v56 = MEMORY[0x277D84F90];
    }

LABEL_62:

    v142 = *(v56 + 16);
    if (v142)
    {
      v68 = *(v56 + 32);

      v69 = v68;
    }

    else
    {

      v68 = 0.0;
      v69 = -1.0;
    }

    v70 = *&v146[v147];
    v4 = v70 & 0xFFFFFFFFFFFFFF8;
    if (v70 >> 62)
    {
      v7 = sub_248731790();
    }

    else
    {
      v7 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v71 = 0;
      v2 = v70 & 0xC000000000000001;
      v145 = MEMORY[0x277D84F90];
LABEL_69:
      a1 = v71;
      while (1)
      {
        if (v2)
        {
          v72 = MEMORY[0x24C1D7600](a1, v70);
        }

        else
        {
          if (a1 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_161;
          }

          v72 = *(v70 + 8 * a1 + 32);
        }

        v73 = v72;
        v71 = (a1 + 1);
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v74 = [v72 unintendedResponseSuppressionExecutionContext];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 ended];

          if (v76)
          {
            [v76 threshold];
            v78 = v77;

            v79 = swift_isUniquelyReferenced_nonNull_native();
            if (v79)
            {
              v80 = v145;
            }

            else
            {
              v80 = sub_2486C5DD4();
            }

            v81 = *(v80 + 16);
            if (v81 >= *(v80 + 24) >> 1)
            {
              v80 = sub_2486C5DD4();
            }

            *(v80 + 16) = v81 + 1;
            v145 = v80;
            *(v80 + 4 * v81 + 32) = v78;
            if (v71 != v7)
            {
              goto LABEL_69;
            }

            goto LABEL_87;
          }
        }

        ++a1;
        if (v71 == v7)
        {
          goto LABEL_87;
        }
      }

LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v145 = MEMORY[0x277D84F90];
LABEL_87:

    v82 = *(v145 + 16);
    if (v82)
    {
      v83 = *(v145 + 32);

      v84 = v83;
    }

    else
    {

      v83 = 0.0;
      v84 = -1.0;
    }

    v85 = *&v146[v147];
    v4 = v85 & 0xFFFFFFFFFFFFFF8;
    v7 = v85 >> 62 ? sub_248731790() : *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      break;
    }

    v86 = 0;
    v2 = v85 & 0xC000000000000001;
    v146 = MEMORY[0x277D84F90];
    v5 = off_278F52000;
    v141 = v82;
LABEL_94:
    a1 = v86;
    while (1)
    {
      if (v2)
      {
        v87 = MEMORY[0x24C1D7600](a1, v85);
      }

      else
      {
        if (a1 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        v87 = *(v85 + 8 * a1 + 32);
      }

      v88 = v87;
      v86 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v89 = [v87 assistantDaemonAudioRecordingContext];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 startedOrChanged];

        if (v91)
        {
          v92 = [v91 audioInputRoute];

          v93 = swift_isUniquelyReferenced_nonNull_native();
          if (v93)
          {
            v94 = v146;
          }

          else
          {
            v94 = sub_2486C4A20(0, *(v146 + 2) + 1, 1, v146);
          }

          v96 = *(v94 + 2);
          v95 = *(v94 + 3);
          if (v96 >= v95 >> 1)
          {
            v94 = sub_2486C4A20((v95 > 1), v96 + 1, 1, v94);
          }

          *(v94 + 2) = v96 + 1;
          v146 = v94;
          *&v94[4 * v96 + 32] = v92;
          v82 = v141;
          if (v86 != v7)
          {
            goto LABEL_94;
          }

          goto LABEL_113;
        }
      }

      ++a1;
      if (v86 == v7)
      {
        v82 = v141;
        goto LABEL_113;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  v146 = MEMORY[0x277D84F90];
LABEL_113:

  v97 = *(v146 + 2);
  if (v97)
  {
    v98 = *(v146 + 8);

    v146 = sub_248731500();
    v100 = v99;
  }

  else
  {

    v146 = 0;
    v100 = 0;
    v98 = 0;
  }

  v101 = v142;
  if (v142)
  {
    *&v154 = v68;
    v101 = MEMORY[0x277D83A90];
  }

  else
  {
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  v157 = v101;
  swift_beginAccess();
  sub_2486C6800(&v154, 0x2E534552552E484DLL, 0xED000065726F6373);
  if (v82)
  {
    *&v154 = v83;
    v102 = MEMORY[0x277D83A90];
  }

  else
  {
    v102 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  v157 = v102;
  sub_2486C6800(&v154, 0xD000000000000011, 0x8000000248739440);
  if (v149)
  {
    v103 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  else
  {
    *&v154 = v24;
    v103 = MEMORY[0x277D83A90];
  }

  v157 = v103;
  sub_2486C6800(&v154, 0xD00000000000001BLL, 0x8000000248739460);
  if (v150)
  {
    v104 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  else
  {
    *&v154 = v23;
    v104 = MEMORY[0x277D83A90];
  }

  v157 = v104;
  sub_2486C6800(&v154, 0xD00000000000001ALL, 0x8000000248739480);
  if (v151)
  {
    v105 = 0;
    v106 = 0;
    v155 = 0;
    v156 = 0;
  }

  else
  {
    v106 = MEMORY[0x277D84D38];
    v105 = v148;
  }

  v154 = v105;
  v157 = v106;
  sub_2486C6800(&v154, 0xD000000000000023, 0x8000000248739410);
  if (v152 == 2)
  {
    v107 = 0;
    v154 = 0;
    v155 = 0;
    v108 = 0xE300000000000000;
    v156 = 0;
  }

  else
  {
    LOBYTE(v154) = v152 & 1;
    v108 = 0xE100000000000000;
    v107 = MEMORY[0x277D839B0];
  }

  v109 = v152;
  v157 = v107;
  sub_2486C6800(&v154, 0x72547461732E484DLL, 0xEF64657265676769);
  v110 = 48;
  if (v109)
  {
    v110 = 49;
  }

  v145 = v110;
  v111 = 0;
  if (v97)
  {
    type metadata accessor for MHSchemaMHAssistantDaemonAudioInputRoute(0);
    LODWORD(v154) = v98;
  }

  else
  {
    v154 = 0;
    v155 = 0;
    v156 = 0;
  }

  v157 = v111;
  sub_2486C6800(&v154, 0xD000000000000012, 0x80000002487394A0);
  if (v100)
  {
    v112 = MEMORY[0x277D837D0];
    v113 = v100;
    v114 = v100;
    v115 = v146;
  }

  else
  {
    v114 = 0;
    v115 = 0;
    v112 = 0;
    v156 = 0;
    v113 = 0xE300000000000000;
  }

  v154 = v115;
  v155 = v114;
  v157 = v112;

  sub_2486C6800(&v154, 0xD00000000000001ALL, 0x80000002487394C0);
  swift_endAccess();
  v116 = v147;

  v117 = sub_248730DD0();
  v118 = sub_2487313C0();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = v152;
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v153[0] = v121;
    *v120 = 134219778;
    *(v120 + 4) = v69;
    *(v120 + 12) = 2048;
    *(v120 + 14) = v84;
    *(v120 + 22) = 2048;
    v122 = v24;
    v123 = v150;
    if (v149)
    {
      v122 = -1.0;
    }

    *(v120 + 24) = v122;
    *(v120 + 32) = 2048;
    v124 = v23;
    if (v123)
    {
      v124 = -1.0;
    }

    *(v120 + 34) = v124;
    *(v120 + 42) = 2048;
    v125 = v148;
    if (v151)
    {
      v125 = 0;
    }

    *(v120 + 44) = v125;
    if (v119 == 2)
    {
      v126 = 4935253;
    }

    else
    {
      v126 = v145;
    }

    *(v120 + 52) = 2080;
    v127 = sub_2486D3010(v126, v108, v153);

    *(v120 + 54) = v127;
    *(v120 + 62) = 2080;
    if (v100)
    {
      v128 = v146;
    }

    else
    {
      v128 = 7104878;
    }

    v129 = sub_2486D3010(v128, v113, v153);

    *(v120 + 64) = v129;
    *(v120 + 72) = 2080;
    v130 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    v131 = v139;
    v132 = v138;
    v133 = v140;
    (v139[2])(v138, &v116[v130], v140);
    sub_24870111C();
    v134 = sub_248731850();
    v136 = v135;
    (v131[1])(v132, v133);
    v137 = sub_2486D3010(v134, v136, v153);

    *(v120 + 74) = v137;
    _os_log_impl(&dword_2486BF000, v117, v118, "Extracted MH Features: URES (score: %f, threshold: %f),\nclientSilenceProbability: %f, endOfSentenceLikelihood: %f,\ntrailingSilenceMs: %llu,\nisSatTriggeredStr: %s,\naudioInputRouteStr: %s for turn %s)", v120, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v121, -1, -1);
    MEMORY[0x24C1D8100](v120, -1, -1);
  }

  else
  {
  }
}

id MHFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MHFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MHFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MHFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MHFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_2487010CC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2487010EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24870111C()
{
  result = qword_27EEA6610;
  if (!qword_27EEA6610)
  {
    sub_2487309B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6610);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall TimeBasedDictionary.getValue(key:)(Swift::Int key)
{
  (*(v1 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F60();

  v3 = v4;
  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

Swift::Bool __swiftcall TimeBasedDictionary.exists(key:)(Swift::Int key)
{
  (*(v1 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F60();

  if (v3)
  {
  }

  return v3 != 0;
}

DeepThoughtBiomeFoundation::FilterOption_optional __swiftcall FilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_248731820();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FilterOption.rawValue.getter()
{
  v1 = 0x7265746661;
  if (*v0 != 1)
  {
    v1 = 0x6E4165726F666562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F666562;
  }
}

uint64_t sub_2487013D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7265746661;
  if (v2 != 1)
  {
    v4 = 0x6E4165726F666562;
    v3 = 0xEE00726574664164;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65726F666562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7265746661;
  if (*a2 != 1)
  {
    v8 = 0x6E4165726F666562;
    v7 = 0xEE00726574664164;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65726F666562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_248731880();
  }

  return v11 & 1;
}

uint64_t sub_2487014E0()
{
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

uint64_t sub_248701588(uint64_t a1)
{
  sub_2487310D0();
}

uint64_t sub_24870161C(uint64_t a1)
{
  sub_248731910();
  sub_2487310D0();

  return sub_248731930();
}

void sub_2487016CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7265746661;
  if (v2 != 1)
  {
    v5 = 0x6E4165726F666562;
    v4 = 0xEE00726574664164;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65726F666562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TimeBasedDictionary.keys()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  swift_getAssociatedTypeWitness();
  sub_2487312D0();
  sub_248730F40();
  swift_getWitnessTable();
  return sub_2487312E0();
}

unint64_t sub_248701800()
{
  result = qword_27EEA6618;
  if (!qword_27EEA6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6618);
  }

  return result;
}

uint64_t sub_2487018F0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v9, v12);
    a2(v9, v12);
    v5 = *(&v9[0] + 1);
    if (*(&v9[0] + 1) >> 60 == 15)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      result = sub_248702D3C(*&v9[0], v5);
      v7 = 0;
      v5 = 0;
      v8 = 0;
      a3[2] = 0;
    }

    else
    {
      v7 = *&v9[0];
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v8 = MEMORY[0x277CC9318];
    }

    *a3 = v7;
    a3[1] = v5;
    a3[3] = v8;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = sub_2486C7940(v9, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701A08@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X2>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t (*a5)(void)@<X6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  sub_2486C5B68(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (!swift_dynamicCast())
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    v18 = &qword_27EEA6628;
    v19 = &qword_248735400;
    v17 = v22;
    goto LABEL_5;
  }

  sub_2486CD01C(v22, v25);
  a2(v25);
  v15 = a5(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
    v17 = v14;
    v18 = a3;
    v19 = a4;
LABEL_5:
    result = sub_2486C7940(v17, v18, v19);
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  *(a6 + 24) = v15;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  (*(v16 + 32))(boxed_opaque_existential_0, v14, v15);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_248701BD8@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v9, v12);
    a2(v9, v12);
    v5 = *(&v9[0] + 1);
    if (*(&v9[0] + 1))
    {
      v6 = *&v9[0];
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v8 = MEMORY[0x277D837D0];
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v12);
      v6 = 0;
      v8 = 0;
      a3[2] = 0;
    }

    *a3 = v6;
    a3[1] = v5;
    a3[3] = v8;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = sub_2486C7940(v9, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701CD8@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v8, v11);
    a2(v8, v11);
    if (BYTE8(v8[0]))
    {
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = 0;
      a3[1] = 0;
      a3[2] = 0;
      v7 = 0;
    }

    else
    {
      v7 = *&v8[0];
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = MEMORY[0x277D839F8];
    }

    *a3 = v7;
    a3[3] = v6;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = sub_2486C7940(v8, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_248701DE0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, void *)@<X2>, void *a3@<X8>)
{
  sub_2486C5B68(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  if (swift_dynamicCast())
  {
    sub_2486CD01C(v8, v11);
    a2(v8, v11);
    if (BYTE8(v8[0]))
    {
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v6 = 0;
      v7 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    else
    {
      v6 = *&v8[0];
      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v7 = MEMORY[0x277D83B88];
    }

    *a3 = v6;
    a3[3] = v7;
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = sub_2486C7940(v8, &qword_27EEA6628, &qword_248735400);
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

id sub_248701EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v15[3] = swift_getObjectType();
  v15[0] = a2;

  swift_unknownObjectRetain();
  v5(v13, v15, a3);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_248731870();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v15);

  return v11;
}

void _s26DeepThoughtBiomeFoundation12SchemaMapperO03getcE014dataModelClassSo11BMSQLSchemaCAA19UnifiedSiriTurnBaseCm_tFZ_0(uint64_t a1)
{
  v1 = a1;
  v2 = (*(a1 + 184))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v78 = v1;
    v88 = MEMORY[0x277D84F90];
    sub_2487316D0();
    v4 = 0;
    v5 = (v2 + 64);
    v80 = v2;
    v81 = v3;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      v20 = *(v5 - 4);
      v19 = *(v5 - 3);
      v22 = *(v5 - 2);
      v21 = *(v5 - 1);
      v23 = *v5;
      if (v23 <= 2)
      {
        if (*v5)
        {
          if (v23 == 1)
          {
            v36 = swift_allocObject();
            *(v36 + 16) = v22;
            *(v36 + 24) = v21;
            v37 = swift_allocObject();
            *(v37 + 16) = sub_248702CE8;
            *(v37 + 24) = v36;
            v38 = objc_allocWithZone(MEMORY[0x277CF1A80]);
            sub_248702B60(v20, v19, v22, v21, 1u);

            v39 = sub_248730FC0();
            v86 = sub_248702CF0;
            v87 = v37;
            aBlock = MEMORY[0x277D85DD0];
            v83 = 1107296256;
            v84 = sub_248701EE4;
            v85 = &block_descriptor_48_0;
            v40 = _Block_copy(&aBlock);

            v41 = [v38 initWithName:v39 dataType:1 requestOnly:0 extractBlock:v40];
            v42 = v22;
            v43 = v41;
            _Block_release(v40);

            if (!v43)
            {
              goto LABEL_34;
            }

            v14 = v20;
            v15 = v19;
            v16 = v42;
            v17 = v21;
            v18 = 1;
          }

          else
          {
            v57 = swift_allocObject();
            *(v57 + 16) = v22;
            *(v57 + 24) = v21;
            v58 = swift_allocObject();
            *(v58 + 16) = sub_248702D80;
            *(v58 + 24) = v57;
            v59 = objc_allocWithZone(MEMORY[0x277CF1A80]);
            sub_248702B60(v20, v19, v22, v21, 2u);

            v60 = sub_248730FC0();
            v86 = sub_248702D84;
            v87 = v58;
            aBlock = MEMORY[0x277D85DD0];
            v83 = 1107296256;
            v84 = sub_248701EE4;
            v85 = &block_descriptor_39;
            v61 = _Block_copy(&aBlock);

            v62 = [v59 initWithName:v60 dataType:2 requestOnly:0 extractBlock:v61];
            v63 = v22;
            v64 = v62;
            _Block_release(v61);

            if (!v64)
            {
              goto LABEL_33;
            }

            v14 = v20;
            v15 = v19;
            v16 = v63;
            v17 = v21;
            v18 = 2;
          }
        }

        else
        {
          v51 = swift_allocObject();
          *(v51 + 16) = v22;
          *(v51 + 24) = v21;
          v52 = v22;
          v53 = swift_allocObject();
          *(v53 + 16) = sub_248702CF8;
          *(v53 + 24) = v51;
          v79 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v20, v19, v52, v21, 0);
          v54 = sub_248730FC0();
          v86 = sub_248702D34;
          v87 = v53;
          aBlock = MEMORY[0x277D85DD0];
          v83 = 1107296256;
          v84 = sub_248701EE4;
          v85 = &block_descriptor_57;
          v55 = _Block_copy(&aBlock);

          v56 = [v79 initWithName:v54 dataType:0 requestOnly:0 extractBlock:v55];
          _Block_release(v55);

          if (!v56)
          {
            goto LABEL_35;
          }

          v14 = v20;
          v15 = v19;
          v16 = v52;
          v17 = v21;
          v18 = 0;
        }
      }

      else if (*v5 > 4u)
      {
        if (v23 != 5)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v22;
          *(v44 + 24) = v21;
          v45 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v20, v19, v22, v21, 6u);

          v46 = sub_248730FC0();
          v86 = sub_248702B20;
          v87 = v44;
          aBlock = MEMORY[0x277D85DD0];
          v83 = 1107296256;
          v84 = sub_248701EE4;
          v85 = &block_descriptor_0;
          v47 = _Block_copy(&aBlock);

          v48 = [v45 initWithName:v46 dataType:6 requestOnly:0 extractBlock:v47];
          v49 = v22;
          v50 = v48;
          _Block_release(v47);

          if (!v50)
          {
            goto LABEL_36;
          }

          v31 = v20;
          v32 = v19;
          v33 = v49;
          v34 = v21;
          v35 = 6;
LABEL_20:
          sub_248702BC4(v31, v32, v33, v34, v35);

          goto LABEL_6;
        }

        v6 = swift_allocObject();
        *(v6 + 16) = v22;
        *(v6 + 24) = v21;
        v7 = swift_allocObject();
        *(v7 + 16) = sub_248702C5C;
        *(v7 + 24) = v6;
        v8 = objc_allocWithZone(MEMORY[0x277CF1A80]);
        sub_248702B60(v20, v19, v22, v21, 5u);

        v9 = sub_248730FC0();
        v86 = sub_248702C64;
        v87 = v7;
        aBlock = MEMORY[0x277D85DD0];
        v83 = 1107296256;
        v84 = sub_248701EE4;
        v85 = &block_descriptor_13;
        v10 = _Block_copy(&aBlock);

        v11 = [v8 initWithName:v9 dataType:5 requestOnly:0 extractBlock:v10];
        v12 = v22;
        v13 = v11;
        _Block_release(v10);

        if (!v13)
        {
          goto LABEL_37;
        }

        v14 = v20;
        v15 = v19;
        v16 = v12;
        v17 = v21;
        v18 = 5;
      }

      else
      {
        if (v23 == 3)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v21;
          v25 = objc_allocWithZone(MEMORY[0x277CF1A80]);

          sub_248702B60(v20, v19, v22, v21, 3u);

          v26 = sub_248730FC0();
          v86 = sub_248702C7C;
          v87 = v24;
          aBlock = MEMORY[0x277D85DD0];
          v83 = 1107296256;
          v84 = sub_248701EE4;
          v85 = &block_descriptor_28;
          v27 = _Block_copy(&aBlock);

          v28 = [v25 initWithName:v26 dataType:3 requestOnly:0 extractBlock:v27];
          v29 = v22;
          v30 = v28;
          _Block_release(v27);

          if (!v30)
          {
            goto LABEL_32;
          }

          v31 = v20;
          v32 = v19;
          v33 = v29;
          v34 = v21;
          v35 = 3;
          goto LABEL_20;
        }

        v65 = swift_allocObject();
        *(v65 + 16) = v22;
        *(v65 + 24) = v21;
        v66 = swift_allocObject();
        *(v66 + 16) = sub_248702C6C;
        *(v66 + 24) = v65;
        v67 = objc_allocWithZone(MEMORY[0x277CF1A80]);
        sub_248702B60(v20, v19, v22, v21, 4u);

        v68 = sub_248730FC0();
        v86 = sub_248702C74;
        v87 = v66;
        aBlock = MEMORY[0x277D85DD0];
        v83 = 1107296256;
        v84 = sub_248701EE4;
        v85 = &block_descriptor_22;
        v69 = _Block_copy(&aBlock);

        v70 = [v67 initWithName:v68 dataType:4 requestOnly:0 extractBlock:v69];
        v71 = v22;
        v72 = v70;
        _Block_release(v69);

        if (!v72)
        {
          goto LABEL_38;
        }

        v14 = v20;
        v15 = v19;
        v16 = v71;
        v17 = v21;
        v18 = 4;
      }

      sub_248702BC4(v14, v15, v16, v17, v18);

      v2 = v80;
LABEL_6:
      ++v4;
      sub_2487316B0();
      sub_2487316E0();
      sub_2487316F0();
      sub_2487316C0();
      v5 += 40;
      if (v81 == v4)
      {

        v1 = v78;
        goto LABEL_29;
      }
    }
  }

LABEL_29:
  (*(v1 + 176))(v73);
  v74 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  v75 = sub_248730FC0();

  sub_248702C10();
  v76 = sub_248731230();
  v77 = [v74 initWithTableName:v75 columns:v76];

  if (!v77)
  {
    goto LABEL_39;
  }
}

void sub_248702B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_248702BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }
}

unint64_t sub_248702C10()
{
  result = qword_27EEA6620;
  if (!qword_27EEA6620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA6620);
  }

  return result;
}

uint64_t sub_248702CBC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_248702D00@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t sub_248702D3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2486CC7FC(result, a2);
  }

  return result;
}

uint64_t sub_248702DD8(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0xEB00000000676E69;
      v2 = 0x6B636F6C426E6F4ELL;
    }

    else
    {
      sub_248731650();

      v3 = sub_248731470();
      MEMORY[0x24C1D70A0](v3);

      MEMORY[0x24C1D70A0](0x706D65747461202CLL, 0xEC000000203A7374);
      v4 = sub_248731850();
      MEMORY[0x24C1D70A0](v4);

      MEMORY[0x24C1D70A0](41, 0xE100000000000000);
      v2 = 0xD00000000000001BLL;
      v1 = 0x800000024873C6E0;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x676E696B636F6C42;
  }

  MEMORY[0x24C1D70A0](v2, v1);

  MEMORY[0x24C1D70A0](93, 0xE100000000000000);
  return 0x6B636F4C656C6946;
}

uint64_t sub_248702F50()
{
  v0 = type metadata accessor for FileLockDarwinDefault();
  v9[3] = v0;
  v9[4] = &off_285B24F10;
  v9[0] = swift_allocObject();
  type metadata accessor for FileLock();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v1[5] = v0;
  v1[6] = &off_285B24F10;
  v1[2] = v6;
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  qword_27EEA8158 = v1;
  return result;
}

void sub_248703068(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v5 = sub_248730850();
  v6 = *(v5 - 8);
  v91 = v5;
  v92 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v89 = &v84[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v84[-v15];
  v17 = a1;
  sub_248730840();
  sub_248730E30();
  sub_248730E50();
  sub_248730E20();
  sub_248730E40();
  sub_248731070();

  v18 = sub_248730E00();

  if (v18 < 0)
  {
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v37 = sub_248730DF0();
    __swift_project_value_buffer(v37, qword_27EEA6630);
    v38 = v91;
    v39 = v92;
    (*(v92 + 16))(v9, a1, v91);
    v40 = sub_248730DD0();
    v41 = sub_2487313D0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v94[0] = v43;
      *v42 = 136315650;
      sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v44 = sub_248731850();
      v46 = v45;
      (*(v39 + 8))(v9, v38);
      v47 = sub_2486D3010(v44, v46, v94);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v49 = MEMORY[0x24C1D6D90](v48);
      if (!strerror(v49))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v50 = sub_248731130();
      v52 = sub_2486D3010(v50, v51, v94);

      *(v42 + 14) = v52;
      *(v42 + 22) = 1024;
      *(v42 + 24) = MEMORY[0x24C1D6D90](v53);
      _os_log_impl(&dword_2486BF000, v40, v41, "Cannot open lock file %s: %s, %d", v42, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v43, -1, -1);
      MEMORY[0x24C1D8100](v42, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v9, v38);
    }

    v68 = v90;
    *(v90 + 32) = 0;
    *v68 = 0u;
    v68[1] = 0u;
    return;
  }

  if (a2)
  {
    v19 = 6;
  }

  else
  {
    v19 = 2;
  }

  if (flock(v18, v19))
  {
    v20 = v91;
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v21 = sub_248730DF0();
    __swift_project_value_buffer(v21, qword_27EEA6630);
    v22 = v92;
    (*(v92 + 16))(v12, a1, v20);
    v23 = sub_248730DD0();
    v24 = sub_2487313D0();
    if (!os_log_type_enabled(v23, v24))
    {

      (*(v22 + 8))(v12, v20);
      goto LABEL_21;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v94[0] = v26;
    *v25 = 136315650;
    v27 = sub_248730840();
    v29 = v28;
    (*(v22 + 8))(v12, v20);
    v30 = sub_2486D3010(v27, v29, v94);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    v32 = MEMORY[0x24C1D6D90](v31);
    if (strerror(v32))
    {
      v33 = sub_248731130();
      v35 = sub_2486D3010(v33, v34, v94);

      *(v25 + 14) = v35;
      *(v25 + 22) = 1024;
      *(v25 + 24) = MEMORY[0x24C1D6D90](v36);
      _os_log_impl(&dword_2486BF000, v23, v24, "Failed to acquire lock file: %s, %s, %d", v25, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v26, -1, -1);
      MEMORY[0x24C1D8100](v25, -1, -1);

LABEL_21:
      v67 = v90;
      *(v90 + 32) = 0;
      *v67 = 0u;
      v67[1] = 0u;
      close(v18);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  v54 = v91;
  if (qword_27EEA59B8 != -1)
  {
    swift_once();
  }

  v55 = sub_248730DF0();
  __swift_project_value_buffer(v55, qword_27EEA6630);
  v56 = v92;
  v57 = *(v92 + 16);
  v57(v16, a1, v54);
  v58 = sub_248730DD0();
  v59 = sub_2487313C0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v94[0] = v86;
    *v60 = 136315394;
    v85 = v59;
    v61 = sub_248730840();
    v87 = v17;
    v62 = v57;
    v64 = v63;
    (*(v56 + 8))(v16, v54);
    v65 = sub_2486D3010(v61, v64, v94);
    v57 = v62;
    v17 = v87;

    *(v60 + 4) = v65;
    *(v60 + 12) = 1024;
    *(v60 + 14) = v18;
    _os_log_impl(&dword_2486BF000, v58, v85, "Acquired a file lock for path %s, fd=%d", v60, 0x12u);
    v66 = v86;
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x24C1D8100](v66, -1, -1);
    MEMORY[0x24C1D8100](v60, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v16, v54);
  }

  v69 = v89;
  v57(v89, v17, v54);
  sub_2486E8718((v88 + 16), v94);
  v70 = __swift_mutable_project_boxed_opaque_existential_1(v94, v94[3]);
  v88 = v84;
  MEMORY[0x28223BE20](v70);
  v72 = &v84[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v73 + 16))(v72);
  v74 = *v72;
  v75 = type metadata accessor for FileLockDarwinDefault();
  v93[3] = v75;
  v93[4] = &off_285B24F10;
  v93[0] = v74;
  v76 = type metadata accessor for FileLockContextExclusive(0);
  v77 = swift_allocObject();
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v93, v75);
  MEMORY[0x28223BE20](v78);
  v80 = &v84[-((v79 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v81 + 16))(v80);
  v82 = *v80;
  *(v77 + 40) = v75;
  *(v77 + 48) = &off_285B24F10;
  *(v77 + 16) = v82;
  *(v77 + 60) = 0;
  *(v77 + 56) = v18;
  (*(v56 + 32))(v77 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundationP33_F4B432E80DB2346BBC23321592F0992C24FileLockContextExclusive_path, v69, v54);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  v83 = v90;
  *(v90 + 24) = v76;
  v83[4] = &off_285B24EF8;
  *v83 = v77;
}

void sub_2487039C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v121 = a6;
  v122 = a5;
  v118 = a4;
  v120 = a3;
  v110 = sub_248730E70();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_248730EB0();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_248730E60();
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v112 = (&v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_248730ED0();
  v119 = *(v115 - 8);
  v12 = MEMORY[0x28223BE20](v115);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v95 - v15;
  v17 = sub_248730850();
  v117 = *(v17 - 8);
  v18 = *(v117 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v95 - v20;
  sub_248703068(a1, a2, &v127);
  if (v128)
  {
    sub_2486CD01C(&v127, aBlock);
    v122(0, 0);
    v22 = *__swift_project_boxed_opaque_existential_1(aBlock, v124);
    v128 = type metadata accessor for FileLockContextExclusive(0);
    v129 = &off_285B24EF8;
    *&v127 = v22;
    __swift_project_boxed_opaque_existential_1(&v127, v128);

    sub_24870485C();
    __swift_destroy_boxed_opaque_existential_0(&v127);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return;
  }

  v101 = v21;
  v97 = v18;
  v99 = v14;
  v116 = a2;
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v17;
  v114 = a1;
  v103 = v16;
  v98 = v6;
  sub_248704D50(&v127);
  if (qword_27EEA59B8 != -1)
  {
    swift_once();
  }

  v23 = sub_248730DF0();
  v24 = __swift_project_value_buffer(v23, qword_27EEA6630);
  v25 = v117;
  v26 = v101;
  v27 = v104;
  v96 = *(v117 + 16);
  v96(v101, v114, v104);
  v28 = v116;
  sub_248704DB8(v116);
  v100 = v24;
  v29 = sub_248730DD0();
  v30 = sub_2487313D0();
  sub_248704DC8(v28);
  v31 = os_log_type_enabled(v29, v30);
  v32 = v122;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 134218498;
    *(v33 + 4) = v118;
    *(v33 + 12) = 2080;
    v35 = sub_248702DD8(v116);
    v36 = v30;
    v38 = v27;
    v39 = sub_2486D3010(v35, v37, aBlock);

    *(v33 + 14) = v39;
    *(v33 + 22) = 2080;
    v40 = sub_248730840();
    v42 = v41;
    (*(v25 + 8))(v26, v38);
    v43 = sub_2486D3010(v40, v42, aBlock);

    *(v33 + 24) = v43;
    _os_log_impl(&dword_2486BF000, v29, v36, "Attempt %ld to acquire lock file (%s) failed: %s", v33, 0x20u);
    swift_arrayDestroy();
    v32 = v122;
    MEMORY[0x24C1D8100](v34, -1, -1);
    v28 = v116;
    MEMORY[0x24C1D8100](v33, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v26, v27);
  }

  v44 = v119;
  v45 = v102;
  v46 = swift_allocObject();
  v47 = v46;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v48 = v28 >= 2;
  v49 = v28;
  v50 = v103;
  if (v48)
  {
    v58 = v49;
    v59 = v49;
    v60 = v118;
    if (v118 >= v120)
    {
      v88 = sub_2487045E0(v47);
      v90 = v89;
      v91 = sub_248730DD0();
      v92 = sub_2487313D0();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        aBlock[0] = v94;
        *v93 = 136315138;
        *(v93 + 4) = sub_2486D3010(v88, v90, aBlock);
        _os_log_impl(&dword_2486BF000, v91, v92, "%s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x24C1D8100](v94, -1, -1);
        MEMORY[0x24C1D8100](v93, -1, -1);
      }

      v32(v88, v90);

      sub_248704DC8(v58);
      goto LABEL_22;
    }

    v102 = v59;
    sub_248730EC0();
    v61 = exp2(v60);
    if (v61 == INFINITY)
    {
      __break(1u);
    }

    else
    {
      v62 = v111;
      v63 = v113;
      v64 = v112;
      if (v61 > -9.22337204e18)
      {
        v101 = v47;
        v65 = v99;
        if (v61 < 9.22337204e18)
        {
          v66 = v61;
          if (v61 >= 15)
          {
            v66 = 15;
          }

          *v112 = v66;
          v67 = v62;
          v68 = v63;
          v63[13](v64, *MEMORY[0x277D85188], v62);
          MEMORY[0x24C1D6E60](v65, v64);
          (v68[1])(v64, v67);
          v69 = *(v44 + 8);
          v119 = v44 + 8;
          v113 = v69;
          (v69)(v65, v115);
          v70 = v45;
          v71 = v45;
          v72 = v104;
          v96(v70, v114, v104);
          v73 = v117;
          v74 = (*(v117 + 80) + 24) & ~*(v117 + 80);
          v75 = v50;
          v76 = (v97 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
          v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v98;
          (*(v73 + 32))(v78 + v74, v71, v72);
          v79 = (v78 + v76);
          v80 = v116;
          v82 = v120;
          v81 = v121;
          *v79 = v116;
          v79[1] = v82;
          *(v78 + v77) = v118;
          v83 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v83 = v122;
          v83[1] = v81;
          v125 = sub_248704DD8;
          v126 = v78;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24872EB14;
          v124 = &block_descriptor_1;
          v84 = _Block_copy(aBlock);
          sub_248704DB8(v80);

          v85 = v105;
          sub_248730E90();
          *&v127 = MEMORY[0x277D84F90];
          sub_248704EAC(&qword_27EEA6670, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
          sub_248704EF4();
          v86 = v107;
          v87 = v110;
          sub_2487315B0();
          MEMORY[0x24C1D73B0](v75, v85, v86, v84);
          _Block_release(v84);
          sub_248704DC8(v80);
          (*(v109 + 8))(v86, v87);
          (*(v106 + 8))(v85, v108);
          (v113)(v75, v115);

LABEL_22:

          return;
        }

LABEL_25:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  v51 = sub_2487045E0(v46);
  v53 = v52;
  v54 = sub_248730DD0();
  v55 = sub_2487313D0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_2486D3010(v51, v53, aBlock);
    _os_log_impl(&dword_2486BF000, v54, v55, "%s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C1D8100](v57, -1, -1);
    MEMORY[0x24C1D8100](v56, -1, -1);
  }

  v32(v51, v53);
}

unint64_t sub_2487045E0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_248731650();

    sub_248730850();
    sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v3 = sub_248731850();
    MEMORY[0x24C1D70A0](v3);

    v2 = 0xD000000000000022;
    swift_beginAccess();
    *(a1 + 16) = 0xD000000000000022;
    *(a1 + 24) = 0x800000024873C700;
  }

  return v2;
}

uint64_t sub_248704704()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_248704760()
{
  v0 = sub_248730DF0();
  __swift_allocate_value_buffer(v0, qword_27EEA6630);
  v1 = __swift_project_value_buffer(v0, qword_27EEA6630);
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28150F088);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_24870485C()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    *(v0 + 60) = 1;
    v1 = *(v0 + 56);
    if (flock(v1, 12))
    {
      if (qword_27EEA59B8 != -1)
      {
        swift_once();
      }

      v2 = sub_248730DF0();
      __swift_project_value_buffer(v2, qword_27EEA6630);

      v3 = sub_248730DD0();
      v4 = sub_2487313D0();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v24 = v6;
        *v5 = 136315650;
        v7 = sub_248730840();
        v9 = sub_2486D3010(v7, v8, &v24);

        *(v5 + 4) = v9;
        *(v5 + 12) = 2080;
        v11 = MEMORY[0x24C1D6D90](v10);
        if (!strerror(v11))
        {
          __break(1u);
          return;
        }

        v12 = sub_248731130();
        v14 = sub_2486D3010(v12, v13, &v24);

        *(v5 + 14) = v14;
        *(v5 + 22) = 1024;
        *(v5 + 24) = MEMORY[0x24C1D6D90](v15);
        _os_log_impl(&dword_2486BF000, v3, v4, "Failed to unlock file: %s, %s, %d", v5, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x24C1D8100](v6, -1, -1);
        MEMORY[0x24C1D8100](v5, -1, -1);
      }
    }

    close(v1);
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v16 = sub_248730DF0();
    __swift_project_value_buffer(v16, qword_27EEA6630);
    swift_retain_n();
    v17 = sub_248730DD0();
    v18 = sub_2487313C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136315394;
      v21 = sub_248730840();
      v23 = sub_2486D3010(v21, v22, &v24);

      *(v19 + 4) = v23;
      *(v19 + 12) = 1024;

      *(v19 + 14) = v1;

      _os_log_impl(&dword_2486BF000, v17, v18, "Released the file lock for path %s, fd=%d", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1D8100](v20, -1, -1);
      MEMORY[0x24C1D8100](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_248704B98()
{
  if ((*(v0 + 60) & 1) == 0)
  {
    sub_24870485C();
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundationP33_F4B432E80DB2346BBC23321592F0992C24FileLockContextExclusive_path;
  v2 = sub_248730850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FileLockContextExclusive(uint64_t a1)
{
  result = qword_27EEA6650;
  if (!qword_27EEA6650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248704C9C(uint64_t a1)
{
  result = sub_248730850();
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

uint64_t sub_248704D50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6668, &qword_248735520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_248704DB8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_248704DC8(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_248704DD8()
{
  v1 = *(sub_248730850() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_2487039C8(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), v5 + 1, *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_248704EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_248704EF4()
{
  result = qword_27EEA6680;
  if (!qword_27EEA6680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6678, &qword_248735528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6680);
  }

  return result;
}

void sub_248704F58(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = [objc_opt_self() defaultManager];
  sub_248730820();
  v10 = sub_248730800();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v35[0] = 0;
  v12 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:v35];

  v13 = v35[0];
  if (v12)
  {

    v14 = v13;
  }

  else
  {
    v33 = v35[0];
    v15 = v35[0];
    v16 = sub_2487307E0();

    swift_willThrow();
    if (qword_27EEA59B8 != -1)
    {
      swift_once();
    }

    v17 = sub_248730DF0();
    __swift_project_value_buffer(v17, qword_27EEA6630);
    (*(v3 + 16))(v6, a1, v2);
    v18 = v16;
    v19 = sub_248730DD0();
    v20 = sub_2487313D0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v21 = 136315394;
      v32 = v20;
      sub_248730820();
      sub_248704EAC(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v22 = sub_248731850();
      v24 = v23;
      v11(v8, v2);
      v11(v6, v2);
      v25 = sub_2486D3010(v22, v24, v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v34 = v16;
      v26 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
      v27 = sub_248731040();
      v29 = sub_2486D3010(v27, v28, v35);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_2486BF000, v19, v32, "Cannot create the file lock directory: %s, error=%s", v21, 0x16u);
      v30 = v33;
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v30, -1, -1);
      MEMORY[0x24C1D8100](v21, -1, -1);
    }

    else
    {

      v11(v6, v2);
    }
  }
}

id static ConversationStreamFactory.create(type:)(uint64_t a1)
{
  if (a1)
  {
    v1 = type metadata accessor for ConversationStreamAIMLIS();
  }

  else
  {
    v1 = type metadata accessor for ConversationStreamPLL();
  }

  v2 = objc_allocWithZone(v1);

  return [v2 init];
}

id ConversationStreamPLL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24870566C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_2487056D8, 0, 0);
}

uint64_t sub_2487056D8()
{
  v1 = *(v0 + 16);
  type metadata accessor for Conversation();
  v2 = sub_248731230();
  (v1)[2](v1, v2, 0);

  _Block_release(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2487057BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for StreamsBookmark();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v8 = 0x4C4C50706D6574;
  *(v8 + 1) = 0xE700000000000000;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v5;
  *&v7[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v4);
  v17.receiver = v7;
  v17.super_class = v6;
  v9 = objc_msgSendSuper2(&v17, sel_init);
  if (a1)
  {
    v10 = a1;

    v9 = v10;
  }

  sub_248730CF0();
  sub_248730CE0();
  sub_248730CD0();

  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  AsyncBookmarkingSignalReader.conversationStreamsBookmarked(startBookmark:)(v9, v11, v12, a2);

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_2487058F0(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v2[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v2[59] = swift_task_alloc();
  v3 = sub_2487309B0();
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  v4 = sub_248730C90();
  v2[63] = v4;
  v2[64] = *(v4 - 8);
  v2[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6690, &qword_248735578);
  v2[66] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6698, &qword_248735580);
  v2[67] = v5;
  v2[68] = *(v5 - 8);
  v2[69] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66A0, &unk_248735588);
  v2[70] = v6;
  v2[71] = *(v6 - 8);
  v2[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248705B84, 0, 0);
}

uint64_t sub_248705B84()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[56];
  v5 = MEMORY[0x277D84F90];
  v0[50] = MEMORY[0x277D84F90];
  sub_2487057BC(v4, v1);
  sub_248730D00();
  (*(v2 + 8))(v1, v3);
  v0[74] = v5;
  v0[73] = v5;
  v6 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588, MEMORY[0x277D5FB40]);
  v7 = swift_task_alloc();
  v0[75] = v7;
  *v7 = v0;
  v7[1] = sub_248705CC4;
  v8 = v0[70];
  v9 = v0[66];

  return MEMORY[0x282200308](v9, v8, v6);
}

uint64_t sub_248705CC4()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_248706844;
  }

  else
  {
    v2 = sub_248705DD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248705DD8()
{
  v1 = *(v0 + 528);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B0, qword_248735598);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v6 = *(v0 + 520);
    v7 = *(v0 + 504);
    v8 = *(v0 + 512);

    (*(v8 + 32))(v6, v1, v7);
    v9 = MEMORY[0x277D84F90];
    *(v0 + 416) = MEMORY[0x277D84F90];
    sub_248730C80();
    sub_248731700();

    sub_2487317E0();
    v10 = *(v0 + 424);
    v11 = off_278F52000;
    if (v10)
    {
      v12 = sub_248730D50();
      while (1)
      {
        *(v0 + 40) = v12;
        *(v0 + 16) = v10;
        sub_2486C5B68(v0 + 16, v0 + 48);

        if (swift_dynamicCast())
        {
          break;
        }

        sub_2486C5B68(v0 + 16, v0 + 80);
        sub_248730C70();
        if (swift_dynamicCast())
        {
          v26 = *(v0 + 488);
          v90 = *(v0 + 496);
          v94 = *(v0 + 480);
          v27 = *(v0 + 440);
          v28 = type metadata accessor for ConversationTurnAIMLIS(0);
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = v27;
          *(v0 + 368) = v29;
          *(v0 + 376) = v28;
          v30 = v11[335];
          v31 = v27;
          v32 = objc_msgSendSuper2((v0 + 368), v30);
          v87 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
          v89 = v32;
          v33 = *&v32[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
          v34 = v32;
          v35 = v33;
          sub_248730C60();

          v36 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
          swift_beginAccess();
          (*(v26 + 40))(&v34[v36], v90, v94);
          swift_endAccess();

          sub_2486CF4C4(0, &qword_27EEA5E68, 0x277D5A928);
          v95 = v31;
          v37 = sub_248730B70();
          if (v37)
          {
            v38 = v37;
            v39 = sub_248730AE0();
            if (!v39)
            {
              goto LABEL_64;
            }

            v42 = v39;
            v43 = *(v0 + 488);
            v91 = *(v0 + 480);
            v44 = *(v0 + 464);
            sub_248730B10();

            (*(v43 + 56))(v44, 0, 1, v91);
            v45 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
            swift_beginAccess();
            sub_24870CC00(v44, &v34[v45]);
            swift_endAccess();
          }

          v46 = *&v89[v87];
          v47 = v34;
          v48 = v46;
          sub_248730BD0();
          v50 = v49;

          v51 = &v47[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
          swift_beginAccess();
          *v51 = v50;
          v51[8] = 0;
          v52 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          *&v47[v52] = 1;

          sub_2487133FC();
          v53 = v95;
          goto LABEL_20;
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_10:
        sub_2487317E0();
        v10 = *(v0 + 424);
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      v13 = *(v0 + 496);
      v92 = *(v0 + 488);
      v86 = *(v0 + 480);
      v88 = *(v0 + 472);
      v14 = *(v0 + 432);
      v15 = type metadata accessor for ConversationTurnPLL(0);
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v14;
      *(v0 + 384) = v16;
      *(v0 + 392) = v15;
      v17 = v11[335];

      v18 = objc_msgSendSuper2((v0 + 384), v17);

      sub_248730D40();

      v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      v20 = *(v92 + 40);
      v93 = v18;
      v20(&v18[v19], v13, v86);
      swift_endAccess();

      sub_248730D20();

      v21 = sub_248730970();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 48))(v88, 1, v21);
      v24 = *(v0 + 472);
      if (v23 == 1)
      {
        sub_2486C7940(*(v0 + 472), &qword_27EEA6240, &unk_248733390);
        v25 = 0;
      }

      else
      {
        sub_248730900();
        v25 = v54;
        (*(v22 + 8))(v24, v21);
      }

      v55 = v23 == 1;
      v53 = v93;
      v56 = &v93[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
      swift_beginAccess();
      *v56 = v25;
      v56[8] = v55;
      v57 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
      swift_beginAccess();
      *&v93[v57] = 0;
      sub_24871082C();

      v47 = v93;
LABEL_20:

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v58 = v47;
      MEMORY[0x24C1D71A0]();
      v11 = off_278F52000;
      if (*((*(v0 + 416) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 416) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
        v11 = off_278F52000;
      }

      sub_2487312A0();

      v9 = *(v0 + 416);
      goto LABEL_10;
    }

LABEL_23:

    v59 = type metadata accessor for Conversation();
    v60 = objc_allocWithZone(v59);
    *&v60[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = v9;
    *(v0 + 352) = v60;
    *(v0 + 360) = v59;
    v61 = objc_msgSendSuper2((v0 + 352), v11[335]);
    v62 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns;
    v63 = *&v61[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns];
    if (v63 >> 62)
    {
LABEL_50:
      if (sub_248731790())
      {
LABEL_25:
        v40 = *&v61[v62];
        if (v40 >> 62)
        {
          v39 = sub_248731790();
          v40 = *&v61[v62];
          if (v39 != 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v39 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v39 != 1)
          {
            goto LABEL_32;
          }
        }

        if ((v40 & 0xC000000000000001) != 0)
        {
          goto LABEL_62;
        }

        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          for (i = *(v40 + 32); ; i = MEMORY[0x24C1D7600](0))
          {
            v65 = i;
            v66 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v67 = *&v65[v66];

            if (v67 != 2)
            {
              goto LABEL_51;
            }

            v40 = *&v61[v62];
LABEL_32:
            if ((v40 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v68 = *(v40 + 32);
              goto LABEL_35;
            }

            __break(1u);
LABEL_62:
            ;
          }

          v68 = MEMORY[0x24C1D7600](0);
LABEL_35:
          v69 = v68;
          v70 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          v71 = *&v69[v70];

          v72 = *&v61[v62];
          if (v72 >> 62)
          {
            v62 = sub_248731790();
          }

          else
          {
            v62 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v73 = 0;
          while (v62 != v73)
          {
            if ((v72 & 0xC000000000000001) != 0)
            {
              v74 = MEMORY[0x24C1D7600](v73, v72);
            }

            else
            {
              if (v73 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_49;
              }

              v74 = *(v72 + 8 * v73 + 32);
            }

            v75 = v74;
            if (__OFADD__(v73, 1))
            {
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v76 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v77 = *&v75[v76];

            if (v77 != 2)
            {
              ++v73;
              if (v77 == v71)
              {
                continue;
              }
            }

            (*(*(v0 + 512) + 8))(*(v0 + 520), *(v0 + 504));

            v78 = *(v0 + 592);
            v79 = *(v0 + 584);
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        __break(1u);
LABEL_64:
        __break(1u);
        return MEMORY[0x282200308](v39, v40, v41);
      }
    }

    else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_51:
    v80 = v61;
    MEMORY[0x24C1D71A0]();
    if (*((*(v0 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 400) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    v81 = *(v0 + 520);
    v82 = *(v0 + 504);
    v83 = *(v0 + 512);
    sub_2487312A0();

    (*(v83 + 8))(v81, v82);
    v79 = *(v0 + 400);
    v78 = v79;
LABEL_54:
    *(v0 + 592) = v78;
    *(v0 + 584) = v79;
    v84 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588, MEMORY[0x277D5FB40]);
    v85 = swift_task_alloc();
    *(v0 + 600) = v85;
    *v85 = v0;
    v85[1] = sub_248705CC4;
    v40 = *(v0 + 560);
    v39 = *(v0 + 528);
    v41 = v84;

    return MEMORY[0x282200308](v39, v40, v41);
  }

  (*(*(v0 + 568) + 8))(*(v0 + 576), *(v0 + 560));

  v3 = *(v0 + 8);
  v4 = *(v0 + 584);

  return v3(v4);
}

uint64_t sub_248706844()
{
  *(v0 + 408) = *(v0 + 608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487068E0, 0, 0);
}

uint64_t sub_2487068E0()
{
  (*(v0[71] + 8))(v0[72], v0[70]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_248706B48(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_248706C08;

  return sub_2487058F0(a1);
}

uint64_t sub_248706C08(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (v3)
  {
    v8 = sub_2487307D0();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for Conversation();
    v11 = sub_248731230();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_248706DB4(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3[81] = swift_task_alloc();
  v4 = sub_2487309B0();
  v3[82] = v4;
  v3[83] = *(v4 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v5 = sub_248730C90();
  v3[86] = v5;
  v3[87] = *(v5 - 8);
  v3[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6690, &qword_248735578);
  v3[89] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6698, &qword_248735580);
  v3[90] = v6;
  v3[91] = *(v6 - 8);
  v3[92] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66A0, &unk_248735588);
  v3[93] = v7;
  v3[94] = *(v7 - 8);
  v3[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248707080, 0, 0);
}

uint64_t sub_248707080()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[74];
  v5 = MEMORY[0x277D84F90];
  v0[73] = MEMORY[0x277D84F90];
  sub_2487057BC(v4, v1);
  sub_248730D00();
  (*(v2 + 8))(v1, v3);
  v0[97] = v5;
  v0[96] = v5;
  v6 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588, MEMORY[0x277D5FB40]);
  v7 = swift_task_alloc();
  v0[98] = v7;
  *v7 = v0;
  v7[1] = sub_2487071C0;
  v8 = v0[93];
  v9 = v0[89];

  return MEMORY[0x282200308](v9, v8, v6);
}

uint64_t sub_2487071C0()
{
  *(*v1 + 792) = v0;

  if (v0)
  {
    v2 = sub_248708108;
  }

  else
  {
    v2 = sub_2487072D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2487072D4()
{
  v1 = *(v0 + 712);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B0, qword_248735598);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));

    v3 = *(v0 + 8);
    v4 = *(v0 + 768);

    return v3(v4);
  }

  v6 = (v0 + 560);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v9 = *(v0 + 688);

  (*(v8 + 32))(v7, v1, v9);
  v10 = MEMORY[0x277D84F90];
  *(v0 + 568) = MEMORY[0x277D84F90];
  sub_248730C80();
  sub_248731700();

  sub_2487317E0();
  v11 = *(v0 + 560);
  if (!v11)
  {
LABEL_68:

    type metadata accessor for FeaturizedConversation();
    swift_allocObject();
    v103 = *(FeaturizedConversation.init(turns:)(v10) + 40);
    if (v103 >> 62)
    {
LABEL_79:
      if (sub_248731790())
      {
LABEL_70:

        MEMORY[0x24C1D71A0](v104);
        if (*((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }
    }

    else if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_70;
    }

    (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));

    v109 = *(v0 + 768);
    goto LABEL_81;
  }

  v129 = v0 + 536;
  v12 = (v0 + 544);
  v115 = (v0 + 568);
  v13 = sub_248730D50();
  v117 = (v0 + 560);
  v116 = (v0 + 544);
  v114 = v13;
  v131 = v0;
  while (1)
  {
    while (1)
    {
      *(v0 + 248) = v13;
      *(v0 + 224) = v11;
      sub_2486C5B68(v0 + 224, v0 + 256);

      if (swift_dynamicCast())
      {
        break;
      }

      sub_2486C5B68(v0 + 224, v0 + 320);
      sub_248730C70();
      if (swift_dynamicCast())
      {
        v21 = *v12;
        v28 = objc_allocWithZone(type metadata accessor for ConversationTurnAIMLIS(0));
        v119 = sub_248713D24(v21);
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 224));
      sub_2487317E0();
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_68;
      }
    }

    v14 = *(v0 + 680);
    v15 = *(v0 + 664);
    v16 = *(v0 + 656);
    v17 = *(v0 + 648);
    v18 = *(v0 + 552);
    v19 = type metadata accessor for ConversationTurnPLL(0);
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v18;
    *(v0 + 520) = v20;
    *(v0 + 528) = v19;

    v21 = objc_msgSendSuper2((v0 + 520), sel_init);

    sub_248730D40();

    v22 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v15 + 40))(&v21[v22], v14, v16);
    swift_endAccess();
    v0 = v131;

    sub_248730D20();

    v23 = sub_248730970();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 48))(v17, 1, v23);
    v26 = *(v131 + 648);
    if (v25 == 1)
    {
      sub_2486C7940(*(v131 + 648), &qword_27EEA6240, &unk_248733390);
      v27 = 0;
    }

    else
    {
      sub_248730900();
      v27 = v29;
      (*(v24 + 8))(v26, v23);
    }

    v30 = &v21[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    *v30 = v27;
    v30[8] = v25 == 1;
    v31 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
    swift_beginAccess();
    *&v21[v31] = 0;
    sub_24871082C();

    v119 = v21;
LABEL_16:

    v32 = *(v0 + 600);
    __swift_destroy_boxed_opaque_existential_0((v0 + 224));
    v130 = sub_2486D3554(MEMORY[0x277D84F90]);
    if (!(v32 >> 62))
    {
      v33 = *((*(v0 + 600) & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        break;
      }

      goto LABEL_58;
    }

    v33 = sub_248731790();
    if (v33)
    {
      break;
    }

LABEL_58:
    v76 = *(v0 + 672);
    v77 = *(v0 + 664);
    v78 = *(v0 + 656);
    v79 = *(v0 + 640);
    v80 = &v119[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
    swift_beginAccess();
    v81 = *v80;
    v128 = v80[8];
    v82 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (*(v77 + 16))(v76, &v119[v82], v78);
    v83 = *(v77 + 56);
    v83(v79, 1, 1, v78);
    if (v130[2] && (v84 = sub_2486C94CC(0x7165722E4843524FLL, 0xEE00644974736575), (v85 & 1) != 0))
    {
      v86 = *(v0 + 656);
      v87 = *(v0 + 632);
      sub_2486C5B68(v130[7] + 32 * v84, v0 + 192);
      v88 = swift_dynamicCast() ^ 1;
      v89 = v87;
      v90 = v86;
    }

    else
    {
      v90 = *(v0 + 656);
      v89 = *(v0 + 632);
      v88 = 1;
    }

    v83(v89, v88, 1, v90);
    v91 = *(v0 + 672);
    v92 = *(v131 + 664);
    v124 = *(v131 + 656);
    v93 = *(v131 + 640);
    v94 = *(v131 + 632);
    v126 = v94;
    v95 = *(v131 + 624);
    v96 = *(v131 + 616);
    v97 = sub_248730980();
    v122 = v98;
    sub_2486D8A6C(v94, v95, &qword_27EEA5D90, &qword_2487333C0);
    sub_2486D8A6C(v93, v96, &qword_27EEA5D90, &qword_2487333C0);
    type metadata accessor for FeaturizedConversationTurn(0);
    v99 = swift_allocObject();
    *(v99 + 16) = 1;
    v100 = sub_2486D3554(MEMORY[0x277D84F90]);
    sub_2486C7940(v93, &qword_27EEA5D90, &qword_2487333C0);
    (*(v92 + 8))(v91, v124);
    v0 = v131;
    *(v99 + 24) = v100;
    *(v99 + 40) = v97;
    *(v99 + 48) = v122;
    if (v128)
    {
      v101 = -1.0;
    }

    else
    {
      v101 = v81;
    }

    *(v99 + 32) = v101;
    sub_2486C98BC(v95, v99 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_requestID);
    sub_2486C98BC(v96, v99 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation26FeaturizedConversationTurn_clockId);
    swift_beginAccess();
    *(v99 + 24) = v130;

    sub_2486C7940(v126, &qword_27EEA5D90, &qword_2487333C0);

    MEMORY[0x24C1D71A0](v102);
    if (*((*(v131 + 568) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v131 + 568) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();

    v10 = *v115;
    v6 = v117;
    sub_2487317E0();
    v11 = *v117;
    v12 = v116;
    v13 = v114;
    if (!*v117)
    {
      goto LABEL_68;
    }
  }

  v34 = 0;
  v118 = v33;
  while (1)
  {
    v35 = *(v0 + 600);
    if ((v35 & 0xC000000000000001) == 0)
    {
      break;
    }

    v36 = MEMORY[0x24C1D7600](v34);
LABEL_25:
    v37 = v36;
    v38 = __OFADD__(v34, 1);
    v39 = v34 + 1;
    if (v38)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v123 = v39;
    (*((*MEMORY[0x277D85000] & *v36) + 0x70))(v119);
    v40 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25IntraTurnFeatureExtractor_features;
    swift_beginAccess();
    v120 = v40;
    v121 = v37;
    v41 = *&v37[v40];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v129 = v130;
    v43 = v41 + 64;
    v44 = -1 << *(v41 + 32);
    if (-v44 < 64)
    {
      v45 = ~(-1 << -v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v41 + 64);
    v47 = (63 - v44) >> 6;
    v125 = v41;

    v48 = 0;
    for (i = v47; ; v47 = i)
    {
      if (!v46)
      {
        if (v47 <= v48 + 1)
        {
          v51 = v48 + 1;
        }

        else
        {
          v51 = v47;
        }

        v52 = v51 - 1;
        while (1)
        {
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v50 >= v47)
          {
            v46 = 0;
            *(v0 + 128) = 0u;
            *(v0 + 144) = 0u;
            v48 = v52;
            *(v0 + 112) = 0u;
            goto LABEL_43;
          }

          v46 = *(v43 + 8 * v50);
          ++v48;
          if (v46)
          {
            v48 = v50;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v50 = v48;
LABEL_42:
      v53 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v54 = v53 | (v50 << 6);
      v55 = (*(v125 + 48) + 16 * v54);
      v57 = *v55;
      v56 = v55[1];
      sub_2486C5B68(*(v125 + 56) + 32 * v54, v0 + 288);
      *(v0 + 112) = v57;
      *(v0 + 120) = v56;
      sub_2486C79A0((v0 + 288), (v0 + 128));

LABEL_43:
      v58 = *(v0 + 128);
      *(v0 + 64) = *(v0 + 112);
      *(v0 + 80) = v58;
      *(v0 + 96) = *(v0 + 144);
      v59 = *(v0 + 72);
      if (!v59)
      {
        break;
      }

      v60 = *(v0 + 64);
      sub_2486C5B68(v0 + 80, v0 + 32);
      *(v0 + 16) = v60;
      *(v0 + 24) = v59;

      sub_2486C7940(v0 + 64, &qword_27EEA6328, &qword_248734838);
      v61 = *(v0 + 24);
      if (!v61)
      {
        goto LABEL_20;
      }

      v62 = isUniquelyReferenced_nonNull_native;
      v63 = *(v0 + 16);
      sub_2486C79A0((v0 + 32), (v0 + 160));
      v65 = sub_2486C94CC(v63, v61);
      v66 = v130[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_76;
      }

      v69 = v64;
      if (v130[3] >= v68)
      {
        if (v62)
        {
          if (v64)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_2486E62F4();
          if (v69)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_2486E45C8(v68, v62 & 1);
        v70 = sub_2486C94CC(v63, v61);
        if ((v69 & 1) != (v71 & 1))
        {

          return sub_2487318B0();
        }

        v65 = v70;
        if (v69)
        {
LABEL_30:

          v130 = *v129;
          v49 = (*(*v129 + 56) + 32 * v65);
          __swift_destroy_boxed_opaque_existential_0(v49);
          sub_2486C79A0((v131 + 160), v49);
          goto LABEL_31;
        }
      }

      v72 = *v129;
      *(*v129 + 8 * (v65 >> 6) + 64) |= 1 << v65;
      v73 = (v72[6] + 16 * v65);
      *v73 = v63;
      v73[1] = v61;
      sub_2486C79A0((v131 + 160), (v72[7] + 32 * v65));
      v74 = v72[2];
      v38 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v38)
      {
        goto LABEL_77;
      }

      v130 = v72;
      v72[2] = v75;
LABEL_31:
      isUniquelyReferenced_nonNull_native = 1;
      v0 = v131;
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 16) = 0u;
LABEL_20:

    *&v121[v120] = MEMORY[0x277D84F98];

    v34 = v123;
    if (v123 == v118)
    {
      goto LABEL_58;
    }
  }

  if (v34 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 8 * v34 + 32);
    goto LABEL_25;
  }

  __break(1u);
LABEL_85:
  sub_248731260();
LABEL_71:
  v105 = *(v0 + 704);
  v106 = *(v0 + 696);
  v107 = *(v0 + 688);
  sub_2487312A0();

  (*(v106 + 8))(v105, v107);
  v108 = (v0 + 584);
  v109 = vld1q_dup_f64(v108);
LABEL_81:
  *(v0 + 768) = v109;
  v110 = sub_24870DDB0(&qword_27EEA66A8, &qword_27EEA66A0, &unk_248735588, MEMORY[0x277D5FB40]);
  v111 = swift_task_alloc();
  *(v0 + 784) = v111;
  *v111 = v0;
  v111[1] = sub_2487071C0;
  v112 = *(v0 + 744);
  v113 = *(v0 + 712);

  return MEMORY[0x282200308](v113, v112, v110);
}

uint64_t sub_248708108()
{
  *(v0 + 576) = *(v0 + 792);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2487081A4, 0, 0);
}

uint64_t sub_2487081A4()
{
  (*(v0[94] + 8))(v0[95], v0[93]);

  v1 = v0[1];

  return v1();
}

id sub_2487082F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_248708344(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_248708388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66F0, &qword_248735768);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248708458, 0, 0);
}

uint64_t sub_248708458()
{
  v1 = *(v0 + 80);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_2486D3BA8(MEMORY[0x277D84F90]);
  v4 = type metadata accessor for StreamsBookmark();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  *v6 = 0x4C4D4941706D6574;
  *(v6 + 1) = 0xEA00000000005349;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v3;
  *&v5[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v2);
  *(v0 + 56) = v5;
  *(v0 + 64) = v4;
  v7 = objc_msgSendSuper2((v0 + 56), sel_init);
  if (v1)
  {
    v8 = *(v0 + 80);

    v7 = v8;
  }

  *(v0 + 120) = v7;
  v9 = *(v0 + 88);
  v10 = sub_2486F85E4(1);
  v12 = v11;
  v13 = *(v0 + 88);
  if (v9)
  {
    v14 = *(v0 + 88);
  }

  else
  {
    sub_248730C20();
    v14 = sub_248730BE0();
  }

  *(v0 + 128) = v14;
  sub_248730B50();
  v15 = v13;
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_248708630;

  return MEMORY[0x2821377A8](v0 + 16, v14, v10, v12 & 1, 0, 1, 0, 1);
}

uint64_t sub_248708630()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_248708868;
  }

  else
  {
    v2 = sub_248708744;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248708744()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_248730B20();
  sub_24870DDB0(&qword_27EEA66F8, &qword_27EEA66F0, &qword_248735768, MEMORY[0x277CF1760]);
  sub_248730AB0();

  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_248708868()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2487088DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  v1[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v1[58] = swift_task_alloc();
  v3 = sub_2487309B0();
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66B8, &qword_2487355B8);
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v5 = swift_task_alloc();
  v1[64] = v5;
  v1[50] = MEMORY[0x277D84F90];
  v6 = swift_task_alloc();
  v1[65] = v6;
  *v6 = v1;
  v6[1] = sub_248708AC0;

  return sub_248708388(v5, a1, 0);
}

uint64_t sub_248708AC0()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_248709980;
  }

  else
  {
    v2 = sub_248708BD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248708BD4()
{
  v0[51] = sub_248730C40();
  v1 = MEMORY[0x277D84F90];
  v0[68] = MEMORY[0x277D84F90];
  v0[67] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
  v3 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
  v4 = swift_task_alloc();
  v0[69] = v4;
  *v4 = v0;
  v4[1] = sub_248708CEC;

  return MEMORY[0x282200308](v0 + 52, v2, v3);
}

uint64_t sub_248708CEC()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_248709830;
  }

  else
  {
    v2 = sub_248708E00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_248708E24()
{
  v2 = *(v1 + 568);
  if (v2)
  {
    *(v1 + 432) = MEMORY[0x277D84F90];
    v3 = sub_248730C30();
    v4 = v3;
    if (v3 >> 62)
    {
      v5 = sub_248731790();
      v87 = v2;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v87 = v2;
      if (v5)
      {
LABEL_4:
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = MEMORY[0x277D84F90];
          v91 = v4 & 0xC000000000000001;
          v88 = v5;
          v89 = v4;
          while (1)
          {
            v8 = v91 ? MEMORY[0x24C1D7600](v6, v4) : *(v4 + 8 * v6 + 32);
            v9 = v8;
            *(v1 + 40) = sub_248730C70();
            *(v1 + 16) = v9;
            sub_2486C5B68(v1 + 16, v1 + 48);
            sub_248730D50();
            v10 = v9;
            if (swift_dynamicCast())
            {
              break;
            }

            sub_2486C5B68(v1 + 16, v1 + 80);
            if (swift_dynamicCast())
            {
              v92 = v10;
              v26 = *(v1 + 480);
              v25 = *(v1 + 488);
              v27 = *(v1 + 472);
              v28 = *(v1 + 448);
              v29 = type metadata accessor for ConversationTurnAIMLIS(0);
              v30 = objc_allocWithZone(v29);
              *&v30[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn] = v28;
              *(v1 + 368) = v30;
              *(v1 + 376) = v29;
              v18 = v28;
              v31 = objc_msgSendSuper2((v1 + 368), sel_init, v87);
              v32 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn;
              v33 = *&v31[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation22ConversationTurnAIMLIS_aimlisTurn];
              v34 = v31;
              v35 = v33;
              sub_248730C60();

              v36 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
              swift_beginAccess();
              (*(v26 + 40))(&v34[v36], v25, v27);
              swift_endAccess();

              sub_2486CF4C4(0, &qword_27EEA5E68, 0x277D5A928);
              v37 = sub_248730B70();
              if (v37)
              {
                v38 = v37;
                v39 = v32;
                v40 = sub_248730AE0();
                if (!v40)
                {
                  goto LABEL_71;
                }

                v43 = v40;
                v44 = *(v1 + 480);
                v90 = *(v1 + 472);
                v45 = *(v1 + 456);
                sub_248730B10();

                (*(v44 + 56))(v45, 0, 1, v90);
                v46 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_clockID;
                swift_beginAccess();
                sub_24870CC00(v45, &v34[v46]);
                swift_endAccess();
                v32 = v39;
              }

              v47 = *&v31[v32];
              v48 = v34;
              v49 = v47;
              sub_248730BD0();
              v51 = v50;

              v52 = &v48[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
              swift_beginAccess();
              *v52 = v51;
              v52[8] = 0;
              v53 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
              swift_beginAccess();
              *&v48[v53] = 1;

              sub_2487133FC();
              goto LABEL_21;
            }

            __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_7:
            if (v5 == ++v6)
            {
              goto LABEL_29;
            }
          }

          v92 = v10;
          v12 = *(v1 + 480);
          v11 = *(v1 + 488);
          v14 = *(v1 + 464);
          v13 = *(v1 + 472);
          v15 = *(v1 + 440);
          v16 = type metadata accessor for ConversationTurnPLL(0);
          v17 = objc_allocWithZone(v16);
          *&v17[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19ConversationTurnPLL_pllTurn] = v15;
          *(v1 + 384) = v17;
          *(v1 + 392) = v16;

          v18 = objc_msgSendSuper2((v1 + 384), sel_init);

          sub_248730D40();

          v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
          swift_beginAccess();
          (*(v12 + 40))(&v18[v19], v11, v13);
          swift_endAccess();

          sub_248730D20();

          v20 = sub_248730970();
          v21 = *(v20 - 8);
          v22 = (*(v21 + 48))(v14, 1, v20);
          v23 = *(v1 + 464);
          if (v22 == 1)
          {
            sub_2486C7940(*(v1 + 464), &qword_27EEA6240, &unk_248733390);
            v24 = 0;
          }

          else
          {
            sub_248730900();
            v24 = v54;
            (*(v21 + 8))(v23, v20);
          }

          v55 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_timestamp];
          swift_beginAccess();
          *v55 = v24;
          v55[8] = v22 == 1;
          v56 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          *&v18[v56] = 0;
          sub_24871082C();

          v48 = v18;
LABEL_21:
          v4 = v89;

          __swift_destroy_boxed_opaque_existential_0((v1 + 16));
          v57 = v48;
          MEMORY[0x24C1D71A0]();
          if (*((*(v1 + 432) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 432) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          sub_2487312A0();

          v7 = *(v1 + 432);
          v5 = v88;
          goto LABEL_7;
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    v7 = MEMORY[0x277D84F90];
LABEL_29:

    v64 = type metadata accessor for Conversation();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns] = v7;
    *(v1 + 352) = v65;
    *(v1 + 360) = v64;
    v2 = objc_msgSendSuper2((v1 + 352), sel_init);
    v0 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns;
    v66 = *&v2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation12Conversation_turns];
    if (v66 >> 62)
    {
LABEL_56:
      if (sub_248731790())
      {
LABEL_31:
        v41 = *&v2[v0];
        if (!(v41 >> 62))
        {
          v40 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40 != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_33;
        }

LABEL_64:
        v40 = sub_248731790();
        v41 = *&v2[v0];
        if (v40 != 1)
        {
          goto LABEL_38;
        }

LABEL_33:
        if ((v41 & 0xC000000000000001) != 0)
        {
          goto LABEL_69;
        }

        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          for (i = *(v41 + 32); ; i = MEMORY[0x24C1D7600](0))
          {
            v68 = i;
            v69 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v70 = *&v68[v69];

            if (v70 != 2)
            {
              goto LABEL_57;
            }

            v41 = *&v2[v0];
LABEL_38:
            if ((v41 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v71 = *(v41 + 32);
              goto LABEL_41;
            }

            __break(1u);
LABEL_69:
            ;
          }

          v71 = MEMORY[0x24C1D7600](0);
LABEL_41:
          v72 = v71;
          v73 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
          swift_beginAccess();
          v74 = *&v72[v73];

          v0 = *&v2[v0];
          if (v0 >> 62)
          {
            v75 = sub_248731790();
          }

          else
          {
            v75 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v76 = 0;
          while (v75 != v76)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v77 = MEMORY[0x24C1D7600](v76, v0);
            }

            else
            {
              if (v76 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v77 = *(v0 + 8 * v76 + 32);
            }

            v78 = v77;
            if (__OFADD__(v76, 1))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v79 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_conversationTurnType;
            swift_beginAccess();
            v80 = *&v78[v79];

            if (v80 != 2)
            {
              ++v76;
              if (v80 == v74)
              {
                continue;
              }
            }

            v81 = *(v1 + 544);
            v82 = *(v1 + 536);
            goto LABEL_60;
          }

          goto LABEL_57;
        }

        __break(1u);
LABEL_71:
        __break(1u);
        return MEMORY[0x282200308](v40, v41, v42);
      }
    }

    else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_57:
    v83 = v2;
    MEMORY[0x24C1D71A0]();
    if (*((*(v1 + 400) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 400) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();

    v82 = *(v1 + 400);
    v81 = v82;
LABEL_60:
    *(v1 + 544) = v81;
    *(v1 + 536) = v82;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA66C0, qword_2487355C8);
    v85 = sub_24870DDB0(&qword_27EEA66C8, &qword_27EEA66C0, qword_2487355C8, MEMORY[0x277CE4870]);
    v86 = swift_task_alloc();
    *(v1 + 552) = v86;
    *v86 = v1;
    v86[1] = sub_248708CEC;
    v40 = v1 + 416;
    v41 = v84;
    v42 = v85;

    return MEMORY[0x282200308](v40, v41, v42);
  }

  v59 = *(v1 + 504);
  v58 = *(v1 + 512);
  v60 = *(v1 + 496);

  (*(v59 + 8))(v58, v60);

  v61 = *(v1 + 8);
  v62 = *(v1 + 536);

  return v61(v62);
}