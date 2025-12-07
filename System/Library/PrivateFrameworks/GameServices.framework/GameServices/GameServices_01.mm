uint64_t sub_1D844A924(unsigned __int8 a1, char a2)
{
  v2 = 0x646E6F636573;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646E6F636573;
  switch(v4)
  {
    case 1:
      v5 = 0x6574756E696DLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1920298856;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7954788;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6574756E696DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1920298856;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7954788;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 5:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8581AB8();
  }

  return v8 & 1;
}

BOOL sub_1D844AAA4(uint64_t a1, uint64_t a2)
{
  sub_1D84820C8();
  sub_1D85813D8();
  sub_1D85813D8();
  return v4 == v3;
}

uint64_t sub_1D844AB18(char a1, char a2)
{
  sub_1D8482160();
  sub_1D85813D8();
  sub_1D85813D8();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D8581AB8();
  }

  return v3 & 1;
}

uint64_t sub_1D844ABC8()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_237();
  v4 = v1 == v2 && v3 == 0xEA00000000006E6FLL;
  if (v4 || (OUTLINED_FUNCTION_7(v2, 0xEA00000000006E6FLL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_441();
    v7 = v4 && v0 == 0xEA00000000006465;
    if (v7 || (OUTLINED_FUNCTION_7(v6, 0xEA00000000006465) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_440();
      v9 = v4 && v0 == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_7(v8, 0xE800000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_223();
        if (v1 == v10 && v0 == v11)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_7(v10, v11);
          OUTLINED_FUNCTION_369();
          if (v1)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_1D844ACB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_237();
  switch(v2)
  {
    case 1:
      result = 0x7669686372417369;
      break;
    case 2:
      result = OUTLINED_FUNCTION_318();
      break;
    case 3:
      result = OUTLINED_FUNCTION_223();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844AD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844ABC8();
  *a1 = result;
  return result;
}

uint64_t sub_1D844AD70()
{
  sub_1D84669DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844ADA8()
{
  sub_1D84669DC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844ADE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(0x65756C6176, 0xE500000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D844AE44()
{
  OUTLINED_FUNCTION_392();
  if (v2 == 0x6C62616B63617274 && v1 == v3)
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(0x6C62616B63617274, 0xE900000000000065, v2);
    OUTLINED_FUNCTION_369();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D844AEB8()
{
  sub_1D8466BD4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AEF0()
{
  sub_1D8466BD4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844AF50()
{
  sub_1D8466B80();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AF88()
{
  sub_1D8466B80();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844AFC0()
{
  sub_1D8466A30();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844AFF8()
{
  sub_1D8466A30();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844B074()
{
  sub_1D8466AD8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844B0AC()
{
  sub_1D8466AD8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinitionFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A40, &qword_1D8590A80);
  OUTLINED_FUNCTION_1();
  v31 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A48, &qword_1D8590A88);
  OUTLINED_FUNCTION_1();
  v30 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A50, &qword_1D8590A90);
  OUTLINED_FUNCTION_1();
  v28 = v10;
  v29 = v9;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_129();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A58, &qword_1D8590A98);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38A60, &unk_1D8590AA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_200();
  v32 = v0[1];
  v33 = *v0;
  v15 = *(v0 + 16);
  v16 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84669DC();
  sub_1D8581BB8();
  switch(v15)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      sub_1D8466B80();
      OUTLINED_FUNCTION_375(&type metadata for ChallengeDefinitionFilter.IsArchivedCodingKeys, &v34);
      v25 = v29;
      sub_1D8581A18();
      v27 = *(v28 + 8);
      v26 = v2;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_340();
      sub_1D8466AD8();
      OUTLINED_FUNCTION_375(&type metadata for ChallengeDefinitionFilter.TrackingCodingKeys, &v34);
      v34 = v33;
      v35 = v32;
      sub_1D8466B2C();
      v25 = v30;
      sub_1D8581A58();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_394();
      sub_1D8466A30();
      OUTLINED_FUNCTION_375(&type metadata for ChallengeDefinitionFilter.ReleaseStateCodingKeys, &v34);
      LOBYTE(v34) = v33;
      sub_1D8466A84();
      v25 = v31;
      sub_1D8581A58();
LABEL_5:
      v26 = OUTLINED_FUNCTION_212_0();
LABEL_7:
      v27(v26, v25);
      OUTLINED_FUNCTION_267();
      v22 = v1;
      v23 = v16;
      break;
    default:
      sub_1D8466BD4();
      OUTLINED_FUNCTION_234();
      sub_1D8581988();
      v34 = v33;
      v35 = v32;
      v17 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v19);
      OUTLINED_FUNCTION_277();
      sub_1D8581A58();
      v20 = OUTLINED_FUNCTION_275();
      v21(v20, v12);
      OUTLINED_FUNCTION_267();
      v22 = OUTLINED_FUNCTION_497();
      break;
  }

  v24(v22, v23);
  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinitionFilter.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(*(v1 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      sub_1D8581B78();
      break;
    case 2:
      MEMORY[0x1DA7191F0](2);
      if (v2)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_447();
      break;
    case 3:
      MEMORY[0x1DA7191F0](3);
      sub_1D846779C();
      goto LABEL_5;
    default:
LABEL_3:
      OUTLINED_FUNCTION_429();
      v3 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v5);
      OUTLINED_FUNCTION_161();
LABEL_5:
      sub_1D85811E8();
      break;
  }
}

void ChallengeDefinitionFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v75 = v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AA8, &qword_1D8590AB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AB0, &qword_1D8590AC0);
  OUTLINED_FUNCTION_1();
  v74 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AB8, &qword_1D8590AC8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_250_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AC0, &qword_1D8590AD0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AC8, &qword_1D8590AD8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_251();
  v12 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v12, v13);
  v14 = sub_1D84669DC();
  OUTLINED_FUNCTION_458(&type metadata for ChallengeDefinitionFilter.CodingKeys, v15, v14);
  if (!v0)
  {
    v16 = sub_1D8581968();
    sub_1D8440880(v16, 0);
    v18 = v17;
    if (v20 != v19 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v25 == v26)
      {
        __break(1u);
        return;
      }

      v72 = *(v24 + v22);
      sub_1D84408DC(v22 + 1, v21, v18, v24, v22, v23);
      OUTLINED_FUNCTION_526();
      if (!v18)
      {
        switch(v72)
        {
          case 1:
            OUTLINED_FUNCTION_290();
            sub_1D8466B80();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533(v46, v47, v48, v49);
            OUTLINED_FUNCTION_492();
            v67 = sub_1D8581918();
            swift_unknownObjectRelease();
            v68 = OUTLINED_FUNCTION_126();
            v69(v68);
            v70 = OUTLINED_FUNCTION_123_0();
            v71(v70);
            v61 = 0;
            v62 = v67 & 1;
            break;
          case 2:
            OUTLINED_FUNCTION_340();
            sub_1D8466AD8();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533(v38, v39, v40, v41);
            sub_1D84738D0();
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v53 = OUTLINED_FUNCTION_211();
            v54(v53, v74);
            v55 = OUTLINED_FUNCTION_258();
            v56(v55);
            goto LABEL_14;
          case 3:
            OUTLINED_FUNCTION_394();
            sub_1D8466A30();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533(v42, v43, v44, v45);
            sub_1D847387C();
            OUTLINED_FUNCTION_274();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v57 = OUTLINED_FUNCTION_211();
            v58(v57, v73);
            v59 = OUTLINED_FUNCTION_258();
            v60(v59);
            v61 = 0;
            v62 = v76;
            break;
          default:
            LOBYTE(v76) = 0;
            sub_1D8466BD4();
            OUTLINED_FUNCTION_234();
            OUTLINED_FUNCTION_533(v27, v28, v29, v30);
            v50 = OUTLINED_FUNCTION_189();
            __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
            OUTLINED_FUNCTION_2_0();
            sub_1D848211C(v52);
            OUTLINED_FUNCTION_259();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v63 = OUTLINED_FUNCTION_362();
            v64(v63, v9);
            v65 = OUTLINED_FUNCTION_123_0();
            v66(v65);
LABEL_14:
            v62 = v76;
            v61 = v77;
            break;
        }

        *v75 = v62;
        *(v75 + 8) = v61;
        *(v75 + 16) = v72;
        __swift_destroy_boxed_opaque_existential_1(v2);
        goto LABEL_10;
      }
    }

    v31 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v31, MEMORY[0x1E69E6B28]);
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v33 = &type metadata for ChallengeDefinitionFilter;
    v34 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v34);
    OUTLINED_FUNCTION_206_0();
    (*(v35 + 104))(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_220_0();
    v36 = OUTLINED_FUNCTION_509();
    v37(v36);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_10:
  OUTLINED_FUNCTION_284_0();
}

uint64_t static ChallengeFilter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_434();
  switch(v6)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_37;
      }

      v104 = OUTLINED_FUNCTION_133();
      sub_1D8473924(v104, v105, v106);
      v107 = OUTLINED_FUNCTION_138();
      sub_1D8473924(v107, v108, v109);
      v110 = OUTLINED_FUNCTION_138();
      sub_1D8473924(v110, v111, v112);
      v113 = OUTLINED_FUNCTION_133();
      v116 = sub_1D8473924(v113, v114, v115);
      v23 = OUTLINED_FUNCTION_145(v116, v117, v118, v119, &qword_1ECA38A78, &unk_1D85A22B0);
      v120 = OUTLINED_FUNCTION_138();
      sub_1D847393C(v120, v121, v122);
      v123 = OUTLINED_FUNCTION_133();
      sub_1D847393C(v123, v124, v125);
      v126 = OUTLINED_FUNCTION_133();
      sub_1D847393C(v126, v127, v128);
      v33 = OUTLINED_FUNCTION_138();
      goto LABEL_12;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_37;
      }

      v54 = OUTLINED_FUNCTION_136();
      sub_1D8473924(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_141();
      sub_1D8473924(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_141();
      sub_1D8473924(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_136();
      v66 = sub_1D8473924(v63, v64, v65);
      v23 = OUTLINED_FUNCTION_145(v66, v67, v68, v69, &qword_1ECA38B38, &qword_1D85981B0);
      v70 = OUTLINED_FUNCTION_141();
      sub_1D847393C(v70, v71, v72);
      v73 = OUTLINED_FUNCTION_136();
      sub_1D847393C(v73, v74, v75);
      v76 = OUTLINED_FUNCTION_136();
      sub_1D847393C(v76, v77, v78);
      v33 = OUTLINED_FUNCTION_141();
      goto LABEL_12;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_37;
      }

      v79 = OUTLINED_FUNCTION_135();
      sub_1D8473924(v79, v80, v81);
      v82 = OUTLINED_FUNCTION_140();
      sub_1D8473924(v82, v83, v84);
      v85 = OUTLINED_FUNCTION_140();
      sub_1D8473924(v85, v86, v87);
      v88 = OUTLINED_FUNCTION_135();
      v91 = sub_1D8473924(v88, v89, v90);
      v23 = OUTLINED_FUNCTION_145(v91, v92, v93, v94, &qword_1ECA389B8, &qword_1D8590B30);
      v95 = OUTLINED_FUNCTION_140();
      sub_1D847393C(v95, v96, v97);
      v98 = OUTLINED_FUNCTION_135();
      sub_1D847393C(v98, v99, v100);
      v101 = OUTLINED_FUNCTION_135();
      sub_1D847393C(v101, v102, v103);
      v33 = OUTLINED_FUNCTION_140();
      goto LABEL_12;
    case 4:
      if (v5 != 4)
      {
        goto LABEL_37;
      }

      v36 = OUTLINED_FUNCTION_183();
      sub_1D8473924(v36, v37, 4u);
      v38 = OUTLINED_FUNCTION_151();
      sub_1D8473924(v38, v39, 4u);
      v40 = OUTLINED_FUNCTION_151();
      sub_1D8473924(v40, v41, 4u);
      v42 = OUTLINED_FUNCTION_183();
      v44 = sub_1D8473924(v42, v43, 4u);
      v23 = OUTLINED_FUNCTION_145(v44, v45, v46, v47, &qword_1ECA389B8, &qword_1D8590B30);
      v48 = OUTLINED_FUNCTION_151();
      sub_1D847393C(v48, v49, 4u);
      v50 = OUTLINED_FUNCTION_183();
      sub_1D847393C(v50, v51, 4u);
      v52 = OUTLINED_FUNCTION_183();
      sub_1D847393C(v52, v53, 4u);
      v33 = OUTLINED_FUNCTION_151();
      v35 = 4;
      goto LABEL_12;
    case 5:
      if (!(v1 | v0))
      {
        if (v5 != 5 || (v2 | v3) != 0)
        {
          goto LABEL_37;
        }

        v134 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v134, v135, 5u);
        v136 = 0;
LABEL_40:
        sub_1D847393C(v136, 0, 5u);
        v23 = 1;
        return v23 & 1;
      }

      if (v1 ^ 1 | v0)
      {
        if (v5 != 5 || v3 != 2 || v2 != 0)
        {
          goto LABEL_37;
        }

        v148 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v148, v149, 5u);
        v136 = 2;
        goto LABEL_40;
      }

      if (v5 != 5 || v3 != 1 || v2 != 0)
      {
LABEL_37:
        v139 = OUTLINED_FUNCTION_151();
        sub_1D8473924(v139, v140, v4);
        v141 = OUTLINED_FUNCTION_183();
        sub_1D8473924(v141, v142, v5);
        v143 = OUTLINED_FUNCTION_151();
        sub_1D847393C(v143, v144, v4);
        v145 = OUTLINED_FUNCTION_183();
        sub_1D847393C(v145, v146, v5);
        v23 = 0;
        return v23 & 1;
      }

      v131 = OUTLINED_FUNCTION_151();
      sub_1D847393C(v131, v132, 5u);
      v23 = 1;
      v33 = 1;
      v34 = 0;
      v35 = 5;
LABEL_12:
      sub_1D847393C(v33, v34, v35);
      return v23 & 1;
    default:
      if (v5)
      {
        goto LABEL_37;
      }

      v7 = OUTLINED_FUNCTION_134();
      sub_1D8473924(v7, v8, v9);
      v10 = OUTLINED_FUNCTION_139();
      sub_1D8473924(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_139();
      sub_1D8473924(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_134();
      v19 = sub_1D8473924(v16, v17, v18);
      v23 = OUTLINED_FUNCTION_145(v19, v20, v21, v22, &qword_1ECA38B48, &qword_1D8590B40);
      v24 = OUTLINED_FUNCTION_139();
      sub_1D847393C(v24, v25, v26);
      v27 = OUTLINED_FUNCTION_134();
      sub_1D847393C(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_134();
      sub_1D847393C(v30, v31, v32);
      v33 = OUTLINED_FUNCTION_139();
      goto LABEL_12;
  }
}

uint64_t sub_1D844C198()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v2 = OUTLINED_FUNCTION_58();
  v5 = v1 == v2 && v3 == v4;
  if (v5 || (OUTLINED_FUNCTION_143(v2, 101) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_237();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_7(v7, 0xEA00000000006E6FLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = v1 == 1701667175 && v0 == 0xE400000000000000;
      if (v10 || (OUTLINED_FUNCTION_7(1701667175, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_172();
        v12 = v1 == v11 && v0 == 0xE700000000000000;
        if (v12 || (OUTLINED_FUNCTION_7(v11, 0xE700000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_474();
          v15 = v1 == v13 && v0 == v14;
          if (v15 || (OUTLINED_FUNCTION_7(v13, v14) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v16 = v1 == 0x657669746361 && v0 == 0xE600000000000000;
            if (v16 || (OUTLINED_FUNCTION_7(0x657669746361, 0xE600000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = OUTLINED_FUNCTION_433();
              v18 = v5 && v0 == 0xE800000000000000;
              if (v18 || (OUTLINED_FUNCTION_7(v17, 0xE800000000000000) & 1) != 0)
              {

                return 6;
              }

              else if (v1 == 7237495 && v0 == 0xE300000000000000)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_7(7237495, 0xE300000000000000);
                OUTLINED_FUNCTION_369();
                if (v1)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D844C360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_58();
  switch(v2)
  {
    case 1:
      result = OUTLINED_FUNCTION_237();
      break;
    case 2:
      result = OUTLINED_FUNCTION_384();
      break;
    case 3:
      result = OUTLINED_FUNCTION_172();
      break;
    case 4:
      result = OUTLINED_FUNCTION_474();
      break;
    case 5:
      result = 0x657669746361;
      break;
    case 6:
      result = OUTLINED_FUNCTION_345();
      break;
    case 7:
      result = 7237495;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844C458()
{
  sub_1D8473A50();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C490()
{
  sub_1D8473A50();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C4C8()
{
  sub_1D8473BF4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C500()
{
  sub_1D8473BF4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844C198();
  *a1 = result;
  return result;
}

uint64_t sub_1D844C570()
{
  sub_1D8473954();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C5A8()
{
  sub_1D8473954();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C5E0()
{
  sub_1D84739FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C618()
{
  sub_1D84739FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C650()
{
  sub_1D8473AF8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C688()
{
  sub_1D8473AF8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C6C0()
{
  sub_1D8473BA0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C6F8()
{
  sub_1D8473BA0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C780()
{
  sub_1D8473B4C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C7B8()
{
  sub_1D8473B4C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C7F0()
{
  sub_1D8473AA4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C828()
{
  sub_1D8473AA4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844C860@<X0>(_BYTE *a1@<X8>)
{
  result = j__swift_bridgeObjectRelease();
  *a1 = 1;
  return result;
}

uint64_t sub_1D844C890()
{
  sub_1D84739A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844C8C8()
{
  sub_1D84739A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeFilter.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AF0, &qword_1D8590AE8);
  OUTLINED_FUNCTION_1();
  v107 = v25;
  v108 = v24;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_196();
  v106 = v27;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AF8, &qword_1D8590AF0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_196();
  v104 = v29;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B00, &qword_1D8590AF8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B08, &qword_1D8590B00);
  OUTLINED_FUNCTION_1();
  v118 = v32;
  v119 = v31;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_196();
  v117 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B10, &qword_1D8590B08);
  OUTLINED_FUNCTION_1();
  v115 = v36;
  v116 = v35;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_196();
  v114 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B18, &qword_1D8590B10);
  OUTLINED_FUNCTION_1();
  v112 = v40;
  v113 = v39;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_196();
  v111 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B20, &qword_1D8590B18);
  OUTLINED_FUNCTION_1();
  v109 = v44;
  v110 = v43;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_129();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B28, &qword_1D8590B20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_200();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B30, &qword_1D8590B28);
  OUTLINED_FUNCTION_1();
  v121 = v48;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_199();
  v120 = *v20;
  v50 = *(v20 + 16);
  v51 = OUTLINED_FUNCTION_367();
  OUTLINED_FUNCTION_260(v51, v52);
  sub_1D8473954();
  sub_1D8581BB8();
  switch(v50)
  {
    case 1:
      v122[0] = 1;
      sub_1D8473BA0();
      OUTLINED_FUNCTION_179(&type metadata for ChallengeFilter.DefinitionCodingKeys, v122);
      OUTLINED_FUNCTION_432();
      v87 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v89);
      v90 = OUTLINED_FUNCTION_437();
      v65 = v110;
      OUTLINED_FUNCTION_287(v90, v91, v92, v93, v94);
      v70 = v109;
      goto LABEL_7;
    case 2:
      v122[0] = 2;
      sub_1D8473B4C();
      v22 = v111;
      OUTLINED_FUNCTION_179(&type metadata for ChallengeFilter.GameCodingKeys, v122);
      OUTLINED_FUNCTION_432();
      v71 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v73);
      v74 = OUTLINED_FUNCTION_437();
      v65 = v113;
      OUTLINED_FUNCTION_287(v74, v75, v76, v77, v78);
      v70 = v112;
      goto LABEL_7;
    case 3:
      v122[0] = 3;
      sub_1D8473AF8();
      v22 = v114;
      OUTLINED_FUNCTION_179(&type metadata for ChallengeFilter.CreatorCodingKeys, v122);
      OUTLINED_FUNCTION_432();
      v79 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v81);
      v82 = OUTLINED_FUNCTION_437();
      v65 = v116;
      OUTLINED_FUNCTION_287(v82, v83, v84, v85, v86);
      v70 = v115;
      goto LABEL_7;
    case 4:
      v122[0] = 4;
      sub_1D8473AA4();
      v22 = v117;
      OUTLINED_FUNCTION_179(&type metadata for ChallengeFilter.ParticipantCodingKeys, v122);
      OUTLINED_FUNCTION_432();
      v61 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v63);
      v64 = OUTLINED_FUNCTION_437();
      v65 = v119;
      OUTLINED_FUNCTION_287(v64, v66, v67, v68, v69);
      v70 = v118;
LABEL_7:
      (*(v70 + 8))(v22, v65);
      v59 = OUTLINED_FUNCTION_212_0();
      v60 = v21;
      goto LABEL_8;
    case 5:
      if (v120 == 0)
      {
        v122[0] = 5;
        sub_1D8473A50();
        v95 = v121;
        OUTLINED_FUNCTION_274();
        sub_1D8581988();
        v99 = OUTLINED_FUNCTION_276();
        v100(v99, v103);
        OUTLINED_FUNCTION_267();
        v102 = v23;
      }

      else
      {
        v95 = v121;
        if (v120 ^ 1 | *(&v120 + 1))
        {
          v122[0] = 7;
          sub_1D84739A8();
          OUTLINED_FUNCTION_274();
          sub_1D8581988();
          v98 = v108;
          v96 = *(v107 + 8);
          v97 = v106;
        }

        else
        {
          v122[0] = 6;
          sub_1D84739FC();
          OUTLINED_FUNCTION_274();
          sub_1D8581988();
          OUTLINED_FUNCTION_336();
          v97 = v104;
          v98 = v105;
        }

        v96(v97, v98);
        OUTLINED_FUNCTION_267();
        v102 = v23;
      }

      v101(v102, v95);
      goto LABEL_9;
    default:
      v122[0] = 0;
      sub_1D8473BF4();
      sub_1D8581988();
      OUTLINED_FUNCTION_432();
      v53 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v55);
      OUTLINED_FUNCTION_437();
      sub_1D8581A58();
      v56 = OUTLINED_FUNCTION_276();
      v57(v56, v46);
      OUTLINED_FUNCTION_267();
      v59 = v23;
      v60 = v121;
LABEL_8:
      v58(v59, v60);
LABEL_9:
      OUTLINED_FUNCTION_435();
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t ChallengeFilter.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  switch(*(v1 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      v11 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      goto LABEL_8;
    case 2:
      MEMORY[0x1DA7191F0](2);
      v7 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      goto LABEL_8;
    case 3:
      v6 = 3;
      goto LABEL_6;
    case 4:
      v6 = 4;
LABEL_6:
      MEMORY[0x1DA7191F0](v6);
      v9 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
      goto LABEL_8;
    case 5:
      if (v3 | v2)
      {
        if (v3 ^ 1 | v2)
        {
          v15 = 7;
        }

        else
        {
          v15 = 6;
        }
      }

      else
      {
        v15 = 5;
      }

      return MEMORY[0x1DA7191F0](v15);
    default:
      OUTLINED_FUNCTION_429();
      v4 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
LABEL_8:
      OUTLINED_FUNCTION_6();
      sub_1D848211C(v13);
      OUTLINED_FUNCTION_161();
      return sub_1D85811E8();
  }
}

void ChallengeFilter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_285();
  v22 = v21;
  v112 = v23;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B68, &qword_1D8590B48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B70, &qword_1D8590B50);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_196();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B78, &qword_1D8590B58);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B80, &qword_1D8590B60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B88, &qword_1D8590B68);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B90, &qword_1D8590B70);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B98, &qword_1D8590B78);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BA0, &qword_1D8590B80);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BA8, &qword_1D8590B88);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_128();
  v114 = v22;
  v33 = OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_260(v33, v34);
  sub_1D8473954();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v20)
  {
    v35 = sub_1D8581968();
    sub_1D8440880(v35, 0);
    v37 = v36;
    if (v39 != v38 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v44 == v45)
      {
        __break(1u);
        return;
      }

      v46 = *(v43 + v41);
      sub_1D84408DC(v41 + 1, v40, v37, v43, v41, v42);
      v48 = v47;
      v50 = v49;
      swift_unknownObjectRelease();
      if (v48 == v50 >> 1)
      {
        switch(v46)
        {
          case 1:
            LOBYTE(v115) = 1;
            sub_1D8473BA0();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v76 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v78);
            sub_1D8581958();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_336();
            v107 = OUTLINED_FUNCTION_291();
            v108(v107);
            v109 = OUTLINED_FUNCTION_47();
            v110(v109);
            v105 = v115;
            v106 = v116;
            v104 = 1;
            goto LABEL_20;
          case 2:
            v62 = v112;
            LOBYTE(v115) = 2;
            sub_1D8473B4C();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v66 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v68);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v92 = OUTLINED_FUNCTION_85();
            v93(v92);
            v94 = OUTLINED_FUNCTION_165_0();
            v95(v94);
            v105 = v115;
            v106 = v116;
            v104 = 2;
            goto LABEL_19;
          case 3:
            v62 = v112;
            LOBYTE(v115) = 3;
            sub_1D8473AF8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v69 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v71);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v96 = OUTLINED_FUNCTION_85();
            v97(v96);
            v98 = OUTLINED_FUNCTION_165_0();
            v99(v98);
            v105 = v115;
            v106 = v116;
            v104 = 3;
            goto LABEL_19;
          case 4:
            v62 = v112;
            LOBYTE(v115) = 4;
            sub_1D8473AA4();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v63 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v65);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            v88 = OUTLINED_FUNCTION_85();
            v89(v88);
            v90 = OUTLINED_FUNCTION_165_0();
            v91(v90);
            v105 = v115;
            v106 = v116;
            v104 = 4;
LABEL_19:
            v61 = v114;
            v79 = v62;
            goto LABEL_21;
          case 5:
            v79 = v112;
            sub_1D8473A50();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v80 = OUTLINED_FUNCTION_275();
            v81(v80, v111);
            v82 = OUTLINED_FUNCTION_47();
            v83(v82);
            v105 = 0;
            v106 = 0;
            v104 = 5;
            goto LABEL_18;
          case 6:
            v79 = v112;
            sub_1D84739FC();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v84 = OUTLINED_FUNCTION_362();
            v85(v84);
            v86 = OUTLINED_FUNCTION_47();
            v87(v86);
            v106 = 0;
            v104 = 5;
            v105 = 1;
LABEL_18:
            v61 = v114;
            goto LABEL_21;
          case 7:
            sub_1D84739A8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            swift_unknownObjectRelease();
            v72 = OUTLINED_FUNCTION_275();
            v73(v72, v113);
            v74 = OUTLINED_FUNCTION_47();
            v75(v74);
            v106 = 0;
            v104 = 5;
            v105 = 2;
            goto LABEL_20;
          default:
            LOBYTE(v115) = 0;
            sub_1D8473BF4();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v51 = OUTLINED_FUNCTION_194();
            __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_231();
            sub_1D848211C(v53);
            OUTLINED_FUNCTION_313();
            sub_1D8581958();
            OUTLINED_FUNCTION_301();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_336();
            v100 = OUTLINED_FUNCTION_305();
            v101(v100);
            v102 = OUTLINED_FUNCTION_165_0();
            v103(v102);
            v104 = 0;
            v105 = v115;
            v106 = v116;
LABEL_20:
            v61 = v114;
            v79 = v112;
LABEL_21:
            *v79 = v105;
            *(v79 + 8) = v106;
            *(v79 + 16) = v104;
            break;
        }

        goto LABEL_10;
      }
    }

    v54 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v54, MEMORY[0x1E69E6B28]);
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v56 = &type metadata for ChallengeFilter;
    v57 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v57);
    OUTLINED_FUNCTION_206_0();
    (*(v58 + 104))(v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = OUTLINED_FUNCTION_47();
    v60(v59);
  }

  v61 = v114;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v61);
  OUTLINED_FUNCTION_284_0();
}

uint64_t static ChallengeInviteFilter.== infix(_:_:)()
{
  OUTLINED_FUNCTION_434();
  switch(v2)
  {
    case 1:
      if (v1 != 1)
      {
        goto LABEL_11;
      }

      v82 = OUTLINED_FUNCTION_133();
      sub_1D8473C48(v82, v83, v84);
      v85 = OUTLINED_FUNCTION_138();
      sub_1D8473C48(v85, v86, v87);
      v88 = OUTLINED_FUNCTION_138();
      sub_1D8473C48(v88, v89, v90);
      v91 = OUTLINED_FUNCTION_133();
      v94 = sub_1D8473C48(v91, v92, v93);
      v19 = OUTLINED_FUNCTION_145(v94, v95, v96, v97, &qword_1ECA38B38, &qword_1D85981B0);
      v98 = OUTLINED_FUNCTION_138();
      sub_1D8473C60(v98, v99, v100);
      v101 = OUTLINED_FUNCTION_133();
      sub_1D8473C60(v101, v102, v103);
      v104 = OUTLINED_FUNCTION_133();
      sub_1D8473C60(v104, v105, v106);
      v29 = OUTLINED_FUNCTION_138();
      goto LABEL_10;
    case 2:
      if (v1 != 2)
      {
        goto LABEL_11;
      }

      v32 = OUTLINED_FUNCTION_136();
      sub_1D8473C48(v32, v33, v34);
      v35 = OUTLINED_FUNCTION_141();
      sub_1D8473C48(v35, v36, v37);
      v38 = OUTLINED_FUNCTION_141();
      sub_1D8473C48(v38, v39, v40);
      v41 = OUTLINED_FUNCTION_136();
      v44 = sub_1D8473C48(v41, v42, v43);
      v19 = OUTLINED_FUNCTION_145(v44, v45, v46, v47, &qword_1ECA389B8, &qword_1D8590B30);
      v48 = OUTLINED_FUNCTION_141();
      sub_1D8473C60(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_136();
      sub_1D8473C60(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_136();
      sub_1D8473C60(v54, v55, v56);
      v29 = OUTLINED_FUNCTION_141();
      goto LABEL_10;
    case 3:
      if (v1 != 3)
      {
        goto LABEL_11;
      }

      v57 = OUTLINED_FUNCTION_135();
      sub_1D8473C48(v57, v58, v59);
      v60 = OUTLINED_FUNCTION_140();
      sub_1D8473C48(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_140();
      sub_1D8473C48(v63, v64, v65);
      v66 = OUTLINED_FUNCTION_135();
      v69 = sub_1D8473C48(v66, v67, v68);
      v19 = OUTLINED_FUNCTION_145(v69, v70, v71, v72, &qword_1ECA389B8, &qword_1D8590B30);
      v73 = OUTLINED_FUNCTION_140();
      sub_1D8473C60(v73, v74, v75);
      v76 = OUTLINED_FUNCTION_135();
      sub_1D8473C60(v76, v77, v78);
      v79 = OUTLINED_FUNCTION_135();
      sub_1D8473C60(v79, v80, v81);
      v29 = OUTLINED_FUNCTION_140();
      goto LABEL_10;
    default:
      if (v1)
      {
LABEL_11:
        v107 = OUTLINED_FUNCTION_151();
        sub_1D8473C48(v107, v108, v0);
        v109 = OUTLINED_FUNCTION_183();
        sub_1D8473C48(v109, v110, v1);
        v111 = OUTLINED_FUNCTION_151();
        sub_1D8473C60(v111, v112, v0);
        v113 = OUTLINED_FUNCTION_183();
        sub_1D8473C60(v113, v114, v1);
        v19 = 0;
      }

      else
      {
        v3 = OUTLINED_FUNCTION_134();
        sub_1D8473C48(v3, v4, v5);
        v6 = OUTLINED_FUNCTION_139();
        sub_1D8473C48(v6, v7, v8);
        v9 = OUTLINED_FUNCTION_139();
        sub_1D8473C48(v9, v10, v11);
        v12 = OUTLINED_FUNCTION_134();
        v15 = sub_1D8473C48(v12, v13, v14);
        v19 = OUTLINED_FUNCTION_145(v15, v16, v17, v18, &qword_1ECA38B48, &qword_1D8590B40);
        v20 = OUTLINED_FUNCTION_139();
        sub_1D8473C60(v20, v21, v22);
        v23 = OUTLINED_FUNCTION_134();
        sub_1D8473C60(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_134();
        sub_1D8473C60(v26, v27, v28);
        v29 = OUTLINED_FUNCTION_139();
LABEL_10:
        sub_1D8473C60(v29, v30, v31);
      }

      return v19 & 1;
  }
}

uint64_t sub_1D844E148()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_392();
  v2 = OUTLINED_FUNCTION_58();
  v5 = v1 == v2 && v3 == v4;
  if (v5 || (OUTLINED_FUNCTION_143(v2, 101) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = v1 == 1701667175 && v0 == 0xE400000000000000;
    if (v7 || (OUTLINED_FUNCTION_7(1701667175, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == 1836020326 && v0 == 0xE400000000000000;
      if (v8 || (OUTLINED_FUNCTION_7(1836020326, 0xE400000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (v1 == 28532 && v0 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_7(28532, 0xE200000000000000);
        OUTLINED_FUNCTION_369();
        if (v1)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D844E258(uint64_t a1)
{
  result = OUTLINED_FUNCTION_58();
  switch(v2)
  {
    case 1:
      result = OUTLINED_FUNCTION_384();
      break;
    case 2:
      result = OUTLINED_FUNCTION_385();
      break;
    case 3:
      result = 28532;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D844E2B0()
{
  sub_1D8473DC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E2E8()
{
  sub_1D8473DC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D844E148();
  *a1 = result;
  return result;
}

uint64_t sub_1D844E358()
{
  sub_1D8473C78();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E390()
{
  sub_1D8473C78();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E3C8()
{
  sub_1D8473D20();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E400()
{
  sub_1D8473D20();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E438()
{
  sub_1D8473D74();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E470()
{
  sub_1D8473D74();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D844E4A8()
{
  sub_1D8473CCC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D844E4E0()
{
  sub_1D8473CCC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeInviteFilter.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BC0, &qword_1D8590B90);
  OUTLINED_FUNCTION_1();
  v52 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BC8, &qword_1D8590B98);
  OUTLINED_FUNCTION_1();
  v51 = v6;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BD0, &qword_1D8590BA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_251();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BD8, &qword_1D8590BA8);
  OUTLINED_FUNCTION_1();
  v50 = v9;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_160();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BE0, &qword_1D8590BB0);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_200();
  v14 = *(v0 + 16);
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D8473C78();
  sub_1D8581BB8();
  switch(v14)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      sub_1D8473D74();
      sub_1D8581988();
      OUTLINED_FUNCTION_485();
      v45 = OUTLINED_FUNCTION_189();
      __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
      OUTLINED_FUNCTION_1_1();
      sub_1D848211C(v47);
      OUTLINED_FUNCTION_277();
      sub_1D8581A58();
      v48 = OUTLINED_FUNCTION_7_0();
      v49(v48);
      v44 = *(v12 + 8);
      v42 = v1;
      v43 = v53;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_340();
      sub_1D8473D20();
      OUTLINED_FUNCTION_312(&type metadata for ChallengeInviteFilter.FromCodingKeys, v54);
      OUTLINED_FUNCTION_485();
      v24 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v26);
      v27 = OUTLINED_FUNCTION_277();
      v19 = v51;
      OUTLINED_FUNCTION_374(v27, v28, v29, v30, v31);
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_394();
      sub_1D8473CCC();
      OUTLINED_FUNCTION_312(&type metadata for ChallengeInviteFilter.ToCodingKeys, v54);
      OUTLINED_FUNCTION_485();
      v32 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v34);
      v35 = OUTLINED_FUNCTION_277();
      v19 = v52;
      OUTLINED_FUNCTION_374(v35, v36, v37, v38, v39);
      goto LABEL_5;
    default:
      v54[0] = 0;
      sub_1D8473DC8();
      OUTLINED_FUNCTION_312(&type metadata for ChallengeInviteFilter.ChallengeCodingKeys, v54);
      OUTLINED_FUNCTION_485();
      v15 = OUTLINED_FUNCTION_194();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_231();
      sub_1D848211C(v17);
      v18 = OUTLINED_FUNCTION_277();
      v19 = v50;
      OUTLINED_FUNCTION_374(v18, v20, v21, v22, v23);
LABEL_5:
      v40 = OUTLINED_FUNCTION_275();
      v41(v40, v19);
      v42 = OUTLINED_FUNCTION_221();
LABEL_7:
      v44(v42, v43);
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t ChallengeInviteFilter.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_447();
      v7 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      break;
    case 2:
      v4 = 2;
      goto LABEL_5;
    case 3:
      v4 = 3;
LABEL_5:
      MEMORY[0x1DA7191F0](v4);
      v5 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      break;
    default:
      OUTLINED_FUNCTION_429();
      v2 = OUTLINED_FUNCTION_253();
      __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      break;
  }

  OUTLINED_FUNCTION_6();
  sub_1D848211C(v9);
  OUTLINED_FUNCTION_161();
  return sub_1D85811E8();
}

uint64_t sub_1D844EAFC(uint64_t (*a1)(_BYTE *))
{
  v3 = *(v1 + 16);
  v6 = *v1;
  v7 = v3;
  OUTLINED_FUNCTION_379(a1);
  a1(v5);
  return sub_1D8581B98();
}

void ChallengeInviteFilter.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v60 = v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BE8, &qword_1D8590BB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_493(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BF0, &qword_1D8590BC0);
  OUTLINED_FUNCTION_1();
  v59 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38BF8, &qword_1D8590BC8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C00, &qword_1D8590BD0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_250_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C08, &qword_1D8590BD8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_251();
  v62 = v3;
  v13 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v13, v14);
  v15 = sub_1D8473C78();
  OUTLINED_FUNCTION_458(&type metadata for ChallengeInviteFilter.CodingKeys, v16, v15);
  if (!v1)
  {
    v17 = v0;
    v18 = sub_1D8581968();
    sub_1D8440880(v18, 0);
    v20 = v19;
    if (v22 != v21 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v27 == v28)
      {
        __break(1u);
        return;
      }

      v29 = *(v26 + v24);
      sub_1D84408DC(v24 + 1, v23, v20, v26, v24, v25);
      OUTLINED_FUNCTION_526();
      if (!v20)
      {
        v30 = v29;
        switch(v29)
        {
          case 1:
            OUTLINED_FUNCTION_290();
            sub_1D8473D74();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            v41 = OUTLINED_FUNCTION_189();
            __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
            OUTLINED_FUNCTION_2_0();
            sub_1D848211C(v43);
            OUTLINED_FUNCTION_259();
            OUTLINED_FUNCTION_492();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v55 = OUTLINED_FUNCTION_126();
            v56(v55);
            OUTLINED_FUNCTION_220_0();
            v57 = OUTLINED_FUNCTION_497();
            v58(v57);
            goto LABEL_15;
          case 2:
            OUTLINED_FUNCTION_340();
            sub_1D8473D20();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v37);
            OUTLINED_FUNCTION_259();
            v38 = v59;
            sub_1D8581958();
            swift_unknownObjectRelease();
            v44 = OUTLINED_FUNCTION_276();
            goto LABEL_14;
          case 3:
            OUTLINED_FUNCTION_394();
            sub_1D8473CCC();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v39);
            OUTLINED_FUNCTION_259();
            v38 = v61;
            OUTLINED_FUNCTION_436();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v44 = OUTLINED_FUNCTION_211();
LABEL_14:
            v45(v44, v38);
            v46 = OUTLINED_FUNCTION_165_0();
            v47(v46);
LABEL_15:
            v52 = v63;
            v53 = v64;
            v54 = v62;
            break;
          default:
            LOBYTE(v63) = 0;
            sub_1D8473DC8();
            OUTLINED_FUNCTION_86();
            sub_1D8581878();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38B48, &qword_1D8590B40);
            OUTLINED_FUNCTION_3();
            sub_1D848211C(v40);
            OUTLINED_FUNCTION_259();
            OUTLINED_FUNCTION_236_0();
            sub_1D8581958();
            swift_unknownObjectRelease();
            v48 = OUTLINED_FUNCTION_126();
            v49(v48);
            v50 = OUTLINED_FUNCTION_47();
            v51(v50);
            v52 = v63;
            v53 = v64;
            v54 = v62;
            v30 = v29;
            break;
        }

        *v60 = v52;
        *(v60 + 8) = v53;
        *(v60 + 16) = v30;
        __swift_destroy_boxed_opaque_existential_1(v54);
        goto LABEL_10;
      }
    }

    v31 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v31, MEMORY[0x1E69E6B28]);
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v33 = &type metadata for ChallengeInviteFilter;
    v34 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v34);
    OUTLINED_FUNCTION_206_0();
    (*(v35 + 104))(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_220_0();
    v36(v17, v11);
  }

  __swift_destroy_boxed_opaque_existential_1(v62);
LABEL_10:
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D844F3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = *(v4 + 16);
  v9 = *v4;
  v10 = v6;
  sub_1D8581B58();
  a4(v8);
  return sub_1D8581B98();
}

void *static $DistributedChallengeServiceProtocol.resolve(id:using:)(void *a1, uint64_t a2)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v5);
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v6);
  v7 = sub_1D8580F48();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = a1[1];
    v8[14] = *a1;
    v8[15] = v9;
    v8[16] = a2;
  }

  return v8;
}

uint64_t $DistributedChallengeServiceProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v1);
  sub_1D8580F68();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedChallengeServiceProtocol.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {

    swift_defaultActor_destroy();
  }

  else
  {
    $DistributedChallengeServiceProtocol.deinit();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D844F634()
{
  sub_1D8581B58();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v0);
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t $DistributedChallengeServiceProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedChallengeServiceProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedChallengeServiceProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedChallengeServiceProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_43();
  sub_1D8473E40(v3);
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v4);

  OUTLINED_FUNCTION_481();
  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_481();
  sub_1D8580F38();

  return v1;
}

uint64_t $DistributedChallengeServiceProtocol.unownedExecutor.getter()
{
  if ((sub_1D8580FF8() & 1) == 0)
  {
    type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v1);
    OUTLINED_FUNCTION_151();
    return sub_1D8580F28();
  }

  return v0;
}

uint64_t sub_1D844F880@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedChallengeServiceProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D844F90C()
{
  OUTLINED_FUNCTION_366();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v0);
  OUTLINED_FUNCTION_188();
  return sub_1D8580FC8();
}

uint64_t sub_1D844F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8581B58();
  type metadata accessor for $DistributedChallengeServiceProtocol();
  sub_1D85811E8();
  return sub_1D8581B98();
}

uint64_t sub_1D844F9E8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_24(&unk_1D8594F58);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_59(v1);
  OUTLINED_FUNCTION_535();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D844FA88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 225) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_1D8581018();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v5 + 168) = v9;
  *(v5 + 176) = *(v9 - 8);
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D844FC88);
}

uint64_t sub_1D844FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 192) = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
    }

    v28 = *(v15 + 72);
    *(v15 + 40) = *(v15 + 64);
    *(v15 + 48) = v28;

    v29 = OUTLINED_FUNCTION_167();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, v15 + 40);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    *(v15 + 56) = *(v15 + 80);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    *(v15 + 224) = *(v15 + 225);
    v41 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v41, v42, v43, v44, v15 + 224);
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      v49 = *(v15 + 176);
      a9 = *(v15 + 168);
      a10 = *(v15 + 184);

      v50 = OUTLINED_FUNCTION_79();
      v51(v50);
      v52 = OUTLINED_FUNCTION_74_0();
      v53(v52);
      (*(v49 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v62 = swift_task_alloc();
    *(v15 + 208) = v62;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v63);
    OUTLINED_FUNCTION_217();
    *v62 = v64;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v65, v66, v67, v68, v69, v70, v71);
  }

  else
  {
    OUTLINED_FUNCTION_31_0(&unk_1D8594F58);
    v17 = swift_task_alloc();
    *(v15 + 200) = v17;
    *v17 = v15;
    OUTLINED_FUNCTION_403(v17);
    OUTLINED_FUNCTION_207_0(v18);
    OUTLINED_FUNCTION_170();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8450060()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D84501B0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:scope:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  *(v1 + 120) = v6;
  *(v1 + 128) = v0;
  *(v1 + 104) = v7;
  *(v1 + 112) = v8;
  *(v1 + 96) = v9;
  v10 = sub_1D8581018();
  *(v1 + 136) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 144) = v11;
  *(v1 + 152) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 160) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 168) = v13;
  *(v1 + 176) = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  *(v1 + 184) = v14;
  OUTLINED_FUNCTION_39(v14);
  *(v1 + 192) = v15;
  *(v1 + 200) = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  *(v1 + 208) = v16;
  OUTLINED_FUNCTION_39(v16);
  *(v1 + 216) = v17;
  v18 = OUTLINED_FUNCTION_332();
  v19 = *v5;
  v20 = v5[1];
  *(v1 + 224) = v18;
  *(v1 + 232) = v19;
  *(v1 + 240) = v20;
  *(v1 + 290) = *v3;
  v21 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v21);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8450624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 104);
    OUTLINED_FUNCTION_144();
    *(v14 + 248) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_170();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
    }

    v30 = *(v14 + 240);
    *(v14 + 56) = *(v14 + 232);
    *(v14 + 64) = v30;

    v31 = OUTLINED_FUNCTION_167();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
    OUTLINED_FUNCTION_60(v33, v34, v35, v36, v14 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v37);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v38);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    *(v14 + 88) = *(v14 + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v41, v42);
    *(v14 + 289) = *(v14 + 290);
    v43 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v43, v44, v45, v46, v14 + 289);
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v49);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v50)
    {
      v51 = *(v14 + 216);
      a9 = *(v14 + 208);
      a10 = *(v14 + 224);

      v52 = OUTLINED_FUNCTION_79();
      v53(v52);
      v54 = OUTLINED_FUNCTION_74_0();
      v55(v54);
      (*(v51 + 8))(a10, a9);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v64 = swift_task_alloc();
    v65 = OUTLINED_FUNCTION_356(v64);
    *v65 = v66;
    OUTLINED_FUNCTION_295_0(v65);
    OUTLINED_FUNCTION_53(v67);
    OUTLINED_FUNCTION_170();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v68, v69, v70, v71, v72, v73, v74);
  }

  else
  {
    v16 = *(v14 + 290);
    v18 = *(v14 + 232);
    v17 = *(v14 + 240);
    *(v14 + 72) = *(v14 + 128);
    *(v14 + 40) = v18;
    *(v14 + 48) = v17;
    *(v14 + 288) = v16;
    OUTLINED_FUNCTION_131();
    v76 = v19 + *v19;
    v20 = swift_task_alloc();
    *(v14 + 272) = v20;
    *v20 = v14;
    v20[1] = sub_1D8450C2C;
    OUTLINED_FUNCTION_170();

    return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v76, a11, a12, a13, a14);
  }
}

