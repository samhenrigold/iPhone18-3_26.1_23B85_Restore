void Tensor.gatheringND(atIndices:batchDimensionCount:)()
{
  OUTLINED_FUNCTION_9_18();
  v5 = v4;
  v7 = v6;
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v11 = *v7;
  v12 = *v0;
  v13 = *(*(v11 + 16) + 160);
  if (!sub_25BAA80BC(v13, &unk_286D427E8))
  {
    LOBYTE(v51) = v13;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_34();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    v47 = &v51;
    v48 = v1;
    OUTLINED_FUNCTION_10_30(v39, xmmword_25BCC8F40);
    OUTLINED_FUNCTION_3_40();
    sub_25BADDD28(v40, v41, v42, v43, v44, v45, 474);
  }

  *&v51 = v11;
  v50[0] = 2;
  v14 = OUTLINED_FUNCTION_69_5();
  v15(v14);
  Tensor.cast(to:roundingRule:)();
  (*(v9 + 8))(v3, v2);
  v16 = v47;

  sub_25BC00150(v11, v5, v12, &v47);
  LOBYTE(v48) = *(*(v12 + 16) + 160);
  OUTLINED_FUNCTION_22();
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  v18 = sub_25BAAF074(sub_25BC02B8C, v17);
  v20 = v19;

  v50[55] = 0;
  OUTLINED_FUNCTION_32_17("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v52 = 2;
  v53 = xmmword_25BCCB490;
  OUTLINED_FUNCTION_84_3("init(id:operator:operand:indices:resultDescriptor:creationSite:backward:)");
  swift_allocObject();
  OUTLINED_FUNCTION_80_5();
  v47 = v18;
  v48 = v20;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78_5();
  sub_25BC3D944(v21, v22, v23, v24, v25, v26, v27, v28, &v47, &v51, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v12;
  *(inited + 40) = v16;

  v30 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v30, v31, v32, v33, 508, v34, 43, 2u, v35);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v50, &v49);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v47);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v47);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v47) = v36;
  OUTLINED_FUNCTION_19();
  v37 = OUTLINED_FUNCTION_66_5();
  sub_25BC0FB20(v37);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v38);
  sub_25BAA6EB0();

  OUTLINED_FUNCTION_98_2();

  sub_25BA9C2C8(v50);
  *v46 = v38;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBFEAA4(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 3)
  {
    v16[11] = v2;
    v16[12] = v3;
    v6 = *(a2 + 32);
    v15 = *(result + 32);
    v5 = v15;
    swift_retain_n();

    Tensor.init(zerosLike:)(&v15);
    v7 = v16[0];
    v14 = v16[0];
    v15 = v5;
    v13 = v6;
    Tensor.replacing(with:where:)(&v14, &v13, v16);
    v8 = v16[0];
    v14 = v5;
    v15 = v7;
    v13 = v6;
    Tensor.replacing(with:where:)(&v14, &v13, v16);
    v9 = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25BCBAE70;
    *(v10 + 32) = v9;

    *(v10 + 40) = sub_25BAC42B0();
    *(v10 + 48) = v11;
    *(v10 + 56) = v8;

    *(v10 + 64) = sub_25BAC42B0();
    *(v10 + 72) = v12;

    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

void Tensor.gathering(atIndices:alongAxis:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = v3;
  v6 = v5;
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v10 = *v6;
  v11 = *v0;
  v12 = *(v10 + 16);
  v13 = *(v12 + 160);
  if (!sub_25BAA80BC(v13, &unk_286D427E8))
  {
    LOBYTE(v63) = v13;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_34();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    v53 = &v63;
    *&v54 = v10;
    OUTLINED_FUNCTION_10_30(v44, xmmword_25BCC8F40);
    OUTLINED_FUNCTION_3_40();
    v51 = 389;
    goto LABEL_11;
  }

  v14 = *(*(v12 + 152) + 16);
  v15 = *(*(*(v11 + 16) + 152) + 16);
  if (v14 != v15)
  {
    v53 = *(*(v12 + 152) + 16);
    v54 = xmmword_25BCC8F40;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    v56 = v15;
    v59 = 6;
    v60 = 6;
    OUTLINED_FUNCTION_3_40();
    v51 = 390;
    goto LABEL_11;
  }

  if (-v14 > v4 || v14 <= v4)
  {
    v53 = v4;
    v54 = xmmword_25BCC8F40;
    v55 = 0;
    v57 = 0;
    v58 = 0;
    v56 = v14;
    v59 = 6;
    v60 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_11:
    sub_25BADDD28(v45, v46, v47, v48, v49, v50, v51);
  }

  v17 = (v14 & (v4 >> 63)) + v4;
  *&v63 = v10;
  v62[0] = 2;
  v18 = OUTLINED_FUNCTION_69_5();
  v19(v18);
  Tensor.cast(to:roundingRule:)();
  (*(v8 + 8))(v2, v1);
  v20 = v53;
  v21 = *(*(v11 + 16) + 160);
  v53 = *(*(v53 + 2) + 152);
  LOBYTE(v54) = v21;
  OUTLINED_FUNCTION_22();
  v22 = swift_allocObject();
  *(v22 + 16) = v17;

  sub_25BCB617C();
  v23 = sub_25BAAF074(sub_25BC02BBC, v22);
  v25 = v24;

  v62[55] = 0;
  OUTLINED_FUNCTION_32_17("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v64 = 2;
  v65 = xmmword_25BCCB490;
  OUTLINED_FUNCTION_84_3("init(id:operator:operand:indices:resultDescriptor:creationSite:backward:)");
  swift_allocObject();
  OUTLINED_FUNCTION_80_5();
  v53 = v23;
  *&v54 = v25;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78_5();
  sub_25BC3D944(v26, v27, v28, v29, v30, v31, v32, v33, &v53, &v63, v53, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25BCBAE70;
  *(v34 + 32) = v11;
  *(v34 + 40) = v20;

  v35 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v35, v36, v37, v38, 413, v39, 31, 2u, v40);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v62, &v61);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v53);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v53);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v53) = v41;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_22();
  sub_25BC0FB20(v42);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v43);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v62);
  *v52 = v43;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBFF0D8()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v62 = v11;
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = *v10;
  v63 = *v8;
  v19 = *v6;
  v20 = *v2;
  v21 = *(v18 + 16);
  v22 = *(v21 + 160);
  if (!sub_25BAA80BC(v22, &unk_286D427E8))
  {
    LOBYTE(v75) = v22;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_34();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    v64 = &v75;
    v65 = v13;
    OUTLINED_FUNCTION_33_17(v52, xmmword_25BCC8F40);
    OUTLINED_FUNCTION_3_40();
    v59 = 539;
    goto LABEL_11;
  }

  v23 = *(*(*(v63 + 16) + 152) + 16);
  if (*(*(v21 + 152) + 16) != v23)
  {
    v64 = *(*(v21 + 152) + 16);
    OUTLINED_FUNCTION_41_14(v23, xmmword_25BCC8F40);
    v72 = v60;
    OUTLINED_FUNCTION_3_40();
    v59 = 540;
    goto LABEL_11;
  }

  *&v75 = v18;
  v74[0] = 2;
  v24 = OUTLINED_FUNCTION_72_5();
  v25(v24);
  Tensor.cast(to:roundingRule:)();
  (*(v13 + 8))(v17, v0);
  v26 = *(v63 + 16);
  v27 = *(*(v26 + 152) + 16);
  if (-v27 > v4 || v27 <= v4)
  {
    v65 = 0;
    v66 = 0;
    v64 = v4;
    v67 = -1;
    v69 = 0;
    v70 = 0;
    v68 = v27;
    v71 = -1;
    v72 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_11:
    sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
  }

  v61 = v64;
  v29 = (v27 & (v4 >> 63)) + v4;
  v30 = *(v19 + 16);
  v31 = *(v64 + 2);
  v74[0] = v20;
  v32 = *(v30 + 160);
  v64 = *(v30 + 152);
  LOBYTE(v65) = v32;
  v33 = OUTLINED_FUNCTION_89_5(&unk_286D4F1F8);
  *(v33 + 16) = v20;
  *(v33 + 24) = v29;

  sub_25BCB617C();
  v34 = sub_25BAAF074(sub_25BC02C4C, v33);
  v36 = v35;

  v74[55] = 0;
  OUTLINED_FUNCTION_32_17("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v76 = 2;
  v77 = xmmword_25BCCB4A0;
  v78 = "init(id:operator:data:indices:updates:reductionKind:resultDescriptor:creationSite:backward:)";
  v79 = 92;
  v80 = 2;
  type metadata accessor for ScatterOperation();
  swift_allocObject();
  v37 = OUTLINED_FUNCTION_3();
  sub_25BC3E200(v37, v38, v39, v29, 0, v30, v31, v26, v74, &v64, &v75, v34, v36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v41 = OUTLINED_FUNCTION_32_11(v40);
  *(v41 + 16) = xmmword_25BCBAE90;
  *(v41 + 32) = v19;
  *(v41 + 40) = v63;
  *(v41 + 48) = v61;

  v42 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v42, v43, v44, v45, 579, v46, 53, 2u, v47);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v74, &v73);
  v48 = type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_53_9();

  sub_25BAA4AF4(&v64);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_53_9();

  sub_25BAA4AF4(&v64);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v64) = v49;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_22();
  sub_25BC108BC(v50);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_21_25(v51);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v74);
  *v62 = v48;
  OUTLINED_FUNCTION_10_16();
}

void Tensor.batchGathering(atIndices:alongAxis:batchDimensionCount:)()
{
  OUTLINED_FUNCTION_9_18();
  v77 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *v6;
  v16 = *v0;
  v17 = *(*(v15 + 16) + 160);
  if (!sub_25BAA80BC(v17, &unk_286D427E8))
  {
    LOBYTE(v86[0]) = v17;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_34();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    v78 = v86;
    v79 = v14;
    OUTLINED_FUNCTION_33_17(v66, xmmword_25BCC8F40);
    OUTLINED_FUNCTION_3_40();
    v73 = 437;
    goto LABEL_39;
  }

  v18 = *(*(*(v16 + 16) + 152) + 16);
  if (-v18 > v4 || v18 <= v4)
  {
    v78 = v4;
    OUTLINED_FUNCTION_41_14(v18, xmmword_25BCC8F40);
    v81 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_39:
    sub_25BADDD28(v67, v68, v69, v70, v71, v72, v73);
  }

  v20 = (v18 & (v4 >> 63)) + v4;
  *&v86[0] = v15;
  v83[0] = 2;
  (*(v10 + 104))(v14, *MEMORY[0x277D84660], v1);
  Tensor.cast(to:roundingRule:)();
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v22(v14, v1);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = v78;
  v78 = *(*(v16 + 16) + 152);
  TensorShape.subscript.getter(0, v20, v86);
  v23 = *(*(v14 + 16) + 152);
  v24 = *(v23 + 16);
  if (v24 < v77)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v74 = v14;
  v75 = v8;
  v1 = *&v86[0];
  v21 = sub_25BABAF60(v77, v24, v23);
  v15 = v25;
  v8 = v26;
  v14 = v27;
  v76 = v20;
  if (v27)
  {
    sub_25BCB78DC();
    OUTLINED_FUNCTION_51_0();
    swift_unknownObjectRetain_n();
    sub_25BCB617C();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(v14 >> 1, v8))
    {
      goto LABEL_33;
    }

    if (v30 != (v14 >> 1) - v8)
    {
      goto LABEL_34;
    }

    v28 = swift_dynamicCastClass();
    if (!v28)
    {

      OUTLINED_FUNCTION_51_0();
      swift_unknownObjectRelease_n();
      v14 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_25BCB617C();
  while (1)
  {
    v28 = sub_25BABA62C(v21, v15, v8, v14);
LABEL_16:
    v14 = v28;
    swift_unknownObjectRelease();

LABEL_17:
    v84 = v1;
    sub_25BAC0F84(v14);
    v31 = *(v16 + 16);
    v32 = *(*(v31 + 152) + 16);
    if (v32 >= v20 + 1)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_unknownObjectRelease();
    v20 = v76;
  }

  v33 = sub_25BABAF60(v20 + 1, v32, *(v31 + 152));
  v35 = v34;
  v37 = v36;
  v39 = v38;
  if ((v38 & 1) == 0)
  {
    sub_25BCB617C();
LABEL_20:
    v40 = sub_25BABA62C(v33, v35, v37, v39);
    goto LABEL_26;
  }

  sub_25BCB78DC();
  OUTLINED_FUNCTION_51_0();
  swift_unknownObjectRetain_n();
  sub_25BCB617C();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    v41 = MEMORY[0x277D84F90];
  }

  v42 = *(v41 + 16);

  if (__OFSUB__(v39 >> 1, v37))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v42 != (v39 >> 1) - v37)
  {
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v40 = swift_dynamicCastClass();
  if (!v40)
  {

    OUTLINED_FUNCTION_51_0();
    swift_unknownObjectRelease_n();
    v43 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_26:
  v43 = v40;
  swift_unknownObjectRelease();

LABEL_27:
  v44 = v75;
  v85 = v84;
  sub_25BAC0F84(v43);
  v45 = *(v16 + 16);
  v46 = v74;
  v47 = *(v74 + 16);
  v48 = *(v45 + 160);
  v78 = v85;
  LOBYTE(v79) = v48;

  v49 = sub_25BAAF074(sub_25BBFFC24, 0);
  v51 = v50;
  v83[55] = 0;
  OUTLINED_FUNCTION_24_0("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  *(&v86[1] + 8) = xmmword_25BCCB490;
  OUTLINED_FUNCTION_28(v52);
  type metadata accessor for GatherOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_80_5();
  v53 = OUTLINED_FUNCTION_3();
  v56 = sub_25BC3D944(v53, v54, v55, v49, v51, 1, v45, v47, &v78, v86, v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v16;
  *(inited + 40) = v46;

  v58 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v58, v59, v60, v61, 459, v62, 56, 2u, v63);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v83, &v82);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_53_9();

  v64 = v80;

  sub_25BAA4AF4(&v78);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_53_9();

  sub_25BAA4AF4(&v78);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  LOBYTE(v78) = 1;
  sub_25BC0FB20(v56);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v65 = swift_allocObject();
  OUTLINED_FUNCTION_21_25(v65);
  sub_25BAA6EB0();

  sub_25BA9C2C8(v83);
  *v44 = v64;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBFFC24(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v12 = v2;
    v13 = v3;
    v5 = *(a2 + 32);

    Tensor.expandingShape(at:)();
    v6 = v11;
    v10 = v5;

    Tensor.init(zerosLike:)(&v10);
    v10 = v6;
    scatterND(atIndices:from:onto:batchDimensionCount:reductionKind:)();
    v7 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25BCBAE50;
    *(v8 + 32) = v7;

    *(v8 + 40) = sub_25BAC42B0();
    *(v8 + 48) = v9;

    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

void scatterND(atIndices:from:onto:batchDimensionCount:reductionKind:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v50 = v3;
  v51 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_25BCB783C();
  OUTLINED_FUNCTION_1_51();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *v10;
  v18 = *v8;
  v19 = *v6;
  v20 = *v2;
  v21 = *(*(*v10 + 16) + 160);
  if (!sub_25BAA80BC(v21, &unk_286D427E8))
  {
    LOBYTE(v56) = v21;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_34();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    v52 = &v56;
    v53 = v12;
    OUTLINED_FUNCTION_10_30(v43, xmmword_25BCC8F40);
    OUTLINED_FUNCTION_3_40();
    sub_25BADDD28(v44, v45, v46, v47, v48, v49, 604);
  }

  *&v56 = v17;
  v55[0] = 2;
  v22 = OUTLINED_FUNCTION_72_5();
  v23(v22);
  Tensor.cast(to:roundingRule:)();
  (*(v12 + 8))(v16, v0);
  v24 = v52;
  v25 = *(v19 + 16);
  v26 = *(v52 + 2);
  v27 = *(v18 + 16);
  v55[0] = v20;
  v28 = *(v25 + 160);
  v52 = *(v25 + 152);
  LOBYTE(v53) = v28;
  v55[55] = 0;
  OUTLINED_FUNCTION_32_17("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  v57 = 2;
  v58 = xmmword_25BCCB4A0;
  v59 = "init(id:operator:data:indices:updates:reductionKind:resultDescriptor:creationSite:backward:)";
  v60 = 92;
  v61 = 2;
  type metadata accessor for ScatterOperation();
  swift_allocObject();

  sub_25BCB617C();
  v29 = OUTLINED_FUNCTION_3();
  sub_25BC3E200(v29, v30, v31, v50, 2, v25, v26, v27, v55, &v52, &v56, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE90;
  *(inited + 32) = v19;
  *(inited + 40) = v18;
  *(inited + 48) = v24;

  v33 = OUTLINED_FUNCTION_8_35();
  sub_25BAB524C(v33, v34, v35, v36, 615, v37, 65, 2u, v38);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v55, &v54);
  v39 = type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v52);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_59_5();

  sub_25BAA4AF4(&v52);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v52) = v40;
  OUTLINED_FUNCTION_19();
  v41 = OUTLINED_FUNCTION_66_5();
  sub_25BC108BC(v41);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_21_25(v42);
  sub_25BAA6EB0();

  OUTLINED_FUNCTION_98_2();

  sub_25BA9C2C8(v55);
  *v51 = v39;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC00150@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 16);
  v9 = *(*(v8 + 152) + 16);
  if (!v9)
  {
    goto LABEL_24;
  }

  v26[0] = *(v8 + 152);
  v12 = TensorShape.subscript.getter(v9 - 1);
  v25 = *(v8 + 152);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = v12;
  TensorShape.subscript.getter(0, a2, v26);
  v13 = *(*(v8 + 152) + 16);
  if (!v13)
  {
LABEL_24:
    v26[1] = 0;
    v26[2] = 0;
    v26[0] = -1;
    v27 = -1;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v31 = -1;
    v32 = 4;
    sub_25BCB617C();
    sub_25BADDD28("positiveAxis(fromAxis:from:rank:from:function:file:line:)", 57, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Utils/ShapeInference.swift", 102, 2, 133);
  }

  if (v13 <= a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v26[0];
  v26[0] = *(v8 + 152);
  TensorShape.subscript.getter(a2, v13 - 1, &v25);
  v14 = a2 + v4;
  if (__OFADD__(a2, v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = *(a3 + 16);
  v16 = *(*(v15 + 152) + 16);
  if (v16 < v14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a3 = v25;
  a2 = sub_25BABAF60(v14, v16, *(v15 + 152));
  v4 = v17;
  v8 = v18;
  v5 = v19;
  if ((v19 & 1) == 0)
  {
    sub_25BCB617C();
LABEL_9:
    v20 = sub_25BABA62C(a2, v4, v8, v5);
    goto LABEL_15;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  sub_25BCB617C();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v5 >> 1, v8))
  {
    goto LABEL_22;
  }

  if (v22 != (v5 >> 1) - v8)
  {
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    swift_unknownObjectRelease_n();
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

LABEL_15:
  v23 = v20;
  swift_unknownObjectRelease();

LABEL_16:
  v26[0] = v6;
  sub_25BAC0F84(a3);
  *a4 = v26[0];
  return sub_25BAC0F84(v23);
}

uint64_t sub_25BC003B0(uint64_t result, void *a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t *, uint64_t *, uint64_t *, uint64_t, char *))
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v19[9] = v4;
    v19[10] = v5;
    v9 = *(result + 32);
    v10 = a2[5];
    v18 = a2[4];
    swift_retain_n();

    Tensor.init(zerosLike:)(&v18);
    v17 = v9;
    v18 = v10;
    v16 = v19[0];
    v15 = 0;
    a4(v19, &v18, &v17, &v16, a3, &v15);
    v11 = v19[0];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v13 = OUTLINED_FUNCTION_32_11(v12);
    *(v13 + 16) = xmmword_25BCBAE50;
    *(v13 + 32) = v11;

    *(v13 + 40) = sub_25BAC42B0();
    *(v13 + 48) = v14;

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BC00544(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 != 5)
  {
LABEL_11:
    BYTE4(v21) = 0;
    sub_25BA97890("scatter(atIndices:from:onto:alongAxis:reductionKind:)", 53, 2, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/TensorTransformations.swift", 114, 2, 563, a8, v15, v16, v17, v18, v19, 0, 0, v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9], v21);
  }

  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20[0] = *(a2 + 32);
  swift_retain_n();

  Tensor.init(zerosLike:)(v20);
  sub_25BBFF0D8();

  v9 = v20[0];
  Tensor.gathering(atIndices:alongAxis:)();
  v10 = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE70;
  *(v11 + 32) = v9;

  *(v11 + 40) = sub_25BAC42B0();
  *(v11 + 48) = v12;
  *(v11 + 56) = v10;

  *(v11 + 64) = sub_25BAC42B0();
  *(v11 + 72) = v13;

  return v11;
}

uint64_t Tensor.unstacked(alongAxis:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*(*(*v1 + 16) + 152) + 16);
  if (-v3 > a1 || v3 <= a1)
  {
LABEL_15:
    v41 = 0;
    v42 = 0;
    v40 = a1;
    v43 = -1;
    v45 = 0;
    v46 = 0;
    v44 = v3;
    v47 = -1;
    v48 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v30, v31, v32, v33, v34, v35, v36);
  }

  v5 = (v3 & (a1 >> 63)) + a1;
  v39 = *(*(*v1 + 16) + 152);
  v40 = v2;
  TensorShape.subscript.getter(v5);
  Tensor.split(count:alongAxis:)();
  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v39 = MEMORY[0x277D84F90];
  sub_25BAC5590();
  v9 = 32;
  v10 = v39;
  do
  {
    v11 = *(v7 + v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    OUTLINED_FUNCTION_1_2();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
    *(v12 + 32) = v5;
    v38 = *(*(v11 + 16) + 152);

    sub_25BCB617C();
    sub_25BAB95C8(&v38, v12, &v40);

    if (!v40)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_25BCB70FC();

      OUTLINED_FUNCTION_86();
      v40 = 0xD00000000000001FLL;
      v41 = v17;
      v18 = sub_25BCB617C();
      v19 = MEMORY[0x277D83B88];
      v20 = MEMORY[0x25F876F80](v18, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v20);

      OUTLINED_FUNCTION_13_31();
      OUTLINED_FUNCTION_86_3();
      v21 = MEMORY[0x25F876F80](v12, v19);
      MEMORY[0x25F876C90](v21);

      OUTLINED_FUNCTION_10_5();
      a1 = OUTLINED_FUNCTION_43_10(v22, v23, v24, v25, v26, v27, v28, v29, 182);
      __break(1u);
      goto LABEL_15;
    }

    v37 = v40;
    v38 = v11;
    Tensor.reshaped(to:)(&v37, &v40);

    v13 = v40;
    v39 = v10;
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_81(v14);
      sub_25BAC5590();
      v10 = v39;
    }

    *(v10 + 16) = v15 + 1;
    *(v10 + 8 * v15 + 32) = v13;
    v9 += 8;
    --v8;
  }

  while (v8);

  return v10;
}

void Tensor.split(count:alongAxis:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = *v0;
  OUTLINED_FUNCTION_49_12();
  if (-v5 > v4 || v5 <= v4)
  {
    goto LABEL_20;
  }

  v8 = v3;
  v9 = (v5 & (v4 >> 63)) + v4;
  *&v51[0] = v6;
  v10 = TensorShape.subscript.getter(v9);
  if (v8 == -1)
  {
    goto LABEL_9;
  }

  if (v8)
  {
    v10 %= v8;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_44_10();
    OUTLINED_FUNCTION_122_0();
    v48[0] = 676;
  }

  else
  {
LABEL_9:
    *&v51[0] = *(*(v2 + 16) + 152);
    sub_25BCB617C();
    v11 = sub_25BCA400C(v51, v8, v9);

    if (v11)
    {
      v12 = *(v2 + 16);
      v13 = *(v11 + 16);
      if (v13)
      {
        OUTLINED_FUNCTION_74_5();
        *&v51[0] = MEMORY[0x277D84F90];
        v48[0] = v12;

        sub_25BB00520();
        v14 = 32;
        v15 = *&v51[0];
        do
        {
          v1 = *(v11 + v14);
          v9 = *(*(v2 + 16) + 160);
          *&v51[0] = v15;
          v16 = *(v15 + 16);
          v8 = *(v15 + 24);
          sub_25BCB617C();
          if (v16 >= v8 >> 1)
          {
            sub_25BB00520();
            v15 = *&v51[0];
          }

          *(v15 + 16) = v16 + 1;
          v17 = v15 + 16 * v16;
          *(v17 + 32) = v1;
          *(v17 + 40) = v9;
          v14 += 8;
          --v13;
        }

        while (v13);

        OUTLINED_FUNCTION_50_9();
        v12 = *(v18 - 256);
      }

      else
      {

        v15 = MEMORY[0x277D84F90];
      }

      v19 = OUTLINED_FUNCTION_89_5(&unk_286D4F0E8);
      *(v19 + 16) = v8;
      *(v19 + 24) = v9;
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_48_11();

      v50 = 0;
      OUTLINED_FUNCTION_64_6("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
      *(&v51[1] + 8) = xmmword_25BCCB4B0;
      v21 = OUTLINED_FUNCTION_85_5(v20);
      OUTLINED_FUNCTION_63_3(v21);
      OUTLINED_FUNCTION_80_5();
      v22 = OUTLINED_FUNCTION_3();
      v25 = sub_25BC3E894(v22, v23, v24, v12, v8, 0, v9, v15, v51, 0, v1);
      v26 = sub_25BAA51C8(*(v2 + 16) + 168, v49);
      if ((v8 & 0x8000000000000000) == 0)
      {
        MEMORY[0x28223BE20](v26);
        v48[2] = v25;
        v48[3] = v49;
        sub_25BBFC528(sub_25BC02BF4, v48, 0, v8);

        sub_25BA9C2C8(v49);
        OUTLINED_FUNCTION_10_16();
        return;
      }

      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_26_20(v4, v5);
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v27, v28, v29, v30, v31, v32, v33);
    }

    *&v51[0] = 0;
    *(&v51[0] + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_37_13();
    v34 = sub_25BCB617C();
    v35 = MEMORY[0x25F876F80](v34, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v35);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x25F876C90](v36 | 6, v37 | 0x8000000000000000);
    v38 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v38);

    OUTLINED_FUNCTION_39_15();
    v49[0] = v9;
    v39 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v39);

    OUTLINED_FUNCTION_122_0();
    v48[0] = 682;
  }

  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_43_10(v40, v41, v42, v43, v44, v45, v46, v47, v48[0]);
  __break(1u);
}

