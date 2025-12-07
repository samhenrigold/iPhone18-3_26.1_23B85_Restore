uint64_t sub_26A2812B0(char a1)
{
  result = 0x6E6F6349707061;
  switch(a1)
  {
    case 1:
      result = 0x656C646E7562;
      break;
    case 2:
      result = 0x746361746E6F63;
      break;
    case 3:
      result = 0x61746144676E70;
      break;
    case 4:
      result = 0x7461447465737361;
      break;
    case 5:
      result = 0x6C6F626D7973;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x6D49646567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A281388(uint64_t a1)
{
  v2 = sub_26A28281C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2813C4(uint64_t a1)
{
  v2 = sub_26A28281C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281400(uint64_t a1)
{
  v2 = sub_26A2825D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28143C(uint64_t a1)
{
  v2 = sub_26A2825D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281478(uint64_t a1)
{
  v2 = sub_26A282430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2814B4(uint64_t a1)
{
  v2 = sub_26A282430();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2814F0(uint64_t a1)
{
  v2 = sub_26A282774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28152C(uint64_t a1)
{
  v2 = sub_26A282774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A281024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A281598@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A2812A8();
  *a1 = result;
  return result;
}

uint64_t sub_26A2815C0(uint64_t a1)
{
  v2 = sub_26A282384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2815FC(uint64_t a1)
{
  v2 = sub_26A282384();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281638(uint64_t a1)
{
  v2 = sub_26A2826CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A281674(uint64_t a1)
{
  v2 = sub_26A2826CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2816B0(uint64_t a1)
{
  v2 = sub_26A282624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2816EC(uint64_t a1)
{
  v2 = sub_26A282624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A281728(uint64_t a1)
{
  v2 = sub_26A282528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A281764(uint64_t a1)
{
  v2 = sub_26A282528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A2817A0(uint64_t a1)
{
  v2 = sub_26A282484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2817DC(uint64_t a1)
{
  v2 = sub_26A282484();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Source.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v130 = v0;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371030, &qword_26A435588);
  OUTLINED_FUNCTION_24();
  v128 = v4;
  v129 = v3;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v127 = v6;
  v125 = type metadata accessor for RFImage.BadgedImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v126 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371038, &qword_26A435590);
  OUTLINED_FUNCTION_24();
  v123 = v11;
  v124 = v10;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v122 = v13;
  v120 = type metadata accessor for RFImage.Url(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v121 = v16 - v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371040, &qword_26A435598);
  OUTLINED_FUNCTION_24();
  v118 = v17;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v19);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371048, &qword_26A4355A0);
  OUTLINED_FUNCTION_24();
  v116 = v20;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v22);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371050, &qword_26A4355A8);
  OUTLINED_FUNCTION_24();
  v114 = v23;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v25);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371058, &qword_26A4355B0);
  OUTLINED_FUNCTION_24();
  v112 = v26;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v28);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371060, &qword_26A4355B8);
  OUTLINED_FUNCTION_24();
  v110[2] = v29;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = v110 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371068, &qword_26A4355C0);
  OUTLINED_FUNCTION_24();
  v110[1] = v33;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_131_3();
  type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  v38 = v37 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371070, &qword_26A4355C8);
  OUTLINED_FUNCTION_24();
  v132 = v39;
  v133 = v40;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47_9();
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A282384();
  OUTLINED_FUNCTION_86_6();
  sub_26A425594();
  OUTLINED_FUNCTION_39_12();
  sub_26A2823D8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = *(v38 + 8);
      v129 = *v38;
      v130 = v85;
      v86 = *(v38 + 24);
      v128 = *(v38 + 16);
      v88 = *(v38 + 32);
      v87 = *(v38 + 40);
      v89 = *(v38 + 48);
      LOBYTE(v134) = 1;
      sub_26A282774();
      v90 = v132;
      sub_26A4250A4();
      v134 = v129;
      v135 = v85;
      v136 = v128;
      v137 = v86;
      v138 = v88;
      v139 = v87;
      v140 = v89;
      sub_26A2827C8();
      v91 = v111;
      sub_26A425154();
      v92 = OUTLINED_FUNCTION_54_11();
      v93(v92, v91);
      v94 = OUTLINED_FUNCTION_41_11();
      v95(v94, v90);

      v65 = v88;
      v66 = v87;
      goto LABEL_8;
    case 2u:
      v56 = *v38;
      v57 = *(v38 + 8);
      v58 = *(v38 + 16);
      LOBYTE(v134) = 2;
      sub_26A2826CC();
      v60 = v131;
      v59 = v132;
      sub_26A4250A4();
      v134 = v56;
      v135 = v57;
      LOBYTE(v136) = v58;
      sub_26A282720();
      v61 = v113;
      sub_26A425154();
      v62 = OUTLINED_FUNCTION_27_16();
      v63(v62, v61);
      OUTLINED_FUNCTION_53_11();
      v64(v60, v59);
      v65 = v56;
      v66 = v57;
LABEL_8:
      sub_26A0D6740(v65, v66);
      goto LABEL_12;
    case 3u:
      v67 = *v38;
      v68 = *(v38 + 8);
      v69 = *(v38 + 16);
      v70 = *(v38 + 24);
      LOBYTE(v134) = 3;
      sub_26A282624();
      v72 = v131;
      v71 = v132;
      sub_26A4250A4();
      v134 = v67;
      v135 = v68;
      v136 = v69;
      v137 = v70;
      sub_26A282678();
      v73 = v115;
      sub_26A425154();
      v74 = OUTLINED_FUNCTION_41_11();
      v75(v74, v73);
      OUTLINED_FUNCTION_53_11();
      v76(v72, v71);
      sub_26A0E4784(v67, v68);
      v77 = OUTLINED_FUNCTION_97();
      sub_26A10E794(v77, v78);
      goto LABEL_12;
    case 4u:
      v47 = *v38;
      v48 = *(v38 + 8);
      LOBYTE(v134) = 4;
      sub_26A2825D0();
      OUTLINED_FUNCTION_65_10();
      sub_26A4250A4();
      v134 = v47;
      v135 = v48;
      sub_26A0E70D4();
      v49 = v117;
      sub_26A425154();
      v50 = OUTLINED_FUNCTION_54_11();
      v51(v50, v49);
      OUTLINED_FUNCTION_53_11();
      v52 = OUTLINED_FUNCTION_69();
      v53(v52);
      v54 = OUTLINED_FUNCTION_97();
      sub_26A0E4784(v54, v55);
      goto LABEL_12;
    case 5u:
      v97 = *v38;
      v96 = *(v38 + 8);
      v99 = *(v38 + 16);
      v98 = *(v38 + 24);
      LOBYTE(v134) = 5;
      sub_26A282528();
      OUTLINED_FUNCTION_95_4(&type metadata for RFImage.Source.SymbolCodingKeys, &v134);
      v134 = v97;
      v135 = v96;
      v136 = v99;
      v137 = v98;
      sub_26A28257C();
      v100 = v119;
      sub_26A425154();
      v101 = OUTLINED_FUNCTION_27_16();
      v102(v101, v100);
      OUTLINED_FUNCTION_53_11();
      v103(v32, v38);

      goto LABEL_10;
    case 6u:
      sub_26A280F24();
      LOBYTE(v134) = 6;
      sub_26A282484();
      sub_26A4250A4();
      OUTLINED_FUNCTION_37_10();
      sub_26A280EDC(v104, v105, &protocol conformance descriptor for RFImage.Url);
      sub_26A425154();
      v106 = OUTLINED_FUNCTION_69();
      v107(v106);
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_53_11();
      v108 = OUTLINED_FUNCTION_44();
      v109(v108);
      goto LABEL_12;
    case 7u:
      swift_projectBox();
      OUTLINED_FUNCTION_36_10();
      sub_26A2823D8();
      LOBYTE(v134) = 7;
      sub_26A282430();
      OUTLINED_FUNCTION_32_11();
      sub_26A4250A4();
      OUTLINED_FUNCTION_35_14();
      sub_26A280EDC(v79, v80, &protocol conformance descriptor for RFImage.BadgedImage);
      sub_26A425154();
      v81 = OUTLINED_FUNCTION_65_4();
      v82(v81);
      OUTLINED_FUNCTION_34_10();
      sub_26A2824D8();
      OUTLINED_FUNCTION_53_11();
      v83 = OUTLINED_FUNCTION_103();
      v84(v83);

      goto LABEL_12;
    default:
      v43 = *v38;
      v42 = *(v38 + 8);
      LOBYTE(v134) = 0;
      sub_26A28281C();
      OUTLINED_FUNCTION_95_4(&type metadata for RFImage.Source.AppIconCodingKeys, &v134);
      v134 = v43;
      v135 = v42;
      sub_26A282870();
      sub_26A425154();
      v44 = OUTLINED_FUNCTION_14_12();
      v45(v44);
      OUTLINED_FUNCTION_53_11();
      v46(v32, v38);
LABEL_10:

LABEL_12:
      OUTLINED_FUNCTION_41_5();
      return;
  }
}

unint64_t sub_26A282384()
{
  result = qword_280371078;
  if (!qword_280371078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371078);
  }

  return result;
}

uint64_t sub_26A2823D8()
{
  OUTLINED_FUNCTION_90_5();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

unint64_t sub_26A282430()
{
  result = qword_280371080;
  if (!qword_280371080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371080);
  }

  return result;
}

unint64_t sub_26A282484()
{
  result = qword_280371090;
  if (!qword_280371090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371090);
  }

  return result;
}

uint64_t sub_26A2824D8()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_26A282528()
{
  result = qword_2803710A0;
  if (!qword_2803710A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710A0);
  }

  return result;
}

unint64_t sub_26A28257C()
{
  result = qword_2803710A8;
  if (!qword_2803710A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710A8);
  }

  return result;
}

unint64_t sub_26A2825D0()
{
  result = qword_2803710B0;
  if (!qword_2803710B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710B0);
  }

  return result;
}

unint64_t sub_26A282624()
{
  result = qword_2803710B8;
  if (!qword_2803710B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710B8);
  }

  return result;
}

unint64_t sub_26A282678()
{
  result = qword_2803710C0;
  if (!qword_2803710C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710C0);
  }

  return result;
}

unint64_t sub_26A2826CC()
{
  result = qword_2803710C8;
  if (!qword_2803710C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710C8);
  }

  return result;
}

unint64_t sub_26A282720()
{
  result = qword_2803710D0;
  if (!qword_2803710D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710D0);
  }

  return result;
}

unint64_t sub_26A282774()
{
  result = qword_2803710D8;
  if (!qword_2803710D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710D8);
  }

  return result;
}

unint64_t sub_26A2827C8()
{
  result = qword_2803710E0;
  if (!qword_2803710E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710E0);
  }

  return result;
}

unint64_t sub_26A28281C()
{
  result = qword_2803710E8;
  if (!qword_2803710E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710E8);
  }

  return result;
}

unint64_t sub_26A282870()
{
  result = qword_2803710F0;
  if (!qword_2803710F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803710F0);
  }

  return result;
}

void RFImage.Source.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  v173 = v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803710F8, &qword_26A4355D0);
  OUTLINED_FUNCTION_24();
  v174 = v5;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v172 = v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371100, &qword_26A4355D8);
  OUTLINED_FUNCTION_24();
  v160 = v8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v171 = v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371108, &qword_26A4355E0);
  OUTLINED_FUNCTION_24();
  v159 = v11;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v180 = v13;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371110, &qword_26A4355E8);
  OUTLINED_FUNCTION_24();
  v158 = v14;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v170 = v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371118, &qword_26A4355F0);
  OUTLINED_FUNCTION_24();
  v157 = v17;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v169 = v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371120, &qword_26A4355F8);
  OUTLINED_FUNCTION_24();
  v156 = v20;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_42();
  v168 = v22;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371128, &qword_26A435600);
  OUTLINED_FUNCTION_24();
  v155 = v23;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v25);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371130, &qword_26A435608);
  OUTLINED_FUNCTION_24();
  v154 = v26;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_49(v28);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371138, &unk_26A435610);
  OUTLINED_FUNCTION_24();
  v176 = v29;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_56();
  v175 = type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  v36 = &v147 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v147 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v147 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v147 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = (&v147 - v47);
  v49 = v3[3];
  v181 = v3;
  OUTLINED_FUNCTION_36_5(v3, v49);
  sub_26A282384();
  v177 = v1;
  OUTLINED_FUNCTION_50_10();
  sub_26A425574();
  if (v0)
  {
    goto LABEL_10;
  }

  v148 = v45;
  v149 = v42;
  v150 = v39;
  v151 = v36;
  v50 = v179;
  v186 = v48;
  v52 = v177;
  v51 = v178;
  sub_26A425074();
  sub_26A156098();
  if (v54 == v55 >> 1)
  {
    v56 = v175;
    v57 = v176;
LABEL_9:
    sub_26A424F34();
    swift_allocError();
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120);
    *v69 = v56;
    v70 = sub_26A425004();
    OUTLINED_FUNCTION_57_9(v70);
    OUTLINED_FUNCTION_26_17();
    (*(v71 + 104))(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v52, v51);
LABEL_10:
    v72 = v181;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_41_5();
    return;
  }

  v147 = 0;
  if (v54 < (v55 >> 1))
  {
    v58 = *(v53 + v54);
    sub_26A156088();
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    v63 = v60 == v62 >> 1;
    v64 = v174;
    if (v63)
    {
      switch(v58)
      {
        case 1:
          LOBYTE(v182) = 1;
          v92 = sub_26A282774();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.BundleCodingKeys, &v182, v93, v94, v92);
          sub_26A28794C();
          OUTLINED_FUNCTION_65_10();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v128 = OUTLINED_FUNCTION_14_12();
          v129(v128);
          v130 = OUTLINED_FUNCTION_3_30();
          v131(v130);
          v132 = *(&v182 + 1);
          v133 = v185;
          v134 = v149;
          *v149 = v182;
          v134[1] = v132;
          v135 = v184;
          *(v134 + 1) = v183;
          *(v134 + 2) = v135;
          *(v134 + 48) = v133;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 2:
          LOBYTE(v182) = 2;
          v77 = sub_26A2826CC();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.ContactCodingKeys, &v182, v78, v79, v77);
          sub_26A2878F8();
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v108 = OUTLINED_FUNCTION_4_25();
          v109(v108, v50);
          v110 = OUTLINED_FUNCTION_3_30();
          v111(v110);
          v112 = v183;
          v113 = v150;
          *v150 = v182;
          *(v113 + 16) = v112;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 3:
          LOBYTE(v182) = 3;
          v80 = sub_26A282624();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.PngDataCodingKeys, &v182, v81, v82, v80);
          sub_26A2878A4();
          v83 = v163;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_4_25();
          v115(v114, v83);
          v116 = OUTLINED_FUNCTION_3_30();
          v117(v116);
          v118 = v183;
          v119 = v151;
          *v151 = v182;
          v119[1] = v118;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 4:
          LOBYTE(v182) = 4;
          v73 = sub_26A2825D0();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.AssetDataCodingKeys, &v182, v74, v75, v73);
          sub_26A0E718C();
          v76 = v164;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_4_25();
          v105(v104, v76);
          v106 = OUTLINED_FUNCTION_3_30();
          v107(v106);
          *v152 = v182;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 5:
          LOBYTE(v182) = 5;
          v95 = sub_26A282528();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.SymbolCodingKeys, &v182, v96, v97, v95);
          sub_26A287850();
          v98 = v165;
          OUTLINED_FUNCTION_49_14();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v136 = OUTLINED_FUNCTION_4_25();
          v137(v136, v98);
          v138 = OUTLINED_FUNCTION_3_30();
          v139(v138);
          v140 = *(&v182 + 1);
          v141 = v153;
          *v153 = v182;
          v141[1] = v140;
          *(v141 + 1) = v183;
          OUTLINED_FUNCTION_64_7();
          goto LABEL_19;
        case 6:
          LOBYTE(v182) = 6;
          v99 = sub_26A282484();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.UrlCodingKeys, &v182, v100, v101, v99);
          type metadata accessor for RFImage.Url(0);
          OUTLINED_FUNCTION_37_10();
          sub_26A280EDC(v102, v103, &protocol conformance descriptor for RFImage.Url);
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v143 = OUTLINED_FUNCTION_14_12();
          v144(v143);
          v145 = OUTLINED_FUNCTION_3_30();
          v146(v145);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_6_16();
          goto LABEL_20;
        case 7:
          LOBYTE(v182) = 7;
          v84 = sub_26A282430();
          v85 = v172;
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.BadgedImageCodingKeys, &v182, v86, v87, v84);
          type metadata accessor for RFImage.BadgedImage(0);
          v88 = swift_allocBox();
          OUTLINED_FUNCTION_35_14();
          sub_26A280EDC(v89, v90, &protocol conformance descriptor for RFImage.BadgedImage);
          v91 = v167;
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          (*(v64 + 8))(v85, v91);
          v120 = OUTLINED_FUNCTION_3_30();
          v121(v120);
          *v186 = v88;
          swift_storeEnumTagMultiPayload();
          goto LABEL_21;
        default:
          LOBYTE(v182) = 0;
          v65 = sub_26A28281C();
          OUTLINED_FUNCTION_16_17(&type metadata for RFImage.Source.AppIconCodingKeys, &v182, v66, v67, v65);
          sub_26A2879A0();
          OUTLINED_FUNCTION_65_10();
          sub_26A425054();
          OUTLINED_FUNCTION_51_10();
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_14_12();
          v123(v122);
          v124 = OUTLINED_FUNCTION_3_30();
          v125(v124);
          v126 = *(&v182 + 1);
          v127 = v148;
          *v148 = v182;
          v127[1] = v126;
          OUTLINED_FUNCTION_64_7();
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_6_16();
LABEL_20:
          sub_26A280F24();