uint64_t sub_1D8450A60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8450C2C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8450E50()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8450ED0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);

  return sub_1D8450F7C(v0, v2);
}

uint64_t sub_1D8450F7C(uint64_t a1, char a2)
{
  *(v3 + 169) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_1D8581018();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8451110);
}

uint64_t sub_1D8451110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    *(v15 + 136) = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_500();
    *(v15 + 40) = *(v15 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v27, v28, v29, v30, v15 + 40);
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    *(v15 + 168) = *(v15 + 169);
    v33 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v33, v34, v35, v36, v15 + 168);
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v39);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v40)
    {

      v41 = OUTLINED_FUNCTION_52();
      v42(v41);
      v43 = OUTLINED_FUNCTION_51_0();
      v44(v43);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v53 = swift_task_alloc();
    *(v15 + 152) = v53;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v54);
    OUTLINED_FUNCTION_217();
    *v53 = v55;
    v53[1] = sub_1D8451578;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    OUTLINED_FUNCTION_24(&dword_1D8594F50);
    v17 = swift_task_alloc();
    *(v15 + 144) = v17;
    *v17 = v15;
    v17[1] = sub_1D8451444;
    OUTLINED_FUNCTION_207_0(*(v15 + 48));
    OUTLINED_FUNCTION_240();

    return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8451444()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8451578()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8451670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_464();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8451730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_464();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(challengeDefinitions:scope:)()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v0;
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  *(v1 + 64) = v7;
  v8 = sub_1D8581018();
  *(v1 + 104) = v8;
  OUTLINED_FUNCTION_39(v8);
  *(v1 + 112) = v9;
  *(v1 + 120) = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C20, &qword_1D8590BF0);
  *(v1 + 128) = v10;
  OUTLINED_FUNCTION_39(v10);
  *(v1 + 136) = v11;
  *(v1 + 144) = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  *(v1 + 152) = v12;
  OUTLINED_FUNCTION_39(v12);
  *(v1 + 160) = v13;
  *(v1 + 168) = OUTLINED_FUNCTION_332();
  *(v1 + 218) = *v3;
  v14 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v14);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 72);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 176) = *(v14 + 48);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_500();
    *(v14 + 56) = *(v14 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v28, v29, v30, v31, v14 + 56);
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    *(v14 + 217) = *(v14 + 218);
    v34 = OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_229(v34, v35, v36, v37, v14 + 217);
    sub_1D8474444();
    sub_1D8474498();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_187();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    sub_1D8581028();
    v54 = swift_task_alloc();
    v55 = OUTLINED_FUNCTION_286(v54);
    *v55 = v56;
    v55[1] = sub_1D8451CD4;
    OUTLINED_FUNCTION_53(*(v14 + 96));
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v57, v58, v59, v60, v61, v62, v63);
  }

  else
  {
    v16 = *(v14 + 218);
    *(v14 + 40) = *(v14 + 96);
    *(v14 + 216) = v16;
    OUTLINED_FUNCTION_54();
    v65 = v17 + *v17;
    v18 = swift_task_alloc();
    *(v14 + 200) = v18;
    *v18 = v14;
    v18[1] = sub_1D8451E80;
    OUTLINED_FUNCTION_207_0(*(v14 + 64));
    OUTLINED_FUNCTION_239();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D8451CD4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8451DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_266_0();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8451E80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8451FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D845206C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84520DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8452300);
}

