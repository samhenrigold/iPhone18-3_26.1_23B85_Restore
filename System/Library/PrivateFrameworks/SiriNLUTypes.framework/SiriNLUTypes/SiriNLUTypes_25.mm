uint64_t sub_1C8A0EEF4()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  result = sub_1C8A0F008(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A0F008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v46 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = v37 - v6;
  v38 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  MEMORY[0x1EEE9AC00](v38);
  v37[1] = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v37 - v9;
  v43 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v43);
  v41 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v40 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v37 - v15;
  v17 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v39 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  swift_beginAccess();
  v44 = a1;
  sub_1C87867A0(a1 + v20, v16, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B64A8, &unk_1C8BE7670);
    v21 = v45;
  }

  else
  {
    sub_1C8A0E760();
    sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    v22 = v45;
    sub_1C8BD4E2C();
    v21 = v22;
    result = sub_1C8A0E808();
    if (v22)
    {
      return result;
    }
  }

  v24 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v25 = v44;
  swift_beginAccess();
  sub_1C87867A0(v25 + v24, v10, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (__swift_getEnumTagSinglePayload(v10, 1, v43) == 1)
  {
    sub_1C8778ED8(v10, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    sub_1C8A0E760();
    sub_1C8A0E85C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    result = sub_1C8A0E808();
    if (v21)
    {
      return result;
    }
  }

  v26 = v25 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  swift_beginAccess();
  v27 = v42;
  if ((*(v26 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v21))
  {
    v28 = v25 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
    swift_beginAccess();
    if ((*(v28 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v21))
    {
      v29 = v25 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
      swift_beginAccess();
      if ((*(v29 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v21))
      {
        v30 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
        swift_beginAccess();
        v31 = v25 + v30;
        v32 = v40;
        sub_1C87867A0(v31, v40, &qword_1EC2B64A8, &unk_1C8BE7670);
        if (__swift_getEnumTagSinglePayload(v32, 1, v17) == 1)
        {
          sub_1C8778ED8(v32, &qword_1EC2B64A8, &unk_1C8BE7670);
        }

        else
        {
          sub_1C8A0E760();
          sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
          sub_1C8BD4E2C();
          result = sub_1C8A0E808();
          if (v21)
          {
            return result;
          }
        }

        v33 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
        swift_beginAccess();
        if (*(*(v25 + v33) + 16))
        {
          type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
          sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

          sub_1C8BD4E0C();

          if (v21)
          {
            return result;
          }

          v25 = v44;
        }

        v34 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
        swift_beginAccess();
        sub_1C87867A0(v25 + v34, v27, &qword_1EC2B65E0, &qword_1C8BE7DD0);
        if (__swift_getEnumTagSinglePayload(v27, 1, v38) == 1)
        {
          sub_1C8778ED8(v27, &qword_1EC2B65E0, &qword_1C8BE7DD0);
        }

        else
        {
          sub_1C8A0E760();
          sub_1C8A0E85C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_SubwordTokenChain);
          sub_1C8BD4E2C();
          result = sub_1C8A0E808();
          if (v21)
          {
            return result;
          }
        }

        v35 = v25 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
        swift_beginAccess();
        if ((*(v35 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v21))
        {
          v36 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
          result = swift_beginAccess();
          if (*(*(v25 + v36) + 16))
          {
            type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
            sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

            sub_1C8BD4E0C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Embedding_EmbeddingResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_18();
  if (*(a1 + v4) != *(a2 + v4))
  {

    sub_1C8A0FA28();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_28_11();
  sub_1C8A0E85C(v7, v8, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

void sub_1C8A0FA28()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v113 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v110 = v6 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6600, &qword_1C8BE7DE8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  v10 = OUTLINED_FUNCTION_80(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v111 = v11 - v12;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v110 - v14;
  v125 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v120 = v17 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v21 = OUTLINED_FUNCTION_80(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34();
  v121 = v22 - v23;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v110 - v25;
  v128 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_33();
  v122 = (v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  v118 = v31 - v32;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v37 = OUTLINED_FUNCTION_80(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_34();
  v116 = (v38 - v39);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v40);
  v119 = &v110 - v41;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v42);
  v127 = (&v110 - v43);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v110 - v45;
  v47 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor, &v148);
  sub_1C87867A0(v3 + v47, v46, &qword_1EC2B64A8, &unk_1C8BE7670);
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor, &v147);
  v117 = v29;
  v49 = *(v29 + 48);
  sub_1C87867A0(v46, v35, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v1 + v48, &v35[v49], &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_72(v35);
  if (v51)
  {

    sub_1C8778ED8(v46, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_72(&v35[v49]);
    if (v51)
    {
      sub_1C8778ED8(v35, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C8778ED8(v35, &qword_1EC2B64E0, &unk_1C8BE7880);
    goto LABEL_69;
  }

  v50 = v127;
  sub_1C87867A0(v35, v127, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_72(&v35[v49]);
  if (v51)
  {

    sub_1C8778ED8(v46, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_17();
  v52 = v122;
  sub_1C8A0E760();

  v53 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v50, v52);
  sub_1C8A0E808();
  sub_1C8778ED8(v46, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8A0E808();
  sub_1C8778ED8(v35, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v53 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_12:
  v54 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain, &v146);
  v55 = v124;
  OUTLINED_FUNCTION_52_6(v3 + v54, v124);
  v56 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain, &v145);
  v57 = *(v123 + 48);
  v58 = v126;
  OUTLINED_FUNCTION_52_6(v55, v126);
  OUTLINED_FUNCTION_52_6(v1 + v56, v58 + v57);
  OUTLINED_FUNCTION_76(v58, 1, v125);
  v59 = v1;
  if (v51)
  {
    sub_1C8778ED8(v55, &qword_1EC2B6048, &unk_1C8BE6F80);
    OUTLINED_FUNCTION_18_15();
    if (v51)
    {
      v60 = v3;
      v61 = sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_22;
    }

LABEL_20:
    sub_1C8778ED8(v58, &qword_1EC2B6050, &qword_1C8BE6D00);
LABEL_69:

    goto LABEL_70;
  }

  v62 = v121;
  sub_1C87867A0(v58, v121, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_18_15();
  if (v63)
  {
    sub_1C8778ED8(v55, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C8A0E808();
    goto LABEL_20;
  }

  v60 = v3;
  v64 = v120;
  sub_1C8A0E760();
  v65 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v62, v64);
  sub_1C8A0E808();
  sub_1C8778ED8(v55, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8A0E808();
  v59 = v1;
  v61 = sub_1C8778ED8(v58, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v65 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_22:
  OUTLINED_FUNCTION_26_8(v61, &v144);
  OUTLINED_FUNCTION_71_1();
  v66 = v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  v68 = OUTLINED_FUNCTION_26_8(v67, &v143);
  if (v1)
  {
    if ((*(v66 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v66 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v51)
    {
      goto LABEL_69;
    }
  }

  OUTLINED_FUNCTION_26_8(v68, &v142);
  OUTLINED_FUNCTION_71_1();
  v69 = v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  v71 = OUTLINED_FUNCTION_26_8(v70, &v141);
  if (v1)
  {
    if ((*(v69 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v69 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v51)
    {
      goto LABEL_69;
    }
  }

  OUTLINED_FUNCTION_26_8(v71, &v140);
  OUTLINED_FUNCTION_71_1();
  v72 = v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  OUTLINED_FUNCTION_26_8(v73, &v139);
  if (v1)
  {
    if ((*(v72 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v72 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v51)
    {
      goto LABEL_69;
    }
  }

  v74 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  OUTLINED_FUNCTION_277(v60 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, &v138);
  v75 = v119;
  OUTLINED_FUNCTION_52_6(v60 + v74, v119);
  v76 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, &v137);
  v77 = v118;
  v78 = *(v117 + 48);
  OUTLINED_FUNCTION_52_6(v75, v118);
  OUTLINED_FUNCTION_52_6(v59 + v76, v77 + v78);
  OUTLINED_FUNCTION_76(v77, 1, v128);
  if (v51)
  {
    sub_1C8778ED8(v75, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_18_15();
    if (v51)
    {
      sub_1C8778ED8(v77, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_51;
    }

LABEL_48:
    v81 = &qword_1EC2B64E0;
    v82 = &unk_1C8BE7880;
LABEL_49:
    sub_1C8778ED8(v77, v81, v82);
    goto LABEL_69;
  }

  v79 = v116;
  sub_1C87867A0(v77, v116, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_18_15();
  if (v80)
  {
    sub_1C8778ED8(v119, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_48;
  }

  v83 = v122;
  sub_1C8A0E760();
  v84 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v79, v83);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v85, v86, v87);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v88, v89, v90);
  if ((v84 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_51:
  OUTLINED_FUNCTION_277(v60 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs, &v136);
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs, &v135);

  sub_1C87E307C();
  v92 = v91;

  if ((v92 & 1) == 0)
  {
    goto LABEL_69;
  }

  v93 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277(v60 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain, &v134);
  v94 = v115;
  OUTLINED_FUNCTION_52_6(v60 + v93, v115);
  v95 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain, &v133);
  v96 = *(v112 + 48);
  v77 = v114;
  OUTLINED_FUNCTION_52_6(v94, v114);
  OUTLINED_FUNCTION_52_6(v95 + v59, v77 + v96);
  OUTLINED_FUNCTION_76(v77, 1, v113);
  if (v51)
  {
    sub_1C8778ED8(v94, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    OUTLINED_FUNCTION_18_15();
    if (v51)
    {
      v97 = sub_1C8778ED8(v77, &qword_1EC2B65E0, &qword_1C8BE7DD0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v98 = v111;
  sub_1C87867A0(v77, v111, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_18_15();
  if (v99)
  {
    sub_1C8778ED8(v115, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    sub_1C8A0E808();
LABEL_60:
    v81 = &qword_1EC2B6600;
    v82 = &qword_1C8BE7DE8;
    goto LABEL_49;
  }

  v100 = v110;
  sub_1C8A0E760();
  v101 = static Siri_Nlu_Internal_SubwordTokenChain.== infix(_:_:)(v98, v100);
  sub_1C8A0E808();
  v95 = &qword_1C8BE7DD0;
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v102, v103, v104);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  v97 = sub_1C8778ED8(v105, v106, v107);
  if ((v101 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_62:
  OUTLINED_FUNCTION_26_8(v97, &v132);
  OUTLINED_FUNCTION_71_1();
  v108 = v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  OUTLINED_FUNCTION_26_8(v109, &v131);
  if (v95)
  {
    if ((*(v108 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v108 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v51)
    {
      goto LABEL_69;
    }
  }

  OUTLINED_FUNCTION_277(v60 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs, &v130);
  OUTLINED_FUNCTION_277(v59 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs, &v129);

  sub_1C87E307C();

LABEL_70:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A106CC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A0E85C(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A107A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0E85C(&qword_1EC2BE188, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A10828(uint64_t a1)
{
  v2 = sub_1C8A0E85C(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A10898(uint64_t a1, uint64_t a2)
{
  sub_1C8A0E85C(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A10B80(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C8A10ECC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD378, MEMORY[0x1E69E76D8]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C8A10CC0(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A10D4C(uint64_t a1)
{
  sub_1C8A10ECC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  if (v1 <= 0x3F)
  {
    sub_1C8A10ECC(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v2 <= 0x3F)
    {
      sub_1C8A10ECC(319, &qword_1EC2B6638, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C8A10ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_4_23();
  v6 = OUTLINED_FUNCTION_13(*(v5 + 28));
  sub_1C8786744(v6, v7, &qword_1EC2B6038, &unk_1C8BE8850);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v10) = qword_1EDACCB68;
    v11 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v14 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v14, v15, v16);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(uint64_t a1)
{
  result = qword_1EC2BE1D0;
  if (!qword_1EC2BE1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(v2) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_4();
  sub_1C8A115B8(v0, v1 + v3, v4);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = *(OUTLINED_FUNCTION_30_9(v9) + 28);
  *(v1 + 40) = v10;
  sub_1C8786744(v0 + v10, v5, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v5, 1, v6);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v6 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(v8 + v12) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_1C8A115B8(v5, v8, v14);
  }

  return sub_1C8A112F8;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasCurrentTurn.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_4_23();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 28));
  OUTLINED_FUNCTION_94_0(v5, v6);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE8850);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearCurrentTurn()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  sub_1C8778ED8(v0 + *(updated + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.previousTurns.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.qrHypotheses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_4_23();
  v6 = OUTLINED_FUNCTION_13(*(v5 + 32));
  sub_1C8786744(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[5]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    v10 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v10, v11, v12);
  }

  return result;
}

uint64_t sub_1C8A115B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t sub_1C8A11614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8A11984(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(v2) + 32);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8A115B8(v0, v1 + v3, v4);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_30_9(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8A115B8(v4, v7, v17);
  }

  return sub_1C8A13D34;
}

void sub_1C8A11890(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    sub_1C8A11984((*a1)[4], v10, a5);
    sub_1C8778ED8(v13 + v9, a3, a4);
    sub_1C8A115B8(v10, v13 + v9, a5);
    OUTLINED_FUNCTION_26_1();
    sub_1C8805EE4();
  }

  else
  {
    sub_1C8778ED8(v13 + v9, a3, a4);
    sub_1C8A115B8(v11, v13 + v9, a5);
    OUTLINED_FUNCTION_26_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_1C8A11984(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_4_23();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 32));
  OUTLINED_FUNCTION_94_0(v5, v6);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE68C0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  sub_1C8778ED8(v0 + *(updated + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A11B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0) + 36);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearResultCandidateID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_4_23();
  v6 = OUTLINED_FUNCTION_13(*(v5 + 40));
  sub_1C8786744(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[5]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    v10 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v10, v11, v12);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(v2) + 40);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8A115B8(v0, v1 + v3, v4);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_30_9(v8) + 40);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8A115B8(v4, v7, v17);
  }

  return sub_1C8A11F88;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasNluRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_4_23();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 40));
  OUTLINED_FUNCTION_94_0(v5, v6);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE68C0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearNluRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  sub_1C8778ED8(v0 + *(updated + 40), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = updated[7];
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = updated[8];
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = (a1 + updated[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1 + updated[10];

  return __swift_storeEnumTagSinglePayload(v9, 1, 1, v7);
}

uint64_t sub_1C8A122AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE198);
  __swift_project_value_buffer(v0, qword_1EC2BE198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_turn";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "previous_turns";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "qr_hypotheses";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_id";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "result_candidate_id";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nlu_request_id";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8A126E4(v6, v7, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_8();
        sub_1C8A12798(v22, v23, v24, v25);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8A12838(v14, v15, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8A128D8(v18, v19, v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8A1298C(v10, v11, v12, v13);
        break;
      case 6:
        v26 = OUTLINED_FUNCTION_8();
        sub_1C8A129F0(v26, v27, v28, v29);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A126E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A13CEC(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A12798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A13CEC(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A12838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C8A13CEC(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A128D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A13CEC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A129F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A13CEC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v47 = a3;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v8 = OUTLINED_FUNCTION_80(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_0();
  v42 = v9;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v43 = v11;
  v44 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  v40 = v13;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_96();
  v41 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v24 = v23 - v22;
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  sub_1C8786744(v6 + updated[7], v19, &qword_1EC2B6038, &unk_1C8BE8850);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C8778ED8(v19, &qword_1EC2B6038, &unk_1C8BE8850);
  }

  else
  {
    sub_1C8A115B8(v19, v24, type metadata accessor for Siri_Nlu_External_TurnInput);
    OUTLINED_FUNCTION_10_16();
    sub_1C8A13CEC(v25, v26, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
    sub_1C8BD4E2C();
    result = sub_1C8805EE4();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v6 + 16) || (OUTLINED_FUNCTION_10_16(), sub_1C8A13CEC(v28, v29, &protocol conformance descriptor for Siri_Nlu_External_TurnInput), OUTLINED_FUNCTION_7_22(), result = sub_1C8BD4E0C(), (v5 = v4) == 0))
  {
    if (!*(v6[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0), sub_1C8A13CEC(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis), OUTLINED_FUNCTION_7_22(), result = sub_1C8BD4E0C(), (v5 = v4) == 0))
    {
      v30 = v43;
      sub_1C8786744(v6 + updated[8], v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      v31 = OUTLINED_FUNCTION_120();
      v32 = v44;
      if (__swift_getEnumTagSinglePayload(v31, v33, v44) == 1)
      {
        sub_1C8778ED8(v30, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C8A115B8(v30, v41, type metadata accessor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_15_12();
        sub_1C8A13CEC(v34, v35, &protocol conformance descriptor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_7_22();
        sub_1C8BD4E2C();
        v5 = v4;
        result = sub_1C8805EE4();
        if (v4)
        {
          return result;
        }
      }

      v36 = v42;
      if (*(v6 + updated[9] + 8))
      {
        v4 = v5;
        result = sub_1C8BD4DDC();
        if (v5)
        {
          return result;
        }

        v32 = v44;
      }

      sub_1C8786744(v6 + updated[10], v36, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if (__swift_getEnumTagSinglePayload(v36, 1, v32) == 1)
      {
        sub_1C8778ED8(v36, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C8A115B8(v36, v40, type metadata accessor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_15_12();
        sub_1C8A13CEC(v37, v38, &protocol conformance descriptor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_7_22();
        sub_1C8BD4E2C();
        result = sub_1C8805EE4();
        if (v4)
        {
          return result;
        }
      }

      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v88 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v83 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_0();
  v81 = v10;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_96();
  v84 = v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_0();
  v82 = v14;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_96();
  v85 = v16;
  v17 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v21 = v20 - v19;
  v22 = OUTLINED_FUNCTION_12();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_80(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v80 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v87 = OUTLINED_FUNCTION_4_23();
  v30 = *(v87 + 28);
  v31 = *(v28 + 56);
  v89 = a1;
  OUTLINED_FUNCTION_94_0(a1 + v30, v2);
  OUTLINED_FUNCTION_94_0(a2 + v30, v2 + v31);
  v32 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v32, v33, v17);
  if (v34)
  {
    OUTLINED_FUNCTION_76(v2 + v31, 1, v17);
    if (v34)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  sub_1C8786744(v2, v27, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v2 + v31, 1, v17);
  if (v34)
  {
    sub_1C8805EE4();
LABEL_9:
    v35 = &qword_1EC2B6040;
    v36 = &unk_1C8BE6CF0;
LABEL_10:
    v37 = v2;
LABEL_11:
    sub_1C8778ED8(v37, v35, v36);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_0_4();
  sub_1C8A115B8(v2 + v31, v21, v38);
  if (*&v27[*(v17 + 20)] != *(v21 + *(v17 + 20)))
  {

    OUTLINED_FUNCTION_218();
    sub_1C88AD618();
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      sub_1C8805EE4();
      sub_1C8805EE4();
      v35 = &qword_1EC2B6038;
      v36 = &unk_1C8BE8850;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_16_11();
  sub_1C8A13CEC(v41, v42, MEMORY[0x1E69AAC10]);
  v43 = sub_1C8BD517C();
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v43 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  v44 = v89;
  sub_1C87D2CAC(*v89, *a2);
  if ((v45 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_1C87D84F0();
  if ((v46 & 1) == 0)
  {
    goto LABEL_37;
  }

  v47 = v86;
  v48 = v87;
  v49 = *(v87 + 32);
  v50 = *(v86 + 48);
  v51 = v85;
  OUTLINED_FUNCTION_27(v44 + v49, v85);
  OUTLINED_FUNCTION_27(a2 + v49, v51 + v50);
  v52 = v88;
  OUTLINED_FUNCTION_76(v51, 1, v88);
  if (v34)
  {
    OUTLINED_FUNCTION_76(v51 + v50, 1, v52);
    if (v34)
    {
      sub_1C8778ED8(v51, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_28;
    }

LABEL_26:
    v35 = &qword_1EC2B5EE8;
    v36 = &unk_1C8BE6F90;
    v37 = v51;
    goto LABEL_11;
  }

  v53 = v84;
  sub_1C8786744(v51, v84, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v51 + v50, 1, v52);
  if (v54)
  {
    OUTLINED_FUNCTION_11_19();
    sub_1C8805EE4();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_12_18();
  v55 = v51 + v50;
  v56 = v83;
  sub_1C8A115B8(v55, v83, v57);
  v58 = static Siri_Nlu_External_UUID.== infix(_:_:)(v53, v56);
  sub_1C8805EE4();
  OUTLINED_FUNCTION_121();
  sub_1C8805EE4();
  sub_1C8778ED8(v51, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v58 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_28:
  v59 = *(v48 + 36);
  v60 = (v44 + v59);
  v61 = *(v44 + v59 + 8);
  v62 = (a2 + v59);
  v63 = v62[1];
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_37;
    }

    v64 = *v60 == *v62 && v61 == v63;
    if (!v64 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v63)
  {
    goto LABEL_37;
  }

  v67 = *(v48 + 40);
  v68 = *(v47 + 48);
  v69 = v82;
  OUTLINED_FUNCTION_27(v44 + v67, v82);
  v70 = a2 + v67;
  v2 = v69;
  OUTLINED_FUNCTION_27(v70, v69 + v68);
  OUTLINED_FUNCTION_76(v69, 1, v52);
  if (v34)
  {
    OUTLINED_FUNCTION_76(v69 + v68, 1, v52);
    if (v34)
    {
      sub_1C8778ED8(v69, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_49:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_16_11();
      sub_1C8A13CEC(v78, v79, MEMORY[0x1E69AAC10]);
      v65 = sub_1C8BD517C();
      return v65 & 1;
    }

    goto LABEL_47;
  }

  v71 = v69;
  v72 = v81;
  sub_1C8786744(v71, v81, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v2 + v68, 1, v52);
  if (v73)
  {
    OUTLINED_FUNCTION_11_19();
    sub_1C8805EE4();
LABEL_47:
    v35 = &qword_1EC2B5EE8;
    v36 = &unk_1C8BE6F90;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_18();
  v74 = v2 + v68;
  v75 = v83;
  sub_1C8A115B8(v74, v83, v76);
  v77 = static Siri_Nlu_External_UUID.== infix(_:_:)(v72, v75);
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v77)
  {
    goto LABEL_49;
  }

LABEL_37:
  v65 = 0;
  return v65 & 1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
  sub_1C8A13CEC(&qword_1EC2BE1B0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A13808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A13CEC(&qword_1EC2BE1E0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A13888(uint64_t a1)
{
  v2 = sub_1C8A13CEC(&qword_1EC2BE1C0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A138F8(uint64_t a1, uint64_t a2)
{
  sub_1C8A13CEC(&qword_1EC2BE1C0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A13AC0(uint64_t a1)
{
  sub_1C8A13C88(319, &qword_1EDACA2F8, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1C8A13C88(319, &qword_1EC2B5F40, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, MEMORY[0x1E69E62F8]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v2 = sub_1C8BD49FC();
      if (v6 <= 0x3F)
      {
        sub_1C8A13C88(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
        v2 = v7;
        if (v8 <= 0x3F)
        {
          sub_1C8A13C88(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
          v2 = v9;
          if (v10 <= 0x3F)
          {
            sub_1C87E8A54();
            if (v12 > 0x3F)
            {
              return v11;
            }

            else
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1C8A13C88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8A13CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest(0);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_23();
  sub_1C87E8DEC(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v7[5]);
  OUTLINED_FUNCTION_313(a1 + v7[6]);
  *(a1 + v7[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(uint64_t a1)
{
  result = qword_1EC2B4310;
  if (!qword_1EC2B4310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A13EC0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v4);
  return Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.setter(v4);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

BOOL Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_23();
  sub_1C87E8DEC(v0 + *(v4 + 24), v1);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.mentions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1C8A14458()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4330);
  __swift_project_value_buffer(v0, qword_1EC2B4330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mentions";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4328 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4330);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_8();
      sub_1C8A147F8(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v6 = OUTLINED_FUNCTION_8();
      sub_1C8A14744(v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1C8A14744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A151CC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A147F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8A151CC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0);
  sub_1C87E8DEC(v5 + *(v14 + 24), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C8778ED8(v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v9, v13);
    sub_1C8A151CC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v13);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v5 + 16))
  {
    return sub_1C8BD49DC();
  }

  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8A151CC(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  OUTLINED_FUNCTION_9_1();
  result = sub_1C8BD4E0C();
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0) + 24);
  v16 = *(v11 + 56);
  sub_1C87E8DEC(a1 + v15, v14);
  sub_1C87E8DEC(a2 + v15, &v14[v16]);
  OUTLINED_FUNCTION_73(v14);
  if (v17)
  {
    OUTLINED_FUNCTION_73(&v14[v16]);
    if (v17)
    {
      sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v14, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  sub_1C87E8DEC(v14, v10);
  OUTLINED_FUNCTION_73(&v14[v16]);
  if (v17)
  {
    sub_1C87E9274(v10);
    goto LABEL_9;
  }

  sub_1C87E8E5C(&v14[v16], v6);
  v18 = static Siri_Nlu_External_UUID.== infix(_:_:)(v10, v6);
  sub_1C87E9274(v6);
  sub_1C87E9274(v10);
  sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1C87D27C0(*a1, *a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C8BD49FC();
  sub_1C8A151CC(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = sub_1C8BD517C();
  return v20 & 1;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0);
  sub_1C8A151CC(&qword_1EC2BE1E8, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A14E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A151CC(&qword_1EC2BE200, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A14E98(uint64_t a1)
{
  v2 = sub_1C8A151CC(&qword_1EC2BE1F0, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A14F08(uint64_t a1, uint64_t a2)
{
  sub_1C8A151CC(&qword_1EC2BE1F0, type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A150D0(uint64_t a1)
{
  sub_1C882C61C(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C882C61C(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A151CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_23()
{

  return type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorResponse(0);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.hypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(uint64_t a1)
{
  result = qword_1EC2BE240;
  if (!qword_1EC2BE240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A15470()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE208);
  __swift_project_value_buffer(v0, qword_1EC2BE208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "hypotheses";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C48 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE208);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A156EC(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A156EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A15CC0(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A15CC0(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Ssu_SSUResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D2A98(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0);
  sub_1C8BD49FC();
  sub_1C8A15CC0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Ssu_SSUResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse(0);
  sub_1C8A15CC0(&qword_1EC2BE220, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Ssu_SSUResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A15A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A15CC0(&qword_1EC2BE250, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A15A88(uint64_t a1)
{
  v2 = sub_1C8A15CC0(&qword_1EC2BE230, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A15AF8(uint64_t a1, uint64_t a2)
{
  sub_1C8A15CC0(&qword_1EC2BE230, type metadata accessor for Siri_Nlu_Internal_Ssu_SSUResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Ssu_SSUResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A15CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.ruleIds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A15F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8A15F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.rules.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0);
  OUTLINED_FUNCTION_21_9(v10);
  OUTLINED_FUNCTION_7();
  if (v11)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7();
    if (!v11)
    {
      sub_1C8778ED8(v6, &qword_1EC2BE2A0, &qword_1C8C0E560);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_271();
    sub_1C8A15F8C(v12, v13);
  }

  return sub_1C8A18768;
}

uint64_t sub_1C8A1613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8A161A0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0) + 20);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C8A162B4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = a1(v8);
  sub_1C8A15F1C(v2 + *(v9 + 20), v3);
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v10) != 1)
  {
    return sub_1C8A15F8C(v3, a2);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = __swift_getEnumTagSinglePayload(v3, 1, v10);
  if (result != 1)
  {
    return sub_1C8778ED8(v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  return result;
}

uint64_t sub_1C8A163D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v7 = OUTLINED_FUNCTION_80(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_271();
  sub_1C8A1613C(v11, v12);
  return a5(v10);
}

uint64_t sub_1C8A1646C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8778ED8(v1 + v4, &qword_1EC2BE2A0, &qword_1C8C0E560);
  sub_1C8A15F8C(v0, v1 + v4);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.rules.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  OUTLINED_FUNCTION_21_9(v10);
  OUTLINED_FUNCTION_7();
  if (v11)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7();
    if (!v11)
    {
      sub_1C8778ED8(v6, &qword_1EC2BE2A0, &qword_1C8C0E560);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_271();
    sub_1C8A15F8C(v12, v13);
  }

  return sub_1C8A16618;
}

void sub_1C8A1661C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C8A1613C((*a1)[4], v4);
    sub_1C8778ED8(v7 + v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
    sub_1C8A15F8C(v4, v7 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C8A161A0(v5);
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2BE2A0, &qword_1C8C0E560);
    sub_1C8A15F8C(v5, v7 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL sub_1C8A16714(uint64_t (*a1)(void))
{
  v3 = OUTLINED_FUNCTION_271();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = a1(0);
  sub_1C8A15F1C(v1 + *(v9 + 20), v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  v11 = __swift_getEnumTagSinglePayload(v8, 1, v10) != 1;
  sub_1C8778ED8(v8, &qword_1EC2BE2A0, &qword_1C8C0E560);
  return v11;
}

uint64_t sub_1C8A167F8(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_24_12();

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.getter()
{
  OUTLINED_FUNCTION_17_14();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = (v1 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(v3) + 24));

  *v4 = v2;
  v4[1] = v0;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.modelType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_17_14();
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.clearModelType()()
{
  OUTLINED_FUNCTION_17_14();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  v4 = *(v3 + 20);
  OUTLINED_FUNCTION_24_12();
  result = __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v7 = (a2 + *(v3 + 24));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C8BD4DAC(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C87D2814(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  sub_1C8776A58(v2, v3, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A16D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE358, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A16DAC(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE2B0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A16E1C(uint64_t a1, uint64_t a2)
{
  sub_1C8776A58(&qword_1EC2BE2B0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A16EC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C8BE6F30;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  (*(v15 + 104))(v13, v14);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A17938(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(0);
  sub_1C8A15F1C(v1 + *(v11 + 20), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  else
  {
    sub_1C8A15F8C(v5, v10);
    OUTLINED_FUNCTION_2_25();
    sub_1C8776A58(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);
    sub_1C8BD4E2C();
    result = sub_1C8A161A0(v10);
    if (v0)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_15();
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2B8, &qword_1C8C0E568) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_74();
  v15 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules(v14) + 20);
  v16 = *(v12 + 56);
  sub_1C8A15F1C(v1 + v15, v2);
  sub_1C8A15F1C(v0 + v15, v2 + v16);
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v16);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1C8A15F1C(v2, v11);
  OUTLINED_FUNCTION_19(v2 + v16);
  if (v21)
  {
    sub_1C8A161A0(v11);
LABEL_10:
    v22 = &qword_1EC2BE2B8;
    v23 = &qword_1C8C0E568;
LABEL_11:
    sub_1C8778ED8(v2, v22, v23);
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  sub_1C8A15F8C(v2 + v16, v7);
  v25 = sub_1C87D2814(*v11, *v7);
  if ((v25 & 1) == 0)
  {
    sub_1C8A161A0(v7);
    sub_1C8A161A0(v11);
    v22 = &qword_1EC2BE2A0;
    v23 = &qword_1C8C0E560;
    goto LABEL_11;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  sub_1C8776A58(v26, v27, MEMORY[0x1E69AAC10]);
  v28 = sub_1C8BD517C();
  sub_1C8A161A0(v7);
  sub_1C8A161A0(v11);
  sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
  if ((v28 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_23();
  v19 = sub_1C8776A58(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_191_0(v19);
  return v20 & 1;
}

uint64_t sub_1C8A1754C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE350, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A175CC(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE2E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1763C(uint64_t a1, uint64_t a2)
{
  sub_1C8776A58(&qword_1EC2BE2E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ExecutedHandcraftedRules);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A176C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE288);
  __swift_project_value_buffer(v0, qword_1EC2BE288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rules";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_type";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v8 = OUTLINED_FUNCTION_8();
      sub_1C8A179E0(v8, v9, v10, v11);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8A17938(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C8A17938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_2_25();
  sub_1C8776A58(v5, v6, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(0);
  sub_1C8A15F1C(v1 + *(v11 + 20), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2BE2A0, &qword_1C8C0E560);
  }

  else
  {
    sub_1C8A15F8C(v5, v10);
    OUTLINED_FUNCTION_2_25();
    sub_1C8776A58(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules);
    sub_1C8BD4E2C();
    result = sub_1C8A161A0(v10);
    if (v0)
    {
      return result;
    }
  }

  if (!*(v1 + *(v11 + 24) + 8))
  {
    return OUTLINED_FUNCTION_15();
  }

  result = sub_1C8BD4DDC();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules.== infix(_:_:)()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2A0, &qword_1C8C0E560);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v36 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE2B8, &qword_1C8C0E568) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_74();
  v15 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules(v14);
  v16 = *(v15 + 20);
  v17 = *(v12 + 56);
  sub_1C8A15F1C(v1 + v16, v2);
  sub_1C8A15F1C(v0 + v16, v2 + v17);
  OUTLINED_FUNCTION_19(v2);
  if (!v24)
  {
    sub_1C8A15F1C(v2, v11);
    OUTLINED_FUNCTION_19(v2 + v17);
    if (!v24)
    {
      sub_1C8A15F8C(v2 + v17, v7);
      v29 = sub_1C87D2814(*v11, *v7);
      if (v29)
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_23();
        sub_1C8776A58(v30, v31, MEMORY[0x1E69AAC10]);
        v32 = sub_1C8BD517C();
        sub_1C8A161A0(v7);
        sub_1C8A161A0(v11);
        sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }

      sub_1C8A161A0(v7);
      sub_1C8A161A0(v11);
      v25 = &qword_1EC2BE2A0;
      v26 = &qword_1C8C0E560;
LABEL_18:
      sub_1C8778ED8(v2, v25, v26);
      goto LABEL_19;
    }

    sub_1C8A161A0(v11);
LABEL_17:
    v25 = &qword_1EC2BE2B8;
    v26 = &qword_1C8C0E568;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_19(v2 + v17);
  if (!v24)
  {
    goto LABEL_17;
  }

  sub_1C8778ED8(v2, &qword_1EC2BE2A0, &qword_1C8C0E560);
LABEL_6:
  v18 = *(v15 + 24);
  v19 = (v1 + v18);
  v20 = *(v1 + v18 + 8);
  v21 = (v0 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_23();
    v35 = sub_1C8776A58(v33, v34, MEMORY[0x1E69AAC10]);
    v27 = OUTLINED_FUNCTION_191_0(v35);
    return v27 & 1;
  }

  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_19:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C8A17F10(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776A58(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A17FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A58(&qword_1EC2BE348, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1806C(uint64_t a1)
{
  v2 = sub_1C8776A58(&qword_1EC2BE300, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A180DC(uint64_t a1, uint64_t a2)
{
  sub_1C8776A58(&qword_1EC2BE300, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMExecutedHandcraftedRules);

  return sub_1C8BD4CFC();
}

void sub_1C8A184E4(uint64_t a1)
{
  sub_1C8803308(319, &qword_1EDACD398, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A185AC(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A18630(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A18630(uint64_t a1)
{
  if (!qword_1EC2BE330)
  {
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPHandcraftedRules(255);
    v1 = sub_1C8BD522C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2BE330);
    }
  }
}

void sub_1C8A186B0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A18630(319);
    if (v2 <= 0x3F)
    {
      sub_1C8803308(319, &qword_1EDACD3E8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.startIndex.getter()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8A187E4(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.startMilliSeconds.getter()
{
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_UtteranceSpan.endMilliSeconds.getter()
{
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8A188A4(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UtteranceAlignment.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_22_14(*(v1 + 24));
  OUTLINED_FUNCTION_11_4(*(v1 + 28));
}

void Siri_Nlu_External_UtteranceAlignment.nodeIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 28));
}

void Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

void Siri_Nlu_External_UtteranceSpan.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_22_14(v1);
  OUTLINED_FUNCTION_11_4(*(v2 + 24));
  OUTLINED_FUNCTION_11_4(*(v3 + 28));
  OUTLINED_FUNCTION_11_4(*(v4 + 32));
  OUTLINED_FUNCTION_11_4(*(v5 + 36));
  OUTLINED_FUNCTION_11_4(*(v6 + 40));
}

void Siri_Nlu_External_UtteranceSpan.endIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

void Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 28));
}

void Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 32));
}

void Siri_Nlu_External_UtteranceSpan.startMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 36));
}

void Siri_Nlu_External_UtteranceSpan.endMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 40));
}

uint64_t (*Siri_Nlu_External_UtteranceAlignment.asrHypothesisIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceAlignment.spans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_UtteranceAlignment.nodeIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 28));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceAlignment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_External_UtteranceAlignment.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C87FE8F0;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startUnicodeScalarIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 28));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endUnicodeScalarIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 32));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.startMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 36));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_External_UtteranceSpan.endMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 40));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UtteranceSpan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_External_UtteranceSpan.unknownFields.setter(uint64_t a1)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t sub_1C8A191A8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACAC58);
  __swift_project_value_buffer(v0, qword_1EDACAC58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spans";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "node_index";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_UtteranceAlignment.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A19DD4();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A19484(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A19D94();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A19484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(0);
  sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_External_UtteranceAlignment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v7 = (v3 + *(v6 + 24));
  if ((v7[1] & 1) != 0 || (result = OUTLINED_FUNCTION_23_14(*v7, 1), (v5 = v4) == 0))
  {
    if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UtteranceSpan(0), sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan), v4 = v5, result = sub_1C8BD4E0C(), !v5))
    {
      v9 = (v3 + *(v6 + 28));
      if (v9[1])
      {
        return sub_1C8BD49DC();
      }

      result = OUTLINED_FUNCTION_23_14(*v9, 3);
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_UtteranceAlignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v2);
  OUTLINED_FUNCTION_11();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v5)
    {
      return 0;
    }
  }

  sub_1C87DD1B0();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v10)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_11_21();
  sub_1C8A1A440(v11, v12, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A197D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A1A440(&qword_1EC2BE388, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A19850(uint64_t a1)
{
  v2 = sub_1C8A1A440(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A198C0(uint64_t a1, uint64_t a2)
{
  sub_1C8A1A440(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1995C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACBCC0);
  __swift_project_value_buffer(v0, qword_1EDACBCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "start_index";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end_index";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_unicode_scalar_index";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_unicode_scalar_index";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "start_milli_seconds";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "end_milli_seconds";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_UtteranceSpan.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A19D30(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A19D94();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A19DD4();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8A19E14(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A19E78(v7, v8, v9, v10);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C8A19EDC(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A19D94()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  return OUTLINED_FUNCTION_20_10();
}

uint64_t sub_1C8A19DD4()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  return OUTLINED_FUNCTION_20_10();
}

uint64_t Siri_Nlu_External_UtteranceSpan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_UtteranceSpan(v4);
  OUTLINED_FUNCTION_467();
  if ((v5 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v3))
  {
    OUTLINED_FUNCTION_467();
    if ((v7 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v3))
    {
      OUTLINED_FUNCTION_467();
      if ((v8 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v3))
      {
        OUTLINED_FUNCTION_467();
        if ((v9 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v3))
        {
          OUTLINED_FUNCTION_467();
          if ((v10 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v3))
          {
            OUTLINED_FUNCTION_467();
            if (v11)
            {
              return sub_1C8BD49DC();
            }

            OUTLINED_FUNCTION_48_0();
            result = sub_1C8BD4D8C();
            if (!v3)
            {
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_UtteranceSpan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_11();
  if (v3)
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v4)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v6)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v7)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v9)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v10)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v13)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if ((v15 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

LABEL_21:
  OUTLINED_FUNCTION_11();
  if (v18)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v20)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_11_21();
  sub_1C8A1A440(v21, v22, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A1A1EC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A1A440(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A1A2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A1A440(&qword_1EC2BE380, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1A350(uint64_t a1)
{
  v2 = sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1A3C0(uint64_t a1, uint64_t a2)
{
  sub_1C8A1A440(&qword_1EDACBCB0, type metadata accessor for Siri_Nlu_External_UtteranceSpan, &protocol conformance descriptor for Siri_Nlu_External_UtteranceSpan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1A440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8A1A6C8(uint64_t a1)
{
  sub_1C8A1A774(319);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD380, MEMORY[0x1E69E7668]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A1A774(uint64_t a1)
{
  if (!qword_1EDACD3B0)
  {
    type metadata accessor for Siri_Nlu_External_UtteranceSpan(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDACD3B0);
    }
  }
}

void sub_1C8A1A7F4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD380, MEMORY[0x1E69E7668]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD388, MEMORY[0x1E69E72F0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.shape.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.numericalizedFeature.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.feature.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0) + 28);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v2) + 28);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.tensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.tensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    OUTLINED_FUNCTION_84_4(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1ADF8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_299_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = a1(v9);
  OUTLINED_FUNCTION_56_6(v10);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_65(v2);
  if (!v11)
  {
    return sub_1C8A1B32C();
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v12;
  a2[2] = v12;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_65(v2);
  if (!v11)
  {
    return sub_1C8778ED8(v2, &qword_1EC2BE438, &qword_1C8C0EDD0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.tensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.tensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    OUTLINED_FUNCTION_84_4(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

BOOL sub_1C8A1B0D8()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_56_6(v7);
  sub_1C8778810();
  v8 = v0(0);
  v9 = __swift_getEnumTagSinglePayload(v2, 1, v8) != 1;
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return v9;
}

uint64_t sub_1C8A1B1CC()
{
  OUTLINED_FUNCTION_50();
  v5 = v4(0);
  sub_1C8778ED8(v1 + *(v5 + 20), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8A1B294()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1(0);
  v0(0);
  v2 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8A1B32C()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1B508()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A1B55C()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A1B68C(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = a1(v7);
  OUTLINED_FUNCTION_56_6(v8);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (!v9)
  {
    return sub_1C8A1B32C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  result = OUTLINED_FUNCTION_65(v1);
  if (!v9)
  {
    return sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1BA24(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = a1(v7);
  OUTLINED_FUNCTION_56_6(v8);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (!v9)
  {
    return sub_1C8A1B32C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  result = OUTLINED_FUNCTION_65(v1);
  if (!v9)
  {
    return sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE440, &qword_1C8C0EDD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A1BD98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.setter(v1, v2);
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.modelType.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_76_4(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;

  return sub_1C87E9980;
}

uint64_t sub_1C8A1BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8A1B508();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.response.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_3_19();
  OUTLINED_FUNCTION_70_5();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.response.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v12);
  OUTLINED_FUNCTION_123_0(v13);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
    v15 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE448, &qword_1C8C0EDE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_19();
    OUTLINED_FUNCTION_184();
    sub_1C8A1B32C();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8A1C17C()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    sub_1C8A1B508();
    sub_1C8778ED8(v9 + v5, v3, v2);
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_26_1();
    sub_1C8A1B55C();
  }

  else
  {
    sub_1C8778ED8(v9 + v5, v0, v1);
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_26_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v11);
}

uint64_t sub_1C8A1C2F0(uint64_t (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A1C348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.setter(v1, v2);
}

uint64_t sub_1C8A1C3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.modelType.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v2);
  v4 = OUTLINED_FUNCTION_76_4(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v0[3] = v4;
  *v0 = v6;
  v0[1] = v7;

  return sub_1C87EB660;
}

uint64_t sub_1C8A1C4A8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1C8A1C534()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v1(0);
  v0(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v10 = (v3 + *(v4 + 24));
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1C8A1C5B8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE390);
  __swift_project_value_buffer(v0, qword_1EC2BE390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shape";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numericalized_feature";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feature";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BEC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DBC(), !v1))
  {
    if (!*(v0[1] + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DBC(), !v1))
    {
      if (!*(v0[2] + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v1))
      {
        type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
        OUTLINED_FUNCTION_119();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  if ((sub_1C87D8544(*v2, *v3) & 1) == 0 || (sub_1C87D8544(*(v1 + 8), *(v0 + 8)) & 1) == 0 || (sub_1C87D2814(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A1CA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE608, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1CB18(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1CB88(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A1CE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE600, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1CE9C(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1CF0C(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1D00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  return sub_1C8BD4C7C();
}

void sub_1C8A1D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  v13 = v12;
  OUTLINED_FUNCTION_48_9(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_299_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v23 = OUTLINED_FUNCTION_165_0();
  v24 = v13(v23);
  OUTLINED_FUNCTION_56_6(v24);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_62_10();
  if (v25)
  {
    sub_1C8778ED8(v11, &qword_1EC2BE438, &qword_1C8C0EDD0);
LABEL_5:
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  sub_1C8A1B32C();
  sub_1C8776AA0(&qword_1EC2BE458, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor);
  OUTLINED_FUNCTION_33_9();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_67_7();
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void sub_1C8A1D29C()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_LinearizedTensor(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v23 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE438, &qword_1C8C0EDD0);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE460, &qword_1C8C0EDE8);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_74();
  v4(v11);
  v12 = *(v2 + 56);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_19(v0 + v12);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v12);
  if (v16)
  {
    sub_1C8A1B55C();
LABEL_10:
    v17 = &qword_1EC2BE460;
    v18 = &qword_1C8C0EDE8;
LABEL_17:
    sub_1C8778ED8(v0, v17, v18);
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  sub_1C8A1B32C();
  v19 = sub_1C87D8544(*v1, *v23);
  if ((v19 & 1) == 0 || (sub_1C87D8544(v1[1], v23[1]) & 1) == 0 || (sub_1C87D2814(v1[2], v23[2]) & 1) == 0)
  {
    sub_1C8A1B55C();
    sub_1C8A1B55C();
    v17 = &qword_1EC2BE438;
    v18 = &qword_1C8C0EDD0;
    goto LABEL_17;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v20, v21, MEMORY[0x1E69AAC10]);
  v22 = sub_1C8BD517C();
  sub_1C8A1B55C();
  sub_1C8A1B55C();
  sub_1C8778ED8(v0, &qword_1EC2BE438, &qword_1C8C0EDD0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_24();
  sub_1C8776AA0(v13, v14, MEMORY[0x1E69AAC10]);
  v15 = sub_1C8BD517C();
LABEL_19:
  OUTLINED_FUNCTION_157(v15);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1D668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1D6E8(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1D758(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_48_9(v12, v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_66();
  v18 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v20 = OUTLINED_FUNCTION_165_0();
  v21 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v20);
  OUTLINED_FUNCTION_82(v21);
  OUTLINED_FUNCTION_62_10();
  if (v22)
  {
    v30 = sub_1C8778ED8(v11, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_6:
    OUTLINED_FUNCTION_144(v30, v31, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_24();
  sub_1C8A1B32C();
  OUTLINED_FUNCTION_22_15();
  sub_1C8776AA0(v24, v25, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
  v26 = OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_66_7(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_67_7();
  if (!v10)
  {
    a10 = v18;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE480, &qword_1C8C0EDF0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse(v9);
  v10 = *(v7 + 56);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_5_6();
  if (v11)
  {
    OUTLINED_FUNCTION_73(v1 + v10);
    if (v11)
    {
      sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_24();
      v17 = sub_1C8776AA0(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_159(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v1 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_25_11();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BE480, &qword_1C8C0EDF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_24();
  sub_1C8A1B32C();
  static Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.== infix(_:_:)(v2, v0);
  v14 = v13;
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_258();
  sub_1C8A1B55C();
  sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v12);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1DCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1DD74(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE4F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1DDE4(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE4F0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4SpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1DE94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C8BE6F30;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  (*(v13 + 104))(v11, v12);
  return sub_1C8BD510C();
}

uint64_t sub_1C8A1E048(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A1E0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_48_9(v12, v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_66();
  v18 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33();
  v20 = OUTLINED_FUNCTION_165_0();
  v21 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v20);
  OUTLINED_FUNCTION_82(v21);
  OUTLINED_FUNCTION_62_10();
  if (v22)
  {
    v30 = sub_1C8778ED8(v11, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_6:
    OUTLINED_FUNCTION_144(v30, v31, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_24();
  sub_1C8A1B32C();
  OUTLINED_FUNCTION_28_12();
  sub_1C8776AA0(v24, v25, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
  v26 = OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_66_7(v26, v27, v28, v29);
  v30 = OUTLINED_FUNCTION_67_7();
  if (!v10)
  {
    a10 = v18;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE498, &qword_1C8C0EDF8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse(v9);
  v10 = *(v7 + 56);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_5_6();
  if (v11)
  {
    OUTLINED_FUNCTION_73(v1 + v10);
    if (v11)
    {
      sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_24();
      v17 = sub_1C8776AA0(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_159(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v1 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_23_15();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BE498, &qword_1C8C0EDF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_24();
  sub_1C8A1B32C();
  static Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.== infix(_:_:)(v2, v0);
  v14 = v13;
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_258();
  sub_1C8A1B55C();
  sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v12);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1E558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5E8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1E5D8(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE508, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1E648(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE508, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4ContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE478, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_78_3(v2, v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v11);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
  }

  else
  {
    OUTLINED_FUNCTION_7_24();
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_22_15();
    v14 = sub_1C8776AA0(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse);
    OUTLINED_FUNCTION_38_11(v14);
    sub_1C8A1B55C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_79_3();
  if (!v15 || (OUTLINED_FUNCTION_69_4(), !v0))
  {
    OUTLINED_FUNCTION_71_2();
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_49_7();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE440, &qword_1C8C0EDD8);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE480, &qword_1C8C0EDF0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse(v10);
  OUTLINED_FUNCTION_44_11(v11);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_5_6();
  if (!v12)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v1 + v2);
    if (!v12)
    {
      OUTLINED_FUNCTION_7_24();
      sub_1C8A1B32C();
      static Siri_Nlu_Internal_SnlpIntermediate_SpanFeaturizerResponse.== infix(_:_:)(v8, v0);
      v15 = v14;
      OUTLINED_FUNCTION_89_3();
      sub_1C8A1B55C();
      sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_25_11();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BE480, &qword_1C8C0EDF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v1 + v2);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BE440, &qword_1C8C0EDD8);
LABEL_13:
  OUTLINED_FUNCTION_43_8();
  if (v16)
  {
    if (v17)
    {
      v20 = *v18 == *v19 && v16 == v17;
      if (v20 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v17)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_24();
    v23 = sub_1C8776AA0(v21, v22, MEMORY[0x1E69AAC10]);
    v13 = OUTLINED_FUNCTION_159(v23);
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v13);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1EC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1ECDC(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE520, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1ED4C(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE520, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMSpanFeaturizerResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A1EDF0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C8BE74A0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 1;
  *v9 = "response";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "model_type";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v13();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A1F018(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_578();
      sub_1C8A1F158();
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_578();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_1C8A1F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(0);
  sub_1C8776AA0(&qword_1EC2BE490, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A1F158()
{
  v0 = OUTLINED_FUNCTION_49_7();
  v1(v0);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C1C();
}

void Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_78_3(v2, v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v11);
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v1, 1, v9) == 1)
  {
    sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    sub_1C8A1B32C();
    OUTLINED_FUNCTION_28_12();
    v14 = sub_1C8776AA0(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse);
    OUTLINED_FUNCTION_38_11(v14);
    sub_1C8A1B55C();
    if (v0)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_79_3();
  if (!v15 || (OUTLINED_FUNCTION_69_4(), !v0))
  {
    OUTLINED_FUNCTION_71_2();
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_49_7();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE448, &qword_1C8C0EDE0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE498, &qword_1C8C0EDF8);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse(v10);
  OUTLINED_FUNCTION_44_11(v11);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_5_6();
  if (!v12)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v1 + v2);
    if (!v12)
    {
      OUTLINED_FUNCTION_4_24();
      sub_1C8A1B32C();
      static Siri_Nlu_Internal_SnlpIntermediate_ContextFeaturizerResponse.== infix(_:_:)(v8, v0);
      v15 = v14;
      OUTLINED_FUNCTION_89_3();
      sub_1C8A1B55C();
      sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_23_15();
    sub_1C8A1B55C();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BE498, &qword_1C8C0EDF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v1 + v2);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BE448, &qword_1C8C0EDE0);
LABEL_13:
  OUTLINED_FUNCTION_43_8();
  if (v16)
  {
    if (v17)
    {
      v20 = *v18 == *v19 && v16 == v17;
      if (v20 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v17)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_24();
    v23 = sub_1C8776AA0(v21, v22, MEMORY[0x1E69AAC10]);
    v13 = OUTLINED_FUNCTION_159(v23);
    goto LABEL_11;
  }

LABEL_10:
  v13 = 0;
LABEL_11:
  OUTLINED_FUNCTION_157(v13);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A1F5B8()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  sub_1C8BD530C();
  v2(0);
  v3 = OUTLINED_FUNCTION_184();
  sub_1C8776AA0(v3, v4, v0);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A1F688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AA0(&qword_1EC2BE5D8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A1F708(uint64_t a1)
{
  v2 = sub_1C8776AA0(&qword_1EC2BE538, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A1F778(uint64_t a1, uint64_t a2)
{
  sub_1C8776AA0(&qword_1EC2BE538, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMContextFeaturizerResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A20000(uint64_t a1)
{
  sub_1C8A20434(319, &qword_1EC2BE558, MEMORY[0x1E69E7668], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8A20434(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A2017C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = v2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    v7 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a3)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v9 = OUTLINED_FUNCTION_32_1();
  }

  return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
}

void sub_1C8A20360()
{
  OUTLINED_FUNCTION_257_0();
  if (v2 <= 0x3F)
  {
    sub_1C8A2017C(319, v1, v0);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A20434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  v10 = OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_18_0();
  if (*(v12 + 84) == a2)
  {
    v9 = OUTLINED_FUNCTION_32_1();
    goto LABEL_5;
  }

  v14 = *(v3 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

void __swift_store_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_258();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_18_0();
    if (*(v14 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return;
    }

    v11 = OUTLINED_FUNCTION_32_1();
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_1C8A206CC()
{
  OUTLINED_FUNCTION_257_0();
  if (v2 <= 0x3F)
  {
    sub_1C8A2017C(319, v1, v0);
    if (v3 <= 0x3F)
    {
      sub_1C8A20434(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_66_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_78_3(uint64_t result, uint64_t a2)
{
  *(v2 - 72) = a2;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = a2;
  v2[2] = a2;

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.hypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(uint64_t a1)
{
  result = qword_1EC2B43E0;
  if (!qword_1EC2B43E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8A20AB0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4400);
  __swift_project_value_buffer(v0, qword_1EC2B4400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "hypotheses";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B43F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A20D2C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A20D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A21300(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A21300(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D2A98(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0);
  sub_1C8BD49FC();
  sub_1C8A21300(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse(0);
  sub_1C8A21300(&qword_1EC2BE610, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A21048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A21300(&qword_1EC2BE628, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A210C8(uint64_t a1)
{
  v2 = sub_1C8A21300(&qword_1EC2BE618, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A21138(uint64_t a1, uint64_t a2)
{
  sub_1C8A21300(&qword_1EC2BE618, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A21300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 20));
  sub_1C8786744(v9, v10, &qword_1EC2B64A8, &unk_1C8BE7670);
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v11[6]);
    OUTLINED_FUNCTION_15_2(v11[7]);
    OUTLINED_FUNCTION_15_2(v11[8]);
    v13 = (a1 + v11[9]);
    *v13 = 0;
    v13[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_20();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(uint64_t a1)
{
  result = qword_1EC2BE668;
  if (!qword_1EC2BE668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.embeddings.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_3_20();
  sub_1C8A221C4(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.embeddings.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_28_13(v8);
  OUTLINED_FUNCTION_32_0(*(v9 + 20));
  v10 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v10, v11, v5);
  if (v12)
  {
    *v7 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[6]);
    OUTLINED_FUNCTION_11_0(v5[7]);
    OUTLINED_FUNCTION_11_0(v5[8]);
    v13 = (v7 + v5[9]);
    *v13 = 0;
    v13[1] = 0;
    v14 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v14, v15, v5);
    if (!v12)
    {
      sub_1C8778ED8(v4, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_20();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A21698;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasEmbeddings.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 20));
  sub_1C8786744(v7, v8, &qword_1EC2B64A8, &unk_1C8BE7670);
  v9 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearEmbeddings()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  OUTLINED_FUNCTION_8_0(*(v0 + 24));

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A217F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.originalUtterance.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_37_6(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearOriginalUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  OUTLINED_FUNCTION_8_0(*(v0 + 28));

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A219AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.normalisedUtterance.modify()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_37_6(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearNormalisedUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 32));
  sub_1C8786744(v9, v10, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v11 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v11[5]);
    OUTLINED_FUNCTION_15_2(v11[6]);
    *(a1 + v11[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t sub_1C8A21C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C8A22434(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.requestID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v2) + 32);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_4_25();
  sub_1C8A221C4(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.requestID.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_28_13(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A21E94;
}

void sub_1C8A21EBC(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1C8A22434((*a1)[4], v9);
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C8A221C4(v9, v12 + v8);
    OUTLINED_FUNCTION_26_1();
    sub_1C8A2248C();
  }

  else
  {
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C8A221C4(v10, v12 + v8);
    OUTLINED_FUNCTION_26_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasRequestID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 32));
  sub_1C8786744(v7, v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 36));
  sub_1C8786744(v9, v10, &qword_1EC2B6038, &unk_1C8BE8850);
  v11 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v11 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v13) = qword_1EDACCB68;
    v14 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    return sub_1C8A221C4(v1, a1);
  }

  return result;
}

uint64_t sub_1C8A221C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.turnInput.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v2) + 36);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_25();
  sub_1C8A221C4(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Cati_CATIRequest.turnInput.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[1] = v4;
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v0[2] = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  v0[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_28_13(v8);
  OUTLINED_FUNCTION_32_0(*(v9 + 36));
  v10 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v10, v11, v5);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v5 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(v7 + v13) = qword_1EDACCB68;
    v14 = OUTLINED_FUNCTION_109();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v5);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v4, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    sub_1C8A221C4(v4, v7);
  }

  return sub_1C8A2240C;
}

uint64_t sub_1C8A22434(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C8A2248C()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hasTurnInput.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 36));
  sub_1C8786744(v7, v8, &qword_1EC2B6038, &unk_1C8BE8850);
  v9 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Cati_CATIRequest.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  v4 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_447(v4);
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_447(v7);
  v8 = v3[9];
  v9 = type metadata accessor for Siri_Nlu_External_TurnInput(0);

  return __swift_storeEnumTagSinglePayload(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C8A2275C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE630);
  __swift_project_value_buffer(v0, qword_1EC2BE630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embeddings";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "original_utterance";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "normalised_utterance";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_id";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "turn_input";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Cati_CATIRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE630);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8A22B50(v6, v7, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_8();
        sub_1C8A22C04(v22, v23, v24, v25);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8A22C68(v14, v15, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8A22CCC(v18, v19, v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8A22D80(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A22B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8A24040(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A22CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8A24040(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A22D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A24040(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v41 = v8;
  v9 = OUTLINED_FUNCTION_86();
  v42 = type metadata accessor for Siri_Nlu_External_TurnInput(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v39 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v43 = v15;
  v16 = OUTLINED_FUNCTION_86();
  v44 = type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v40 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_74();
  v23 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v27 = v26 - v25;
  v28 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  v29 = OUTLINED_FUNCTION_13(v28[5]);
  sub_1C8786744(v29, v30, &qword_1EC2B64A8, &unk_1C8BE7670);
  v31 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v31, v32, v23) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8A221C4(v5, v27);
    sub_1C8A24040(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C8A2248C();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + v28[6] + 8))
  {
    result = sub_1C8BD4DDC();
    v34 = v44;
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v34 = v44;
  }

  if (!*(v3 + v28[7] + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    sub_1C8786744(v3 + v28[8], v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v43, 1, v34) == 1)
    {
      sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8A221C4(v43, v40);
      v35 = sub_1C8A24040(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
      OUTLINED_FUNCTION_39_5(v40, 4, v36, v35);
      result = sub_1C8A2248C();
      if (v4)
      {
        return result;
      }
    }

    sub_1C8786744(v3 + v28[9], v41, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
    {
      sub_1C8778ED8(v41, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8A221C4(v41, v39);
      v37 = sub_1C8A24040(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      OUTLINED_FUNCTION_39_5(v39, 5, v38, v37);
      result = sub_1C8A2248C();
      if (v4)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Cati_CATIRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v94 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v96 = v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v99 = v11;
  v12 = OUTLINED_FUNCTION_86();
  v102 = type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v95 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_81();
  v100 = v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_81();
  v103 = v20;
  v21 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v26);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v94 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v94 - v32;
  v104 = type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  v105 = a1;
  v34 = *(v104 + 20);
  v35 = *(v30 + 56);
  sub_1C8786744(a1 + v34, v33, &qword_1EC2B64A8, &unk_1C8BE7670);
  v36 = a2 + v34;
  v37 = a2;
  sub_1C8786744(v36, &v33[v35], &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_65(v33);
  if (v38)
  {
    OUTLINED_FUNCTION_65(&v33[v35]);
    if (v38)
    {
      sub_1C8778ED8(v33, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_14;
    }

LABEL_9:
    v39 = &qword_1EC2B64E0;
    v40 = &unk_1C8BE7880;
    v41 = v33;
LABEL_10:
    sub_1C8778ED8(v41, v39, v40);
    goto LABEL_11;
  }

  sub_1C8786744(v33, v29, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_65(&v33[v35]);
  if (v38)
  {
    sub_1C8A2248C();
    goto LABEL_9;
  }

  sub_1C8A221C4(&v33[v35], v25);
  v44 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v29, v25);
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v33, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v44 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v45 = v104;
  v46 = v105;
  OUTLINED_FUNCTION_35_7();
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_11;
    }

    v51 = *v49 == *v50 && v47 == v48;
    if (!v51 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v48)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_7();
  if (v52)
  {
    if (!v53)
    {
      goto LABEL_11;
    }

    v56 = *v54 == *v55 && v52 == v53;
    if (!v56 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v53)
  {
    goto LABEL_11;
  }

  v57 = *(v45 + 32);
  v58 = *(v101 + 48);
  v59 = v103;
  OUTLINED_FUNCTION_27(v46 + v57, v103);
  OUTLINED_FUNCTION_27(v37 + v57, v59 + v58);
  v60 = OUTLINED_FUNCTION_120();
  v61 = v102;
  OUTLINED_FUNCTION_76(v60, v62, v102);
  if (v38)
  {
    v63 = OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_76(v63, v64, v61);
    if (v38)
    {
      sub_1C8778ED8(v59, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_42;
    }

LABEL_40:
    v39 = &qword_1EC2B5EE8;
    v40 = &unk_1C8BE6F90;
LABEL_51:
    v41 = v59;
    goto LABEL_10;
  }

  v65 = v100;
  sub_1C8786744(v59, v100, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v66 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_76(v66, v67, v61);
  if (v68)
  {
    sub_1C8A2248C();
    goto LABEL_40;
  }

  v69 = v59 + v58;
  v70 = v95;
  sub_1C8A221C4(v69, v95);
  v71 = static Siri_Nlu_External_UUID.== infix(_:_:)(v65, v70);
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v59, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_42:
  v72 = *(v45 + 36);
  v73 = *(v97 + 48);
  v74 = v99;
  OUTLINED_FUNCTION_27(v46 + v72, v99);
  v75 = v37 + v72;
  v59 = v74;
  OUTLINED_FUNCTION_27(v75, v74 + v73);
  v76 = OUTLINED_FUNCTION_109();
  v77 = v98;
  OUTLINED_FUNCTION_76(v76, v78, v98);
  if (v38)
  {
    v79 = OUTLINED_FUNCTION_29_8();
    OUTLINED_FUNCTION_76(v79, v80, v77);
    if (v38)
    {
      sub_1C8778ED8(v74, &qword_1EC2B6038, &unk_1C8BE8850);
LABEL_55:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_14_13();
      sub_1C8A24040(v92, v93, MEMORY[0x1E69AAC10]);
      v42 = sub_1C8BD517C();
      return v42 & 1;
    }

    goto LABEL_50;
  }

  v81 = v96;
  sub_1C8786744(v74, v96, &qword_1EC2B6038, &unk_1C8BE8850);
  v82 = OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_76(v82, v83, v77);
  if (v84)
  {
    sub_1C8A2248C();
LABEL_50:
    v39 = &qword_1EC2B6040;
    v40 = &unk_1C8BE6CF0;
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_0_25();
  v85 = v74 + v73;
  v86 = v94;
  sub_1C8A221C4(v85, v94);
  if (*(v81 + *(v77 + 20)) != *(v86 + *(v77 + 20)))
  {

    OUTLINED_FUNCTION_218();
    sub_1C88AD618();
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      sub_1C8A2248C();
      sub_1C8A2248C();
      v39 = &qword_1EC2B6038;
      v40 = &unk_1C8BE8850;
      goto LABEL_51;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_14_13();
  sub_1C8A24040(v89, v90, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_220();
  v91 = sub_1C8BD517C();
  sub_1C8A2248C();
  sub_1C8A2248C();
  sub_1C8778ED8(v59, &qword_1EC2B6038, &unk_1C8BE8850);
  if (v91)
  {
    goto LABEL_55;
  }

LABEL_11:
  v42 = 0;
  return v42 & 1;
}

uint64_t Siri_Nlu_Internal_Cati_CATIRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
  sub_1C8A24040(&qword_1EC2BE648, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A23C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A24040(&qword_1EC2BE678, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A23C94(uint64_t a1)
{
  v2 = sub_1C8A24040(&qword_1EC2BE658, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A23D04(uint64_t a1, uint64_t a2)
{
  sub_1C8A24040(&qword_1EC2BE658, type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Cati_CATIRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A23ECC(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A23FEC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    if (v2 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v3 <= 0x3F)
      {
        sub_1C8A23FEC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
        if (v4 <= 0x3F)
        {
          sub_1C8A23FEC(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A23FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C8A24040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_37_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.getter()
{
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v0 + v1) + 16, v3);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.setter()
{
  OUTLINED_FUNCTION_731();
  v4 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0);
  v5 = OUTLINED_FUNCTION_41_1(v4);
  v7 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A26250(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_178_0(v7 + 16, v6);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
}

void (*Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 16, v1);
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1C8A24290;
}

void sub_1C8A24290(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    Siri_Nlu_Internal_Overrides_OverridesRequest.utterance.setter();
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      OUTLINED_FUNCTION_11_22();
      v11 = OUTLINED_FUNCTION_2();
      v8 = sub_1C8A26250(v11);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
  }

  free(v2);
}

BOOL Siri_Nlu_Internal_Overrides_OverridesRequest.hasUtterance.getter()
{
  OUTLINED_FUNCTION_7_25();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277(v2 + 16, v4);
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_OverridesRequest.clearUtterance()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v4 = sub_1C8A26250(v4);
    *(v0 + v1) = v4;
  }

  OUTLINED_FUNCTION_178_0(v4 + 16, v3);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(v6);
  OUTLINED_FUNCTION_277(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain, v11);
  OUTLINED_FUNCTION_49_8();
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_65(v2);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v8 + 24));
    OUTLINED_FUNCTION_18_2(*(v8 + 28));
    result = OUTLINED_FUNCTION_65(v2);
    if (!v9)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_23_16();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A26250(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_0_26();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_Overrides_OverridesRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v0 + v11) + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain, v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v7 + 24));
    OUTLINED_FUNCTION_26(*(v7 + 28));
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    sub_1C87977A8();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.matchingSpans.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8A248EC(uint64_t *a1)
{
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v1 + v3) + *a1, v5);
}

uint64_t sub_1C8A2496C(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v10 = *(v3 + v4);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v11 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8A26250(v11);
    OUTLINED_FUNCTION_40(v12);
  }

  v13 = *a2;
  OUTLINED_FUNCTION_178_0(v10 + v13, v9);
  *(v10 + v13) = v2;
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.systemDialogActs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-v3 - 8];
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v0 + v5) + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext, v17);
  OUTLINED_FUNCTION_49_8();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_65(v4);
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_65(v4);
    if (!v6)
    {
      return sub_1C8778ED8(v4, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C8A24BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8A265D8();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_23_16();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A26250(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_3_21();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_Overrides_OverridesRequest.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v3[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v0 + v9) + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext, v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_0_0();
    if (!v10)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    sub_1C87977A8();
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C8A24EE0(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C8A265D8();
    a3(v6);
    sub_1C8A26630();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_1C8A24FC0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_731();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13 - 8];
  OUTLINED_FUNCTION_7_25();
  OUTLINED_FUNCTION_277(*(v5 + v15) + *a3, v21);
  sub_1C8778810();
  v16 = a4(0);
  OUTLINED_FUNCTION_76(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1C8778ED8(v14, v6, v4);
  return v18;
}

uint64_t sub_1C8A250C4(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_731();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_11_22();
    v11 = OUTLINED_FUNCTION_2();
    *(v4 + v10) = sub_1C8A26250(v11);
  }

  a3(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.inputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_7_25();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  OUTLINED_FUNCTION_22_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A252A4(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {

    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_11_22();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C8A26250(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    swift_beginAccess();
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  if (qword_1EC2B5CB0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2BE698;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_34_9();
  v4 = (v1 + v3);

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_34_9();
  *(v1 + 32) = v3;
  v4 = (v0 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v5;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearUtterance()()
{
  OUTLINED_FUNCTION_34_9();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_200();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_13(v11);
  sub_1C8778810();
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v7 + 24));
    OUTLINED_FUNCTION_26(*(v7 + 28));
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    sub_1C87977A8();
  }

  return sub_1C8A2581C;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.matchingSpans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_200();
  sub_1C87977A8();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 32);
  sub_1C8778810();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *&v10[v12] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
    sub_1C87977A8();
  }

  return sub_1C8A25B14;
}

void sub_1C8A25B3C()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1C8A265D8();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C87977A8();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1C8A26630();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C87977A8();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.hasTurnInput.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v4);
  OUTLINED_FUNCTION_13(*(v5 + 32));
  OUTLINED_FUNCTION_262();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v6 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v11, v12, &unk_1C8BE8850);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v0);
  return nullsub_1;
}

uint64_t sub_1C8A25E80()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE680);
  __swift_project_value_buffer(v0, qword_1EC2BE680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "matching_spans";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "system_dialog_acts";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "turn_context";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "inputs";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A26170()
{
  type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C8A261B0();
  qword_1EC2BE698 = result;
  return result;
}

uint64_t sub_1C8A261B0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain;
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs) = v3;
  v4 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v5 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs) = v3;
  return v0;
}

uint64_t sub_1C8A26250(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23[2] = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs) = v9;
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v23[1] = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext;
  v12 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs) = v9;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();

  sub_1C8786514();
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v8) = v17;

  v18 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
  swift_beginAccess();
  v19 = *(a1 + v18);
  swift_beginAccess();
  *(v1 + v10) = v19;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
  swift_beginAccess();
  v21 = *(a1 + v20);

  swift_beginAccess();
  *(v1 + v13) = v21;

  return v1;
}

uint64_t sub_1C8A265D8()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

uint64_t sub_1C8A26630()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A26684()
{

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__turnContext, &qword_1EC2B6010, &unk_1C8BF5040);

  return v0;
}

uint64_t sub_1C8A26714()
{
  v0 = sub_1C8A26684();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A26250(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C8A26808(v10, a1, a2, a3);
}

uint64_t sub_1C8A26808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8793380(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8A26920(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C8A269FC(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C8A26AD8(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C8A26BB4(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C8A26C90(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A26920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A269FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A26AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776AE8(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A26BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  sub_1C8776AE8(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A26C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Overrides_OverridesRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest(0);
  result = sub_1C8A26DD8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A26DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v19 = v18 - v7;
  v20 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  MEMORY[0x1EEE9AC00](v20);
  v18[1] = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v18 - v10;
  v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  if (!*(a1 + 24) || (, sub_1C8BD4DDC(), result = , !v4))
  {
    swift_beginAccess();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1C8778ED8(v11, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87977A8();
      sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C8A26630();
      if (v4)
      {
        return result;
      }
    }

    v14 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
    swift_beginAccess();
    if (!*(*(a1 + v14) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v4))
    {
      v15 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__systemDialogActs;
      swift_beginAccess();
      if (!*(*(a1 + v15) + 16) || (type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), sub_1C8776AE8(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct), , sub_1C8BD4E0C(), result = , !v4))
      {
        swift_beginAccess();
        v16 = v19;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
        {
          sub_1C8778ED8(v16, &qword_1EC2B6010, &unk_1C8BF5040);
        }

        else
        {
          sub_1C87977A8();
          sub_1C8776AE8(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);
          sub_1C8BD4E2C();
          result = sub_1C8A26630();
          if (v4)
          {
            return result;
          }
        }

        v17 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
        result = swift_beginAccess();
        if (*(*(a1 + v17) + 16))
        {
          type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
          sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

          sub_1C8BD4E0C();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Overrides_OverridesRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_7_25();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1C8A2746C(v3, v4);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_26();
  sub_1C8776AE8(v6, v7, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A2746C(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0);
  MEMORY[0x1EEE9AC00](v64);
  v6 = &v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v60 - v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - v19;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 24);
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_25;
    }

    v24 = v22 == *(a2 + 16) && v21 == v23;
    if (!v24 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_10:
    v60 = v6;
    v62 = a2;
    swift_beginAccess();
    v25 = v62;
    sub_1C8778810();
    swift_beginAccess();
    v26 = *(v13 + 48);
    sub_1C8778810();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v15, 1, v11) == 1)
    {

      sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
      if (__swift_getEnumTagSinglePayload(&v15[v26], 1, v11) == 1)
      {
        sub_1C8778ED8(v15, &qword_1EC2B6048, &unk_1C8BE6F80);
LABEL_18:
        v30 = a1;
        v31 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
        swift_beginAccess();
        v32 = *(a1 + v31);
        v33 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__matchingSpans;
        swift_beginAccess();
        v34 = *(v25 + v33);

        sub_1C87D27C0(v32, v34);
        v36 = v35;

        if (v36)
        {
          swift_beginAccess();
          swift_beginAccess();

          sub_1C87D7384();
          v38 = v37;

          if (v38)
          {
            swift_beginAccess();
            v39 = v30;
            v40 = v65;
            sub_1C8778810();
            swift_beginAccess();
            v41 = *(v64 + 48);
            v42 = v60;
            sub_1C8778810();
            sub_1C8778810();
            v43 = v66;
            if (__swift_getEnumTagSinglePayload(v42, 1, v66) == 1)
            {
              sub_1C8778ED8(v40, &qword_1EC2B6010, &unk_1C8BF5040);
              if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v43) == 1)
              {
                sub_1C8778ED8(v42, &qword_1EC2B6010, &unk_1C8BF5040);
                v44 = v62;
LABEL_31:
                v49 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
                swift_beginAccess();
                v50 = *(v39 + v49);
                v51 = OBJC_IVAR____TtCV12SiriNLUTypes44Siri_Nlu_Internal_Overrides_OverridesRequestP33_345BDC70AE42E869E0DF09815504FB2E13_StorageClass__inputs;
                swift_beginAccess();
                v52 = *(v44 + v51);

                sub_1C87E30D0(v50, v52, v53, v54, v55, v56, v57, v58, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
                v45 = v59;

                return v45 & 1;
              }

              goto LABEL_29;
            }

            sub_1C8778810();
            if (__swift_getEnumTagSinglePayload(v42 + v41, 1, v43) == 1)
            {
              sub_1C8778ED8(v40, &qword_1EC2B6010, &unk_1C8BF5040);
              sub_1C8A26630();
LABEL_29:
              sub_1C8778ED8(v42, &qword_1EC2B6018, &qword_1C8BE6CD0);

              goto LABEL_24;
            }

            sub_1C87977A8();
            static Siri_Nlu_External_TurnContext.== infix(_:_:)();
            v48 = v47;
            sub_1C8A26630();
            sub_1C8778ED8(v40, &qword_1EC2B6010, &unk_1C8BF5040);
            sub_1C8A26630();
            sub_1C8778ED8(v42, &qword_1EC2B6010, &unk_1C8BF5040);
            v44 = v62;
            if (v48)
            {
              goto LABEL_31;
            }
          }
        }

LABEL_23:

LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v27 = v68;
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(&v15[v26], 1, v11) != 1)
      {
        v28 = v67;
        sub_1C87977A8();

        v29 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v27, v28);
        sub_1C8A26630();
        sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
        sub_1C8A26630();
        v25 = v62;
        sub_1C8778ED8(v15, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v29 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      sub_1C8778ED8(v20, &qword_1EC2B6048, &unk_1C8BE6F80);
      sub_1C8A26630();
    }

    sub_1C8778ED8(v15, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_23;
  }

  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_25:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C8A27DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AE8(&qword_1EC2BE740, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A27E64(uint64_t a1)
{
  v2 = sub_1C8776AE8(&qword_1EC2BE6F8, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A27ED4(uint64_t a1, uint64_t a2)
{
  sub_1C8776AE8(&qword_1EC2BE6F8, type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_OverridesRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A27F70()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE6A0);
  __swift_project_value_buffer(v0, qword_1EC2BE6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "matching_spans";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "turn_input";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A281E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v25 - v8;
  v26 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v25 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v29 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  if (!*(v3 + *(v29 + 24) + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    v27 = a2;
    v18 = v3;
    sub_1C8778810();
    OUTLINED_FUNCTION_33_3();
    if (__swift_getEnumTagSinglePayload(v19, v20, v21) == 1)
    {
      sub_1C8778ED8(v15, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87977A8();
      sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C8A26630();
      if (v4)
      {
        return result;
      }

      v18 = v3;
    }

    v22 = v28;
    if (!*(*v18 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776AE8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v4))
    {
      sub_1C8778810();
      v23 = OUTLINED_FUNCTION_120();
      if (__swift_getEnumTagSinglePayload(v23, v24, v26) == 1)
      {
        sub_1C8778ED8(v22, &qword_1EC2B6038, &unk_1C8BE8850);
      }

      else
      {
        sub_1C87977A8();
        sub_1C8776AE8(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
        sub_1C8BD4E2C();
        result = sub_1C8A26630();
        if (v4)
        {
          return result;
        }
      }

      return sub_1C8BD49DC();
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v64 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v62 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_33();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 24);
  v26 = (v4 + v25);
  v27 = *(v4 + v25 + 8);
  v28 = (v2 + v25);
  v29 = v28[1];
  if (!v27)
  {
    if (v29)
    {
      goto LABEL_36;
    }

LABEL_10:
    v60 = v0;
    v65 = v2;
    v61 = v4;
    OUTLINED_FUNCTION_262();
    v31 = v65;
    OUTLINED_FUNCTION_262();
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v32, v33, v34);
    if (v30)
    {
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_76(v35, v36, v37);
      if (v30)
      {
        sub_1C8778ED8(v24, &qword_1EC2B6048, &unk_1C8BE6F80);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_33_3();
      OUTLINED_FUNCTION_76(v38, v39, v40);
      if (!v41)
      {
        sub_1C87977A8();
        v45 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v21, v17);
        sub_1C8A26630();
        sub_1C8A26630();
        sub_1C8778ED8(v24, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v45 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_21:
        sub_1C87D27C0(*v61, *v31);
        if ((v46 & 1) == 0)
        {
          goto LABEL_36;
        }

        v47 = *(v11 + 48);
        v48 = v60;
        OUTLINED_FUNCTION_262();
        OUTLINED_FUNCTION_262();
        v49 = v64;
        OUTLINED_FUNCTION_76(v48, 1, v64);
        if (v30)
        {
          OUTLINED_FUNCTION_76(v48 + v47, 1, v49);
          if (v30)
          {
            sub_1C8778ED8(v48, &qword_1EC2B6038, &unk_1C8BE8850);
            goto LABEL_35;
          }
        }

        else
        {
          v50 = v63;
          sub_1C8778810();
          OUTLINED_FUNCTION_76(v48 + v47, 1, v49);
          if (!v51)
          {
            OUTLINED_FUNCTION_1_18();
            v52 = v62;
            sub_1C87977A8();
            if (*&v50[*(v49 + 20)] == *(v52 + *(v49 + 20)) || (, , OUTLINED_FUNCTION_218(), sub_1C88AD618(), v54 = v53, , , (v54 & 1) != 0))
            {
              sub_1C8BD49FC();
              OUTLINED_FUNCTION_4_26();
              sub_1C8776AE8(v55, v56, MEMORY[0x1E69AAC10]);
              v57 = sub_1C8BD517C();
              sub_1C8A26630();
              sub_1C8A26630();
              sub_1C8778ED8(v48, &qword_1EC2B6038, &unk_1C8BE8850);
              if ((v57 & 1) == 0)
              {
                goto LABEL_36;
              }

LABEL_35:
              sub_1C8BD49FC();
              OUTLINED_FUNCTION_4_26();
              sub_1C8776AE8(v58, v59, MEMORY[0x1E69AAC10]);
              sub_1C8BD517C();
              goto LABEL_36;
            }

            sub_1C8A26630();
            sub_1C8A26630();
            v42 = &qword_1EC2B6038;
            v43 = &unk_1C8BE8850;
            goto LABEL_31;
          }

          sub_1C8A26630();
        }

        v42 = &qword_1EC2B6040;
        v43 = &unk_1C8BE6CF0;
LABEL_31:
        v44 = v48;
        goto LABEL_19;
      }

      sub_1C8A26630();
    }

    v42 = &qword_1EC2B6050;
    v43 = &qword_1C8BE6D00;
    v44 = v24;
LABEL_19:
    sub_1C8778ED8(v44, v42, v43);
    goto LABEL_36;
  }

  if (v29)
  {
    v30 = *v26 == *v28 && v27 == v29;
    if (v30 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_36:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A28CF4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776AE8(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A28DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776AE8(&qword_1EC2BE738, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A28E3C(uint64_t a1)
{
  v2 = sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A28EAC(uint64_t a1, uint64_t a2)
{
  sub_1C8776AE8(&qword_1EC2BE708, type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing, &protocol conformance descriptor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A29194(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Overrides_OverridesRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A29218(uint64_t a1)
{
  sub_1C8A294C0(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v3 <= 0x3F)
      {
        sub_1C8A294C0(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C8A294C0(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A2937C(uint64_t a1)
{
  sub_1C8A294C0(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C8A294C0(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C8A294C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(uint64_t a1)
{
  result = qword_1EC2BE780;
  if (!qword_1EC2BE780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A295E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceSetup.locale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceSetup.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1C8A298B0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE748);
  __swift_project_value_buffer(v0, qword_1EC2BE748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "locale";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceSetup._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5CC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE748);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8A29B2C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(v3 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20) + 8))
  {
    return sub_1C8BD49DC();
  }

  result = sub_1C8BD4DDC();
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceSetup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_1C8BD49FC();
    sub_1C8776B30(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceSetup.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup(0);
  sub_1C8776B30(&qword_1EC2BE760, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A29DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B30(&qword_1EC2BE790, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A29E64(uint64_t a1)
{
  v2 = sub_1C8776B30(&qword_1EC2BE770, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A29ED4(uint64_t a1, uint64_t a2)
{
  sub_1C8776B30(&qword_1EC2BE770, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceSetup, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceSetup);

  return sub_1C8BD4CFC();
}

void sub_1C8A2A09C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8A2A120(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8786744(v3 + *(v10 + 24), v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87A5594(v6, v9, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8A32CE4(v9, 2, type metadata accessor for Siri_Nlu_External_UUID);
    result = sub_1C87A9A38(v9, type metadata accessor for Siri_Nlu_External_UUID);
    if (v2)
    {
      return result;
    }
  }

  type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
  sub_1C87A4F90(qword_1EDACA548, v12, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
  return sub_1C8BD49DC();
}

uint64_t sub_1C8A2A314(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v36 - v4;
  v39 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v36 - v7;
  v41 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup;
  swift_beginAccess();
  v16 = a1;
  sub_1C8786744(a1 + v15, v11, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C8778ED8(v11, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    v17 = v43;
  }

  else
  {
    sub_1C87A5594(v11, v14, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    v18 = v43;
    sub_1C8A32D80();
    v17 = v18;
    result = sub_1C87A9A38(v14, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup);
    if (v18)
    {
      return result;
    }
  }

  v20 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  swift_beginAccess();
  if (!*(*(a1 + v20) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C87A4F90(qword_1EDACA548, v21, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACB7D8, 255, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate), , sub_1C8BD507C(), result = , !v17))
  {
    v22 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
    swift_beginAccess();
    if (!*(*(a1 + v22) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v23, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), , sub_1C8BD507C(), result = , !v17))
    {
      v24 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
      swift_beginAccess();
      if (!*(*(a1 + v24) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_Task(0), sub_1C87A4F90(qword_1EDACA548, v25, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACCF18, 255, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), , sub_1C8BD507C(), result = , !v17))
      {
        v26 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
        swift_beginAccess();
        if (!*(*(a1 + v26) + 16) || (type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor(), type metadata accessor for Siri_Nlu_External_AsrHypothesis(0), sub_1C87A4F90(qword_1EDACA548, v27, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348), sub_1C87A4F90(&qword_1EDACC330, 255, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis), , sub_1C8BD507C(), result = , !v17))
        {
          v28 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
          swift_beginAccess();
          v29 = a1 + v28;
          v30 = v42;
          sub_1C8786744(v29, v42, &qword_1EC2B6010, &unk_1C8BF5040);
          if (__swift_getEnumTagSinglePayload(v30, 1, v41) == 1)
          {
            sub_1C8778ED8(v30, &qword_1EC2B6010, &unk_1C8BF5040);
          }

          else
          {
            v31 = v38;
            sub_1C87A5594(v30, v38, type metadata accessor for Siri_Nlu_External_TurnContext);
            sub_1C8A32D80();
            result = sub_1C87A9A38(v31, type metadata accessor for Siri_Nlu_External_TurnContext);
            if (v17)
            {
              return result;
            }
          }

          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          v32 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
          swift_beginAccess();
          v33 = v16 + v32;
          v34 = v40;
          sub_1C8786744(v33, v40, &qword_1EC2B6EF0, &unk_1C8BEBC70);
          if (__swift_getEnumTagSinglePayload(v34, 1, v39) == 1)
          {
            sub_1C8778ED8(v34, &qword_1EC2B6EF0, &unk_1C8BEBC70);
          }

          else
          {
            v35 = v37;
            sub_1C87A5594(v34, v37, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            sub_1C8A32CE4(v35, 10, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            result = sub_1C87A9A38(v35, type metadata accessor for Siri_Nlu_External_CorrectionOutcome);
            if (v17)
            {
              return result;
            }
          }

          return swift_beginAccess();
        }
      }
    }
  }

  return result;
}