LABEL_21:
          v142 = v181;
          OUTLINED_FUNCTION_6_16();
          sub_26A280F24();
          v72 = v142;
          break;
      }

      goto LABEL_11;
    }

    v56 = v175;
    v57 = v176;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_26A283714(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A2837FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A283714(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A283828(uint64_t a1)
{
  v2 = sub_26A2879F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283864(uint64_t a1)
{
  v2 = sub_26A2879F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.AppIcon.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371178, &qword_26A435620);
  OUTLINED_FUNCTION_24();
  v5 = v4;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A2879F4();

  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_56_11();
  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v7, v8);
  sub_26A425154();

  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.AppIcon.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371198, &qword_26A435630);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A2879F4();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_56_11();
  sub_26A425574();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v6, v7);
    sub_26A425054();
    v8 = OUTLINED_FUNCTION_126();
    v9(v8);
    *v4 = v10;
    v4[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A283B6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A283C2C(char a1)
{
  if (a1)
  {
    return 1752457584;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26A283C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A283B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A283C80(uint64_t a1)
{
  v2 = sub_26A287AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283CBC(uint64_t a1)
{
  v2 = sub_26A287AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A283CF8(uint64_t a1)
{
  v2 = sub_26A287B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283D34(uint64_t a1)
{
  v2 = sub_26A287B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A283D70(uint64_t a1)
{
  v2 = sub_26A287B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A283DAC(uint64_t a1)
{
  v2 = sub_26A287B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Bundle.Location.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711A8, &qword_26A435638);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711B0, &qword_26A435640);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_87_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711B8, &qword_26A435648);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_56();
  v29 = *(v23 + 16);
  OUTLINED_FUNCTION_36_5(v25, v25[3]);
  sub_26A287AB8();
  OUTLINED_FUNCTION_50_10();
  sub_26A425594();
  if (v29)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A287B0C();
    OUTLINED_FUNCTION_29_12();
    v30 = sub_26A4250A4();
    OUTLINED_FUNCTION_78_6(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_54_11();
  }

  else
  {
    sub_26A287B60();
    OUTLINED_FUNCTION_29_12();
    v35 = sub_26A4250A4();
    OUTLINED_FUNCTION_77_4(v35, v36, v37);
    v33 = OUTLINED_FUNCTION_27_16();
  }

  v34(v33, v29);
  v38 = OUTLINED_FUNCTION_126();
  v39(v38);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Bundle.Location.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711D8, &qword_26A435650);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_131_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711E0, &qword_26A435658);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_56();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711E8, &qword_26A435660);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_141_0();
  v30 = *(v25 + 32);
  v31 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_36_5(v31, v32);
  sub_26A287AB8();
  OUTLINED_FUNCTION_61_9();
  sub_26A425574();
  if (!v23)
  {
    OUTLINED_FUNCTION_76_6();
    sub_26A156098();
    if (v34 == v33 >> 1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_62_9();
    if (v40 == v41)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_91_4(v35, v36, v37, v38, v39);
    sub_26A156088();
    OUTLINED_FUNCTION_93_3();
    if (v30 >> 1)
    {
LABEL_9:
      sub_26A424F34();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120);
      *v46 = &type metadata for RFImage.Bundle.Location;
      v47 = sub_26A425004();
      OUTLINED_FUNCTION_57_9(v47);
      OUTLINED_FUNCTION_26_17();
      (*(v48 + 104))(v46);
      swift_willThrow();
      swift_unknownObjectRelease();
      v49 = OUTLINED_FUNCTION_23_19();
      v50(v49, v28);
      v25 = 0;
    }

    else
    {
      v42 = v28;
      v43 = v25;
      if (v25)
      {
        OUTLINED_FUNCTION_40_12();
        sub_26A287B0C();
        OUTLINED_FUNCTION_32_11();
        v44 = sub_26A424FF4();
        if (!v65)
        {
          v55 = OUTLINED_FUNCTION_71_5(v44);
          v57 = v56;
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_25_17();
          v59(v58);
          v43 = v25;
LABEL_15:
          v63 = OUTLINED_FUNCTION_103();
          v64(v63);
          *v25 = v55;
          *(v25 + 8) = v57;
          *(v25 + 16) = v43;
          __swift_destroy_boxed_opaque_existential_1(0);
          goto LABEL_13;
        }
      }

      else
      {
        sub_26A287B60();
        OUTLINED_FUNCTION_32_11();
        v51 = sub_26A424FF4();
        if (!v65)
        {
          v54 = OUTLINED_FUNCTION_82_7(v51);
          v57 = v60;
          v66 = v54;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_24_20();
          v62(v61);
          v55 = v66;
          goto LABEL_15;
        }
      }

      v52 = OUTLINED_FUNCTION_23_19();
      v53(v52, v42);
      swift_unknownObjectRelease();
      v25 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_13:
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A284490(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E6B726164 && a2 == 0xE800000000000000;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A425354();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A2845B0(char a1)
{
  if (!a1)
  {
    return 0x6D614E746867696CLL;
  }

  if (a1 == 1)
  {
    return 0x656D614E6B726164;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_26A284644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A28466C(uint64_t a1)
{
  v2 = sub_26A287BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2846A8(uint64_t a1)
{
  v2 = sub_26A287BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Bundle.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803711F0, &qword_26A435668);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_7();
  v11 = *(v0 + 40);
  v12 = *(v0 + 32);
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A287BB4();

  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v5, v6);
  OUTLINED_FUNCTION_11_20();
  sub_26A425154();

  if (!v1)
  {
    OUTLINED_FUNCTION_40_12();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_1_30();
    sub_26A287D74(v7);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();

    sub_26A0D6660(v12, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371228, &qword_26A435680);
    OUTLINED_FUNCTION_1_30();
    sub_26A287C6C(v8);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();
    sub_26A0D6740(v12, v11);
  }

  v9 = OUTLINED_FUNCTION_44();
  v10(v9);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Bundle.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371248, &qword_26A435688);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  v6 = sub_26A287BB4();
  OUTLINED_FUNCTION_48_13(&type metadata for RFImage.Bundle.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v8, v9);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_0_40();
    sub_26A287D74(v10);
    OUTLINED_FUNCTION_7_15();
    sub_26A425024();
    v11 = v21;
    if (v21 == 1)
    {
      sub_26A287E1C(v20, 1);
      v19 = 0;
      v11 = 0;
    }

    else
    {
      v19 = v20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371228, &qword_26A435680);
    OUTLINED_FUNCTION_0_40();
    sub_26A287C6C(v12);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    v13 = OUTLINED_FUNCTION_2_18();
    v14(v13);
    *v4 = v20;
    *(v4 + 8) = v21;
    *(v4 + 16) = v19;
    *(v4 + 24) = v11;
    *(v4 + 32) = v20;
    *(v4 + 40) = v21;
    *(v4 + 48) = v22;

    v15 = OUTLINED_FUNCTION_92_3();
    sub_26A0D6660(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v2);

    v17 = OUTLINED_FUNCTION_92_3();
    sub_26A0D6740(v17, v18);
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A284BB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A284C28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726174617661 && a2 == 0xE600000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6172676F6E6F6DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A284CEC(char a1)
{
  if (a1)
  {
    return 0x6D6172676F6E6F6DLL;
  }

  else
  {
    return 0x726174617661;
  }
}

uint64_t sub_26A284D20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A284DE0(uint64_t a1)
{
  v2 = sub_26A287ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284E1C(uint64_t a1)
{
  v2 = sub_26A287ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A284E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A284E88(uint64_t a1)
{
  v2 = sub_26A287E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284EC4(uint64_t a1)
{
  v2 = sub_26A287E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A284F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A284D20(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A284F30(uint64_t a1)
{
  v2 = sub_26A287E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A284F6C(uint64_t a1)
{
  v2 = sub_26A287E84();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Contact.Content.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371260, &qword_26A435690);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371268, &qword_26A435698);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_87_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371270, &qword_26A4356A0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_56();
  v29 = *(v23 + 16);
  OUTLINED_FUNCTION_36_5(v25, v25[3]);
  sub_26A287E30();
  OUTLINED_FUNCTION_50_10();
  sub_26A425594();
  if (v29)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A287E84();
    OUTLINED_FUNCTION_29_12();
    v30 = sub_26A4250A4();
    OUTLINED_FUNCTION_78_6(v30, v31, v32);
    v33 = OUTLINED_FUNCTION_54_11();
  }

  else
  {
    sub_26A287ED8();
    OUTLINED_FUNCTION_29_12();
    v35 = sub_26A4250A4();
    OUTLINED_FUNCTION_77_4(v35, v36, v37);
    v33 = OUTLINED_FUNCTION_27_16();
  }

  v34(v33, v29);
  v38 = OUTLINED_FUNCTION_126();
  v39(v38);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Contact.Content.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371290, &qword_26A4356A8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_131_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371298, &qword_26A4356B0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_56();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712A0, &qword_26A4356B8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_141_0();
  v30 = *(v25 + 32);
  v31 = OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_36_5(v31, v32);
  sub_26A287E30();
  OUTLINED_FUNCTION_61_9();
  sub_26A425574();
  if (!v23)
  {
    OUTLINED_FUNCTION_76_6();
    sub_26A156098();
    if (v34 == v33 >> 1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_62_9();
    if (v40 == v41)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_91_4(v35, v36, v37, v38, v39);
    sub_26A156088();
    OUTLINED_FUNCTION_93_3();
    if (v30 >> 1)
    {
LABEL_9:
      sub_26A424F34();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120);
      *v46 = &type metadata for RFImage.Contact.Content;
      v47 = sub_26A425004();
      OUTLINED_FUNCTION_57_9(v47);
      OUTLINED_FUNCTION_26_17();
      (*(v48 + 104))(v46);
      swift_willThrow();
      swift_unknownObjectRelease();
      v49 = OUTLINED_FUNCTION_23_19();
      v50(v49, v28);
      v25 = 0;
    }

    else
    {
      v42 = v28;
      v43 = v25;
      if (v25)
      {
        OUTLINED_FUNCTION_40_12();
        sub_26A287E84();
        OUTLINED_FUNCTION_32_11();
        v44 = sub_26A424FF4();
        if (!v65)
        {
          v55 = OUTLINED_FUNCTION_71_5(v44);
          v57 = v56;
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_25_17();
          v59(v58);
          v43 = v25;
LABEL_15:
          v63 = OUTLINED_FUNCTION_103();
          v64(v63);
          *v25 = v55;
          *(v25 + 8) = v57;
          *(v25 + 16) = v43;
          __swift_destroy_boxed_opaque_existential_1(0);
          goto LABEL_13;
        }
      }

      else
      {
        sub_26A287ED8();
        OUTLINED_FUNCTION_32_11();
        v51 = sub_26A424FF4();
        if (!v65)
        {
          v54 = OUTLINED_FUNCTION_82_7(v51);
          v57 = v60;
          v66 = v54;
          swift_unknownObjectRelease();
          v61 = OUTLINED_FUNCTION_24_20();
          v62(v61);
          v55 = v66;
          goto LABEL_15;
        }
      }

      v52 = OUTLINED_FUNCTION_23_19();
      v53(v52, v42);
      swift_unknownObjectRelease();
      v25 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_13:
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285650(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A285714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285650(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26A285740(uint64_t a1)
{
  v2 = sub_26A287F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28577C(uint64_t a1)
{
  v2 = sub_26A287F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Contact.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712A8, &qword_26A4356C0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_141_0();
  v4 = *v0;
  v5 = v0[1];
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A0D6660(v4, v5);
  sub_26A287F2C();
  OUTLINED_FUNCTION_61_9();
  sub_26A425594();
  sub_26A287F80();
  sub_26A425154();
  sub_26A0D6740(v4, v5);
  v6 = OUTLINED_FUNCTION_103();
  v7(v6);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Contact.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712C0, &qword_26A4356C8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  sub_26A287F2C();
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_56_11();
  sub_26A425574();
  if (!v0)
  {
    sub_26A287FD4();
    OUTLINED_FUNCTION_29_12();
    sub_26A425054();
    v6 = OUTLINED_FUNCTION_126();
    v7(v6);
    *v4 = v8;
    *(v4 + 16) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285A58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746867696CLL && a2 == 0xE900000000000061;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A285B28(char a1)
{
  if (a1)
  {
    return 0x617461446B726164;
  }

  else
  {
    return 0x746144746867696CLL;
  }
}

uint64_t sub_26A285B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285A58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A285B94(uint64_t a1)
{
  v2 = sub_26A288028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A285BD0(uint64_t a1)
{
  v2 = sub_26A288028();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.PngData.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712D0, &qword_26A4356D0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59_7();
  v5 = *v0;
  v6 = v0[1];
  v11 = v0[3];
  v12 = v0[2];
  OUTLINED_FUNCTION_36_5(v3, v3[3]);
  sub_26A0E45C0(v5, v6);
  sub_26A288028();
  sub_26A425594();
  sub_26A0E70D4();
  OUTLINED_FUNCTION_63_8();
  sub_26A425154();
  sub_26A0E4784(v5, v6);
  if (!v1)
  {
    OUTLINED_FUNCTION_40_12();
    sub_26A280558(v7, v8);
    OUTLINED_FUNCTION_63_8();
    sub_26A4250F4();
    sub_26A10E794(v12, v11);
  }

  v9 = OUTLINED_FUNCTION_44();
  v10(v9);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.PngData.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712E0, &qword_26A4356D8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  v6 = sub_26A288028();
  OUTLINED_FUNCTION_48_13(&type metadata for RFImage.PngData.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  else
  {
    sub_26A0E718C();
    OUTLINED_FUNCTION_55_9();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    OUTLINED_FUNCTION_55_9();
    sub_26A425024();
    v8 = OUTLINED_FUNCTION_65_4();
    v9(v8);
    sub_26A10E794(0, 0xF000000000000000);
    *v4 = v14;
    v4[1] = v15;
    v4[2] = v14;
    v4[3] = v15;
    sub_26A0E45C0(v14, v15);
    v10 = OUTLINED_FUNCTION_92_3();
    sub_26A280558(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_26A0E4784(v14, v15);
    v12 = OUTLINED_FUNCTION_92_3();
  }

  sub_26A10E794(v12, v13);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A285F58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A286028(char a1)
{
  if (a1)
  {
    return 0x656D614E6B726164;
  }

  else
  {
    return 0x6D614E746867696CLL;
  }
}

uint64_t sub_26A28606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A285F58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A286094(uint64_t a1)
{
  v2 = sub_26A28807C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A2860D0(uint64_t a1)
{
  v2 = sub_26A28807C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RFImage.Symbol.encode(to:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712E8, &qword_26A4356E0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_7();
  OUTLINED_FUNCTION_36_5(v2, v2[3]);
  sub_26A28807C();

  sub_26A425594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
  OUTLINED_FUNCTION_1_30();
  sub_26A287A48(v4, v5);
  OUTLINED_FUNCTION_11_20();
  sub_26A425154();

  if (!v0)
  {
    OUTLINED_FUNCTION_40_12();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_1_30();
    sub_26A287D74(v6);
    OUTLINED_FUNCTION_11_20();
    sub_26A425154();
  }

  v7 = OUTLINED_FUNCTION_44();
  v8(v7);
  OUTLINED_FUNCTION_41_5();
}

void RFImage.Symbol.init(from:)()
{
  OUTLINED_FUNCTION_40_5();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803712F8, &qword_26A4356E8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_13_15();
  v6 = sub_26A28807C();
  OUTLINED_FUNCTION_48_13(&type metadata for RFImage.Symbol.CodingKeys, v7, v6);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371188, &qword_26A435628);
    OUTLINED_FUNCTION_0_40();
    sub_26A287A48(v8, v9);
    OUTLINED_FUNCTION_7_15();
    sub_26A425054();
    OUTLINED_FUNCTION_40_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371200, &qword_26A435670);
    OUTLINED_FUNCTION_0_40();
    sub_26A287D74(v10);
    OUTLINED_FUNCTION_7_15();
    sub_26A425024();
    v11 = OUTLINED_FUNCTION_2_18();
    v12(v11);
    v14 = v15;
    v13 = v16;
    if (v16 == 1)
    {
      sub_26A287E1C(v15, 1);
      v14 = 0;
      v13 = 0;
    }

    *v4 = v15;
    v4[1] = v16;
    v4[2] = v14;
    v4[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_41_5();
}

uint64_t RFImage.Url.lightSource.getter()
{
  sub_26A424614();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t RFImage.Url.lightSource.setter(uint64_t a1)
{
  sub_26A424614();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_84_5();

  return v3(v2, a1);
}

uint64_t RFImage.Url.darkSource.getter()
{
  v2 = OUTLINED_FUNCTION_70_5();
  v3 = v1 + *(type metadata accessor for RFImage.Url(v2) + 20);

  return sub_26A280714(v3, v0);
}

uint64_t RFImage.Url.darkSource.setter()
{
  v2 = OUTLINED_FUNCTION_11_3();
  v3 = v1 + *(type metadata accessor for RFImage.Url(v2) + 20);

  return sub_26A2807A4(v0, v3);
}

void (*RFImage.Url.darkSource.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for RFImage.Url(v0);
  return nullsub_1;
}

BOOL static RFImage.Url.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_59_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371300, &qword_26A4356F0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  OUTLINED_FUNCTION_69();
  if ((sub_26A4245F4() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for RFImage.Url(0) + 20);
  v19 = *(v14 + 48);
  sub_26A280714(a1 + v18, v17);
  sub_26A280714(a2 + v18, &v17[v19]);
  OUTLINED_FUNCTION_9(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_9(&v17[v19]);
    if (v20)
    {
      sub_26A0E48F0(v17, &qword_28036D500, &qword_26A435570);
      return 1;
    }

    goto LABEL_10;
  }

  sub_26A280714(v17, v2);
  OUTLINED_FUNCTION_9(&v17[v19]);
  if (v20)
  {
    (*(v7 + 8))(v2, v5);
LABEL_10:
    sub_26A0E48F0(v17, &qword_280371300, &qword_26A4356F0);
    return 0;
  }

  (*(v7 + 32))(v11, &v17[v19], v5);
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v22, v23, MEMORY[0x277CC9278]);
  OUTLINED_FUNCTION_44();
  v24 = sub_26A424B64();
  v25 = *(v7 + 8);
  v26 = OUTLINED_FUNCTION_175();
  v25(v26);
  (v25)(v2, v5);
  sub_26A0E48F0(v17, &qword_28036D500, &qword_26A435570);
  return (v24 & 1) != 0;
}

uint64_t sub_26A2868F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F53746867696CLL && a2 == 0xEB00000000656372;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756F536B726164 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A2869CC(char a1)
{
  if (a1)
  {
    return 0x72756F536B726164;
  }

  else
  {
    return 0x756F53746867696CLL;
  }
}

uint64_t sub_26A286A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A2868F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A286A40(uint64_t a1)
{
  v2 = sub_26A2880D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A286A7C(uint64_t a1)
{
  v2 = sub_26A2880D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RFImage.Url.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371310, &qword_26A4356F8);
  OUTLINED_FUNCTION_24();
  v6 = v5;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A2880D0();
  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  sub_26A424614();
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v8, v9, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_12_16();
  sub_26A425154();
  if (!v1)
  {
    type metadata accessor for RFImage.Url(0);
    OUTLINED_FUNCTION_12_16();
    sub_26A4250F4();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t RFImage.Url.hash(into:)(uint64_t a1)
{
  v3 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_4_26();
  sub_26A280EDC(v12, v13, MEMORY[0x277CC9270]);
  sub_26A424B44();
  v14 = type metadata accessor for RFImage.Url(0);
  sub_26A280714(v1 + *(v14 + 20), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_26A425524();
  }

  (*(v5 + 32))(v9, v2, v3);
  sub_26A425524();
  sub_26A424B44();
  return (*(v5 + 8))(v9, v3);
}

uint64_t RFImage.Url.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1);
  RFImage.Url.hash(into:)(v2);
  return sub_26A425554();
}

void RFImage.Url.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v56 = v23;
  v25 = v24;
  v52 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  v31 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v53 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371328, &qword_26A435700);
  OUTLINED_FUNCTION_24();
  v54 = v38;
  v55 = v37;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47_9();
  v40 = type metadata accessor for RFImage.Url(0);
  v41 = OUTLINED_FUNCTION_41(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v44 = v43 - v42;
  v57 = *(v45 + 28);
  __swift_storeEnumTagSinglePayload(v43 - v42 + v57, 1, 1, v31);
  OUTLINED_FUNCTION_36_5(v25, v25[3]);
  sub_26A2880D0();
  OUTLINED_FUNCTION_86_6();
  v46 = v56;
  sub_26A425574();
  if (v46)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26A0E48F0(v44 + v57, &qword_28036D500, &qword_26A435570);
  }

  else
  {
    v56 = v30;
    OUTLINED_FUNCTION_4_26();
    sub_26A280EDC(v47, v48, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_85_4();
    sub_26A425054();
    (*(v53 + 32))(v44, v36, v31);
    v49 = v56;
    OUTLINED_FUNCTION_85_4();
    sub_26A425024();
    v50 = OUTLINED_FUNCTION_41_11();
    v51(v50);
    sub_26A2807A4(v49, v44 + v57);
    sub_26A2823D8();
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_44_11();
  }

  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A287148(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26A287210(char a1)
{
  if (a1)
  {
    return 0x6567646162;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_26A287270(uint64_t a1)
{
  sub_26A425504();
  RFImage.Url.hash(into:)(v2);
  return sub_26A425554();
}

uint64_t sub_26A2872B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A287148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A2872E0(uint64_t a1)
{
  v2 = sub_26A288124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A28731C(uint64_t a1)
{
  v2 = sub_26A288124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RFImage.BadgedImage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371338, &qword_26A435708);
  OUTLINED_FUNCTION_24();
  v6 = v5;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A288124();
  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_52_11();
  sub_26A425594();
  type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_5_23();
  sub_26A280EDC(v8, v9, &protocol conformance descriptor for RFImage.Source);
  OUTLINED_FUNCTION_12_16();
  sub_26A425154();
  if (!v1)
  {
    type metadata accessor for RFImage.BadgedImage(0);
    OUTLINED_FUNCTION_12_16();
    sub_26A425154();
  }

  return (*(v6 + 8))(v2, v4);
}

void RFImage.BadgedImage.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_5();
  v26 = v25;
  v39[3] = v27;
  v39[7] = type metadata accessor for RFImage.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v39[5] = v39 - v30;
  v39[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371348, &qword_26A435710);
  OUTLINED_FUNCTION_24();
  v39[4] = v31;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47_9();
  v33 = type metadata accessor for RFImage.BadgedImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_5();
  OUTLINED_FUNCTION_36_5(v26, v26[3]);
  sub_26A288124();
  OUTLINED_FUNCTION_86_6();
  sub_26A425574();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v39[1] = v33;
    v39[2] = v24;
    OUTLINED_FUNCTION_5_23();
    sub_26A280EDC(v35, v36, &protocol conformance descriptor for RFImage.Source);
    sub_26A425054();
    sub_26A280F24();
    sub_26A425054();
    v37 = OUTLINED_FUNCTION_83_6();
    v38(v37);
    OUTLINED_FUNCTION_6_16();
    sub_26A280F24();
    OUTLINED_FUNCTION_36_10();
    sub_26A2823D8();
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_34_10();
    sub_26A2824D8();
  }

  OUTLINED_FUNCTION_41_5();
}

uint64_t RFImage.Style.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_0(a1);
  MEMORY[0x26D65C340](v2);
  return sub_26A425554();
}

unint64_t sub_26A287850()
{
  result = qword_280371150;
  if (!qword_280371150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371150);
  }

  return result;
}

unint64_t sub_26A2878A4()
{
  result = qword_280371158;
  if (!qword_280371158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371158);
  }

  return result;
}

unint64_t sub_26A2878F8()
{
  result = qword_280371160;
  if (!qword_280371160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371160);
  }

  return result;
}

unint64_t sub_26A28794C()
{
  result = qword_280371168;
  if (!qword_280371168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371168);
  }

  return result;
}

unint64_t sub_26A2879A0()
{
  result = qword_280371170;
  if (!qword_280371170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371170);
  }

  return result;
}

unint64_t sub_26A2879F4()
{
  result = qword_280371180;
  if (!qword_280371180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371180);
  }

  return result;
}

uint64_t sub_26A287A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371188, &qword_26A435628);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A287AB8()
{
  result = qword_2803711C0;
  if (!qword_2803711C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711C0);
  }

  return result;
}

unint64_t sub_26A287B0C()
{
  result = qword_2803711C8;
  if (!qword_2803711C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711C8);
  }

  return result;
}

unint64_t sub_26A287B60()
{
  result = qword_2803711D0;
  if (!qword_2803711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711D0);
  }

  return result;
}

unint64_t sub_26A287BB4()
{
  result = qword_2803711F8;
  if (!qword_2803711F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803711F8);
  }

  return result;
}

unint64_t sub_26A287C08(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371218, &qword_26A435678);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A287C6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371228, &qword_26A435680);
    sub_26A287CCC();
    sub_26A287D20();
    result = OUTLINED_FUNCTION_94_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A287CCC()
{
  result = qword_280371238;
  if (!qword_280371238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371238);
  }

  return result;
}

unint64_t sub_26A287D20()
{
  result = qword_280371240;
  if (!qword_280371240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371240);
  }

  return result;
}

unint64_t sub_26A287D74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_68_5(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280371200, &qword_26A435670);
    sub_26A287C08(&unk_280371210);
    sub_26A287C08(&unk_280371220);
    result = OUTLINED_FUNCTION_94_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_26A287E1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_26A287E30()
{
  result = qword_280371278;
  if (!qword_280371278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371278);
  }

  return result;
}

unint64_t sub_26A287E84()
{
  result = qword_280371280;
  if (!qword_280371280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371280);
  }

  return result;
}

unint64_t sub_26A287ED8()
{
  result = qword_280371288;
  if (!qword_280371288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371288);
  }

  return result;
}

unint64_t sub_26A287F2C()
{
  result = qword_2803712B0;
  if (!qword_2803712B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712B0);
  }

  return result;
}

unint64_t sub_26A287F80()
{
  result = qword_2803712B8;
  if (!qword_2803712B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712B8);
  }

  return result;
}

unint64_t sub_26A287FD4()
{
  result = qword_2803712C8;
  if (!qword_2803712C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712C8);
  }

  return result;
}

unint64_t sub_26A288028()
{
  result = qword_2803712D8;
  if (!qword_2803712D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712D8);
  }

  return result;
}

unint64_t sub_26A28807C()
{
  result = qword_2803712F0;
  if (!qword_2803712F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803712F0);
  }

  return result;
}

unint64_t sub_26A2880D0()
{
  result = qword_280371318;
  if (!qword_280371318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371318);
  }

  return result;
}