uint64_t sub_1D8452300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[21] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_460();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
    }

    v28 = v15[9];
    v15[5] = v15[8];
    v15[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_60(v31, v32, v33, v34, (v15 + 5));
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    v15[7] = v15[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v42)
    {
      OUTLINED_FUNCTION_521();
      v43 = OUTLINED_FUNCTION_52();
      v44(v43);
      v45 = OUTLINED_FUNCTION_51_0();
      v46(v45);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v55 = swift_task_alloc();
    v15[23] = v55;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v56);
    OUTLINED_FUNCTION_217();
    *v55 = v57;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v58, v59, v60, v61, v62, v63, v64);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F48);
    v17 = swift_task_alloc();
    v15[22] = v17;
    *v17 = v15;
    OUTLINED_FUNCTION_403(v17);
    OUTLINED_FUNCTION_207_0(v18);
    OUTLINED_FUNCTION_240();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8452630()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8452764()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_459();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_460();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8452910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_459();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallengeDefinitions(game:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  v1[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v1[20] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v1[23] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[24] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[25] = v13;
  v1[26] = v14;
  v1[27] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D8452B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[13];
    OUTLINED_FUNCTION_144();
    v14[28] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    v27 = v14[27];
    v14[7] = v14[26];
    v14[8] = v27;

    v28 = OUTLINED_FUNCTION_167();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_60(v30, v31, v32, v33, (v14 + 7));
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    v14[11] = v14[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C38, &qword_1D8590C08);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847418C();
    sub_1D84742E8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_520();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v14[29] = v54;
    *v54 = v14;
    OUTLINED_FUNCTION_295_0(v54);
    OUTLINED_FUNCTION_53(v55);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    v14[9] = v14[16];
    OUTLINED_FUNCTION_38(v14[27]);
    OUTLINED_FUNCTION_54();
    v64 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[31] = v17;
    *v17 = v14;
    v17[1] = sub_1D8453054;
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v64, a12, a13, a14);
  }
}