uint64_t sub_25BC00E0C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = result;
    v3 = *(result + 16);
    if (v3)
    {
      v14 = MEMORY[0x277D84F90];

      sub_25BAC5590();
      v4 = v14;
      v5 = (v2 + 32);
      v6 = *(v14 + 16);
      do
      {
        v7 = *v5;
        v13 = v4;
        v8 = *(v4 + 24);

        if (v6 >= v8 >> 1)
        {
          sub_25BAC5590();
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
        v5 += 3;
        ++v6;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    Tensor.init(concatenating:alongAxis:scalarType:)();

    v9 = sub_25BAC42B0();
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
    *(v12 + 32) = v13;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Tensor.split(sizes:alongAxis:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = *v0;
  OUTLINED_FUNCTION_49_12();
  if (!v4)
  {
LABEL_23:
    OUTLINED_FUNCTION_122_0();
    v25 = 728;
    goto LABEL_24;
  }

  if (-v4 > v3 || v4 <= v3)
  {
    OUTLINED_FUNCTION_26_20(v3, v4);
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28(v37, v38, v39, v40, v41, v42, v43);
  }

  v7 = v2;
  v8 = (v4 & (v3 >> 63)) + v3;
  *&v65[0] = v5;
  v9 = TensorShape.subscript.getter(v8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_19:
    OUTLINED_FUNCTION_122_0();
    v25 = 730;
LABEL_24:
    v60 = v25;
LABEL_27:
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_43_10(v51, v52, v53, v54, v55, v56, v57, v58, v60);
    __break(1u);
    return;
  }

  v11 = 0;
  v12 = (v7 + 32);
  v13 = *(v7 + 16);
  do
  {
    v14 = *v12++;
    v15 = __OFADD__(v11, v14);
    v11 += v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_23;
    }

    --v13;
  }

  while (v13);
  if (v9 != v11)
  {
    goto LABEL_19;
  }

LABEL_11:
  *&v65[0] = *(*(v1 + 16) + 152);
  sub_25BCB617C();
  v16 = sub_25BCA4108(v65, v7, v8);

  if (!v16)
  {
    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    OUTLINED_FUNCTION_37_13();
    v44 = sub_25BCB617C();
    v45 = MEMORY[0x277D83B88];
    v46 = MEMORY[0x25F876F80](v44, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v46);

    OUTLINED_FUNCTION_44_10();
    MEMORY[0x25F876C90](v47 | 6, v48 | 0x8000000000000000);
    v49 = MEMORY[0x25F876F80](v7, v45);
    MEMORY[0x25F876C90](v49);

    OUTLINED_FUNCTION_39_15();
    v63[0] = v8;
    v50 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v50);

    OUTLINED_FUNCTION_122_0();
    v60 = 736;
    goto LABEL_27;
  }

  v17 = *(v1 + 16);
  v18 = *(v16 + 16);
  if (v18)
  {
    v62 = v10;
    OUTLINED_FUNCTION_74_5();
    *&v65[0] = MEMORY[0x277D84F90];
    v61 = v17;

    sub_25BB00520();
    v8 = 32;
    v19 = *&v65[0];
    do
    {
      v20 = *(v16 + v8);
      v21 = *(*(v1 + 16) + 160);
      *&v65[0] = v19;
      v22 = *(v19 + 16);
      v7 = *(v19 + 24);
      sub_25BCB617C();
      if (v22 >= v7 >> 1)
      {
        sub_25BB00520();
        v19 = *&v65[0];
      }

      *(v19 + 16) = v22 + 1;
      v23 = v19 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v21;
      v8 += 8;
      --v18;
    }

    while (v18);

    OUTLINED_FUNCTION_50_9();
    v10 = *(v24 - 256);
    v17 = v61;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v26 = OUTLINED_FUNCTION_89_5(&unk_286D4F180);
  *(v26 + 16) = v10;
  *(v26 + 24) = v8;
  v27 = sub_25BAAF074(sub_25BC02C20, v26);
  v29 = v28;

  v64 = 0;
  OUTLINED_FUNCTION_64_6("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift");
  *(&v65[1] + 8) = xmmword_25BCCB4B0;
  v31 = OUTLINED_FUNCTION_85_5(v30);
  OUTLINED_FUNCTION_63_3(v31);
  sub_25BCB617C();
  v32 = OUTLINED_FUNCTION_3();
  v35 = sub_25BC3E894(v32, v33, v34, v17, v7, 1, v8, v19, v65, v27, v29);
  v36 = sub_25BAA51C8(*(v1 + 16) + 168, v63);
  MEMORY[0x28223BE20](v36);
  v59[2] = v35;
  v59[3] = v63;
  sub_25BBFC528(sub_25BC02C58, v59, 0, v10);

  sub_25BA9C2C8(v63);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC013F0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE50;
    v4 = *(v2 + 16);
    if (v4)
    {
      v12 = MEMORY[0x277D84F90];

      sub_25BAC5590();
      v5 = v12;
      v6 = (v2 + 32);
      v7 = *(v12 + 16);
      do
      {
        v8 = *v6;
        v11 = v5;
        v9 = *(v5 + 24);

        if (v7 >= v9 >> 1)
        {
          sub_25BAC5590();
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
        v6 += 3;
        ++v7;
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    Tensor.init(concatenating:alongAxis:scalarType:)();
    *(v3 + 32) = v11;

    *(v3 + 40) = sub_25BAC42B0();
    *(v3 + 48) = v10;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC01568@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  sub_25BAA51C8(a3, v21);
  sub_25BAA51C8(v21, v20);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_29_19();
  sub_25BAA4A5C(v7);

  sub_25BAA4AF4(v19);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_29_19();
  sub_25BAA4A5C(v8);

  OUTLINED_FUNCTION_21_18(v9, v10, v11, v12, v13, v14, v15, v16, v19[0], v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9]);
  sub_25BAA4AF4(v19);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_7_36();
  sub_25BC10B58(a2, v6, v20);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v17);
  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v21);
  *a4 = v17;
  return result;
}

void Tensor.init(_:scalarType:)(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  (*(a2 + 32))(&v4, a1, a2);
  Tensor.init(stacking:alongAxis:scalarType:)();
  *a3 = v5;
}

uint64_t sub_25BC017C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, char *)@<X4>, void *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  (*(v12 + 16))(v6, a1);
  v13 = sub_25BCB68DC();
  v15 = 13;
  a5(&v16, v13, a2, &v15);
  result = (*(v12 + 8))(a1, a3);
  *a6 = v16;
  return result;
}

uint64_t sub_25BC018E8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = TensorShape.subscript.modify(v7, *a3);
  *v5 = v3;
  return (v4)(v7, 0);
}

uint64_t sub_25BC01948(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v4 = *(result + 32);
    if (a3 != 1)
    {

      Tensor.split(sizes:alongAxis:)();
      v8 = v7;
      sub_25BCB617C();
      sub_25BBFC88C(v8, a2);
      v5 = v9;

      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    result = swift_allocObject();
    *(result + 16) = xmmword_25BCBAE50;
    if (*(a2 + 16))
    {
      v5 = result;
      *(result + 32) = v4;
      swift_retain_n();

      *(v5 + 40) = sub_25BAC42B0();
      *(v5 + 48) = v6;
LABEL_6:

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25BC01A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *(*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, char *)@<X4>, void *a6@<X8>)
{
  if (a3)
  {
    (*(a4 + 32))(&v12, a3, a4);
    v10 = v12;
  }

  else
  {
    v10 = 13;
  }

  v13 = v10;
  result = a5(&v14, a1, a2, &v13);
  *a6 = v14;
  return result;
}

void Tensor.concatenated(with:alongAxis:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE70;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  Tensor.init(concatenating:alongAxis:scalarType:)();
}

void Tensor.tiled(multiples:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(a1 + 16);
  v7 = 32;
  v8 = v6;
  while (v8)
  {
    v9 = *(a1 + v7);
    v7 += 8;
    --v8;
    if (v9 <= 0)
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_43_10(v10, v11, v12, 0xD000000000000022, v13, v14, v15, v16, 1052);
      __break(1u);
      break;
    }
  }

  v17 = *(*(*(v5 + 16) + 152) + 16);
  v18 = v17 - v6;
  if (v17 <= v6)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v19 = sub_25BAC0E14(1, v17 - v6);
  }

  v46 = v19;
  v20 = sub_25BCB617C();
  sub_25BAC0EB8(v20);
  v21 = v46;
  if ((v18 & 0x8000000000000000) == 0)
  {
    v22 = *(*(v5 + 16) + 152);
    sub_25BCB617C();
LABEL_21:
    v51 = v5;
    v49[0] = v22;
    Tensor.reshaped(to:)(v49, &v46);
    v29 = v46;

    sub_25BCB617C();
    v30 = sub_25BBFC694(v22, v21);

    v31 = *(*(v29 + 16) + 160);
    v46 = v30;
    v47 = v31;
    OUTLINED_FUNCTION_22();
    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    sub_25BCB617C();
    sub_25BAAF074(sub_25BC02C28, v32);
    OUTLINED_FUNCTION_48_11();

    v50 = 0;
    v51 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TileOp.swift";
    v52 = 108;
    v53 = 2;
    v54 = xmmword_25BCCB4E0;
    v55 = "init(id:operand:multiples:resultDescriptor:creationSite:backward:)";
    v56 = 66;
    v57 = 2;
    type metadata accessor for TileOperation();
    swift_allocObject();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_79_4();
    sub_25BB0801C(v33, v34, v35, v36, v37, v38, v39, v40, v3);
    sub_25BAA51C8(*(v5 + 16) + 168, v49);
    sub_25BAA51C8(v49, v48);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    v41 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v41, v42);

    sub_25BAA4AF4(&v46);
    v43 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v43, v44);

    sub_25BAA4AF4(&v46);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    swift_allocObject();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_27_22();
    sub_25BC0EB48();
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v45 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v45);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v49);
    *a2 = v45;
    return;
  }

  v22 = *(*(v5 + 16) + 152);
  v23 = *(v22 + 16);
  if (__OFADD__(v23, -v18))
  {
    __break(1u);
    goto LABEL_23;
  }

  v24 = -v18;
  if (v23 - v18 < v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 > 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v23 - v18;
  if (!__OFADD__(v23, v24))
  {
    sub_25BCB617C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    if (!isUniquelyReferenced_nonNull_native || v25 > *(v22 + 24) >> 1)
    {
      if (v23 <= v25)
      {
        v27 = v23 + v24;
      }

      else
      {
        v27 = v23;
      }

      sub_25BA96630(isUniquelyReferenced_nonNull_native, v27, 1, v22);
      v22 = v28;
      v46 = v28;
    }

    sub_25BCA5F98(0, 0, v24, v24, 1);
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_25BC01F88(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(result + 16))
    {
      v2 = *(result + 32);
      v3 = *(v2 + 16);
      v4 = *(*(a2 + 32) + 16);
      v5 = *(v4 + 160);
      v14 = *(v4 + 152);
      v15 = v5;
      v28 = 0;
      v20 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TileOp.swift";
      v21 = 108;
      v22 = 2;
      v23 = xmmword_25BCCB4F0;
      v24 = "init(id:gradientOperand:operand:multiples:resultDescriptor:creationSite:)";
      v25 = 73;
      v26 = 2;
      v27 = 0;
      type metadata accessor for TileGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      sub_25BCB617C();
      v6 = sub_25BB08164(0, 0, 0, v3);
      sub_25BAA51C8(*(v2 + 16) + 168, v19);
      sub_25BAA51C8(v19, v18);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(&v14);

      v7 = v17;

      sub_25BAA4AF4(&v14);
      sub_25BAA49B8();
      sub_25BAA4A5C(&v14);

      v8 = v16;

      sub_25BAA4AF4(&v14);
      type metadata accessor for TensorRepresentation();
      v9 = swift_allocObject();
      LOBYTE(v14) = 1;
      v10 = sub_25BC10DE8(v6, 0, v18, 0x100000000, v7, v8, v9);
      type metadata accessor for TensorHandle();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      *(v12 + 32) = v11;

      *(v12 + 40) = sub_25BAC42B0();
      *(v12 + 48) = v13;

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

double Tensor.flipped(alongAxes:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  if (!v5)
  {
    *a2 = v4;
    OUTLINED_FUNCTION_83_5();

    return result;
  }

  v55 = MEMORY[0x277D84F90];
  sub_25BAA21EC(0, v5, 0);
  v7 = v55;
  v8 = (a1 + 32);
  do
  {
    v10 = *v8++;
    v9 = v10;
    v11 = *(*(*(v4 + 16) + 152) + 16);
    if (v10 < -v11 || v9 >= v11)
    {
      goto LABEL_23;
    }

    v55 = v7;
    v14 = *(v7 + 2);
    v13 = *(v7 + 3);
    if (v14 >= v13 >> 1)
    {
      v15 = OUTLINED_FUNCTION_81(v13);
      sub_25BAA21EC(v15, v14 + 1, 1);
      v7 = v55;
    }

    *(v7 + 2) = v14 + 1;
    *&v7[8 * v14 + 32] = (v11 & (v9 >> 63)) + v9;
    --v5;
  }

  while (v5);
  v16 = *(*(*(v4 + 16) + 152) + 16);
  if (v16 <= v14)
  {
    v44 = 1101;
    OUTLINED_FUNCTION_7_0();
    goto LABEL_17;
  }

  v17 = 0;
  do
  {
    if (v14 + 1 == v17)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      v45[1] = 0;
      v45[2] = 0;
      v45[0] = v9;
      v46 = -1;
      v48 = 0;
      v49 = 0;
      v47 = v11;
      v50 = -1;
      v52 = 4;
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28(v37, v38, v39, v40, v41, v42, v43);
    }

    v18 = *&v7[8 * v17++ + 32];
  }

  while (v18 < v16);
  v44 = 1102;
  OUTLINED_FUNCTION_7_0();
  v26 = 0xD000000000000022;
LABEL_17:
  OUTLINED_FUNCTION_43_10(v19, v20, v21, v26, v22, v23, v24, v25, v44);
  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_22();
  *(swift_allocObject() + 16) = v7;

  OUTLINED_FUNCTION_62_5();
  OUTLINED_FUNCTION_48_11();

  v54[55] = 0;
  v55 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorTransformationOps.swift";
  v56 = 125;
  v57 = 2;
  v58 = xmmword_25BCCB500;
  v59 = "init(id:operand:axes:creationSite:backward:)";
  v60 = 44;
  v61 = 2;
  type metadata accessor for ReverseOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_78_5();
  sub_25BC3EE84();
  v27 = OUTLINED_FUNCTION_25();
  sub_25BAA51C8(v27, v54);
  sub_25BAA51C8(v54, v53);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_15_8();
  swift_retain_n();
  v28 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v28, v29);

  v30 = v51;

  sub_25BAA4AF4(v45);
  v31 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v31, v32);

  sub_25BAA4AF4(v45);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();
  OUTLINED_FUNCTION_12_30();
  v33 = OUTLINED_FUNCTION_6_42();
  sub_25BC11084(v33);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_21_25(v34);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_15_8();

  sub_25BA9C2C8(v54);
  *a2 = v30;
  OUTLINED_FUNCTION_83_5();
  return result;
}

