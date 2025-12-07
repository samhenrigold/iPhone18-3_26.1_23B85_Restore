unint64_t sub_1C8D824C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA66A30;
  if (!qword_1EDA66A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66A30);
  }

  return result;
}

unint64_t sub_1C8D82518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA635C8;
  if (!qword_1EDA635C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA635C8);
  }

  return result;
}

uint64_t TypeInstance.protobuf.getter()
{
  v0 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E69E0760], v0);
  TypeInstance.protobuf(useCase:)();
  return (*(v2 + 8))(v6, v0);
}

uint64_t RestrictionContext.init(protobuf:)@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v123 = a2;
  v3 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v116 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v112 - v8;
  v9 = OUTLINED_FUNCTION_111();
  v10 = type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(v9);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25();
  v119 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v112 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313668, &qword_1C906BC48);
  OUTLINED_FUNCTION_9(v16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  v20 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v121 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v120 = v23;
  v24 = OUTLINED_FUNCTION_111();
  v25 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(v24);
  v26 = OUTLINED_FUNCTION_9(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_0();
  v122 = v27;
  v28 = OUTLINED_FUNCTION_111();
  v29 = type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(v28);
  v30 = OUTLINED_FUNCTION_9(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v115 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v114 = &v112 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v35);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  OUTLINED_FUNCTION_9(v37);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  v40 = a1;
  v41 = *a1;
  if ((~v41 & 0xF000000000000007) != 0)
  {
    v113 = v40;
    switch(v41 >> 61)
    {
      case 1uLL:
        v77 = v41;
        swift_projectBox();
        v78 = v122;
        sub_1C8D85734();
        v79 = *v78;
        v80 = *(*v78 + 16);
        v117 = v77;
        v118 = (v121 + 32);

        v81 = 0;
        v82 = (v79 + 40);
        v119 = MEMORY[0x1E69E7CC0];
        v116 = (v79 + 40);
LABEL_17:
        for (i = &v82[16 * v81]; ; i += 16)
        {
          if (v80 == v81)
          {
            OUTLINED_FUNCTION_1_30();
            sub_1C8D85364(v113, v99);
            sub_1C8D85364(v122, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
            sub_1C8CD0FB0(v117);
            v128[0] = v119;
            sub_1C8CACBF4(v128);
            goto LABEL_47;
          }

          if (v81 >= *(v79 + 16))
          {
            break;
          }

          sub_1C9063C2C();
          if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
          {
            v115 = *v118;
            v115(v120, v19, v20);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C8CACA10();
              v119 = v87;
            }

            v84 = *(v119 + 16);
            if (v84 >= *(v119 + 24) >> 1)
            {
              sub_1C8CACA10();
              v119 = v88;
            }

            ++v81;
            v86 = v119;
            v85 = v120;
            *(v119 + 16) = v84 + 1;
            result = (v115)(v86 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v84, v85, v20);
            v82 = v116;
            goto LABEL_17;
          }

          result = sub_1C8CD0CC8(v19, &qword_1EC313668);
          ++v81;
        }

        __break(1u);
        return result;
      case 2uLL:
        v65 = 0;
        v66 = v113;
        switch(*((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          case 1:
            break;
          case 2:
            v65 = 1;
            break;
          case 3:
            v65 = 2;
            break;
          case 4:
            v65 = 3;
            break;
          default:
            v67 = OUTLINED_FUNCTION_181();
            __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
            v69 = sub_1C8D4F674(&qword_1EC314578, &qword_1EC314570, &qword_1C9074350);
            OUTLINED_FUNCTION_213(v69);
            v71 = &type metadata for RestrictionContext.PersonRepresentationDefinition;
            goto LABEL_15;
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v66, v110);
        LOBYTE(v128[0]) = v65;
        sub_1C8D3AAA8(v128);
        goto LABEL_47;
      case 3uLL:
        v72 = 0;
        v66 = v113;
        switch(*((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
        {
          case 1:
            v72 = 1;
            break;
          case 2:
            break;
          case 3:
            v72 = 2;
            break;
          default:
            v73 = OUTLINED_FUNCTION_181();
            __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
            v75 = sub_1C8D4F674(&qword_1EC314568, &qword_1EC314560, &qword_1C9074348);
            OUTLINED_FUNCTION_213(v75);
            v71 = &type metadata for RestrictionContext.DateRepresentationDefinition;
LABEL_15:
            *v70 = v71;
            OUTLINED_FUNCTION_10_0();
            (*(v76 + 104))();
            swift_willThrow();
            OUTLINED_FUNCTION_1_30();
            v48 = v66;
            return sub_1C8D85364(v48, v47);
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v66, v109);
        LOBYTE(v128[0]) = v72;
        sub_1C8D3AA2C(v128);
        goto LABEL_47;
      case 4uLL:
        v59 = v41;
        swift_projectBox();
        v60 = v118;
        sub_1C8D85734();
        v61 = v116;
        sub_1C8D85734();

        v62 = v124;
        RestrictionContext.KeyboardTraitsDefinition.init(protobuf:)(v61, v125);
        if (v62)
        {
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v113, v63);
          OUTLINED_FUNCTION_7_16();
          sub_1C8D85364(v60, v64);
          v58 = v59;
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v113, v103);
        OUTLINED_FUNCTION_7_16();
        sub_1C8D85364(v60, v104);
        sub_1C8CD0FB0(v59);
        LODWORD(v128[0]) = v125[0];
        WORD2(v128[0]) = WORD2(v125[0]);
        sub_1C8D3A930(v128);
        goto LABEL_47;
      case 5uLL:
        v89 = v41;
        swift_projectBox();
        v90 = v117;
        sub_1C8D85734();
        v91 = v119;
        sub_1C8D85734();
        v92 = *(v91 + 16);
        if (v92)
        {
          v93 = *(v91 + 8);
          sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);
          sub_1C8CD1784(v41);

          v92 = sub_1C8D32334(v93, v92);
        }

        else
        {
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v105, v106);
        sub_1C8D85364(v90, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
        v107 = *v91;
        v108 = *(v91 + 1);
        sub_1C8D85364(v91, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
        sub_1C8CD0FB0(v89);
        v128[0] = v92;
        LOBYTE(v128[1]) = v107;
        BYTE1(v128[1]) = v108;
        sub_1C8D3A9AC(v128);
        goto LABEL_47;
      case 6uLL:
        v94 = v41;
        swift_projectBox();
        v95 = v114;
        sub_1C8D85734();
        v96 = v115;
        sub_1C8D85734();
        if (*(v96 + 8))
        {
          v97 = v94;

          v98 = 0;
        }

        else
        {
          sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
          v97 = v94;

          v98 = sub_1C906459C();
        }

        v100 = v113;
        if (*(v96 + 24))
        {
          v101 = 0;
        }

        else
        {
          sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
          v101 = sub_1C906459C();
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C8D85364(v100, v102);
        sub_1C8D85364(v96, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
        sub_1C8D85364(v95, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
        sub_1C8CD0FB0(v97);
        v128[0] = v98;
        v128[1] = v101;
        sub_1C8D3AB24(v128);
        goto LABEL_47;
      default:
        swift_projectBox();
        sub_1C8D85734();
        v50 = sub_1C8D63FCC();
        sub_1C8D851E4(v50, v51, v52);

        v53 = v124;
        sub_1C906351C();
        if (v53)
        {
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v113, v57);
          OUTLINED_FUNCTION_19_10();
          v58 = v41;
LABEL_10:
          result = sub_1C8CD0FB0(v58);
        }

        else
        {
          memcpy(v126, v127, sizeof(v126));
          v54 = sub_1C8D63FCC();
          sub_1C8D72E3C(v54, v55, v56);
          sub_1C906351C();
          OUTLINED_FUNCTION_1_30();
          sub_1C8D85364(v113, v111);
          OUTLINED_FUNCTION_19_10();
          sub_1C8CD0FB0(v41);
          *&v125[10] = *&v125[17];
          *&v125[12] = *&v125[19];
          *&v125[14] = *&v125[21];
          v125[16] = v125[23];
          memcpy(v125, v126, 0x50uLL);
          memcpy(v128, v125, sizeof(v128));
          sub_1C8D3ABA0(v128);
LABEL_47:
          memcpy(__dst, v128, sizeof(__dst));
          result = memcpy(v123, __dst, 0x88uLL);
        }

        break;
    }
  }

  else
  {
    v42 = OUTLINED_FUNCTION_181();
    __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
    v44 = sub_1C8D4F674(&qword_1EC314558, &qword_1EC314550, &qword_1C9074340);
    OUTLINED_FUNCTION_213(v44);
    *v45 = &type metadata for ToolKitProtoRestrictionContextKind;
    OUTLINED_FUNCTION_10_0();
    (*(v46 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_1_30();
    v48 = v40;
    return sub_1C8D85364(v48, v47);
  }

  return result;
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_35_6();
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v3 = sub_1C906459C();
  }

  if (*(v1 + 24))
  {
    v4 = 0;
  }

  else
  {
    sub_1C8CB78AC(0, &qword_1EDA62D20, 0x1E696AD98);
    v4 = sub_1C906459C();
  }

  result = sub_1C8D85364(v1, type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange);
  *v0 = v3;
  v0[1] = v4;
  return result;
}

ToolKit::RestrictionContext::PersonRepresentationDefinition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RestrictionContext.PersonRepresentationDefinition.init(protobuf:)(ToolKit::RestrictionContext::PersonRepresentationDefinition protobuf)
{
  v2 = 0;
  switch(*protobuf)
  {
    case 1:
      goto LABEL_6;
    case 2:
      v2 = 1;
      goto LABEL_6;
    case 3:
      v2 = 2;
      goto LABEL_6;
    case 4:
      v2 = 3;
LABEL_6:
      *v1 = v2;
      break;
    default:
      v3 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_116();
      v8 = sub_1C8D4F674(v5, v6, v7);
      v9 = OUTLINED_FUNCTION_89(v8);
      OUTLINED_FUNCTION_196_0(v9, v10);
      *v11 = &type metadata for RestrictionContext.PersonRepresentationDefinition;
      OUTLINED_FUNCTION_10_0();
      (*(v12 + 104))();
      protobuf = swift_willThrow();
      break;
  }

  return protobuf;
}

ToolKit::RestrictionContext::DateRepresentationDefinition __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RestrictionContext.DateRepresentationDefinition.init(protobuf:)(ToolKit::RestrictionContext::DateRepresentationDefinition protobuf)
{
  v2 = 0;
  switch(*protobuf)
  {
    case 1:
      v2 = 1;
      goto LABEL_5;
    case 2:
      goto LABEL_5;
    case 3:
      v2 = 2;
LABEL_5:
      *v1 = v2;
      break;
    default:
      v3 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_116();
      v8 = sub_1C8D4F674(v5, v6, v7);
      v9 = OUTLINED_FUNCTION_89(v8);
      OUTLINED_FUNCTION_196_0(v9, v10);
      *v11 = &type metadata for RestrictionContext.DateRepresentationDefinition;
      OUTLINED_FUNCTION_10_0();
      (*(v12 + 104))();
      protobuf = swift_willThrow();
      break;
  }

  return protobuf;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_35_6();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 8);
    sub_1C8CB78AC(0, &qword_1EDA6DAA8, 0x1E696AFD0);

    v3 = sub_1C8D32334(v4, v3);
  }

  v5 = *v1;
  v6 = *(v1 + 1);
  result = sub_1C8D85364(v1, type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs);
  *v0 = v3;
  *(v0 + 8) = v5;
  *(v0 + 9) = v6;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.init(protobuf:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 3);
  v4 = a1[5];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  OUTLINED_FUNCTION_7_16();
  result = sub_1C8D85364(v8, v9);
  *a2 = v3;
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  *(a2 + 5) = v7;
  return result;
}

uint64_t RestrictionContext.protobuf(useCase:)@<X0>(uint64_t a2@<X8>)
{
  v91 = sub_1C9063C4C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v88 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314208, &unk_1C9074D30);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314548, &qword_1C9074338);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  memcpy(__dst, v2, sizeof(__dst));
  v13 = sub_1C8CA638C(__dst);
  v14 = sub_1C8CA62B8(__dst);
  v15 = v14;
  v84[1] = a2;
  switch(v13)
  {
    case 1:
      v36 = *v14;
      v37 = *(v14 + 8);
      v38 = 0;
      v39 = 0;
      if (*v14)
      {
        [*v14 doubleValue];
        v39 = v40;
      }

      if (v37)
      {
        [v37 doubleValue];
        v38 = v41;
      }

      v42 = v37 == 0;
      type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
      v43 = swift_allocBox();
      v45 = v44;
      *v44 = 0;
      *(v44 + 8) = 1;
      *(v44 + 16) = 0;
      *(v44 + 24) = 1;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v45 = v39;
      *(v45 + 8) = v36 == 0;
      *(v45 + 16) = v38;
      v17 = v43 | 0xC000000000000000;
      *(v45 + 24) = v42;
      goto LABEL_24;
    case 2:
      v21 = *v14;
      v22 = *(*v14 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v84[0] = v3;
        *&v89[0] = MEMORY[0x1E69E7CC0];
        sub_1C8CA6480();
        v23 = *&v89[0];
        v25 = *(v6 + 16);
        v24 = v6 + 16;
        v86 = v25;
        v26 = &v21[(*(v24 + 64) + 32) & ~*(v24 + 64)];
        v85 = *(v24 + 56);
        v87 = v24;
        do
        {
          v86(v88, v26, v91);
          v27 = sub_1C9063C1C();
          v29 = v28;
          v30 = OUTLINED_FUNCTION_181();
          v31(v30);
          *&v89[0] = v23;
          v32 = *(v23 + 16);
          if (v32 >= *(v23 + 24) >> 1)
          {
            sub_1C8CA6480();
            v23 = *&v89[0];
          }

          *(v23 + 16) = v32 + 1;
          v33 = v23 + 16 * v32;
          *(v33 + 32) = v27;
          *(v33 + 40) = v29;
          v26 += v85;
          --v22;
        }

        while (v22);
      }

      type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
      v60 = swift_allocBox();
      v62 = v61;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v62 = v23;
      v17 = v60 | 0x2000000000000000;
      goto LABEL_24;
    case 3:
      v34 = *v14;
      v35 = swift_allocObject();
      *(v35 + 16) = v34 + 1;
      v17 = v35 | 0x4000000000000000;
      goto LABEL_24;
    case 4:
      v19 = *v14;
      v20 = swift_allocObject();
      *(v20 + 16) = 0x30102u >> (8 * v19);
      v17 = v20 | 0x6000000000000000;
      goto LABEL_24;
    case 5:
      v46 = *v14;
      v47 = *(v15 + 8);
      v48 = *(v15 + 9);
      if (*v15)
      {
        v49 = [v46 symbol];
        v50 = sub_1C9063EEC();
        v52 = v51;
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
      v70 = swift_allocBox();
      v72 = v71;
      *(v71 + 8) = 0;
      *(v71 + 16) = 0;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *(v72 + 8) = v50;
      *(v72 + 16) = v52;
      *v72 = v47;
      *(v72 + 1) = v48;
      v17 = v70 | 0xA000000000000000;
      goto LABEL_24;
    case 6:
      v53 = *v14;
      v54 = *(v14 + 2);
      v55 = *(v14 + 3);
      v56 = *(v14 + 4);
      v57 = *(v14 + 5);
      type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
      v58 = swift_allocBox();
      LOWORD(v89[0]) = v53;
      BYTE2(v89[0]) = v54;
      BYTE3(v89[0]) = v55;
      BYTE4(v89[0]) = v56;
      BYTE5(v89[0]) = v57;
      RestrictionContext.KeyboardTraitsDefinition.protobuf(useCase:)(v59);
      v17 = v58 | 0x8000000000000000;
      goto LABEL_24;
    default:
      v16 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
      v17 = swift_allocBox();
      v91 = v18;
      memcpy(v89, v15, sizeof(v89));
      RestrictionContext.ValueSetDefinition.protobuf(useCase:)();
      if (v3)
      {
        return swift_deallocBox();
      }

      v88 = v16;
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
      OUTLINED_FUNCTION_150();
      v64 = v63;
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v63);
      v68 = *(v15 + 96);
      v89[0] = *(v15 + 80);
      v89[1] = v68;
      v89[2] = *(v15 + 112);
      *&v89[3] = *(v15 + 128);
      QueryDefinition.PredicateTemplates.protobuf(useCase:)();
      v74 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v64);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v74);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      sub_1C8D7300C();
LABEL_24:
      v73 = type metadata accessor for ToolKitProtoRestrictionContext(0);
      MEMORY[0x1EEE9AC00](v73);
      v84[-2] = v17;
      sub_1C8D852C4(qword_1EDA67CE0, type metadata accessor for ToolKitProtoRestrictionContext, &protocol conformance descriptor for ToolKitProtoRestrictionContext);
      sub_1C9063ACC();
  }
}

void RestrictionContext.ValueSetDefinition.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v34[2] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  memcpy(v36, v0, sizeof(v36));
  v10 = v36[0];
  v9 = v36[1];
  v11 = v36[2];
  v12 = v36[3];
  v14 = v36[4];
  v13 = v36[5];
  switch(LOBYTE(v36[7]))
  {
    case 1:
      v34[1] = v4;
      v15 = v36[6];
      v34[3] = v36[0];
      v34[4] = v36[1];
      v34[5] = v36[2];
      v34[6] = v36[3];
      v35 = v36[4];
      v16 = OUTLINED_FUNCTION_41_6();
      sub_1C8D06F98(v16, v17, v18, v19, v14, v20);

      v34[0] = v13;
      ContentItemClassDescriptor.protobuf(useCase:)();
      v21 = OUTLINED_FUNCTION_41_6();
      sub_1C8D06FF4(v21, v22, v23, v24, v14);
      v25 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v25);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D7300C();
      *v8 = v13;
      v8[1] = v15;
      goto LABEL_7;
    case 2:
      *v8 = v36[0];
      v8[1] = v9;
      OUTLINED_FUNCTION_211();
      swift_storeEnumTagMultiPayload();

      goto LABEL_8;
    case 3:
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v8 = v11;
      v8[1] = v12;
      v8[2] = v14;
      v8[3] = v13;
      v8[4] = v10;
      v8[5] = v9;
      OUTLINED_FUNCTION_211();
      goto LABEL_7;
    case 4:
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v8 = v10;
      v8[1] = v9;
      v8[2] = v11;
      v8[3] = v12;
      OUTLINED_FUNCTION_211();
      goto LABEL_7;
    default:
      type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v8 = v10;
      v8[1] = v9;
      v8[2] = v11;
      v8[3] = v12;
      OUTLINED_FUNCTION_211();
LABEL_7:
      swift_storeEnumTagMultiPayload();
LABEL_8:
      v32 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
      MEMORY[0x1EEE9AC00](v32);
      v34[-2] = v36;
      v34[-1] = v8;
      sub_1C8D852C4(qword_1EDA64850, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet, &protocol conformance descriptor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      OUTLINED_FUNCTION_116();
      sub_1C9063ACC();
      OUTLINED_FUNCTION_2_24();
      sub_1C8D85364(v8, v33);
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t RestrictionContext.NumberInclusiveRangeDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = 0;
  v6 = 0;
  if (*v1)
  {
    [v4 doubleValue];
    v6 = v7;
  }

  if (v3)
  {
    [v3 doubleValue];
    v5 = v8;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.InInclusiveRange(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v6;
  *(a1 + 8) = v4 == 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3 == 0;
  return result;
}

uint64_t RestrictionContext.MeasurementRepresentationDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  if (*v1)
  {
    v5 = [*v1 symbol];
    v6 = sub_1C9063EEC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  type metadata accessor for ToolKitProtoRestrictionContext.MeasurementExpressibleAs(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t RestrictionContext.KeyboardTraitsDefinition.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  RestrictionContext.KeyboardTraitsDefinition.KeyboardType.protobuf(useCase:)(&v9);
  v7 = v9;
  type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  result = _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  *(a1 + 4) = v3;
  return result;
}

uint64_t sub_1C8D84258(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;

  result = a3(v6);
  *a1 = a2;
  return result;
}

void RestrictionContext.ValueSetDefinition.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v75 = v5;
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_0();
  v73 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314580, &qword_1C9074DA0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v69 - v11;
  v12 = OUTLINED_FUNCTION_111();
  v71 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v12);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v74 = v14;
  v15 = OUTLINED_FUNCTION_111();
  v16 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(v15);
  v17 = OUTLINED_FUNCTION_9(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v20 = (v19 - v18);
  v21 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v22 = OUTLINED_FUNCTION_9(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v25 = (v24 - v23);
  v26 = &qword_1C9074DF0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_9(v27);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15_0();
  v29 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v33 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v2, 1, v29) == 1)
  {
    sub_1C8CD0CC8(v2, &qword_1EC314588);
    v35 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    OUTLINED_FUNCTION_116();
    v40 = sub_1C8D4F674(v37, v38, v39);
    OUTLINED_FUNCTION_89(v40);
    *v41 = v29;
    OUTLINED_FUNCTION_10_0();
    (*(v42 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_6_15();
    v44 = v4;
LABEL_3:
    sub_1C8D85364(v44, v43);
  }

  else
  {
    v70 = v4;
    sub_1C8D8530C();
    sub_1C8D85734();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_45_0();
        v53 = v74;
        sub_1C8D8530C();
        v54 = sub_1C8D63FCC();
        sub_1C8D85254(v54, v55, v56);
        sub_1C906351C();
        if (v1)
        {
          OUTLINED_FUNCTION_6_15();
          sub_1C8D85364(v70, v57);
          OUTLINED_FUNCTION_22_13();
          OUTLINED_FUNCTION_2_24();
          v44 = v0;
          goto LABEL_3;
        }

        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v68);
        v47 = v77;
        v4 = v79;
        v71 = v78;
        v72 = v76;
        LOBYTE(v2) = v80;
        v26 = *v53;
        v0 = *(v53 + 8);

        OUTLINED_FUNCTION_22_13();
        v48 = 0;
        v49 = 1;
        break;
      case 2u:
      case 4u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v45);
        OUTLINED_FUNCTION_45_0();
        sub_1C8D8530C();
        v46 = v25[4];
        v47 = v25[5];
        v4 = v25[1];
        v71 = *v25;
        v72 = v46;
        v2 = v25[2];
        v26 = v25[3];

        sub_1C8D85364(v25, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
        v48 = v2 & 0xFFFFFFFFFFFFFF00;
        v49 = 3;
        break;
      case 3u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v50);
        v48 = 0;
        v47 = v33[1];
        v72 = *v33;
        v49 = 2;
        break;
      case 5u:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v58);
        OUTLINED_FUNCTION_45_0();
        v0 = v73;
        sub_1C8D8530C();
        v59 = *v0;
        v47 = v0[1];
        v4 = v0[3];
        v71 = v0[2];
        v72 = v59;

        sub_1C8D85364(v0, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicTriggerEnumeration);
        v48 = 0;
        v49 = 4;
        break;
      default:
        OUTLINED_FUNCTION_2_24();
        sub_1C8D85364(v0, v51);
        OUTLINED_FUNCTION_45_0();
        sub_1C8D8530C();
        v52 = *v20;
        v47 = v20[1];
        v4 = v20[3];
        v71 = v20[2];
        v72 = v52;

        sub_1C8D85364(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
        v49 = 0;
        v48 = 0;
        break;
    }

    v60 = v70;
    v61 = (v60 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
    v62 = v60;
    v64 = *v61;
    v63 = v61[1];

    OUTLINED_FUNCTION_6_15();
    sub_1C8D85364(v62, v65);
    v66 = v75;
    v67 = v71;
    *v75 = v72;
    v66[1] = v47;
    v66[2] = v67;
    v66[3] = v4;
    v66[4] = v48 | v2;
    v66[5] = v26;
    v66[6] = v0;
    *(v66 + 56) = v49;
    v66[8] = v64;
    v66[9] = v63;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t ContentItemClassDescriptor.protobuf(useCase:)()
{
  type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v4 = (v3 - v2);
  v6 = *v0;
  v5 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v4 = v8;
      v4[1] = v7;
      v4[2] = v6;
      v4[3] = v5;
      OUTLINED_FUNCTION_287();
      goto LABEL_6;
    case 2:
      type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v4 = v8;
      v4[1] = v7;
      v4[2] = v6;
      v4[3] = v5;
      OUTLINED_FUNCTION_287();
      goto LABEL_6;
    case 3:
      type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(0);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v4 = v6;
      v4[1] = v5;
      OUTLINED_FUNCTION_287();
LABEL_6:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      *v4 = v6;
      v4[1] = v5;
      OUTLINED_FUNCTION_287();
      swift_storeEnumTagMultiPayload();

      break;
  }

  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  MEMORY[0x1EEE9AC00](v9);
  *(&v11 - 2) = v4;
  sub_1C8D852C4(qword_1EDA63D38, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_1C9063ACC();
  return sub_1C8D85364(v4, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
}

uint64_t sub_1C8D84AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 64);
  v4 = (a1 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20));
  sub_1C8D63FCC();

  *v4 = v7;
  sub_1C8CD0CC8(a1, &qword_1EC314588);
  sub_1C8D85734();
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

void ContentItemClassDescriptor.init(protobuf:)()
{
  OUTLINED_FUNCTION_196();
  v2 = OUTLINED_FUNCTION_44_9(v1);
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass(v2);
  v4 = OUTLINED_FUNCTION_9(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_0();
  v41 = v5;
  v6 = OUTLINED_FUNCTION_111();
  v7 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(v6);
  v8 = OUTLINED_FUNCTION_9(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = (v10 - v9);
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = (v15 - v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145A0, &qword_1C9074E00);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_32();
  sub_1C8D63FCC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1C8CD0CC8(v20, &qword_1EC3145A0);
    v24 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    OUTLINED_FUNCTION_116();
    v29 = sub_1C8D4F674(v26, v27, v28);
    v30 = OUTLINED_FUNCTION_213(v29);
    OUTLINED_FUNCTION_196_0(v30, v31);
    *v32 = v21;
    OUTLINED_FUNCTION_10_0();
    (*(v33 + 104))();
    swift_willThrow();
    OUTLINED_FUNCTION_18_8();
  }

  else
  {
    OUTLINED_FUNCTION_18_8();
    sub_1C8D8530C();
    sub_1C8D8530C();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C8D8530C();
        v37 = v16[2];
        v38 = v16[3];
        v34 = *v16;
        v35 = v16[1];

        sub_1C8D85364(v16, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
        v36 = 1;
        break;
      case 2u:
        sub_1C8D8530C();
        v37 = v11[2];
        v38 = v11[3];
        v34 = *v11;
        v35 = v11[1];

        sub_1C8D85364(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
        v36 = 2;
        break;
      case 3u:
        v39 = v41;
        sub_1C8D8530C();
        v37 = *v39;
        v38 = v39[1];

        sub_1C8D85364(v39, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkCodableContentItemClass);
        v34 = 0;
        v35 = 0;
        v36 = 3;
        break;
      default:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = *v0;
        v38 = v0[1];
        break;
    }

    v40 = v42;
    *v42 = v37;
    v40[1] = v38;
    v40[2] = v34;
    v40[3] = v35;
    *(v40 + 32) = v36;
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8D850D0(uint64_t a1, uint64_t a2)
{
  sub_1C8CD0CC8(a1, &qword_1EC3145A0);
  sub_1C8D85734();
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

unint64_t sub_1C8D851E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A78;
  if (!qword_1EDA60A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A78);
  }

  return result;
}

unint64_t sub_1C8D85254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60758;
  if (!qword_1EDA60758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60758);
  }

  return result;
}

uint64_t sub_1C8D852C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8D8530C()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8D85364(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C8D853C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60A70;
  if (!qword_1EDA60A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60A70);
  }

  return result;
}

unint64_t sub_1C8D85420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145B8;
  if (!qword_1EC3145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145B8);
  }

  return result;
}

unint64_t sub_1C8D85478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145C0;
  if (!qword_1EC3145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145C0);
  }

  return result;
}

unint64_t sub_1C8D854D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145C8;
  if (!qword_1EC3145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145C8);
  }

  return result;
}