uint64_t sub_1D8452EA8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8452FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_424();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_457();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8453054()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8453188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_424();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D845324C()
{
  OUTLINED_FUNCTION_174();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84532C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8594F40);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_107(v11);
  OUTLINED_FUNCTION_470();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D8453360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8453564);
}

uint64_t sub_1D8453930()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_535();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D8453A80()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C28, &qword_1D8590BF8);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C30, &qword_1D8590C00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84542E8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84544B4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_372();

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84546C0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_246();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8454738()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F38);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84547CC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84548F4);
}

uint64_t sub_1D84548F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F38);
    v15 = swift_task_alloc();
    v13[16] = v15;
    *v15 = v13;
    v15[1] = sub_1D8454BD8;
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_500();
  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_181(v25, v26, v27, v28, (v13 + 5));
  sub_1D84748E4();
  sub_1D8474994();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
  sub_1D84755F8();
  sub_1D8475754();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v32, v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v38);
  OUTLINED_FUNCTION_98();
  *v37 = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8454BD8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_482();
  }

  return v5(v4);
}

uint64_t sub_1D8454D00()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8454DF8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v0 = OUTLINED_FUNCTION_166();
  v1(v0);
  v2 = OUTLINED_FUNCTION_151();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8454EA8()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_519();
  v0 = OUTLINED_FUNCTION_166();
  v1(v0);
  v2 = OUTLINED_FUNCTION_151();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t DistributedChallengeServiceProtocol<>.describeChallengeDefinitions(challengeDefinitions:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C90, &unk_1D8590C30);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D845504C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_500();
    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C98, &unk_1D85961F0);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_181(v29, v30, v31, v32, (v14 + 7));
    sub_1D84748E4();
    sub_1D8474994();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CE8, &qword_1D8590C88);
    sub_1D84755F8();
    sub_1D8475754();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_358();
    GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v52 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    v18[1] = sub_1D845551C;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D8455374()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845546C()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_166();
  v1(v0);
  v2 = OUTLINED_FUNCTION_151();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_511();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D845551C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8455650()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_518();
  v0 = OUTLINED_FUNCTION_166();
  v1(v0);
  v2 = OUTLINED_FUNCTION_151();
  v3(v2);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_511();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D8455700()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8455768()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F30);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84557FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8455924);
}

uint64_t sub_1D8455924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F30);
    v15 = swift_task_alloc();
    v13[16] = v15;
    *v15 = v13;
    v15[1] = sub_1D8482210;
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
  v25 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_34_0(v25, v26, v27, v28, (v13 + 5));
  sub_1D8475A40();
  sub_1D8475AF0();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
  sub_1D8475BA0();
  sub_1D8475CFC();
  v32 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v32, v33);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v34)
  {
    OUTLINED_FUNCTION_453();
    v35 = OUTLINED_FUNCTION_49_0();
    v36(v35);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v37 = swift_task_alloc();
  v13[17] = v37;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v38);
  OUTLINED_FUNCTION_98();
  *v37 = v39;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v40);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8455BE4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.describe(challenges:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8455DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v29, v30, v31, v32, (v14 + 7));
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D48, &unk_1D8596270);
    sub_1D8475BA0();
    sub_1D8475CFC();
    v36 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_452();
      v39 = OUTLINED_FUNCTION_49_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_294(v49);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v52 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    v18[1] = sub_1D84561D0;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v52, a12, a13, a14);
  }
}