uint64_t sub_25BC025C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {

      Tensor.flipped(alongAxes:)(a3, &v7);
      v4 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_25BCBAE50;
      *(v5 + 32) = v4;

      *(v5 + 40) = sub_25BAC42B0();
      *(v5 + 48) = v6;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.flipped(alongAxis:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  Tensor.flipped(alongAxes:)(inited, a2);
  return swift_setDeallocating();
}

uint64_t sub_25BC0272C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {

      Tensor.bandPart(lowerBandCount:upperBandCount:)(a3, a4, &v9);
      v6 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25BCBAE50;
      *(v7 + 32) = v6;

      *(v7 + 40) = sub_25BAC42B0();
      *(v7 + 48) = v8;

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25BC02820(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_18_28();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v4 - a2;
  if (__OFSUB__(0, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v9))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BA979FC(v5 - v8, 1);
  v10 = *v2;
  if (!v9)
  {
LABEL_10:
    *v2 = v10;
    return;
  }

  if (__OFSUB__(*(v10 + 16), a2))
  {
    goto LABEL_16;
  }

  sub_25BAB254C(v10 + 32 + 8 * a2);
  v11 = *(v10 + 16);
  v7 = __OFADD__(v11, v9);
  v12 = v11 + v9;
  if (!v7)
  {
    *(v10 + 16) = v12;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_25BC028D4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_28();
  if (v6 != v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v3;
  v9 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFSUB__(1, v9);
  v10 = 1 - v9;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = v4;
  sub_25BA979FC(v5 + v10, 1);

  sub_25BCA5CE0(v8, a2, 1, v11);
}

void sub_25BC02968(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_28();
  if (v5 != v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFSUB__(1, v7);
  v8 = 1 - v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_25BB28168(v4 + v8, 1);

  sub_25BCA5D84();
}

void sub_25BC02A14(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_28();
  if (v9 != v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v3;
  v12 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v7;
  v14 = v6;
  v15 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = __OFSUB__(v15, v12);
  v16 = v15 - v12;
  if (v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v5;
  v18 = v4;
  sub_25BB281F8(v8 + v16, 1);

  sub_25BCA5E9C(v11, a2, v15, v18, v17, v14, v13);
}

void sub_25BC02ADC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_28();
  if (v7 != v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v3;
  v10 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v4;
  v8 = __OFSUB__(v4, v10);
  v12 = v4 - v10;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v6, v12))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = v5;
  sub_25BA979FC(v6 + v12, 1);

  sub_25BCA5F98(v9, a2, v11, v11, v13);
}

double sub_25BC02C38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_25BBFA14C(a1, a2, a3);
  }

  return result;
}

BOOL sub_25BC02C80(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t Tensor.init(zerosLike:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_93_5(a1);
  if (sub_25BAA80BC(v3, &unk_286D427E8) || sub_25BAA80BC(*(v2 + 160), &unk_286D42270))
  {
    v11 = *(v2 + 152);
    v10[55] = *(v2 + 160);
    sub_25BCB617C();

    sub_25BAA48D4(v2 + 168, v10, &qword_27FBB6730, &qword_25BCBC4B0);

    result = Tensor.init(zeros:scalarType:on:)();
    *v1 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC(v5, v6, v7, 0xD000000000000030, v8, v9, 39, 2, 715);
    __break(1u);
  }

  return result;
}

uint64_t Tensor.init(coercing:scalarType:on:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v7 = *a1;
  v12 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a4;
  v11 = v7;
  OUTLINED_FUNCTION_46_13(a2, v10);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, inited, &v11, v10, &v13);
  result = OUTLINED_FUNCTION_33_18();
  *a3 = v13;
  return result;
}

void Tensor.init(coercing:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_68_6();
  v6 = *v5;
  v12 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v3;
  v11 = v6;
  sub_25BAA48D4(a3, v10, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, inited, &v11, v10, &v13);
  v8 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v8, v9, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

void Tensor.init(_:on:)(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  OUTLINED_FUNCTION_41_15(inited, v3);
  OUTLINED_FUNCTION_57_5();
  sub_25BB2F098(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v8, v9, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

uint64_t sub_25BC03008(uint64_t a1, char a2)
{
  v5 = OUTLINED_FUNCTION_13_32();
  result = sub_25BB277E8(v5, v6);
  v8 = *v2;
  v9 = *(*v2 + 16);
  v10 = *(*v2 + 24) >> 1;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = 0;
    v13 = 16 * v9 + 32;
    while (1)
    {
      if ((v11 & ~(v11 >> 63)) == v12)
      {
        __break(1u);
        goto LABEL_11;
      }

      if (!a1)
      {
        break;
      }

      v14 = v8 + v13;
      ++v12;
      *v14 = a1;
      *(v14 + 8) = a2;
      v13 += 16;
      a1 = 0;
      a2 = 0;
      if (v11 == v12)
      {
        v12 = v11;
        break;
      }
    }

    if (v12 < 1)
    {
      goto LABEL_12;
    }

    v15 = __OFADD__(v9, v12);
    v16 = v9 + v12;
    if (!v15)
    {
      *(v8 + 16) = v16;

      *v2 = v8;
      return result;
    }

LABEL_11:
    __break(1u);
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_25BC030C0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB27800(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
  OUTLINED_FUNCTION_98_5(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC03168()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_13_32();
  sub_25BB28150(v4, v5);
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = (*(*v0 + 24) >> 1) - v7;
  v9 = *v0 + 240 * v7;
  sub_25BAA48D4(v3, __dst, &qword_27FBB6618, &qword_25BCCB668);
  v10 = sub_25BCA4FDC(__src, (v9 + 32), v8);
  OUTLINED_FUNCTION_86_4();
  sub_25BAA6FBC(v11, v12, v13);
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v14 = *(v6 + 16);
  v3 = v14 + v10;
  if (__OFADD__(v14, v10))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v6 + 16) = v3;
  if (v10 != v8)
  {
    v15 = &qword_27FBB6620;
    v16 = &qword_25BCCB670;
    v17 = __src;
    goto LABEL_5;
  }

LABEL_8:
  memcpy(__dst, __src, 0xECuLL);
  bzero(__src, 0xECuLL);
  while (1)
  {
    sub_25BAA48D4(__dst, v34, &qword_27FBB4828, &qword_25BCBF518);
    if (!v34[0])
    {
      break;
    }

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v18, v19, v20);
    v21 = *(v6 + 24) >> 1;
    if (v21 < v3 + 1)
    {
      sub_25BAFD704();
      v6 = v29;
      v21 = *(v29 + 24) >> 1;
    }

    for (i = 240 * v3 + 32; ; i += 240)
    {
      sub_25BAA48D4(__dst, v33, &qword_27FBB4828, &qword_25BCBF518);
      if (!v33[0])
      {
        OUTLINED_FUNCTION_18_29();
        sub_25BAA6FBC(v26, v27, v28);
        goto LABEL_18;
      }

      memcpy(v34, v33, 0xECuLL);
      if (v3 >= v21)
      {
        break;
      }

      OUTLINED_FUNCTION_18_29();
      sub_25BAA6FBC(v23, v24, v25);
      memcpy((v6 + i), v34, 0xECuLL);
      ++v3;
      memcpy(__dst, __src, 0xECuLL);
      bzero(__src, 0xECuLL);
    }

    sub_25BA9AC78(v34);
LABEL_18:
    *(v6 + 16) = v3;
  }

  OUTLINED_FUNCTION_18_29();
  sub_25BAA6FBC(v30, v31, v32);
  sub_25BAA6FBC(__src, &qword_27FBB6620, &qword_25BCCB670);
  OUTLINED_FUNCTION_18_29();
LABEL_5:
  sub_25BAA6FBC(v17, v15, v16);
  *v1 = v6;
  OUTLINED_FUNCTION_10_16();
}

void sub_25BC033C0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB28180(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17_32(v3 + 48 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC03458(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB28198(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39E8, &qword_25BCCF2F0);
  OUTLINED_FUNCTION_98_5(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC03500(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB281B0(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_17_32(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC0358C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB281C8(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_80_6();
  if (v7 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 32 * v6 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v9 = *(v5 + 16);
  v8 = __OFADD__(v9, v3);
  v10 = v9 + v3;
  if (!v8)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_25BC03638(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_32();
  sub_25BB281E0(v4, v5);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = *(*v1 + 24) >> 1;
  v9 = v8 - v7;
  memcpy(__dst, a1, 0xB0uLL);
  sub_25BB45694(__dst);
  if (v8 == v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_25BB45648(v21);
  memcpy(__src, __dst, sizeof(__src));
  a1 = 0;
  v2 = v9 & ~(v9 >> 63);
  v10 = 176 * v7 + 32;
  v11 = (~v7 + v8);
  while (1)
  {
    if (v2 == a1)
    {
      __break(1u);
      goto LABEL_14;
    }

    memcpy(v19, __src, 0xB1uLL);
    if (sub_25BB456E4(v19) == 1)
    {
      result = memcpy(v22, v21, 0xB1uLL);
      goto LABEL_9;
    }

    memcpy((v6 + v10), __src, 0xB0uLL);
    if (v11 == a1)
    {
      break;
    }

    memcpy(__src, v21, sizeof(__src));
    v10 += 176;
    ++a1;
  }

  result = memcpy(v22, v21, 0xB1uLL);
  a1 = v9;
LABEL_9:
  if (a1 < 1)
  {
    goto LABEL_27;
  }

  v13 = *(v6 + 16);
  v2 = v13 + a1;
  if (__OFADD__(v13, a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v6 + 16) = v2;
  if (a1 != v9)
  {
    goto LABEL_12;
  }

LABEL_15:
  memcpy(v21, v22, 0xB1uLL);
  result = sub_25BB456E4(v21);
  if (result == 1)
  {
LABEL_12:
    *v1 = v6;
    return result;
  }

  v14 = *(v6 + 24);
  v15 = v14 >> 1;
  a1 = v2 + 1;
  LOBYTE(v9) = __OFADD__(v2, 1);
  if (v15 < a1)
  {
LABEL_28:
    OUTLINED_FUNCTION_83_6();
    sub_25BAFE3EC();
    v6 = v18;
    v14 = *(v18 + 24);
    v15 = v14 >> 1;
  }

  if (v2 >= v15)
  {
    do
    {
      *(v6 + 16) = v2;
      v16 = v14 >> 1;
      if ((v14 >> 1) < a1)
      {
        OUTLINED_FUNCTION_83_6();
        sub_25BAFE3EC();
        v6 = v17;
        v14 = *(v17 + 24);
        v16 = v14 >> 1;
      }
    }

    while (v2 >= v16);
  }

  result = memmove((v6 + 176 * v2 + 32), v22, 0xB0uLL);
  if ((v9 & 1) == 0)
  {
    *(v6 + 16) = a1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_25BC03860(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB27818(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17_32(v3 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC0390C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB28210(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_17_32(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t Tensor.init(shape:data:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  if (sub_25BC02C80(a2, a3))
  {
    OUTLINED_FUNCTION_18();
    v58 = 523;
    OUTLINED_FUNCTION_7_0();
    v48 = 0xD000000000000014;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_26_0();
    v14 = MEMORY[0x25F876270](v13);
    if (*(v11 + 16))
    {
      while (1)
      {
        OUTLINED_FUNCTION_92_0();
        if (!v17)
        {
          break;
        }

        if (v16 == 1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v15 = 1;
LABEL_8:
    if ((v12 - 1) > 0xA)
    {
      v18 = 1;
    }

    else
    {
      v18 = qword_25BCCB678[(v12 - 1)];
    }

    if ((v15 * v18) >> 64 != (v15 * v18) >> 63)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_18:
      v24 = qword_281557400;
      v62[0] = v11;
      LOBYTE(v63) = v12;
      v25 = OUTLINED_FUNCTION_26_0();
      v27 = sub_25BB33C70(v25, v26);
      sub_25BC73098(v62, &v63, v66, v24, a2, a3, v27);
      v29 = v28;

      sub_25BAA48D4(v66, v62, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      v30 = swift_allocObject();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_19_22();
      sub_25BAA5BB4(v32, v33, v34, v30, ObjectType, v29);
      OUTLINED_FUNCTION_9_19();
      type metadata accessor for TensorHandle();
      OUTLINED_FUNCTION_22();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_34_15(v35);
      sub_25BAA6EB0();

      v36 = OUTLINED_FUNCTION_26_0();
      sub_25BB0D160(v36, v37);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_77_4(a5);
      OUTLINED_FUNCTION_77_4(v66);
      OUTLINED_FUNCTION_77_4(v68);
      v38 = OUTLINED_FUNCTION_26_0();
      result = sub_25BB0D160(v38, v39);
      *a6 = v30;
      return result;
    }

    if (v14 >= v15 * v18)
    {
      OUTLINED_FUNCTION_101_4(a5, v68);
      OUTLINED_FUNCTION_101_4(v68, &v63);
      if (*(&v64 + 1))
      {
        OUTLINED_FUNCTION_12_31(v66, v57, v59, v60, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7], v62[8], v62[9], v62[10], v62[11], v62[12], v62[13], v62[14], v62[15], v62[16], v63, v64, v65);
        v67 = v19;
        v20 = OUTLINED_FUNCTION_26_0();
        sub_25BB33C70(v20, v21);
      }

      else
      {
        type metadata accessor for ContextManager();
        v22 = OUTLINED_FUNCTION_26_0();
        sub_25BB33C70(v22, v23);
        sub_25BAA49B8();
        sub_25BAA4A5C(v62);

        sub_25BAA48D4(v62, v66, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA4AF4(v62);
        if (*(&v64 + 1))
        {
          sub_25BAA6FBC(&v63, &qword_27FBB6730, &qword_25BCBC4B0);
        }
      }

      if (qword_28154F2C8 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    LODWORD(v59) = 0;
    v58 = 524;
    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_25_0(v41, v42, v43, v48, v44, v45, v46, v47, v58, v59);
  __break(1u);
  v49 = OUTLINED_FUNCTION_26_0();
  sub_25BB0D160(v49, v50);

  OUTLINED_FUNCTION_25_20();
  sub_25BAA6FBC(v51, v52, v53);
  OUTLINED_FUNCTION_25_20();
  sub_25BAA6FBC(v54, v55, v56);

  __break(1u);
  return result;
}

uint64_t Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_59_6();
  v12 = *v11;
  sub_25BAA48D4(v7, &v28, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v29 + 1))
  {
    v32[0] = v28;
    v32[1] = v29;
    v32[2] = v30;
    v33 = v31;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v27);

    sub_25BAA48D4(v27, v32, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v27);
    if (*(&v29 + 1))
    {
      sub_25BAA6FBC(&v28, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27[0] = v8;
  LOBYTE(v28) = v12;
  sub_25BAA4B48(v27, &v28, v32, a4, a5);
  if (v6)
  {
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v14, v15, v16);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v17, v18, v19);
  }

  else
  {
    v21 = v13;

    sub_25BAA48D4(v32, v27, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v22 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v24, v27, v25, v22, ObjectType, v21);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v26);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BAA6FBC(v7, &qword_27FBB6730, &qword_25BCBC4B0);
    result = sub_25BAA6FBC(v32, &qword_27FBB6730, &qword_25BCBC4B0);
    *v5 = v22;
  }

  return result;
}

uint64_t sub_25BC03F70()
{
  OUTLINED_FUNCTION_59_6();
  v5 = *v4;
  if (sub_25BAC1900(0, v3))
  {
    OUTLINED_FUNCTION_101_4(v2, v42);
    OUTLINED_FUNCTION_101_4(v42, &v37);
    if (*(&v38 + 1))
    {
      OUTLINED_FUNCTION_12_31(v40, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v37, v38, v39);
      v41 = v7;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v36);

      sub_25BAA48D4(v36, v40, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v36);
      if (*(&v38 + 1))
      {
        sub_25BAA6FBC(&v37, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v36[0] = v3;
    LOBYTE(v37) = v5;
    sub_25BC728E8(v36, &v37, v40, qword_281557400, v6);
    OUTLINED_FUNCTION_47_13();
    sub_25BAA48D4(v40, v36, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v8 = swift_allocObject();
    swift_getObjectType();
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_28_19();
    sub_25BAA5BB4(v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_32_18(v15);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    v16 = OUTLINED_FUNCTION_9_23();
    sub_25BAA6FBC(v16, v17, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_58_7(v40);
    result = OUTLINED_FUNCTION_58_7(v42);
    *v0 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_52_9(v19, v20, v21, 44, v22, v23, v24, v25, 367);
    __break(1u);

    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v26, v27, v28);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v29, v30, v31);

    __break(1u);
  }

  return result;
}

uint64_t Tensor.init(zeros:scalarType:on:)()
{
  OUTLINED_FUNCTION_59_6();
  v4 = *v3;
  sub_25BAA48D4(v1, &v27, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v28 + 1))
  {
    OUTLINED_FUNCTION_11_33(v30, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v27, v28, v29);
    v31 = v6;
  }

  else
  {
    type metadata accessor for ContextManager();
    v7 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v7, v8);

    sub_25BAA48D4(v26, v30, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v26);
    if (*(&v28 + 1))
    {
      sub_25BAA6FBC(&v27, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v26[0] = v2;
  LOBYTE(v27) = v4;
  sub_25BC72C64(v26, &v27, v30, qword_281557400, v5);
  OUTLINED_FUNCTION_47_13();
  v9 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v30, v10, v11, v12, v13);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v20);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v21 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v21, v22, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v30);
  *v0 = v9;
  return result;
}

uint64_t Tensor.init(_:on:)@<X0>(void *a1@<X8>, float a2@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  OUTLINED_FUNCTION_24_17(inited, v5);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v7, &v8);
  result = OUTLINED_FUNCTION_33_18();
  *a1 = v8;
  return result;
}

void Tensor.init(_:on:)()
{
  OUTLINED_FUNCTION_68_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v0;
  OUTLINED_FUNCTION_41_15(inited, v2);
  OUTLINED_FUNCTION_57_5();
  sub_25BBECAE0();
  v3 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v3, v4, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

void Tensor.init(_:on:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  OUTLINED_FUNCTION_41_15(inited, v3);
  OUTLINED_FUNCTION_57_5();
  sub_25BC04800();
  v4 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v4, v5, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

void sub_25BC04800()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v48 = v3;
  if (*(v5 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v40[0] = v6;
    LOBYTE(v41) = 12;
    sub_25BAA4B48(v40, &v41, v45, sub_25BC090F0, v0);
    v13 = v12;

    sub_25BAA48D4(v45, v40, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v14 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v41) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v16, v40, v17, v14, ObjectType, v13);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v18);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_77_4(v2);
    OUTLINED_FUNCTION_77_4(v45);
    OUTLINED_FUNCTION_77_4(v47);

    *v8 = v14;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = 1;
LABEL_8:
  if (v10 == *(v4 + 16))
  {
    v11 = OUTLINED_FUNCTION_102_4(v2, v47);
    v38 = &v38;
    MEMORY[0x28223BE20](v11);
    v0 = v37;
    v37[2] = &v48;
    OUTLINED_FUNCTION_102_4(v47, &v41);
    if (*(&v42 + 1))
    {
      v45[0] = v41;
      v45[1] = v42;
      v45[2] = v43;
      v46 = v44;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v40);

      sub_25BAA48D4(v40, v45, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v40);
      if (*(&v42 + 1))
      {
        sub_25BAA6FBC(&v41, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v19, v20, v21);
    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v22, v23, v24);

    __break(1u);
  }

LABEL_21:
  v25 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v25);

  v26 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v26);
  v27 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v27);

  v28 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v28);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_25_0(v29, v30, v31, v32, v33, v34, v35, v36, 270, v39);
  __break(1u);
}

void Tensor.init<A>(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC04D2C();
}

{
  sub_25BC04D2C();
}

{
  sub_25BC04D2C();
}

uint64_t sub_25BC04C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, _BYTE *, __n128)@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v9 = OUTLINED_FUNCTION_5(v8);
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = *(a1 + 16);
  sub_25BAA48D4(a2, v14, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BCB617C();
  (a3)(&v15, v9, a1, v14);
  OUTLINED_FUNCTION_86_4();
  sub_25BAA6FBC(v10, v11, v12);

  *a4 = v15;
  return result;
}

void sub_25BC04D2C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v4 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v17 = OUTLINED_FUNCTION_5(v16);
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = sub_25BCB6ABC();
  v20 = v17;
  OUTLINED_FUNCTION_161_0();
  v18();
  sub_25BAA48D4(v7, v19, &qword_27FBB6730, &qword_25BCBC4B0);
  v1(&v21, &v20, v15, v19, v5, v3);
  sub_25BAA6FBC(v7, &qword_27FBB6730, &qword_25BCBC4B0);
  (*(v12 + 8))(v9, v5);
  *v11 = v21;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC04F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / 4;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D849A8], a4, a5);
}

uint64_t sub_25BC04FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D84900], a4, a5);
}

void *sub_25BC05024(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2 - result;
    if (!result)
    {
      v4 = 0;
    }

    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), *(a3 + 16));
    }
  }

  return result;
}

uint64_t sub_25BC05054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D839B0], a4, a5);
}

uint64_t Tensor.init(repeating:shape:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v6 = *a1;
  sub_25BAA48D4(a2, &v32, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v33 + 1))
  {
    OUTLINED_FUNCTION_11_33(v35, v29, v30, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v32, v33, v34);
    v36 = v7;
  }

  else
  {
    type metadata accessor for ContextManager();
    v8 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v8, v9);

    sub_25BAA48D4(v31, v35, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v31);
    if (*(&v33 + 1))
    {
      sub_25BAA6FBC(&v32, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v31[0] = v6;
  OUTLINED_FUNCTION_56_7();
  sub_25BC73B74(v10, v11, v35, v12, a4, v13);
  OUTLINED_FUNCTION_47_13();
  v14 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v35, v15, v16, v17, v18);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v19, v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v25);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v26 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v26, v27, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v35);
  *a3 = v14;
  return result;
}

uint64_t sub_25BC0527C(uint64_t result, uint64_t a2, int16x4_t a3)
{
  if (result)
  {
    v3 = a2 - result;
    if (a2 - result < -3)
    {
      __break(1u);
    }

    else if ((v3 + 3) >= 7)
    {
      v4 = 0;
      v5 = v3 / 4;
      v6 = vdupq_n_s64(v5 - 1);
      v7 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (result + 8);
      do
      {
        v9 = vdupq_n_s64(v4);
        v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25BCCB570)));
        if (vuzp1_s16(v10, a3).u8[0])
        {
          *(v8 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v10, a3).i8[2])
        {
          *(v8 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25BCCB560)))).i32[1])
        {
          *v8 = a3.i32[0];
          v8[1] = a3.i32[0];
        }

        v4 += 4;
        v8 += 4;
      }

      while (v7 != v4);
    }
  }

  return result;
}

uint64_t Tensor.init(repeating:shape:on:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X0>)
{
  v6 = *a1;
  sub_25BAA48D4(a2, &v31, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v32 + 1))
  {
    OUTLINED_FUNCTION_11_33(v34, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v31, v32, v33);
    v35 = v7;
  }

  else
  {
    type metadata accessor for ContextManager();
    v8 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v8, v9);

    sub_25BAA48D4(v30, v34, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v30);
    if (*(&v32 + 1))
    {
      sub_25BAA6FBC(&v31, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v30[0] = v6;
  OUTLINED_FUNCTION_56_7();
  sub_25BC73D24(v10, v11, v34, v12, a4);
  OUTLINED_FUNCTION_47_13();
  v13 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v34, v14, v15, v16, v17);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v18, v19, v20, v21, v22, v23);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v24);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v25 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v25, v26, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v34);
  *a3 = v13;
  return result;
}