unint64_t sub_26A288124()
{
  result = qword_280371340;
  if (!qword_280371340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371340);
  }

  return result;
}

unint64_t sub_26A28817C()
{
  result = qword_2815793B8;
  if (!qword_2815793B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815793B8);
  }

  return result;
}

unint64_t sub_26A28821C()
{
  result = qword_280371358;
  if (!qword_280371358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371358);
  }

  return result;
}

uint64_t sub_26A288298(uint64_t a1)
{
  result = type metadata accessor for RFImage.Source(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A288314(uint64_t a1)
{
  result = type metadata accessor for RFImage.Url(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A2883BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_80_5(result, 1);
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A288420(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26A288460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A2884E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_26A288520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_80_5(result, -a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A288598(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26A2885E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26A288644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26A288684(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_26A2886FC(uint64_t a1)
{
  sub_26A424614();
  if (v1 <= 0x3F)
  {
    sub_26A288780(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A288780(uint64_t a1)
{
  if (!qword_280371390)
  {
    sub_26A424614();
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, &qword_280371390);
    }
  }
}

uint64_t sub_26A288800(uint64_t a1)
{
  result = type metadata accessor for RFImage.Source(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFImage.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD1)
  {
    v6 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
          *result = a2 + 46;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RFImage.Bundle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26A288AA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RFImage.Source.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RFImage.Source.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A288DA4(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_79(a1);
}

_BYTE *sub_26A288DF0(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A288EA0()
{
  result = qword_2803713A8;
  if (!qword_2803713A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713A8);
  }

  return result;
}

unint64_t sub_26A288EF8()
{
  result = qword_2803713B0;
  if (!qword_2803713B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713B0);
  }

  return result;
}

unint64_t sub_26A288F50()
{
  result = qword_2803713B8;
  if (!qword_2803713B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713B8);
  }

  return result;
}

unint64_t sub_26A288FA8()
{
  result = qword_2803713C0;
  if (!qword_2803713C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713C0);
  }

  return result;
}

unint64_t sub_26A289000()
{
  result = qword_2803713C8;
  if (!qword_2803713C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713C8);
  }

  return result;
}

unint64_t sub_26A289058()
{
  result = qword_2803713D0;
  if (!qword_2803713D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713D0);
  }

  return result;
}

unint64_t sub_26A2890B0()
{
  result = qword_2803713D8;
  if (!qword_2803713D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713D8);
  }

  return result;
}

unint64_t sub_26A289108()
{
  result = qword_2803713E0;
  if (!qword_2803713E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713E0);
  }

  return result;
}

unint64_t sub_26A289160()
{
  result = qword_2803713E8;
  if (!qword_2803713E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713E8);
  }

  return result;
}

unint64_t sub_26A2891B8()
{
  result = qword_2803713F0;
  if (!qword_2803713F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713F0);
  }

  return result;
}

unint64_t sub_26A289210()
{
  result = qword_2803713F8;
  if (!qword_2803713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713F8);
  }

  return result;
}

unint64_t sub_26A289268()
{
  result = qword_280371400;
  if (!qword_280371400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371400);
  }

  return result;
}

unint64_t sub_26A2892C0()
{
  result = qword_280371408;
  if (!qword_280371408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371408);
  }

  return result;
}

unint64_t sub_26A289318()
{
  result = qword_280371410;
  if (!qword_280371410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371410);
  }

  return result;
}

unint64_t sub_26A289370()
{
  result = qword_280371418;
  if (!qword_280371418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371418);
  }

  return result;
}

unint64_t sub_26A2893C8()
{
  result = qword_280371420;
  if (!qword_280371420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371420);
  }

  return result;
}

unint64_t sub_26A289420()
{
  result = qword_280371428;
  if (!qword_280371428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371428);
  }

  return result;
}

unint64_t sub_26A289478()
{
  result = qword_280371430;
  if (!qword_280371430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371430);
  }

  return result;
}

unint64_t sub_26A2894D0()
{
  result = qword_280371438;
  if (!qword_280371438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371438);
  }

  return result;
}

unint64_t sub_26A289528()
{
  result = qword_280371440;
  if (!qword_280371440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371440);
  }

  return result;
}

unint64_t sub_26A289580()
{
  result = qword_280371448;
  if (!qword_280371448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371448);
  }

  return result;
}

unint64_t sub_26A2895D8()
{
  result = qword_280371450;
  if (!qword_280371450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371450);
  }

  return result;
}

unint64_t sub_26A289630()
{
  result = qword_280371458;
  if (!qword_280371458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371458);
  }

  return result;
}

unint64_t sub_26A289688()
{
  result = qword_280371460;
  if (!qword_280371460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371460);
  }

  return result;
}

unint64_t sub_26A2896E0()
{
  result = qword_280371468;
  if (!qword_280371468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371468);
  }

  return result;
}

unint64_t sub_26A289738()
{
  result = qword_280371470;
  if (!qword_280371470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371470);
  }

  return result;
}

unint64_t sub_26A289790()
{
  result = qword_280371478;
  if (!qword_280371478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371478);
  }

  return result;
}

unint64_t sub_26A2897E8()
{
  result = qword_280371480;
  if (!qword_280371480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371480);
  }

  return result;
}

unint64_t sub_26A289840()
{
  result = qword_280371488;
  if (!qword_280371488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371488);
  }

  return result;
}