uint64_t sub_1D84560D8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84561D0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

void sub_1D8456304()
{
  OUTLINED_FUNCTION_487();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_428();

  __asm { BR              X8 }
}

uint64_t sub_1D845641C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 216) = v23;
  *(v9 + 224) = v8;
  *(v9 + 200) = v21;
  *(v9 + 208) = v22;
  *(v9 + 58) = v20;
  *(v9 + 57) = a8;
  *(v9 + 184) = a7;
  *(v9 + 192) = v19;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  v10 = sub_1D8581018();
  *(v9 + 232) = v10;
  *(v9 + 240) = *(v10 - 8);
  *(v9 + 248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v9 + 256) = v11;
  *(v9 + 264) = *(v11 - 8);
  *(v9 + 272) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v9 + 280) = v12;
  *(v9 + 288) = *(v12 - 8);
  *(v9 + 296) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D98, &qword_1D8590CE8);
  *(v9 + 304) = v13;
  *(v9 + 312) = *(v13 - 8);
  *(v9 + 320) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA0, &qword_1D8590CF0);
  *(v9 + 328) = v14;
  *(v9 + 336) = *(v14 - 8);
  *(v9 + 344) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA8, &qword_1D8590CF8);
  *(v9 + 352) = v15;
  *(v9 + 360) = *(v15 - 8);
  *(v9 + 368) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 376) = v16;
  *(v9 + 384) = *(v16 - 8);
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845677C);
}

uint64_t sub_1D845677C()
{
  OUTLINED_FUNCTION_512();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&dword_1D8594F28);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 408) = v3;
    *v3 = v4;
    v3[1] = sub_1D8456FB4;
    OUTLINED_FUNCTION_357();

    __asm { BR              X8 }
  }

  *(v1 + 400) = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  v2 = type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    OUTLINED_FUNCTION_406();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v65();
  }

  v7 = *(v1 + 152);
  *(v1 + 64) = *(v1 + 144);
  *(v1 + 72) = v7;

  v8 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v10);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v12, v13);
  v14 = *(v1 + 168);
  *(v1 + 80) = *(v1 + 160);
  *(v1 + 88) = v14;

  v15 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v17);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v18);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v19, v20);
  v21 = *(v1 + 57);
  *(v1 + 40) = *(v1 + 176);
  *(v1 + 56) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DC8, &qword_1D8590D08);
  v22 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230(v22, v23, v24, v25, v1 + 40);
  OUTLINED_FUNCTION_46();
  sub_1D8476880(v26);
  OUTLINED_FUNCTION_45();
  sub_1D8476880(v27);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v28, v29);
  v30 = *(v1 + 58);
  *(v1 + 112) = *(v1 + 192);
  *(v1 + 120) = v30 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DE0, &qword_1D8590D10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_46();
  sub_1D84768D8(v31);
  OUTLINED_FUNCTION_45();
  sub_1D84768D8(v32);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
  *(v1 + 128) = *(v1 + 200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
  OUTLINED_FUNCTION_479();
  v37 = *(v1 + 216);
  *(v1 + 96) = *(v1 + 208);
  *(v1 + 104) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180(v38, v39, v40, v41, v1 + 96);
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v45);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v46, v47);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v48)
  {
    v81 = *(v1 + 376);
    v82 = *(v1 + 392);
    v79 = *(v1 + 368);
    v80 = *(v1 + 384);
    v49 = *(v1 + 360);
    v50 = *(v1 + 336);
    v77 = *(v1 + 344);
    v78 = *(v1 + 352);
    v75 = *(v1 + 320);
    v76 = *(v1 + 328);
    v51 = *(v1 + 312);
    v52 = *(v1 + 288);
    v73 = *(v1 + 296);
    v74 = *(v1 + 304);
    v72 = *(v1 + 280);

    v53 = OUTLINED_FUNCTION_258();
    v54(v53);
    (*(v52 + 8))(v73, v72);
    (*(v51 + 8))(v75, v74);
    (*(v50 + 8))(v77, v76);
    v55 = (*(v49 + 8))(v79, v78);
    v63 = OUTLINED_FUNCTION_407(v55, v56, v57, v58, v59, v60, v61, v62, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v64(v63);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  sub_1D8581028();
  v68 = swift_task_alloc();
  *(v1 + 416) = v68;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v69);
  OUTLINED_FUNCTION_217();
  *v68 = v70;
  v68[1] = sub_1D8457168;
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8456FB4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8457168()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:leaderboard:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_174();
  v16 = v15;
  v18 = v17;
  *(v14 + 256) = a13;
  *(v14 + 264) = v13;
  *(v14 + 240) = a11;
  *(v14 + 248) = a12;
  *(v14 + 224) = v19;
  *(v14 + 232) = a9;
  *(v14 + 58) = v20;
  *(v14 + 57) = v21;
  *(v14 + 208) = v22;
  *(v14 + 216) = v23;
  *(v14 + 200) = v24;
  v25 = sub_1D8581018();
  *(v14 + 272) = v25;
  OUTLINED_FUNCTION_39(v25);
  *(v14 + 280) = v26;
  *(v14 + 288) = OUTLINED_FUNCTION_332();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v14 + 296) = v27;
  OUTLINED_FUNCTION_39(v27);
  *(v14 + 304) = v28;
  *(v14 + 312) = OUTLINED_FUNCTION_332();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v14 + 320) = v29;
  OUTLINED_FUNCTION_39(v29);
  *(v14 + 328) = v30;
  *(v14 + 336) = OUTLINED_FUNCTION_332();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D98, &qword_1D8590CE8);
  *(v14 + 344) = v31;
  OUTLINED_FUNCTION_39(v31);
  *(v14 + 352) = v32;
  *(v14 + 360) = OUTLINED_FUNCTION_332();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA0, &qword_1D8590CF0);
  *(v14 + 368) = v33;
  OUTLINED_FUNCTION_39(v33);
  *(v14 + 376) = v34;
  *(v14 + 384) = OUTLINED_FUNCTION_332();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DA8, &qword_1D8590CF8);
  *(v14 + 392) = v35;
  OUTLINED_FUNCTION_39(v35);
  *(v14 + 400) = v36;
  *(v14 + 408) = OUTLINED_FUNCTION_332();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v14 + 416) = v37;
  OUTLINED_FUNCTION_39(v37);
  *(v14 + 424) = v38;
  v39 = OUTLINED_FUNCTION_332();
  v40 = *v18;
  v41 = v18[1];
  *(v14 + 432) = v39;
  *(v14 + 440) = v40;
  v42 = *v16;
  v43 = v16[1];
  *(v14 + 448) = v41;
  *(v14 + 456) = v42;
  *(v14 + 464) = v43;
  *(v14 + 472) = *a10;
  v44 = OUTLINED_FUNCTION_64_0();
  return OUTLINED_FUNCTION_525(v44);
}

uint64_t sub_1D84577AC()
{
  OUTLINED_FUNCTION_297();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v3 = *(v0 + 456);
    v2 = *(v0 + 464);
    v4 = *(v0 + 440);
    v5 = *(v0 + 256);
    *(v0 + 176) = *(v0 + 264);
    *(v0 + 64) = v4;
    *(v0 + 80) = v3;
    *(v0 + 88) = v2;
    *(v0 + 96) = *(v0 + 472);
    v71 = *(*(v5 + 16) + 56) + **(*(v5 + 16) + 56);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 512) = v6;
    *v6 = v7;
    v6[1] = sub_1D84582A4;
    OUTLINED_FUNCTION_397();

    __asm { BRAA            X8, X16 }
  }

  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 488) = *(v0 + 184);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    OUTLINED_FUNCTION_376(*(v0 + 432));

    OUTLINED_FUNCTION_48();

    return v56();
  }

  v8 = *(v0 + 448);
  *(v0 + 112) = *(v0 + 440);
  *(v0 + 120) = v8;

  v9 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v11);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v13, v14);
  v15 = *(v0 + 464);
  *(v0 + 128) = *(v0 + 456);
  *(v0 + 136) = v15;

  v16 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v18);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v19);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v20, v21);
  v22 = *(v0 + 57);
  *(v0 + 40) = *(v0 + 208);
  *(v0 + 56) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DC8, &qword_1D8590D08);
  v23 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230(v23, v24, v25, v26, v0 + 40);
  OUTLINED_FUNCTION_46();
  sub_1D8476880(v27);
  OUTLINED_FUNCTION_45();
  sub_1D8476880(v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
  v31 = *(v0 + 58);
  *(v0 + 160) = *(v0 + 224);
  *(v0 + 168) = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DE0, &qword_1D8590D10);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  OUTLINED_FUNCTION_46();
  sub_1D84768D8(v32);
  OUTLINED_FUNCTION_45();
  sub_1D84768D8(v33);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
  *(v0 + 192) = *(v0 + 232);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
  OUTLINED_FUNCTION_479();
  v38 = *(v0 + 480);
  *(v0 + 144) = *(v0 + 472);
  *(v0 + 152) = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180(v39, v40, v41, v42, v0 + 144);
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v46);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v47, v48);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v49)
  {
    v70 = *(v0 + 416);
    v72 = *(v0 + 432);
    v68 = *(v0 + 408);
    v69 = *(v0 + 424);
    v50 = *(v0 + 400);
    v51 = *(v0 + 376);
    v66 = *(v0 + 384);
    v67 = *(v0 + 392);
    v64 = *(v0 + 360);
    v65 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 328);
    v62 = *(v0 + 336);
    v63 = *(v0 + 344);
    v61 = *(v0 + 320);

    v54 = OUTLINED_FUNCTION_258();
    v55(v54);
    (*(v53 + 8))(v62, v61);
    (*(v52 + 8))(v64, v63);
    (*(v51 + 8))(v66, v65);
    (*(v50 + 8))(v68, v67);
    (*(v69 + 8))(v72, v70);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 496) = v58;
  *v58 = v59;
  v58[1] = sub_1D8458068;
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_269();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D8458068()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84582A4()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 520) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_511();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D845854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_376(*(v10 + 432));

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_470();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

void sub_1D84585E8()
{
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F20);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_97(v0);
  *v1 = v2;
  v1[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_365();
  OUTLINED_FUNCTION_428();

  __asm { BR              X8 }
}

uint64_t sub_1D84586D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 192) = v20;
  *(v9 + 200) = v8;
  *(v9 + 176) = v19;
  *(v9 + 97) = a8;
  *(v9 + 160) = a6;
  *(v9 + 168) = a7;
  *(v9 + 144) = a4;
  *(v9 + 152) = a5;
  *(v9 + 128) = a2;
  *(v9 + 136) = a3;
  *(v9 + 120) = a1;
  v10 = sub_1D8581018();
  *(v9 + 208) = v10;
  *(v9 + 216) = *(v10 - 8);
  *(v9 + 224) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v9 + 232) = v11;
  *(v9 + 240) = *(v11 - 8);
  *(v9 + 248) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v9 + 256) = v12;
  *(v9 + 264) = *(v12 - 8);
  *(v9 + 272) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E40, &qword_1D8590D40);
  *(v9 + 280) = v13;
  *(v9 + 288) = *(v13 - 8);
  *(v9 + 296) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E48, &qword_1D8590D48);
  *(v9 + 304) = v14;
  *(v9 + 312) = *(v14 - 8);
  *(v9 + 320) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E50, &qword_1D8590D50);
  *(v9 + 328) = v15;
  *(v9 + 336) = *(v15 - 8);
  *(v9 + 344) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v9 + 352) = v16;
  *(v9 + 360) = *(v16 - 8);
  *(v9 + 368) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8458A2C);
}