uint64_t sub_25BC054EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2 - result;
    if (a2 - result < -7)
    {
      __break(1u);
    }

    else if ((v3 + 7) >= 0xF)
    {
      v4 = 0;
      v5 = v3 / 8;
      v6 = (v3 / 8 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (result + 8);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v4), xmmword_25BCCB570)));
        if (v9.i8[0])
        {
          *(v8 - 1) = a3;
        }

        if (v9.i8[4])
        {
          *v8 = a3;
        }

        v4 += 2;
        v8 += 2;
      }

      while (v6 != v4);
    }
  }

  return result;
}

void Tensor.init(ioSurfaceNoCopy:shape:scalarType:deallocator:)(__IOSurface *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  AllocSize = IOSurfaceGetAllocSize(a1);
  if (*(v11 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v16)
      {
        break;
      }

      if (v15 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v14 = 1;
LABEL_7:
  if ((v12 - 1) > 0xA)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_25BCCB678[(v12 - 1)];
  }

  if ((v14 * v17) >> 64 != (v14 * v17) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (AllocSize < v14 * v17)
  {
LABEL_15:
    v36 = 0;
    v35 = 443;
    OUTLINED_FUNCTION_7_0();
    goto LABEL_17;
  }

  if (!IOSurfaceGetPlaneCount(a1))
  {
    *&v37[0] = v11;
    v39[0] = v12;
    type metadata accessor for IOSurfaceTensorStorage();
    swift_allocObject();
    sub_25BB99A24(v37, v39, a1, a4, a5);
    type metadata accessor for TensorRepresentation();
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    OUTLINED_FUNCTION_93();
    v18 = swift_allocObject();
    v19 = a1;
    v20 = OUTLINED_FUNCTION_9_23();
    sub_25BA9D8C4(v20, v21);

    v39[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1F60(v22, v37, v23, v18);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_32_18(v24);
    sub_25BAA6EB0();

    v25 = OUTLINED_FUNCTION_9_23();
    sub_25BA9D148(v25, v26);

    *a6 = v6;
    return;
  }

  OUTLINED_FUNCTION_18();
  v35 = 447;
  OUTLINED_FUNCTION_7_0();
  v30 = 0xD000000000000023;
LABEL_17:
  OUTLINED_FUNCTION_25_0(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  __break(1u);
}

void Tensor.withUnsafeIOSurface<A>(_:)(void (*a1)(id))
{
  v4 = *(*v1 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v5 = sub_25BA928B4();
  [v5 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v6, v7, v8, v9);
  if (v2)
  {
    [*(v4 + 224) unlock];

    __break(1u);
  }

  else
  {
    [*(v4 + 224) unlock];
    OUTLINED_FUNCTION_10();

    if (object_getClass(v19) == _TtC14NeuralNetworks22IOSurfaceTensorStorage && v19)
    {
      v10 = v19[2];
      swift_unknownObjectRelease();
      a1(v10);
      OUTLINED_FUNCTION_83_6();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_83_6();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    }
  }
}

void Tensor.withUnsafeUnsafeMutableIOSurface<A>(_:)(void (*a1)(id)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v6 = v5;
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v12 + 16);
    swift_retain_n();
    v14 = sub_25BA928B4();
    [v14 lock];

    OUTLINED_FUNCTION_6_19();
    sub_25BA92920(v15, v16, v17, v18);
    if (v5)
    {
      [*(v13 + 224) unlock];
      goto LABEL_13;
    }

    [*(v13 + 224) unlock];

    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v19 = qword_281557400;
    v20 = *(v12 + 16);
    v48 = *(v20 + 152);
    v47 = *(v20 + 160);
    OUTLINED_FUNCTION_99_5(v20, v36, a1, a3, a2, a4);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v48, &v47, v46, v19, v46[0], v46[1]);
    v22 = v21;
    v6 = 0;
    sub_25BAA6FBC(v46, &qword_27FBB6730, &qword_25BCBC4B0);

    v23 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_99_5(*(v12 + 16), v37, v38, v40, v42, v45);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v48) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BC5FAD0(v25, v46, v26, v23, ObjectType, v22);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v27);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *v7 = v12;
    a3 = v41;
    a2 = v43;
    a1 = v39;
  }

  v28 = *(v12 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v29 = sub_25BA928B4();
  [v29 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v30, v31, v32, v33);
  if (v6)
  {
    [*(v28 + 224) unlock];
LABEL_13:

    __break(1u);
    return;
  }

  [*(v28 + 224) unlock];
  OUTLINED_FUNCTION_10();

  v34 = v46[0];
  if (object_getClass(v46[0]) == _TtC14NeuralNetworks22IOSurfaceTensorStorage && v34)
  {
    v35 = v34[2];
    swift_unknownObjectRelease();
    a1(v35);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }
}

void sub_25BC05C00(void *__dst, uint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v8 = a3;
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_7:
      sub_25BC08BF4(v8, v7, a5, a4 & 0x3FFFFFFFFFFFFFFFLL, __dst);
      if (v5)
      {
LABEL_10:

        __break(1u);
      }

      break;
    case 3uLL:
      return;
    default:
      __src = a3;
      v10 = a4;
      v11 = BYTE2(a4);
      v12 = BYTE3(a4);
      v13 = BYTE4(a4);
      v14 = BYTE5(a4);
      if (__dst)
      {
        memcpy(__dst, &__src, BYTE6(a4));
      }

      break;
  }
}

uint64_t Tensor.init(contentsOfFile:shape:scalarType:on:)@<X0>(uint64_t *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v30 = sub_25BCB598C();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *a3;
  v17 = *a4;
  sub_25BCB591C();

  sub_25BAA48D4(a5, v34, &qword_27FBB6730, &qword_25BCBC4B0);
  v18 = sub_25BCB59AC();
  if (v6)
  {

    OUTLINED_FUNCTION_50_10();
    sub_25BAA6FBC(v20, v21, v22);
    OUTLINED_FUNCTION_50_10();
    sub_25BAA6FBC(v23, v24, v25);
    return (*(v11 + 8))(v15, v30);
  }

  else
  {
    v27 = v18;
    v28 = v19;
    v33 = v16;
    v32 = v17;
    sub_25BAA48D4(v34, v31, &qword_27FBB6730, &qword_25BCBC4B0);
    Tensor.init(shape:data:scalarType:on:)(&v33, v27, v28, &v32, v31, &v35);
    sub_25BAA6FBC(a5, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA6FBC(v34, &qword_27FBB6730, &qword_25BCBC4B0);
    result = (*(v11 + 8))(v15, v30);
    *a6 = v35;
  }

  return result;
}

uint64_t Tensor.init(contentsOf:shape:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  sub_25BCB59AC();
  if (v5)
  {

    sub_25BAA6FBC(a4, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    return (*(v11 + 8))(a1);
  }

  else
  {
    v21 = v9;
    v20[55] = v10;
    sub_25BAA48D4(a4, v20, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_86_4();
    Tensor.init(shape:data:scalarType:on:)(v13, v14, v15, v16, v17, v18);
    sub_25BAA6FBC(a4, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BCB598C();
    OUTLINED_FUNCTION_9_3();
    result = (*(v19 + 8))(a1);
    *a5 = v22;
  }

  return result;
}

uint64_t Tensor.init(floatLiteral:)@<X0>(void *a1@<X8>, float a2@<S0>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA48D4(v8, v6, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v6, &v7);
  result = sub_25BAA6FBC(v8, &qword_27FBB6730, &qword_25BCBC4B0);
  *a1 = v7;
  return result;
}

uint64_t Tensor.init(integerLiteral:)@<X0>(int a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = sub_25BB2F098(MEMORY[0x277D84F90], inited, v6, &v8);
  *a2 = v8;
  return result;
}

uint64_t Tensor.init(BOOLeanLiteral:)@<X0>(uint64_t *a1@<X8>, char a2@<W0>)
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_25BAA48D4(v25, &v19, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v20 + 1))
  {
    v23[0] = v19;
    v23[1] = v20;
    v23[2] = v21;
    v24 = v22;
  }

  else
  {
    type metadata accessor for ContextManager();
    v4 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v4, v5);

    sub_25BAA48D4(v18, v23, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v18);
    if (*(&v20 + 1))
    {
      sub_25BAA6FBC(&v19, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v18[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_56_7();
  sub_25BC73464(v6, v7, v23, v8, a2 & 1);
  v10 = v9;
  sub_25BAA48D4(v23, v18, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_8_36();
  sub_25BAA5BB4(v13, v14, v15, v11, ObjectType, v10);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v16);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BAA6FBC(v23, &qword_27FBB6730, &qword_25BCBC4B0);
  result = sub_25BAA6FBC(v25, &qword_27FBB6730, &qword_25BCBC4B0);
  *a1 = v16;
  return result;
}

void Tensor.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    Tensor.init(stacking:alongAxis:scalarType:)();
    *a2 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_52_9(v3, v4, v5, 42, v6, v7, v8, v9, 641);
    __break(1u);
  }
}

void sub_25BC0649C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
    if (v2)
    {
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        bzero(a1, v2);
      }
    }
  }
}

uint64_t Tensor.init(identity:scalarType:on:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*a1 + 16);
  if (!sub_25BAB74D0(v8, 2, 0, 2))
  {
    v19 = v8;
    v20 = xmmword_25BCC8F30;
    v21 = 0;
    v22 = xmmword_25BCBC6A0;
    v23 = 2;
    v24 = 7;
    OUTLINED_FUNCTION_60_6();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, 750);
  }

  v18 = v6;
  v17 = v7;
  OUTLINED_FUNCTION_46_13(a3, &v19);
  Tensor.init(ones:scalarType:on:)(&v18, &v17, &v19, &v16);
  Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v19);
  OUTLINED_FUNCTION_44_11(a3);

  *a4 = v19;
  return result;
}

uint64_t Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40_15();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v5;
  OUTLINED_FUNCTION_46_13(a3, v13);
  OUTLINED_FUNCTION_81_6();
  sub_25BBECAE0();
  v9 = OUTLINED_FUNCTION_46_13(v13, v12);
  OUTLINED_FUNCTION_63_4(v9, v10);
  OUTLINED_FUNCTION_44_11(v13);
  v12[0] = v12[7];
  Tensor.squeezingShape(at:)();
  OUTLINED_FUNCTION_44_11(a3);

  *v7 = v13[0];
  return result;
}

{
  OUTLINED_FUNCTION_40_15();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v5;
  OUTLINED_FUNCTION_46_13(a3, v14);
  OUTLINED_FUNCTION_81_6();
  sub_25BB2F098(&unk_286D454D8, inited, v13, &v12);
  v9 = OUTLINED_FUNCTION_46_13(v14, v13);
  OUTLINED_FUNCTION_63_4(v9, v10);
  OUTLINED_FUNCTION_44_11(v14);
  v13[0] = v13[7];
  Tensor.squeezingShape(at:)();
  OUTLINED_FUNCTION_44_11(a3);

  *v7 = v14[0];
  return result;
}

void Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_25BC06820();
}

{
  sub_25BC06820();
}

void sub_25BC06820()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_68_6();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v19 = OUTLINED_FUNCTION_5(v18);
  *(v19 + 16) = xmmword_25BCBAE50;
  *(v19 + 32) = sub_25BCB6ABC();
  v26 = v19;
  (*(v13 + 16))(v17, v0, v7);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v3(&v23, &v26, v17, v24, v7, v5);
  sub_25BAA48D4(v9, v24, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)(&v23, v11, v24);
  OUTLINED_FUNCTION_86_4();
  sub_25BAA6FBC(v20, v21, v22);
  (*(v13 + 8))(v0, v7);
  *v1 = v26;
  OUTLINED_FUNCTION_37_0();
}

void Tensor.init(rangeFrom:to:stride:on:)(double a1, double a2, float a3)
{
  if (a3 == 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_25BC08DFC(*&a1, *&a2, a3);
    v5 = OUTLINED_FUNCTION_24_17(v3, v4);
    OUTLINED_FUNCTION_96_3(v5, v6);
    OUTLINED_FUNCTION_33_18();
  }
}

uint64_t Tensor.init(rangeFrom:to:stride:on:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = sub_25BC086B0(result | (a2 << 32), a3);
    v5 = OUTLINED_FUNCTION_24_17(v3, v4);
    OUTLINED_FUNCTION_96_3(v5, v6);
    return OUTLINED_FUNCTION_33_18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Tensor.init(linearSpaceFrom:through:count:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a1 < 2)
  {
    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_25_0(v17, v18, v19, 0, 0xE000000000000000, v20, v21, v22, 994, 0);
    __break(1u);
  }

  else
  {
    v9 = (a5 - a4) / (a1 - 1);
    v25[0] = MEMORY[0x277D84F90];
    sub_25BB00CD0(0, a1, 0);
    v10 = 0;
    v11 = v25[0];
    v12 = *(v25[0] + 16);
    do
    {
      v25[0] = v11;
      v13 = *(v11 + 24);
      if (v12 >= v13 >> 1)
      {
        sub_25BB00CD0(v13 > 1, v12 + 1, 1);
        v11 = v25[0];
      }

      *(v11 + 16) = v12 + 1;
      *(v11 + 4 * v12++ + 32) = (v9 * v10++) + a4;
    }

    while (a1 != v10);
    OUTLINED_FUNCTION_46_13(a2, v25);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v15 = OUTLINED_FUNCTION_5(v14);
    *(v15 + 16) = xmmword_25BCBAE50;
    *(v15 + 32) = *(v11 + 16);
    OUTLINED_FUNCTION_46_13(v25, v23);
    sub_25BACC1B0(v15, v11, v23, &v24);
    OUTLINED_FUNCTION_44_11(a2);
    result = OUTLINED_FUNCTION_44_11(v25);
    *a3 = v24;
  }

  return result;
}