unint64_t sub_26A289898()
{
  result = qword_280371490;
  if (!qword_280371490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371490);
  }

  return result;
}

unint64_t sub_26A2898F0()
{
  result = qword_280371498;
  if (!qword_280371498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371498);
  }

  return result;
}

unint64_t sub_26A289948()
{
  result = qword_2803714A0;
  if (!qword_2803714A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714A0);
  }

  return result;
}

unint64_t sub_26A2899A0()
{
  result = qword_2803714A8;
  if (!qword_2803714A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714A8);
  }

  return result;
}

unint64_t sub_26A2899F8()
{
  result = qword_2803714B0;
  if (!qword_2803714B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714B0);
  }

  return result;
}

unint64_t sub_26A289A50()
{
  result = qword_2803714B8;
  if (!qword_2803714B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714B8);
  }

  return result;
}

unint64_t sub_26A289AA8()
{
  result = qword_2803714C0;
  if (!qword_2803714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714C0);
  }

  return result;
}

unint64_t sub_26A289B00()
{
  result = qword_2803714C8;
  if (!qword_2803714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714C8);
  }

  return result;
}

unint64_t sub_26A289B58()
{
  result = qword_2803714D0;
  if (!qword_2803714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714D0);
  }

  return result;
}

unint64_t sub_26A289BB0()
{
  result = qword_2803714D8;
  if (!qword_2803714D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714D8);
  }

  return result;
}

unint64_t sub_26A289C08()
{
  result = qword_2803714E0;
  if (!qword_2803714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714E0);
  }

  return result;
}

unint64_t sub_26A289C60()
{
  result = qword_2803714E8;
  if (!qword_2803714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714E8);
  }

  return result;
}

unint64_t sub_26A289CB8()
{
  result = qword_2803714F0;
  if (!qword_2803714F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714F0);
  }

  return result;
}

unint64_t sub_26A289D10()
{
  result = qword_2803714F8;
  if (!qword_2803714F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714F8);
  }

  return result;
}

unint64_t sub_26A289D68()
{
  result = qword_280371500;
  if (!qword_280371500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371500);
  }

  return result;
}

unint64_t sub_26A289DC0()
{
  result = qword_280371508;
  if (!qword_280371508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371508);
  }

  return result;
}

unint64_t sub_26A289E18()
{
  result = qword_280371510;
  if (!qword_280371510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371510);
  }

  return result;
}

unint64_t sub_26A289E70()
{
  result = qword_280371518;
  if (!qword_280371518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371518);
  }

  return result;
}

unint64_t sub_26A289EC8()
{
  result = qword_280371520;
  if (!qword_280371520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371520);
  }

  return result;
}

unint64_t sub_26A289F20()
{
  result = qword_280371528;
  if (!qword_280371528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371528);
  }

  return result;
}

unint64_t sub_26A289F78()
{
  result = qword_280371530;
  if (!qword_280371530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371530);
  }

  return result;
}

unint64_t sub_26A289FD0()
{
  result = qword_280371538;
  if (!qword_280371538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371538);
  }

  return result;
}

unint64_t sub_26A28A028()
{
  result = qword_280371540;
  if (!qword_280371540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371540);
  }

  return result;
}

unint64_t sub_26A28A080()
{
  result = qword_280371548;
  if (!qword_280371548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371548);
  }

  return result;
}

unint64_t sub_26A28A0D8()
{
  result = qword_280371550;
  if (!qword_280371550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371550);
  }

  return result;
}

unint64_t sub_26A28A130()
{
  result = qword_280371558;
  if (!qword_280371558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371558);
  }

  return result;
}

unint64_t sub_26A28A188()
{
  result = qword_280371560;
  if (!qword_280371560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371560);
  }

  return result;
}

unint64_t sub_26A28A1E0()
{
  result = qword_280371568;
  if (!qword_280371568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371568);
  }

  return result;
}

unint64_t sub_26A28A238()
{
  result = qword_280371570;
  if (!qword_280371570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371570);
  }

  return result;
}

unint64_t sub_26A28A290()
{
  result = qword_280371578;
  if (!qword_280371578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371578);
  }

  return result;
}

unint64_t sub_26A28A2E8()
{
  result = qword_280371580;
  if (!qword_280371580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371580);
  }

  return result;
}

unint64_t sub_26A28A340()
{
  result = qword_280371588;
  if (!qword_280371588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371588);
  }

  return result;
}

unint64_t sub_26A28A398()
{
  result = qword_280371590;
  if (!qword_280371590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371590);
  }

  return result;
}

unint64_t sub_26A28A3F0()
{
  result = qword_280371598;
  if (!qword_280371598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371598);
  }

  return result;
}

unint64_t sub_26A28A448()
{
  result = qword_2803715A0;
  if (!qword_2803715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715A0);
  }

  return result;
}

unint64_t sub_26A28A4A0()
{
  result = qword_2803715A8;
  if (!qword_2803715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715A8);
  }

  return result;
}

unint64_t sub_26A28A4F8()
{
  result = qword_2803715B0;
  if (!qword_2803715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715B0);
  }

  return result;
}

unint64_t sub_26A28A550()
{
  result = qword_2803715B8;
  if (!qword_2803715B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715B8);
  }

  return result;
}

unint64_t sub_26A28A5A8()
{
  result = qword_2803715C0;
  if (!qword_2803715C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715C0);
  }

  return result;
}

unint64_t sub_26A28A600()
{
  result = qword_2803715C8;
  if (!qword_2803715C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715C8);
  }

  return result;
}

unint64_t sub_26A28A658()
{
  result = qword_2803715D0;
  if (!qword_2803715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715D0);
  }

  return result;
}

unint64_t sub_26A28A6B0()
{
  result = qword_2803715D8;
  if (!qword_2803715D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715D8);
  }

  return result;
}

unint64_t sub_26A28A708()
{
  result = qword_2803715E0;
  if (!qword_2803715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26A424FF4();
}

uint64_t OUTLINED_FUNCTION_44_11()
{

  return sub_26A2824D8();
}

uint64_t OUTLINED_FUNCTION_48_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425574();
}

uint64_t OUTLINED_FUNCTION_57_9(uint64_t a1)
{

  return sub_26A424F24();
}

uint64_t OUTLINED_FUNCTION_60_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_71_5(uint64_t a1)
{
  *(v2 - 136) = v1;

  return sub_26A425034();
}

uint64_t OUTLINED_FUNCTION_76_6()
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 88) = v0;

  return sub_26A425074();
}

uint64_t OUTLINED_FUNCTION_77_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425114();
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425114();
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1)
{

  return sub_26A425034();
}

uint64_t OUTLINED_FUNCTION_93_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_95_4(uint64_t a1, uint64_t a2)
{

  return sub_26A4250A4();
}

Swift::String __swiftcall ButtonContainer.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoCustomCanvas(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v263 = v5;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v294 = v260 - v7;
  v8 = OUTLINED_FUNCTION_45();
  v9 = type metadata accessor for CustomCanvas(v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v289 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  v284 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v285 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v283 = type metadata accessor for _ProtoButton(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  v277 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v24 = OUTLINED_FUNCTION_41(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  v282 = v260 - v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v29 = v260 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v260 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  v37 = v260 - v36;
  v38 = type metadata accessor for PlayerButton(0);
  v39 = OUTLINED_FUNCTION_41(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_48();
  v291 = v42;
  v43 = OUTLINED_FUNCTION_45();
  v290 = type metadata accessor for Button(v43);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_11();
  v272 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for ButtonContainer.ButtonItem(v46);
  OUTLINED_FUNCTION_24();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  v296 = v51;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_48();
  v297 = v53;
  ButtonContainer.buttons.getter();
  v59 = v58;
  v60 = *(v58 + 16);
  if (!v60)
  {

    v63 = MEMORY[0x277D84F90];
    goto LABEL_100;
  }

  v292 = v37;
  v288 = v33;
  v281 = v32;
  v271 = v29;
  v301 = MEMORY[0x277D84F90];
  sub_26A10D50C(0, v60, 0, v54, v55, v56, v57);
  OUTLINED_FUNCTION_166_0();
  v260[1] = v59;
  v62 = v59 + v61;
  v63 = v301;
  v295 = *(v49 + 72);
  v269 = 0x800000026A446720;
  v268 = 0x800000026A446740;
  v270 = v2 & 1;
  v262 = xmmword_26A437B50;
  v261 = xmmword_26A437B40;
  v267 = xmmword_26A4263A0;
  v264 = xmmword_26A437B30;
  v266 = xmmword_26A437B20;
  v265 = xmmword_26A437B10;
  v287 = v2;
  v286 = v47;
  while (2)
  {
    sub_26A28EB90();
    sub_26A28EB90();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A28EBE4();
        OUTLINED_FUNCTION_37_8();
        v74 = v273;
        sub_26A28EB90();
        if (v2)
        {
          _ProtoPlayerButton.redactedProto.getter(v274);
        }

        else
        {
          sub_26A28EB90();
        }

        v95 = v283;
        v96 = v292;
        OUTLINED_FUNCTION_37_8();
        v97 = v275;
        sub_26A28EBE4();
        v98 = v288;
        *(v97 + *(v288 + 32)) = v270;
        OUTLINED_FUNCTION_10_25();
        sub_26A28EC38(v74, v99);
        *(v97 + *(v98 + 28)) = MEMORY[0x277D84F90];
        sub_26A28EC90(v97, v96);
        type metadata accessor for _ProtoPlayerButton(0);
        v100 = v285;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v100, 1, v95);
        if (v101)
        {
          v102 = v277;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v103 = *(v95 + 20);
          if (qword_28036C428 != -1)
          {
            swift_once();
          }

          *(v102 + v103) = qword_280371710;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v285, 1, v95);

          if (EnumTagSinglePayload != 1)
          {
            sub_26A0E48F0(v285, &qword_28036EC48, &unk_26A4385C0);
          }
        }

        else
        {
          sub_26A28EBE4();
        }

        sub_26A28EBE4();
        v105 = OUTLINED_FUNCTION_17_13();
        v106 = v290;
        __swift_storeEnumTagSinglePayload(v105, v107, v108, v290);
        v109 = v271;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v109, 1, v106);
        v110 = v280;
        if (v101)
        {
          v111 = OUTLINED_FUNCTION_161();
          sub_26A0E48F0(v111, v112, &qword_26A437B70);
          sub_26A0E48F0(v109, &qword_28036CD38, &qword_26A437B70);
          v113 = v292;
        }

        else
        {
          v114 = v288;
          v115 = v292;
          v116 = Button.description(redacted:)(v292[*(v288 + 32)]);
          OUTLINED_FUNCTION_4_27();
          sub_26A28EC38(v109, v117);
          v118 = (v116._object >> 56) & 0xF;
          if ((v116._object & 0x2000000000000000) == 0)
          {
            v118 = v116._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v118)
          {
            v119 = *(v114 + 28);
            v120 = *(v115 + v119);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v237 = OUTLINED_FUNCTION_14_13();
              sub_26A166CCC(v237, v238, v239, v120);
              v120 = v240;
            }

            v122 = *(v120 + 16);
            v121 = *(v120 + 24);
            v293 = v119;
            if (v122 >= v121 >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A166CCC(v241, v242, v243, v120);
              v120 = v244;
            }

            sub_26A0E48F0(v281, &qword_28036CD38, &qword_26A437B70);
            *(v120 + 16) = v122 + 1;
            OUTLINED_FUNCTION_35_15((v120 + 32 * v122));
            v123[3] = v116;
            v113 = v292;
            *&v292[v293] = v120;
            v95 = v283;
            v110 = v280;
          }

          else
          {

            sub_26A0E48F0(v281, &qword_28036CD38, &qword_26A437B70);
            v95 = v283;
            v113 = v115;
          }
        }

        v183 = v284;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v183, 1, v95);
        if (v101)
        {
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v184 = v110;
          v185 = *(v95 + 20);
          if (qword_28036C428 != -1)
          {
            swift_once();
          }

          *(v184 + v185) = qword_280371710;
          v186 = __swift_getEnumTagSinglePayload(v183, 1, v95);

          if (v186 != 1)
          {
            sub_26A0E48F0(v284, &qword_28036EC48, &unk_26A4385C0);
          }
        }

        else
        {
          sub_26A28EBE4();
        }

        v187 = v282;
        sub_26A28EBE4();
        v188 = v290;
        __swift_storeEnumTagSinglePayload(v187, 0, 1, v290);
        v189 = v276;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v189, 1, v188);
        if (v101)
        {
          sub_26A0E48F0(v187, &qword_28036CD38, &qword_26A437B70);
          v190 = v189;
LABEL_93:
          v198 = sub_26A0E48F0(v190, &qword_28036CD38, &qword_26A437B70);
          goto LABEL_94;
        }

        v191 = v288;
        v192 = Button.description(redacted:)(*(v113 + *(v288 + 32)));
        OUTLINED_FUNCTION_4_27();
        sub_26A28EC38(v189, v193);
        v194 = (v192._object >> 56) & 0xF;
        if ((v192._object & 0x2000000000000000) == 0)
        {
          v194 = v192._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (!v194)
        {

          v190 = v282;
          goto LABEL_93;
        }

        v195 = *(v191 + 28);
        v196 = *(v113 + v195);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v245 = OUTLINED_FUNCTION_14_13();
          sub_26A166CCC(v245, v246, v247, v196);
          v196 = v248;
        }

        v197 = *(v196 + 16);
        if (v197 >= *(v196 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_11();
          sub_26A166CCC(v249, v250, v251, v196);
          v196 = v252;
        }

        sub_26A0E48F0(v282, &qword_28036CD38, &qword_26A437B70);
        *(v196 + 16) = v197 + 1;
        OUTLINED_FUNCTION_35_15((v196 + 32 * v197));
        v205[3] = v192;
        v113 = v292;
        *&v292[v195] = v196;
LABEL_94:
        sub_26A0F8ED8(v198, v199, v200, v201, v202, v203, v204);
        countAndFlagsBits = v206;
        object = v207;
        OUTLINED_FUNCTION_10_25();
        sub_26A28EC38(v291, v208);
        OUTLINED_FUNCTION_0_41();
        sub_26A28EC38(v297, v209);
        sub_26A0E48F0(v113, &qword_28036CF20, &qword_26A426AA8);
        LOBYTE(v2) = v287;
LABEL_95:
        v301 = v63;
        v210 = *(v63 + 16);
        if (v210 >= *(v63 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_11();
          sub_26A10D50C(v212, v213, v214, v215, v216, v217, v218);
          v63 = v301;
        }

        *(v63 + 16) = v210 + 1;
        v211 = v63 + 16 * v210;
        *(v211 + 32) = countAndFlagsBits;
        *(v211 + 40) = object;
        v62 += v295;
        if (--v60)
        {
          continue;
        }

LABEL_100:
        v299 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
        sub_26A10D548();
        v253 = sub_26A424B54();
        v255 = v254;

        v299 = 0;
        v300 = 0xE000000000000000;
        sub_26A424EF4();

        v299 = 0xD000000000000022;
        v300 = 0x800000026A4495C0;
        v256 = sub_26A31B838(v253, v255);
        v258 = v257;

        MEMORY[0x26D65BA70](v256, v258);

        MEMORY[0x26D65BA70](0x290A5D20200ALL, 0xE600000000000000);
        OUTLINED_FUNCTION_75();
LABEL_103:
        result._object = v139;
        result._countAndFlagsBits = v138;
        return result;
      case 2u:
        v70 = v289;
        sub_26A28EBE4();
        OUTLINED_FUNCTION_37_8();
        v71 = v278;
        sub_26A28EB90();
        v72 = *(v70 + 64);
        if (v72)
        {
          sub_26A28EB90();
          v73 = MEMORY[0x277D84F90];
        }

        else
        {
          v75 = *(v71 + 64);
          OUTLINED_FUNCTION_23_20();
          v76 = v263;
          sub_26A28EB90();
          v73 = MEMORY[0x277D84F90];
          if ((v75 & 1) == 0)
          {

            strcpy(v76, "SystemPlugin");
            *(v76 + 13) = 0;
            *(v76 + 14) = -5120;

            *(v76 + 16) = 0x6C6F686563616C50;
            *(v76 + 24) = 0xEB00000000726564;

            OUTLINED_FUNCTION_21_3();
            sub_26A28E6C8();
            v78 = v77;
            v80 = v79;
            sub_26A0E4784(*(v76 + 32), *(v76 + 40));
            *(v76 + 32) = v78;
            *(v76 + 40) = v80;
          }

          sub_26A28EBE4();
        }

        v81 = v294;
        sub_26A28EBE4();
        v82 = v279;
        *(v81 + *(v279 + 32)) = v72 ^ 1;
        OUTLINED_FUNCTION_8_19();
        sub_26A28EC38(v71, v83);
        v84 = v81;
        v293 = *(v82 + 28);
        *(v81 + v293) = v73;
        v85 = *v81;
        v86 = v84[1];
        v87 = HIBYTE(v86) & 0xF;
        if ((v86 & 0x2000000000000000) == 0)
        {
          v87 = v85 & 0xFFFFFFFFFFFFLL;
        }

        if (v87)
        {
          OUTLINED_FUNCTION_28_11();
          MEMORY[0x26D65BA70](v85, v86);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v88 = v299;
          v89 = v300;
          sub_26A16822C(0, 1, 1, v73);
          v91 = v90;
          v93 = *(v90 + 16);
          v92 = *(v90 + 24);
          if (v93 >= v92 >> 1)
          {
            OUTLINED_FUNCTION_34_11(v92 > 1);
            v91 = v230;
          }

          *(v91 + 16) = v93 + 1;
          OUTLINED_FUNCTION_35_15((v91 + 32 * v93));
          *(v94 + 48) = v88;
          *(v94 + 56) = v89;

          *&v294[v293] = v91;
        }

        else
        {
          v91 = v73;
        }

        OUTLINED_FUNCTION_45_6();
        if (v125)
        {
          OUTLINED_FUNCTION_28_11();
          v126 = OUTLINED_FUNCTION_32_12();
          MEMORY[0x26D65BA70](v126);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v127 = v299;
          v128 = v300;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v231 = OUTLINED_FUNCTION_14_13();
            sub_26A16822C(v231, v232, v233, v91);
            v91 = v234;
          }

          v130 = *(v91 + 16);
          v129 = *(v91 + 24);
          if (v130 >= v129 >> 1)
          {
            OUTLINED_FUNCTION_34_11(v129 > 1);
            v91 = v235;
          }

          *(v91 + 16) = v130 + 1;
          OUTLINED_FUNCTION_35_15((v91 + 32 * v130));
          *(v131 + 48) = v127;
          *(v131 + 56) = v128;

          v124 = v294;
          *&v294[v293] = v91;
        }

        v132 = *(v124 + 4);
        v133 = *(v124 + 5);
        v299 = 0;
        v300 = 0xE000000000000000;
        v134 = OUTLINED_FUNCTION_161();
        sub_26A0E45C0(v134, v135);
        v136 = OUTLINED_FUNCTION_161();
        sub_26A0E45C0(v136, v137);
        sub_26A424EF4();

        v299 = 0x202A2F2861746144;
        v300 = 0xE800000000000000;
        v140 = 0;
        switch(v133 >> 62)
        {
          case 1uLL:
            LODWORD(v140) = HIDWORD(v132) - v132;
            if (!__OFSUB__(HIDWORD(v132), v132))
            {
              v140 = v140;
              goto LABEL_49;
            }

            __break(1u);
            goto LABEL_102;
          case 2uLL:
            v142 = *(v132 + 16);
            v141 = *(v132 + 24);
            v143 = __OFSUB__(v141, v142);
            v140 = v141 - v142;
            if (!v143)
            {
              goto LABEL_49;
            }

LABEL_102:
            __break(1u);
            goto LABEL_103;
          case 3uLL:
            goto LABEL_49;
          default:
            v140 = BYTE6(v133);
LABEL_49:
            v298 = v140;
            v144 = sub_26A4251B4();
            MEMORY[0x26D65BA70](v144);

            MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
            v146 = v299;
            v145 = v300;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v219 = OUTLINED_FUNCTION_14_13();
              sub_26A16822C(v219, v220, v221, v91);
              v91 = v222;
            }

            v148 = *(v91 + 16);
            v147 = *(v91 + 24);
            if (v148 >= v147 >> 1)
            {
              OUTLINED_FUNCTION_34_11(v147 > 1);
              v91 = v223;
            }

            v149 = OUTLINED_FUNCTION_161();
            sub_26A0E4784(v149, v150);
            *(v91 + 16) = v148 + 1;
            OUTLINED_FUNCTION_35_15((v91 + 32 * v148));
            *(v151 + 48) = v146;
            *(v151 + 56) = v145;
            v152 = OUTLINED_FUNCTION_161();
            sub_26A0E4784(v152, v153);
            v154 = v294;
            *&v294[v293] = v91;
            OUTLINED_FUNCTION_45_6();
            if (v163)
            {
              OUTLINED_FUNCTION_28_11();
              v164 = OUTLINED_FUNCTION_32_12();
              MEMORY[0x26D65BA70](v164);
              MEMORY[0x26D65BA70](34, 0xE100000000000000);
              v165 = v299;
              v166 = v300;
              v168 = *(v91 + 16);
              v167 = *(v91 + 24);
              if (v168 >= v167 >> 1)
              {
                OUTLINED_FUNCTION_34_11(v167 > 1);
                v91 = v236;
              }

              *(v91 + 16) = v168 + 1;
              OUTLINED_FUNCTION_35_15((v91 + 32 * v168));
              *(v169 + 48) = v165;
              *(v169 + 56) = v166;

              v162 = v293;
              v154 = v294;
              *&v294[v293] = v91;
            }

            if (*(v154 + 65))
            {
              v170 = 1702195828;
            }

            else
            {
              v170 = 0x65736C6166;
            }

            if (*(v154 + 65))
            {
              v171 = 0xE400000000000000;
            }

            else
            {
              v171 = 0xE500000000000000;
            }

            v172 = *(v91 + 16);
            if (v172 >= *(v91 + 24) >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A16822C(v224, v225, v226, v91);
              v162 = v293;
              v154 = v294;
              v91 = v155;
            }

            *(v91 + 16) = v172 + 1;
            v173 = (v91 + 32 * v172);
            v173[4] = 0xD000000000000011;
            v173[5] = v269;
            v173[6] = v170;
            v173[7] = v171;
            *(v154 + v162) = v91;
            if (*(v154 + 66))
            {
              v174 = 1702195828;
            }

            else
            {
              v174 = 0x65736C6166;
            }

            if (*(v154 + 66))
            {
              v175 = 0xE400000000000000;
            }

            else
            {
              v175 = 0xE500000000000000;
            }

            v176 = *(v91 + 16);
            if (v176 >= *(v91 + 24) >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A16822C(v227, v228, v229, v91);
              v162 = v293;
              v154 = v294;
              v91 = v155;
            }

            *(v91 + 16) = v176 + 1;
            v177 = (v91 + 32 * v176);
            v178 = v268;
            v177[4] = 0xD000000000000017;
            v177[5] = v178;
            v177[6] = v174;
            v177[7] = v175;
            *(v154 + v162) = v91;
            sub_26A1018D0(v155, v156, v157, v158, v159, v160, v161);
            countAndFlagsBits = v179;
            object = v180;
            sub_26A0E48F0(v154, &qword_28036CD58, &unk_26A437B60);
            OUTLINED_FUNCTION_8_19();
            sub_26A28EC38(v289, v181);
            OUTLINED_FUNCTION_0_41();
            sub_26A28EC38(v297, v182);
            LOBYTE(v2) = v287;
            goto LABEL_95;
        }

      case 3u:
        sub_26A28EC38(v297, type metadata accessor for ButtonContainer.ButtonItem);
        object = 0xE700000000000000;
        countAndFlagsBits = 0x6E776F6E6B6E75;
        goto LABEL_95;
      default:
        v64 = v272;
        sub_26A28EBE4();
        v65 = Button.description(redacted:)(v2 & 1);
        countAndFlagsBits = v65._countAndFlagsBits;
        object = v65._object;
        OUTLINED_FUNCTION_4_27();
        sub_26A28EC38(v64, v68);
        OUTLINED_FUNCTION_0_41();
        sub_26A28EC38(v297, v69);
        goto LABEL_95;
    }
  }
}