uint64_t sub_1D8458A2C()
{
  OUTLINED_FUNCTION_512();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_50(&unk_1D8594F20);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v1 + 384) = v3;
    *v3 = v4;
    v3[1] = sub_1D84591E4;
    OUTLINED_FUNCTION_370();

    __asm { BR              X8 }
  }

  *(v1 + 376) = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  v2 = type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91(v2);
  if (v0)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    OUTLINED_FUNCTION_405();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v65();
  }

  v7 = *(v1 + 136);
  *(v1 + 40) = *(v1 + 128);
  *(v1 + 48) = v7;

  v8 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v10);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v12, v13);
  v14 = *(v1 + 152);
  *(v1 + 56) = *(v1 + 144);
  *(v1 + 64) = v14;

  v15 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_423(v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v22);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v24, v25);
  *(v1 + 104) = *(v1 + 160);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
  v26 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230(v26, v27, v28, v29, v1 + 104);
  sub_1D8477328();
  sub_1D8477400();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v30, v31);
  v32 = *(v1 + 97);
  *(v1 + 88) = *(v1 + 168);
  *(v1 + 96) = v32 & 1;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  sub_1D84774D8();
  sub_1D847752C();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
  *(v1 + 112) = *(v1 + 176);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v35, v36);
  OUTLINED_FUNCTION_479();
  v37 = *(v1 + 192);
  *(v1 + 72) = *(v1 + 184);
  *(v1 + 80) = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180(v38, v39, v40, v41, v1 + 72);
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v45);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v46, v47);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v48)
  {
    v81 = *(v1 + 352);
    v82 = *(v1 + 368);
    v79 = *(v1 + 344);
    v80 = *(v1 + 360);
    v49 = *(v1 + 336);
    v50 = *(v1 + 312);
    v77 = *(v1 + 320);
    v78 = *(v1 + 328);
    v75 = *(v1 + 296);
    v76 = *(v1 + 304);
    v51 = *(v1 + 288);
    v52 = *(v1 + 264);
    v73 = *(v1 + 272);
    v74 = *(v1 + 280);
    v72 = *(v1 + 256);

    v53 = OUTLINED_FUNCTION_258();
    v54(v53);
    (*(v52 + 8))(v73, v72);
    (*(v51 + 8))(v75, v74);
    (*(v50 + 8))(v77, v76);
    v55 = (*(v49 + 8))(v79, v78);
    v63 = OUTLINED_FUNCTION_407(v55, v56, v57, v58, v59, v60, v61, v62, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
    v64(v63);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  sub_1D8581028();
  v68 = swift_task_alloc();
  *(v1 + 392) = v68;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v69);
  OUTLINED_FUNCTION_217();
  *v68 = v70;
  v68[1] = sub_1D8459398;
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84591E4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8459398()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.createChallenge(creator:definition:duration:attemptLimit:players:previousChallenge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *(v19 + 240) = a18;
  *(v19 + 248) = v18;
  *(v19 + 224) = v28;
  *(v19 + 232) = a17;
  *(v19 + 208) = v29;
  *(v19 + 216) = v30;
  *(v19 + 200) = v31;
  v32 = sub_1D8581018();
  *(v19 + 256) = v32;
  OUTLINED_FUNCTION_39(v32);
  *(v19 + 264) = v33;
  *(v19 + 272) = OUTLINED_FUNCTION_332();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D88, &qword_1D8590CD8);
  *(v19 + 280) = v34;
  OUTLINED_FUNCTION_39(v34);
  *(v19 + 288) = v35;
  *(v19 + 296) = OUTLINED_FUNCTION_332();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D90, &qword_1D8590CE0);
  *(v19 + 304) = v36;
  OUTLINED_FUNCTION_39(v36);
  *(v19 + 312) = v37;
  *(v19 + 320) = OUTLINED_FUNCTION_332();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E40, &qword_1D8590D40);
  *(v19 + 328) = v38;
  OUTLINED_FUNCTION_39(v38);
  *(v19 + 336) = v39;
  *(v19 + 344) = OUTLINED_FUNCTION_332();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E48, &qword_1D8590D48);
  *(v19 + 352) = v40;
  OUTLINED_FUNCTION_39(v40);
  *(v19 + 360) = v41;
  *(v19 + 368) = OUTLINED_FUNCTION_332();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E50, &qword_1D8590D50);
  *(v19 + 376) = v42;
  OUTLINED_FUNCTION_39(v42);
  *(v19 + 384) = v43;
  *(v19 + 392) = OUTLINED_FUNCTION_332();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  *(v19 + 400) = v44;
  OUTLINED_FUNCTION_39(v44);
  *(v19 + 408) = v45;
  v46 = OUTLINED_FUNCTION_332();
  v47 = *v27;
  v48 = v27[1];
  *(v19 + 416) = v46;
  *(v19 + 424) = v47;
  v49 = *v25;
  v50 = v25[1];
  *(v19 + 432) = v48;
  *(v19 + 440) = v49;
  v51 = *v23;
  *(v19 + 448) = v50;
  *(v19 + 456) = v51;
  *(v19 + 145) = *(v23 + 8);
  *(v19 + 464) = *v21;
  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_535();
  return OUTLINED_FUNCTION_523(v52);
}

uint64_t sub_1D84599E0()
{
  OUTLINED_FUNCTION_512();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    v2 = *(v0 + 145);
    v4 = *(v0 + 448);
    v3 = *(v0 + 456);
    v5 = *(v0 + 440);
    v6 = *(v0 + 424);
    *(v0 + 168) = *(v0 + 248);
    *(v0 + 40) = v6;
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    *(v0 + 136) = v3;
    *(v0 + 144) = v2;
    *(v0 + 72) = *(v0 + 464);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v0 + 504) = v7;
    *v7 = v8;
    v7[1] = sub_1D845A440;
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_370();

    __asm { BRAA            X8, X16 }
  }

  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_166();
  sub_1D8580F98();
  *(v0 + 480) = *(v0 + 176);
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v1)
  {
    OUTLINED_FUNCTION_342();

LABEL_9:
    OUTLINED_FUNCTION_373(*(v0 + 416));

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_370();

    return v68();
  }

  v11 = *(v0 + 432);
  *(v0 + 88) = *(v0 + 424);
  *(v0 + 96) = v11;

  v12 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v14);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v15);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v16, v17);
  v18 = *(v0 + 448);
  *(v0 + 104) = *(v0 + 440);
  *(v0 + 112) = v18;

  v19 = OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  v21 = OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_423(v21, v22, v23, v24, v0 + 104);
  OUTLINED_FUNCTION_2_0();
  sub_1D848211C(v25);
  OUTLINED_FUNCTION_0_1();
  sub_1D848211C(v26);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_155();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v27, v28);
  *(v0 + 184) = *(v0 + 208);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E58, &qword_1D8590D58);
  v29 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_230(v29, v30, v31, v32, v0 + 184);
  sub_1D8477328();
  sub_1D8477400();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
  v35 = *(v0 + 145);
  *(v0 + 152) = *(v0 + 456);
  *(v0 + 160) = v35;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_198();
  sub_1D8581038();
  sub_1D84774D8();
  sub_1D847752C();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
  *(v0 + 192) = *(v0 + 216);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DF8, &qword_1D8590D18);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D8476930();
  sub_1D8476A64();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
  OUTLINED_FUNCTION_479();
  v40 = *(v0 + 472);
  *(v0 + 120) = *(v0 + 464);
  *(v0 + 128) = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E28, &qword_1D8590D28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_180(v41, v42, v43, v44, v0 + 120);
  sub_1D8476B98();
  sub_1D8476C48();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
  OUTLINED_FUNCTION_534();
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_378(v48);
  OUTLINED_FUNCTION_61(&unk_1ECA38D80);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_358();
  GameServicesActorSystem.JSONInvocationEncoder.recordReturnType<A>(_:)(v49, v50);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v51)
  {
    v83 = *(v0 + 400);
    v84 = *(v0 + 416);
    v81 = *(v0 + 392);
    v82 = *(v0 + 408);
    v52 = *(v0 + 384);
    v53 = *(v0 + 360);
    v79 = *(v0 + 368);
    v80 = *(v0 + 376);
    v77 = *(v0 + 344);
    v78 = *(v0 + 352);
    v54 = *(v0 + 336);
    v55 = *(v0 + 312);
    v75 = *(v0 + 320);
    v76 = *(v0 + 328);
    v74 = *(v0 + 304);

    v56 = OUTLINED_FUNCTION_258();
    v57(v56);
    (*(v55 + 8))(v75, v74);
    (*(v54 + 8))(v77, v76);
    (*(v53 + 8))(v79, v78);
    v58 = (*(v52 + 8))(v81, v80);
    v66 = OUTLINED_FUNCTION_407(v58, v59, v60, v61, v62, v63, v64, v65, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
    v67(v66);
    OUTLINED_FUNCTION_331();

    goto LABEL_9;
  }

  sub_1D8581028();
  swift_task_alloc();
  OUTLINED_FUNCTION_168();
  *(v0 + 488) = v71;
  *v71 = v72;
  v71[1] = sub_1D845A220;
  OUTLINED_FUNCTION_490();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_357();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D845A220()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 496) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845A440()
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_511();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_511();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_1D845A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_373(*(v10 + 416));

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_470();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D845A770(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F18);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_191(v4);
  v6 = OUTLINED_FUNCTION_188();

  return v8(v6);
}

uint64_t sub_1D845A810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845A9A4);
}

uint64_t sub_1D845A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
    }

    v13[7] = v13[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v27 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v27, v28, v29, v30, (v13 + 7));
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    v33 = v13[11];
    v13[5] = v13[10];
    v13[6] = v33;

    v34 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_461(v36, v37, v38, v39, (v13 + 5));
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v41);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477994();
    sub_1D8477A6C();
    v45 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v45, v46);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v47)
    {
      OUTLINED_FUNCTION_187();
      v48 = OUTLINED_FUNCTION_52();
      v49(v48);
      v50 = OUTLINED_FUNCTION_51_0();
      v51(v50);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v60 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v60);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v61);
    OUTLINED_FUNCTION_98();
    v13[2] = v62;
    v13[3] = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v63);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F18);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845ACE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.leave(challenges:for:)()
{
  OUTLINED_FUNCTION_148();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_1D8581018();
  v1[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v1[19] = v7;
  v1[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v1[22] = v9;
  v1[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v1[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
    }

    v15[11] = v15[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v29, v30, v31, v32, (v15 + 11));
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    v35 = v15[28];
    v15[7] = v15[27];
    v15[8] = v35;

    v36 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    OUTLINED_FUNCTION_309_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_461(v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v44);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E90, &qword_1D8590D70);
    sub_1D8477994();
    sub_1D8477A6C();
    v48 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v48, v49);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v50)
    {
      OUTLINED_FUNCTION_213();
      v51 = OUTLINED_FUNCTION_52();
      v52(v51);
      v53 = OUTLINED_FUNCTION_51_0();
      v54(v53);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v63 = swift_task_alloc();
    v64 = OUTLINED_FUNCTION_109(v63);
    *v64 = v65;
    v64[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v67 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    v18[1] = sub_1D845B3CC;
    OUTLINED_FUNCTION_207_0(v15[13]);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D845B2D4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845B3CC()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D845B500(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F10);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D8581018();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845B724);
}

uint64_t sub_1D845B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[21] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_460();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    v28 = v15[9];
    v15[5] = v15[8];
    v15[6] = v28;

    v29 = OUTLINED_FUNCTION_167();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    OUTLINED_FUNCTION_15(v31);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v33);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    v15[7] = v15[10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_521();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v52 = swift_task_alloc();
    v15[23] = v52;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v53);
    OUTLINED_FUNCTION_217();
    *v52 = v54;
    OUTLINED_FUNCTION_418();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v55, v56, v57, v58, v59, v60, v61);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F10);
    v17 = swift_task_alloc();
    v15[22] = v17;
    *v17 = v15;
    OUTLINED_FUNCTION_403(v17);
    OUTLINED_FUNCTION_207_0(v18);
    OUTLINED_FUNCTION_240();

    return v22(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845BA4C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.refreshChallenges(player:filters:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_467(v2, v3, v4, v5, v6);
  v1[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v1[20] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[23] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[24] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[25] = v13;
  v1[26] = v14;
  v1[27] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845BC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[13];
    OUTLINED_FUNCTION_144();
    v14[28] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_457();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
    }

    v27 = v14[27];
    v14[7] = v14[26];
    v14[8] = v27;

    v28 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    v30 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v30, v31, v32, v33, (v14 + 7));
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    v14[11] = v14[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EC0, &qword_1D8590D90);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D8477D80();
    sub_1D8477EDC();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v41)
    {
      OUTLINED_FUNCTION_520();
      v42 = OUTLINED_FUNCTION_52();
      v43(v42);
      v44 = OUTLINED_FUNCTION_51_0();
      v45(v44);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v54 = swift_task_alloc();
    v14[29] = v54;
    *v54 = v14;
    OUTLINED_FUNCTION_295_0(v54);
    OUTLINED_FUNCTION_53(v55);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v56, v57, v58, v59, v60, v61, v62);
  }

  else
  {
    v14[9] = v14[16];
    OUTLINED_FUNCTION_38(v14[27]);
    OUTLINED_FUNCTION_54();
    v64 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[31] = v17;
    *v17 = v14;
    v17[1] = sub_1D845C110;
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v64, a12, a13, a14);
  }
}

uint64_t sub_1D845C018()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845C110()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D845C244(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F08);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845C468);
}

uint64_t sub_1D845C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v34 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v34, v35, v36, v37, v13 + 56);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8478278();
    sub_1D8478350();
    v41 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v41, v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_187();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v56);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v57);
    OUTLINED_FUNCTION_98();
    *(v13 + 16) = v58;
    *(v13 + 24) = sub_1D845C8C8;
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F08);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D845C784()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_535();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D845C8C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D845CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_227();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_389();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeStates(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845CC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v39 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v39, v40, v41, v42, v15 + 88);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F00, &qword_1D8590DB0);
    sub_1D8478278();
    sub_1D8478350();
    v46 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v46, v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_213();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v61 = swift_task_alloc();
    v62 = OUTLINED_FUNCTION_109(v61);
    *v62 = v63;
    v62[1] = sub_1D845CFE0;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v65 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D845CFE0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845D0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D845D190()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_306();

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D845D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_425();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D845D37C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_463();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D845D3EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594F00);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845D610);
}

uint64_t sub_1D845D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v34 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v34, v35, v36, v37, v13 + 56);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478648();
    sub_1D8478784();
    v41 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v41, v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_187();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_531(v56, v57);
    v58 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v58);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v59);
    OUTLINED_FUNCTION_98();
    *(v13 + 16) = v60;
    *(v13 + 24) = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v61);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594F00);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listChallengeStates2(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v39 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v39, v40, v41, v42, v15 + 88);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F28, &qword_1D8590DC8);
    sub_1D8478648();
    sub_1D8478784();
    v46 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v46, v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_213();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_531(v61, v62);
    v63 = swift_task_alloc();
    v64 = OUTLINED_FUNCTION_109(v63);
    *v64 = v65;
    v64[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v67 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v67, a12, a13, a14);
  }
}

uint64_t sub_1D845DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8594EF8);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_107(v11);
  OUTLINED_FUNCTION_470();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D845DE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845E068);
}

uint64_t sub_1D845E42C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.listChallenges(player:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38EB8, &qword_1D8590D88);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D845EAE8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D845EBE0()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_372();

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D845ED1C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594EF0);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845EDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845EF40);
}