void Tensor.init(randomUniform:in:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_40_15();
  v11 = v10;
  v58 = v12;
  v56 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *v11;
  HIDWORD(v55) = *v5;
  v57 = v3;
  sub_25BAA48D4(v3, &v73, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v74[0] + 1))
  {
    v71[0] = v73;
    v71[1] = v74[0];
    v71[2] = v74[1];
    v72 = v75;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_75_5();

    sub_25BAA48D4(v66, v71, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v66);
    if (*(&v74[0] + 1))
    {
      sub_25BAA6FBC(&v73, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35((v7 + 2));
  v20 = v7[2];
  v21 = *(v20 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[2] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v21)
  {
    while (v21 <= *(v20 + 16))
    {
      v9 = sub_25BC32FA0();
      v7[2] = v20;
      swift_endAccess();

LABEL_10:
      v23 = sub_25BBE5CAC(v9);
      v64 = v24;
      OUTLINED_FUNCTION_64_7(v23, v25, v26, v27, v28, v29, v30, v31, *&v24, v32, v54, v55, v56, v57, v58, v59[0], v59[1], v59[2], v59[3], v59[4], v59[5], v60, v61[0], v61[1], v61[2]);
      v21 = *(v65 + 16);

      v61[0] = v19;
      if (v1 <= v0)
      {
        v66[3] = MEMORY[0x277D83A90];
        v66[4] = &protocol witness table for Float;
        *v66 = v1;
        v68 = MEMORY[0x277D83A90];
        v69 = &protocol witness table for Float;
        v67 = v0;
        v70 = 2562;
        v63 = 0;
        *&v73 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
        *(&v73 + 1) = 110;
        LOBYTE(v74[0]) = 2;
        *(v74 + 8) = xmmword_25BCBC690;
        *(&v74[1] + 1) = "init(id:state:shape:distribution:creationSite:)";
        v75 = 47;
        v76 = 2;
        v33 = type metadata accessor for RandomOperation();
        v34 = OUTLINED_FUNCTION_201(v33);
        OUTLINED_FUNCTION_16_34(v34, v35, v36, v37, v61, v66, &v73);
        sub_25BB18AA4();
        sub_25BAA48D4(v71, v61, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v62)
        {
          OUTLINED_FUNCTION_54_9();
          sub_25BABEF40(v66, v59);
          OUTLINED_FUNCTION_97_4();
          sub_25BAA6FBC(v59, &qword_27FBB6730, &qword_25BCBC4B0);
          sub_25BABF0A8(v66);
        }

        else
        {
          sub_25BAA6FBC(v61, &qword_27FBB6730, &qword_25BCBC4B0);
          OUTLINED_FUNCTION_89_6();
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v66);
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v66);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        swift_allocObject();

        v39 = OUTLINED_FUNCTION_36_14(v38);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;

        sub_25BAA6EB0();
        sub_25BAA48D4(v71, v61, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v62)
        {
          OUTLINED_FUNCTION_54_9();
          v61[0] = v40;
          v42 = Tensor.scalarType.getter(v41);
          sub_25BBABD24(v42, v43);
          OUTLINED_FUNCTION_186();
          if (!v44)
          {
            OUTLINED_FUNCTION_84_4();
            OUTLINED_FUNCTION_55(v66, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v45, v46);
          }

          v61[0] = v40;
          Tensor.place(on:)(v66);
          sub_25BABF0A8(v66);
          v40 = v61[0];
        }

        else
        {
          sub_25BAA6FBC(v61, &qword_27FBB6730, &qword_25BCBC4B0);
          v61[0] = v40;
        }

        v59[0] = v40;
        HIBYTE(v60) = BYTE4(v55);
        (*(v14 + 104))(v18, *MEMORY[0x277D84660], v56);
        OUTLINED_FUNCTION_94_5();

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v47, v48, v49);
        (*(v14 + 8))(v18, v56);

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v50, v51, v52);
        *v58 = v66[0];
        OUTLINED_FUNCTION_37_0();
        return;
      }

      __break(1u);
LABEL_21:
      sub_25BBF1454();
      v20 = v53;
      v7[2] = v53;
      if (!v21)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v60 = v12;
  sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v57 = v14;
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = *v11;
  v19 = *v3;
  v59 = v1;
  sub_25BAA48D4(v1, &v75, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v76[0] + 1))
  {
    v73[0] = v75;
    v73[1] = v76[0];
    v73[2] = v76[1];
    v74 = v77;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_75_5();

    sub_25BAA48D4(v68, v73, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v68);
    if (*(&v76[0] + 1))
    {
      sub_25BAA6FBC(&v75, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v1) = v19;
  type metadata accessor for ContextManager();
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35((v20 + 2));
  v21 = v20[2];
  v22 = *(v21 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[2] = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v22)
  {
    while (v22 <= *(v21 + 16))
    {
      v7 = sub_25BC32FA0();
      v20[2] = v21;
      swift_endAccess();

      v19 = v1;
LABEL_10:
      v20 = HIDWORD(v9);
      v24 = sub_25BBE5CAC(v7);
      v66 = v25;
      OUTLINED_FUNCTION_64_7(v24, v26, v27, v28, v29, v30, v31, v32, *&v25, v33, v56, v57, v58, v59, v60, v61[0], v61[1], v61[2], v61[3], v61[4], v61[5], v62, v63[0], v63[1], v63[2]);
      v22 = *(v67 + 16);

      v63[0] = v18;
      if (SHIDWORD(v9) >= v9)
      {
        v68[3] = MEMORY[0x277D849A8];
        v68[4] = &protocol witness table for Int32;
        LODWORD(v68[0]) = v9;
        v70 = MEMORY[0x277D849A8];
        v71 = &protocol witness table for Int32;
        v69 = HIDWORD(v9);
        v72 = 514;
        v65 = 0;
        OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
        *(v76 + 8) = xmmword_25BCBC690;
        *(&v76[1] + 1) = "init(id:state:shape:distribution:creationSite:)";
        v77 = 47;
        v78 = v34;
        v35 = type metadata accessor for RandomOperation();
        v36 = OUTLINED_FUNCTION_201(v35);
        OUTLINED_FUNCTION_16_34(v36, v37, v38, v39, v63, v68, &v75);
        sub_25BB18AA4();
        sub_25BAA48D4(v73, v63, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v64)
        {
          OUTLINED_FUNCTION_53_10();
          sub_25BABEF40(v68, v61);
          OUTLINED_FUNCTION_97_4();
          sub_25BAA6FBC(v61, &qword_27FBB6730, &qword_25BCBC4B0);
          sub_25BABF0A8(v68);
        }

        else
        {
          sub_25BAA6FBC(v63, &qword_27FBB6730, &qword_25BCBC4B0);
          OUTLINED_FUNCTION_89_6();
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v68);
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v68);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        swift_allocObject();

        v41 = OUTLINED_FUNCTION_36_14(v40);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;

        sub_25BAA6EB0();
        sub_25BAA48D4(v73, v63, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v64)
        {
          OUTLINED_FUNCTION_53_10();
          v63[0] = v42;
          v44 = Tensor.scalarType.getter(v43);
          sub_25BBABD24(v44, v45);
          OUTLINED_FUNCTION_186();
          if (!v46)
          {
            OUTLINED_FUNCTION_84_4();
            OUTLINED_FUNCTION_55(v68, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v47, v48);
          }

          v63[0] = v42;
          Tensor.place(on:)(v68);
          sub_25BABF0A8(v68);
          v42 = v63[0];
        }

        else
        {
          sub_25BAA6FBC(v63, &qword_27FBB6730, &qword_25BCBC4B0);
          v63[0] = v42;
        }

        v61[0] = v42;
        HIBYTE(v62) = v19;
        (*(v57 + 104))(v17, *MEMORY[0x277D84660], v58);
        OUTLINED_FUNCTION_94_5();

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v49, v50, v51);
        (*(v57 + 8))(v17, v58);

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v52, v53, v54);
        *v60 = v68[0];
        OUTLINED_FUNCTION_10_16();
        return;
      }

      __break(1u);
LABEL_21:
      sub_25BBF1454();
      v21 = v55;
      v20[2] = v55;
      if (!v22)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void Tensor.init(randomNormal:mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_21();
  sub_25BAA48D4(v6, &v145, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v146)
  {
    OUTLINED_FUNCTION_49_13();
  }

  else
  {
    type metadata accessor for ContextManager();
    v7 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v7, v8, v9, v10, v11, v12, v13, v14, v115, v122, v123, v124, v125, v126, v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);

    sub_25BAA48D4(v143, &v144, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v143);
    if (v146)
    {
      sub_25BAA6FBC(&v145, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for ContextManager();
  v16 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35((v16 + 2));
  OUTLINED_FUNCTION_61_7();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[2] = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v3 = v114;
  v16[2] = v114;
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v15 > *(v3 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v1 = sub_25BC32FA0();
  v16[2] = v3;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(v1);
  OUTLINED_FUNCTION_48_12(v18, v19, v20, v21, v22, v23, v24, v25, v26, v115, v122, v123, v124, v125, v126, v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);

  *&v129 = v5;
  OUTLINED_FUNCTION_82_6();
  v143[120] = 0;
  v143[121] = v4;
  HIBYTE(v133) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  v28 = OUTLINED_FUNCTION_14_3(v27, xmmword_25BCBC690);
  v29 = OUTLINED_FUNCTION_201(v28);
  OUTLINED_FUNCTION_16_34(v29, v30, v31, v32, &v129, v143, &v145);
  v33 = sub_25BB18AA4();
  v39 = OUTLINED_FUNCTION_100_4(v33, v34, &qword_27FBB6730, &qword_25BCBC4B0, v35, v36, v37, v38, v116, v122, v123, v124, v125, v126, v127, v128);
  if (*(&v130 + 1))
  {
    OUTLINED_FUNCTION_3_41(v39, v40, v41, v42, v43, v44, v45, v46, v47, v117, v122, v123, v124, v125, v126, v127, v128, v129, v130, v48);
    v49 = sub_25BABEF40(v143, &v122);
    OUTLINED_FUNCTION_30_3(v49, v50);
    sub_25BAA6FBC(&v122, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BABF0A8(v143);
  }

  else
  {
    sub_25BAA6FBC(&v129, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v51 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v51, v52, v53, v54, v55, v56, v57, v58, v117, v122, v123, v124, v125, v126, v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);

  sub_25BAA4AF4(v143);
  v59 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v59, v60, v61, v62, v63, v64, v65, v66, v118, v122, v123, v124, v125, v126, v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);

  sub_25BAA4AF4(v143);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();

  v75 = OUTLINED_FUNCTION_8(v67, v68, v69, v70, v71, v72, v73, v74, v119, v122, v123, v124, v125, v126, v127, v128, v129, *(&v129 + 1), v130, *(&v130 + 1), v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143[0]);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;

  sub_25BAA6EB0();
  v83 = OUTLINED_FUNCTION_100_4(v77, v78, &qword_27FBB6730, &qword_25BCBC4B0, v79, v80, v81, v82, v120, v122, v123, v124, v125, v126, v127, v128);
  if (*(&v130 + 1))
  {
    OUTLINED_FUNCTION_3_41(v83, v84, v85, v86, v87, v88, v89, v90, v91, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v92);
    *&v129 = v76;
    v94 = Tensor.scalarType.getter(v93);
    sub_25BBABD24(v94, v95);
    OUTLINED_FUNCTION_186();
    if (!v96)
    {
      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_55(v143, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v97, v98);
    }

    *&v129 = v76;
    Tensor.place(on:)(v143);

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v99, v100, v101);
    sub_25BABF0A8(v143);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v102, v103, v104);
    v76 = v129;
  }

  else
  {

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v105, v106, v107);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v108, v109, v110);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v111, v112, v113);
  }

  *v0 = v76;
  OUTLINED_FUNCTION_37_0();
}

void Tensor.init(randomTruncatedNormal:mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_21();
  sub_25BAA48D4(v6, &v152, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v153)
  {
    OUTLINED_FUNCTION_49_13();
  }

  else
  {
    type metadata accessor for ContextManager();
    v7 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v7, v8, v9, v10, v11, v12, v13, v14, v117, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);

    sub_25BAA48D4(v145, &v151, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v145);
    if (v153)
    {
      sub_25BAA6FBC(&v152, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for ContextManager();
  v16 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35((v16 + 2));
  OUTLINED_FUNCTION_61_7();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[2] = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454();
  v3 = v116;
  v16[2] = v116;
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v15 > *(v3 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v1 = sub_25BC32FA0();
  v16[2] = v3;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(v1);
  OUTLINED_FUNCTION_48_12(v18, v19, v20, v21, v22, v23, v24, v25, v26, v117, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);

  *&v131 = v5;
  OUTLINED_FUNCTION_82_6();
  v147 = v27;
  v148 = v28;
  LODWORD(v146) = 0x40000000;
  v149 = 1;
  v150 = v4;
  HIBYTE(v135) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  v30 = OUTLINED_FUNCTION_14_3(v29, xmmword_25BCBC690);
  v31 = OUTLINED_FUNCTION_201(v30);
  OUTLINED_FUNCTION_16_34(v31, v32, v33, v34, &v131, v145, &v152);
  v35 = sub_25BB18AA4();
  v41 = OUTLINED_FUNCTION_100_4(v35, v36, &qword_27FBB6730, &qword_25BCBC4B0, v37, v38, v39, v40, v118, v124, v125, v126, v127, v128, v129, v130);
  if (*(&v132 + 1))
  {
    OUTLINED_FUNCTION_3_41(v41, v42, v43, v44, v45, v46, v47, v48, v49, v119, v124, v125, v126, v127, v128, v129, v130, v131, v132, v50);
    v51 = sub_25BABEF40(v145, &v124);
    OUTLINED_FUNCTION_30_3(v51, v52);
    sub_25BAA6FBC(&v124, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BABF0A8(v145);
  }

  else
  {
    sub_25BAA6FBC(&v131, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v53 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v53, v54, v55, v56, v57, v58, v59, v60, v119, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);

  sub_25BAA4AF4(v145);
  v61 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v61, v62, v63, v64, v65, v66, v67, v68, v120, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);

  sub_25BAA4AF4(v145);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();

  v77 = OUTLINED_FUNCTION_8(v69, v70, v71, v72, v73, v74, v75, v76, v121, v124, v125, v126, v127, v128, v129, v130, v131, *(&v131 + 1), v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145[0]);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  sub_25BAA6EB0();
  v85 = OUTLINED_FUNCTION_100_4(v79, v80, &qword_27FBB6730, &qword_25BCBC4B0, v81, v82, v83, v84, v122, v124, v125, v126, v127, v128, v129, v130);
  if (*(&v132 + 1))
  {
    OUTLINED_FUNCTION_3_41(v85, v86, v87, v88, v89, v90, v91, v92, v93, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v94);
    *&v131 = v78;
    v96 = Tensor.scalarType.getter(v95);
    sub_25BBABD24(v96, v97);
    OUTLINED_FUNCTION_186();
    if (!v98)
    {
      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_55(v145, "placed(on:)", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Tensor/Tensor.swift", v99, v100);
    }

    *&v131 = v78;
    Tensor.place(on:)(v145);

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v101, v102, v103);
    sub_25BABF0A8(v145);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v104, v105, v106);
    v78 = v131;
  }

  else
  {

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v107, v108, v109);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v110, v111, v112);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v113, v114, v115);
  }

  *v0 = v78;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BC07EE0(uint64_t a1)
{
  OUTLINED_FUNCTION_35(a1 + 24);
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  sub_25BCB617C();
  v34 = 0;
  v4 = 0;
  v36 = MEMORY[0x277D84F90];
  v32 = (MEMORY[0x277D84F90] + 32);
  v5 = &off_279972000;
  while (2)
  {
    if (v4 < v3)
    {
      v6 = v2 + 32 + 8 * v4;
      while (1)
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_46_13(v6, v41);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }

        OUTLINED_FUNCTION_44_11(v41);
LABEL_17:
        ++v4;
        v6 += 8;
        if (v4 >= v3)
        {
          goto LABEL_35;
        }
      }

      v8 = Strong;
      if (*(Strong + 32) > 0)
      {

        v9 = sub_25BA928B4();
        [v9 v5[150]];

        OUTLINED_FUNCTION_35(v8 + 40);
        sub_25BA9323C(v8 + 40, v38);
        if (!v40)
        {
          sub_25BA9BE3C(v38, v37);
          v10 = v5;
          v11 = v37[1];
          ObjectType = swift_getObjectType();
          v13 = *(v11 + 56);
          v14 = v11;
          v5 = v10;
          v15 = v13(ObjectType, v14);
          sub_25BA977E0(v37);
          [*(v8 + 224) unlock];

          OUTLINED_FUNCTION_44_11(v41);
          if ((v15 & 1) == 0)
          {
            v16 = v34;
            if (!v34)
            {
              if ((v36[3] >> 1) + 0x4000000000000000 < 0)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_90_3();
              if (v19 ^ v20 | v18)
              {
                v21 = 1;
              }

              else
              {
                v21 = v17;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
              v22 = OUTLINED_FUNCTION_77();
              v23 = (_swift_stdlib_malloc_size_0(v22) - 32) / 8;
              v22[2] = v21;
              v22[3] = (2 * v23) | 1;
              v24 = (v22 + 4);
              v25 = v36[3];
              v26 = v25 >> 1;
              if (v36[2])
              {
                if (v22 != v36 || v24 >= &v36[v26 + 4])
                {
                  v33 = v36[3];
                  v35 = v23;
                  memmove(v22 + 4, v36 + 4, 8 * v26);
                  v24 = (v22 + 4);
                  v25 = v33;
                  v23 = v35;
                }

                v36[2] = 0;
              }

              v32 = (v24 + 8 * v26);
              v16 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - (v25 >> 1);

              v36 = v22;
              v5 = v10;
            }

            v20 = __OFSUB__(v16, 1);
            v28 = v16 - 1;
            if (!v20)
            {
              ++v4;
              *v32++ = v8;
              v34 = v28;
              continue;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            return;
          }

          goto LABEL_16;
        }

        if (v40 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(&v39);
        }

        else
        {
          sub_25BA9778C(v38);
        }

        [*(v8 + 224) unlock];
      }

      OUTLINED_FUNCTION_44_11(v41);
LABEL_16:

      goto LABEL_17;
    }

    break;
  }

LABEL_35:

  v29 = v36[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v20 = __OFSUB__(v30, v34);
    v31 = v30 - v34;
    if (v20)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36[2] = v31;
  }
}

void sub_25BC08208()
{
  v0 = sub_25BB70FE0();
  v2 = v1;
  v3 = sub_25BA9BEA0(v0);
  v4 = 0;
  v5 = v0 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v7 = (MEMORY[0x277D84F90] + 32);
  v8 = v0 & 0xFFFFFFFFFFFFFF8;
  v26 = v0 & 0xFFFFFFFFFFFFFF8;
  v27 = v0;
  while (v3 != v2)
  {
    if (v5)
    {
      v9 = MEMORY[0x25F8779B0](v2, v0);
    }

    else
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v2 >= *(v8 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v0 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_30;
    }

    if (!v4)
    {
      if ((v6[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_33;
      }

      v10 = v3;
      v11 = v5;
      OUTLINED_FUNCTION_90_3();
      if (v14 ^ v15 | v13)
      {
        v16 = 1;
      }

      else
      {
        v16 = v12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v17 = OUTLINED_FUNCTION_77();
      v18 = (_swift_stdlib_malloc_size_0(v17) - 32) / 8;
      v17[2] = v16;
      v17[3] = (2 * v18) | 1;
      v19 = (v17 + 4);
      v20 = v6[3];
      v21 = v20 >> 1;
      if (v6[2])
      {
        if (v17 != v6 || v19 >= &v6[v21 + 4])
        {
          memmove(v17 + 4, v6 + 4, 8 * v21);
        }

        v6[2] = 0;
      }

      v7 = (v19 + 8 * v21);
      v4 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - (v20 >> 1);

      v6 = v17;
      v5 = v11;
      v3 = v10;
      v8 = v26;
      v0 = v27;
    }

    v15 = __OFSUB__(v4--, 1);
    if (v15)
    {
      goto LABEL_32;
    }

    *v7++ = v9;
    ++v2;
  }

  v23 = v6[3];
  if (v23 < 2)
  {
    return;
  }

  v24 = v23 >> 1;
  v15 = __OFSUB__(v24, v4);
  v25 = v24 - v4;
  if (!v15)
  {
    v6[2] = v25;
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_25BC083D4(unint64_t a1)
{
  v2 = sub_25BAAF54C(a1);
  v3 = v2;
  if (v2)
  {
    if (v2 <= 0)
    {
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v4 = swift_allocObject();
      v5 = _swift_stdlib_malloc_size_0(v4);
      v4[2] = v3;
      v4[3] = 2 * ((v5 - 32) / 24);
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = v4[3];

  OUTLINED_FUNCTION_9_23();
  v7 = sub_25BC4E1E4();
  sub_25BCB617C();
  sub_25BC45D94(v7, a1);
  v9 = v8;

  if (v3 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = v4 + 4;
  v11 = v6 >> 1;
  if (v3)
  {
    v12 = 0;
    v13 = *(v9 + 16);
    v11 -= v3;
    v14 = (v9 + 48);
    while (v13 != v12)
    {
      if (v12 >= *(v9 + 16))
      {
        goto LABEL_39;
      }

      ++v12;
      v16 = *(v14 - 2);
      v15 = *(v14 - 1);
      v17 = *v14;
      v14 += 3;
      *v10 = v16;
      v10[1] = v15;
      v10[2] = v17;
      v10 += 3;
      sub_25BCB617C();

      if (v3 == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_13:
  v18 = (v9 + 24 * v3 + 48);
  v35 = v9;
  while (v3 < *(v9 + 16))
  {
    v19 = *(v18 - 2);
    v20 = *(v18 - 1);
    v21 = *v18;
    if (v11)
    {
      sub_25BCB617C();

      v22 = v4;
    }

    else
    {
      if ((v4[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_90_3();
      if (v25 ^ v26 | v24)
      {
        v27 = 1;
      }

      else
      {
        v27 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v22 = swift_allocObject();
      v28 = (_swift_stdlib_malloc_size_0(v22) - 32) / 24;
      v22[2] = v27;
      v22[3] = 2 * v28;
      v29 = v22 + 4;
      v30 = v4[3] >> 1;
      v10 = &v22[3 * v30 + 4];
      v11 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      if (v4[2])
      {
        if (v22 != v4 || v29 >= &v4[3 * v30 + 4])
        {
          memmove(v29, v4 + 4, 24 * v30);
        }

        sub_25BCB617C();

        v4[2] = 0;
      }

      else
      {
        sub_25BCB617C();
      }

      v9 = v35;
    }

    v26 = __OFSUB__(v11--, 1);
    if (v26)
    {
      __break(1u);
      goto LABEL_38;
    }

    *v10 = v19;
    v10[1] = v20;
    v10[2] = v21;
    v10 += 3;
    v18 += 3;
    ++v3;
    v4 = v22;
  }

  v32 = v4[3];
  if (v32 < 2)
  {
    return;
  }

  v33 = v32 >> 1;
  v26 = __OFSUB__(v33, v11);
  v34 = v33 - v11;
  if (!v26)
  {
    v4[2] = v34;
    return;
  }

LABEL_42:
  __break(1u);
}

void *sub_25BC086B0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_25BC08CE8(a1, a2);
  v5 = v4;
  if (v4)
  {
    if (v4 <= 0)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size_0(v6);
      v6[2] = v5;
      v6[3] = 2 * ((v7 - 32) / 4);
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v8 = v6[3];

  if (v5 < 0)
  {
    goto LABEL_71;
  }

  v10 = HIDWORD(v3);
  v11 = v6 + 4;
  v12 = v8 >> 1;
  v13 = a2 >> 63;
  if (!v5)
  {
    goto LABEL_24;
  }

  v12 -= v5;
  do
  {
    v14 = v3 <= v10;
    if (a2 > 0)
    {
      v14 = v3 >= v10;
    }

    if (v14)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
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
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    if (a2 < 0 == ((v3 & 0x80000000) == 0))
    {
      v15 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_66;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_69;
      }

      if (v15 > 0x7FFFFFFF)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_67;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_68;
      }

      LODWORD(v15) = v3 + a2;
      if (__OFADD__(v3, a2))
      {
        LODWORD(v15) = v13 ^ 0x7FFFFFFF;
      }
    }

    *v11++ = v3;
    LODWORD(v3) = v15;
    --v5;
  }

  while (v5);
  LODWORD(v3) = v15;
LABEL_24:
  v31 = v13 ^ 0x7FFFFFFF;
  while (2)
  {
    v16 = v3 <= v10;
    if (a2 > 0)
    {
      v16 = v3 >= v10;
    }

    if (!v16)
    {
      if (a2 < 0 == ((v3 & 0x80000000) == 0))
      {
        v17 = a2 + v3;
        if (__OFADD__(a2, v3))
        {
          goto LABEL_60;
        }

        if (v17 < 0xFFFFFFFF80000000)
        {
          goto LABEL_62;
        }

        if (v17 > 0x7FFFFFFF)
        {
          goto LABEL_64;
        }

LABEL_38:
        if (v12)
        {
LABEL_52:
          v27 = __OFSUB__(v12--, 1);
          if (v27)
          {
            __break(1u);
            goto LABEL_59;
          }

          *v11++ = v3;
          LODWORD(v3) = v17;
          continue;
        }
      }

      else
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_61;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_63;
        }

        LODWORD(v17) = v3 + a2;
        if (!__OFADD__(v3, a2))
        {
          goto LABEL_38;
        }

        LODWORD(v17) = v31;
        if (v12)
        {
          LODWORD(v17) = v31;
          goto LABEL_52;
        }
      }

      v18 = v6[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_65;
      }

      v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
      v21 = swift_allocObject();
      v22 = (_swift_stdlib_malloc_size_0(v21) - 32) / 4;
      v21[2] = v20;
      v21[3] = 2 * v22;
      v23 = (v21 + 4);
      v24 = v6[3];
      v25 = v24 >> 1;
      if (v6[2])
      {
        if (v21 != v6 || v23 >= v6 + 4 * v25 + 32)
        {
          memmove(v21 + 4, v6 + 4, 4 * v25);
        }

        v6[2] = 0;
      }

      v11 = (v23 + 4 * v25);
      v12 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

      v6 = v21;
      goto LABEL_52;
    }

    break;
  }

  v28 = v6[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v12);
    v30 = v29 - v12;
    if (v27)
    {
      goto LABEL_72;
    }

    v6[2] = v30;
  }

  return v6;
}

void *sub_25BC089B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
    v7 = OUTLINED_FUNCTION_77();
    v8 = 2 * ((_swift_stdlib_malloc_size_0(v7) - 32) / 16);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  result = v7;
  v10 = v7 + 4;
  v11 = v8 >> 1;
  if (v6)
  {
    v12 = 0;
    while (v4 != v12)
    {
      if (v5 == v12)
      {
        goto LABEL_40;
      }

      v13 = *(a2 + 32 + 8 * v12);
      v14 = v12 + 1;
      *v10 = *(a1 + 32 + 8 * v12);
      v10[1] = v13;
      v10 += 2;
      v12 = v14;
      if (v6 == v14)
      {
        v11 -= v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_13:
  v15 = a1 + 32;
  v16 = a2 + 32;
  v36 = a2 + 32;
  v37 = a1 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_43;
    }

    v17 = *(v15 + 8 * v6);
    v18 = *(v16 + 8 * v6);
    if (!v11)
    {
      if ((result[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_90_3();
      if (v22 ^ v23 | v21)
      {
        v24 = 1;
      }

      else
      {
        v24 = v20;
      }

      v38 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
      v25 = OUTLINED_FUNCTION_77();
      v26 = _swift_stdlib_malloc_size_0(v25) - 32;
      v27 = v38;
      v28 = v26 / 16;
      v25[2] = v24;
      v25[3] = 2 * (v26 / 16);
      v29 = (v25 + 4);
      v30 = v38[3];
      v31 = v30 >> 1;
      if (v38[2])
      {
        if (v25 != v38 || v29 >= &v38[2 * v31 + 4])
        {
          memmove(v25 + 4, v38 + 4, 16 * v31);
          v27 = v38;
        }

        v27[2] = 0;
      }

      v10 = (v29 + 16 * v31);
      v11 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - (v30 >> 1);

      result = v25;
      v16 = v36;
      v15 = v37;
    }

    v23 = __OFSUB__(v11--, 1);
    if (v23)
    {
      goto LABEL_44;
    }

    *v10 = v17;
    v10[1] = v18;
    v10 += 2;
    ++v6;
  }

  v33 = result[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v23 = __OFSUB__(v34, v11);
    v35 = v34 - v11;
    if (v23)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    result[2] = v35;
  }

  return result;
}

char *sub_25BC08BF4(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, void *a5)
{
  result = sub_25BCB584C();
  v9 = result;
  if (result)
  {
    result = sub_25BCB587C();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_25BCB586C();
  if (a5 && v9)
  {
    if (result >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = result;
    }

    return memmove(a5, v9, v12);
  }

  return result;
}

uint64_t sub_25BC08CA4(int64_t a1, int64_t a2, uint64_t a3)
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

uint64_t sub_25BC08CE8(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = HIDWORD(a1);
  while (1)
  {
    v5 = a1 <= v4;
    if (a2 > 0)
    {
      v5 = a1 >= v4;
    }

    if (v5)
    {
      return result;
    }

    if (a2 < 0 == a1 >= 0)
    {
      v6 = __OFADD__(a2, a1);
      a1 = a2 + a1;
      if (v6)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      if (a1 < 0xFFFFFFFF80000000)
      {
        goto LABEL_21;
      }

      if (a1 > 0x7FFFFFFF)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_19;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_20;
      }

      v6 = __OFADD__(a1, a2);
      LODWORD(a1) = a1 + a2;
      if (v6)
      {
        LODWORD(a1) = (a2 >> 63) ^ 0x7FFFFFFF;
      }
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }
}

void sub_25BC08DFC(float a1, float a2, float a3)
{
  v5 = a1;
  v6 = 0;
  for (i = 32; ; i += 4)
  {
    v8 = a1 <= a2;
    if (a3 > 0.0)
    {
      v8 = a1 >= a2;
    }

    if (v8)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    a1 = v5 + (++v6 * a3);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v9 = swift_allocObject();
    v10 = 2 * ((_swift_stdlib_malloc_size_0(v9) - 32) / 4);
    *(v9 + 2) = v6;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 24);
  }

  v11 = v10 >> 1;
  v12 = v9 + 8;
  if (!v6)
  {
    v16 = v5;
    goto LABEL_18;
  }

  v13 = 0;
  v11 -= v6;
  v14 = v5;
  while (1)
  {
    v15 = v14 <= a2;
    if (a3 > 0.0)
    {
      v15 = v14 >= a2;
    }

    if (v15)
    {
      break;
    }

    v16 = v5 + (++v13 * a3);
    *v12++ = v14;
    v14 = v16;
    if (v6 == v13)
    {
      while (1)
      {
LABEL_18:
        v17 = v16 <= a2;
        if (a3 > 0.0)
        {
          v17 = v16 >= a2;
        }

        if (v17)
        {
          break;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_43;
        }

        if (!v11)
        {
          v18 = *(v9 + 3);
          if (((v18 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_46;
          }

          v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v21 = swift_allocObject();
          v22 = (_swift_stdlib_malloc_size_0(v21) - 32) / 4;
          *(v21 + 2) = v20;
          *(v21 + 3) = 2 * v22;
          v23 = (v21 + 8);
          v24 = *(v9 + 3);
          v25 = v24 >> 1;
          if (*(v9 + 2))
          {
            if (v21 != v9 || v23 >= &v9[v25 + 8])
            {
              memmove(v21 + 8, v9 + 8, 4 * v25);
            }

            *(v9 + 2) = 0;
          }

          v12 = (v23 + 4 * v25);
          v11 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

          v9 = v21;
        }

        v27 = __OFSUB__(v11--, 1);
        if (v27)
        {
          goto LABEL_44;
        }

        *v12++ = v16;
        v16 = v5 + (++v6 * a3);
      }

      v28 = *(v9 + 3);
      if (v28 >= 2)
      {
        v29 = v28 >> 1;
        v27 = __OFSUB__(v29, v11);
        v30 = v29 - v11;
        if (v27)
        {
          goto LABEL_47;
        }

        *(v9 + 2) = v30;
      }

      return;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

unint64_t sub_25BC0908C()
{
  result = qword_27FBB6610;
  if (!qword_27FBB6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB6608, &qword_25BCCB660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1)
{
  *(v1 + 224) = 1;

  return sub_25BC0C634(a1, 0, v1 + 96, 0x100000000, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_96_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_25BC04C38(v4, va, v2, v3);
}

void OUTLINED_FUNCTION_97_4()
{

  sub_25BC170C8(v1, v0 + 40, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_99_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_25BAA48D4(a1 + 168, va, v6, v7);
}

uint64_t OUTLINED_FUNCTION_101_4(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_25BC091D0(uint64_t a1)
{
  v4 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_164_0();
  if (v9)
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v10 != 1);
    if (v11 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_198_1();

    v28 = OUTLINED_FUNCTION_149_1("The tensor is not a scalar, but has shape ");
    v29 = MEMORY[0x25F876F80](v28, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v29);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    OUTLINED_FUNCTION_163_1();
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC(v30, v31, v32, v33, v34, v35, 95, 2, v36);
    __break(1u);
  }

  else
  {
LABEL_6:
    v38 = a1;
    Tensor.scalarType.getter(v8);
    OUTLINED_FUNCTION_126_0();
    v13(&v37);
    if (v37 == 12)
    {

      v14 = OUTLINED_FUNCTION_116_3();
      sub_25BB3F7AC(v14, v15, v16, v17, v18, v19, v20, v21, v36);
      v23 = v22;
    }

    else
    {
      swift_retain_n();
      v24 = sub_25BA928B4();
      [v24 lock];

      OUTLINED_FUNCTION_170_1();
      [*(v1 + 224) unlock];

      swift_unknownObjectRelease();
      v37 = a1;
      v25 = OUTLINED_FUNCTION_186_1();
      v26(v25);
      OUTLINED_FUNCTION_199_1();
      (*(v6 + 8))(v2, v4);
      v23 = sub_25BC091D0(v38);
    }

    return v23 & 1;
  }

  return result;
}

uint64_t sub_25BC09420(uint64_t a1)
{
  v4 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_164_0();
  if (v9)
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v10 != 1);
    if (v11 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_198_1();

    v28 = OUTLINED_FUNCTION_149_1("The tensor is not a scalar, but has shape ");
    v29 = MEMORY[0x25F876F80](v28, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v29);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    OUTLINED_FUNCTION_163_1();
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC(v30, v31, v32, v33, v34, v35, 95, 2, v36);
    __break(1u);
  }

  else
  {
LABEL_6:
    v38 = a1;
    Tensor.scalarType.getter(v8);
    OUTLINED_FUNCTION_126_0();
    v13(&v37);
    if (v37 == 3)
    {

      v14 = OUTLINED_FUNCTION_116_3();
      sub_25BB3FB20(v14, v15, v16, v17, v18, v19, v20, v21, v36);
      v23 = v22;
    }

    else
    {
      swift_retain_n();
      v24 = sub_25BA928B4();
      [v24 lock];

      OUTLINED_FUNCTION_170_1();
      [*(v1 + 224) unlock];

      swift_unknownObjectRelease();
      v37 = a1;
      v25 = OUTLINED_FUNCTION_186_1();
      v26(v25);
      OUTLINED_FUNCTION_199_1();
      (*(v6 + 8))(v2, v4);
      v23 = sub_25BC09420(v38);
    }

    return v23;
  }

  return result;
}

void pow(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_118_3();
  OUTLINED_FUNCTION_2();
  v66 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *v1;
  v68 = *(*(*v1 + 16) + 152);
  v73[0] = *(*(v8 + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:_:)(&v68, v73, v74);

  v11 = v74[0];
  if (!v74[0])
  {
    goto LABEL_7;
  }

  v68 = v9;
  Tensor.scalarType.getter(v10);
  OUTLINED_FUNCTION_35_16();
  v13 = v12();
  v14 = LOBYTE(v73[0]);
  v74[0] = v8;
  Tensor.scalarType.getter(v13);
  OUTLINED_FUNCTION_126_0();
  v16 = v15(v72);
  v67 = v2;
  if (v14 != LOBYTE(v72[0]))
  {
    v17 = LOBYTE(v72[0]) + 13 * v14;
    if (v17 <= 0xA8)
    {
      v14 = byte_286D42018[v17 + 32];
      if (v14 != 13)
      {
        goto LABEL_5;
      }

      v74[0] = v9;
      v59 = Tensor.scalarType.getter(v16);
      v61 = v60;
      v62 = OUTLINED_FUNCTION_157_1(v59, v8);
      v68 = v59;
      v69 = v61;
      OUTLINED_FUNCTION_180_0(v62, v63, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_179_1(v64, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
      v58 = 405;
LABEL_9:
      sub_25BADDD28(v52, v53, v54, v55, v56, v57, v58);
    }

    __break(1u);
LABEL_7:
    v68 = *(*(v9 + 16) + 152);
    OUTLINED_FUNCTION_181_1(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_200_1(v51, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    v58 = 402;
    goto LABEL_9;
  }

LABEL_5:
  v68 = v9;
  v74[0] = v11;
  v18 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v18);
  LOBYTE(v74[0]) = v14;
  v19 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v65 = v20;
  v21 = OUTLINED_FUNCTION_191_1();
  v22(v21);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v23 = *(v66 + 8);
  v23(v7, v7);

  v68 = v8;
  v74[0] = v11;
  v24 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v24);
  LOBYTE(v74[0]) = v14;
  v65(v7, v19, v7);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v23(v7, v7);

  v25 = *(v68 + 16);
  v68 = v11;
  LOBYTE(v69) = v14;

  v26 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v26, v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v75 = xmmword_25BCCB470;
  v29 = OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1(v29);
  v30 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v30, v31, v32, 4, v33, v34, v35, v36, v19, v11);
  OUTLINED_FUNCTION_137_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v38 = OUTLINED_FUNCTION_31(v37);
  *(v38 + 16) = xmmword_25BCBAE70;
  *(v38 + 32) = v9;
  *(v38 + 40) = v8;

  v39 = OUTLINED_FUNCTION_34_16();
  sub_25BAAF130(v39, v40, v41, v42, 424, v43, 9, 2);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v73, v72);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v44 = v71;

  sub_25BAA4AF4(&v68);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v45 = v70;

  sub_25BAA4AF4(&v68);
  v46 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v46);
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v68) = v47;
  OUTLINED_FUNCTION_1_53();
  sub_25BABF20C(v25, 0, v72, v48, v44, v45);
  v49 = OUTLINED_FUNCTION_107_6();
  v50 = OUTLINED_FUNCTION_15_7(v49);
  *(v50 + 16) = v45;

  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v73);
  *v67 = v50;
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.squared()()
{
  v9 = *v0;
  v1 = *(*(v9 + 16) + 160);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5 = MEMORY[0x277D84F90];
  v4 = v1;
  sub_25BAA51C8(v7, v3);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v5, &unk_286D42220, &v4, v3, &v6);
  sub_25BA9C2C8(v7);
  *&v7[0] = v6;
  pow(_:_:)();
}

void max(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_118_3();
  OUTLINED_FUNCTION_2();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_154_1();
  do
  {
    if (v7 == 4)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v8);
  v9 = 0;
  do
  {
    if (v9 == 4)
    {
      v70 = OUTLINED_FUNCTION_171_0(v6);
      v71 = v53;
      v52 = xmmword_25BCC6530;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v8);
  OUTLINED_FUNCTION_98_6(v10);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  v12 = v74;
  if (!v74)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v61, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    v60 = 481;
    goto LABEL_22;
  }

  v70 = v2;
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_35_16();
  v14 = v13();
  LOBYTE(v15) = v73[0];
  v74 = v0;
  Tensor.scalarType.getter(v14);
  OUTLINED_FUNCTION_53_11();
  v6 = v16();
  if (v73[0] != v72)
  {
    v17 = v72 + 13 * v73[0];
    if (v17 <= 0xA8)
    {
      v15 = byte_286D42018[v17 + 32];
      if (v15 != 13)
      {
        goto LABEL_13;
      }

      v74 = v2;
      v62 = Tensor.scalarType.getter(v6);
      v64 = v63;
      v65 = OUTLINED_FUNCTION_157_1(v62, v0);
      v70 = v62;
      v71 = v64;
      OUTLINED_FUNCTION_52_10(v65, v66, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v67, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
      v60 = 484;
LABEL_22:
      sub_25BADDD28(v54, v55, v56, v57, v58, v59, v60);
    }

    __break(1u);
LABEL_19:
    v70 = OUTLINED_FUNCTION_172_1(v6);
    v71 = v51;
    v52 = xmmword_25BCC6520;
LABEL_21:
    OUTLINED_FUNCTION_12_32(v52);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_22;
  }

LABEL_13:
  v70 = v2;
  v74 = v12;
  OUTLINED_FUNCTION_103_5();
  LOBYTE(v74) = v15;
  OUTLINED_FUNCTION_139_1();
  v68 = v18;
  v18(v1);
  OUTLINED_FUNCTION_62_6();
  v19 = *(v69 + 8);
  v20 = OUTLINED_FUNCTION_194();
  v19(v20);

  v70 = v0;
  v74 = v12;
  OUTLINED_FUNCTION_103_5();
  v21 = OUTLINED_FUNCTION_153_1();
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_194();
  v19(v23);

  if (OUTLINED_FUNCTION_117_4(*(v2 + 16)) && OUTLINED_FUNCTION_117_4(*(v0 + 16)))
  {
    OUTLINED_FUNCTION_131_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_1();

    v24 = OUTLINED_FUNCTION_116_3();
    sub_25BAAF074(v24, v25);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
    v75 = xmmword_25BCCB470;
    v27 = OUTLINED_FUNCTION_77_5(v26);
    OUTLINED_FUNCTION_161_1(v27);
    v28 = OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_108_5(v28, v29, v30, 5, v31, v32, v33, v34, v2, v68);
    OUTLINED_FUNCTION_137_1();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v36 = OUTLINED_FUNCTION_31(v35);
    OUTLINED_FUNCTION_155_1(v36, xmmword_25BCBAE70);

    v37 = OUTLINED_FUNCTION_34_16();
    sub_25BAB524C(v37, v38, v39, v40, 504, v41, 9, 2u, v42);
    swift_setDeallocating();
    sub_25BAB3FD0();
    OUTLINED_FUNCTION_175_1();
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_176_1();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_174_1();
    sub_25BAA4AF4(&v70);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_173_1();
    sub_25BAA4AF4(&v70);
    v43 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3(v43);
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v70) = v44;
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_64_8(v45, v46, v47, v48);
    v49 = OUTLINED_FUNCTION_107_6();
    v50 = OUTLINED_FUNCTION_15_7(v49);
    OUTLINED_FUNCTION_13_22(v50);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_162_1();

    sub_25BA9C2C8(v73);
    *v3 = v2;
  }

  OUTLINED_FUNCTION_10_16();
}

void static Tensor.* infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

uint64_t sub_25BC0A13C(void (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  a1();
  swift_setDeallocating();
  sub_25BAB9E1C();
  return 1;
}

unsigned __int8 *sub_25BC0A1B8(unsigned __int8 *result)
{
  if (result)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC0A1C8(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  __break(1u);
  return result;
}

void min(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_118_3();
  OUTLINED_FUNCTION_2();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_154_1();
  do
  {
    if (v7 == 4)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v8);
  v9 = 0;
  do
  {
    if (v9 == 4)
    {
      v70 = OUTLINED_FUNCTION_171_0(v6);
      v71 = v53;
      v52 = xmmword_25BCC6530;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v8);
  OUTLINED_FUNCTION_98_6(v10);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  v12 = v74;
  if (!v74)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v61, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    v60 = 536;
    goto LABEL_22;
  }

  v70 = v2;
  Tensor.scalarType.getter(v11);
  OUTLINED_FUNCTION_35_16();
  v14 = v13();
  LOBYTE(v15) = v73[0];
  v74 = v0;
  Tensor.scalarType.getter(v14);
  OUTLINED_FUNCTION_53_11();
  v6 = v16();
  if (v73[0] != v72)
  {
    v17 = v72 + 13 * v73[0];
    if (v17 <= 0xA8)
    {
      v15 = byte_286D42018[v17 + 32];
      if (v15 != 13)
      {
        goto LABEL_13;
      }

      v74 = v2;
      v62 = Tensor.scalarType.getter(v6);
      v64 = v63;
      v65 = OUTLINED_FUNCTION_157_1(v62, v0);
      v70 = v62;
      v71 = v64;
      OUTLINED_FUNCTION_52_10(v65, v66, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v67, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
      v60 = 539;
LABEL_22:
      sub_25BADDD28(v54, v55, v56, v57, v58, v59, v60);
    }

    __break(1u);
LABEL_19:
    v70 = OUTLINED_FUNCTION_172_1(v6);
    v71 = v51;
    v52 = xmmword_25BCC6520;
LABEL_21:
    OUTLINED_FUNCTION_12_32(v52);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_22;
  }

LABEL_13:
  v70 = v2;
  v74 = v12;
  OUTLINED_FUNCTION_103_5();
  LOBYTE(v74) = v15;
  OUTLINED_FUNCTION_139_1();
  v68 = v18;
  v18(v1);
  OUTLINED_FUNCTION_62_6();
  v19 = *(v69 + 8);
  v20 = OUTLINED_FUNCTION_194();
  v19(v20);

  v70 = v0;
  v74 = v12;
  OUTLINED_FUNCTION_103_5();
  v21 = OUTLINED_FUNCTION_153_1();
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_194();
  v19(v23);

  if (OUTLINED_FUNCTION_117_4(*(v2 + 16)) && OUTLINED_FUNCTION_117_4(*(v0 + 16)))
  {
    OUTLINED_FUNCTION_131_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_1();

    v24 = OUTLINED_FUNCTION_116_3();
    sub_25BAAF074(v24, v25);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
    v75 = xmmword_25BCCB470;
    v27 = OUTLINED_FUNCTION_77_5(v26);
    OUTLINED_FUNCTION_161_1(v27);
    v28 = OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_108_5(v28, v29, v30, 6, v31, v32, v33, v34, v2, v68);
    OUTLINED_FUNCTION_137_1();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v36 = OUTLINED_FUNCTION_31(v35);
    OUTLINED_FUNCTION_155_1(v36, xmmword_25BCBAE70);

    v37 = OUTLINED_FUNCTION_34_16();
    sub_25BAB524C(v37, v38, v39, v40, 559, v41, 9, 2u, v42);
    swift_setDeallocating();
    sub_25BAB3FD0();
    OUTLINED_FUNCTION_175_1();
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_176_1();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_174_1();
    sub_25BAA4AF4(&v70);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_173_1();
    sub_25BAA4AF4(&v70);
    v43 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3(v43);
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v70) = v44;
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_64_8(v45, v46, v47, v48);
    v49 = OUTLINED_FUNCTION_107_6();
    v50 = OUTLINED_FUNCTION_15_7(v49);
    OUTLINED_FUNCTION_13_22(v50);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_162_1();

    sub_25BA9C2C8(v73);
    *v3 = v2;
  }

  OUTLINED_FUNCTION_10_16();
}

void static Tensor.% infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_118_3();
  OUTLINED_FUNCTION_2();
  v67 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = *v1;
  v9 = *v0;
  v69 = *(*(v8 + 16) + 152);
  v74[0] = *(*(v9 + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:_:)(&v69, v74, v75);

  v11 = v75[0];
  if (!v75[0])
  {
    goto LABEL_7;
  }

  v69 = v8;
  Tensor.scalarType.getter(v10);
  OUTLINED_FUNCTION_35_16();
  v13 = v12();
  v14 = LOBYTE(v74[0]);
  v75[0] = v9;
  Tensor.scalarType.getter(v13);
  OUTLINED_FUNCTION_126_0();
  v16 = v15(v73);
  v68 = v2;
  if (v14 != LOBYTE(v73[0]))
  {
    v17 = LOBYTE(v73[0]) + 13 * v14;
    if (v17 <= 0xA8)
    {
      v14 = byte_286D42018[v17 + 32];
      if (v14 != 13)
      {
        goto LABEL_5;
      }

      v75[0] = v8;
      v60 = Tensor.scalarType.getter(v16);
      v62 = v61;
      v63 = OUTLINED_FUNCTION_157_1(v60, v9);
      v69 = v60;
      v70 = v62;
      OUTLINED_FUNCTION_180_0(v63, v64, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_179_1(v65, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_30_18();
      v59 = 25;
LABEL_9:
      sub_25BADDD28(v53, v54, v55, v56, v57, v58, v59);
    }

    __break(1u);
LABEL_7:
    v69 = *(*(v8 + 16) + 152);
    OUTLINED_FUNCTION_181_1(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_200_1(v52, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_30_18();
    v59 = 22;
    goto LABEL_9;
  }

LABEL_5:
  v69 = v8;
  v75[0] = v11;
  v18 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v18);
  LOBYTE(v75[0]) = v14;
  v19 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v66 = v20;
  v21 = OUTLINED_FUNCTION_191_1();
  v22(v21);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v23 = *(v67 + 8);
  v23(v7, v7);

  v69 = v9;
  v75[0] = v11;
  v24 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v24);
  LOBYTE(v75[0]) = v14;
  v66(v7, v19, v7);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v23(v7, v7);

  v25 = *(v69 + 16);
  v69 = v11;
  LOBYTE(v70) = v14;

  v26 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v26, v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v76 = xmmword_25BCCB470;
  v29 = OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1(v29);
  v30 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v30, v31, v32, 7, v33, v34, v35, v36, v19, v11);
  OUTLINED_FUNCTION_137_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v38 = OUTLINED_FUNCTION_31(v37);
  *(v38 + 16) = xmmword_25BCBAE70;
  *(v38 + 32) = v8;
  *(v38 + 40) = v9;

  v39 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v39, v40, v41, v42, 44, v43, v44);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v74, v73);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v45 = v72;

  sub_25BAA4AF4(&v69);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v46 = v71;

  sub_25BAA4AF4(&v69);
  v47 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v47);
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v69) = v48;
  OUTLINED_FUNCTION_1_53();
  sub_25BABF20C(v25, 0, v73, v49, v45, v46);
  v50 = OUTLINED_FUNCTION_107_6();
  v51 = OUTLINED_FUNCTION_15_7(v50);
  OUTLINED_FUNCTION_13_22(v51);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v74);
  *v68 = v45;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0ABD0(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v18[11] = v2;
    v18[12] = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v6 = a2[5];
    swift_retain_n();

    v8 = sub_25BAC42B0();
    v10 = v9;
    v17 = v6;
    v18[0] = v7;
    static Tensor./ infix(_:_:)();
    floor(_:)(v18, &v16);

    v16 = v18[0];
    static Tensor.- prefix(_:)(&v16);

    v16 = v17;
    static Tensor.* infix(_:_:)();

    v11 = v18[0];

    v12 = sub_25BAC42B0();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BCBAE70;
    *(v15 + 32) = v5;
    *(v15 + 40) = v8;
    *(v15 + 48) = v10;
    *(v15 + 56) = v11;
    *(v15 + 64) = v12;
    *(v15 + 72) = v14;

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor.% infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0B42C();
}

{
  sub_25BC0B2B4();
}

uint64_t sub_25BC0AD8C(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = *(result + 32);
    swift_retain_n();

    v4 = sub_25BAC42B0();
    v6 = v5;

    v7 = sub_25BAC42B0();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25BCBAE70;
    *(v10 + 32) = v3;
    *(v10 + 40) = v4;
    *(v10 + 48) = v6;
    *(v10 + 56) = v3;
    *(v10 + 64) = v7;
    *(v10 + 72) = v9;

    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor.+ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

void static Tensor.- infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

uint64_t sub_25BC0AF40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  a5(&v8, &v7, a2, a3, a4);

  *a1 = v8;
  return result;
}

uint64_t sub_25BC0AFEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *))
{
  v8 = *v4;
  v14 = v8;
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v10 = (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  v12[8] = v8;
  Tensor.scalarType.getter(v10);
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_14_23();
  Tensor.init(coercing:scalarType:on:)();
  v12[0] = v13[5];
  a4(&v14, v12);
}

uint64_t sub_25BC0B10C(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v18 = v2;
    v19 = v3;
    v6 = a2[4];
    v5 = a2[5];

    static Tensor./ infix(_:_:)();
    v7 = v17;

    v8 = sub_25BAC42B0();
    v10 = v9;
    v16 = v6;
    static Tensor.- prefix(_:)(&v16);
    v16 = v5;
    Tensor.squared()();
    static Tensor./ infix(_:_:)();

    static Tensor.* infix(_:_:)();

    v11 = v17;

    v12 = sub_25BAC42B0();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BCBAE70;
    *(v15 + 32) = v7;
    *(v15 + 40) = v8;
    *(v15 + 48) = v10;
    *(v15 + 56) = v11;
    *(v15 + 64) = v12;
    *(v15 + 72) = v14;

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor./ infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

void sub_25BC0B2B4()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = OUTLINED_FUNCTION_51_10(v3, v4, v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_96_4();
  v9();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v22, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v10) ? (v10 = v1 == 12) : (v10 = 0), !v10 ? (v11 = v22 == 12) : (v11 = 0), v11))
  {
    v19 = OUTLINED_FUNCTION_95_4();
    v20(v19);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v13 = v12();
    OUTLINED_FUNCTION_204_1(v13);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v14, v15, v16, v17, v18);
  }

  v21 = OUTLINED_FUNCTION_120_4();
  v0(v21);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC0B42C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = OUTLINED_FUNCTION_51_10(v3, v4, v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_96_4();
  v9();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v22, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v10) ? (v10 = v1 == 12) : (v10 = 0), !v10 ? (v11 = v22 == 12) : (v11 = 0), v11))
  {
    v19 = OUTLINED_FUNCTION_95_4();
    v20(v19);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v13 = v12();
    OUTLINED_FUNCTION_204_1(v13);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v14, v15, v16, v17, v18);
  }

  v21 = OUTLINED_FUNCTION_120_4();
  v0(v21);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0B5A4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  a3(&v8, &v7, &v6);

  *a1 = v8;
  return result;
}

uint64_t sub_25BC0B614(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v20 = v2;
    v21 = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v6 = a2[5];
    v8 = *(*(v6 + 16) + 160);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v16 = MEMORY[0x277D84F90];
    LOBYTE(v14) = v8;
    sub_25BAA51C8(v18, v15);

    Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D45550, &v14, v15, &v17);
    sub_25BA9C2C8(v18);
    v17 = v6;
    *&v18[0] = v5;
    static Tensor.* infix(_:_:)();
    v17 = v15[0];
    *&v18[0] = v7;
    v16 = v6;
    static Tensor.- infix(_:_:)();
    pow(_:_:)();

    v14 = v16;
    static Tensor.* infix(_:_:)();

    v9 = *&v18[0];
    v15[0] = v7;
    v17 = v6;
    pow(_:_:)();
    v16 = v5;
    v17 = *&v18[0];
    static Tensor.* infix(_:_:)();

    v17 = v15[0];
    *&v18[0] = v7;
    log(_:)(&v16, v18);
    v14 = v16;
    static Tensor.* infix(_:_:)();

    v10 = *&v18[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25BCBAE70;
    *(v11 + 32) = v9;

    *(v11 + 40) = sub_25BAC42B0();
    *(v11 + 48) = v12;
    *(v11 + 56) = v10;

    *(v11 + 64) = sub_25BAC42B0();
    *(v11 + 72) = v13;

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t squaredDifference(_:_:)()
{
  static Tensor.- infix(_:_:)();
  Tensor.squared()();
}

uint64_t root(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_187_1();
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  LOBYTE(v11) = v5;
  sub_25BAA51C8(v15, v12);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v13, &unk_286D45578, &v11, v12, &v14);
  sub_25BA9C2C8(v15);
  v6 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_187_1();
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  v10 = v6;
  sub_25BAA51C8(v15, v12);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, inited, &v10, v12, &v13);
  sub_25BA9C2C8(v15);
  v12[0] = v13;
  static Tensor./ infix(_:_:)();

  v8 = v15[0];
  v15[0] = v3;
  v12[0] = v8;
  pow(_:_:)();
}

uint64_t static Tensor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4 == v5)
  {
    return 1;
  }

  v6 = *(v5 + 160);
  if (*(v4 + 160) != v6)
  {
    LOBYTE(v19) = *(v4 + 160);
    LOBYTE(v18) = v6;
    v20[0] = sub_25BC8FACC();
    v20[1] = v10;
    v21 = xmmword_25BCC06A0;
    v22 = 6;
    v23 = sub_25BC8FACC();
    v24 = v11;
    v25 = xmmword_25BCBC6A0;
    v26 = 6;
    v27 = 0;
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28(v12, v13, v14, v15, v16, v17, 455);
  }

  if ((sub_25BAB5C48(*(v4 + 152), *(v5 + 152)) & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v2;
  static Tensor..== infix(_:_:)(v20, &v19, &v18);
  v18 = v20[0];
  v7 = OUTLINED_FUNCTION_197_1();
  Tensor.all(squeezingAxes:)(v7, &v19);

  v8 = sub_25BC091D0(v19);

  return v8 & 1;
}

void max<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0C1EC();
}

{
  sub_25BC0C364();
}

void sub_25BC0BDAC()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25BCB783C();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = v9[2];
  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v19 == 1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *&v48 = 0xD000000000000056;
    *(&v48 + 1) = 0x800000025BCE2F00;
    BYTE4(v55) = 9;
    OUTLINED_FUNCTION_2_14();
    sub_25BA97890(v37, v38, v39, v40, v41, v42, v46, v43, v44, v45, v46, v47, v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56[0]);
  }

  v45 = v3;
  v46 = v1;
  v20 = *(v11 + 32);
  v22 = v9[5];
  *&v48 = v9[4];
  v21 = v48;
  v56[0] = v22;

  v7(v60, &v48, v56);
  LOBYTE(v56[0]) = *(*(v20 + 16) + 160);
  (*(v14 + 104))(v18, *MEMORY[0x277D84660], v12);
  Tensor.cast(to:roundingRule:)();
  (*(v14 + 8))(v18, v12);

  v23 = v48;
  v56[0] = v20;
  v60[0] = v48;
  static Tensor.* infix(_:_:)();
  v24 = v48;
  v60[0] = v20;
  v25 = *(*(v23 + 16) + 160);
  LODWORD(v51) = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  v58 = MEMORY[0x277D84F90];
  v57 = v25;
  sub_25BAA51C8(&v48, v56);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v58, v5, &v57, v56, &v59);
  sub_25BA9C2C8(&v48);
  *&v48 = v59;
  v59 = v23;
  static Tensor.- infix(_:_:)();

  v59 = v56[0];
  static Tensor.* infix(_:_:)();

  v26 = v48;
  v27 = *(*(v21 + 16) + 152);
  v47 = v22;
  v28 = *(*(v22 + 16) + 152);
  *&v48 = v27;
  v56[0] = v28;
  sub_25BCB617C();
  sub_25BCB617C();
  v29 = static ShapeInference.broadcastingAxes(_:_:)(&v48, v56);
  if (!v29)
  {
    goto LABEL_9;
  }

  v31 = v30;
  *&v48 = v24;
  Tensor.sum(squeezingAxes:)(v56, v29);

  v60[0] = v27;
  Tensor.reshaped(to:)(v60, &v48);

  v56[0] = v26;
  Tensor.sum(squeezingAxes:)(v60, v31);

  v59 = v28;
  Tensor.reshaped(to:)(&v59, v56);

  v32 = v48;
  v33 = v56[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25BCBAE70;

  *(v34 + 32) = v32;

  *(v34 + 40) = sub_25BAC42B0();
  *(v34 + 48) = v35;
  *(v34 + 56) = v33;

  *(v34 + 64) = sub_25BAC42B0();
  *(v34 + 72) = v36;

  OUTLINED_FUNCTION_10_16();
}

void min<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BC0C1EC();
}

{
  sub_25BC0C364();
}

void sub_25BC0C1EC()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = OUTLINED_FUNCTION_51_10(v3, v4, v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_96_4();
  v9();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v22, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v10) ? (v10 = v1 == 12) : (v10 = 0), !v10 ? (v11 = v22 == 12) : (v11 = 0), v11))
  {
    v19 = OUTLINED_FUNCTION_95_4();
    v20(v19);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v13 = v12();
    OUTLINED_FUNCTION_204_1(v13);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v14, v15, v16, v17, v18);
  }

  v21 = OUTLINED_FUNCTION_120_4();
  v0(v21);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC0C364()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = OUTLINED_FUNCTION_51_10(v3, v4, v5);
  v8 = v7(v6);
  OUTLINED_FUNCTION_150_1(v8);
  OUTLINED_FUNCTION_96_4();
  v9();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v22, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v10) ? (v10 = v1 == 12) : (v10 = 0), !v10 ? (v11 = v22 == 12) : (v11 = 0), v11))
  {
    v19 = OUTLINED_FUNCTION_95_4();
    v20(v19);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v13 = v12();
    OUTLINED_FUNCTION_204_1(v13);
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v14, v15, v16, v17, v18);
  }

  v21 = OUTLINED_FUNCTION_120_4();
  v0(v21);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0C514()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC0C564(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_25BC0C5AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC0A1B8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_25BC0C5E0()
{
  result = qword_27FBB6628;
  if (!qword_27FBB6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6628);
  }

  return result;
}