unint64_t sub_1C8D85528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145D0;
  if (!qword_1EC3145D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145D0);
  }

  return result;
}

unint64_t sub_1C8D85580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60750;
  if (!qword_1EDA60750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60750);
  }

  return result;
}

unint64_t sub_1C8D855D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145D8;
  if (!qword_1EC3145D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145D8);
  }

  return result;
}

unint64_t sub_1C8D85630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145E0;
  if (!qword_1EC3145E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145E0);
  }

  return result;
}

unint64_t sub_1C8D85688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145E8;
  if (!qword_1EC3145E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145E8);
  }

  return result;
}

unint64_t sub_1C8D856E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC3145F0;
  if (!qword_1EC3145F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3145F0);
  }

  return result;
}

uint64_t sub_1C8D85734()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t ToolDatabase.Accessor.containersContainingAppEnums(_:)(uint64_t a1)
{
  v3 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v84 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  OUTLINED_FUNCTION_2();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = v12 | 0x2000000000000000;
  }

  else
  {
    v13 = 0xA000000000000000;
  }

  *v96 = 0xA000000000000000;
  *&v96[8] = v13;
  *&v96[16] = vdupq_n_s64(0xA000000000000000);
  *&v96[32] = v11;
  *&v96[40] = 0xA000000000000000;
  v95[0] = 0;
  LOBYTE(v95[1]) = 1;

  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  OUTLINED_FUNCTION_43_7();
  ToolDatabase.Accessor.containers(matching:scope:locale:)();
  v85 = v1;
  if (v1)
  {
    (*(v5 + 8))(v10, v3);
  }

  else
  {
    v82 = v11;
    v83 = v13;
    v16 = *(v5 + 8);
    v80 = v5 + 8;
    v81 = v3;
    v79 = v16;
    v88 = v14;
    v16(v10, v3);

    v17 = sub_1C9063E2C();
    v18 = v88;
    v19 = v17;
    v20 = 0;
    v87 = *(v88 + 16);
    v21 = 32;
    while (v87 != v20)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v98 = v20;
      v22 = v21;
      memcpy(v96, (v18 + v21), sizeof(v96));
      v23 = *&v96[24];
      v24 = *&v96[32];
      v25 = OUTLINED_FUNCTION_43_7();
      sub_1C8CC1340(v25, v26);
      v27 = OUTLINED_FUNCTION_43_7();
      sub_1C8CC1340(v27, v28);
      swift_isUniquelyReferenced_nonNull_native();
      v89[0] = v19;
      v29 = sub_1C8CAE064(v23, v24);
      v31 = v19[2];
      v32 = (v30 & 1) == 0;
      v19 = (v31 + v32);
      if (__OFADD__(v31, v32))
      {
        goto LABEL_36;
      }

      v33 = v29;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3145F8, &qword_1C90C6400);
      if (sub_1C90648EC())
      {
        v35 = sub_1C8CAE064(v23, v24);
        if ((v34 & 1) != (v36 & 1))
        {
          result = sub_1C9064CBC();
          __break(1u);
          return result;
        }

        v33 = v35;
      }

      if (v34)
      {
        v19 = v89[0];
        v37 = (*(v89[0] + 56) + 104 * v33);
        memcpy(v95, v37, 0x61uLL);
        memcpy(v37, v96, 0x61uLL);
        sub_1C8CC15FC(v95);
        sub_1C8CC15FC(v96);
      }

      else
      {
        v19 = v89[0];
        *(v89[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v38 = (v19[6] + 16 * v33);
        *v38 = v23;
        v38[1] = v24;
        memcpy((v19[7] + 104 * v33), v96, 0x61uLL);

        sub_1C8CC15FC(v96);
        v39 = v19[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_37;
        }

        v19[2] = v41;
      }

      v21 = v22 + 104;
      v20 = v98 + 1;
      v18 = v88;
    }

    if (qword_1EC311368 == -1)
    {
      goto LABEL_19;
    }

LABEL_38:
    OUTLINED_FUNCTION_21(&qword_1EC311368);
LABEL_19:
    OUTLINED_FUNCTION_2();
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    v43 = qword_1EC311370;

    if (v43 != -1)
    {
      OUTLINED_FUNCTION_20(&qword_1EC311370);
    }

    v47 = qword_1EC316150;
    v48 = byte_1EC316158;
    v96[0] = 0;
    LOBYTE(v95[0]) = byte_1EC316158;
    j__swift_bridgeObjectRetain_1(qword_1EC316150, byte_1EC316158, v44, v45, v46);
    sub_1C8D39400(&unk_1F489B0B0, v49, v50, v51, v52, v53, v54, v55, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12]);
    v57 = v56;

    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C8D2C06C(v88, v59, v60);
    *v94 = vdupq_n_s64(0xA000000000000000);
    *&v94[16] = v57;
    *&v94[24] = v58 | 0x2000000000000000;
    v61 = MEMORY[0x1E69E7CD0];
    *&v94[32] = v42;
    *&v94[40] = MEMORY[0x1E69E7CD0];
    v94[48] = 0;
    *&v94[56] = v47;
    v94[64] = v48;
    *&v94[72] = OUTLINED_FUNCTION_2_3;
    *&v94[80] = 0;
    v92 = 0;
    v93 = 1;
    v62 = v84;
    _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
    v63 = v85;
    ToolDatabase.Accessor.types(matching:scope:locale:)();
    if (v63)
    {

      v79(v62, v81);
      memcpy(v96, v94, 0x58uLL);
      sub_1C8D90D00(v96);
    }

    else
    {
      v65 = v64;
      v79(v62, v81);
      memcpy(v91, v94, sizeof(v91));
      sub_1C8D90D00(v91);
      v90 = v61;
      v66 = *(v65 + 16);
      if (v66)
      {
        v85 = 0;
        v67 = v66 - 1;
        for (i = 32; ; i += 104)
        {
          memcpy(v96, (v65 + i), sizeof(v96));
          v69 = *v96;
          switch(v96[96])
          {
            case 1:
            case 2:
            case 3:
              goto LABEL_27;
            case 5:
              v69 = *&v96[32];
LABEL_27:
              if (v69 >> 61 == 2 && v19[2])
              {
                v70 = v69 & 0x1FFFFFFFFFFFFFFFLL;
                v71 = *(v70 + 16);
                v72 = *(v70 + 24);
                v73 = OUTLINED_FUNCTION_43_7();
                sub_1C8D90D54(v73, v74);

                v75 = sub_1C8CAE064(v71, v72);
                v77 = v76;

                if (v77)
                {
                  memcpy(__dst, (v19[7] + 104 * v75), 0x61uLL);
                  sub_1C8CC1340(__dst, v95);
                  sub_1C8D86CF0();
                  sub_1C8D90DB0(v96);
                  memcpy(v95, v89, 0x61uLL);
                  sub_1C8CC15FC(v95);
                }

                else
                {
                  sub_1C8D90DB0(v96);
                }
              }

              break;
            default:
              break;
          }

          if (!v67)
          {
            break;
          }

          --v67;
        }
      }

      return v90;
    }
  }
}