uint64_t sub_1D845EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v34 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v34, v35, v36, v37, v13 + 56);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478E1C();
    sub_1D8478F78();
    v41 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v41, v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_187();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v56);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v57);
    OUTLINED_FUNCTION_98();
    *(v13 + 16) = v58;
    *(v13 + 24) = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EF0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listParticipantStates(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v39 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v39, v40, v41, v42, v15 + 88);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38F70, &qword_1D8590E00);
    sub_1D8478E1C();
    sub_1D8478F78();
    v46 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v46, v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_213();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v61 = swift_task_alloc();
    v62 = OUTLINED_FUNCTION_109(v61);
    *v62 = v63;
    v62[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v65 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D845F70C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594EE8);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D845F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D845F930);
}

uint64_t sub_1D845F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v34 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v34, v35, v36, v37, v13 + 56);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479314();
    sub_1D847941C();
    v41 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v41, v42);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v43)
    {
      OUTLINED_FUNCTION_187();
      v44 = OUTLINED_FUNCTION_52();
      v45(v44);
      v46 = OUTLINED_FUNCTION_51_0();
      v47(v46);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v56 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v56);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v57);
    OUTLINED_FUNCTION_98();
    *(v13 + 16) = v58;
    *(v13 + 24) = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v59);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EE8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listParticipantStates2(player:challenges:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D28, &qword_1D8590CA8);
  v0[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D845FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38D30, &unk_1D8590CB0);
    v39 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_34_0(v39, v40, v41, v42, v15 + 88);
    sub_1D8475A40();
    sub_1D8475AF0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FB0, &qword_1D8590E20);
    sub_1D8479314();
    sub_1D847941C();
    v46 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v46, v47);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v48)
    {
      OUTLINED_FUNCTION_213();
      v49 = OUTLINED_FUNCTION_52();
      v50(v49);
      v51 = OUTLINED_FUNCTION_51_0();
      v52(v51);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v61 = swift_task_alloc();
    v62 = OUTLINED_FUNCTION_109(v61);
    *v62 = v63;
    v62[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v65 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v65, a12, a13, a14);
  }
}

uint64_t sub_1D84600FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_31_0(&unk_1D8594EE0);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_176(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_59(v11);
  OUTLINED_FUNCTION_471();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D84601A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_1D8581018();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84603A8);
}

uint64_t sub_1D8460794(uint64_t a1)
{
  OUTLINED_FUNCTION_537();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_320();
  v3 = *v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v1)
  {
    OUTLINED_FUNCTION_482();
  }

  OUTLINED_FUNCTION_511();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1D84608F4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedChallengeServiceProtocol<>.sendInvites(player:challenge:to:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[20] = v6;
  v1[21] = v0;
  v1[18] = v7;
  v1[19] = v8;
  v1[17] = v9;
  v10 = sub_1D8581018();
  v1[22] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[23] = v11;
  v1[24] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v1[25] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[26] = v13;
  v1[27] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v1[28] = v14;
  OUTLINED_FUNCTION_39(v14);
  v1[29] = v15;
  v1[30] = OUTLINED_FUNCTION_332();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[31] = v16;
  OUTLINED_FUNCTION_39(v16);
  v1[32] = v17;
  v18 = OUTLINED_FUNCTION_332();
  v19 = *v5;
  v20 = v5[1];
  v1[33] = v18;
  v1[34] = v19;
  v21 = *v3;
  v22 = v3[1];
  v1[35] = v20;
  v1[36] = v21;
  v1[37] = v22;
  v23 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v23);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D84610F0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84612B8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 336) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D8461404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_469();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594ED8);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  v11[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_471();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D84614B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_1D8581018();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D846164C);
}

uint64_t sub_1D846164C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[24] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_323();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
    }

    v26 = v13[11];
    v13[5] = v13[10];
    v13[6] = v26;

    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    v34 = v13[13];
    v13[7] = v13[12];
    v13[8] = v34;

    v35 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    v37 = OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_182(v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v46);
    type metadata accessor for ChallengeInvite(0);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_378(v47);
    OUTLINED_FUNCTION_278(&unk_1ECA39010);
    v48 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v48, v49);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v50)
    {
      OUTLINED_FUNCTION_527();
      v51 = OUTLINED_FUNCTION_52();
      v52(v51);
      v53 = OUTLINED_FUNCTION_51_0();
      v54(v53);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v63 = swift_task_alloc();
    v13[26] = v63;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v64);
    OUTLINED_FUNCTION_217();
    *v63 = v65;
    v63[1] = sub_1D8461B34;
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594ED8);
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v13[25] = v15;
    *v15 = v16;
    v15[1] = sub_1D8461A00;
    OUTLINED_FUNCTION_197();

    return v22(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8461A00()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8461B34()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8461C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_323();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8461CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_504();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.createInvite(player:challenge:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[18] = v6;
  v1[19] = v0;
  v1[16] = v7;
  v1[17] = v8;
  v1[15] = v9;
  v10 = sub_1D8581018();
  v1[20] = v10;
  OUTLINED_FUNCTION_39(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE8, &qword_1D8590E48);
  v1[23] = v12;
  OUTLINED_FUNCTION_39(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[26] = v14;
  OUTLINED_FUNCTION_39(v14);
  v1[27] = v15;
  v16 = OUTLINED_FUNCTION_332();
  v17 = *v5;
  v18 = v5[1];
  v1[28] = v16;
  v1[29] = v17;
  v19 = *v3;
  v20 = v3[1];
  v1[30] = v18;
  v1[31] = v19;
  v1[32] = v20;
  v21 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v21);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8461F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 128);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 264) = *(v14 + 112);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_111();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
    }

    v28 = *(v14 + 240);
    *(v14 + 72) = *(v14 + 232);
    *(v14 + 80) = v28;

    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v14 + 72);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    v39 = *(v14 + 256);
    *(v14 + 88) = *(v14 + 248);
    *(v14 + 96) = v39;

    v40 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    v42 = OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_182(v42, v43, v44, v45, v46);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v47);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v48);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v51);
    type metadata accessor for ChallengeInvite(0);
    OUTLINED_FUNCTION_273();
    OUTLINED_FUNCTION_378(v52);
    OUTLINED_FUNCTION_278(&unk_1ECA39010);
    v53 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v53, v54);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v55)
    {
      OUTLINED_FUNCTION_215();
      v56 = OUTLINED_FUNCTION_52();
      v57(v56);
      v58 = OUTLINED_FUNCTION_51_0();
      v59(v58);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 272) = v68;
    *v68 = v69;
    v68[1] = sub_1D8462318;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_300(*(v14 + 152), *(v14 + 232));
    OUTLINED_FUNCTION_243(*(v14 + 256));
    OUTLINED_FUNCTION_54();
    v71 = v16 + *v16;
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 288) = v17;
    *v17 = v18;
    v17[1] = sub_1D84624C8;
    OUTLINED_FUNCTION_397();
    OUTLINED_FUNCTION_169();

    return v24(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v71, a12, a13, a14);
  }
}

uint64_t sub_1D8462318()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8462410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_422();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_111();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84624C8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84625FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_422();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84626B8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D846272C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D8594ED0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);

  return v5(v0);
}

uint64_t sub_1D84627C0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84628E8);
}

uint64_t sub_1D84628E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D8594ED0);
    v15 = swift_task_alloc();
    v13[16] = v15;
    *v15 = v13;
    v15[1] = sub_1D8482210;
    OUTLINED_FUNCTION_207_0(v13[7]);
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  v13[15] = OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_354();
  v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  v13[5] = v13[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_21();
  sub_1D8581038();
  sub_1D847A008();
  sub_1D847A0B8();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_164();
  GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39050, &qword_1D8590E90);
  sub_1D847A168();
  sub_1D847A2A4();
  v28 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v28, v29);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v30)
  {
    OUTLINED_FUNCTION_453();
    v31 = OUTLINED_FUNCTION_49_0();
    v32(v31);
    OUTLINED_FUNCTION_331();

LABEL_9:

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v33 = swift_task_alloc();
  v13[17] = v33;
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v34);
  OUTLINED_FUNCTION_98();
  *v33 = v35;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v36);
  OUTLINED_FUNCTION_173();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t DistributedChallengeServiceProtocol<>.describeInvites(invites:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v0[17] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8462CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[10];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[20] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
    }

    v14[7] = v14[9];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39050, &qword_1D8590E90);
    sub_1D847A168();
    sub_1D847A2A4();
    v32 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v32, v33);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v34)
    {
      OUTLINED_FUNCTION_452();
      v35 = OUTLINED_FUNCTION_49_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[21] = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_294(v45);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[12]);
    OUTLINED_FUNCTION_54();
    v48 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    v18[1] = sub_1D84561D0;
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_410();
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v48, a12, a13, a14);
  }
}

uint64_t sub_1D8462FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_404();
  OUTLINED_FUNCTION_24(&unk_1D8594EC8);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_97(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_107(v11);
  OUTLINED_FUNCTION_470();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D846304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v8 = sub_1D8581018();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v7[20] = v9;
  v7[21] = *(v9 - 8);
  v7[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39080, &qword_1D8590EB0);
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8463250);
}

uint64_t DistributedChallengeServiceProtocol<>.listInvites(player:filters:after:)()
{
  OUTLINED_FUNCTION_174();
  v8 = OUTLINED_FUNCTION_264(v1, v2, v3, v4, v5, v6, v7);
  v0[22] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[23] = v9;
  v0[24] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v0[25] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[26] = v11;
  v0[27] = OUTLINED_FUNCTION_332();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39080, &qword_1D8590EB0);
  v0[28] = v12;
  OUTLINED_FUNCTION_39(v12);
  v0[29] = v13;
  v0[30] = OUTLINED_FUNCTION_332();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[31] = v14;
  OUTLINED_FUNCTION_39(v14);
  v0[32] = v15;
  v16 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_252_0(v16);
  v17 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v17);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8463BD8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_475();
  v9 = v2;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_31_0(&unk_1D8594EC0);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_176(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_30_0(v4);

  return v7(v6);
}

uint64_t sub_1D8463C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8463DFC);
}

uint64_t sub_1D8463DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_125();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_348();
    v27 = OUTLINED_FUNCTION_167();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v30);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    OUTLINED_FUNCTION_347();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847ABF4();
    sub_1D847ACCC();
    v37 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v37, v38);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v39)
    {
      OUTLINED_FUNCTION_187();
      v40 = OUTLINED_FUNCTION_52();
      v41(v40);
      v42 = OUTLINED_FUNCTION_51_0();
      v43(v42);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v52 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v52);
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v53);
    OUTLINED_FUNCTION_98();
    *(v13 + 16) = v54;
    *(v13 + 24) = sub_1D845ACE8;
    OUTLINED_FUNCTION_9_0(v55);
    OUTLINED_FUNCTION_173();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EC0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_41(v16);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedChallengeServiceProtocol<>.listInviteStates(player:invites:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_175(v1, v2, v3, v4, v5);
  v0[18] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[19] = v7;
  v0[20] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39018, &qword_1D8590E78);
  v0[21] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[22] = v9;
  v0[23] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v0[24] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[25] = v11;
  v12 = OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_202_0(v12);
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D846426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_216_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_311();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_346();
    v29 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    v31 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v31, v32, v33, v34, v15 + 56);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v36);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v37, v38);
    OUTLINED_FUNCTION_343();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39020, &qword_1D8590E80);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_21();
    sub_1D8581038();
    sub_1D847A008();
    sub_1D847A0B8();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_164();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA390E0, &qword_1D8590EE0);
    sub_1D847ABF4();
    sub_1D847ACCC();
    v42 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v42, v43);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v44)
    {
      OUTLINED_FUNCTION_213();
      v45 = OUTLINED_FUNCTION_52();
      v46(v45);
      v47 = OUTLINED_FUNCTION_51_0();
      v48(v47);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v57 = swift_task_alloc();
    v58 = OUTLINED_FUNCTION_109(v57);
    *v58 = v59;
    v58[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_54();
    v61 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_356(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_169();

    return v24(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v61, a12, a13, a14);
  }
}

uint64_t sub_1D84645D8()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_24(&unk_1D8594EB8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_535();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D846467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1D8581018();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39108, &qword_1D8590EF8);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8464814);
}

uint64_t sub_1D8464814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[23] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
    }

    v27 = v15[10];
    v15[5] = v15[9];
    v15[6] = v27;

    v28 = OUTLINED_FUNCTION_167();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_15(v30);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v31);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v32);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v33, v34);
    v35 = v15[12];
    v15[7] = v15[11];
    v15[8] = v35;

    v36 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
    v38 = OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_55(v38, v39, v40, v41, (v15 + 7));
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v42);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v44, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v46);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v47)
    {

      v48 = OUTLINED_FUNCTION_52();
      v49(v48);
      v50 = OUTLINED_FUNCTION_51_0();
      v51(v50);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v60 = swift_task_alloc();
    v15[25] = v60;
    OUTLINED_FUNCTION_5_2();
    sub_1D8473E40(v61);
    OUTLINED_FUNCTION_217();
    *v60 = v62;
    v60[1] = sub_1D8464CBC;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v63, v64, v65, v66, v67, v68, v69);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EB8);
    v17 = swift_task_alloc();
    v15[24] = v17;
    *v17 = v15;
    v17[1] = sub_1D8464B88;
    OUTLINED_FUNCTION_207_0(v15[9]);
    OUTLINED_FUNCTION_240();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8464B88()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_334();
  v1 = *v0;
  OUTLINED_FUNCTION_37();
  *v2 = v1;

  OUTLINED_FUNCTION_341();

  OUTLINED_FUNCTION_137();

  return v3();
}