void ButtonContainer.buttons.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for ButtonContainer.ButtonItem(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_18();
  v7 = *v0;
  v8 = *(*v0 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26A10D5AC(0, v8, 0);
    v9 = v19;
    OUTLINED_FUNCTION_166_0();
    v11 = v7 + v10;
    v12 = *(v2 + 72);
    do
    {
      sub_26A28EB90();
      sub_26A28EB90();
      sub_26A28C3AC();
      OUTLINED_FUNCTION_2_27();
      sub_26A28EC38(v5, v13);
      v19 = v9;
      v14 = *(v9 + 16);
      if (v14 >= *(v9 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33_11();
        sub_26A10D5AC(v15, v16, v17);
        v9 = v19;
      }

      *(v9 + 16) = v14 + 1;
      OUTLINED_FUNCTION_166_0();
      sub_26A28EBE4();
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A28C3AC()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v44 = v2;
  v43 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v42 = v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v41 = v14;
  v15 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoPlayerButton(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = v1;
  sub_26A10FD9C();
  v22 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v20, 1, v22);
  if (v23)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v24 = sub_26A424AE4();
    __swift_project_value_buffer(v24, qword_2803A8950);
    OUTLINED_FUNCTION_22_14();
    v25 = v1;
    sub_26A28EB90();
    v26 = sub_26A424AD4();
    v27 = sub_26A424E04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315138;
      OUTLINED_FUNCTION_22_14();
      sub_26A28EB90();
      v30 = sub_26A424BC4();
      v32 = v31;
      sub_26A28EC38(v7, type metadata accessor for _ProtoButton_Container.ButtonItem);
      v33 = sub_26A0E8788(v30, v32, &v45);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_26A0B8000, v26, v27, "Malformed protobuf message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x26D65C950](v29, -1, -1);
      MEMORY[0x26D65C950](v28, -1, -1);

      v34 = v25;
    }

    else
    {

      sub_26A28EC38(v21, type metadata accessor for _ProtoButton_Container.ButtonItem);
      v34 = v7;
    }

    sub_26A28EC38(v34, type metadata accessor for _ProtoButton_Container.ButtonItem);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
      OUTLINED_FUNCTION_20_18();
LABEL_19:
      sub_26A28EBE4();
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_26A28EBE4();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v11, 1, v12);
      if (v23)
      {
        v36 = v41;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v37 = *(v12 + 20);
        if (qword_28036C428 != -1)
        {
          swift_once();
        }

        v38 = qword_280371710;

        OUTLINED_FUNCTION_2_27();
        sub_26A28EC38(v1, v39);
        OUTLINED_FUNCTION_26_18();
        *(v36 + v37) = v38;
        OUTLINED_FUNCTION_37(v11, 1, v12);
        if (!v23)
        {
          sub_26A0E48F0(v11, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
        OUTLINED_FUNCTION_26_18();
        OUTLINED_FUNCTION_20_18();
        sub_26A28EBE4();
      }

      goto LABEL_19;
    }

    sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
    OUTLINED_FUNCTION_37_8();
    sub_26A28EBE4();
  }

LABEL_20:
  type metadata accessor for ButtonContainer.ButtonItem(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_75();
}

uint64_t ButtonContainer.init(_:)(uint64_t a1)
{
  return sub_26A28C938(a1, sub_26A28ED00);
}

{
  return sub_26A28C938(a1, sub_26A28ED58);
}

uint64_t sub_26A28C938(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v2, v3, &protocol conformance descriptor for _ProtoButton_Container);
  sub_26A4249C4();
}

uint64_t sub_26A28C9CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v78 = a1;
  v7 = type metadata accessor for CustomCanvas(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v81 = v9;
  v10 = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for PlayerButton(v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v80 = v13;
  v14 = OUTLINED_FUNCTION_45();
  v15 = type metadata accessor for Button(v14);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v79 = v17;
  v18 = OUTLINED_FUNCTION_45();
  v87 = type metadata accessor for ButtonContainer.ButtonItem(v18);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v92 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371600, &qword_26A437B88);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  OUTLINED_FUNCTION_24();
  v85 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_11();
  v86 = v31;
  v32 = *(a2 + 16);
  if (v32)
  {
    v33 = a2 + 32;
    v34 = MEMORY[0x277D84F90];
    while (2)
    {
      sub_26A0E5D68(v33, v89);
      v36 = v90;
      v35 = v91;
      __swift_project_boxed_opaque_existential_1(v89, v90);
      (*(v35 + 8))(v36, v35);
      OUTLINED_FUNCTION_9_22();
      sub_26A28EB90();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v37 = v80;
          v60 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v60);
          *(&v78 - 2) = v37;
          OUTLINED_FUNCTION_1_31();
          v62 = sub_26A28EDB0(&qword_280371608, v61, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
          OUTLINED_FUNCTION_30_9(v83, v63, v64, v62);
          v88 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v23, v65);
          v66 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v66, v67, v68, v28);
          v47 = type metadata accessor for PlayerButton;
          goto LABEL_8;
        case 2u:
          v37 = v81;
          v48 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v48);
          *(&v78 - 2) = v37;
          OUTLINED_FUNCTION_1_31();
          v50 = sub_26A28EDB0(&qword_280371608, v49, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
          OUTLINED_FUNCTION_30_9(v84, v51, v52, v50);
          v88 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v23, v53);
          v54 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v54, v55, v56, v28);
          v47 = type metadata accessor for CustomCanvas;
          goto LABEL_8;
        case 3u:
          sub_26A28EC38(v23, type metadata accessor for ButtonContainer.ButtonItem);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v57, v58, v59, v28);
          goto LABEL_9;
        default:
          v37 = v79;
          v38 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v38);
          *(&v78 - 2) = v37;
          OUTLINED_FUNCTION_1_31();
          v40 = sub_26A28EDB0(&qword_280371608, v39, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
          OUTLINED_FUNCTION_30_9(v82, v41, v42, v40);
          v88 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v23, v43);
          v44 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
          v47 = type metadata accessor for Button;
LABEL_8:
          sub_26A28EC38(v37, v47);
LABEL_9:
          __swift_destroy_boxed_opaque_existential_1(v89);
          if (__swift_getEnumTagSinglePayload(v27, 1, v28) == 1)
          {
            sub_26A0E48F0(v27, &qword_280371600, &qword_26A437B88);
          }

          else
          {
            sub_26A28EBE4();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = OUTLINED_FUNCTION_14_13();
              sub_26A168828(v71, v72, v73, v34);
              v34 = v74;
            }

            v70 = *(v34 + 16);
            v69 = *(v34 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_26A168828(v69 > 1, v70 + 1, 1, v34);
              v34 = v75;
            }

            *(v34 + 16) = v70 + 1;
            OUTLINED_FUNCTION_166_0();
            OUTLINED_FUNCTION_21_16();
            sub_26A28EBE4();
          }

          v33 += 40;
          if (!--v32)
          {
            goto LABEL_19;
          }

          continue;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_19:
  v76 = v78;

  *v76 = v34;
  return result;
}

uint64_t sub_26A28CFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  sub_26A28EB90();
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_26A28D0C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_84_5();
  sub_26A28EB90();
  type metadata accessor for ButtonContainer.ButtonItem(0);

  return swift_storeEnumTagMultiPayload();
}

void static ButtonContainer.ButtonItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for CustomCanvas(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v40 = v2;
  v3 = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for PlayerButton(v3);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for Button(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v39 = v11;
  v12 = OUTLINED_FUNCTION_45();
  type metadata accessor for ButtonContainer.ButtonItem(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803715E8, &qword_26A437B78);
  OUTLINED_FUNCTION_41(v22);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - v24;
  sub_26A28EB90();
  sub_26A28EB90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12() == 1)
      {
        sub_26A28EBE4();
        static _ProtoPlayerButton.== infix(_:_:)();
        sub_26A28EC38(v8, type metadata accessor for PlayerButton);
        v29 = v18;
        v30 = type metadata accessor for PlayerButton;
        goto LABEL_10;
      }

      v26 = type metadata accessor for PlayerButton;
      v27 = v18;
      goto LABEL_13;
    case 2u:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12() != 2)
      {
        v26 = type metadata accessor for CustomCanvas;
        v27 = v15;
        goto LABEL_13;
      }

      v28 = v40;
      sub_26A28EBE4();
      static _ProtoCustomCanvas.== infix(_:_:)(v15, v28);
      sub_26A28EC38(v28, type metadata accessor for CustomCanvas);
      v29 = v15;
      v30 = type metadata accessor for CustomCanvas;