uint64_t sub_25BC12AC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC0A1C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double OUTLINED_FUNCTION_97_5@<D0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 88) = a2;
  *(v2 + 104) = a1;
  *(v2 + 156) = 8;

  sub_25BCB617C();
  return result;
}

ValueMetadata *OUTLINED_FUNCTION_101_5(uint64_t a1)
{
  *(v2 - 208) = *(v1 + 40);

  return Tensor.scalarType.getter(a1);
}

BOOL OUTLINED_FUNCTION_117_4@<W0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = *(a1 + 152);

  return sub_25BAC863C(0);
}

uint64_t OUTLINED_FUNCTION_119_4()
{

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_131_0()
{
  *(v2 - 152) = *(v0 + 32);
  *(v2 - 208) = v1;
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 48) = 0u;

  return sub_25BC03F70();
}

ValueMetadata *OUTLINED_FUNCTION_150_1(uint64_t a1)
{
  *(v2 - 144) = v1;

  return Tensor.scalarType.getter(a1);
}

double OUTLINED_FUNCTION_155_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v2[5];
  a1[2].n128_u64[0] = *v2;
  a1[2].n128_u64[1] = v4;

  return result;
}

ValueMetadata *OUTLINED_FUNCTION_157_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 208) = a2;

  return Tensor.scalarType.getter(a1);
}