uint64_t sub_1D8464CBC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8464DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_451();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8464E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_451();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedChallengeServiceProtocol<>.accept(player:invite:)()
{
  OUTLINED_FUNCTION_174();
  v3 = v2;
  v5 = v4;
  v1[17] = v6;
  v1[18] = v0;
  v1[15] = v7;
  v1[16] = v8;
  v9 = sub_1D8581018();
  v1[19] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39108, &qword_1D8590EF8);
  v1[22] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[23] = v12;
  v1[24] = OUTLINED_FUNCTION_332();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[25] = v13;
  OUTLINED_FUNCTION_39(v13);
  v1[26] = v14;
  v15 = OUTLINED_FUNCTION_332();
  v16 = *v5;
  v17 = v5[1];
  v1[27] = v15;
  v1[28] = v16;
  v18 = *v3;
  v19 = v3[1];
  v1[29] = v17;
  v1[30] = v18;
  v1[31] = v19;
  v20 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v20);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84650B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_427();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[7].n128_u64[1];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[16].n128_u64[0] = v14[7].n128_u64[0];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_239();

      return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
    }

    v27 = v14[14].n128_u64[1];
    v14[4].n128_u64[1] = v14[14].n128_u64[0];
    v14[5].n128_u64[0] = v27;

    v28 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    v30 = OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_55(v30, v31, v32, v33, &v14[4].n128_i64[1]);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v34);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v35);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v36, v37);
    v38 = v14[15].n128_u64[1];
    v14[5].n128_u64[1] = v14[15].n128_u64[0];
    v14[6].n128_u64[0] = v38;

    v39 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    v41 = OUTLINED_FUNCTION_158();
    OUTLINED_FUNCTION_55(v41, v42, v43, v44, &v14[5].n128_i64[1]);
    OUTLINED_FUNCTION_2_0();
    sub_1D848211C(v45);
    OUTLINED_FUNCTION_0_1();
    sub_1D848211C(v46);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v49);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v50)
    {

      v51 = OUTLINED_FUNCTION_52();
      v52(v51);
      v53 = OUTLINED_FUNCTION_51_0();
      v54(v53);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v63 = swift_task_alloc();
    v14[16].n128_u64[1] = v63;
    *v63 = v14;
    v63[1] = sub_1D846548C;
    OUTLINED_FUNCTION_53(v14[9].n128_i64[0]);
    OUTLINED_FUNCTION_239();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v64, v65, v66, v67, v68, v69, v70);
  }

  else
  {
    OUTLINED_FUNCTION_300(v14[9].n128_i64[0], v14[14]);
    OUTLINED_FUNCTION_243(v14[15].n128_i64[1]);
    OUTLINED_FUNCTION_54();
    v72 = v16 + *v16;
    v17 = swift_task_alloc();
    v14[17].n128_u64[1] = v17;
    *v17 = v14;
    v17[1] = sub_1D8465644;
    OUTLINED_FUNCTION_188();
    OUTLINED_FUNCTION_239();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v72, a12, a13, a14);
  }
}

uint64_t sub_1D846548C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8465584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_421();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D8465644()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D8465778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_421();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D846583C()
{
  OUTLINED_FUNCTION_174();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84658B8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_24(&unk_1D8594EB0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_191(v1);

  return v4();
}

uint64_t sub_1D8465944()
{
  OUTLINED_FUNCTION_148();
  v3 = v2;
  OUTLINED_FUNCTION_153();
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1D8465A34()
{
  v1[6] = v0;
  v2 = sub_1D8581018();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8465AF4);
}

uint64_t sub_1D8465AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[10] = OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedChallengeServiceProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v15), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39110, &qword_1D8590F10), sub_1D847B188(), sub_1D847B20C(), v16 = OUTLINED_FUNCTION_16(), OUTLINED_FUNCTION_353(v16, v17), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v18))
    {
      OUTLINED_FUNCTION_342();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      v37 = swift_task_alloc();
      v13[12] = v37;
      OUTLINED_FUNCTION_5_2();
      sub_1D8473E40(v38);
      OUTLINED_FUNCTION_98();
      *v37 = v39;
      v37[1] = sub_1D8465E44;
      OUTLINED_FUNCTION_9_0(v40);
      OUTLINED_FUNCTION_173();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D8594EB0);
    v28 = swift_task_alloc();
    v13[11] = v28;
    *v28 = v13;
    v28[1] = sub_1D8465D38;
    OUTLINED_FUNCTION_197();

    return v29(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }
}

uint64_t sub_1D8465D38()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_320();
  v2 = *v1;
  OUTLINED_FUNCTION_37();
  *v3 = v2;

  OUTLINED_FUNCTION_510();

  OUTLINED_FUNCTION_507();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_482();
  }

  return v5(v4);
}

uint64_t sub_1D8465E44()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D8465F3C()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_151();
  v1(v0);
  OUTLINED_FUNCTION_331();

  v2 = OUTLINED_FUNCTION_72();

  return v3(v2);
}

uint64_t sub_1D8465FD4()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_151();
  v1(v0);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t DistributedChallengeServiceProtocol<>.listAllStoredChallengeDefinitions()()
{
  OUTLINED_FUNCTION_148();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = sub_1D8581018();
  v1[12] = v5;
  OUTLINED_FUNCTION_39(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_332();
  v7 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v7);
}

{
  OUTLINED_FUNCTION_148();
  sub_1D8580FA8();
  OUTLINED_FUNCTION_198();
  v0 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v0);
}

uint64_t sub_1D8466114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[8];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[15] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0), OUTLINED_FUNCTION_156(), GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v16), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39110, &qword_1D8590F10), sub_1D847B188(), sub_1D847B20C(), v17 = OUTLINED_FUNCTION_16(), OUTLINED_FUNCTION_353(v17, v18), GameServicesActorSystem.JSONInvocationEncoder.doneRecording()(), v19))
    {
      OUTLINED_FUNCTION_342();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      OUTLINED_FUNCTION_184_0();
      sub_1D8581028();
      swift_task_alloc();
      OUTLINED_FUNCTION_168();
      v14[16] = v39;
      *v39 = v40;
      v39[1] = sub_1D84663B8;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_112();

      return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
    }
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[10]);
    OUTLINED_FUNCTION_54();
    v42 = v29 + *v29;
    v30 = swift_task_alloc();
    v14[18] = v30;
    *v30 = v14;
    v30[1] = sub_1D8466548;
    OUTLINED_FUNCTION_169();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, v42, a12, a13, a14);
  }
}

uint64_t sub_1D84663B8()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84664B0()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_151();
  v1(v0);
  OUTLINED_FUNCTION_331();

  v2 = OUTLINED_FUNCTION_72();

  return v3(v2);
}

uint64_t sub_1D8466548()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v4 = v3;
  OUTLINED_FUNCTION_62();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_37();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(v1);
  }
}

uint64_t sub_1D8466680()
{
  OUTLINED_FUNCTION_174();

  v0 = OUTLINED_FUNCTION_151();
  v1(v0);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();

  return v2();
}

uint64_t sub_1D8466718()
{
  OUTLINED_FUNCTION_148();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D8466774(uint64_t a1)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v1);
  v2 = OUTLINED_FUNCTION_188();

  return MEMORY[0x1EEE6CC98](v2);
}

uint64_t sub_1D84667E8(uint64_t a1)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v1);
  sub_1D843D180();
  return sub_1D8580FD8();
}

uint64_t sub_1D846686C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedChallengeServiceProtocol();
  OUTLINED_FUNCTION_5_2();
  sub_1D8473E40(v4);
  sub_1D843EE3C();
  OUTLINED_FUNCTION_221();
  result = sub_1D8580FE8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static ChallengeDefinition.Trackable.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_506();
      OUTLINED_FUNCTION_436();
      v9 = sub_1D844A4B0(v3, v4, v5, v6, v7, v8);
      swift_bridgeObjectRelease_n();
LABEL_7:
      swift_bridgeObjectRelease_n();
      return v9 & 1;
    }
  }

  else if (!v2)
  {
    v9 = 1;
    goto LABEL_7;
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_1D84669A4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

uint64_t sub_1D84669C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

unint64_t sub_1D84669DC()
{
  result = qword_1ECA3B370;
  if (!qword_1ECA3B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B370);
  }

  return result;
}

unint64_t sub_1D8466A30()
{
  result = qword_1ECA3B378;
  if (!qword_1ECA3B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B378);
  }

  return result;
}

unint64_t sub_1D8466A84()
{
  result = qword_1ECA38A68;
  if (!qword_1ECA38A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A68);
  }

  return result;
}

unint64_t sub_1D8466AD8()
{
  result = qword_1ECA3B380;
  if (!qword_1ECA3B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B380);
  }

  return result;
}

unint64_t sub_1D8466B2C()
{
  result = qword_1ECA38A70;
  if (!qword_1ECA38A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA38A70);
  }

  return result;
}

unint64_t sub_1D8466B80()
{
  result = qword_1ECA3B388;
  if (!qword_1ECA3B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B388);
  }

  return result;
}

unint64_t sub_1D8466BD4()
{
  result = qword_1ECA3B390;
  if (!qword_1ECA3B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3B390);
  }

  return result;
}

uint64_t sub_1D8466C28()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_408();
  v2 = OUTLINED_FUNCTION_299();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 1701736302 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(1701736302, 0xE400000000000000);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v4)
    {
      return v7 + 1;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1D8466CB8(char a1)
{
  if (a1)
  {
    return 1701736302;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_1D8466CF0()
{
  OUTLINED_FUNCTION_484();
  if (v2 == v3 && v1 == 0xE300000000000000)
  {

    v8 = 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_333_0(v5, v6, v7);
    OUTLINED_FUNCTION_369();
    v8 = v0 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1D8466D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8466C28();
  *a1 = result;
  return result;
}

uint64_t sub_1D8466D7C()
{
  sub_1D847B290();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466DB4()
{
  sub_1D847B290();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8466DEC()
{
  sub_1D847B338();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466E24()
{
  sub_1D847B338();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D8466E5C()
{
  sub_1D847B2E4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D8466E94()
{
  sub_1D847B2E4();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void ChallengeDefinition.Trackable.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39128, &qword_1D8590F18);
  OUTLINED_FUNCTION_1();
  v19 = v5;
  v20 = v4;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v18 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39130, &qword_1D8590F20);
  OUTLINED_FUNCTION_1();
  v21 = v8;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_129();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39138, &qword_1D8590F28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_128();
  v11 = *(v0 + 8);
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D847B290();
  OUTLINED_FUNCTION_390();
  sub_1D8581BB8();
  if (v11)
  {
    sub_1D847B338();
    OUTLINED_FUNCTION_222();
    sub_1D8581988();
    v12 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v14);
    OUTLINED_FUNCTION_277();
    sub_1D8581A58();
    OUTLINED_FUNCTION_267();
    v15(v1, v21);
  }

  else
  {
    OUTLINED_FUNCTION_290();
    sub_1D847B2E4();
    OUTLINED_FUNCTION_222();
    sub_1D8581988();
    (*(v19 + 8))(v18, v20);
  }

  v16 = OUTLINED_FUNCTION_228();
  v17(v16);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

void ChallengeDefinition.Trackable.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_429();
    v2 = OUTLINED_FUNCTION_253();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
    OUTLINED_FUNCTION_6();
    sub_1D848211C(v4);
    OUTLINED_FUNCTION_161();
    sub_1D85811E8();
  }

  else
  {
    OUTLINED_FUNCTION_447();
  }
}

uint64_t ChallengeDefinition.Trackable.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D8581B58();
  if (v1)
  {
    MEMORY[0x1DA7191F0](0);
    v3 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_231();
    v6 = sub_1D848211C(v5);
    OUTLINED_FUNCTION_412(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2, v1, v16);
    sub_1D85811E8();
  }

  else
  {
    MEMORY[0x1DA7191F0](1);
  }

  return sub_1D8581B98();
}

void ChallengeDefinition.Trackable.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v1;
  v45 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39140, &qword_1D8590F30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39148, &qword_1D8590F38);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_200();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39150, &qword_1D8590F40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_128();
  v8 = OUTLINED_FUNCTION_508();
  OUTLINED_FUNCTION_260(v8, v9);
  sub_1D847B290();
  OUTLINED_FUNCTION_390();
  sub_1D8581BA8();
  if (!v0)
  {
    v10 = sub_1D8581968();
    sub_1D8440880(v10, 0);
    v12 = v11;
    v14 = v6;
    if (v15 != v13 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v20 == v21)
      {
        __break(1u);
        return;
      }

      v44 = *(v19 + v17);
      sub_1D84408DC(v17 + 1, v16, v12, v19, v17, v18);
      OUTLINED_FUNCTION_503();
      v23 = v22;
      swift_unknownObjectRelease();
      if (v2 == (v23 >> 1))
      {
        if (v44)
        {
          OUTLINED_FUNCTION_290();
          sub_1D847B2E4();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          swift_unknownObjectRelease();
          v24 = OUTLINED_FUNCTION_276();
          v25(v24);
          v26 = OUTLINED_FUNCTION_212_0();
          v27(v26, v6);
          v28 = 0;
          v29 = 0;
        }

        else
        {
          LOBYTE(v46) = 0;
          sub_1D847B338();
          OUTLINED_FUNCTION_222();
          sub_1D8581878();
          v37 = OUTLINED_FUNCTION_189();
          __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
          OUTLINED_FUNCTION_2_0();
          sub_1D848211C(v39);
          OUTLINED_FUNCTION_259();
          sub_1D8581958();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_265();
          v40 = OUTLINED_FUNCTION_496();
          v41(v40);
          v42 = OUTLINED_FUNCTION_218();
          v43(v42, v6);
          v28 = v46;
          v29 = v47;
        }

        *v45 = v28;
        v45[1] = v29;
        goto LABEL_10;
      }

      v14 = v6;
    }

    v30 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v30, MEMORY[0x1E69E6B28]);
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v32 = &type metadata for ChallengeDefinition.Trackable;
    sub_1D8581888();
    OUTLINED_FUNCTION_178();
    OUTLINED_FUNCTION_206_0();
    v33 = OUTLINED_FUNCTION_498();
    v34(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    v35 = OUTLINED_FUNCTION_212_0();
    v36(v35, v14);
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}