LABEL_10:
      sub_26A28EC38(v29, v30);
      OUTLINED_FUNCTION_0_41();
      sub_26A28EC38(v25, v31);
      break;
    case 3u:
      if (OUTLINED_FUNCTION_52_12() == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    default:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12())
      {
        v26 = type metadata accessor for Button;
        v27 = v21;
LABEL_13:
        sub_26A28EC38(v27, v26);
LABEL_14:
        sub_26A0E48F0(v25, &qword_2803715E8, &qword_26A437B78);
      }

      else
      {
        v32 = v39;
        sub_26A28EBE4();
        v33 = type metadata accessor for _ProtoButton(0);
        if (*&v21[*(v33 + 20)] == *(v32 + *(v33 + 20)) || (, , sub_26A2A2580(), v35 = v34, , , (v35)) && (sub_26A424794(), OUTLINED_FUNCTION_24_21(), sub_26A28EDB0(v36, v37, MEMORY[0x277D216D0]), (sub_26A424B64()))
        {
          sub_26A28EC38(v32, type metadata accessor for Button);
          sub_26A28EC38(v21, type metadata accessor for Button);
LABEL_19:
          sub_26A28EC38(v25, type metadata accessor for ButtonContainer.ButtonItem);
        }

        else
        {
          sub_26A28EC38(v32, type metadata accessor for Button);
          sub_26A28EC38(v21, type metadata accessor for Button);
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v25, v38);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_75();
}

uint64_t ButtonContainer.ButtonItem.hash(into:)()
{
  v0 = type metadata accessor for CustomCanvas(0);
  v1 = OUTLINED_FUNCTION_41(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = v3 - v2;
  v5 = type metadata accessor for PlayerButton(0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = type metadata accessor for Button(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  type metadata accessor for ButtonContainer.ButtonItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_22();
  sub_26A28EB90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoPlayerButton(0);
      sub_26A28EDB0(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton, &protocol conformance descriptor for _ProtoPlayerButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_10_25();
      v17 = v9;
      return sub_26A28EC38(v17, v16);
    case 2u:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoCustomCanvas(0);
      sub_26A28EDB0(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_8_19();
      v17 = v4;
      return sub_26A28EC38(v17, v16);
    case 3u:
      return MEMORY[0x26D65C340](3);
    default:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoButton(0);
      sub_26A28EDB0(&qword_28036F410, type metadata accessor for _ProtoButton, &protocol conformance descriptor for _ProtoButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_4_27();
      v17 = v14;
      return sub_26A28EC38(v17, v16);
  }
}

uint64_t ButtonContainer.ButtonItem.hashValue.getter()
{
  sub_26A425504();
  ButtonContainer.ButtonItem.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A28D980(uint64_t a1)
{
  sub_26A425504();
  ButtonContainer.ButtonItem.hash(into:)();
  return sub_26A425554();
}

BOOL static ButtonContainer.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_26A0DCCA8(*a1, *a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, vars0, vars8);
  result = 0;
  if (v8)
  {
    type metadata accessor for _ProtoButton_Container(0);
    sub_26A424794();
    OUTLINED_FUNCTION_24_21();
    sub_26A28EDB0(v9, v10, MEMORY[0x277D216D0]);
    if (sub_26A424B64())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ButtonContainer.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v1, v2, &protocol conformance descriptor for _ProtoButton_Container);

  return sub_26A424B44();
}

uint64_t ButtonContainer.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v0, v1, &protocol conformance descriptor for _ProtoButton_Container);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A28DB54(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoButton_Container(0);
  sub_26A28EDB0(&qword_2803715F8, type metadata accessor for _ProtoButton_Container, &protocol conformance descriptor for _ProtoButton_Container);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t ButtonContainer.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoButton_Container(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_12_17();
  sub_26A28EB90();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_25_18();
  sub_26A28EBE4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t ButtonContainer.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ButtonContainer(0);
  *(inited + 64) = &protocol witness table for ButtonContainer;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A28EB90();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A28EDB0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

void _ProtoButton_Container.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoCustomCanvas(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v113 = v6;
  v7 = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for _ProtoPlayerButton(v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v112 = v10;
  v11 = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for _ProtoButton(v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v111 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v109 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371600, &qword_26A437B88);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v109 - v21;
  v23 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  OUTLINED_FUNCTION_24();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v116 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  v30 = &v109 - v29;
  OUTLINED_FUNCTION_12_17();
  v110 = v3;
  sub_26A28EB90();
  v31 = *v1;
  v32 = *(*v1 + 16);
  if (v32)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = v31 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v35 = *(v25 + 72);
    v114 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v115 = v35;
    do
    {
      sub_26A28EB90();
      sub_26A10FD9C();
      v36 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
      OUTLINED_FUNCTION_37(v18, 1, v36);
      if (v37)
      {
        sub_26A28EC38(v30, type metadata accessor for _ProtoButton_Container.ButtonItem);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v23);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v42 = v112;
            v43 = sub_26A28EBE4();
            OUTLINED_FUNCTION_37_11(v43, v44, v45, v46, v47, v48, v49, v50, v109);
            MEMORY[0x28223BE20](v51);
            *(&v109 - 2) = v42;
            OUTLINED_FUNCTION_1_31();
            v53 = sub_26A28EDB0(&qword_280371608, v52, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
            OUTLINED_FUNCTION_31_11(v53, v54, v55, v53);
            OUTLINED_FUNCTION_2_27();
            sub_26A28EC38(v30, v56);
            OUTLINED_FUNCTION_15_19();
            __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
            v61 = type metadata accessor for _ProtoPlayerButton;
          }

          else
          {
            v42 = v113;
            v82 = sub_26A28EBE4();
            OUTLINED_FUNCTION_37_11(v82, v83, v84, v85, v86, v87, v88, v89, v109);
            MEMORY[0x28223BE20](v90);
            *(&v109 - 2) = v42;
            OUTLINED_FUNCTION_1_31();
            v92 = sub_26A28EDB0(&qword_280371608, v91, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
            OUTLINED_FUNCTION_31_11(v92, v93, v94, v92);
            OUTLINED_FUNCTION_2_27();
            sub_26A28EC38(v30, v95);
            OUTLINED_FUNCTION_15_19();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
            v61 = type metadata accessor for _ProtoCustomCanvas;
          }

          sub_26A28EC38(v42, v61);
          v35 = v115;
        }

        else
        {
          v62 = v111;
          v63 = sub_26A28EBE4();
          OUTLINED_FUNCTION_37_11(v63, v64, v65, v66, v67, v68, v69, v70, v109);
          MEMORY[0x28223BE20](v71);
          *(&v109 - 2) = v62;
          OUTLINED_FUNCTION_1_31();
          v73 = sub_26A28EDB0(&qword_280371608, v72, &protocol conformance descriptor for _ProtoButton_Container.ButtonItem);
          OUTLINED_FUNCTION_31_11(v73, v74, v75, v73);
          OUTLINED_FUNCTION_2_27();
          sub_26A28EC38(v30, v76);
          OUTLINED_FUNCTION_15_19();
          __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
          v81 = v62;
          v35 = v115;
          sub_26A28EC38(v81, type metadata accessor for _ProtoButton);
        }
      }

      OUTLINED_FUNCTION_37(v22, 1, v23);
      if (v37)
      {
        sub_26A0E48F0(v22, &qword_280371600, &qword_26A437B88);
      }

      else
      {
        sub_26A28EBE4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = OUTLINED_FUNCTION_14_13();
          sub_26A168828(v103, v104, v105, v33);
          v33 = v106;
        }

        v102 = *(v33 + 16);
        v101 = *(v33 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_26A168828(v101 > 1, v102 + 1, 1, v33);
          v33 = v107;
        }

        *(v33 + 16) = v102 + 1;
        v35 = v115;
        OUTLINED_FUNCTION_21_16();
        sub_26A28EBE4();
      }

      v34 += v35;
      --v32;
    }

    while (v32);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v108 = v110;

  *v108 = v33;
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A28E450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(double), uint64_t a5, uint64_t a6)
{
  v8 = a3(0);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  v10 = MEMORY[0x28223BE20](v9);
  a4(v10);
  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_32_12();
  sub_26A28EBE4();
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26A28E538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 64);
  sub_26A28EB90();
  if ((v7 & 1) == 0)
  {

    strcpy(v6, "SystemPlugin");
    v6[13] = 0;
    *(v6 + 7) = -5120;

    *(v6 + 2) = 0x6C6F686563616C50;
    *(v6 + 3) = 0xEB00000000726564;

    sub_26A28E6C8();
    v9 = v8;
    v11 = v10;
    sub_26A0E4784(*(v6 + 4), *(v6 + 5));
    *(v6 + 4) = v9;
    *(v6 + 5) = v11;
  }

  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  sub_26A28EBE4();
  v12 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
}

void sub_26A28E6C8()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v45[0] = v2;
  v45[1] = v0;
  *&v48 = v2;
  *(&v48 + 1) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371640, &qword_26A437D40);
  if (swift_dynamicCast())
  {
    sub_26A0D671C(v46, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    sub_26A4244F4();
    v46[0] = v48;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    goto LABEL_59;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_26A0E48F0(v46, &qword_280371648, &qword_26A437D48);
  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    *&v46[0] = v3;
    *(&v46[0] + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
    v5 = v46;
    v6 = HIBYTE(v1) & 0xF;
  }

  else if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_26A424F44();
  }

  sub_26A28F180(v5, v6, &v49);
  v7 = *(&v49 + 1);
  v8 = v49;
  if (*(&v49 + 1) >> 60 != 15)
  {
    v46[0] = v49;
    goto LABEL_59;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v46[0] = MEMORY[0x26D65B4C0](v9);
  *(&v46[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v46[0]);
  v40[2] = v45;
  v11 = sub_26A28F29C(sub_26A28F870, v40);
  v13 = *(&v46[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v46[0]);
  switch(*(&v46[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v46[0]) - LODWORD(v46[0]);
      if (__OFSUB__(DWORD1(v46[0]), v46[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v46[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v46[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v46[0] + 16);
      v21 = *(*&v46[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_26A424684();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40[4] = v4;
      v41 = v8;
      v42 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v44 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v48 + 7) = 0;
      *&v48 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v46[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_32_12();
      v28 = sub_26A28F88C(v32, v33, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_26A424C54();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_26A424C84();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v49 = v14;
      *(&v49 + 1) = v44;
      v31 = *(&v49 + v29);
    }

    else
    {
      v30 = v43;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26A424F44();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v34 = OUTLINED_FUNCTION_32_12();
      v18 = sub_26A28F88C(v34, v35, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_32_12();
    v18 = sub_26A424C64();
LABEL_46:
    *(&v48 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_47_10();
      sub_26A4246A4();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_47_10();
    sub_26A4246A4();
    sub_26A10E794(v41, v42);
    goto LABEL_58;
  }

  sub_26A10E794(v41, v42);
LABEL_59:
  v36 = OUTLINED_FUNCTION_21_3();
  sub_26A0E45C0(v36, v37);

  v38 = OUTLINED_FUNCTION_21_3();
  sub_26A0E4784(v38, v39);
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A28EB90()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A28EBE4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A28EC38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A28EC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A28EDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A28EFEC(uint64_t a1)
{
  result = type metadata accessor for _ProtoButton_Container(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A28F058(uint64_t a1)
{
  result = type metadata accessor for Button(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlayerButton(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CustomCanvas(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A28F180@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26A424624();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_26A4244A4();
      swift_allocObject();
      v8 = sub_26A424464();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26A424674();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26A28F248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_26A28F720(sub_26A28F948, v5, a1, a2);
}

uint64_t sub_26A28F29C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26A0E4784(v7, v6);
      *v5 = xmmword_26A426400;
      sub_26A0E4784(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_26A424474() && __OFSUB__(v7, sub_26A424494()))
      {
        goto LABEL_24;
      }

      sub_26A4244A4();
      swift_allocObject();
      v14 = sub_26A424454();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_26A28F784(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26A0E4784(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_26A426400;
      sub_26A0E4784(0, 0xC000000000000000);
      sub_26A424634();
      v7 = v17;
      v10 = sub_26A28F784(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_26A0E4784(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_26A28F660@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26A424624();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D65B470]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D65B480]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26A28F6D8(uint64_t result)
{
  if (result)
  {
    result = sub_26A424F04();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A28F720(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_26A28F784(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26A424474();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26A424494();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26A424484();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_26A28F838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_26A28F248(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_26A28F88C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26A424C94();
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
    v5 = MEMORY[0x26D65BAA0](15, a1 >> 16);
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

uint64_t sub_26A28F908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A28F6D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return sub_26A28EC38(v0, type metadata accessor for _ProtoPlayerButton);
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  *(v0 - 112) = 34;
  *(v0 - 104) = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_30_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_34_11(uint64_t a1)
{

  sub_26A16822C(a1, v1, 1, v2);
}

__n128 OUTLINED_FUNCTION_35_15@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 - 256);
  a1[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_11()
{

  return type metadata accessor for _ProtoButton_Container(0);
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_26A28FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v12 = v7;
  swift_getAtKeyPath();
  v15 = sub_26A12CBBC(v26);
  v17 = v16;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = v15;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 28);

    a6(v21);
    v22 = *(*(v12 + v20) + 16);
    a7(v22);

    v24 = *(v12 + v20);
    *(v24 + 16) = v22 + 1;
    v25 = (v24 + 32 * v22);
    v25[4] = a2;
    v25[5] = a3;
    v25[6] = v19;
    v25[7] = v17;
    *(v12 + v20) = v24;
  }

  else
  {
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ColorElement.jsonString(redacted:)(Swift::Bool redacted)
{
  v1 = sub_26A4247D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v5 = v4 - v3;
  sub_26A4247C4();
  type metadata accessor for _ProtoColorElement(0);
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v6, v7, &protocol conformance descriptor for _ProtoColorElement);
  v8 = sub_26A424954();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall ColorElement.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for ColorElement(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  sub_26A290388(v2, v14);
  sub_26A290388(v14, v11);
  OUTLINED_FUNCTION_3_31();
  sub_26A2911E8(v11, v18);
  v18[*(v16 + 40)] = redacted;
  OUTLINED_FUNCTION_1_32();
  sub_26A291260(v14, v19);
  *&v18[*(v16 + 36)] = MEMORY[0x277D84F90];
  ColorElement.color.getter(v7);
  v20 = type metadata accessor for Color(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v20);
  sub_26A109CD4();
  sub_26A0E48F0(v7, &qword_28036CBA0, &qword_26A4265B0);
  KeyPath = swift_getKeyPath();
  sub_26A28FDEC(KeyPath, 0x736D6F696469, 0xE600000000000000, &qword_28036CCE0, &qword_26A426770, sub_26A10C71C, sub_26A10CB50);

  sub_26A101AA8(v22, v23, v24, v25, v26, v27, v28);
  v30 = v29;
  v32 = v31;
  sub_26A0E48F0(v18, &qword_28036CCE0, &qword_26A426770);
  v33 = v30;
  v34 = v32;
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

uint64_t type metadata accessor for ColorElement(uint64_t a1)
{
  result = qword_28157B530;
  if (!qword_28157B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A290388(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t ColorElement.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoColorElement(0);
  sub_26A291178(v1 + *(v12 + 24), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v13 = type metadata accessor for _ProtoColor.OneOf_Value(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_26A0E48F0(v6, &qword_28036CCD8, &unk_26A432950);
    }
  }

  else
  {
    sub_26A2911E8(v6, v11);
  }

  return sub_26A2911E8(v11, a1);
}

void *ColorElement.idioms.getter()
{
  if (*(*v0 + 16))
  {
  }

  else
  {
    return &unk_287B013B0;
  }
}

uint64_t ColorElement.init(_:idioms:)(void *a1, uint64_t a2)
{
  type metadata accessor for _ProtoColorElement(0);
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v3, v4, &protocol conformance descriptor for _ProtoColorElement);
  sub_26A4249C4();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A290674(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for Color(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 8))(v14, v15);
  sub_26A2911E8(v13, v8);
  v16 = *(type metadata accessor for _ProtoColorElement(0) + 24);
  sub_26A0E48F0(a1 + v16, &qword_28036CCD8, &unk_26A432950);
  sub_26A2911E8(v8, a1 + v16);
  __swift_storeEnumTagSinglePayload(a1 + v16, 0, 1, v4);

  v18 = sub_26A419264(v17);

  *a1 = v18;
  return result;
}

uint64_t static ColorElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  ColorElement.color.getter(&v18 - v9);
  ColorElement.color.getter(v7);
  v11 = static _ProtoColor.== infix(_:_:)();
  sub_26A291260(v7, type metadata accessor for Color);
  sub_26A291260(v10, type metadata accessor for Color);
  if (v11)
  {
    if (*(*a1 + 16))
    {
    }

    else
    {
      v12 = &unk_287B013B0;
    }

    v14 = sub_26A10BE7C(v12);
    if (*(*a2 + 16))
    {
    }

    else
    {
      v15 = &unk_287B013B0;
    }

    v16 = sub_26A10BE7C(v15);
    v13 = sub_26A290AE0(v14, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_26A29095C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_8_20();
    if (v4)
    {
      v5 = 0;
      OUTLINED_FUNCTION_6_17();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      v11 = v2 + 56;
LABEL_5:
      if (v8)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 16 * (v12 | (v5 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        sub_26A425504();
        sub_26A0E8CEC();
        sub_26A424B44();
        sub_26A425554();
        OUTLINED_FUNCTION_5_24();
        if ((*(v11 + v19) >> v18))
        {
          v20 = *(v2 + 48);
          do
          {
            v21 = (v20 + 16 * v18);
            if (*(v21 + 8))
            {
              v22 = *v21 != 0;
            }

            else
            {
              v22 = *v21;
            }

            if (v17)
            {
              if (v16)
              {
                if (v22 == 1)
                {
                  goto LABEL_5;
                }
              }

              else if (!v22)
              {
                goto LABEL_5;
              }
            }

            else if (v22 == v16)
            {
              goto LABEL_5;
            }

            OUTLINED_FUNCTION_10_26();
          }

          while (((*(v11 + v23) >> v18) & 1) != 0);
        }
      }

      else
      {
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
            return;
          }

          v14 = *(v3 + 56 + 8 * v5);
          ++v13;
          if (v14)
          {
            v12 = __clz(__rbit64(v14));
            v8 = (v14 - 1) & v14;
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_26A290AE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_8_20();
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    OUTLINED_FUNCTION_6_17();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    v11 = v2 + 56;
LABEL_5:
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v15 = *(v3 + 48) + 16 * (v12 | (v5 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      sub_26A425504();
      sub_26A0E8BF0();
      sub_26A424B44();
      sub_26A425554();
      OUTLINED_FUNCTION_5_24();
      if (((*(v11 + v19) >> v18) & 1) == 0)
      {
        return 0;
      }

      v20 = *(v2 + 48);
      while (1)
      {
        v21 = *(v20 + 16 * v18);
        if (v17)
        {
          switch(v16)
          {
            case 0:
              if (!v21)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 1:
              if (v21 == 1)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 2:
              if (v21 == 2)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 3:
              if (v21 == 3)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 4:
              if (v21 == 4)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 5:
              if (v21 == 5)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 6:
              if (v21 == 6)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 7:
              if (v21 == 7)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 8:
              if (v21 == 8)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            default:
              goto LABEL_40;
          }
        }

        if (v21 == v16)
        {
          break;
        }

LABEL_19:
        OUTLINED_FUNCTION_10_26();
        if (((*(v11 + v22) >> v18) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_40:
        JUMPOUT(0);
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = *(v3 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }
  }

  return 1;
}

uint64_t ColorElement.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoColorElement(0);
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v1, v2, &protocol conformance descriptor for _ProtoColorElement);

  return sub_26A424B44();
}

uint64_t ColorElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement(0);
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v0, v1, &protocol conformance descriptor for _ProtoColorElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A290DBC(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement(0);
  sub_26A291348(&qword_280371650, type metadata accessor for _ProtoColorElement, &protocol conformance descriptor for _ProtoColorElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.color(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorElement(0) - 8;
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](&v41 - v12);
  v18 = &v41 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v44 = v15;
    v45 = v13;
    v46 = a3;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23 = *(v14 + 72);
    v41 = v16;
    v42 = v22;
    v43 = v19;
    v24 = v19;
    do
    {
      sub_26A290388(v22, v10);
      v25 = *v10;
      if (*(*v10 + 16))
      {
      }

      else
      {
        v25 = &unk_287B01FB8;
      }

      v26 = sub_26A165034(v20, v21, v25);

      if (v26)
      {
        v37 = v45;
        sub_26A2911E8(v10, v45);
        sub_26A2911E8(v37, v18);
        a3 = v46;
LABEL_20:
        ColorElement.color.getter(a3);
        OUTLINED_FUNCTION_1_32();
        sub_26A291260(v18, v38);
        v36 = 0;
        goto LABEL_21;
      }

      sub_26A291260(v10, type metadata accessor for ColorElement);
      v22 += v23;
      --v24;
    }

    while (v24);
    v27 = 0;
    a3 = v46;
    v29 = v43;
    v28 = v44;
    v30 = v42;
    do
    {
      sub_26A290388(v30 + v27 * v23, v28);
      if (*(*v28 + 16))
      {
      }

      else
      {
        v31 = &unk_287B01FE8;
      }

      ++v27;
      v32 = v31[2] + 1;
      v33 = 4;
      while (--v32)
      {
        v34 = v31[v33];
        v33 += 2;
        if (!v34)
        {

          OUTLINED_FUNCTION_3_31();
          v18 = v41;
          sub_26A2911E8(v28, v41);
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_1_32();
      sub_26A291260(v28, v35);
      v36 = 1;
    }

    while (v27 != v29);
  }

  else
  {
    v36 = 1;
  }

LABEL_21:
  v39 = type metadata accessor for Color(0);
  return __swift_storeEnumTagSinglePayload(a3, v36, 1, v39);
}

uint64_t sub_26A291178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2911E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v5(v4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26A291260(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A291348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2913B8(uint64_t a1)
{
  result = type metadata accessor for _ProtoColorElement(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t StandardPlayerButton.playAction.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoStandardPlayerButton(v8);
  sub_26A132994(v1 + *(v9 + 28), v3);
  OUTLINED_FUNCTION_1_4();
  if (v10)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v10)
    {
      sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A292280(v3, v2);
  }

  return sub_26A292280(v2, a1);
}

uint64_t StandardPlayerButton.pauseAction.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_14();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoStandardPlayerButton(v8);
  sub_26A132994(v1 + *(v9 + 32), v3);
  OUTLINED_FUNCTION_1_4();
  if (v10)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v10)
    {
      sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A292280(v3, v2);
  }

  return sub_26A292280(v2, a1);
}

uint64_t sub_26A2917A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v47 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v49 = (&v46 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v46 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  OUTLINED_FUNCTION_3_32();
  v48 = v2;
  sub_26A292228(v2, a1);
  v26 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v27 = *(v26 + 28);
  sub_26A132994(a1 + v27, v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v4);
  sub_26A0E48F0(v25, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A132994(v48 + *(v26 + 28), v22);
    v29 = OUTLINED_FUNCTION_23(v22);
    if (v30)
    {
      OUTLINED_FUNCTION_13_16(v29);
      OUTLINED_FUNCTION_23(v22);
      if (!v30)
      {
        sub_26A0E48F0(v22, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A292280(v22, v12);
    }

    v31 = v49;
    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v49);
    OUTLINED_FUNCTION_5_25();
    sub_26A0E48F0(a1 + v27, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_2_28();
    sub_26A292280(v31, v32);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v4);
  }

  v36 = *(v26 + 32);
  sub_26A132994(a1 + v36, v19);
  v37 = __swift_getEnumTagSinglePayload(v19, 1, v4);
  result = sub_26A0E48F0(v19, &off_28036C7C0, &off_26A427400);
  if (v37 != 1)
  {
    v39 = v46;
    sub_26A132994(v48 + *(v26 + 32), v46);
    v40 = OUTLINED_FUNCTION_23(v39);
    if (v30)
    {
      OUTLINED_FUNCTION_13_16(v40);
      OUTLINED_FUNCTION_23(v39);
      if (!v30)
      {
        sub_26A0E48F0(v39, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A292280(v39, v47);
    }

    v41 = v49;
    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v49);
    OUTLINED_FUNCTION_5_25();
    sub_26A0E48F0(a1 + v36, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_2_28();
    sub_26A292280(v41, v42);
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v43, v44, v45, v4);
  }

  return result;
}

uint64_t StandardPlayerButton.init(playAction:pauseAction:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v8, v9, &protocol conformance descriptor for _ProtoStandardPlayerButton);
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A291C50(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = type metadata accessor for ActionProperty(0);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v19 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  (*(v18 + 8))(v19, v18);
  sub_26A292280(v17, v12);
  v20 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v21 = *(v20 + 28);
  sub_26A0E48F0(a1 + v21, &off_28036C7C0, &off_26A427400);
  sub_26A292280(v12, a1 + v21);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v34);
  v25 = a3[3];
  v26 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v25);
  (*(v26 + 8))(v25, v26);
  sub_26A292280(v17, v12);
  v27 = *(v20 + 32);
  sub_26A0E48F0(a1 + v27, &off_28036C7C0, &off_26A427400);
  sub_26A292280(v12, a1 + v27);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);

  *a1 = a4;
  a1[1] = a5;
  if (a7)
  {

    a1[2] = a6;
    a1[3] = a7;
  }

  return result;
}

Swift::String __swiftcall StandardPlayerButton.description(redacted:)(Swift::Bool redacted)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_36_2();
  v7 = type metadata accessor for StandardPlayerButton(v6);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF10, &qword_26A437E70);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  sub_26A292228(v1, v14);
  if (redacted)
  {
    sub_26A2917A8(v11);
  }

  else
  {
    sub_26A292228(v14, v11);
  }

  sub_26A292280(v11, v18);
  v18[*(v15 + 32)] = redacted;
  sub_26A292604(v14, type metadata accessor for StandardPlayerButton);
  *&v18[*(v15 + 28)] = MEMORY[0x277D84F90];
  StandardPlayerButton.playAction.getter(v2);
  v19 = type metadata accessor for ActionProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  sub_26A109978();
  sub_26A0E48F0(v2, &qword_28036CB18, &unk_26A427670);
  StandardPlayerButton.pauseAction.getter(v2);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_26A109978();
  sub_26A0E48F0(v2, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7EF8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v50, v51);

  v31 = swift_getKeyPath();
  sub_26A0F7EF8(v31, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v32, v33, v34, v35, v50, v51);

  sub_26A101188(v36, v37, v38, v39, v40, v41, v42);
  v44 = v43;
  v46 = v45;
  sub_26A0E48F0(v18, &qword_28036CF10, &qword_26A437E70);
  v47 = v44;
  v48 = v46;
  result._object = v48;
  result._countAndFlagsBits = v47;
  return result;
}

uint64_t type metadata accessor for StandardPlayerButton(uint64_t a1)
{
  result = qword_280371670;
  if (!qword_280371670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A292228(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t sub_26A292280(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return a2;
}

uint64_t StandardPlayerButton.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v1, v2, &protocol conformance descriptor for _ProtoStandardPlayerButton);

  return sub_26A424B44();
}

uint64_t StandardPlayerButton.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v0, v1, &protocol conformance descriptor for _ProtoStandardPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A292498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A2924E8(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoStandardPlayerButton(0);
  sub_26A292498(&qword_280371660, type metadata accessor for _ProtoStandardPlayerButton, &protocol conformance descriptor for _ProtoStandardPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A292598(uint64_t a1)
{
  result = type metadata accessor for _ProtoStandardPlayerButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A292604(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return sub_26A292604(v0, type metadata accessor for _ProtoActionProperty);
}

uint64_t OUTLINED_FUNCTION_13_16(uint64_t a1)
{
  *v1 = v2;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t BinaryButton.primaryButton.getter()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoBinaryButton(v8);
  sub_26A2928A4(v1 + *(v9 + 28), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = *(v6 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v2 + v10) = qword_280371710;
    v11 = OUTLINED_FUNCTION_95_1();

    if (v11 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A293AEC();
  }

  return sub_26A293AEC();
}

uint64_t sub_26A2928A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BinaryButton.secondaryButton.getter()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoBinaryButton(v8);
  sub_26A2928A4(v1 + *(v9 + 32), v3);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = *(v6 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4(&qword_28036C428);
    }

    *(v2 + v10) = qword_280371710;
    v11 = OUTLINED_FUNCTION_95_1();

    if (v11 != 1)
    {
      sub_26A0E48F0(v3, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A293AEC();
  }

  return sub_26A293AEC();
}

uint64_t _ProtoBinaryButton.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v46 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v47 = &v44 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v45 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  OUTLINED_FUNCTION_2_29();
  sub_26A293CB8();
  v24 = type metadata accessor for _ProtoBinaryButton(0);
  v25 = *(v24 + 28);
  sub_26A2928A4(a1 + v25, v23);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v2);
  sub_26A0E48F0(v23, &qword_28036EC48, &unk_26A4385C0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A2928A4(a1 + v25, v20);
    if (__swift_getEnumTagSinglePayload(v20, 1, v2) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v27 = *(v2 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *&v10[v27] = qword_280371710;
      v28 = __swift_getEnumTagSinglePayload(v20, 1, v2);

      if (v28 != 1)
      {
        sub_26A0E48F0(v20, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A293AEC();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_9_23();
    sub_26A293B3C(v10, v29);
    sub_26A0E48F0(a1 + v25, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_7_16();
    sub_26A293AEC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
  }

  v33 = *(v24 + 32);
  sub_26A2928A4(a1 + v33, v17);
  v34 = OUTLINED_FUNCTION_16_18();
  result = sub_26A0E48F0(v17, &qword_28036EC48, &unk_26A4385C0);
  if (v34 != 1)
  {
    v36 = v45;
    sub_26A2928A4(a1 + v33, v45);
    if (OUTLINED_FUNCTION_16_18() == 1)
    {
      v37 = v46;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v38 = *(v2 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4(&qword_28036C428);
      }

      *(v37 + v38) = qword_280371710;
      v39 = OUTLINED_FUNCTION_16_18();

      if (v39 != 1)
      {
        sub_26A0E48F0(v36, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v37 = v46;
      sub_26A293AEC();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_9_23();
    sub_26A293B3C(v37, v40);
    sub_26A0E48F0(a1 + v33, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_7_16();
    sub_26A293AEC();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v41, v42, v43, v2);
  }

  return result;
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:)()
{
  v1 = OUTLINED_FUNCTION_20_19();
  v2 = OUTLINED_FUNCTION_41(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  sub_26A293CB8();
  sub_26A293CB8();
  v9 = type metadata accessor for _ProtoBinaryButton(0);
  v17 = v8;
  v18 = v5;
  v19 = 0;
  v20 = 0xE000000000000000;
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v10, v11, &protocol conformance descriptor for _ProtoBinaryButton);
  v21 = 0;
  v22 = 0;
  sub_26A4249C4();
  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(v0, v12);
  v13 = OUTLINED_FUNCTION_175();
  sub_26A293B3C(v13, v14);
  sub_26A293B3C(v5, v9);
  return sub_26A293B3C(v8, v9);
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for _ProtoBinaryButton(0);
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v7, v8, &protocol conformance descriptor for _ProtoBinaryButton);
  sub_26A4249C4();

  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(a2, v9);
  v10 = OUTLINED_FUNCTION_175();
  return sub_26A293B3C(v10, v11);
}

uint64_t sub_26A293164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for _ProtoButton(0);
  MEMORY[0x28223BE20](v8);
  sub_26A293CB8();
  v9 = type metadata accessor for _ProtoBinaryButton(0);
  v10 = *(v9 + 28);
  sub_26A0E48F0(a1 + v10, &qword_28036EC48, &unk_26A4385C0);
  sub_26A293AEC();
  __swift_storeEnumTagSinglePayload(a1 + v10, 0, 1, v8);
  sub_26A293CB8();
  v11 = *(v9 + 32);
  sub_26A0E48F0(a1 + v11, &qword_28036EC48, &unk_26A4385C0);
  sub_26A293AEC();
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v8);

  *a1 = a4;
  a1[1] = a5;
  if (a7)
  {

    a1[2] = a6;
    a1[3] = a7;
  }

  return result;
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_20_19();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_26A293CB8();
  sub_26A293CB8();
  v15 = type metadata accessor for _ProtoBinaryButton(0);
  v23 = v14;
  v24 = v11;
  v25 = a3;
  v26 = a4;
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v16, v17, &protocol conformance descriptor for _ProtoBinaryButton);
  v27 = 0;
  v28 = 0;
  sub_26A4249C4();

  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(v4, v18);
  v19 = OUTLINED_FUNCTION_175();
  sub_26A293B3C(v19, v20);
  sub_26A293B3C(v11, v15);
  return sub_26A293B3C(v14, v15);
}

Swift::String __swiftcall BinaryButton.description(redacted:)(Swift::Bool redacted)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_36_2();
  v6 = type metadata accessor for BinaryButton(v5);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF08, &unk_26A426A90);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  OUTLINED_FUNCTION_6_18();
  sub_26A293CB8();
  if (redacted)
  {
    _ProtoBinaryButton.redactedProto.getter(v10);
  }

  else
  {
    sub_26A293CB8();
  }

  sub_26A293AEC();
  v17[*(v14 + 32)] = redacted;
  sub_26A293B3C(v13, type metadata accessor for BinaryButton);
  *&v17[*(v14 + 28)] = MEMORY[0x277D84F90];
  BinaryButton.primaryButton.getter();
  v18 = type metadata accessor for Button(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  sub_26A109DD8();
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  BinaryButton.secondaryButton.getter();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  sub_26A109DD8();
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  KeyPath = swift_getKeyPath();
  sub_26A0F7F98(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v26, v27, v28, v29, v49, v50);

  v30 = swift_getKeyPath();
  sub_26A0F8774(v30, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v31, v32, v33, v34, v49, v50);

  sub_26A101C80(v35, v36, v37, v38, v39, v40, v41);
  v43 = v42;
  v45 = v44;
  sub_26A0E48F0(v17, &qword_28036CF08, &unk_26A426A90);
  v46 = v43;
  v47 = v45;
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t BinaryButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoBinaryButton(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  v5 = type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v6 = *(v5 + 24);
  v7 = type metadata accessor for _ProtoSeparators(0);
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  OUTLINED_FUNCTION_2_29();
  sub_26A293CB8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_8_21();
  sub_26A293AEC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
}

uint64_t BinaryButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for BinaryButton(0);
  *(inited + 64) = &protocol witness table for BinaryButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_6_18();
  sub_26A293CB8();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A293B94(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for BinaryButton(uint64_t a1)
{
  result = qword_280371680;
  if (!qword_280371680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A293AEC()
{
  v1 = OUTLINED_FUNCTION_39_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A293B3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A293B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A293C4C(uint64_t a1)
{
  result = type metadata accessor for _ProtoBinaryButton(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A293CB8()
{
  v1 = OUTLINED_FUNCTION_39_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return type metadata accessor for _ProtoButton(0);
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return type metadata accessor for Button(0);
}

uint64_t OUTLINED_FUNCTION_21_17()
{

  return type metadata accessor for _ProtoBinaryButton(0);
}

void HorizontalListStandard.items.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371690, &qword_26A4380D0);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_36_2();
  v5 = type metadata accessor for HorizontalListStandard.Item(v4);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v31 = v6 - v7;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - v9;
  v10 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = 0;
  v15 = *v0;
  v16 = *(*v0 + 16);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v14)
    {
      OUTLINED_FUNCTION_75();
      return;
    }

    if (v14 >= *(v15 + 16))
    {
      break;
    }

    sub_26A2941BC();
    sub_26A2941BC();
    v17 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);
    sub_26A297528(v13, type metadata accessor for _ProtoHorizontalList_Standard.Item);
    OUTLINED_FUNCTION_37(v1, 1, v5);
    if (v20)
    {
      sub_26A0E48F0(v1, &qword_280371690, &qword_26A4380D0);
      ++v14;
    }

    else
    {
      sub_26A297494();
      sub_26A297494();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A168868(0, *(v32 + 16) + 1, 1, v32);
        v32 = v25;
      }

      v23 = *(v32 + 16);
      v22 = *(v32 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v28 = v23 + 1;
        sub_26A168868(v22 > 1, v23 + 1, 1, v32);
        v24 = v28;
        v32 = v26;
      }

      ++v14;
      *(v32 + 16) = v24;
      sub_26A297494();
    }
  }

  __break(1u);
}

uint64_t sub_26A2941BC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void HorizontalListStandard.text1.getter()
{
  OUTLINED_FUNCTION_76();
  v21 = v2;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  sub_26A10FD9C();
  v10 = 1;
  v11 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
  if (v11 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v10 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v10, 1, v20);
  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.init(items:text1:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_10_27();
  sub_26A297598(v5, v6, &protocol conformance descriptor for _ProtoHorizontalList_Standard);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  return sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A294570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v31 = a3;
  v32 = a1;
  v30 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HorizontalListStandard.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0) - 8;
  MEMORY[0x28223BE20](v13);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v26 = a5;
    v27 = v5;
    v35[0] = MEMORY[0x277D84F90];
    sub_26A10D70C(0, v14, 0);
    v15 = v35[0];
    v16 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    do
    {
      sub_26A2941BC();
      sub_26A297494();
      v35[0] = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A10D70C(v18 > 1, v19 + 1, 1);
        v15 = v35[0];
      }

      *(v15 + 16) = v19 + 1;
      sub_26A297494();
      v16 += v17;
      --v14;
    }

    while (v14);
    a5 = v26;
  }

  v20 = v32;

  *v20 = v15;
  sub_26A10FD9C();
  if (v34)
  {
    sub_26A0D671C(&v33, v35);
    v21 = v36;
    v22 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v22 + 8))(v21, v22);
    sub_26A297494();
    v23 = *(type metadata accessor for _ProtoHorizontalList_Standard(0) + 28);
    sub_26A0E48F0(v20 + v23, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A297494();
    __swift_storeEnumTagSinglePayload(v20 + v23, 0, 1, v30);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_26A0E48F0(&v33, &qword_28036CB08, &unk_26A428720);
  }

  v20[1] = v38;
  v20[2] = a5;
  return result;
}

uint64_t HorizontalListStandard.init(items:text1:)(uint64_t a1, uint64_t a2)
{
  sub_26A10FD9C();
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_10_27();
  sub_26A297598(v3, v4, &protocol conformance descriptor for _ProtoHorizontalList_Standard);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
}

uint64_t HorizontalListStandard.Item.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20));
  result = OUTLINED_FUNCTION_142(v3 + 16, v6);
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t HorizontalListStandard.Item.thumbnail.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  v6 = type metadata accessor for _ProtoVisualProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoHorizontalList_Standard.Item(v8);
  OUTLINED_FUNCTION_142(*(v1 + *(v9 + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, v23);
  OUTLINED_FUNCTION_54_1();
  v10 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v10, v11, v6);
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    v20 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v20, v21, v6);
    if (!v12)
    {
      sub_26A0E48F0(v2, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A297494();
  }

  return sub_26A297494();
}

uint64_t HorizontalListStandard.Item.text1.getter()
{
  v3 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_51_1();
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_36_2();
  v9 = type metadata accessor for _ProtoHorizontalList_Standard.Item(v8);
  OUTLINED_FUNCTION_142(*(v1 + *(v9 + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1, v23);
  OUTLINED_FUNCTION_54_1();
  v10 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v10, v11, v6);
  if (v12)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    v20 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v20, v21, v6);
    if (!v12)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A297494();
  }

  return sub_26A297494();
}

void HorizontalListStandard.Item.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v23 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93_0();
  v11 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2, &v24);
  OUTLINED_FUNCTION_127_0();
  v12 = 1;
  v13 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  if (v13 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v15 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v12 = 0;
  }

  v22 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v23, v12, 1, v22);
  OUTLINED_FUNCTION_75();
}

void HorizontalListStandard.Item.action.getter()
{
  OUTLINED_FUNCTION_76();
  v16 = v3;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_93_0();
  v11 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_142(*(v0 + *(v11 + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__action, &v17);
  OUTLINED_FUNCTION_127_0();
  v12 = 1;
  v13 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  if (v13 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v12 = 0;
  }

  v15 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v12, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.Item.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void HorizontalListStandard.Item.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v119 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v116 = v3 - v4;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v115 = v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v113 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  v112 = (v110 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v114 = v13 - v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v117 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v118 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v111 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  v22 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  v110[0] = v24 - v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  v28 = v110 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  v110[1] = v31 - v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  v35 = v110 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = v110 - v37;
  OUTLINED_FUNCTION_11_22();
  sub_26A2941BC();
  v120 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  v121 = v1;
  v39 = *(v1 + v120);
  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, &v124);
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v38, 1, v22);
  sub_26A0E48F0(v38, &qword_28036CAE8, &unk_26A426430);
  v40 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v35, 1, v22);
    if (v41)
    {
      *v28 = v40;
      *(v28 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v42 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
      OUTLINED_FUNCTION_37(v35, 1, v22);
      v49 = v121;
      if (!v41)
      {
        sub_26A0E48F0(v35, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A297494();
      v49 = v121;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A297528(v28, type metadata accessor for _ProtoVisualProperty);
    v50 = v120;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v49 + v50);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      v39 = v52;
      *(v49 + v50) = v52;
    }

    sub_26A297494();
    v53 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v22);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1, &v123);
  sub_26A10FD9C();
  v56 = OUTLINED_FUNCTION_107();
  v57 = v119;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, v58, v119);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v60, v61, v62);
  if (EnumTagSinglePayload != 1)
  {
    v63 = v111;
    sub_26A10FD9C();
    v64 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v64, v65, v57);
    if (v41)
    {
      v75 = v112;
      *v112 = v40;
      *(v75 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v66 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v66);
      v73 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v73, v74, v57);
      v77 = v120;
      v76 = v121;
      if (!v41)
      {
        sub_26A0E48F0(v63, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v75 = v112;
      sub_26A297494();
      v77 = v120;
      v76 = v121;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_24();
    sub_26A297528(v75, v78);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v76 + v77);
    if ((v79 & 1) == 0)
    {
      type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      v39 = v80;
      *(v76 + v77) = v80;
    }

    sub_26A297494();
    v81 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v57);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v39 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text2, &v122);
  sub_26A10FD9C();
  v84 = OUTLINED_FUNCTION_107();
  v86 = __swift_getEnumTagSinglePayload(v84, v85, v57);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v87, v88, v89);
  if (v86 != 1)
  {
    v90 = v114;
    sub_26A10FD9C();
    v91 = OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_37(v91, v92, v57);
    if (v41)
    {
      v102 = v115;
      *v115 = v40;
      *(v102 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v93 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v93);
      v100 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_37(v100, v101, v57);
      v103 = v121;
      if (!v41)
      {
        sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v102 = v115;
      sub_26A297494();
      v103 = v121;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_24();
    sub_26A297528(v102, v104);
    v105 = v120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      *(v103 + v105) = v106;
    }

    sub_26A297494();
    v107 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v57);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.Item.init(style:thumbnail:text1:text2:action:componentName:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v11, v12, &protocol conformance descriptor for _ProtoHorizontalList_Standard.Item);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_26A295E7C(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v56 = a8;
  v53 = a7;
  v51 = a6;
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v46 = a2;
  v10 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = v43 - v13;
  v54 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v54);
  v43[1] = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = v43 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v43 - v18;
  v50 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v50);
  v43[0] = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v22 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v22 - 8);
  v23 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v23 - 8);
  v24 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v24 - 8);
  v25 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a1 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
    swift_allocObject();
    sub_26A1F9840();
    v27 = v28;
    *(a1 + v25) = v28;
  }

  v52 = a9;
  swift_beginAccess();
  *(v27 + 16) = v46;
  *(v27 + 24) = v47 & 1;
  v29 = v48[3];
  v30 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v29);
  (*(v30 + 8))(v29, v30);
  sub_26A297494();
  _ProtoHorizontalList_Standard.Item.thumbnail.setter();
  v31 = v49[3];
  v32 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v31);
  (*(v32 + 8))(v31, v32);
  sub_26A297494();
  _ProtoHorizontalList_Standard.Item.text1.setter();
  sub_26A10FD9C();
  v33 = v58;
  if (v58)
  {
    v34 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v34 + 8))(v33, v34);
    sub_26A297494();
    v35 = v50;
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v50);
    __swift_destroy_boxed_opaque_existential_1(v57);
    if (__swift_getEnumTagSinglePayload(v19, 1, v35) != 1)
    {
      v36 = v43[0];
      sub_26A297494();
      sub_26A2941BC();
      _ProtoHorizontalList_Standard.Item.text2.setter();
      sub_26A297528(v36, type metadata accessor for _ProtoTextProperty);
      goto LABEL_8;
    }
  }

  else
  {
    sub_26A0E48F0(v57, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v50);
  }

  sub_26A0E48F0(v19, &qword_28036C7B8, &unk_26A425BF0);
LABEL_8:
  sub_26A10FD9C();
  v37 = v58;
  if (!v58)
  {
    sub_26A0E48F0(v57, &qword_28036CAF8, &unk_26A426D30);
    v39 = v55;
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v54);
    goto LABEL_12;
  }

  v38 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v38 + 8))(v37, v38);
  v39 = v55;
  sub_26A297494();
  v40 = v54;
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
LABEL_12:
    sub_26A0E48F0(v39, &off_28036C7C0, &off_26A427400);
    goto LABEL_13;
  }

  v41 = v44;
  sub_26A297494();
  sub_26A2941BC();
  _ProtoHorizontalList_Standard.Item.action.setter();
  sub_26A297528(v41, type metadata accessor for _ProtoActionProperty);
LABEL_13:

  return _ProtoHorizontalList_Standard.Item.componentName.setter();
}

uint64_t HorizontalListStandard.Item.init(style:thumbnail:text1:text2:action:)(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_26A0E5D68(a2, v15);
  sub_26A0E5D68(a3, v14);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v9, v10, &protocol conformance descriptor for _ProtoHorizontalList_Standard.Item);
  sub_26A4249C4();
  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_26A0E48F0(v12, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v13, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

Swift::String __swiftcall HorizontalListStandard.Item.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v112 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_36_2();
  v108 = type metadata accessor for _ProtoTextProperty(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v109 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v111 = v15 - v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  v110 = &v104 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v104 - v21;
  v106 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  v31 = type metadata accessor for HorizontalListStandard.Item(0);
  v32 = OUTLINED_FUNCTION_41(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v33);
  v35 = &v104 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v39 = &v104 - v38;
  sub_26A2941BC();
  v107 = v22;
  if (v3)
  {
    HorizontalListStandard.Item.redactedProto.getter();
  }

  else
  {
    sub_26A2941BC();
  }

  sub_26A297494();
  v39[*(v36 + 32)] = v3 & 1;
  sub_26A297528(v35, type metadata accessor for HorizontalListStandard.Item);
  v40 = *(v36 + 28);
  *&v39[v40] = MEMORY[0x277D84F90];
  v115 = 0;
  v116 = 0xE000000000000000;
  v41 = *&v39[*(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20)];
  OUTLINED_FUNCTION_142(v41 + 16, &v117);
  v42 = *(v41 + 24);
  v113 = *(v41 + 16);
  v114 = v42;
  sub_26A424FA4();
  v43 = v115;
  v44 = v116;
  v45 = HIBYTE(v116) & 0xF;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v45 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v105 = v1;

    sub_26A166EC4(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = v46;
    v49 = *(v46 + 16);
    v48 = *(v46 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_26A166EC4(v48 > 1, v49 + 1, 1, v46);
      v47 = v102;
    }

    *(v47 + 16) = v49 + 1;
    v50 = v47 + 32 * v49;
    *(v50 + 32) = xmmword_26A4380C0;
    *(v50 + 48) = v43;
    *(v50 + 56) = v44;
    *&v39[v40] = v47;
    v1 = v105;
  }

  else
  {
  }

  OUTLINED_FUNCTION_142(v41 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__thumbnail, &v115);
  v51 = v107;
  sub_26A10FD9C();
  v52 = OUTLINED_FUNCTION_166_1();
  v53 = v106;
  OUTLINED_FUNCTION_37(v52, v54, v106);
  v56 = v108;
  v55 = v109;
  if (v57)
  {
    *v26 = MEMORY[0x277D84F90];
    *(v26 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v105 = v41;
    v58 = type metadata accessor for _ProtoActionProperty(0);
    v41 = v105;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v58);
    v65 = OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_37(v65, v66, v53);
    if (!v57)
    {
      sub_26A0E48F0(v51, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A297494();
  }

  sub_26A297494();
  v67 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v67);
  sub_26A10426C(v30, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v30, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_142(v41 + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__text1, &v113);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v1, 1, v56);
  if (v57)
  {
    *v55 = MEMORY[0x277D84F90];
    *(v55 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v68 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v68);
    OUTLINED_FUNCTION_37(v1, 1, v56);
    if (!v57)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A297494();
  }

  v75 = v110;
  sub_26A297494();
  v76 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v76);
  sub_26A104244(v75, 0x3174786574, 0xE500000000000000);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v77, v78, v79);
  v80 = v111;
  HorizontalListStandard.Item.text2.getter();
  sub_26A104244(v80, 0x3274786574, 0xE500000000000000);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v81, v82, v83);
  v84 = v112;
  HorizontalListStandard.Item.action.getter();
  sub_26A104140();
  sub_26A0E48F0(v84, &qword_28036CB18, &unk_26A427670);
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_20();
  sub_26A0F7688(v85, v86, v87, v88, v89, v90, v91, v92, v104, v105);

  sub_26A0F9B8C(v93, v94, v95, v96, v97, v98, v99);
  sub_26A0E48F0(v39, &qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v101;
  result._countAndFlagsBits = v100;
  return result;
}