uint64_t OUTLINED_FUNCTION_170_1()
{

  return sub_25BA92920(v0, 0, 0, v1 - 80);
}

ValueMetadata *OUTLINED_FUNCTION_171_0(uint64_t a1)
{
  *(v2 - 152) = v1;

  return sub_25BC8FACC();
}

ValueMetadata *OUTLINED_FUNCTION_172_1(uint64_t a1)
{
  *(v2 - 152) = v1;

  return sub_25BC8FACC();
}

void OUTLINED_FUNCTION_179_1(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 120) = a2;
  *(v2 + 136) = a1;
  *(v2 + 172) = 1;
}

double OUTLINED_FUNCTION_187_1()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_1()
{
  v2 = *(*(*(v0 + 16) + 152) + 16);

  return sub_25BC54B00(0, v2);
}

uint64_t OUTLINED_FUNCTION_198_1()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  return sub_25BCB70FC();
}

void OUTLINED_FUNCTION_199_1()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_201_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_202_0()
{
}

ValueMetadata *OUTLINED_FUNCTION_203_0(uint64_t a1)
{
  *(v2 - 152) = v1;

  return Tensor.scalarType.getter(a1);
}

ValueMetadata *OUTLINED_FUNCTION_204_1(uint64_t a1)
{
  *(v2 - 200) = v1;

  return Tensor.scalarType.getter(a1);
}

uint64_t *OUTLINED_FUNCTION_205_0()
{
  *(v2 - 168) = v0;
  *(v2 - 160) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 192));
}

uint64_t OUTLINED_FUNCTION_206_1()
{

  return sub_25BAA4A5C(v0 + 64);
}

uint64_t sub_25BC12F54(void (*a1)(uint64_t *__return_ptr))
{
  OUTLINED_FUNCTION_29_21(*v1);
  a1(&v5);

  v3 = sub_25BC091D0(v5);

  return v3 & 1;
}