uint64_t ToolDatabase.Accessor.forEachAppEnumInContainer(_:work:)(const void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v42 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  memcpy(__dst, a1, 0x61uLL);
  if (qword_1EC311368 != -1)
  {
    OUTLINED_FUNCTION_21(&qword_1EC311368);
  }

  OUTLINED_FUNCTION_2();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = qword_1EC311370;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_20(&qword_1EC311370);
  }

  v12 = qword_1EC316150;
  v13 = byte_1EC316158;
  LOBYTE(v37[0]) = 0;
  LOBYTE(v38) = byte_1EC316158;
  v14 = swift_allocObject();
  memcpy((v14 + 16), a1, 0x61uLL);
  v15 = OUTLINED_FUNCTION_378();
  j__swift_bridgeObjectRetain_1(v15, v16, v17, v18, v19);
  sub_1C8CC1340(__dst, v40);
  sub_1C8D39400(&unk_1F489B0D8, v20, v21, v22, v23, v24, v25, v26, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v38, v39, *&v40[0], *(&v40[0] + 1), *&v40[1], *(&v40[1] + 1), *&v40[2], *(&v40[2] + 1));
  v28 = v27;

  v40[0] = vdupq_n_s64(0xA000000000000000);
  *&v40[1] = v28;
  *(&v40[1] + 1) = v14;
  *&v40[2] = v10;
  *(&v40[2] + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v40[3]) = 0;
  *(&v40[3] + 1) = v12;
  LOBYTE(v40[4]) = v13;
  *(&v40[4] + 1) = OUTLINED_FUNCTION_2_3;
  *&v40[5] = 0;
  MEMORY[0x1EEE9AC00](v29);
  v30 = v34;
  *(&v32 - 2) = v33;
  *(&v32 - 1) = v30;
  v38 = 0;
  LOBYTE(v39) = 1;
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  ToolDatabase.Accessor.iterate(over:scope:locale:block:)();
  (*(v5 + 8))(v9, v42);
  memcpy(v37, v40, sizeof(v37));
  return sub_1C8D90D00(v37);
}

uint64_t sub_1C8D861CC(uint64_t a1, void (*a2)(unint64_t *, void *))
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 96);
  switch(v5)
  {
    case 1:
    case 2:
    case 3:

      v8 = v3;
      break;
    case 4:
      v9 = swift_allocObject();
      *(v9 + 16) = v3;
      *(v9 + 24) = v2;
      v8 = v9 | 0x8000000000000000;

      break;
    case 5:

      v8 = v4;
      break;
    default:
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      break;
  }

  v19 = v8;
  v11[0] = v3;
  v11[1] = v2;
  v12 = *(a1 + 16);
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v18 = v5;
  a2(&v19, v11);
}