void Tensor.mean(alongAxes:)(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_54_11();
  if (v2)
  {
    v5 = v4;
    v118 = OUTLINED_FUNCTION_25_21();
    sub_25BCB617C();
    sub_25BABC3B0();

    v6 = v105;
    if (v105)
    {
      OUTLINED_FUNCTION_15_31(MEMORY[0x277D84F90]);
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = *(*(*(v1 + 16) + 152) + 16);
        v10 = __OFADD__(v8, v9);
        v11 = v8 + v9;
        if (v10)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v106 = 0;
          v107 = 0;
          v105 = v11;
          OUTLINED_FUNCTION_35_17();
          OUTLINED_FUNCTION_2_54();
          sub_25BADDD28(v85, v86, v87, v88, v89, v90, v91);
        }

        if (!v9)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_70_6();
        if (v15 != v10)
        {
          goto LABEL_22;
        }

        v11 += v13 & (v11 >> 63);
        if (v11 >= v13)
        {
          goto LABEL_20;
        }

        v16 = *(v14 + 8 * v11 + 32);
        v118 = v12;
        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_14_31(v17);
          OUTLINED_FUNCTION_39_17();
          sub_25BAA21EC(v19, v20, v21);
          v12 = v118;
        }

        *(v12 + 16) = v18 + 1;
        *(v12 + 8 * v18 + 32) = v16;
        v7 += 8;
        --v2;
      }

      while (v2);
      v22 = v18 + 1;
      v23 = 1;
      v24 = 32;
      do
      {
        v25 = *(v12 + v24);
        v11 = v23 * v25;
        if ((v23 * v25) >> 64 != (v23 * v25) >> 63)
        {
          goto LABEL_21;
        }

        v23 *= v25;
        v24 += 8;
        --v22;
      }

      while (v22);

      OUTLINED_FUNCTION_58_9(v26);
      OUTLINED_FUNCTION_33_20();
      v102 = a1;
      v28 = *(v27 + 32);

      sub_25BCB617C();
      v29 = OUTLINED_FUNCTION_40_16();
      v28(v29);
      v105 = v6;
      v30 = *(*(v1 + 16) + 152);
      OUTLINED_FUNCTION_30_0();
      v31 = swift_allocObject();
      *(v31 + 16) = v23;
      *(v31 + 24) = v30;
      sub_25BCB617C();
      OUTLINED_FUNCTION_77_6();
      OUTLINED_FUNCTION_47_0();

      v117[55] = 0;
      OUTLINED_FUNCTION_3_43("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ReductionOps.swift");
      v119 = xmmword_25BCCB750;
      v33 = OUTLINED_FUNCTION_12_33(v32);
      OUTLINED_FUNCTION_46_15(v33);
      OUTLINED_FUNCTION_64_9();
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_11_35();
      sub_25BABCC4C(v34, v35, v36, v37, v38, v39, v40, v41, v93, v96, v99);
      v42 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v42, v117);
      sub_25BAA51C8(v117, v116);
      v43 = type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      v44 = sub_25BAA49B8();
      OUTLINED_FUNCTION_18_8(v44, v45, v46, v47, v48, v49, v50, v51);

      OUTLINED_FUNCTION_60_8(v52, v53, v54, v55, v56, v57, v58, v59, v94, v97, v100, v102, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      sub_25BAA4AF4(&v105);
      v60 = sub_25BAA49B8();
      OUTLINED_FUNCTION_18_8(v60, v61, v62, v63, v64, v65, v66, v67);

      OUTLINED_FUNCTION_47_15(v68, v69, v70, v71, v72, v73, v74, v75, v95, v98, v101, v103, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      sub_25BAA4AF4(&v105);
      v76 = type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_16_3(v76);
      LOBYTE(v105) = 1;
      OUTLINED_FUNCTION_37_16();
      sub_25BABCD30(v77, v78, v79, v80, v81, v82);
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_22();
      v83 = swift_allocObject();
      OUTLINED_FUNCTION_21_25(v83);
      sub_25BAA6EB0();
      OUTLINED_FUNCTION_15_8();

      sub_25BA9C2C8(v117);
      *v104 = v43;
      OUTLINED_FUNCTION_122();
    }

    else
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_38("Fatal error", "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/Reduction.swift", v92, 159, v96);
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_122();
  }
}

uint64_t sub_25BC13610(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *(result + 32);
      v6 = a3;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      v7 = *(*(v5 + 16) + 160);
      sub_25BAA51C8(v18, v17);
      v15 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v6;
      v14 = v7;
      sub_25BAA51C8(v17, v13);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v15, inited, &v14, v13, &v16);
      sub_25BA9C2C8(v17);
      sub_25BA9C2C8(v18);
      v9 = v16;
      v18[0] = v5;
      v17[0] = a4;
      Tensor.broadcasted(to:)(v17);
      v17[0] = v9;
      static Tensor./ infix(_:_:)();

      v10 = v18[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      *(v11 + 32) = v10;

      *(v11 + 40) = sub_25BAC42B0();
      *(v11 + 48) = v12;

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

uint64_t sub_25BC13B54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_30_19(a1, a2, a3, a4, a5, a6, a7, a8, v13, a1);
  Tensor.reshaped(to:)(v10, v11);

  a3(a2);
}

uint64_t Tensor.variance(squeezingAxes:)()
{
  OUTLINED_FUNCTION_48_14();
  v3[1] = v0;
  v3[2] = v0;
  Tensor.mean(alongAxes:)(v3);
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_38_16();
  Tensor.squared()();

  v1 = OUTLINED_FUNCTION_51_11();
  Tensor.mean(squeezingAxes:)(v1);
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.variance(squeezingAxes:)();
}

uint64_t Tensor.variance()()
{
  v24 = *v0;
  v22 = &unk_286D42360;
  Tensor.reshaped(to:)(&v22, &v23);

  v22 = v23;
  OUTLINED_FUNCTION_63_6();
  Tensor.mean(squeezingAxes:)(&unk_286D42388);

  OUTLINED_FUNCTION_56_9(v1, v2, v3, v4, v5, v6, v7, v8, v20, v22, v23, v24);
  OUTLINED_FUNCTION_63_6();
  Tensor.squared()();

  v23 = v24;
  v17 = OUTLINED_FUNCTION_30_19(v9, v10, v11, v12, v13, v14, v15, v16, v21, &unk_286D42360);
  Tensor.reshaped(to:)(v17, v18);

  v23 = v24;
  Tensor.mean(squeezingAxes:)(&unk_286D42388);
}

uint64_t Tensor.variance(alongAxes:)()
{
  OUTLINED_FUNCTION_48_14();
  v3[1] = v0;
  v3[2] = v0;
  Tensor.mean(alongAxes:)(v3);
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_38_16();
  Tensor.squared()();

  OUTLINED_FUNCTION_51_11();
  Tensor.mean(alongAxes:)(v1);
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.variance(alongAxes:)();
}

uint64_t Tensor.standardDeviation()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_25BC54B00(0, *(*(*(v3 + 16) + 152) + 16));
  v5[1] = v3;
  Tensor.variance(squeezingAxes:)();
  sqrt(_:)(a1, v5);
}

uint64_t sub_25BC14160@<X0>(void (*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  v5[1] = *v2;
  a1(v5);
  sqrt(_:)(a2, v5);
}

uint64_t Moments.mean.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t Moments.variance.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t Moments.tensors.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE70;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return v3;
}

void *Moments.init(mean:variance:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t Tensor.moments(squeezingAxes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v18 = *v2;
  OUTLINED_FUNCTION_38_16();
  Tensor.mean(alongAxes:)(v5);
  OUTLINED_FUNCTION_56_9(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17, v18, v19);
  Tensor.squared()();

  OUTLINED_FUNCTION_63_6();
  Tensor.mean(squeezingAxes:)(a1);

  OUTLINED_FUNCTION_38_16();
  Tensor.sum(squeezingAxes:)(v14, a1);

  *a2 = v20;
  a2[1] = v20;
  return result;
}

uint64_t Tensor.moments()@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_29_21(*v1);
  Tensor.moments(squeezingAxes:)(v3, a1);
}

uint64_t Tensor.moments(alongAxes:)@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_38_16();
  Tensor.mean(alongAxes:)(v4);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  OUTLINED_FUNCTION_63_6();
  Tensor.mean(alongAxes:)(v5);

  *a1 = v7;
  a1[1] = v3;
  return result;
}

uint64_t sub_25BC14804()
{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_29_21(v1);
  v0();
}

void sub_25BC14E88(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>, char a4@<W1>)
{
  v6 = *v4;
  v7 = *(*(*v4 + 16) + 152);
  v8 = *(v7 + 16);
  if (-v8 > a1 || v8 <= a1)
  {
    goto LABEL_9;
  }

  v12 = (v8 & (a1 >> 63)) + a1;
  v66 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE50;
  *(v13 + 32) = v12;
  sub_25BCB617C();
  OUTLINED_FUNCTION_39_17();
  sub_25BABC3B0();
  swift_setDeallocating();
  OUTLINED_FUNCTION_30_0();
  swift_deallocClassInstance();

  if (!v81)
  {
    OUTLINED_FUNCTION_0_65();
    v77 = 4;
    OUTLINED_FUNCTION_8_38();
    v60 = a2;
LABEL_11:
    sub_25BADDD28(v54, v55, v56, v57, v58, v59, v60);
  }

  v14 = *(v6 + 16);
  v66 = v81;
  LOBYTE(v67) = 2;
  v80 = 0;
  v82[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ReductionOps.swift";
  v82[1] = 114;
  v83 = 2;
  v84 = xmmword_25BCCB760;
  v85 = "init(id:operator:operand:axis:keepingDimensions:resultDescriptor:creationSite:)";
  v86 = 79;
  v87 = 2;
  type metadata accessor for ArgumentReductionOperation();
  swift_allocObject();

  sub_25BCB617C();
  v15 = OUTLINED_FUNCTION_3();
  sub_25BC66840(v15, v16, v17, a4, v14, v12);
  v79[0] = *(*(v6 + 16) + 152);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25BCBAE50;
  *(v18 + 32) = v12;
  sub_25BCB617C();
  sub_25BABC3B0();
  swift_setDeallocating();
  OUTLINED_FUNCTION_30_0();
  swift_deallocClassInstance();

  v19 = v66;
  if (!v66)
  {
    __break(1u);
LABEL_9:
    v67 = 0;
    v68 = 0;
    v66 = a1;
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_2_54();
    goto LABEL_11;
  }

  sub_25BAA51C8(*(v6 + 16) + 168, v79);
  sub_25BAA51C8(v79, v78);
  type metadata accessor for ContextManager();
  swift_retain_n();
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v20, v21, v22, v23, v24, v25, v26, v27);

  OUTLINED_FUNCTION_60_8(v28, v29, v30, v31, v32, v33, v34, v35, v82, v62, 1, 2, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
  sub_25BAA4AF4(&v66);
  v36 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v36, v37, v38, v39, v40, v41, v42, v43);

  OUTLINED_FUNCTION_47_15(v44, v45, v46, v47, v48, v49, v50, v51, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  sub_25BAA4AF4(&v66);
  v52 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3(v52);
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_37_16();
  sub_25BC11320();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_22_25(v53);

  sub_25BAA6EB0();

  sub_25BA9C2C8(v79);
  v66 = v53;
  v79[0] = v19;
  Tensor.reshaped(to:)(v79, a3);

  OUTLINED_FUNCTION_122();
}

uint64_t sub_25BC15224(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_30_19(a1, a2, a3, a4, a5, a6, a7, a8, v12, a1);
  Tensor.reshaped(to:)(v9, v10);

  a2(0);
}

uint64_t sub_25BC152F8(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  OUTLINED_FUNCTION_29_21(*a1);
  a2(&v5);

  v3 = sub_25BC091D0(v5);

  return v3 & 1;
}

double sub_25BC15680@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void (*a3)(uint64_t, uint64_t)@<X4>, void *a4@<X8>)
{
  v5 = *v4;
  if (*(*(*v4 + 16) + 160) != 12)
  {
    sub_25BC8FACC();
    OUTLINED_FUNCTION_8_38();
    sub_25BADDD28(v10, v11, v12, v13, v14, v15, a2);
  }

  if (*(a1 + 16))
  {

    sub_25BCB617C();
    a3(v5, a1);
  }

  else
  {
    *a4 = v5;
  }

  return result;
}

void Dropout.init(probability:seed:)(uint64_t a1, float a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      goto LABEL_21;
    }

    type metadata accessor for ContextManager();
    v3 = sub_25BAA49B8();
    swift_beginAccess();
    v7 = v3[2];
    v2 = *(v7 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!v2)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_14:
      if (v2 <= *(v7 + 16))
      {
        v5 = sub_25BC32FA0();
        v3[2] = v7;
        swift_endAccess();

        goto LABEL_16;
      }

      goto LABEL_20;
    }

LABEL_18:
    sub_25BBF1454();
    v7 = v31;
    v3[2] = v31;
    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v5 = a1 & 0x7FFFFFFF;
LABEL_16:
    v9 = sub_25BBE5CAC(v5);
    v43 = v10;
    v44 = v11;
    v45 = v9 & 1;
    v46 = v12;
    sub_25BB6B668(v42);
    type metadata accessor for LayerVariableReference();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_4_49(v13, v14, v15, v16, v17, v18, v19, v20, v36, v38, v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_1_55(v21, v22, v23, v24, v25, v26, v27, v28, v29, v37, v39, v30);
    return;
  }

LABEL_21:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_6_44("Fatal error", v32, v33, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/Dropout.swift", v34, v35, 42, 0);
  __break(1u);
}

void Dropout.init(probability:seed:)(unint64_t a1, char a2, float a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    goto LABEL_14;
  }

  if ((a2 & 1) == 0)
  {
LABEL_10:
    v9 = sub_25BBE5CAC(a1);
    v43 = v10;
    v44 = v11;
    v45 = v9 & 1;
    v46 = v12;
    sub_25BB6B668(&v42);
    type metadata accessor for LayerVariableReference();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_4_49(v13, v14, v15, v16, v17, v18, v19, v20, v36, v38, v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_1_55(v21, v22, v23, v24, v25, v26, v27, v28, v29, v37, v39, v30);
    return;
  }

  type metadata accessor for ContextManager();
  v5 = sub_25BAA49B8();
  swift_beginAccess();
  v6 = v5[2];
  v7 = *(v6 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[2] = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF1454();
    v6 = v31;
    v5[2] = v31;
    if (v7)
    {
LABEL_8:
      if (v7 <= *(v6 + 16))
      {
        a1 = sub_25BC32FA0();
        v5[2] = v6;
        swift_endAccess();

        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_6_44("Fatal error", v32, v33, 0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Layers/Dropout.swift", v34, v35, 58, 0);
  __break(1u);
}

void Dropout.forward(_:)(const char **a1@<X0>, const char **a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  if (!*(v2 + 4))
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v17);

    if (v18)
    {
      v7 = *(v18 + 24);
      sub_25BAA4AF4(v17);
      if (v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_25BAA4AF4(v17);
    }

LABEL_10:
    *a2 = v4;

    return;
  }

  if (*(v2 + 4) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_beginAccess();
  sub_25BB6B668(&v19);
  swift_endAccess();
  v17[0] = v6;

  LayerState.wrappedValue.setter(&v19, v8);

  v17[0] = v4;
  v9 = *(v6 + 32);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    if (v9 < 0)
    {
      v19 = v9 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC(v9);
      sub_25BCA0404(&v19, a2, v5);

      return;
    }

    v16 = 325;
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    v16 = 329;
    OUTLINED_FUNCTION_7_0();
    v15 = 0xD00000000000002ELL;
  }

  sub_25BCB74CC(v10, v11, v12, v15, v13, v14, 102, 2, v16);
  __break(1u);
}

unint64_t sub_25BC16038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE15E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_25BC16068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE1634(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25BC1609C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BAE15E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BC160C4(uint64_t a1)
{
  v2 = sub_25BC16678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC16100(uint64_t a1)
{
  v2 = sub_25BC16678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Dropout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6638, &qword_25BCCB7C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC16678();
  sub_25BCB7B2C();
  if (!v2)
  {
    LOBYTE(v31) = 0;
    sub_25BCB768C();
    v7 = v6;
    v8 = sub_25BB1B9B0();
    OUTLINED_FUNCTION_3_44(&type metadata for Tensor, v9, v10, v11, v8);
    v13 = v31;
    type metadata accessor for LayerVariableReference();
    swift_allocObject();
    swift_retain_n();
    v30 = sub_25BAB6D38(&v31, 0x100000000);
    v31 = v13;
    v14 = sub_25BB6B364(&v31);
    v29 = v15;
    v17 = v16;
    v18 = v14;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v21 = swift_allocObject();
    *(v21 + 16) = v29;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18 & 1;
    *(v21 + 48) = v20;
    v22 = sub_25BBC68D8();
    OUTLINED_FUNCTION_3_44(&type metadata for LearningPhase, v23, v24, v25, v22);
    v26 = OUTLINED_FUNCTION_2_55();
    v27(v26);

    v28 = v31;
    *a2 = v7;
    *(a2 + 4) = v28;
    *(a2 + 8) = v30;
    *(a2 + 16) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Dropout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6648, &qword_25BCCB7C8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v21 = *(v1 + 4);
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC16678();
  sub_25BCB7B6C();
  v26 = 0;
  sub_25BCB777C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v4);
  }

  v25 = v21;
  v24 = 1;
  sub_25BBC6830();
  sub_25BCB779C();
  v11 = *(v10 + 32);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    if (v11 < 0)
    {
      v23 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v22 = 2;
      sub_25BAB69FC(v11);
      sub_25BB1B95C();
      sub_25BCB779C();

      return (*(v6 + 8))(v9, v4);
    }

    v19 = 325;
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    v19 = 329;
    OUTLINED_FUNCTION_7_0();
    v18 = 0xD00000000000002ELL;
  }

  result = sub_25BCB74CC(v13, v14, v15, v18, v16, v17, 102, 2, v19);
  __break(1u);
  return result;
}

unint64_t sub_25BC16678()
{
  result = qword_27FBB6640;
  if (!qword_27FBB6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6640);
  }

  return result;
}

uint64_t sub_25BC166CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25BC1670C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Dropout.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC1683C()
{
  result = qword_27FBB6650;
  if (!qword_27FBB6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6650);
  }

  return result;
}

unint64_t sub_25BC16894()
{
  result = qword_27FBB6658;
  if (!qword_27FBB6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6658);
  }

  return result;
}

unint64_t sub_25BC168EC()
{
  result = qword_27FBB6660;
  if (!qword_27FBB6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6660);
  }

  return result;
}

void *static ComputeDevice.cpu.getter@<X0>(void *a1@<X8>)
{
  if (qword_28154E200 != -1)
  {
    swift_once();
  }

  v2 = qword_2815573E8;
  v3 = unk_2815573F0;
  __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  (*(v8 + 16))(v6 - v5);
  return sub_25BC16FAC(1, v7, v2, v3, a1);
}

uint64_t sub_25BC16A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25BC16A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_25BC16AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_6();
  a21 = v23;
  a22 = v24;
  v25 = v22;

  sub_25BCB723C();
  sub_25BCB728C();
  sub_25BCB729C();
  sub_25BCB725C();
  v26 = *v22;
  v27 = *(*v22 + 16);
  v28 = v27 - 1;
  sub_25BC16CFC(v27 - 1, v26);
  v30 = v29;
  a10 = v29;
  v31 = v27 - 2;
  while (v28 >= 1)
  {
    if (v31 < -1)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v32 = v31 / 2;
    v33 = *v25;
    if (v31 / 2 >= *(*v25 + 16))
    {
      goto LABEL_19;
    }

    v34 = v25[1];
    a9 = *(v33 + 32 + 8 * v32);

    v35 = v34(&a10, &a9);

    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v32 >= *(v33 + 16))
    {
      goto LABEL_20;
    }

    v36 = *(v33 + 32 + 8 * v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_25BAE16C4();
      *v25 = v33;
    }

    if (v28 >= *(v33 + 16))
    {
      goto LABEL_21;
    }

    *(v33 + 8 * v28 + 32) = v36;

    sub_25BCB725C();
    v31 = v32 - 1;
    v28 = v32;
  }

  v38 = *v25;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v38;
  if ((v39 & 1) == 0)
  {
    v38 = sub_25BAE16C4();
    *v25 = v38;
  }

  if (v28 < 0)
  {
    goto LABEL_22;
  }

  if (v28 >= *(v38 + 16))
  {
LABEL_23:
    __break(1u);
    return;
  }

  *(v38 + 8 * v28 + 32) = v30;

  OUTLINED_FUNCTION_15_2();

  sub_25BCB725C();
}

uint64_t ComputeDevice.isEqual(to:)(uint64_t a1)
{
  if ((sub_25BAD1FB0(*(v1 + 40), *(a1 + 40)) & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v2 = OUTLINED_FUNCTION_25_22();
  return v3(v2) & 1;
}

void sub_25BC16CFC(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {

    return;
  }

  __break(1u);
}

uint64_t sub_25BC16D30(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}