BOOL sub_1C8D8634C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C9064D7C();
  sub_1C9063FBC();
  sub_1C9064DBC();
  OUTLINED_FUNCTION_13_12();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1C9064C2C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_1C8D8AD90(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

void sub_1C8D86494()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  memcpy(__dst, v4, sizeof(__dst));
  v5 = *v0;
  OUTLINED_FUNCTION_354(v17);
  sub_1C9064D7C();
  RestrictionContext.hash(into:)(v15);
  sub_1C9064DBC();
  OUTLINED_FUNCTION_13_12();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    if (((1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      memcpy(v17, __dst, 0x88uLL);
      __src[0] = *v1;
      sub_1C8D073F4(v17, v15);
      sub_1C8D8AEF8(v17, v9, isUniquelyReferenced_nonNull_native);
      *v1 = __src[0];
      memcpy(v3, __dst, 0x88uLL);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_354(v15);
    OUTLINED_FUNCTION_354(__src);
    sub_1C8D073F4(v15, v13);
    v10 = static RestrictionContext.== infix(_:_:)();
    memcpy(v17, __src, 0x88uLL);
    sub_1C8D073A0(v17);
    if (v10)
    {
      break;
    }

    v6 = v9 + 1;
  }

  memcpy(v13, __dst, sizeof(v13));
  sub_1C8D073A0(v13);
  OUTLINED_FUNCTION_354(__src);
  OUTLINED_FUNCTION_354(v3);
  sub_1C8D073F4(__src, v12);
LABEL_7:
  OUTLINED_FUNCTION_163();
}

BOOL sub_1C8D86644(_BYTE *a1, unint64_t a2)
{
  v5 = *v2;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a2);
  sub_1C9064DBC();
  OUTLINED_FUNCTION_32_5();
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v7 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_4();
  sub_1C8D8B0C4(a2, v9, v11);
  *v2 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

void sub_1C8D86720()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v45 = v3;
  v53 = sub_1C906359C();
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v47 = v8 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314658, &qword_1C9074840);
  MEMORY[0x1EEE9AC00](v57);
  v10 = &v42 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  OUTLINED_FUNCTION_11();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v54 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v42 - v22;
  v44 = v0;
  v23 = *v0;
  sub_1C9064D7C();
  sub_1C90364BC(&v60);
  sub_1C9064DBC();
  v24 = v23 + 56;
  v58 = v23;
  OUTLINED_FUNCTION_13_12();
  v27 = v26 & ~v25;
  if (((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_19:
    v39 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v43;
    sub_1C8D90EC8(v2, v43);
    v60 = *v39;
    sub_1C8D8B1FC(v41, v27, isUniquelyReferenced_nonNull_native);
    *v39 = v60;
    sub_1C8D6DFF0(v2, v45);
    goto LABEL_22;
  }

  v55 = ~v25;
  v46 = (v5 + 32);
  v56 = *(v12 + 72);
  v51 = (v5 + 8);
  v52 = v24;
  v49 = v2;
  v50 = v17;
  v28 = v54;
  while (1)
  {
    v29 = v56 * v27;
    sub_1C8D90EC8(*(v58 + 48) + v56 * v27, v20);
    v30 = &v10[*(v57 + 48)];
    sub_1C8D90EC8(v20, v10);
    sub_1C8D90EC8(v2, v30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v34 = v50;
    sub_1C8D90EC8(v10, v50);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v48 = v29;
      v35 = v47;
      v36 = v53;
      (*v46)(v47, v30, v53);
      sub_1C8D90F38(&qword_1EC314660, MEMORY[0x1E69E0838], MEMORY[0x1E69E0848]);
      v37 = sub_1C9063EAC();
      v38 = *v51;
      (*v51)(v35, v36);
      sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);
      v38(v34, v36);
      v24 = v52;
      if (v37)
      {
        goto LABEL_21;
      }

      v33 = v10;
      goto LABEL_17;
    }

    sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);
    (*v51)(v34, v53);
    v24 = v52;
LABEL_14:
    sub_1C8D14208(v10, &qword_1EC314658, &qword_1C9074840);
LABEL_18:
    v27 = (v27 + 1) & v55;
    if (((*(v24 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1C8D90EC8(v10, v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);

    goto LABEL_14;
  }

  v48 = v29;
  if (*v28 != *v30 || v28[1] != *(v30 + 1))
  {
    v32 = sub_1C9064C2C();

    sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);

    if (v32)
    {
      goto LABEL_21;
    }

    v33 = v10;
LABEL_17:
    sub_1C8D14208(v33, &qword_1EC312DD0, &qword_1C9072940);
    v2 = v49;
    v28 = v54;
    goto LABEL_18;
  }

  sub_1C8D14208(v20, &qword_1EC312DD0, &qword_1C9072940);

LABEL_21:
  sub_1C8D14208(v10, &qword_1EC312DD0, &qword_1C9072940);
  sub_1C8D14208(v49, &qword_1EC312DD0, &qword_1C9072940);
  sub_1C8D90EC8(*(v58 + 48) + v48, v45);
LABEL_22:
  OUTLINED_FUNCTION_163();
}

void sub_1C8D86CF0()
{
  OUTLINED_FUNCTION_164();
  v3 = v2;
  __dst = v4;
  v33 = v0;
  v5 = *v0;
  memcpy(v45, v2, 0x61uLL);
  sub_1C9064D7C();
  ContainerDefinition.hash(into:)(v44);
  sub_1C9064DBC();
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  v34 = v3;
  if (((*(v5 + 56 + v7) >> v1) & 1) == 0)
  {
LABEL_59:
    swift_isUniquelyReferenced_nonNull_native();
    v44[0] = *v33;
    sub_1C8CC1340(v34, v45);
    v25 = OUTLINED_FUNCTION_33_6();
    sub_1C8D8B9B0(v25, v26, v27);
    *v33 = v44[0];
    memcpy(__dst, v34, 0x61uLL);
    goto LABEL_60;
  }

  v42 = ~v6;
  v37 = *(v3 + 56);
  v30 = *(v3 + 96);
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v40 = v3[4];
  v41 = v3[3];
  v39 = v3[6];
  v36 = v3[9];
  v38 = v3[5];
  v29 = v3[10];
  v31 = v3[11];
  v32 = v3[8];
  while (1)
  {
    v11 = 104 * v1;
    memcpy(v45, (*(v5 + 48) + 104 * v1), 0x61uLL);
    v12 = v45[0] == v8 && v45[1] == v9;
    if (!v12 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    v13 = *(v45[2] + 16);
    if (v13 != *(v10 + 16))
    {
      goto LABEL_58;
    }

    if (v13 && v45[2] != v10)
    {
      break;
    }

LABEL_21:
    v18 = v45[3] == v41 && v45[4] == v40;
    if (!v18 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    if (v45[6])
    {
      if (!v39)
      {
        goto LABEL_58;
      }

      v19 = v45[5] == v38 && v45[6] == v39;
      if (!v19 && (sub_1C9064C2C() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    else if (v39)
    {
      goto LABEL_58;
    }

    if (LOBYTE(v45[7]) == v37)
    {
      if (v45[9])
      {
        if (!v36)
        {
          goto LABEL_58;
        }

        v20 = v45[8] == v32 && v45[9] == v36;
        if (!v20 && (sub_1C9064C2C() & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (v36)
      {
        goto LABEL_58;
      }

      if (v45[11])
      {
        if (!v31)
        {
          goto LABEL_54;
        }

        if (v45[10] == v29 && v45[11] == v31)
        {
          sub_1C8CC1340(v45, v44);
        }

        else
        {
          v22 = sub_1C9064C2C();
          sub_1C8CC1340(v45, v44);
          if ((v22 & 1) == 0)
          {
            sub_1C8CC15FC(v45);
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v31)
        {
LABEL_54:

          goto LABEL_58;
        }

        sub_1C8CC1340(v45, v44);
        swift_bridgeObjectRelease_n();
      }

      v23 = LOBYTE(v45[12]);
      sub_1C8CC15FC(v45);
      if (v23 == v30)
      {
        goto LABEL_62;
      }
    }

LABEL_58:
    v1 = (v1 + 1) & v42;
    OUTLINED_FUNCTION_48_4();
    if (((*(v5 + 56 + v24) >> v1) & 1) == 0)
    {
      goto LABEL_59;
    }
  }

  v15 = (v45[2] + 40);
  v16 = (v10 + 40);
  while (v13)
  {
    v17 = *(v15 - 1) == *(v16 - 1) && *v15 == *v16;
    if (!v17 && (sub_1C9064C2C() & 1) == 0)
    {
      goto LABEL_58;
    }

    v15 += 2;
    v16 += 2;
    if (!--v13)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_62:
  sub_1C8CC15FC(v34);
  v28 = *(v5 + 48);
  memcpy(v44, (v28 + v11), 0x61uLL);
  memcpy(__dst, (v28 + v11), 0x61uLL);
  sub_1C8CC1340(v44, v43);
LABEL_60:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D87080(uint64_t a1, uint64_t a2, int a3)
{
  v122 = a1;
  v6 = *v3;
  v133 = a2;
  LOBYTE(v134) = a3;
  sub_1C9064D7C();
  ParameterRelationshipDefinition.Relation.hash(into:)(&v124);
  sub_1C9064DBC();
  OUTLINED_FUNCTION_13_12();
  v9 = v8 & ~v7;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = *v121;
    v101 = OUTLINED_FUNCTION_100();
    sub_1C8D07154(v101, v102, v103, v104, v105, v106);
    v107 = OUTLINED_FUNCTION_100();
    sub_1C8D8BD54(v107, v108, v9, isUniquelyReferenced_nonNull_native);
    *v121 = v124;
    *v122 = a2;
    *(v122 + 8) = a3;
    return 1;
  }

  v10 = ~v7;
  HIDWORD(v123) = a3 & 0xFFFFFFE0;
  v11 = a3 & 0xE0;
  v12 = a3 != 192 || a2 != 1;
  v13 = a3 != 192 || a2 != 0;
  v14 = v11 != 192 || v12;
  v15 = v11 != 192 || v13;
  v120 = __PAIR64__(v14, v15);
  while (2)
  {
    v16 = *(v6 + 48) + 16 * v9;
    v17 = *v16;
    v18 = *(v16 + 8);
    switch(v18 >> 5)
    {
      case 1u:
        OUTLINED_FUNCTION_34_7();
        if (v54 != 32)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 2u:
        OUTLINED_FUNCTION_34_7();
        if (v20 != 64)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      case 3u:
        OUTLINED_FUNCTION_34_7();
        if (v21 != 96)
        {
          goto LABEL_30;
        }

LABEL_23:
        v22 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v22, v23, v24, v25, v26, v27);
        v28 = OUTLINED_FUNCTION_100();
        sub_1C8D07154(v28, v29, v30, v31, v32, v33);
        v34 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v34, v35, v36, v37, v38, v39);
        sub_1C8D2A4D8(v17, a2, v40, v41, v42, v43, v44, v45, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        v47 = v46;
        v48 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v48, v49);
        v50 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v50, v51);
        v52 = OUTLINED_FUNCTION_100();
        sub_1C8D07168(v52, v53);
        if ((v47 & 1) != 0 && ((v18 ^ a3) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      case 4u:
        OUTLINED_FUNCTION_34_7();
        if (v19 != 128)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 5u:
        OUTLINED_FUNCTION_34_7();
        if (v85 != 160)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 6u:
        if (!(v17 | v18 ^ 0xC0))
        {
          if ((v120 & 1) == 0)
          {
            OUTLINED_FUNCTION_57_6();
            v111 = 0;
            goto LABEL_41;
          }

LABEL_35:
          v92 = OUTLINED_FUNCTION_100();
LABEL_36:
          sub_1C8D07154(v92, v93, v94, v95, v96, v97);
          OUTLINED_FUNCTION_57_6();
          v98 = OUTLINED_FUNCTION_100();
          sub_1C8D07168(v98, v99);
LABEL_37:
          v9 = (v9 + 1) & v10;
          if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_38;
          }

          continue;
        }

        if ((v120 & 0x100000000) != 0)
        {
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_57_6();
        v111 = 1;
LABEL_41:
        v110 = -64;
LABEL_42:
        sub_1C8D07168(v111, v110);
        v112 = *(v6 + 48) + 16 * v9;
        v113 = *v112;
        *v122 = *v112;
        v114 = *(v112 + 8);
        *(v122 + 8) = v114;
        sub_1C8D07154(v113, v114, v115, v116, v117, v118);
        return 0;
      default:
        if (a3 >= 0x20u)
        {
LABEL_30:
          v86 = OUTLINED_FUNCTION_100();
          sub_1C8D07154(v86, v87, v88, v89, v90, v91);
          v92 = OUTLINED_FUNCTION_378();
          goto LABEL_36;
        }

LABEL_27:
        v55 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v55, v56, v57, v58, v59, v60);
        v61 = OUTLINED_FUNCTION_100();
        sub_1C8D07154(v61, v62, v63, v64, v65, v66);
        v67 = OUTLINED_FUNCTION_378();
        sub_1C8D07154(v67, v68, v69, v70, v71, v72);
        sub_1C8D2A4D8(v17, a2, v73, v74, v75, v76, v77, v78, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        v80 = v79;
        v81 = OUTLINED_FUNCTION_378();
        sub_1C8D07168(v81, v82);
        OUTLINED_FUNCTION_57_6();
        v83 = OUTLINED_FUNCTION_100();
        sub_1C8D07168(v83, v84);
        if (v80)
        {
LABEL_39:
          v111 = OUTLINED_FUNCTION_100();
          goto LABEL_42;
        }

        goto LABEL_37;
    }
  }
}

void sub_1C8D87378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  v33 = v32;
  v35 = v34;
  v46 = v36;
  v37 = *v32;
  sub_1C9064D7C();
  TypedValue.hash(into:)();
  sub_1C9064DBC();
  OUTLINED_FUNCTION_13_12();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *v33;

      sub_1C8D8C0B8(v46, v41, isUniquelyReferenced_nonNull_native);
      *v33 = v45;
      *v35 = v46;
      goto LABEL_7;
    }

    static TypedValue.== infix(_:_:)();
    v43 = v42;

    if (v43)
    {
      break;
    }

    v38 = v41 + 1;
  }

  *v35 = *(*(v37 + 48) + 8 * v41);

LABEL_7:
  OUTLINED_FUNCTION_182();
}

uint64_t sub_1C8D874AC(uint64_t a1, uint64_t *a2)
{
  v85 = a1;
  v5 = *v2;
  sub_1C8D31238(*(*v2 + 40));
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  if (((*(v5 + 56 + v12) >> v3) & 1) == 0)
  {
LABEL_128:
    swift_isUniquelyReferenced_nonNull_native();
    v99 = *v84;
    sub_1C8D3EC14(a2, &v97);
    v74 = OUTLINED_FUNCTION_33_6();
    sub_1C8D8C248(v74, v75, v76);
    *v84 = v99;
    v77 = *(a2 + 1);
    *v85 = *a2;
    *(v85 + 16) = v77;
    *(v85 + 32) = *(a2 + 32);
    return 1;
  }

  v13 = ~v11;
  v80 = 0x80000001C90CA2E0;
  v81 = 0x80000001C90CA300;
  v82 = 0x80000001C90CA320;
  v83 = 0x80000001C90CA340;
  v88 = 0x80000001C90CA380;
  v89 = 0x80000001C90CA360;
  while (1)
  {
    v90 = 5 * v3;
    v92 = v3;
    v14 = *(v5 + 48) + 40 * v3;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v95 = v19;
    if (!v19)
    {
      OUTLINED_FUNCTION_16();
      v97 = v22;
      v98 = v88;

      MEMORY[0x1CCA81A90](v16, v15);
      goto LABEL_7;
    }

    if (v19 == 1)
    {
      OUTLINED_FUNCTION_16();
      v97 = v20;
      v98 = v89;

      v21 = OUTLINED_FUNCTION_29_8();
      MEMORY[0x1CCA81A90](v21);

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      MEMORY[0x1CCA81A90](v16, v15);

LABEL_7:
      v23 = v97;
      v24 = v98;
      goto LABEL_8;
    }

    if (!(v17 | v15 | v16 | v18))
    {
      v24 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E75;
      goto LABEL_8;
    }

    v49 = v17 | v15 | v18;
    v50 = v16 == 1 && v49 == 0;
    v23 = 0x6F6363416C69616DLL;
    v24 = 0xEB00000000746E75;
    if (!v50)
    {
      v51 = v16 == 2 && v49 == 0;
      v23 = 0x726464416C69616DLL;
      v24 = 0xED00006565737365;
      if (!v51)
      {
        v52 = v16 == 3 && v49 == 0;
        v23 = 0x7373654D6C69616DLL;
        v24 = 0xEB00000000656761;
        if (!v52)
        {
          if (v16 == 4 && v49 == 0)
          {
            v24 = 0xE700000000000000;
            v23 = 0x786F626C69616DLL;
            goto LABEL_8;
          }

          if (v16 == 5 && v49 == 0)
          {
            v23 = 0x654D746E65746E69;
            v63 = 0x6567617373;
LABEL_67:
            v24 = v63 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_8;
          }

          if (v16 == 6 && !v49)
          {
            v23 = 0x476567617373656DLL;
            v55 = 1886744434;
LABEL_44:
            v24 = v55 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_8;
          }

          if (v16 != 7 || v49)
          {
            if (v16 != 8 || v49)
            {
              if (v16 == 9 && !v49)
              {
                v23 = 0x6E45657571696E75;
                v55 = 2037672308;
                goto LABEL_44;
              }

              if (v16 != 10 || v49)
              {
                if (v16 == 11 && !v49)
                {
                  v23 = 0x4564657865646E69;
                  v63 = 0x797469746ELL;
                  goto LABEL_67;
                }

                if (v16 != 12 || v49)
                {
                  if (v16 != 13 || (v23 = 0xD000000000000010, v24 = v81, v49))
                  {
                    if (v16 != 14 || v49)
                    {
                      if (v49)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = v16 == 15;
                      }

                      if (v73)
                      {
                        v24 = 0xEC00000068637261;
                      }

                      else
                      {
                        v24 = 0xEF52434F68637261;
                      }

                      v23 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v23 = v71 + 10;
                      v24 = v80;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v23 = v69 + 5;
                  v24 = v82;
                }
              }

              else
              {
                v23 = 0x6C62617461647075;
                v24 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v24 = v67 + 15;
              v23 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v23 = v65 + 2;
            v24 = v83;
          }
        }
      }
    }

LABEL_8:
    v96 = v17;
    v25 = *a2;
    v26 = a2[1];
    if (!*(a2 + 32))
    {
      OUTLINED_FUNCTION_16();
      v97 = v32;
      v98 = v88;
      v33 = OUTLINED_FUNCTION_29_8();
      v35 = v34;
      v27 = MEMORY[0x1CCA81A90](v33);
      v23 = v35;
      goto LABEL_12;
    }

    v27 = a2[2];
    v28 = a2[3];
    if (*(a2 + 32) == 1)
    {
      OUTLINED_FUNCTION_16();
      v97 = v29;
      v98 = v89;
      v86 = v30;
      MEMORY[0x1CCA81A90]();
      v87 = v24;

      MEMORY[0x1CCA81A90](46, 0xE100000000000000);

      v31 = OUTLINED_FUNCTION_29_8();
      MEMORY[0x1CCA81A90](v31);

      v23 = v86;
LABEL_12:
      v36 = v97;
      v37 = v98;
      goto LABEL_13;
    }

    if (!(v27 | v26 | v25 | v28))
    {
      v37 = 0xE700000000000000;
      v36 = 0x6E776F6E6B6E75;
      goto LABEL_13;
    }

    v56 = v27 | v26 | v28;
    if (v25 != 1 || (OUTLINED_FUNCTION_50_2(), v36 = v57 | 0x6F63634100000000, v37 = 0xEB00000000746E75, v56))
    {
      if (v25 != 2 || (OUTLINED_FUNCTION_50_2(), v36 = v58 | 0x7264644100000000, v37 = 0xED00006565737365, v56))
      {
        if (v25 != 3 || (OUTLINED_FUNCTION_50_2(), v36 = v59 | 0x7373654D00000000, v37 = 0xEB00000000656761, v56))
        {
          if (v25 == 4 && !v56)
          {
            v37 = 0xE700000000000000;
            OUTLINED_FUNCTION_50_2();
            v36 = v60 | 0x786F6200000000;
            goto LABEL_13;
          }

          if (v25 == 5 && !v56)
          {
            v36 = 0x654D746E65746E69;
            v61 = 0x6567617373;
LABEL_60:
            v37 = v61 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_13;
          }

          if (v25 == 6 && !v56)
          {
            v36 = 0x476567617373656DLL;
            v62 = 1886744434;
LABEL_65:
            v37 = v62 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_13;
          }

          if (v25 != 7 || v56)
          {
            if (v25 != 8 || v56)
            {
              if (v25 == 9 && !v56)
              {
                v36 = 0x6E45657571696E75;
                v62 = 2037672308;
                goto LABEL_65;
              }

              if (v25 != 10 || v56)
              {
                if (v25 == 11 && !v56)
                {
                  v36 = 0x4564657865646E69;
                  v61 = 0x797469746ELL;
                  goto LABEL_60;
                }

                if (v25 != 12 || v56)
                {
                  if (v25 != 13 || (v36 = 0xD000000000000010, v37 = v81, v56))
                  {
                    if (v25 != 14 || v56)
                    {
                      if (v56)
                      {
                        v72 = 0;
                      }

                      else
                      {
                        v72 = v25 == 15;
                      }

                      if (v72)
                      {
                        v37 = 0xEC00000068637261;
                      }

                      else
                      {
                        v37 = 0xEF52434F68637261;
                      }

                      v36 = 0x65536C6175736976;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_16();
                      v36 = v70 + 10;
                      v37 = v80;
                    }
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_16();
                  v36 = v68 + 5;
                  v37 = v82;
                }
              }

              else
              {
                v36 = 0x6C62617461647075;
                v37 = 0xEF797469746E4565;
              }
            }

            else
            {
              OUTLINED_FUNCTION_42_5();
              v37 = v66 + 15;
              v36 = 0x6E6569736E617274;
            }
          }

          else
          {
            OUTLINED_FUNCTION_16();
            v36 = v64 + 2;
            v37 = v83;
          }
        }
      }
    }

LABEL_13:
    if (v23 == v36 && v24 == v37)
    {
      break;
    }

    v39 = sub_1C9064C2C();
    v40 = v39;
    OUTLINED_FUNCTION_55_2(v39, v41, v42, v43, v44, v45, v46, v47, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v92, v94, v95, v96, v15);

    if (v40)
    {
      goto LABEL_130;
    }

    v3 = (v93 + 1) & v13;
    OUTLINED_FUNCTION_48_4();
    if (((*(v5 + 56 + v48) >> v3) & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  OUTLINED_FUNCTION_55_2(v27, v28, v36, v6, v7, v8, v9, v10, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v92, v94, v95, v96, v15);

LABEL_130:
  v79 = 8 * v91;
  sub_1C8D90E74(a2);
  OUTLINED_FUNCTION_56_5(*(*(v5 + 48) + v79), *(*(v5 + 48) + v79 + 8), *(*(v5 + 48) + v79 + 16), *(*(v5 + 48) + v79 + 24), *(v5 + 48) + v79);
  return 0;
}

uint64_t sub_1C8D87D50(_BYTE *a1, char a2)
{
  v5 = *v2;
  v20 = a2 & 1;
  sub_1C8D30F0C(*(*v2 + 40));
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_28_7();
  if ((*(v5 + 56 + v7) >> v3))
  {
    v8 = ~v6;
    if (a2)
    {
      v9 = 0x65676175676E616CLL;
    }

    else
    {
      v9 = 0x79616C70736964;
    }

    if (a2)
    {
      v10 = 0xED00006C65646F4DLL;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    while (1)
    {
      v11 = *(*(v5 + 48) + v3) ? 0x65676175676E616CLL : 0x79616C70736964;
      v12 = *(*(v5 + 48) + v3) ? 0xED00006C65646F4DLL : 0xE700000000000000;
      if (v11 == v9 && v12 == v10)
      {
        break;
      }

      v14 = sub_1C9064C2C();

      if (v14)
      {
        goto LABEL_22;
      }

      v3 = (v3 + 1) & v8;
      OUTLINED_FUNCTION_48_4();
      if (((*(v5 + 56 + v15) >> v3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v17 = *(*(v5 + 48) + v3);
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    v17 = v20;
    sub_1C8D8CBBC(v20, v3, isUniquelyReferenced_nonNull_native);
    *v19 = v22;
    result = 1;
  }

  *a1 = v17;
  return result;
}

BOOL sub_1C8D87EF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1C8D307DC(*(*v2 + 40));
  v49 = v3;
  OUTLINED_FUNCTION_13_12();
  v48 = ~v5;
  while (1)
  {
    v6 = v4 & v48;
    OUTLINED_FUNCTION_48_4();
    v9 = *(v8 + v7);
    v10 = (1 << v6) & v9;
    if (!v10)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v51 = *v45;
      sub_1C8D3ECC4(a2, v52);
      v34 = OUTLINED_FUNCTION_33_6();
      sub_1C8D8CDBC(v34, v35, v36);
      *v45 = v51;
      v37 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v37;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    v47 = (1 << v6) & v9;
    v11 = *(v49 + 48) + 40 * v6;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v52[0] = *v11;
    v52[1] = v12;
    v52[2] = v13;
    v52[3] = v14;
    v53 = v15;
    v16 = OUTLINED_FUNCTION_10_15();
    sub_1C8D54590(v16, v17, v18, v19, v20);
    SystemToolProtocol.Identifier.rawValue.getter();
    v22 = v21;
    v24 = v23;
    SystemToolProtocol.Identifier.rawValue.getter();
    if (v22 == v26 && v24 == v25)
    {
      break;
    }

    v28 = sub_1C9064C2C();
    v29 = OUTLINED_FUNCTION_10_15();
    sub_1C8D3ED20(v29, v30, v31, v32, v33);

    if (v28)
    {
      goto LABEL_11;
    }

    v4 = v6 + 1;
  }

  v38 = OUTLINED_FUNCTION_10_15();
  sub_1C8D3ED20(v38, v39, v40, v41, v42);

LABEL_11:
  sub_1C8D90E20(a2);
  v43 = (*(v49 + 48) + 40 * v6);
  OUTLINED_FUNCTION_56_5(*v43, v43[1], v43[2], v43[3], v43);
  v10 = v47;
  return v10 == 0;
}

BOOL sub_1C8D880F8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = v5;
  v12 = *v5;
  sub_1C9064D6C();
  OUTLINED_FUNCTION_32_5();
  while (1)
  {
    v16 = v13 & v15;
    v17 = (1 << (v13 & v15)) & *(v14 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      break;
    }

    if (*(*(v12 + 48) + 8 * v16) == a2)
    {
      goto LABEL_6;
    }

    v13 = v16 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_46_4();
  sub_1C8D8D044(a2, v16, v18, a3, a4, a5);
  *v9 = v20;
LABEL_6:
  result = v17 == 0;
  *a1 = a2;
  return result;
}

void sub_1C8D881DC()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v25 = v3;
  v4 = sub_1C906204C();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v24 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_15_12();
  sub_1C8D90F38(v12, v13, MEMORY[0x1E69695B8]);
  sub_1C9063E6C();
  v26 = v11;
  v27 = v11 + 56;
  OUTLINED_FUNCTION_13_12();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v27 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v28 = *v24;
      sub_1C8D8D154(v10, v17, isUniquelyReferenced_nonNull_native);
      *v24 = v28;
      (*(v6 + 32))(v25, v2, v4);
      goto LABEL_7;
    }

    v18 = *(v6 + 72) * v17;
    v19 = *(v6 + 16);
    v19(v10, *(v26 + 48) + v18, v4);
    OUTLINED_FUNCTION_15_12();
    sub_1C8D90F38(&qword_1EC314618, v20, MEMORY[0x1E69695C8]);
    v21 = sub_1C9063EAC();
    v22 = *(v6 + 8);
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v25, *(v26 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8D8845C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400);
  result = sub_1C906474C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_75:

    *v39 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  v41 = v10;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_77;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v42 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v38 = 1 << *(v2 + 32);
    if (v38 >= 64)
    {
      sub_1C8D8D3E0(0, (v38 + 63) >> 6, v6);
    }

    else
    {
      *v6 = -1 << v38;
    }

    *(v2 + 16) = 0;
    goto LABEL_75;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v42 = (v9 - 1) & v9;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    sub_1C9064D7C();
    switch(v15 >> 61)
    {
      case 1uLL:
        v40 = v15;
        v21 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1CCA82810](1);
        switch(v21)
        {
          case 0:
LABEL_23:
            v22 = 0;
            goto LABEL_56;
          case 1:
LABEL_41:
            v22 = 1;
            goto LABEL_56;
          case 2:
LABEL_47:
            v22 = 2;
            goto LABEL_56;
          case 3:
LABEL_49:
            v22 = 3;
            goto LABEL_56;
          case 4:
LABEL_44:
            v22 = 4;
            goto LABEL_56;
          case 5:
LABEL_51:
            v22 = 5;
            goto LABEL_56;
          case 6:
LABEL_53:
            v22 = 6;
            goto LABEL_56;
          case 7:
LABEL_50:
            v22 = 7;
            goto LABEL_56;
          case 8:
LABEL_55:
            v22 = 8;
            goto LABEL_56;
          case 9:
LABEL_46:
            v22 = 9;
            goto LABEL_56;
          case 10:
LABEL_54:
            v22 = 10;
            goto LABEL_56;
          case 11:
LABEL_43:
            v22 = 11;
            goto LABEL_56;
          case 12:
LABEL_45:
            v22 = 12;
            goto LABEL_56;
          case 13:
LABEL_52:
            v22 = 13;
            goto LABEL_56;
          case 14:
LABEL_42:
            v22 = 14;
            goto LABEL_56;
          case 15:
LABEL_48:
            v22 = 16;
LABEL_56:
            MEMORY[0x1CCA82810](v22);
            break;
          default:
            v24 = *(v21 + 16);
            MEMORY[0x1CCA82810](15);
            switch(v24 >> 61)
            {
              case 1uLL:
                v28 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                MEMORY[0x1CCA82810](1);
                switch(v28)
                {
                  case 0:
                    goto LABEL_23;
                  case 1:
                    goto LABEL_41;
                  case 2:
                    goto LABEL_47;
                  case 3:
                    goto LABEL_49;
                  case 4:
                    goto LABEL_44;
                  case 5:
                    goto LABEL_51;
                  case 6:
                    goto LABEL_53;
                  case 7:
                    goto LABEL_50;
                  case 8:
                    goto LABEL_55;
                  case 9:
                    goto LABEL_46;
                  case 10:
                    goto LABEL_54;
                  case 11:
                    goto LABEL_43;
                  case 12:
                    goto LABEL_45;
                  case 13:
                    goto LABEL_52;
                  case 14:
                    goto LABEL_42;
                  case 15:
                    goto LABEL_48;
                  default:
                    v37 = *(v28 + 16);
                    MEMORY[0x1CCA82810](15);
                    __dst[0] = v37;
                    TypeIdentifier.hash(into:)(v47);
                    break;
                }

                goto LABEL_57;
              case 2uLL:
                MEMORY[0x1CCA82810](2);
                sub_1C9063FBC();
                goto LABEL_37;
              case 3uLL:
                memcpy(__dst, ((v24 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                v27 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                v26 = *((v24 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
                memcpy(__src, ((v24 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
                MEMORY[0x1CCA82810](3);
                ContainerDefinition.hash(into:)(v47);
                if (v26)
                {
                  v45[0] = v27;
                  v45[1] = v26;
                  memcpy(&v45[2], __src, 0x51uLL);
                  memcpy(v44, v45, 0x61uLL);
                  sub_1C9064D9C();
                  sub_1C8CC1340(v45, __dst);
                  ContainerDefinition.hash(into:)(v47);
                  memcpy(__dst, v44, 0x61uLL);
                  sub_1C8CC15FC(__dst);
                }

                else
                {
                  sub_1C9064D9C();
                }

                goto LABEL_37;
              case 4uLL:
                MEMORY[0x1CCA82810](4);
LABEL_37:
                sub_1C9063FBC();
                break;
              default:
                v25 = *(v24 + 16);
                MEMORY[0x1CCA82810](0);
                LOBYTE(__dst[0]) = v25;
                TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                break;
            }

            break;
        }

LABEL_57:
        v15 = v40;
        break;
      case 2uLL:
        MEMORY[0x1CCA82810](2);
        sub_1C9063FBC();
        goto LABEL_16;
      case 3uLL:
        memcpy(__dst, ((v15 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
        MEMORY[0x1CCA82810](3);
        v17 = __dst[2];
        sub_1C8D3EFB8(__dst, v45);
        sub_1C9063FBC();
        v18 = *(v17 + 16);
        MEMORY[0x1CCA82810](v18);
        if (v18)
        {
          v19 = v17 + 40;
          do
          {

            sub_1C9063FBC();

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        v20 = __dst[6];
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v20)
        {
          sub_1C9063FBC();
        }

        v23 = __dst[9];
        MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
        sub_1C9064D9C();
        if (v23)
        {
          sub_1C9063FBC();
        }

        if (__dst[11])
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
        if (__dst[14])
        {
          memcpy(__src, &__dst[13], sizeof(__src));
          sub_1C9064D9C();
          memcpy(v44, &__dst[13], 0x61uLL);
          sub_1C8CC1340(v44, v45);
          ContainerDefinition.hash(into:)(v47);
          memcpy(v45, __src, 0x61uLL);
          sub_1C8CC15FC(v45);
        }

        else
        {
          sub_1C9064D9C();
        }

        sub_1C9063FBC();
        sub_1C8D3F014(__dst);
        break;
      case 4uLL:
        MEMORY[0x1CCA82810](4);
LABEL_16:
        sub_1C9063FBC();
        break;
      default:
        v16 = *(v15 + 16);
        MEMORY[0x1CCA82810](0);
        LOBYTE(__dst[0]) = v16;
        TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
        break;
    }

    result = sub_1C9064DBC();
    v29 = -1 << *(v4 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_67:
    *(v11 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    *(*(v4 + 48) + 8 * v32) = v15;
    ++*(v4 + 16);
    v10 = v41;
    v9 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v11 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_67;
    }
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_1C8D88C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  result = sub_1C906474C();
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
      sub_1C8D8D3E0(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_1C9064D7C();
    sub_1C9063FBC();
    result = sub_1C9064DBC();
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

uint64_t sub_1C8D88E6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  result = sub_1C906474C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v1;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1C8D8D3E0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v26;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 136 * (v13 | (v6 << 6)));
    memcpy(__dst, v16, sizeof(__dst));
    memcpy(v28, v16, sizeof(v28));
    sub_1C9064D7C();
    RestrictionContext.hash(into:)(v27);
    result = sub_1C9064DBC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    result = memcpy((*(v5 + 48) + 136 * v20), __dst, 0x88uLL);
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C8D890F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  result = sub_1C906474C();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1C8D8D3E0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1C9064D7C();
    MEMORY[0x1CCA82810](v16);
    result = sub_1C9064DBC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C8D89340(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C906359C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v37 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  result = sub_1C906474C();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_30:

    *v2 = v11;
    return result;
  }

  v12 = 0;
  v13 = (v9 + 56);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 56);
  v17 = (v14 + 63) >> 6;
  v39 = (v3 + 32);
  v37 = v1;
  v38 = (v3 + 8);
  v18 = result + 56;
  v42 = v9;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    v36 = 1 << *(v9 + 32);
    if (v36 >= 64)
    {
      sub_1C8D8D3E0(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    v2 = v37;
    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = *(v44 + 72);
    v23 = v46;
    sub_1C8D6DFF0(*(v9 + 48) + v22 * (v19 | (v12 << 6)), v46);
    sub_1C9064D7C();
    v24 = v23;
    v25 = v43;
    sub_1C8D90EC8(v24, v43);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      MEMORY[0x1CCA82810](1);
      sub_1C9063FBC();
    }

    else
    {
      v26 = v40;
      v27 = v41;
      (*v39)(v40, v25, v41);
      MEMORY[0x1CCA82810](0);
      sub_1C8D90F38(&qword_1EC313960, MEMORY[0x1E69E0838], MEMORY[0x1E69E0840]);
      sub_1C9063E7C();
      (*v38)(v26, v27);
    }

    result = sub_1C9064DBC();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_1C8D6DFF0(v46, *(v11 + 48) + v31 * v22);
    ++*(v11 + 16);
    v9 = v42;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v18 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1C8D897C0()
{
  OUTLINED_FUNCTION_35_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  v3 = OUTLINED_FUNCTION_58_4(v2, v1);
  if (!*(v2 + 16))
  {
LABEL_28:

    *v0 = v3;
    return;
  }

  v35 = v0;
  v36 = v2;
  v4 = 0;
  v5 = (v2 + 56);
  OUTLINED_FUNCTION_7_17();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v3 + 56;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v13;
      if (v5[v4])
      {
        OUTLINED_FUNCTION_10_6();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_30_10();
    if (v30 != v31)
    {
      OUTLINED_FUNCTION_13_12();
      *v5 = v32;
    }

    else
    {
      v33 = OUTLINED_FUNCTION_27_8();
      sub_1C8D8D3E0(v33, v34, v5);
    }

    v0 = v35;
    *(v2 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = (*(v2 + 48) + 32 * (v12 | (v4 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_1C9064D7C();
    v37 = v18;
    sub_1C9063FBC();
    if (v20)
    {
      sub_1C9064D9C();
      v21 = v19;
      sub_1C9063FBC();
    }

    else
    {
      v21 = v19;
      sub_1C9064D9C();
    }

    sub_1C9064DBC();
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_41_0();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v11 + v26) |= v27;
    v29 = (*(v3 + 48) + 32 * v28);
    *v29 = v17;
    v29[1] = v37;
    v29[2] = v21;
    v29[3] = v20;
    ++*(v3 + 16);
    v2 = v36;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v11 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

unint64_t sub_1C8D899DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  result = sub_1C906474C();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v1;
    v29 = result;
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
    v30 = result + 56;
    v31 = v3;
    if (v10)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v36 = (v10 - 1) & v10;
LABEL_12:
        v15 = *(v3 + 48) + 104 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        v20 = *(v15 + 32);
        v35 = *(v15 + 56);
        *v43 = *(v15 + 57);
        *&v43[3] = *(v15 + 60);
        v39 = *(v15 + 64);
        v41 = *(v15 + 72);
        v42 = *(v15 + 48);
        v21 = *(v15 + 88);
        v33 = *(v15 + 40);
        v34 = *(v15 + 80);
        v37 = *(v15 + 96);
        sub_1C9064D7C();
        v38 = v17;
        sub_1C9063FBC();
        v40 = v19;
        v22 = *(v19 + 16);
        MEMORY[0x1CCA82810](v22);
        if (v22)
        {
          v23 = v40 + 40;
          do
          {

            sub_1C9063FBC();

            v23 += 16;
            --v22;
          }

          while (v22);
        }

        v32 = v20;
        sub_1C9063FBC();
        sub_1C9064D9C();
        if (v42)
        {
          v24 = v33;
          sub_1C9063FBC();
          v25 = v35;
        }

        else
        {
          v25 = v35;
          v24 = v33;
        }

        MEMORY[0x1CCA82810](v25);
        sub_1C9064D9C();
        if (v41)
        {
          sub_1C9063FBC();
        }

        v5 = v29;
        if (v21)
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          MEMORY[0x1CCA82810](0);
        }

        MEMORY[0x1CCA82810](v37);
        sub_1C9064DBC();
        result = sub_1C90646FC();
        *(v30 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v26 = *(v29 + 48) + 104 * result;
        *v26 = v16;
        *(v26 + 8) = v38;
        *(v26 + 16) = v40;
        *(v26 + 24) = v18;
        *(v26 + 32) = v32;
        *(v26 + 40) = v24;
        *(v26 + 48) = v42;
        *(v26 + 56) = v25;
        *(v26 + 57) = *v43;
        *(v26 + 60) = *&v43[3];
        *(v26 + 64) = v39;
        *(v26 + 72) = v41;
        *(v26 + 80) = v34;
        *(v26 + 88) = v21;
        *(v26 + 96) = v37;
        ++*(v29 + 16);
        v3 = v31;
        v10 = v36;
      }

      while (v36);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v36 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1C8D8D3E0(0, (v27 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v27;
    }

    *(v3 + 16) = 0;
    v2 = v28;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C8D89DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  result = sub_1C906474C();
  v5 = result;
  if (*(v3 + 16))
  {
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
    if (v10)
    {
LABEL_6:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          sub_1C8D8D3E0(0, (v30 + 63) >> 6, v3 + 56);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_37;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
LABEL_12:
        v16 = *(v3 + 48) + 16 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        sub_1C9064D7C();
        switch(v18 >> 5)
        {
          case 1u:
            v19 = 3;
            goto LABEL_20;
          case 2u:
            v20 = 4;
            goto LABEL_17;
          case 3u:
            v20 = 5;
LABEL_17:
            MEMORY[0x1CCA82810](v20);
            sub_1C8D3977C(__src, v17);
            sub_1C9064D9C();
            goto LABEL_21;
          case 4u:
            v19 = 6;
            goto LABEL_20;
          case 5u:
            v19 = 7;
            goto LABEL_20;
          case 6u:
            MEMORY[0x1CCA82810]((v17 | v18 ^ 0xC0) != 0);
            goto LABEL_21;
          default:
            v19 = 2;
LABEL_20:
            MEMORY[0x1CCA82810](v19);
            sub_1C8D3977C(__src, v17);
LABEL_21:
            result = sub_1C9064DBC();
            v21 = -1 << *(v5 + 32);
            v22 = result & ~v21;
            v23 = v22 >> 6;
            if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
            {
              v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v25 = 0;
              v26 = (63 - v21) >> 6;
              do
              {
                if (++v23 == v26 && (v25 & 1) != 0)
                {
                  goto LABEL_39;
                }

                v27 = v23 == v26;
                if (v23 == v26)
                {
                  v23 = 0;
                }

                v25 |= v27;
                v28 = *(v12 + 8 * v23);
              }

              while (v28 == -1);
              v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            }

            *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
            v29 = *(v5 + 48) + 16 * v24;
            *v29 = v17;
            *(v29 + 8) = v18;
            ++*(v5 + 16);
            if (!v10)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
        }
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_37:

    *v2 = v5;
  }

  return result;
}

void sub_1C8D8A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_184_0();
  a31 = v34;
  a32 = v35;
  v70 = v36;
  OUTLINED_FUNCTION_8_19(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_23_12();
  v42 = OUTLINED_FUNCTION_58_4(v40, v41);
  v43 = v42;
  if (!*(v33 + 16))
  {
LABEL_28:

    *v32 = v43;
    OUTLINED_FUNCTION_182();
    return;
  }

  v69 = v32;
  v44 = 0;
  v45 = (v33 + 56);
  v46 = 1 << *(v33 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v33 + 56);
  v49 = (v46 + 63) >> 6;
  v50 = v42 + 56;
  if (!v48)
  {
LABEL_7:
    v52 = v44;
    while (1)
    {
      v44 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v44 >= v49)
      {
        break;
      }

      ++v52;
      if (v45[v44])
      {
        OUTLINED_FUNCTION_10_6();
        v48 = v54 & v53;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_30_10();
    if (v64 != v65)
    {
      OUTLINED_FUNCTION_13_12();
      *v45 = v66;
    }

    else
    {
      v67 = OUTLINED_FUNCTION_27_8();
      sub_1C8D8D3E0(v67, v68, v33 + 56);
    }

    v32 = v69;
    *(v33 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_49_4();
LABEL_12:
    v55 = *(*(v33 + 48) + 8 * (v51 | (v44 << 6)));
    a20 = v55;
    sub_1C9064D7C();
    v70(&a11);
    v56 = sub_1C9064DBC() & ~(-1 << *(v43 + 32));
    if (((-1 << v56) & ~*(v50 + 8 * (v56 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v50 + v61) |= v62;
    *(*(v43 + 48) + 8 * v63) = v55;
    ++*(v43 + 16);
    if (!v48)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v60)
    {
      if (v58)
      {
        break;
      }
    }

    if (v57 == v59)
    {
      v57 = 0;
    }

    if (*(v50 + 8 * v57) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C8D8A26C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  result = sub_1C906474C();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1C8D8D3E0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1C9064D7C();
    sub_1C9063FBC();

    result = sub_1C9064DBC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C8D8A500(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_8_19(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_23_12();
  v8 = OUTLINED_FUNCTION_58_4(v6, v7);
  if (!v5[2])
  {
LABEL_25:
    v45 = v8;

    *v4 = v45;
    return;
  }

  v46 = v4;
  v47 = v5;
  v9 = 0;
  v10 = v5 + 7;
  OUTLINED_FUNCTION_7_17();
  v14 = (v13 + 63) >> 6;
  v16 = v15 + 56;
  if ((v12 & v11) == 0)
  {
LABEL_4:
    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v9 >= v14)
      {
        break;
      }

      ++v19;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_10_6();
        v49 = v21 & v20;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_30_10();
    if (v38 != v39)
    {
      OUTLINED_FUNCTION_13_12();
      *v10 = v40;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_27_8();
      v43 = v42;
      sub_1C8D8D3E0(v41, v44, v10);
      v8 = v43;
    }

    v4 = v46;
    v5[2] = 0;
    goto LABEL_25;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_16();
LABEL_9:
    v22 = v5[6] + (v17 | (v9 << 6)) * v18;
    v24 = *v22;
    v23 = *(v22 + 8);
    v26 = *(v22 + 16);
    v25 = *(v22 + 24);
    v27 = *(v22 + 32);
    v28 = sub_1C9064D7C();
    a4(v28);
    sub_1C9063FBC();

    sub_1C9064DBC();
    OUTLINED_FUNCTION_12_10();
    OUTLINED_FUNCTION_41_0();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_19:
    OUTLINED_FUNCTION_2_0();
    *(v16 + v33) |= v34;
    v37 = *(v35 + 48) + 40 * v36;
    *v37 = v24;
    *(v37 + 8) = v23;
    *(v37 + 16) = v26;
    *(v37 + 24) = v25;
    *(v37 + 32) = v27;
    ++*(v35 + 16);
    v5 = v47;
    if (!v49)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v16 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_19;
    }
  }

LABEL_27:
  __break(1u);
}

void sub_1C8D8A72C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_19(a1, a2, a3);
  v6 = OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_58_4(v6, v7);
  OUTLINED_FUNCTION_25_9();
  if (!v8)
  {
LABEL_28:

    *v3 = v4;
    return;
  }

  v9 = 0;
  v11 = (v5 + 56);
  v10 = *(v5 + 56);
  v12 = 1 << *(v5 + 32);
  v30 = v3;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v10;
  v15 = v4 + 56;
  if ((v13 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= ((v12 + 63) >> 6))
      {
        break;
      }

      ++v17;
      if (v11[v9])
      {
        OUTLINED_FUNCTION_10_6();
        v14 = v19 & v18;
        goto LABEL_12;
      }
    }

    if (v12 >= 64)
    {
      sub_1C8D8D3E0(0, (v12 + 63) >> 6, v5 + 56);
    }

    else
    {
      *v11 = -1 << v12;
    }

    v3 = v30;
    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_49_4();
LABEL_12:
    v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
    sub_1C9064D6C();
    OUTLINED_FUNCTION_51_5();
    if (((-1 << v22) & ~*(v15 + 8 * v21)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_2();
LABEL_22:
    OUTLINED_FUNCTION_2_0();
    *(v15 + v27) |= v28;
    *(*(v4 + 48) + 8 * v29) = v20;
    OUTLINED_FUNCTION_24_12();
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_4_0();
  while (1)
  {
    OUTLINED_FUNCTION_26_5();
    if (v26)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v15 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_3_5();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1C8D8A8BC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1C906204C();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  result = sub_1C906474C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1C8D8D3E0(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1C9063E6C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C8D8AC14(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v18 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8845C(v7 + 1);
      goto LABEL_8;
    }

    if (v8 <= v7)
    {
      sub_1C8D8E4D8(v7 + 1);
LABEL_8:
      v9 = *v3;
      v17[9] = v6;
      sub_1C9064D7C();
      TypeIdentifier.hash(into:)(v17);
      v10 = sub_1C9064DBC();
      v11 = ~(-1 << *(v9 + 32));
      while (1)
      {
        a2 = v10 & v11;
        if (((*(v9 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v17[0] = *(*(v9 + 48) + 8 * a2);

        v12 = static TypeIdentifier.== infix(_:_:)(v17, &v18);

        if (v12)
        {
          goto LABEL_16;
        }

        v10 = a2 + 1;
      }

      v6 = v18;
      goto LABEL_13;
    }

    sub_1C8D8D6BC(&qword_1EC313980, &unk_1C906F400);
  }

LABEL_13:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_16:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_1C8D8AD90(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C8D88C10(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C8D8ECC0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1C9064D7C();
      sub_1C9063FBC();
      v16 = sub_1C9064DBC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_1C9064C2C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_1C8D8D458();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_1C8D8AEF8(void *__src, unint64_t a2, char a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D88E6C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C8D8EEF4(v8 + 1);
LABEL_10:
      v15 = *v4;
      memcpy(v21, __src, sizeof(v21));
      sub_1C9064D7C();
      RestrictionContext.hash(into:)(v20);
      v16 = sub_1C9064DBC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = *(v15 + 48) + 136 * a2;
        memcpy(v20, v18, sizeof(v20));
        memcpy(v19, v18, sizeof(v19));
        sub_1C8D073F4(v20, v21);
        LOBYTE(v18) = static RestrictionContext.== infix(_:_:)();
        memcpy(v21, v19, sizeof(v21));
        sub_1C8D073A0(v21);
        if (v18)
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_1C8D8D534();
  }

LABEL_7:
  v10 = *v4;
  *(v10 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v10 + 48) + 136 * a2), __dst, 0x88uLL);
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_1C8D8B0C4(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D890F4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1C8D8F380(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_1C9064D7C();
      MEMORY[0x1CCA82810](v5);
      result = sub_1C9064DBC();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1C8D8D774();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_1C8D8B1FC(uint64_t a1, unint64_t a2, char a3)
{
  v43 = sub_1C906359C();
  v7 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314658, &qword_1C9074840);
  MEMORY[0x1EEE9AC00](v50);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v49 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v44 = v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v36[0] = v3;
  if (v19 <= v18 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D89340(v18 + 1);
    }

    else
    {
      if (v19 > v18)
      {
        sub_1C8D8D8B4();
        goto LABEL_25;
      }

      sub_1C8D8F59C(v18 + 1);
    }

    v20 = *v3;
    sub_1C9064D7C();
    sub_1C90364BC(v51);
    v21 = sub_1C9064DBC();
    v47 = v20 + 56;
    v48 = v20;
    v22 = -1 << *(v20 + 32);
    a2 = v21 & ~v22;
    v23 = v44;
    if ((*(v20 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v46 = ~v22;
      v37 = (v7 + 32);
      v45 = *(v38 + 72);
      v41 = (v7 + 8);
      v42 = a1;
      v36[1] = v11;
      do
      {
        sub_1C8D90EC8(*(v48 + 48) + v45 * a2, v17);
        v24 = &v10[*(v50 + 48)];
        sub_1C8D90EC8(v17, v10);
        sub_1C8D90EC8(a1, v24);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1C8D90EC8(v10, v49);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            if (*v49 == *v24 && v49[1] == *(v24 + 1))
            {
              goto LABEL_28;
            }

            v26 = sub_1C9064C2C();

            sub_1C8D14208(v17, &qword_1EC312DD0, &qword_1C9072940);

            if (v26)
            {
              goto LABEL_29;
            }

            goto LABEL_23;
          }

          sub_1C8D14208(v17, &qword_1EC312DD0, &qword_1C9072940);
        }

        else
        {
          sub_1C8D90EC8(v10, v23);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v27 = v39;
            v28 = v43;
            (*v37)(v39, v24, v43);
            sub_1C8D90F38(&qword_1EC314660, MEMORY[0x1E69E0838], MEMORY[0x1E69E0848]);
            v40 = sub_1C9063EAC();
            v29 = *v41;
            v30 = v44;
            (*v41)(v27, v28);
            sub_1C8D14208(v17, &qword_1EC312DD0, &qword_1C9072940);
            v23 = v30;
            v29(v30, v28);
            if (v40)
            {
              goto LABEL_29;
            }

LABEL_23:
            sub_1C8D14208(v10, &qword_1EC312DD0, &qword_1C9072940);
            a1 = v42;
            goto LABEL_24;
          }

          sub_1C8D14208(v17, &qword_1EC312DD0, &qword_1C9072940);
          (*v41)(v23, v43);
        }

        sub_1C8D14208(v10, &qword_1EC314658, &qword_1C9074840);
LABEL_24:
        a2 = (a2 + 1) & v46;
      }

      while (((*(v47 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v31 = *v36[0];
  *(*v36[0] + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1C8D6DFF0(a1, *(v31 + 48) + *(v38 + 72) * a2);
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_28:

    sub_1C8D14208(v17, &qword_1EC312DD0, &qword_1C9072940);

LABEL_29:
    sub_1C8D14208(v10, &qword_1EC312DD0, &qword_1C9072940);
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

void sub_1C8D8B7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_1C8D897C0();
    }

    else
    {
      if (v13 > v12)
      {
        sub_1C8D8DA9C();
        goto LABEL_27;
      }

      sub_1C8D8F9F4(v12 + 1);
    }

    v14 = *v6;
    sub_1C9064D7C();
    sub_1C9063FBC();
    sub_1C9064D9C();
    if (a4)
    {
      sub_1C9063FBC();
    }

    sub_1C9064DBC();
    v15 = v14 + 56;
    OUTLINED_FUNCTION_13_12();
    a5 = v17 & ~v16;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v18 = ~v16;
      v19 = *(v14 + 48);
      do
      {
        v20 = (v19 + 32 * a5);
        v22 = v20[2];
        v21 = v20[3];
        v23 = *v20 == a1 && v20[1] == a2;
        if (v23 || (sub_1C9064C2C() & 1) != 0)
        {
          if (v21)
          {
            if (a4)
            {
              v24 = v22 == a3 && v21 == a4;
              if (v24 || (sub_1C9064C2C() & 1) != 0)
              {
                goto LABEL_30;
              }
            }
          }

          else if (!a4)
          {
            goto LABEL_30;
          }
        }

        a5 = (a5 + 1) & v18;
      }

      while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_45_9();
  v27 = (v26 + 32 * a5);
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;
  v27[3] = a4;
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3140A8, &qword_1C9072948);
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }
}

void *sub_1C8D8B9B0(uint64_t *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D899DC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1C8D8DBA0();
        goto LABEL_66;
      }

      sub_1C8D8FC14(v6 + 1);
    }

    v8 = *v3;
    memcpy(__dst, a1, 0x61uLL);
    sub_1C9064D7C();
    ContainerDefinition.hash(into:)(v44);
    v9 = sub_1C9064DBC();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v37 = *(a1 + 56);
      v33 = *(a1 + 96);
      v12 = *a1;
      v13 = a1[1];
      v14 = a1[2];
      v42 = a1[4];
      v43 = a1[3];
      v41 = a1[6];
      v35 = a1[8];
      v36 = a1[9];
      v38 = a1[5];
      v32 = a1[10];
      v34 = a1[11];
      do
      {
        memcpy(__dst, (*(v8 + 48) + 104 * a2), 0x61uLL);
        v15 = __dst[0] == v12 && __dst[1] == v13;
        if (v15 || (sub_1C9064C2C() & 1) != 0)
        {
          v16 = *(__dst[2] + 16);
          if (v16 == *(v14 + 16))
          {
            if (v16)
            {
              v17 = __dst[2] == v14;
            }

            else
            {
              v17 = 1;
            }

            if (!v17)
            {
              v18 = (__dst[2] + 40);
              v19 = (v14 + 40);
              while (v16)
              {
                v20 = *(v18 - 1) == *(v19 - 1) && *v18 == *v19;
                if (!v20 && (sub_1C9064C2C() & 1) == 0)
                {
                  goto LABEL_65;
                }

                v18 += 2;
                v19 += 2;
                if (!--v16)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_69;
            }

LABEL_28:
            v21 = __dst[3] == v43 && __dst[4] == v42;
            if (v21 || (sub_1C9064C2C() & 1) != 0)
            {
              if (__dst[6])
              {
                if (!v41)
                {
                  goto LABEL_65;
                }

                v22 = __dst[5] == v38 && __dst[6] == v41;
                if (!v22 && (sub_1C9064C2C() & 1) == 0)
                {
                  goto LABEL_65;
                }
              }

              else if (v41)
              {
                goto LABEL_65;
              }

              if (LOBYTE(__dst[7]) == v37)
              {
                if (__dst[9])
                {
                  if (!v36)
                  {
                    goto LABEL_65;
                  }

                  v23 = __dst[8] == v35 && __dst[9] == v36;
                  if (!v23 && (sub_1C9064C2C() & 1) == 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (v36)
                {
                  goto LABEL_65;
                }

                if (!__dst[11])
                {
                  if (!v34)
                  {
                    sub_1C8CC1340(__dst, v44);
                    swift_bridgeObjectRelease_n();
LABEL_64:
                    v26 = LOBYTE(__dst[12]);
                    sub_1C8CC15FC(__dst);
                    if (v26 == v33)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_65;
                  }

LABEL_61:

                  goto LABEL_65;
                }

                if (!v34)
                {
                  goto LABEL_61;
                }

                if (__dst[10] == v32 && __dst[11] == v34)
                {
                  sub_1C8CC1340(__dst, v44);
                  goto LABEL_64;
                }

                v25 = sub_1C9064C2C();
                sub_1C8CC1340(__dst, v44);
                if (v25)
                {
                  goto LABEL_64;
                }

                sub_1C8CC15FC(__dst);
              }
            }
          }
        }

LABEL_65:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_66:
  v27 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v27 + 48) + 104 * a2), a1, 0x61uLL);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

uint64_t sub_1C8D8BD54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v9 = result;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C8D89DAC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1C8D8DD28();
        goto LABEL_45;
      }

      sub_1C8D8FF14(v10 + 1);
    }

    v12 = *v4;
    v76 = v9;
    LOBYTE(v77) = a2;
    sub_1C9064D7C();
    ParameterRelationshipDefinition.Relation.hash(into:)(&v67);
    result = sub_1C9064DBC();
    v17 = -1 << *(v12 + 32);
    a3 = result & ~v17;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v18 = ~v17;
      v19 = a2 & 0xE0;
      v20 = a2 != 192 || v9 != 1;
      v21 = a2 != 192 || v9 != 0;
      v22 = v19 != 192 || v20;
      v23 = v19 != 192 || v21;
      v65 = __PAIR64__(v22, v23);
      v64 = 1;
      while (2)
      {
        v24 = *(v12 + 48) + 16 * a3;
        v6 = *v24;
        v5 = *(v24 + 8);
        switch(v5 >> 5)
        {
          case 1u:
            if ((a2 & 0xE0) != 0x20)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 2u:
            if ((a2 & 0xE0) != 0x40)
            {
              goto LABEL_37;
            }

            goto LABEL_30;
          case 3u:
            if ((a2 & 0xE0) != 0x60)
            {
              goto LABEL_37;
            }

LABEL_30:
            sub_1C8D07154(v6, v5, v13, v14, v15, v16);
            sub_1C8D07154(v9, a2, v25, v26, v27, v28);
            sub_1C8D07154(v6, v5, v29, v30, v31, v32);
            sub_1C8D2A4D8(v6, v9, v33, v34, v35, v36, v37, v38, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
            v40 = v39;
            sub_1C8D07168(v6, v5);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
            if ((v40 & 1) != 0 && ((v5 ^ a2) & 1) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_44;
          case 4u:
            if ((a2 & 0xE0) != 0x80)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 5u:
            if ((a2 & 0xE0) != 0xA0)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          case 6u:
            if (v6 | v5 ^ 0xC0)
            {
              if ((v65 & 0x100000000) == 0)
              {
                goto LABEL_49;
              }
            }

            else if ((v65 & 1) == 0)
            {
              goto LABEL_48;
            }

            v57 = v9;
            v58 = a2;
LABEL_43:
            sub_1C8D07154(v57, v58, v13, v14, v15, v16);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
LABEL_44:
            a3 = (a3 + 1) & v18;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
          default:
            if (a2 >= 0x20u)
            {
LABEL_37:
              sub_1C8D07154(v9, a2, v13, v14, v15, v16);
              v57 = v6;
              v58 = v5;
              goto LABEL_43;
            }

LABEL_34:
            sub_1C8D07154(v6, v5, v13, v14, v15, v16);
            sub_1C8D07154(v9, a2, v41, v42, v43, v44);
            sub_1C8D07154(v6, v5, v45, v46, v47, v48);
            sub_1C8D2A4D8(v6, v9, v49, v50, v51, v52, v53, v54, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
            v56 = v55;
            sub_1C8D07168(v6, v5);
            sub_1C8D07168(v6, v5);
            result = sub_1C8D07168(v9, a2);
            if (v56)
            {
              goto LABEL_50;
            }

            goto LABEL_44;
        }

        break;
      }
    }
  }

LABEL_45:
  v59 = *v66;
  *(*v66 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v60 = *(v59 + 48) + 16 * a3;
  *v60 = v9;
  *(v60 + 8) = a2;
  v61 = *(v59 + 16);
  v62 = __OFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
    __break(1u);
LABEL_48:
    v64 = 0;
LABEL_49:
    sub_1C8D07168(v6, v5);
    sub_1C8D07168(v64, 0xC0u);
LABEL_50:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v59 + 16) = v63;
  }

  return result;
}

void sub_1C8D8C248(uint64_t *result, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A500(v7 + 1, &qword_1EC314610, &qword_1C9074810, SystemTypeProtocol.Identifier.rawValue.getter);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1C8D8E0B8(&qword_1EC314610, &qword_1C9074810);
        goto LABEL_137;
      }

      sub_1C8D9068C(v7 + 1, &qword_1EC314610, &qword_1C9074810, SystemTypeProtocol.Identifier.rawValue.getter);
    }

    v9 = *v3;
    v10 = sub_1C8D31238(*(*v3 + 40));
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = *(v9 + 48) + 40 * a2;
        v14 = *v13;
        v4 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 + 24);
        v17 = *(v13 + 32);
        v52 = a2;
        v53 = v14;
        v49 = v17;
        if (!v17)
        {
          v54 = 0x80000001C90CA380;

          MEMORY[0x1CCA81A90](v14, v4);
          goto LABEL_14;
        }

        if (v17 == 1)
        {
          v54 = 0x80000001C90CA360;

          MEMORY[0x1CCA81A90](v15, v16);

          MEMORY[0x1CCA81A90](46, 0xE100000000000000);

          MEMORY[0x1CCA81A90](v14, v4);

LABEL_14:
          v18 = 0xD000000000000010;
          v19 = v54;
          goto LABEL_15;
        }

        if (!(v15 | v4 | v14 | v16))
        {
          v19 = 0xE700000000000000;
          v18 = 0x6E776F6E6B6E75;
          goto LABEL_15;
        }

        v28 = v15 | v4 | v16;
        v29 = v14 == 1 && v28 == 0;
        v18 = 0x6F6363416C69616DLL;
        v19 = 0xEB00000000746E75;
        if (!v29)
        {
          v30 = v53 == 2 && v28 == 0;
          v18 = 0x726464416C69616DLL;
          v19 = 0xED00006565737365;
          if (!v30)
          {
            v31 = v53 == 3 && v28 == 0;
            v18 = 0x7373654D6C69616DLL;
            v19 = 0xEB00000000656761;
            if (!v31)
            {
              if (v53 == 4 && v28 == 0)
              {
                v19 = 0xE700000000000000;
                v18 = 0x786F626C69616DLL;
                goto LABEL_15;
              }

              if (v53 == 5 && v28 == 0)
              {
                v18 = 0x654D746E65746E69;
                v38 = 0x6567617373;
LABEL_77:
                v19 = v38 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                goto LABEL_15;
              }

              if (v53 == 6 && v28 == 0)
              {
                v18 = 0x476567617373656DLL;
                v39 = 1886744434;
LABEL_82:
                v19 = v39 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_15;
              }

              if (v53 == 7 && !v28)
              {
                v18 = 0xD000000000000012;
                v19 = 0x80000001C90CA340;
                goto LABEL_15;
              }

              if (v53 != 8 || v28)
              {
                if (v53 == 9 && !v28)
                {
                  v18 = 0x6E45657571696E75;
                  v39 = 2037672308;
                  goto LABEL_82;
                }

                if (v53 != 10 || v28)
                {
                  if (v53 == 11 && !v28)
                  {
                    v18 = 0x4564657865646E69;
                    v38 = 0x797469746ELL;
                    goto LABEL_77;
                  }

                  if (v53 != 12 || v28)
                  {
                    if (v53 != 13 || (v18 = 0xD000000000000010, v19 = 0x80000001C90CA300, v28))
                    {
                      if (v53 != 14 || v28)
                      {
                        if (v28)
                        {
                          v41 = 0;
                        }

                        else
                        {
                          v41 = v53 == 15;
                        }

                        if (v41)
                        {
                          v19 = 0xEC00000068637261;
                        }

                        else
                        {
                          v19 = 0xEF52434F68637261;
                        }

                        v18 = 0x65536C6175736976;
                      }

                      else
                      {
                        v18 = 0xD00000000000001ALL;
                        v19 = 0x80000001C90CA2E0;
                      }
                    }
                  }

                  else
                  {
                    v18 = 0xD000000000000015;
                    v19 = 0x80000001C90CA320;
                  }
                }

                else
                {
                  v18 = 0x6C62617461647075;
                  v19 = 0xEF797469746E4565;
                }
              }

              else
              {
                v19 = 0xEF797469746E4574;
                v18 = 0x6E6569736E617274;
              }
            }
          }
        }

LABEL_15:
        v50 = v16;
        v51 = v15;
        v20 = *result;
        v21 = result[1];
        if (!*(result + 32))
        {
          v55 = 0x80000001C90CA380;
          MEMORY[0x1CCA81A90](v20, v21);
          goto LABEL_19;
        }

        v22 = result[2];
        v23 = result[3];
        if (*(result + 32) == 1)
        {
          v55 = 0x80000001C90CA360;
          MEMORY[0x1CCA81A90](v22, v23);

          MEMORY[0x1CCA81A90](46, 0xE100000000000000);

          MEMORY[0x1CCA81A90](v20, v21);

LABEL_19:
          v24 = 0xD000000000000010;
          v25 = v55;
          goto LABEL_20;
        }

        if (v22 | v21 | v20 | v23)
        {
          v35 = v22 | v21 | v23;
          if (v20 == 1)
          {
            v24 = 0x6F6363416C69616DLL;
            v25 = 0xEB00000000746E75;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 == 2)
          {
            v24 = 0x726464416C69616DLL;
            v25 = 0xED00006565737365;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 == 3)
          {
            v24 = 0x7373654D6C69616DLL;
            v25 = 0xEB00000000656761;
            if (!v35)
            {
              goto LABEL_20;
            }
          }

          if (v20 != 4 || v35)
          {
            if (v20 != 5 || v35)
            {
              if (v20 == 6 && !v35)
              {
                v24 = 0x476567617373656DLL;
                v37 = 1886744434;
LABEL_75:
                v25 = v37 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                goto LABEL_20;
              }

              if (v20 == 7 && !v35)
              {
                v24 = 0xD000000000000012;
                v25 = 0x80000001C90CA340;
                goto LABEL_20;
              }

              if (v20 == 8 && !v35)
              {
                v25 = 0xEF797469746E4574;
                v24 = 0x6E6569736E617274;
                goto LABEL_20;
              }

              if (v20 == 9 && !v35)
              {
                v24 = 0x6E45657571696E75;
                v37 = 2037672308;
                goto LABEL_75;
              }

              if (v20 == 10 && !v35)
              {
                v24 = 0x6C62617461647075;
                v25 = 0xEF797469746E4565;
                goto LABEL_20;
              }

              if (v20 != 11 || v35)
              {
                if (v20 != 12 || v35)
                {
                  if (v20 != 13 || (v24 = 0xD000000000000010, v25 = 0x80000001C90CA300, v35))
                  {
                    if (v20 != 14 || v35)
                    {
                      if (v35)
                      {
                        v40 = 0;
                      }

                      else
                      {
                        v40 = v20 == 15;
                      }

                      if (v40)
                      {
                        v25 = 0xEC00000068637261;
                      }

                      else
                      {
                        v25 = 0xEF52434F68637261;
                      }

                      v24 = 0x65536C6175736976;
                    }

                    else
                    {
                      v24 = 0xD00000000000001ALL;
                      v25 = 0x80000001C90CA2E0;
                    }
                  }
                }

                else
                {
                  v24 = 0xD000000000000015;
                  v25 = 0x80000001C90CA320;
                }

                goto LABEL_20;
              }

              v24 = 0x4564657865646E69;
              v36 = 0x797469746ELL;
            }

            else
            {
              v24 = 0x654D746E65746E69;
              v36 = 0x6567617373;
            }

            v25 = v36 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          }

          else
          {
            v25 = 0xE700000000000000;
            v24 = 0x786F626C69616DLL;
          }
        }

        else
        {
          v25 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
        }

LABEL_20:
        if (v18 == v24 && v19 == v25)
        {
          goto LABEL_140;
        }

        v27 = sub_1C9064C2C();
        sub_1C8D3ED20(v53, v4, v51, v50, v49);

        if (v27)
        {
          goto LABEL_141;
        }

        a2 = (v52 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_137:
  v42 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v43 = *(v42 + 48) + 40 * a2;
  v44 = *(result + 1);
  *v43 = *result;
  *(v43 + 16) = v44;
  *(v43 + 32) = *(result + 32);
  v45 = *(v42 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_140:
    sub_1C8D3ED20(v53, v4, v51, v50, v49);

LABEL_141:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v47;
  }
}

uint64_t sub_1C8D8CBBC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1C8D8A26C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1C8D8DF64();
      goto LABEL_27;
    }

    sub_1C8D90428(v6 + 1);
  }

  v8 = *v3;
  result = sub_1C8D30F0C(*(*v3 + 40));
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 0x65676175676E616CLL;
    }

    else
    {
      v11 = 0x79616C70736964;
    }

    if (v5)
    {
      v12 = 0xED00006C65646F4DLL;
    }

    else
    {
      v12 = 0xE700000000000000;
    }

    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x65676175676E616CLL : 0x79616C70736964;
      v14 = *(*(v8 + 48) + a2) ? 0xED00006C65646F4DLL : 0xE700000000000000;
      if (v13 == v11 && v14 == v12)
      {
        goto LABEL_30;
      }

      v16 = sub_1C9064C2C();

      if (v16)
      {
        goto LABEL_31;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_30:

LABEL_31:
  result = sub_1C9064CAC();
  __break(1u);
  return result;
}

void sub_1C8D8CDBC(uint64_t result, unint64_t a2, char a3)
{
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v13 = v31;
      sub_1C8D8A500(v11 + 1, &qword_1EC314600, &qword_1C9074800, SystemToolProtocol.Identifier.rawValue.getter);
      goto LABEL_10;
    }

    if (v12 <= v11)
    {
      v13 = v31;
      sub_1C8D9068C(v11 + 1, &qword_1EC314600, &qword_1C9074800, SystemToolProtocol.Identifier.rawValue.getter);
LABEL_10:
      v20 = *v13;
      v21 = sub_1C8D307DC(*(*v13 + 40));
      v32 = v20;
      v33 = ~(-1 << *(v20 + 32));
      v34 = v20 + 56;
      while (1)
      {
        a2 = v21 & v33;
        if (((*(v34 + (((v21 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v33)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v22 = *(v32 + 48) + 40 * a2;
        v4 = *v22;
        v5 = *(v22 + 8);
        v6 = *(v22 + 16);
        v7 = *(v22 + 24);
        v8 = *(v22 + 32);
        sub_1C8D54590(*v22, v5, v6, v7, v8);
        SystemToolProtocol.Identifier.rawValue.getter();
        v24 = v23;
        v26 = v25;
        SystemToolProtocol.Identifier.rawValue.getter();
        if (v24 == v28 && v26 == v27)
        {
          goto LABEL_19;
        }

        v30 = sub_1C9064C2C();
        sub_1C8D3ED20(v4, v5, v6, v7, v8);

        if (v30)
        {
          goto LABEL_20;
        }

        v21 = a2 + 1;
      }
    }

    sub_1C8D8E0B8(&qword_1EC314600, &qword_1C9074800);
  }

LABEL_7:
  v14 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_19:
    sub_1C8D3ED20(v4, v5, v6, v7, v8);

LABEL_20:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }
}

void sub_1C8D8D044(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A72C(v9 + 1, a4, a5);
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      sub_1C8D90894();
LABEL_10:
      v16 = *v6;
      sub_1C9064D6C();
      OUTLINED_FUNCTION_32_5();
      while (1)
      {
        a2 = v17 & v19;
        if (((*(v18 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v16 + 48) + 8 * a2) == a1)
        {
          goto LABEL_15;
        }

        v17 = a2 + 1;
      }
    }

    sub_1C8D8E1AC(a4, a5);
  }

LABEL_7:
  OUTLINED_FUNCTION_45_9();
  *(v12 + 8 * a2) = a1;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
  }
}

uint64_t sub_1C8D8D154(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1C906204C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C8D8A8BC(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1C8D909E4(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1C8D90F38(&qword_1EDA666F0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v14 = sub_1C9063E6C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1C8D90F38(&qword_1EC314618, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v16 = sub_1C9063EAC();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1C8D8E2A4();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1C9064CAC();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_1C8D8D3E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C90747F0;
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

void sub_1C8D8D458()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_35();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_37_10(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v3)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      v16 = v11 | (v10 << 6);
      v17 = (*(v1 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = (v0[6] + 16 * v16);
      *v19 = *v17;
      v19[1] = v18;
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v13)
      {
        OUTLINED_FUNCTION_10_6();
        v3 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8D534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  v2 = *v0;
  v3 = sub_1C906473C();
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
        v18 = 17 * v17;
        v19 = (*(v2 + 48) + 136 * v17);
        memcpy(__dst, v19, sizeof(__dst));
        memmove((*(v4 + 48) + 8 * v18), v19, 0x88uLL);
        result = sub_1C8D073F4(__dst, &v20);
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

void sub_1C8D8D6BC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_35();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_37_10(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v4)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      OUTLINED_FUNCTION_36_8(v12);
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v14)
      {
        OUTLINED_FUNCTION_10_6();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C8D8D774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  v2 = *v0;
  v3 = sub_1C906473C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1C8D8D8B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  v6 = *v0;
  v7 = sub_1C906473C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1C8D90EC8(*(v6 + 48) + v21, v5);
        result = sub_1C8D6DFF0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_1C8D8DA9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_35();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_37_10(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_31();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = v15 | (v9 << 6);
        v20 = (*(v1 + 48) + 32 * v19);
        v21 = v20[1];
        v23 = v20[2];
        v22 = v20[3];
        v24 = (v0[6] + 32 * v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v23;
        v24[3] = v22;
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_10_6();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8DBA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  v2 = *v0;
  v3 = sub_1C906473C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1C8CC1340(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = *(v2 + 48);
      v17 = 104 * (v13 | (v8 << 6));
      memcpy(__dst, (v16 + v17), 0x61uLL);
      memmove((*(v4 + 48) + v17), (v16 + v17), 0x61uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1C8D8DD28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  v2 = *v0;
  v3 = sub_1C906473C();
  v8 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v2 || result >= v2 + 56 + 8 * v10)
    {
      result = memmove(result, (v2 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v2 + 16);
    v13 = 1 << *(v2 + 32);
    v14 = *(v2 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(v2 + 48) + 16 * v21;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v8 + 48) + 16 * v21;
        *v25 = *v22;
        *(v25 + 8) = v24;
        result = sub_1C8D07154(v23, v24, v4, v5, v6, v7);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v2 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_1C8D8DE88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314640, &qword_1C9074830);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_35();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_37_10(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v2)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      OUTLINED_FUNCTION_36_8(v10);
    }

    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v9 >= v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v12)
      {
        OUTLINED_FUNCTION_10_6();
        v2 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void *sub_1C8D8DF64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  v2 = *v0;
  v3 = sub_1C906473C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1C8D8E0B8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_0_35();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      OUTLINED_FUNCTION_37_10(v7, v8);
    }

    v12 = 0;
    OUTLINED_FUNCTION_1_31();
    OUTLINED_FUNCTION_18_9();
    while (v5)
    {
      OUTLINED_FUNCTION_22();
LABEL_15:
      v18 = 5 * (v13 | (v12 << 6));
      v19 = *(v3 + 48) + 8 * v18;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = v2[6] + 8 * v18;
      v25 = *(v19 + 32);
      *v24 = *v19;
      *(v24 + 8) = v21;
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *(v24 + 32) = v25;
      sub_1C8D54590(v20, v21, v22, v23, v25);
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v4)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_52_5();
      if (v15)
      {
        OUTLINED_FUNCTION_10_6();
        v5 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void *sub_1C8D8E1AC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_25_9();
  if (v5)
  {
    result = OUTLINED_FUNCTION_0_35();
    if (v9)
    {
      v10 = result >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      result = OUTLINED_FUNCTION_37_10(result, v7);
    }

    v11 = 0;
    v2[2] = *(v3 + 16);
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 56);
    for (i = (v12 + 63) >> 6; v14; *(v2[6] + 8 * v17) = *(*(v3 + 48) + 8 * v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v4 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v2;
  }

  return result;
}

void *sub_1C8D8E2A4()
{
  v1 = v0;
  v2 = sub_1C906204C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314620, &qword_1C9074818);
  v6 = *v0;
  v7 = sub_1C906473C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1C8D8E4D8(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313980, &unk_1C906F400);
  result = sub_1C906474C();
  v4 = result;
  v43 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = v43 + 56;
    v7 = 1 << *(v43 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v43 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v41 = v10;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v42 = (v9 - 1) & v9;
LABEL_12:
        v15 = *(*(v43 + 48) + 8 * (v12 | (v5 << 6)));
        sub_1C9064D7C();
        switch(v15 >> 61)
        {
          case 1uLL:
            v22 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            MEMORY[0x1CCA82810](1);
            switch(v22)
            {
              case 0:
LABEL_23:
                v23 = 0;
                goto LABEL_56;
              case 1:
LABEL_41:
                v23 = 1;
                goto LABEL_56;
              case 2:
LABEL_47:
                v23 = 2;
                goto LABEL_56;
              case 3:
LABEL_49:
                v23 = 3;
                goto LABEL_56;
              case 4:
LABEL_44:
                v23 = 4;
                goto LABEL_56;
              case 5:
LABEL_51:
                v23 = 5;
                goto LABEL_56;
              case 6:
LABEL_53:
                v23 = 6;
                goto LABEL_56;
              case 7:
LABEL_50:
                v23 = 7;
                goto LABEL_56;
              case 8:
LABEL_55:
                v23 = 8;
                goto LABEL_56;
              case 9:
LABEL_46:
                v23 = 9;
                goto LABEL_56;
              case 10:
LABEL_54:
                v23 = 10;
                goto LABEL_56;
              case 11:
LABEL_43:
                v23 = 11;
                goto LABEL_56;
              case 12:
LABEL_45:
                v23 = 12;
                goto LABEL_56;
              case 13:
LABEL_52:
                v23 = 13;
                goto LABEL_56;
              case 14:
LABEL_42:
                v23 = 14;
                goto LABEL_56;
              case 15:
LABEL_48:
                v23 = 16;
LABEL_56:
                MEMORY[0x1CCA82810](v23);
LABEL_57:

                break;
              default:
                v25 = *(v22 + 16);
                MEMORY[0x1CCA82810](15);
                switch(v25 >> 61)
                {
                  case 1uLL:
                    v29 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    MEMORY[0x1CCA82810](1);
                    switch(v29)
                    {
                      case 0:
                        goto LABEL_23;
                      case 1:
                        goto LABEL_41;
                      case 2:
                        goto LABEL_47;
                      case 3:
                        goto LABEL_49;
                      case 4:
                        goto LABEL_44;
                      case 5:
                        goto LABEL_51;
                      case 6:
                        goto LABEL_53;
                      case 7:
                        goto LABEL_50;
                      case 8:
                        goto LABEL_55;
                      case 9:
                        goto LABEL_46;
                      case 10:
                        goto LABEL_54;
                      case 11:
                        goto LABEL_43;
                      case 12:
                        goto LABEL_45;
                      case 13:
                        goto LABEL_52;
                      case 14:
                        goto LABEL_42;
                      case 15:
                        goto LABEL_48;
                      default:
                        v38 = *(v29 + 16);
                        MEMORY[0x1CCA82810](15);
                        __dst[0] = v38;

                        TypeIdentifier.hash(into:)(v48);
                        break;
                    }

                    goto LABEL_58;
                  case 2uLL:
                    MEMORY[0x1CCA82810](2);

                    sub_1C9063FBC();
                    goto LABEL_37;
                  case 3uLL:
                    v39 = v6;
                    memcpy(__dst, ((v25 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x61uLL);
                    v27 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x78);
                    v28 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
                    memcpy(__src, ((v25 & 0x1FFFFFFFFFFFFFFFLL) + 136), 0x51uLL);
                    MEMORY[0x1CCA82810](3);

                    ContainerDefinition.hash(into:)(v48);
                    if (v28)
                    {
                      v46[0] = v27;
                      v46[1] = v28;
                      memcpy(&v46[2], __src, 0x51uLL);
                      memcpy(v45, v46, 0x61uLL);
                      sub_1C9064D9C();
                      sub_1C8CC1340(v46, __dst);
                      ContainerDefinition.hash(into:)(v48);
                      memcpy(__dst, v45, 0x61uLL);
                      sub_1C8CC15FC(__dst);
                    }

                    else
                    {
                      sub_1C9064D9C();
                    }

                    v6 = v39;
                    v17 = v15;
                    sub_1C9063FBC();
                    v10 = v41;
                    goto LABEL_59;
                  case 4uLL:
                    MEMORY[0x1CCA82810](4);

LABEL_37:
                    sub_1C9063FBC();
                    break;
                  default:
                    v26 = *(v25 + 16);
                    MEMORY[0x1CCA82810](0);
                    LOBYTE(__dst[0]) = v26;
                    TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
                    goto LABEL_57;
                }

                break;
            }

LABEL_58:
            v17 = v15;
            v10 = v41;
            break;
          case 2uLL:
            MEMORY[0x1CCA82810](2);
            v17 = v15;

            v10 = v41;
            sub_1C9063FBC();
            goto LABEL_16;
          case 3uLL:
            memcpy(__dst, ((v15 & 0x1FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
            MEMORY[0x1CCA82810](3);
            v18 = __dst[2];

            sub_1C8D3EFB8(__dst, v46);
            sub_1C9063FBC();
            v19 = *(v18 + 16);
            MEMORY[0x1CCA82810](v19);
            if (v19)
            {
              v20 = v18 + 40;
              do
              {

                sub_1C9063FBC();

                v20 += 16;
                --v19;
              }

              while (v19);
            }

            v21 = __dst[6];
            sub_1C9063FBC();
            sub_1C9064D9C();
            if (v21)
            {
              sub_1C9063FBC();
            }

            v24 = __dst[9];
            MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
            sub_1C9064D9C();
            if (v24)
            {
              sub_1C9063FBC();
            }

            if (__dst[11])
            {
              MEMORY[0x1CCA82810](1);
              sub_1C9063FBC();
            }

            else
            {
              MEMORY[0x1CCA82810](0);
            }

            v10 = v41;
            MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
            if (__dst[14])
            {
              memcpy(__src, &__dst[13], sizeof(__src));
              sub_1C9064D9C();
              memcpy(v45, &__dst[13], 0x61uLL);
              sub_1C8CC1340(v45, v46);
              ContainerDefinition.hash(into:)(v48);
              memcpy(v46, __src, 0x61uLL);
              sub_1C8CC15FC(v46);
            }

            else
            {
              sub_1C9064D9C();
            }

            v17 = v15;
            sub_1C9063FBC();
            sub_1C8D3F014(__dst);
            break;
          case 4uLL:
            MEMORY[0x1CCA82810](4);
            v17 = v15;

            v10 = v41;
LABEL_16:
            sub_1C9063FBC();
            break;
          default:
            v16 = *(v15 + 16);
            MEMORY[0x1CCA82810](0);
            LOBYTE(__dst[0]) = v16;
            v17 = v15;
            TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();

            break;
        }

LABEL_59:
        result = sub_1C9064DBC();
        v30 = -1 << *(v4 + 32);
        v31 = result & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(v11 + 8 * (v31 >> 6))) == 0)
        {
          break;
        }

        v33 = __clz(__rbit64((-1 << v31) & ~*(v11 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_68:
        *(v11 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        *(*(v4 + 48) + 8 * v33) = v17;
        ++*(v4 + 16);
        v9 = v42;
        if (!v42)
        {
          goto LABEL_7;
        }
      }

      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v11 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_68;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {
          goto LABEL_73;
        }

        v14 = *(v6 + 8 * v5);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v42 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_73:

    *v40 = v4;
  }

  return result;
}

uint64_t sub_1C8D8ECC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314630, &qword_1C9074820);
  result = sub_1C906474C();
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
        sub_1C9064D7C();

        sub_1C9063FBC();
        result = sub_1C9064DBC();
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

uint64_t sub_1C8D8EEF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314680, &qword_1C9074860);
  result = sub_1C906474C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
        v15 = (*(v3 + 48) + 136 * (v12 | (v6 << 6)));
        memcpy(__dst, v15, 0x88uLL);
        memcpy(v27, v15, sizeof(v27));
        sub_1C9064D7C();
        sub_1C8D073F4(__dst, v25);
        RestrictionContext.hash(into:)(v26);
        result = sub_1C9064DBC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        result = memcpy((*(v5 + 48) + 136 * v19), __dst, 0x88uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

          v2 = v24;
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

uint64_t sub_1C8D8F158(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313978, &qword_1C906F3F8);
  result = sub_1C906474C();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1C9064D7C();

        TypeInstance.hash(into:)();
        result = sub_1C9064DBC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_1C8D8F380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314678, &qword_1C9074858);
  result = sub_1C906474C();
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C9064D7C();
        MEMORY[0x1CCA82810](v15);
        result = sub_1C9064DBC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_1C8D8F59C(uint64_t a1)
{
  v2 = v1;
  v39 = sub_1C906359C();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312DD0, &qword_1C9072940);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v35 - v8;
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314668, &qword_1C9074848);
  result = sub_1C906474C();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = (v3 + 32);
    v35 = v1;
    v36 = (v3 + 8);
    v18 = result + 56;
    v19 = v43;
    v40 = v9;
    if (v16)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_12:
        v23 = *(v41 + 72);
        v24 = v44;
        sub_1C8D90EC8(*(v9 + 48) + v23 * (v20 | (v12 << 6)), v44);
        sub_1C9064D7C();
        sub_1C8D90EC8(v24, v19);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          MEMORY[0x1CCA82810](1);
          sub_1C9063FBC();
        }

        else
        {
          v25 = v38;
          v26 = v39;
          (*v37)(v38, v19, v39);
          MEMORY[0x1CCA82810](0);
          sub_1C8D90F38(&qword_1EC313960, MEMORY[0x1E69E0838], MEMORY[0x1E69E0840]);
          sub_1C9063E7C();
          (*v36)(v25, v26);
        }

        result = sub_1C9064DBC();
        v27 = -1 << *(v11 + 32);
        v28 = result & ~v27;
        v29 = v28 >> 6;
        if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
        {
          break;
        }

        v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
        v19 = v43;
LABEL_24:
        *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        result = sub_1C8D6DFF0(v44, *(v11 + 48) + v30 * v23);
        ++*(v11 + 16);
        v9 = v40;
        if (!v16)
        {
          goto LABEL_7;
        }
      }

      v31 = 0;
      v32 = (63 - v27) >> 6;
      v19 = v43;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v18 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_7:
      v21 = v12;
      while (1)
      {
        v12 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v35;
          goto LABEL_28;
        }

        v22 = *(v13 + 8 * v12);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v16 = (v22 - 1) & v22;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

void sub_1C8D8F9F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314670, &qword_1C9074850);
  v4 = sub_1C906474C();
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v5 = 0;
    v6 = v3 + 56;
    OUTLINED_FUNCTION_7_17();
    v10 = (v9 + 63) >> 6;
    v11 = v4 + 56;
    if ((v8 & v7) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_14_16();
LABEL_9:
        v16 = (*(v3 + 48) + 32 * (v12 | (v5 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_1C9064D7C();

        v32 = v17;
        sub_1C9063FBC();
        if (v20)
        {
          sub_1C9064D9C();
          v21 = v19;
          sub_1C9063FBC();
        }

        else
        {
          v21 = v19;
          sub_1C9064D9C();
        }

        sub_1C9064DBC();
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_41_0();
        if (v22)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_22:
        OUTLINED_FUNCTION_2_0();
        *(v11 + v26) |= v27;
        v29 = (*(v4 + 48) + 32 * v28);
        v3 = v31;
        *v29 = v32;
        v29[1] = v18;
        v29[2] = v21;
        v29[3] = v20;
        OUTLINED_FUNCTION_24_12();
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v22)
        {
          if (v24)
          {
            break;
          }
        }

        if (v23 == v25)
        {
          v23 = 0;
        }

        if (*(v11 + 8 * v23) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_4:
      v13 = v5;
      while (1)
      {
        v5 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v5 >= v10)
        {

          v2 = v30;
          goto LABEL_26;
        }

        ++v13;
        if (*(v6 + 8 * v5))
        {
          OUTLINED_FUNCTION_10_6();
          v33 = v15 & v14;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v4;
  }
}

char *sub_1C8D8FC14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314650, &qword_1C9074838);
  result = sub_1C906474C();
  v5 = result;
  if (*(v3 + 2))
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << v3[32];
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 7);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v5 + 2))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v3;
      memcpy(__dst, (*(v3 + 6) + 104 * (v12 | (v6 << 6))), 0x61uLL);
      sub_1C9064D7C();
      v16 = __dst[2];
      sub_1C8CC1340(__dst, v23);
      sub_1C9063FBC();
      v17 = *(v16 + 16);
      MEMORY[0x1CCA82810](v17);
      if (v17)
      {
        v18 = v16 + 40;
        do
        {

          sub_1C9063FBC();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      v19 = __dst[6];
      sub_1C9063FBC();
      sub_1C9064D9C();
      if (v19)
      {
        sub_1C9063FBC();
      }

      v3 = v15;
      v20 = __dst[9];
      MEMORY[0x1CCA82810](LOBYTE(__dst[7]));
      sub_1C9064D9C();
      if (v20)
      {
        sub_1C9063FBC();
      }

      if (__dst[11])
      {
        MEMORY[0x1CCA82810](1);
        sub_1C9063FBC();
      }

      else
      {
        MEMORY[0x1CCA82810](0);
      }

      MEMORY[0x1CCA82810](LOBYTE(__dst[12]));
      sub_1C9064DBC();
      v21 = sub_1C90646FC();
      *&i[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
      result = memcpy((*(v5 + 6) + 104 * v21), __dst, 0x61uLL);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v14 = *&v7[8 * v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C8D8FF14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314648, &unk_1C90C6610);
  result = sub_1C906474C();
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
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

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
        goto LABEL_35;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v6 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_1C9064D7C();
        switch(v17 >> 5)
        {
          case 1u:
            v18 = 3;
            goto LABEL_20;
          case 2u:
            v19 = 4;
            goto LABEL_17;
          case 3u:
            v19 = 5;
LABEL_17:
            MEMORY[0x1CCA82810](v19);

            sub_1C8D3977C(__src, v16);
            sub_1C9064D9C();
            goto LABEL_21;
          case 4u:
            v18 = 6;
            goto LABEL_20;
          case 5u:
            v18 = 7;
            goto LABEL_20;
          case 6u:
            MEMORY[0x1CCA82810]((v16 | v17 ^ 0xC0) != 0);
            goto LABEL_21;
          default:
            v18 = 2;
LABEL_20:
            MEMORY[0x1CCA82810](v18);

            sub_1C8D3977C(__src, v16);
LABEL_21:
            result = sub_1C9064DBC();
            v20 = -1 << *(v5 + 32);
            v21 = result & ~v20;
            v22 = v21 >> 6;
            if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) != 0)
            {
              v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v24 = 0;
              v25 = (63 - v20) >> 6;
              do
              {
                if (++v22 == v25 && (v24 & 1) != 0)
                {
                  goto LABEL_37;
                }

                v26 = v22 == v25;
                if (v22 == v25)
                {
                  v22 = 0;
                }

                v24 |= v26;
                v27 = *(v11 + 8 * v22);
              }

              while (v27 == -1);
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            }

            *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            v28 = *(v5 + 48) + 16 * v23;
            *v28 = v16;
            *(v28 + 8) = v17;
            ++*(v5 + 16);
            if (!v9)
            {
              goto LABEL_7;
            }

            goto LABEL_6;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C8D90200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314640, &qword_1C9074830);
  result = sub_1C906474C();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        result = sub_1C9064DBC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

uint64_t sub_1C8D90428(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314638, &qword_1C9074828);
  result = sub_1C906474C();
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
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1C9064D7C();
        sub_1C9063FBC();

        result = sub_1C9064DBC();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

void sub_1C8D9068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_35_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = sub_1C906474C();
  if (*(v5 + 16))
  {
    v39 = v4;
    v40 = v5;
    v9 = 0;
    v10 = v5 + 56;
    OUTLINED_FUNCTION_7_17();
    v14 = (v13 + 63) >> 6;
    v15 = v8 + 56;
    if ((v12 & v11) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_14_16();
LABEL_9:
        v19 = *(v5 + 48) + (v16 | (v9 << 6)) * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        sub_1C9064D7C();
        v25 = OUTLINED_FUNCTION_10_15();
        sub_1C8D54590(v25, v26, v27, v28, v29);
        a4();
        sub_1C9063FBC();

        sub_1C9064DBC();
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_41_0();
        if (v30)
        {
          break;
        }

        OUTLINED_FUNCTION_5_2();
LABEL_19:
        OUTLINED_FUNCTION_2_0();
        *(v15 + v34) |= v35;
        v37 = *(v8 + 48) + 40 * v36;
        *v37 = v20;
        *(v37 + 8) = v21;
        *(v37 + 16) = v22;
        *(v37 + 24) = v23;
        *(v37 + 32) = v24;
        OUTLINED_FUNCTION_24_12();
        v5 = v40;
        if (!v38)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_4_0();
      while (1)
      {
        OUTLINED_FUNCTION_26_5();
        if (v30)
        {
          if (v32)
          {
            break;
          }
        }

        if (v31 == v33)
        {
          v31 = 0;
        }

        if (*(v15 + 8 * v31) != -1)
        {
          OUTLINED_FUNCTION_3_5();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v18 = v9;
      while (1)
      {
        v9 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v4 = v39;
          goto LABEL_23;
        }

        ++v18;
        if (*(v10 + 8 * v9))
        {
          OUTLINED_FUNCTION_10_6();
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_23:
    *v4 = v8;
  }
}