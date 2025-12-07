void *OUTLINED_FUNCTION_162_0()
{

  return memcpy((v0 + 240), (v0 + 384), 0x88uLL);
}

BOOL OUTLINED_FUNCTION_162_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_186_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_186_4()
{

  return swift_slowAlloc();
}

void TypedValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v159 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BD0, &qword_1C907D900);
  OUTLINED_FUNCTION_11();
  v157 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BD8, &qword_1C907D908);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BE0, &qword_1C907D910);
  OUTLINED_FUNCTION_11();
  v156 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BE8, &qword_1C907D918);
  OUTLINED_FUNCTION_11();
  v155 = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BF0, &qword_1C907D920);
  OUTLINED_FUNCTION_11();
  v154 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315BF8, &qword_1C907D928);
  OUTLINED_FUNCTION_4_22(v37, &a18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C00, &qword_1C907D930);
  OUTLINED_FUNCTION_4_22(v39, &a16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v158 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C08, &qword_1C907D938);
  OUTLINED_FUNCTION_4_22(v42, &a14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_86();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C10, &qword_1C907D940);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315C18, &unk_1C907D948);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15_0();
  v161 = v25;
  v47 = OUTLINED_FUNCTION_181_1();
  v49 = OUTLINED_FUNCTION_217(v47, v48);
  sub_1C8CC7CBC(v49, v50, v51);
  OUTLINED_FUNCTION_103_0();
  sub_1C9064DEC();
  if (v21)
  {
    goto LABEL_9;
  }

  v52 = sub_1C9064A9C();
  v53 = sub_1C8CB8914(v52, 0);
  if (v55 == v54 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_282_1();
  if (v60 == v61)
  {
    __break(1u);
    JUMPOUT(0x1C8CCB790);
  }

  v62 = *(v59 + v57);
  sub_1C8CB891C(v57 + 1, v56, v53, v59, v57, v58);
  v64 = v63;
  v66 = v65;
  v67 = swift_unknownObjectRelease();
  if (v64 != v66 >> 1)
  {
LABEL_8:
    v71 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v71, MEMORY[0x1E69E6B28]);
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v73 = &type metadata for TypedValue;
    v74 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v74);
    OUTLINED_FUNCTION_10_0();
    (*(v75 + 104))(v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_57_8();
    v76 = OUTLINED_FUNCTION_181_1();
    v77(v76);
LABEL_9:
    v78 = v161;
    goto LABEL_10;
  }

  switch(v62)
  {
    case 1:
      OUTLINED_FUNCTION_277_0();
      sub_1C8DF24DC(v99, v100, v101);
      OUTLINED_FUNCTION_161_1();
      OUTLINED_FUNCTION_48_7();
      sub_1C906498C();
      type metadata accessor for TypedValue.EnumerationValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_188_2();
      sub_1C8CC8068(v119);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v141 = OUTLINED_FUNCTION_62_0();
      v142(v141);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v143();
      v20 |= 0x1000000000000000uLL;
      break;
    case 2:
      sub_1C8DF2488(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_42_0();
      sub_1C906498C();
      v113 = type metadata accessor for TypedValue.EntityValue(0);
      v114 = swift_allocBox();
      OUTLINED_FUNCTION_190_4();
      sub_1C8CC8068(v115);
      OUTLINED_FUNCTION_315_0();
      OUTLINED_FUNCTION_155_3();
      OUTLINED_FUNCTION_305_0(v116, v117, v118, v113);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296();
      v128(v158, v20);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_222_1();
      v129();
      v20 = v114 | 0x2000000000000000;
      break;
    case 3:
      sub_1C8DF23E0(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1(v84, v85, v86, v87);
      OUTLINED_FUNCTION_2();
      v88 = swift_allocObject();
      sub_1C8DF25D8(v88, v89, v90);
      OUTLINED_FUNCTION_105_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296();
      v130 = OUTLINED_FUNCTION_129_1();
      v131(v130);
      v132 = OUTLINED_FUNCTION_76_3();
      v133(v132);
      v20 = v88 | 0x3000000000000000;
      break;
    case 4:
      sub_1C8DF238C(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1(v79, v80, v81, v82);
      type metadata accessor for TypedValue.QueryValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_191_4();
      sub_1C8CC8068(v83);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_210_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v125 = OUTLINED_FUNCTION_107_3();
      v126(v125, v154);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v127();
      v20 |= 0x4000000000000000uLL;
      break;
    case 5:
      sub_1C8DF22E4(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1(v102, v103, v104, v105);
      v106 = swift_allocObject();
      sub_1C8DF2584(v106, v107, v108);
      OUTLINED_FUNCTION_105_1();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      v144 = OUTLINED_FUNCTION_107_3();
      v145(v144, v155);
      v146 = OUTLINED_FUNCTION_76_3();
      v147(v146);
      v20 = v106 | 0x5000000000000000;
      break;
    case 6:
      sub_1C8DF2290(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      sub_1C906498C();
      type metadata accessor for TypedValue.EntityIdentifierValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_187_3();
      sub_1C8CC8068(v120);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v148 = OUTLINED_FUNCTION_47_3();
      v149(v148, v156);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v150();
      v20 |= 0x6000000000000000uLL;
      break;
    case 7:
      sub_1C8DF21E8(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1(v91, v92, v93, v94);
      v95 = swift_allocObject();
      sub_1C8DF2530(v95, v96, v97);
      OUTLINED_FUNCTION_305_0(&type metadata for TypedValue.ReferenceValue, v98, v160, &type metadata for TypedValue.ReferenceValue);
      OUTLINED_FUNCTION_213_1();
      swift_unknownObjectRelease();
      v134 = OUTLINED_FUNCTION_184_3();
      v135(v134, v160);
      v136 = OUTLINED_FUNCTION_76_3();
      v137(v136);
      v20 = v95 | 0x7000000000000000;
      break;
    case 8:
      sub_1C8DF2194(v67, v68, v69);
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_229_1(v109, v110, v111, v112);
      v121 = type metadata accessor for TypedValue.CodableValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_186_3();
      sub_1C8CC8068(v122);
      v123 = OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_305_0(v123, v124, v157, v121);
      OUTLINED_FUNCTION_321_1();
      swift_unknownObjectRelease();
      v151 = OUTLINED_FUNCTION_184_3();
      v152(v151, v157);
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_222_1();
      v153();
      v20 |= 0x8000000000000000;
      break;
    default:
      sub_1C8CC7D10(v67, v68, v69);
      OUTLINED_FUNCTION_161_1();
      OUTLINED_FUNCTION_48_7();
      OUTLINED_FUNCTION_42_0();
      sub_1C906498C();
      type metadata accessor for TypedValue.PrimitiveValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_192_3();
      sub_1C8CC8068(v70);
      OUTLINED_FUNCTION_141_3();
      OUTLINED_FUNCTION_66_4();
      sub_1C9064A6C();
      swift_unknownObjectRelease();
      v138 = OUTLINED_FUNCTION_62_0();
      v139(v138, v44);
      OUTLINED_FUNCTION_45();
      OUTLINED_FUNCTION_222_1();
      v140();
      break;
  }

  v78 = v161;
  *v159 = v20;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v78);
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CCB7B4()
{
  OUTLINED_FUNCTION_347_0();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CCB7F0()
{
  OUTLINED_FUNCTION_347_0();

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CCB840()
{
  OUTLINED_FUNCTION_347_0();

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_247_0()
{

  return swift_projectBox();
}

void *OUTLINED_FUNCTION_247_1()
{

  return memcpy((v1 - 184), (v0 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_310_1()
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CCB904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8CCB92C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C8CCB92C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746172656D756E65 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6465727265666564 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001C90CADF0 == a2;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x636E657265666572 && a2 == 0xE900000000000065;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C6261646F63 && a2 == 0xE700000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t OUTLINED_FUNCTION_241_2()
{
}

uint64_t OUTLINED_FUNCTION_241_3@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;

  return sub_1C906499C();
}

void TypedValue.PrimitiveValue.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v360[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315900, &qword_1C907D710);
  OUTLINED_FUNCTION_4_22(v6, &v366);
  v345 = v7;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v360[0] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315908, &qword_1C907D718);
  OUTLINED_FUNCTION_4_22(v10, &v364);
  v343 = v11;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_97();
  v359[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315910, &qword_1C907D720);
  OUTLINED_FUNCTION_4_22(v14, v363);
  v341[2] = v15;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_97();
  v359[0] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315918, &qword_1C907D728);
  OUTLINED_FUNCTION_4_22(v18, &v361);
  v341[0] = v19;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_97();
  v358[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315920, &qword_1C907D730);
  OUTLINED_FUNCTION_4_22(v22, v360);
  v340 = v23;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v358[0] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315928, &qword_1C907D738);
  OUTLINED_FUNCTION_4_22(v26, v359);
  v338 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v357[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315930, &qword_1C907D740);
  OUTLINED_FUNCTION_4_22(v30, v358);
  v336 = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_97();
  v357[0] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315938, &qword_1C907D748);
  OUTLINED_FUNCTION_4_22(v34, v357);
  v335 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v356 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315940, &qword_1C907D750);
  OUTLINED_FUNCTION_4_22(v38, v355);
  v334 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315948, &qword_1C907D758);
  OUTLINED_FUNCTION_4_22(v42, v354);
  v333 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315950, &qword_1C907D760);
  OUTLINED_FUNCTION_4_22(v46, v353);
  v332 = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315958, &qword_1C907D768);
  OUTLINED_FUNCTION_4_22(v50, v352);
  v331 = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315960, &qword_1C907D770);
  OUTLINED_FUNCTION_4_22(v54, v351);
  v330 = v55;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315968, &qword_1C907D778);
  OUTLINED_FUNCTION_4_22(v58, v350);
  v329 = v59;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315970, &qword_1C907D780);
  OUTLINED_FUNCTION_4_22(v62, v349);
  v328 = v63;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315978, &qword_1C907D788);
  OUTLINED_FUNCTION_4_22(v66, v347);
  v327 = v67;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315980, &qword_1C907D790);
  OUTLINED_FUNCTION_4_22(v70, v346);
  v326 = v71;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315988, &qword_1C907D798);
  OUTLINED_FUNCTION_4_22(v74, v344);
  v364 = v75;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315990, &qword_1C907D7A0);
  OUTLINED_FUNCTION_4_22(v78, &v343);
  v325 = v79;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315998, &qword_1C907D7A8);
  OUTLINED_FUNCTION_4_22(v82, v342);
  v324 = v83;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159A0, &qword_1C907D7B0);
  OUTLINED_FUNCTION_4_22(v86, v341);
  v323 = v87;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159A8, &qword_1C907D7B8);
  OUTLINED_FUNCTION_4_22(v90, v337);
  v322 = v91;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159B0, &qword_1C907D7C0);
  OUTLINED_FUNCTION_4_22(v94, v339);
  v321 = v95;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v97);
  v363[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159B8, &qword_1C907D7C8);
  OUTLINED_FUNCTION_11();
  v319 = v98;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v100);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3159C0, &qword_1C907D7D0);
  OUTLINED_FUNCTION_11();
  v362 = v101;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_97();
  v368 = v103;
  v104 = OUTLINED_FUNCTION_111();
  v361 = type metadata accessor for TypedValue.PrimitiveValue(v104);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_216();
  v363[0] = v110;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v126);
  v128 = v310 - v127;
  MEMORY[0x1EEE9AC00](v129);
  v131 = (v310 - v130);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v133);
  v135 = v310 - v134;
  v366 = a1;
  v136 = OUTLINED_FUNCTION_122_3(a1);
  sub_1C8CCA1E4(v136, v137, v138);
  v139 = v367;
  sub_1C9064DEC();
  if (v139)
  {
    goto LABEL_9;
  }

  v311 = v4;
  v312 = v131;
  v313 = v128;
  v314 = v3;
  v315 = v2;
  v367 = v135;
  v140 = v368;
  v141 = sub_1C9064A9C();
  v142 = sub_1C8CB8914(v141, 0);
  if (v144 == v143 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_119_0();
  v310[1] = 0;
  OUTLINED_FUNCTION_282_1();
  if (v149 == v150)
  {
    __break(1u);
    JUMPOUT(0x1C8CCE1C8);
  }

  v310[0] = *(v148 + v146);
  v151 = sub_1C8CB891C(v146 + 1, v145, v142, v148, v146, v147);
  v153 = v152;
  v155 = v154;
  v156 = swift_unknownObjectRelease();
  if (v153 != v155 >> 1)
  {
LABEL_8:
    v160 = v361;
    v161 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v161, MEMORY[0x1E69E6B28]);
    v163 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v163 = v160;
    v164 = sub_1C906499C();
    OUTLINED_FUNCTION_411(v164);
    OUTLINED_FUNCTION_10_0();
    (*(v165 + 104))(v163);
    swift_willThrow();
    swift_unknownObjectRelease();
    v166 = OUTLINED_FUNCTION_50_8();
    v167(v166);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v366);
    goto LABEL_10;
  }

  switch(v310[0])
  {
    case 1:
      LOBYTE(v369) = 1;
      sub_1C8DF1C10(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.BoolCodingKeys, &v369);
      v256 = sub_1C9064A1C();
      swift_unknownObjectRelease();
      v257 = OUTLINED_FUNCTION_20_12();
      v258(v257);
      v259 = OUTLINED_FUNCTION_246();
      v260(v259);
      *v311 = v256 & 1;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 2:
      LOBYTE(v369) = 2;
      sub_1C8DF1BBC(v156, v157, v158);
      v179 = v348;
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.IntCodingKeys, &v369, v365);
      v198 = v320;
      v238 = sub_1C9064A4C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296();
      v239(v179, v198);
      v240 = OUTLINED_FUNCTION_50_8();
      v241(v240);
      *v312 = v238;
      goto LABEL_34;
    case 3:
      LOBYTE(v369) = 3;
      sub_1C8DF1B68(v156, v157, v158);
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.NumberCodingKeys, &v369, v365);
      OUTLINED_FUNCTION_130_0();
      sub_1C9064A2C();
      v247 = v246;
      swift_unknownObjectRelease();
      v248 = OUTLINED_FUNCTION_54();
      v249(v248, v151);
      v250 = OUTLINED_FUNCTION_246();
      v251(v250);
      *v313 = v247;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 4:
      LOBYTE(v369) = 4;
      sub_1C8DF1B14(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.DecimalCodingKeys, &v369);
      v174 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for Decimal(v174);
      OUTLINED_FUNCTION_37_11();
      sub_1C8CC8068(v175);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v225 = OUTLINED_FUNCTION_203();
      v226(v225);
      v227 = OUTLINED_FUNCTION_246();
      v228(v227);
      v229 = v315;
      *v315 = v369;
      *(v229 + 4) = v370;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 5:
      LOBYTE(v369) = 5;
      sub_1C8DF1AC0(v156, v157, v158);
      v187 = v365;
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.StringCodingKeys, &v369, v365);
      v203 = sub_1C9064A0C();
      v204 = v362;
      v269 = v203;
      v271 = v270;
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_296();
      v272 = OUTLINED_FUNCTION_136();
      v273(v272);
      (*(v204 + 8))(v140, v187);
      v274 = v314;
      *v314 = v269;
      v274[1] = v271;
      goto LABEL_34;
    case 6:
      LOBYTE(v369) = 6;
      sub_1C8DF1A6C(v156, v157, v158);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_65_4(v190, v191, v365);
      v205 = sub_1C9061FEC();
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v206);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_42_0();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v283 = OUTLINED_FUNCTION_146_0();
      v284(v283);
      (*(v205 + 8))(v140, v365);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 7:
      LOBYTE(v369) = 7;
      sub_1C8DF1A18(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.DateComponentsCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C9061BAC();
      OUTLINED_FUNCTION_34_9();
      sub_1C8CC8068(v182);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v252 = OUTLINED_FUNCTION_20_12();
      v253(v252);
      v254 = OUTLINED_FUNCTION_61_5();
      v255(v254);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 8:
      LOBYTE(v369) = 8;
      sub_1C8DF19C4(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.UrlCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C9061EBC();
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v196);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v293 = OUTLINED_FUNCTION_20_12();
      v294(v293);
      v295 = OUTLINED_FUNCTION_61_5();
      v296(v295);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 9:
      LOBYTE(v369) = 9;
      sub_1C8DF1970(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.AttributedStringCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C9061C0C();
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v178);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v234 = OUTLINED_FUNCTION_20_12();
      v235(v234);
      v236 = OUTLINED_FUNCTION_61_5();
      v237(v236);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xALL:
      LOBYTE(v369) = 10;
      sub_1C8DF191C(v156, v157, v158);
      OUTLINED_FUNCTION_123();
      OUTLINED_FUNCTION_65_4(v194, v195, v365);
      v207 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v207, v208);
      OUTLINED_FUNCTION_290_1(&unk_1EC315A00);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v289 = OUTLINED_FUNCTION_45();
      v290(v289, &qword_1EC313A00);
      v291 = OUTLINED_FUNCTION_50_8();
      v292(v291);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xBLL:
      LOBYTE(v369) = 11;
      sub_1C8DF18C8(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.CurrencyAmountCodingKeys, &v369);
      v172 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v172);
      OUTLINED_FUNCTION_169_2();
      sub_1C8CC8068(v173);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v221 = OUTLINED_FUNCTION_20_12();
      v222(v221);
      v223 = OUTLINED_FUNCTION_61_5();
      v224(v223);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xCLL:
      LOBYTE(v369) = 12;
      sub_1C8DF1874(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.PaymentMethodCodingKeys, &v369);
      v176 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v176);
      OUTLINED_FUNCTION_175_1();
      sub_1C8CC8068(v177);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v230 = OUTLINED_FUNCTION_20_12();
      v231(v230);
      v232 = OUTLINED_FUNCTION_61_5();
      v233(v232);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xDLL:
      LOBYTE(v369) = 13;
      sub_1C8DF1820(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.PlacemarkCodingKeys, &v369);
      v188 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v188);
      OUTLINED_FUNCTION_173_2();
      sub_1C8CC8068(v189);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v279 = OUTLINED_FUNCTION_20_12();
      v280(v279);
      v281 = OUTLINED_FUNCTION_61_5();
      v282(v281);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xELL:
      LOBYTE(v369) = 14;
      sub_1C8DF17CC(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.PersonCodingKeys, &v369);
      v170 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v170);
      OUTLINED_FUNCTION_170_4();
      sub_1C8CC8068(v171);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v217 = OUTLINED_FUNCTION_20_12();
      v218(v217);
      v219 = OUTLINED_FUNCTION_61_5();
      v220(v219);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0xFLL:
      LOBYTE(v369) = 15;
      sub_1C8DF1778(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.FileCodingKeys, &v369);
      v180 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.FileValue(v180);
      OUTLINED_FUNCTION_176_2();
      sub_1C8CC8068(v181);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v242 = OUTLINED_FUNCTION_20_12();
      v243(v242);
      v244 = OUTLINED_FUNCTION_61_5();
      v245(v244);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x10:
      LOBYTE(v369) = 16;
      sub_1C8DF1724(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.AppCodingKeys, &v369);
      v168 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.AppValue(v168);
      OUTLINED_FUNCTION_172_0();
      sub_1C8CC8068(v169);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v213 = OUTLINED_FUNCTION_20_12();
      v214(v213);
      v215 = OUTLINED_FUNCTION_61_5();
      v216(v215);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x11:
      LOBYTE(v369) = 17;
      sub_1C8DF16D0(v156, v157, v158);
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.SearchableItemCodingKeys, &v369, v365);
      v183 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v183, v184);
      OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_290_1(v185);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v261 = OUTLINED_FUNCTION_45();
      v262(v261, &qword_1EC315860);
      v263 = OUTLINED_FUNCTION_50_8();
      v264(v263);
      *v316 = v369;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 0x12:
      LOBYTE(v369) = 18;
      sub_1C8DF167C(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.ShortcutCodingKeys, &v369);
      v192 = OUTLINED_FUNCTION_149_2();
      type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v192);
      OUTLINED_FUNCTION_171_3();
      sub_1C8CC8068(v193);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v285 = OUTLINED_FUNCTION_20_12();
      v286(v285);
      v287 = OUTLINED_FUNCTION_61_5();
      v288(v287);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x13:
      LOBYTE(v369) = 19;
      sub_1C8DF1628(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.RecurrenceRuleCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C90622FC();
      OUTLINED_FUNCTION_70_1();
      sub_1C8CC8068(v209);
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v301 = OUTLINED_FUNCTION_20_12();
      v302(v301);
      v303 = OUTLINED_FUNCTION_61_5();
      v304(v303);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x14:
      LOBYTE(v369) = 20;
      sub_1C8DF15D4(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.DateIntervalCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C906194C();
      OUTLINED_FUNCTION_32_8();
      sub_1C8CC8068(v186);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v265 = OUTLINED_FUNCTION_20_12();
      v266(v265);
      v267 = OUTLINED_FUNCTION_61_5();
      v268(v267);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x15:
      LOBYTE(v369) = 21;
      sub_1C8DF1580(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.DurationCodingKeys, &v369);
      OUTLINED_FUNCTION_91_2();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v275 = OUTLINED_FUNCTION_20_12();
      v276(v275);
      v277 = OUTLINED_FUNCTION_61_5();
      v278(v277);
      *v317 = v369;
      OUTLINED_FUNCTION_253_1();
      goto LABEL_34;
    case 0x16:
      LOBYTE(v369) = 22;
      sub_1C8DF152C(v156, v157, v158);
      OUTLINED_FUNCTION_19_14(&type metadata for TypedValue.PrimitiveValue.PersonNameComponentsCodingKeys, &v369);
      OUTLINED_FUNCTION_149_2();
      sub_1C9061D4C();
      OUTLINED_FUNCTION_35_11();
      sub_1C8CC8068(v197);
      OUTLINED_FUNCTION_63_6();
      OUTLINED_FUNCTION_26_9();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_59_7();
      swift_unknownObjectRelease();
      v297 = OUTLINED_FUNCTION_20_12();
      v298(v297);
      v299 = OUTLINED_FUNCTION_61_5();
      v300(v299);
      OUTLINED_FUNCTION_138_2();
      goto LABEL_34;
    case 0x17:
      LOBYTE(v369) = 23;
      sub_1C8DF14D8(v156, v157, v158);
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.IntentsFileCodingKeys, &v369, v365);
      v210 = OUTLINED_FUNCTION_94();
      __swift_instantiateConcreteTypeFromMangledNameV2(v210, v211);
      OUTLINED_FUNCTION_5_24();
      OUTLINED_FUNCTION_290_1(v212);
      OUTLINED_FUNCTION_155_3();
      sub_1C9064A6C();
      OUTLINED_FUNCTION_330_1();
      swift_unknownObjectRelease();
      v305 = OUTLINED_FUNCTION_45();
      v306(v305, &qword_1EC315730);
      v307 = OUTLINED_FUNCTION_50_8();
      v308(v307);
      *v318 = v369;
      OUTLINED_FUNCTION_253_1();
LABEL_34:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_39_10();
      sub_1C8CCEB64();
      break;
    default:
      LOBYTE(v369) = 0;
      sub_1C8CCA238(v156, v157, v158);
      v159 = v365;
      OUTLINED_FUNCTION_65_4(&type metadata for TypedValue.PrimitiveValue.NoneCodingKeys, &v369, v365);
      swift_unknownObjectRelease();
      v199 = OUTLINED_FUNCTION_25_12();
      v200(v199);
      v201 = OUTLINED_FUNCTION_58_7();
      v202(v201, v159);
      swift_storeEnumTagMultiPayload();
      break;
  }

  v309 = v366;
  OUTLINED_FUNCTION_39_10();
  sub_1C8CCEB64();
  __swift_destroy_boxed_opaque_existential_1(v309);
LABEL_10:
  OUTLINED_FUNCTION_248_1();
}

uint64_t OUTLINED_FUNCTION_129_2()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

double OUTLINED_FUNCTION_129_4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_129_6()
{

  return sub_1C8CD20B4(v0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t OUTLINED_FUNCTION_118_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_1C906346C();
}

uint64_t sub_1C8CCE38C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8CCE3B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C8CCE3B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1819242338 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7630441 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C616D69636564 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x706D6F4365746164 && a2 == 0xEE0073746E656E6FLL;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 7107189 && a2 == 0xE300000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C90CAAE0 == a2;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x79636E6572727563 && a2 == 0xEE00746E756F6D41;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4D746E656D796170 && a2 == 0xED0000646F687465;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701603686 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 7368801 && a2 == 0xE300000000000000;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x74756374726F6873 && a2 == 0xE800000000000000;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6E65727275636572 && a2 == 0xEE00656C75526563;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                                            if (v26 || (sub_1C9064C2C() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x80000001C90CA7D0 == a2;
                                              if (v27 || (sub_1C9064C2C() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0x4673746E65746E69 && a2 == 0xEB00000000656C69)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_1C9064C2C();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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
              }
            }
          }
        }
      }
    }
  }
}

void OUTLINED_FUNCTION_150_0()
{

  JUMPOUT(0x1CCA81A90);
}

uint64_t sub_1C8CCEB64()
{
  OUTLINED_FUNCTION_223();
  v1(0);
  OUTLINED_FUNCTION_13_1();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t sub_1C8CCEBBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_13_1();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_226_3(uint64_t a1)
{

  return swift_willThrow();
}

uint64_t TypedValue.protobuf.getter()
{
  v0 = sub_1C906348C();
  OUTLINED_FUNCTION_11();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E69E0760], v0);
  OUTLINED_FUNCTION_190_2();
  TypedValue.protobuf(useCase:)();
  return (*(v2 + 8))(v6, v0);
}

void TypedValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v7 = v0;
  v113 = v9;
  v114 = v8;
  v10 = type metadata accessor for TypedValue.CodableValue(0);
  v11 = OUTLINED_FUNCTION_9(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_34_3();
  v12 = type metadata accessor for TypedValue.EntityIdentifierValue(0);
  v13 = OUTLINED_FUNCTION_9(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  OUTLINED_FUNCTION_9(v14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  *&v112 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139E0, &qword_1C906F538);
  OUTLINED_FUNCTION_9(v17);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_97();
  *&v111 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_9(v20);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_0();
  Value = type metadata accessor for TypedValue.QueryValue(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v26 = (v25 - v24);
  v27 = type metadata accessor for TypedValue.EntityValue(0);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v29 = type metadata accessor for TypedValue.EnumerationValue(0);
  v30 = OUTLINED_FUNCTION_9(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_251();
  v31 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v32 = OUTLINED_FUNCTION_9(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v35 = v34 - v33;
  v36 = *v7;
  switch(*v7 >> 60)
  {
    case 1:
      v53 = swift_projectBox();
      sub_1C8CCF5DC(v53, v5);
      type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
      swift_allocBox();
      v54 = OUTLINED_FUNCTION_79_1();
      TypedValue.EnumerationValue.protobuf(useCase:)(v54);
      if (v1)
      {
        v38 = OUTLINED_FUNCTION_91_0();
        goto LABEL_18;
      }

      v103 = OUTLINED_FUNCTION_91_0();
      sub_1C8CD0D98(v103, v104);
      v7 |= 0x2000000000000000uLL;
      goto LABEL_32;
    case 2:
      v48 = swift_projectBox();
      sub_1C8CCF5DC(v48, v3);
      type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.EntityValue.protobuf(useCase:)();
      if (v1)
      {
        v38 = OUTLINED_FUNCTION_93_1();
        goto LABEL_18;
      }

      v97 = OUTLINED_FUNCTION_93_1();
      sub_1C8CD0D98(v97, v98);
      v7 |= 0x4000000000000000uLL;
      goto LABEL_32;
    case 3:
      v50 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v51 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
      v52 = swift_allocBox();
      *&v115 = v50;
      *(&v115 + 1) = v51;
      OUTLINED_FUNCTION_184_1();
      TypedValue.CollectionValue.protobuf(useCase:)();
      if (v1)
      {
        goto LABEL_19;
      }

      v7 = v52 | 0x6000000000000000;
      goto LABEL_32;
    case 4:
      v40 = swift_projectBox();
      sub_1C8CCF5DC(v40, v26);
      v109 = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
      v41 = swift_allocBox();
      v110 = v42;
      *&v115 = *v26;

      TypeIdentifier.protobuf(useCase:)(v114);

      v43 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
      v47 = v26 + *(Value + 20);
      AnyPredicate.protobuf(useCase:)(v114, v112);
      if (v1)
      {
        sub_1C8CD0CC8(v4, &qword_1EC3139D8);
        OUTLINED_FUNCTION_105_0();
        goto LABEL_19;
      }

      v63 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
      OUTLINED_FUNCTION_150();
      v67 = OUTLINED_FUNCTION_123_1(v64, v65, v66, v63);
      v68 = type metadata accessor for Query(v67);
      v69 = *(v68 + 24);
      if (v47[*(v68 + 20)])
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }

      LODWORD(v114) = v70;
      v71 = &v47[v69];
      v72 = *&v47[v69];
      v73 = v71[8];
      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v74 = v72;
      }

      v108 = v74;
      v75 = type metadata accessor for ToolKitProtoQuery(0);
      v76 = *(v75 + 20);
      v120 = v41;
      v77 = v111;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v63);
      v81 = v111 + *(v75 + 24);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D4F5E4(v112, v111 + v76, &qword_1EC313400, &qword_1C906B680);
      *v111 = v114;
      *v81 = v108;
      *(v81 + 8) = v73;
      OUTLINED_FUNCTION_150();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v75);
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v43);
      v88 = *(v109 + 20);
      OUTLINED_FUNCTION_38_6();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_105_0();
      v93 = OUTLINED_FUNCTION_146_0();
      sub_1C8D4F5E4(v93, v94, v95, v96);
      sub_1C8D4F5E4(v77, v110 + v88, &qword_1EC3139E0, &qword_1C906F538);
      v7 = v120 | 0x8000000000000000;
      goto LABEL_32;
    case 5:
      v55 = v36 & 0xFFFFFFFFFFFFFFFLL;
      v56 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v57 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v58 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
      v59 = *(v55 + 16);
      v111 = *(v55 + 32);
      v112 = v59;
      v60 = swift_allocBox();
      v116 = v111;
      v115 = v112;
      v117 = v56;
      v118 = v57;
      v119 = v58;
      OUTLINED_FUNCTION_184_1();
      TypedValue.DeferredValue.protobuf(useCase:)();
      if (v1)
      {
        goto LABEL_19;
      }

      v7 = v60 | 0xC000000000000000;
      goto LABEL_32;
    case 6:
      v61 = swift_projectBox();
      sub_1C8CCF5DC(v61, v6);
      type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
      swift_allocBox();
      v62 = OUTLINED_FUNCTION_79_1();
      TypedValue.EntityIdentifierValue.protobuf(useCase:)(v62);
      if (v1)
      {
        OUTLINED_FUNCTION_99_2();
        v38 = v6;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_99_2();
      sub_1C8CD0D98(v6, v105);
      v7 |= 0xA000000000000000;
      goto LABEL_32;
    case 7:
      __break(1u);
      JUMPOUT(0x1C8CCF558);
    case 8:
      v49 = swift_projectBox();
      sub_1C8CCF5DC(v49, v2);
      type metadata accessor for ToolKitProtoTypedValue.CodableValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.CodableValue.protobuf(useCase:)();
      if (v1)
      {
        v38 = OUTLINED_FUNCTION_92_1();
        goto LABEL_18;
      }

      v99 = OUTLINED_FUNCTION_92_1();
      sub_1C8CD0D98(v99, v100);
      v7 |= 0xE000000000000000;
      goto LABEL_32;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_100_1();
      sub_1C8CCF5DC(v37, v35);
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
      swift_allocBox();
      OUTLINED_FUNCTION_79_1();
      TypedValue.PrimitiveValue.protobuf(useCase:)();
      if (v1)
      {
        v38 = OUTLINED_FUNCTION_75_0();
LABEL_18:
        sub_1C8CD0D98(v38, v39);
LABEL_19:
        swift_deallocBox();
      }

      else
      {
        v101 = OUTLINED_FUNCTION_75_0();
        sub_1C8CD0D98(v101, v102);
LABEL_32:
        v106 = type metadata accessor for ToolKitProtoTypedValue(0);
        MEMORY[0x1EEE9AC00](v106);
        *(&v107 - 2) = v7;
        sub_1C8CD0B28(qword_1EDA685F0, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_1C9063ACC();
      }

      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_291_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C9064DEC();
}

void OUTLINED_FUNCTION_291_1()
{

  sub_1C8D00A6C(v0, v1, v2, (v3 - 120));
}

uint64_t sub_1C8CCF5DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v4(v3);
  OUTLINED_FUNCTION_24_1();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1C8D9913C();
}

uint64_t OUTLINED_FUNCTION_83_5()
{
}

void TypedValue.PrimitiveValue.protobuf(useCase:)()
{
  OUTLINED_FUNCTION_196();
  v261 = v2;
  v262 = v1;
  v257 = v8;
  v260 = v9;
  v263[1] = *MEMORY[0x1E69E9840];
  sub_1C9061D4C();
  OUTLINED_FUNCTION_11();
  v254 = v11;
  v255 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_0();
  v253 = v12;
  OUTLINED_FUNCTION_111();
  sub_1C906194C();
  OUTLINED_FUNCTION_11();
  v251 = v14;
  v252 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_0();
  v249 = v15;
  OUTLINED_FUNCTION_111();
  sub_1C90622FC();
  OUTLINED_FUNCTION_11();
  v246 = v17;
  v247 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7_0();
  v19 = OUTLINED_FUNCTION_27_0(v18);
  v242 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v19);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_0();
  v256 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v23 = OUTLINED_FUNCTION_9(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12();
  v245 = v24;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_147();
  v244 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  v28 = OUTLINED_FUNCTION_9(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12();
  v250 = v29;
  OUTLINED_FUNCTION_98();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_147();
  v248 = v31;
  v32 = OUTLINED_FUNCTION_111();
  v241 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v32);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_7_0();
  v35 = OUTLINED_FUNCTION_27_0(v34);
  v36 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v35);
  v37 = OUTLINED_FUNCTION_9(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_7_0();
  v39 = OUTLINED_FUNCTION_27_0(v38);
  v40 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v39);
  v41 = OUTLINED_FUNCTION_9(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_7_0();
  v43 = OUTLINED_FUNCTION_27_0(v42);
  v44 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v43);
  v45 = OUTLINED_FUNCTION_9(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_7_0();
  v47 = OUTLINED_FUNCTION_27_0(v46);
  v48 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v47);
  v49 = OUTLINED_FUNCTION_9(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_7_0();
  v51 = OUTLINED_FUNCTION_27_0(v50);
  v52 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v51);
  v53 = OUTLINED_FUNCTION_9(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_7_0();
  v240 = v54;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_11();
  v236 = v55;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v57);
  v239 = sub_1C9061C0C();
  OUTLINED_FUNCTION_11();
  v238 = v58;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v60);
  v234 = sub_1C9061EBC();
  OUTLINED_FUNCTION_11();
  v233 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v63);
  v231 = sub_1C9061BAC();
  OUTLINED_FUNCTION_11();
  v230 = v64;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_27_0(v66);
  v229 = sub_1C9061FEC();
  OUTLINED_FUNCTION_11();
  v228 = v67;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_147();
  v71 = OUTLINED_FUNCTION_27_0(v70);
  v72 = type metadata accessor for TypedValue.PrimitiveValue(v71);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_247();
  v258 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_307();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_61_3();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v223 - v84;
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v223 - v89;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_147();
  v259 = v92;
  OUTLINED_FUNCTION_100_1();
  sub_1C8CCF5DC(v262, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = v259;
      *v259 = *v7;
      goto LABEL_38;
    case 2u:
      v93 = v259;
      *v259 = *v7;
      goto LABEL_38;
    case 3u:
      v126 = v261;
      NSDecimal.protobuf(useCase:)();
      if (v126)
      {
        goto LABEL_59;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v90;
      goto LABEL_56;
    case 4u:
      v111 = v7[1];
      v93 = v259;
      *v259 = *v7;
      v93[1] = v111;
      goto LABEL_38;
    case 5u:
      OUTLINED_FUNCTION_158_2();
      v143(v227, v7, v229);
      v144 = OUTLINED_FUNCTION_288();
      v145(v144);
      v93 = v259;
      OUTLINED_FUNCTION_190_2();
      sub_1C906377C();
      v146 = OUTLINED_FUNCTION_148();
      v147(v146);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 6u:
      OUTLINED_FUNCTION_138_0();
      v153 = OUTLINED_FUNCTION_332();
      v154(v153);
      v93 = v259;
      DateComponents.protobuf(useCase:)();
      v155 = OUTLINED_FUNCTION_60_2();
      v156(v155);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 7u:
      OUTLINED_FUNCTION_161_1();
      v128 = v232;
      (*(v127 + 32))(v232, v7, v234);
      v129 = v128;
      _s10Foundation3URLV7ToolKitE8protobuf7useCaseSS19VoiceShortcutClient011ProtobufUseG0O_tF_0();
      OUTLINED_FUNCTION_171_0();
      v130 = OUTLINED_FUNCTION_278();
      v131(v130);
      v93 = v259;
      *v259 = v0;
      v93[1] = v129;
      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_388();
      v171(v235, v7, v239);
      sub_1C906370C();
      OUTLINED_FUNCTION_35_4();
      sub_1C8CD0B28(v172, v173, MEMORY[0x1E6968850]);
      OUTLINED_FUNCTION_162();
      v174 = v261;
      sub_1C90618AC();
      if (v174)
      {
        v175 = OUTLINED_FUNCTION_162();
        v176(v175);

        goto LABEL_59;
      }

      OUTLINED_FUNCTION_170_2();
      v195 = OUTLINED_FUNCTION_162();
      v196(v195);

      *v4 = v0;
      v4[1] = v85;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v4;
      goto LABEL_56;
    case 9u:
      OUTLINED_FUNCTION_138_0();
      v114 = OUTLINED_FUNCTION_332();
      v115(v114);
      v93 = v259;
      sub_1C8D4AD34(v259);
      v116 = OUTLINED_FUNCTION_60_2();
      v117(v116);
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 0xAu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0();
      sub_1C8D50228(v167, v168);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.CurrencyAmountValue.protobuf(useCase:)();
      v169 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v169, v170);
      if (v2)
      {
        goto LABEL_59;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v5;
      goto LABEL_56;
    case 0xBu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0();
      sub_1C8D50228(v106, v107);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PaymentMethodValue.protobuf(useCase:)();
      v108 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v108, v109);
      if (v2)
      {
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_128_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v85;
      goto LABEL_56;
    case 0xCu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0();
      sub_1C8D50228(v112, v113);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PlacemarkValue.protobuf(useCase:)();
      if (v2)
      {
        v105 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue;
        goto LABEL_44;
      }

      v191 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v191, v192);
      OUTLINED_FUNCTION_149_1();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v3;
      goto LABEL_56;
    case 0xDu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0();
      sub_1C8D50228(v151, v152);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.PersonValue.protobuf(useCase:)();
      if (v2)
      {
        v105 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue;
        goto LABEL_44;
      }

      v193 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v193, v194);
      OUTLINED_FUNCTION_133_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v0;
      goto LABEL_56;
    case 0xEu:
      OUTLINED_FUNCTION_113();
      OUTLINED_FUNCTION_108_0();
      sub_1C8D50228(v103, v104);
      OUTLINED_FUNCTION_125_2();
      TypedValue.PrimitiveValue.FileValue.protobuf(useCase:)();
      if (v2)
      {
        v105 = type metadata accessor for TypedValue.PrimitiveValue.FileValue;
        goto LABEL_44;
      }

      v189 = OUTLINED_FUNCTION_75_0();
      sub_1C8CD0D98(v189, v190);
      OUTLINED_FUNCTION_193_0();
      goto LABEL_55;
    case 0xFu:
      OUTLINED_FUNCTION_103_2();
      v118 = v243;
      sub_1C8D50228(v7, v243);
      v120 = *v118;
      v119 = v118[1];
      OUTLINED_FUNCTION_129_0();
      v90 = v244;
      sub_1C8D4F62C(v118 + v121, v244, &qword_1EC312788, &unk_1C906A3A0);
      type metadata accessor for DisplayRepresentation(0);
      v122 = OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_141_1(v122, v123, v124);

      if (v2 == 1)
      {
        sub_1C8CD0CC8(v90, &qword_1EC312788);
        v125 = v248;
      }

      else
      {
        v125 = v248;
        OUTLINED_FUNCTION_125_2();
        DisplayRepresentation.protobuf(useCase:)();
        if (v2)
        {
          v184 = OUTLINED_FUNCTION_90_0();
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_3_13();
        sub_1C8CD0D98(v90, v199);
      }

      v200 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      OUTLINED_FUNCTION_87_1();
      v204 = OUTLINED_FUNCTION_123_1(v201, v202, v203, v200);
      v205 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(v204) + 20);
      v6 = v225;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v206, v207, v208, v200);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      v209 = OUTLINED_FUNCTION_90_0();
      sub_1C8CD0D98(v209, v210);
      *v6 = v120;
      v6[1] = v119;
      sub_1C8D4F5E4(v125, v6 + v205, &qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_193_0();
      goto LABEL_55;
    case 0x10u:
      v94 = *v7;
      v95 = MEMORY[0x1CCA82A80]();
      v96 = objc_opt_self();
      v263[0] = 0;
      v97 = [v96 archivedDataWithRootObject:v94 requiringSecureCoding:1 error:v263];
      v98 = v263[0];
      if (v97)
      {
        v99 = sub_1C9061F3C();
        v101 = v100;

        objc_autoreleasePoolPop(v95);
        v102 = v224;
        *v224 = v99;
        v102[1] = v101;
        OUTLINED_FUNCTION_133_2();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_8();
        v93 = v259;
        sub_1C8D50228(v102, v259);
        goto LABEL_57;
      }

      v188 = v98;
      sub_1C9061D7C();

      swift_willThrow();
      objc_autoreleasePoolPop(v95);

      goto LABEL_59;
    case 0x11u:
      OUTLINED_FUNCTION_102_1();
      v132 = v256;
      sub_1C8D50228(v7, v256);
      v134 = *v132;
      v133 = v132[1];
      OUTLINED_FUNCTION_129_0();
      v90 = v245;
      sub_1C8D4F62C(v132 + v135, v245, &qword_1EC312788, &unk_1C906A3A0);
      type metadata accessor for DisplayRepresentation(0);
      v136 = OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_141_1(v136, v137, v138);

      if (v2 == 1)
      {
        sub_1C8CD0CC8(v90, &qword_1EC312788);
        v139 = v250;
      }

      else
      {
        v139 = v250;
        OUTLINED_FUNCTION_125_2();
        DisplayRepresentation.protobuf(useCase:)();
        if (v2)
        {
          OUTLINED_FUNCTION_97_1();
          v184 = v132;
LABEL_43:
          sub_1C8CD0D98(v184, v185);

          v105 = type metadata accessor for DisplayRepresentation;
LABEL_44:
          v186 = v105;
          v187 = v90;
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_3_13();
        sub_1C8CD0D98(v90, v211);
      }

      v212 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
      OUTLINED_FUNCTION_87_1();
      v216 = OUTLINED_FUNCTION_123_1(v213, v214, v215, v212);
      v217 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Shortcut(v216) + 20);
      v6 = v226;
      OUTLINED_FUNCTION_115();
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v212);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      OUTLINED_FUNCTION_97_1();
      sub_1C8CD0D98(v132, v221);
      *v6 = v134;
      v6[1] = v133;
      sub_1C8D4F5E4(v139, v6 + v217, &qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_193_0();
LABEL_55:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v110 = v6;
      goto LABEL_56;
    case 0x12u:
      OUTLINED_FUNCTION_138_0();
      v157 = OUTLINED_FUNCTION_332();
      v158(v157);
      OUTLINED_FUNCTION_161_1();
      v159 = OUTLINED_FUNCTION_125_2();
      Calendar.RecurrenceRule.protobuf(useCase:)(v159, v160, v161, v162, v163, v164, v165, v166, v223, v224);
      if (!v2)
      {
        goto LABEL_50;
      }

      goto LABEL_36;
    case 0x13u:
      OUTLINED_FUNCTION_138_0();
      v177 = OUTLINED_FUNCTION_332();
      v178(v177);
      OUTLINED_FUNCTION_161_1();
      v179 = v261;
      DateInterval.protobuf(useCase:)(v180, v181);
      if (v179)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    case 0x14u:
      OUTLINED_FUNCTION_94();
      v140 = sub_1C9064E2C();
      OUTLINED_FUNCTION_94();
      sub_1C9064E2C();
      v142 = v141;
      type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Duration(0);
      v93 = v259;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v93 = v140;
      v93[1] = v142;
      OUTLINED_FUNCTION_149_1();
      goto LABEL_38;
    case 0x15u:
      OUTLINED_FUNCTION_138_0();
      v148 = OUTLINED_FUNCTION_332();
      v149(v148);
      OUTLINED_FUNCTION_161_1();
      v150 = v261;
      PersonNameComponents.protobuf(useCase:)();
      if (v150)
      {
LABEL_36:
        v182 = OUTLINED_FUNCTION_60_2();
        v183(v182);
      }

      else
      {
LABEL_50:
        v197 = OUTLINED_FUNCTION_60_2();
        v198(v197);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_8();
        v110 = v72;
LABEL_56:
        v93 = v259;
        sub_1C8D50228(v110, v259);
LABEL_57:
        v222 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
        MEMORY[0x1EEE9AC00](v222);
        *(&v223 - 2) = v93;
        sub_1C8CD0B28(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
        OUTLINED_FUNCTION_116();
        sub_1C9063ACC();
        OUTLINED_FUNCTION_2_10();
        v187 = v93;
LABEL_58:
        sub_1C8CD0D98(v187, v186);
      }

LABEL_59:
      OUTLINED_FUNCTION_198();
      return;
    case 0x16u:
      __break(1u);
      JUMPOUT(0x1C8CD0A0CLL);
    case 0x17u:
      v93 = v259;
      goto LABEL_38;
    default:
      v93 = v259;
      *v259 = *v7;
LABEL_38:
      swift_storeEnumTagMultiPayload();
      goto LABEL_57;
  }
}

unint64_t OUTLINED_FUNCTION_270_1()
{

  return sub_1C8D99190();
}

uint64_t OUTLINED_FUNCTION_130_3()
{

  return swift_slowAlloc();
}

uint64_t sub_1C8CD0B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8CD0B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8CD0BBC()
{
  v1 = OUTLINED_FUNCTION_47_5();
  v2(v1);
  v3 = OUTLINED_FUNCTION_227_0();
  v7 = OUTLINED_FUNCTION_52_6(v3, v4, v5, v6);
  v0(v7);
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t sub_1C8CD0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_163_1();
  sub_1C8CD0CC8(v7, v8);
  v9 = OUTLINED_FUNCTION_211();
  sub_1C8CCF5DC(v9, v10);
  a6(0);
  OUTLINED_FUNCTION_150();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1C8CD0CC8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_196_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_172_2(uint64_t a1)
{

  return sub_1C9063FBC();
}

uint64_t sub_1C8CD0D98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8CD0DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_147_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t OUTLINED_FUNCTION_147_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return TypedValue.DeferredValue.debugDescription.getter();
}

void *OUTLINED_FUNCTION_147_3(void *a1)
{

  return memcpy(a1, (v1 + 696), 0x61uLL);
}

uint64_t sub_1C8CD0F10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(0);
  OUTLINED_FUNCTION_210_0();
  return _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
}

uint64_t sub_1C8CD0F64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  result = sub_1C8CD0FB0(v4);
  *a1 = a2;
  return result;
}

uint64_t sub_1C8CD0FB0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_1C8CD0FDC()
{
  OUTLINED_FUNCTION_354_0();
  if (v0 == 119)
  {
    OUTLINED_FUNCTION_136_2();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v1 = OUTLINED_FUNCTION_101_3();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t OUTLINED_FUNCTION_317_1()
{

  return sub_1C8CD20B4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_122_2()
{

  return sub_1C8DB483C();
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_122_8()
{

  return sub_1C8D63FCC();
}

uint64_t sub_1C8CD115C(uint64_t a1, int a2)
{
  if (a2 == 119)
  {
    OUTLINED_FUNCTION_120_2();
    if (v3)
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v5 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_1C8CD11C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x79 && *(a1 + 8))
    {
      v2 = *a1 + 120;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x78)
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

uint64_t sub_1C8CD1220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1C9063D3C();
}

uint64_t OUTLINED_FUNCTION_38_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 - 72) = *(v6 + v7);
}

uint64_t OUTLINED_FUNCTION_38_11()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_38_14()
{
  v2 = *(v0 + 256);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 232, v2);
}

void *OUTLINED_FUNCTION_38_18()
{

  return memcpy((v0 + 152), (v1 - 200), 0x70uLL);
}

double OUTLINED_FUNCTION_38_19@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0xF000000000000007;
  return result;
}

void *OUTLINED_FUNCTION_38_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t __src, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54)
{

  return memcpy(&a54, &__src, 0x51uLL);
}

uint64_t OUTLINED_FUNCTION_308_0()
{
  sub_1C8CD1784(v0);

  return sub_1C8CD1784(v1);
}

uint64_t OUTLINED_FUNCTION_308_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1C90639FC();
}

uint64_t sub_1C8CD1784(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_108_3(uint64_t a1)
{

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_108_4()
{
}

uint64_t OUTLINED_FUNCTION_108_5()
{

  return sub_1C8D63FCC();
}

void ToolKitProtoTypedValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_273_2();
  if (v2)
  {
    goto LABEL_12;
  }

  switch(v1 >> 61)
  {
    case 1uLL:
      v23 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73B48(v23, v24, v25, v26);
      break;
    case 2uLL:
      v11 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73CA0(v11, v12, v13, v14);
      break;
    case 3uLL:
      v15 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73DF8(v15, v16, v17, v18);
      break;
    case 4uLL:
      v7 = OUTLINED_FUNCTION_3_4();
      sub_1C8F73F50(v7, v8, v9, v10);
      break;
    case 5uLL:
      v27 = OUTLINED_FUNCTION_3_4();
      sub_1C8F740A8(v27, v28, v29, v30);
      break;
    case 6uLL:
      v31 = OUTLINED_FUNCTION_3_4();
      sub_1C8F74200(v31, v32, v33, v34);
      break;
    case 7uLL:
      v19 = OUTLINED_FUNCTION_3_4();
      sub_1C8F74358(v19, v20, v21, v22);
      break;
    default:
      v3 = OUTLINED_FUNCTION_3_4();
      sub_1C8CD191C(v3, v4, v5, v6);
      break;
  }

  if (!v0)
  {
LABEL_12:
    type metadata accessor for ToolKitProtoTypedValue(0);
    OUTLINED_FUNCTION_52_17();
  }
}

uint64_t sub_1C8CD191C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v9 = 1;
  }

  else
  {
    v9 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v9)
  {
    __break(1u);
  }

  else
  {
    swift_projectBox();
    sub_1C900BEC8();
    sub_1C8CD1B00(&qword_1EDA686F0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue, &protocol conformance descriptor for ToolKitProtoTypedValue.PrimitiveValue);
    sub_1C9063BCC();
    return sub_1C8CD20B4(v7, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_266_3(uint64_t a1)
{

  return sub_1C9063EAC();
}

uint64_t sub_1C8CD1ABC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != -1)
  {
    return sub_1C8CE9D94(result, a2, a3 & 1, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1C8CD1B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_49_1()
{
  *(v4 - 172) = v3;
  *(v4 - 168) = v0;
  *(v4 - 160) = v2;
  *(v4 - 136) = v1;
}

uint64_t OUTLINED_FUNCTION_49_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

id OUTLINED_FUNCTION_49_9()
{

  return [v0 (v3 + 1458)];
}

uint64_t OUTLINED_FUNCTION_49_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v33 = *(v30 - 120);
  v32 = *(v30 - 112);
  v35 = *(v30 - 136);
  v34 = *(v30 - 128);

  return sub_1C8D06E10(v27, v29, v32, v33, v34, v35, v28, a27);
}

uint64_t OUTLINED_FUNCTION_49_15(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_16()
{

  return sub_1C906205C();
}

uint64_t OUTLINED_FUNCTION_49_20(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_54_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C9063E7C();
}

uint64_t OUTLINED_FUNCTION_54_3()
{
}

uint64_t OUTLINED_FUNCTION_54_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16)
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_1C8D070A4(va, &a23);
}

uint64_t OUTLINED_FUNCTION_54_8(uint64_t a1)
{

  return sub_1C906392C();
}

void *OUTLINED_FUNCTION_54_13()
{

  return memcpy((v0 - 312), (v0 - 200), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_63_1(uint64_t a1)
{

  return sub_1C906371C();
}

uint64_t OUTLINED_FUNCTION_63_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_63_7()
{
}

uint64_t OUTLINED_FUNCTION_63_9(uint64_t a1, uint64_t a2)
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_63_10()
{

  return sub_1C90637EC();
}

uint64_t OUTLINED_FUNCTION_63_11()
{

  return sub_1C8E051A0(v1 - 176, v0);
}

uint64_t OUTLINED_FUNCTION_63_13()
{

  return sub_1C8D16E14(v1, v0);
}

uint64_t OUTLINED_FUNCTION_63_14()
{

  return swift_slowAlloc();
}

uint64_t sub_1C8CD20B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_192_0(uint64_t a1)
{

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_192_4()
{
}

uint64_t OUTLINED_FUNCTION_192_7()
{
  *(v1 - 88) = v0;

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_112_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(void))
{

  return sub_1C8E1AC90(v7, v6, a3, a4, a5, v8, a6);
}

uint64_t OUTLINED_FUNCTION_50_3(uint64_t a1)
{

  return sub_1C9064E1C();
}

uint64_t OUTLINED_FUNCTION_112_5()
{
  v2 = *(v0 - 208);
  *(v0 - 288) = *(v0 - 224);
  *(v0 - 272) = v2;
  *(v0 - 256) = *(v0 - 192);
  *(v0 - 240) = *(v0 - 176);

  return sub_1C8D3ABC4(v0 - 288);
}

uint64_t OUTLINED_FUNCTION_112_7(void x0_0, void x1_0, void a3, void a4, void a5, void a6, void a7, void a8, uint64_t a2)
{
  *(v3 - 96) = v2;

  return sub_1C8D63FCC();
}

uint64_t OUTLINED_FUNCTION_191_2()
{

  return sub_1C9064D7C();
}

uint64_t OUTLINED_FUNCTION_191_5(uint64_t a1)
{

  return sub_1C8D16D78(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_191_6()
{

  return sub_1C8D63FCC();
}

unint64_t sub_1C8CD23A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CD2DDC(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8CD2978(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8CD29CC(v7, v8, v9);
  a1[3] = v10;
  v13 = sub_1C8CD2924(v10, v11, v12);
  a1[4] = v13;
  result = sub_1C8CD2D34(v13, v14, v15);
  a1[5] = result;
  return result;
}

uint64_t sub_1C8CD23F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8CD2438(void *a1)
{
  a1[1] = sub_1C8CD23F0(&qword_1EDA6E010, type metadata accessor for DisplayRepresentation.Image, &protocol conformance descriptor for DisplayRepresentation.Image);
  a1[2] = sub_1C8CD23F0(&qword_1EDA6E018, type metadata accessor for DisplayRepresentation.Image, &protocol conformance descriptor for DisplayRepresentation.Image);
  a1[3] = sub_1C8CD23F0(&qword_1EDA6E030, type metadata accessor for DisplayRepresentation.Image, &protocol conformance descriptor for DisplayRepresentation.Image);
  a1[4] = sub_1C8CD23F0(&qword_1EDA6E028, type metadata accessor for DisplayRepresentation.Image, &protocol conformance descriptor for DisplayRepresentation.Image);
  result = sub_1C8CD23F0(&qword_1EDA6DB48, type metadata accessor for DisplayRepresentation.Image, &protocol conformance descriptor for DisplayRepresentation.Image);
  a1[5] = result;
  return result;
}

void sub_1C8CD2534(uint64_t a1)
{
  if (!qword_1EDA6DF28)
  {
    type metadata accessor for DisplayRepresentation(255);
    v1 = sub_1C906464C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDA6DF28);
    }
  }
}

void sub_1C8CD258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C8CD2534(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C8CD2600(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C8CD2650(uint64_t a1)
{
  sub_1C8CD2840(319, &qword_1EDA6DB58, &qword_1EC312548);
  if (v1 <= 0x3F)
  {
    sub_1C8CD2840(319, qword_1EDA6DB60, &unk_1EC312550);
    if (v2 <= 0x3F)
    {
      sub_1C8CD2840(319, qword_1EDA6E038, &qword_1EC312530);
      if (v3 <= 0x3F)
      {
        sub_1C8CD2600(319, &qword_1EDA6DB50, &type metadata for DisplayRepresentation.PluginModelData, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C8CD2600(319, &qword_1EDA6E550, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C8CD27BC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CD2CE0(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_1C8CD2A98(v4, v5, v6);
  a1[2] = v7;
  v10 = sub_1C8CD2D88(v7, v8, v9);
  a1[3] = v10;
  v13 = sub_1C8CD2B40(v10, v11, v12);
  a1[4] = v13;
  result = sub_1C8CD2EA4(v13, v14, v15);
  a1[5] = result;
  return result;
}

void sub_1C8CD2840(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_321(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_1C906464C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1C8CD2924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF80;
  if (!qword_1EDA6DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF80);
  }

  return result;
}

unint64_t sub_1C8CD2978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF70;
  if (!qword_1EDA6DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF70);
  }

  return result;
}

unint64_t sub_1C8CD29CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF88;
  if (!qword_1EDA6DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF88);
  }

  return result;
}

uint64_t sub_1C8CD2A20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C8CD2A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF48;
  if (!qword_1EDA6DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF48);
  }

  return result;
}

unint64_t sub_1C8CD2AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF50;
  if (!qword_1EDA6DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF50);
  }

  return result;
}

unint64_t sub_1C8CD2B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF58;
  if (!qword_1EDA6DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF58);
  }

  return result;
}

unint64_t sub_1C8CD2B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DB08;
  if (!qword_1EDA6DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB08);
  }

  return result;
}

unint64_t sub_1C8CD2C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DAF8;
  if (!qword_1EDA6DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DAF8);
  }

  return result;
}

uint64_t sub_1C8CD2C6C(uint64_t a1)
{
  result = sub_1C9061EBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C8CD2CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF40;
  if (!qword_1EDA6DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF40);
  }

  return result;
}

unint64_t sub_1C8CD2D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DB10;
  if (!qword_1EDA6DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB10);
  }

  return result;
}

unint64_t sub_1C8CD2D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF60;
  if (!qword_1EDA6DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF60);
  }

  return result;
}

unint64_t sub_1C8CD2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF68;
  if (!qword_1EDA6DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF68);
  }

  return result;
}

unint64_t sub_1C8CD2E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DF78;
  if (!qword_1EDA6DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DF78);
  }

  return result;
}

unint64_t sub_1C8CD2EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DB00;
  if (!qword_1EDA6DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DB00);
  }

  return result;
}

uint64_t sub_1C8CD2F08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return OUTLINED_FUNCTION_8_1();
  }
}

uint64_t storeEnumTagSinglePayload for HashableCGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C8CD2FC4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C8CE7AB8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD3038()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CD3078()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CD314C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_8_1();
  }

  if (!v2 || a1 == a2)
  {
    return OUTLINED_FUNCTION_2_3();
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    if (!v2)
    {
      __break(1u);
      JUMPOUT(0x1C8CD31B0);
    }

    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_1C90690D0[v5];
    v9 = qword_1C90690D0[v7];
    result = v8 == v9;
  }

  while (v8 == v9 && v2-- != 1);
  return result;
}

uint64_t sub_1C8CD3238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1C8CF3BD0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C8CD326C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8CF6534(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CD32C0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8CF6A10(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CD3314@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8CF7DF8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CD3550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_258();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20) + 8) >> 60;
    v10 = ((4 * v9) & 0xC) == 0;
    v11 = ((4 * v9) & 0xC | (v9 >> 2)) ^ 0xF;
    if (v10)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

void sub_1C8CD3600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_95_0();

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }

  else
  {
    v12 = (v4 + *(a4 + 20));
    *v12 = 0;
    v12[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }
}

unint64_t sub_1C8CD37AC(unint64_t result)
{
  if (((result >> 57) & 8 | result & 7) <= 0xC)
  {
  }

  return result;
}

unint64_t sub_1C8CD37D8(unint64_t result)
{
  if (((result >> 57) & 8 | result & 7) <= 0xC)
  {
  }

  return result;
}

char *sub_1C8CD382C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_8(a3, result);
  }

  return result;
}

char *sub_1C8CD384C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, 104 * a2);
  }

  return result;
}

uint64_t sub_1C8CD3954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8CD399C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C8CD3A14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8D13104();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8CD3AA0(uint64_t result, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3 != -1)
  {
    return sub_1C8D16D68(result, a2, a3 & 1, a4, a5);
  }

  return result;
}

uint64_t sub_1C8CD3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 >= 3)
    {
      return v9 - 2;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1C8CD3C18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_257();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    *(v4 + *(a4 + 24)) = a2 + 2;
  }
}

uint64_t sub_1C8CD3CE0()
{
  v1 = *(type metadata accessor for ToolDatabase.Pager(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  sub_1C9061EBC();
  OUTLINED_FUNCTION_13_1();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8CD3DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CD3E68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD3F50()
{
  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_13_1();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1C8CD404C()
{
  sub_1C9062E6C();
  OUTLINED_FUNCTION_38_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8CD4164@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8D35158(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CD4190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8D2B554(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD43D0(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C8CD4418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8D350A4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD47C0()
{

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CD4818()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CD48CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CD4A28()
{
  sub_1C8D548A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C8CD4DAC()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CD4EB4()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CD4F28(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ToolDefinition(0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C8CD4FB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ToolDefinition(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD5054(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314058, &qword_1C90726F8);
  OUTLINED_FUNCTION_179();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[7];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314060, &qword_1C9072700);
    v12 = a3[10];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[9]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C8CD5184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD8, &qword_1C90726F0);
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314058, &qword_1C90726F8);
    OUTLINED_FUNCTION_179();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[7];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314060, &qword_1C9072700);
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

BOOL sub_1C8CD5360(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1C8CD5420()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CD55E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CD567C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313190, &unk_1C9074070);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CD576C()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CD57A0()
{

  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CD5964()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CD5B58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CD5B90()
{

  return MEMORY[0x1EEE6BDD0](v0, 113, 7);
}

uint64_t sub_1C8CD5DB8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoTypeDefinition.Version1.Entity.RuntimeFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD5FF4@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoQuery.SortOrder.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD61A8@<X0>(uint64_t *a1@<X8>)
{
  result = ToolKitProtoTriggerDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CD61D0(uint64_t a1, int a2)
{
  if (a2 == 122)
  {
    OUTLINED_FUNCTION_120_2();
    if (v2 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v4 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C8CD623C()
{
  OUTLINED_FUNCTION_354_0();
  if (v0 == 122)
  {
    OUTLINED_FUNCTION_136_2();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v1 = OUTLINED_FUNCTION_101_3();

    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  }
}

uint64_t sub_1C8CD6298(unsigned __int8 *a1, int a2)
{
  if (a2 == 208)
  {
    v2 = *a1;
    if (v2 <= 0x2F)
    {
      v3 = 47;
    }

    else
    {
      v3 = *a1;
    }

    v4 = v3 - 47;
    if (v2 >= 0x17)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD6314()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 208)
  {
    *v1 = v0 + 47;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD63DC(unint64_t *a1, int a2)
{
  if (a2 == 2147483630)
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    v3 = v2 - 16;
    v4 = v3 <= 0;
    if (v3 < 0)
    {
      v3 = -1;
    }

    if (v4)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD6464()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 2147483630)
  {
    *v1 = (v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD64D0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v5 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CD657C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD66BC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_271_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_352();
    }
  }

  v7 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CD67B4()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_277_1();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_355_0();
      }
    }

    v5 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CD68D4()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_207_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_223_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v7 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CD69CC()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F18, &unk_1C9072A20);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_228_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v5 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CD6B34()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
    OUTLINED_FUNCTION_179();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
      OUTLINED_FUNCTION_179();
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_207_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
        OUTLINED_FUNCTION_179();
        if (*(v9 + 84) == v0)
        {
          OUTLINED_FUNCTION_223_1();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
          OUTLINED_FUNCTION_179();
          if (*(v10 + 84) == v0)
          {
            OUTLINED_FUNCTION_208_1();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
            OUTLINED_FUNCTION_179();
            if (*(v11 + 84) == v0)
            {
              OUTLINED_FUNCTION_271_0();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
              OUTLINED_FUNCTION_179();
              if (*(v12 + 84) == v0)
              {
                OUTLINED_FUNCTION_352();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
                OUTLINED_FUNCTION_179();
                if (*(v13 + 84) == v0)
                {
                  v6 = *(v2 + 52);
                }

                else
                {
                  sub_1C90637EC();
                  v6 = *(v2 + 56);
                }
              }
            }
          }
        }
      }
    }
  }

  v14 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v14, v15, v16);
}

void sub_1C8CD6DE4()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314258, &qword_1C9072A90);
    OUTLINED_FUNCTION_179();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314250, &unk_1C9074D40);
      OUTLINED_FUNCTION_179();
      if (*(v5 + 84) == v1)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314248, &unk_1C9072A80);
        OUTLINED_FUNCTION_179();
        if (*(v6 + 84) == v1)
        {
          OUTLINED_FUNCTION_213_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314240, &unk_1C9074D50);
          OUTLINED_FUNCTION_179();
          if (*(v7 + 84) == v1)
          {
            OUTLINED_FUNCTION_228_0();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314238, &unk_1C9072A70);
            OUTLINED_FUNCTION_179();
            if (*(v8 + 84) == v1)
            {
              OUTLINED_FUNCTION_212_0();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314230, &unk_1C9074D60);
              OUTLINED_FUNCTION_179();
              if (*(v9 + 84) == v1)
              {
                OUTLINED_FUNCTION_277_1();
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314228, &qword_1C9072A60);
                OUTLINED_FUNCTION_179();
                if (*(v10 + 84) == v1)
                {
                  OUTLINED_FUNCTION_355_0();
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314220, &unk_1C9074D70);
                  OUTLINED_FUNCTION_179();
                  if (*(v11 + 84) == v1)
                  {
                    v4 = *(v0 + 52);
                  }

                  else
                  {
                    sub_1C90637EC();
                    v4 = *(v0 + 56);
                  }
                }
              }
            }
          }
        }
      }
    }

    v12 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1C8CD70CC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 24));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD717C()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD7254()
{
  OUTLINED_FUNCTION_274_1();
  if (v1)
  {
    OUTLINED_FUNCTION_313_0();
    v4 = (v2 + v3) & 0x7FFFFFFF;
    if (v5)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
    OUTLINED_FUNCTION_179();
    if (*(v7 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_223_1();
    }

    v9 = OUTLINED_FUNCTION_108_1(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1C8CD7310()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A28, &unk_1C9074CD0);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_228_0();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD73C8()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  v0 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1C8CD7410()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8CD7484()
{
  OUTLINED_FUNCTION_163_2();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_10(*(v1 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD7534()
{
  OUTLINED_FUNCTION_88_1();
  if (v3)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD75E8()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v5 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CD7694()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD7748()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_223_1();
      }

      else
      {
        sub_1C90637EC();
        v5 = *(v1 + 60);
      }
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CD7888()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A58, &qword_1C906F560);
      OUTLINED_FUNCTION_179();
      if (*(v5 + 84) == v1)
      {
        OUTLINED_FUNCTION_213_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A50, &unk_1C9074CF0);
        OUTLINED_FUNCTION_179();
        if (*(v6 + 84) == v1)
        {
          OUTLINED_FUNCTION_228_0();
        }

        else
        {
          sub_1C90637EC();
          v4 = *(v0 + 60);
        }
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CD79D0()
{
  OUTLINED_FUNCTION_163_2();
  if (v2)
  {
    return OUTLINED_FUNCTION_18_10(*(v1 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_271_0();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD7A80()
{
  OUTLINED_FUNCTION_88_1();
  if (v3)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139A8, &unk_1C9074CE0);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_277_1();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD7B30()
{
  OUTLINED_FUNCTION_163_2();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_208_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CD7B98()
{
  OUTLINED_FUNCTION_88_1();
  if (v2)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_212_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD7BF8()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_263_0();
      return OUTLINED_FUNCTION_18_10(*(v3 + 8));
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v5 = OUTLINED_FUNCTION_108_1(v2);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CD7CB0()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_138_1();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_263_0();
      *(v4 + 8) = v0;
      return;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  v5 = OUTLINED_FUNCTION_37_1(v3);

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C8CD7DA4()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      return OUTLINED_FUNCTION_18_10(*(v6 + 8));
    }

    v5 = sub_1C90637EC();
    v4 = v1 + *(v2 + 80);
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1C8CD7E64()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      *(v3 + 8) = v0;
      return;
    }

    sub_1C90637EC();
  }

  OUTLINED_FUNCTION_114_2();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C8CD7F4C()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_223_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CD7FB4()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_228_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD8014()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*(v1 + 24));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[17];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
    OUTLINED_FUNCTION_179();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[18];
    }

    else
    {
      sub_1C90637EC();
      v6 = v2[19];
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CD8118()
{
  OUTLINED_FUNCTION_19_11();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AB0, &qword_1C906F588);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v3)
    {
      v6 = v2[17];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AF8, &qword_1C906F5B0);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) == v3)
      {
        v6 = v2[18];
      }

      else
      {
        sub_1C90637EC();
        v6 = v2[19];
      }
    }

    v8 = OUTLINED_FUNCTION_37_1(v6);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C8CD8230()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
LABEL_7:
    v7 = OUTLINED_FUNCTION_108_1(v4);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  if (v0 != 253)
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
    goto LABEL_7;
  }

  v5 = *(v1 + *(v2 + 24));
  if (v5 >= 2)
  {
    v6 = ((v5 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v6 = -2;
  }

  if (v6 < 0)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

void sub_1C8CD830C()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    OUTLINED_FUNCTION_138_1();
  }

  else
  {
    if (v3 == 253)
    {
      *(v1 + *(v2 + 24)) = v0 + 2;
      return;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  v6 = OUTLINED_FUNCTION_37_1(v5);

  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C8CD83C0()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    v2 = *(v0 + 1);
    if (v2 >= 2)
    {
      v3 = ((v2 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v3 = -2;
    }

    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v5 = OUTLINED_FUNCTION_100_2();

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_1C8CD844C()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 1) = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_142_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD84B0()
{
  OUTLINED_FUNCTION_274_1();
  if (v0)
  {
    OUTLINED_FUNCTION_313_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_78();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD8524()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_141_2();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD8588()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
    v3 = v1 + v5;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_1C8CD861C()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313AD0, &unk_1C9074D00);
  OUTLINED_FUNCTION_179();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_142_1();
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1C8CD86E0()
{
  sub_1C8DB6634(319, qword_1EDA6ADA8, type metadata accessor for ToolKitProtoTypeIdentifier, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C8DB6634(319, &qword_1EDA67368, type metadata accessor for ToolKitProtoDisplayRepresentation, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C90637EC();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_62();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_44_6();
      }
    }
  }
}

uint64_t sub_1C8CD87E0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v6 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD88D4()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A48, &unk_1C9072A10);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v5 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CD8A80()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_146_2();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_140_2();
      }
    }

    v3 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_1C8CD8BA4()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139D8, &qword_1C9072A40);
  OUTLINED_FUNCTION_179();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3139F0, &unk_1C9074D10);
      OUTLINED_FUNCTION_179();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_141_2();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_142_1();
      }
    }
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C8CD8E44()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    if (v0 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      return OUTLINED_FUNCTION_18_10(*(v5 + 8));
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
    v3 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

void sub_1C8CD8F00()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314588, &qword_1C9074DF0);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    if (v1 == 2147483646)
    {
      OUTLINED_FUNCTION_357_0();
      *(v3 + 8) = v0;
      return;
    }

    sub_1C90637EC();
    OUTLINED_FUNCTION_141_2();
  }

  OUTLINED_FUNCTION_114_2();

  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C8CD900C()
{
  OUTLINED_FUNCTION_274_1();
  if (v0)
  {
    OUTLINED_FUNCTION_313_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    OUTLINED_FUNCTION_208_1();
    v7 = OUTLINED_FUNCTION_108_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C8CD9080()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_212_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9184()
{
  OUTLINED_FUNCTION_81_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_179();
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_165_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
    v3 = v1 + v5;
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_1C8CD9218()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314368, &unk_1C9074D90);
  OUTLINED_FUNCTION_179();
  if (*(v1 + 84) == v0)
  {
    OUTLINED_FUNCTION_227_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_141_2();
  }

  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void sub_1C8CD9300()
{
  OUTLINED_FUNCTION_19_11();
  if (v0)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_141_2();
    v2 = OUTLINED_FUNCTION_37_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CD9364()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  v1 = OUTLINED_FUNCTION_165_1();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C8CD93A4()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  OUTLINED_FUNCTION_227_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8CD9474()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_140_2();
  }

  v5 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CD9520()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313400, &qword_1C906B680);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_142_1();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD95FC()
{
  OUTLINED_FUNCTION_274_1();
  if (v0)
  {
    OUTLINED_FUNCTION_313_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    OUTLINED_FUNCTION_207_0();
    v7 = OUTLINED_FUNCTION_108_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C8CD9670()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *(v1 + 12) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_213_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9724(unsigned __int8 *a1, int a2)
{
  if (a2 == 247)
  {
    v3 = *a1;
    if (v3 >= 9)
    {
      return v3 - 8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_207_0();
    }

    v7 = OUTLINED_FUNCTION_108_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C8CD97E0()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 247)
  {
    *v1 = v0 + 8;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313D00, &qword_1C9070750);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_213_0();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CD98EC()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    v2 = *(v0 + 16);
    if (v2 <= 1)
    {
      return 0;
    }

    else
    {
      return v2 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v4 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }
}

void sub_1C8CD9958()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 16) = ~v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD99C4()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  v0 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1C8CD9A0C()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8CD9A80()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_223_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_208_1();
    }
  }

  v6 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CD9B74()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_228_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_212_0();
      }
    }

    v5 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CD9D00()
{
  OUTLINED_FUNCTION_274_1();
  if (v0)
  {
    OUTLINED_FUNCTION_313_0();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    sub_1C90637EC();
    v6 = OUTLINED_FUNCTION_41_7();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1C8CD9D70()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_138_1();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CD9DD4()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  v0 = OUTLINED_FUNCTION_238_0();

  return __swift_getEnumTagSinglePayload(v0, v1, v2);
}

uint64_t sub_1C8CD9E1C()
{
  OUTLINED_FUNCTION_223();
  sub_1C90637EC();
  OUTLINED_FUNCTION_317_0();
  OUTLINED_FUNCTION_114_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8CD9E90()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    v5 = v1[19];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      v5 = v1[21];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) == v0)
      {
        v5 = v1[23];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
        OUTLINED_FUNCTION_179();
        if (*(v8 + 84) == v0)
        {
          v5 = v1[24];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
          OUTLINED_FUNCTION_179();
          if (*(v9 + 84) == v0)
          {
            v5 = v1[25];
          }

          else
          {
            sub_1C90637EC();
            v5 = v1[31];
          }
        }
      }
    }
  }

  v10 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1C8CDA074()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[19];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C0, &qword_1C9074E98);
      OUTLINED_FUNCTION_179();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[21];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147C8, &qword_1C9074EA0);
        OUTLINED_FUNCTION_179();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[23];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D0, &qword_1C9074EA8);
          OUTLINED_FUNCTION_179();
          if (*(v7 + 84) == v1)
          {
            v4 = v0[24];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314718, &qword_1C9074DA8);
            OUTLINED_FUNCTION_179();
            if (*(v8 + 84) == v1)
            {
              v4 = v0[25];
            }

            else
            {
              sub_1C90637EC();
              v4 = v0[31];
            }
          }
        }
      }
    }

    v9 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1C8CDA280()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_271_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
      OUTLINED_FUNCTION_179();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_352();
      }

      else
      {
        sub_1C90637EC();
        v5 = *(v1 + 52);
      }
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CDA3C0()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147D8, &qword_1C9074EB0);
      OUTLINED_FUNCTION_179();
      if (*(v5 + 84) == v1)
      {
        OUTLINED_FUNCTION_277_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3147E0, &qword_1C9074EB8);
        OUTLINED_FUNCTION_179();
        if (*(v6 + 84) == v1)
        {
          OUTLINED_FUNCTION_355_0();
        }

        else
        {
          sub_1C90637EC();
          v4 = *(v0 + 52);
        }
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CDA584()
{
  OUTLINED_FUNCTION_43_0();
  if (v0)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_207_0();
  v3 = OUTLINED_FUNCTION_108_1(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDA5E8()
{
  OUTLINED_FUNCTION_19_11();
  if (v0)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_213_0();
    v2 = OUTLINED_FUNCTION_37_1(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CDA6C8()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_146_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_140_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
      OUTLINED_FUNCTION_179();
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_207_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
        OUTLINED_FUNCTION_179();
        if (*(v7 + 84) == v0)
        {
          OUTLINED_FUNCTION_223_1();
        }

        else
        {
          sub_1C90637EC();
          OUTLINED_FUNCTION_208_1();
        }
      }
    }
  }

  v8 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1C8CDA84C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A0, &unk_1C9066A80);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_141_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312698, &qword_1C9066A78);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_142_1();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3126A8, &unk_1C9074CA0);
        OUTLINED_FUNCTION_179();
        if (*(v5 + 84) == v0)
        {
          OUTLINED_FUNCTION_213_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312690, &qword_1C9066A70);
          OUTLINED_FUNCTION_179();
          if (*(v6 + 84) == v0)
          {
            OUTLINED_FUNCTION_228_0();
          }

          else
          {
            sub_1C90637EC();
            OUTLINED_FUNCTION_212_0();
          }
        }
      }
    }

    v7 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1C8CDA9DC()
{
  OUTLINED_FUNCTION_312_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_229_0();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_146_2();
  }

  v5 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CDAA88()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312728, &qword_1C9066AE0);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_141_2();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CDAC2C()
{
  OUTLINED_FUNCTION_274_1();
  if (v2)
  {
    v3 = *v1;
    if (v3 >= 2)
    {
      return v3 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v5 + 84) == v0)
    {
      OUTLINED_FUNCTION_137_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_146_2();
    }

    v7 = OUTLINED_FUNCTION_108_1(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1C8CDACE4()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v4 + 84) == v2)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_141_2();
    }

    v6 = OUTLINED_FUNCTION_37_1(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1C8CDADC0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_12_11();
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == v0)
  {
    OUTLINED_FUNCTION_208_1();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_271_0();
  }

  v5 = OUTLINED_FUNCTION_108_1(v4);

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C8CDAE6C()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A58, &unk_1C9074CC0);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_212_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_277_1();
    }

    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CDAF68()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_140_2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_207_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_223_1();
    }
  }

  v7 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CDB060()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B8, &qword_1C90730B8);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3142B0, &unk_1C9074D80);
      OUTLINED_FUNCTION_179();
      if (*(v4 + 84) == v0)
      {
        OUTLINED_FUNCTION_213_0();
      }

      else
      {
        sub_1C90637EC();
        OUTLINED_FUNCTION_228_0();
      }
    }

    v5 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDB154()
{
  OUTLINED_FUNCTION_163_2();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  OUTLINED_FUNCTION_223_1();
  v4 = OUTLINED_FUNCTION_108_1(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CDB1BC()
{
  OUTLINED_FUNCTION_88_1();
  if (v2)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_228_0();
    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CDB294()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_207_0();
  }

  else
  {
    sub_1C90637EC();
    OUTLINED_FUNCTION_223_1();
  }

  v6 = OUTLINED_FUNCTION_108_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C8CDB344()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_225_0();
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314840, &qword_1C9074F48);
    OUTLINED_FUNCTION_179();
    if (*(v2 + 84) == v0)
    {
      OUTLINED_FUNCTION_213_0();
    }

    else
    {
      sub_1C90637EC();
      OUTLINED_FUNCTION_228_0();
    }

    v4 = OUTLINED_FUNCTION_37_1(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CDB5E4()
{
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDB614()
{

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDB644()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDB684()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDB6B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDB784()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1C8CDBB5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C8CDBB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyPredicate(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8CDBC1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AnyPredicate(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CDBDF4()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDC024()
{
  OUTLINED_FUNCTION_347_0();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDC058(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_258();
  sub_1C906204C();
  OUTLINED_FUNCTION_179();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_266_1();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_221_1();
    if (v9 >= 0x79)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

void sub_1C8CDC0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_258();
  sub_1C906204C();
  OUTLINED_FUNCTION_179();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v8);
  }

  else
  {
    v10 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *(v4 + *(a4 + 24)) = (v10 | (v10 << 57)) & 0xF000000000000007;
  }
}

uint64_t sub_1C8CDC1C8(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_179();
  if (*(v6 + 84) != a2)
  {
    return OUTLINED_FUNCTION_18_10(*(a1 + *(a3 + 20)));
  }

  v7 = OUTLINED_FUNCTION_266_1();

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CDC268()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_313_1();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0;
  }
}

uint64_t sub_1C8CDC300()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 32));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDC374()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C8CDC3E4(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_18_10(*(a1 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1C8CDC460(uint64_t result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1C8CDC4EC()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 16));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CDC564()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v5 = OUTLINED_FUNCTION_108_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C8CDC5E0()
{
  OUTLINED_FUNCTION_43_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v3 = OUTLINED_FUNCTION_78();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1C8CDC654()
{
  OUTLINED_FUNCTION_19_11();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v3 = OUTLINED_FUNCTION_85_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1C8CDC6C4(uint64_t a1, int a2)
{
  if (a2 == 123)
  {
    OUTLINED_FUNCTION_221_1();
    if (v4 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    OUTLINED_FUNCTION_116_1();
    type metadata accessor for Query(0);
    v6 = OUTLINED_FUNCTION_108_1(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

unint64_t *sub_1C8CDC73C(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 123)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = type metadata accessor for Query(0);
    v9 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1C8CDC89C()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDC8D0()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDC90C()
{

  if (*(v0 + 128))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1C8CDC9C8()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDCA00()
{
  OUTLINED_FUNCTION_347_0();
  if ((~*(v0 + 24) & 0xF000000000000007) != 0)
  {
  }

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDCA6C()
{
  OUTLINED_FUNCTION_347_0();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDCAA8()
{
  OUTLINED_FUNCTION_347_0();

  sub_1C8D43CA8(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C8CDCB64()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDCD00()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_7ToolKit08CompoundaB14PropertyFilterOySSG_0(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1C8CDCE1C()
{

  v0 = OUTLINED_FUNCTION_161_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDCE54()
{
  v1 = type metadata accessor for ToolInvocation(0);
  v2 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164A8, &qword_1C9085188);
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v5 = *(v3 + 80);
  v19 = *(v6 + 64);

  v7 = v0 + ((v2 + 24) & ~v2);
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  (*(v8 + 8))(v7);
  v9 = v7 + *(v1 + 20);

  if (*(v9 + 88))
  {
  }

  if (*(v9 + 304))
  {
  }

  v10 = type metadata accessor for ToolDefinition(0);
  v11 = v9 + *(v10 + 64);
  v12 = type metadata accessor for ToolIcon(0);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    OUTLINED_FUNCTION_127();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1();
      (*(v15 + 8))(v11 + v14);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  if (*(v9 + *(v10 + 76) + 8))
  {
  }

  if (*(v7 + *(v1 + 28) + 16) != 1)
  {
  }

  v16 = (((v2 + 24) & ~v2) + v20 + v5) & ~v5;
  v17 = (v19 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v0 + v16, v21);

  return MEMORY[0x1EEE6BDD0](v0, v17 + 8, v2 | v5 | 7);
}

uint64_t sub_1C8CDD24C()
{
  _Block_release(*(v0 + 32));

  v1 = OUTLINED_FUNCTION_161_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CDD298()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDD3F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CDD438()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDD730()
{
  sub_1C8D06E10(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C8CDD89C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8E32DE0(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CDD8CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8E32E60(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8CDDC4C()
{
  OUTLINED_FUNCTION_156_3();
  sub_1C90620BC();
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) != v1)
  {
    return OUTLINED_FUNCTION_18_10(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v3);
}

void sub_1C8CDDCE0()
{
  OUTLINED_FUNCTION_44_0();
  sub_1C90620BC();
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_227_0();

    __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_1C8CDDDA0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_223();
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
    OUTLINED_FUNCTION_179();
    if (*(v11 + 84) == v3)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
      OUTLINED_FUNCTION_179();
      if (*(v14 + 84) != v3)
      {
        return OUTLINED_FUNCTION_18_10(*(v4 + a3[8]));
      }

      v8 = v13;
      v12 = a3[6];
    }

    v9 = v4 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1C8CDDED4()
{
  OUTLINED_FUNCTION_44_0();
  type metadata accessor for ToolInvocation(0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_227_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3164C0, &qword_1C9072100);
    OUTLINED_FUNCTION_179();
    if (*(v8 + 84) == v3)
    {
      v6 = v7;
      v9 = v2[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B8, &unk_1C9085198);
      OUTLINED_FUNCTION_179();
      if (*(v11 + 84) != v3)
      {
        *(v1 + v2[8]) = v0;
        return;
      }

      v6 = v10;
      v9 = v2[6];
    }

    v5 = v1 + v9;
  }

  __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_1C8CDE034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    return OUTLINED_FUNCTION_166_2();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1C8CDE0B4()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 253)
  {
    *(v1 + 8) = v0 + 2;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    v5 = OUTLINED_FUNCTION_37_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDE130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    return OUTLINED_FUNCTION_166_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
  OUTLINED_FUNCTION_179();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(a3 + 24);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
    v10 = *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sub_1C8CDE1FC()
{
  OUTLINED_FUNCTION_223();
  if (v2 == 253)
  {
    *(v1 + 8) = v0 + 2;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312700, &qword_1C9066AC0);
    OUTLINED_FUNCTION_179();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC316440, &dword_1C908BFE0);
      v7 = *(v4 + 28);
    }

    v8 = OUTLINED_FUNCTION_37_1(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1C8CDE2D4()
{
  OUTLINED_FUNCTION_223();
  v2 = sub_1C9061EBC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CDE318(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 2);
  }

  else
  {
    v4 = 0;
  }

  sub_1C9061EBC();
  v5 = OUTLINED_FUNCTION_227_0();

  return __swift_storeEnumTagSinglePayload(v5, v4, a3, v6);
}

uint64_t sub_1C8CDE414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_21_0(*(a1 + 56));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1C8CDE49C()
{
  OUTLINED_FUNCTION_223();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 56) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
    v5 = OUTLINED_FUNCTION_37_1(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C8CDE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_21_0(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_1C8CDE5D0()
{
  OUTLINED_FUNCTION_44_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3174C0, &qword_1C908C180);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_37_1(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_1C8CDE95C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8CDEADC()
{

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CDEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C906204C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C8CDEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C906204C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C8CDECB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8E796D0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8CDECE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8CDED20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC316420, &qword_1C90729E0);
  v1 = sub_1C906427C();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C8CDEE00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

ToolKit::ToolVisibilityFlag sub_1C8CDEF30@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ToolVisibilityFlag.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C8CDEF70@<X0>(uint64_t *a1@<X8>)
{
  result = ToolVisibilityFlag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CDF0A8(char a1)
{
  if (a1)
  {
    return 0x6C61757145726FLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C8CDF12C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8E8D0C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C8CDF1AC(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_133_3();
  }

  if (a1 == 1)
  {
    return 0x7261507473726966;
  }

  return 0x7261506472696874;
}

uint64_t sub_1C8CDF200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E91810();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CDF234(char a1)
{
  if (a1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1C8CDF26C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8E923B4();
  *a1 = result;
  return result;
}

uint64_t _s7ToolKit8ToolFlagVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_80(*a1);
  }

  else
  {
    return 0;
  }
}

void *sub_1C8CDF42C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_242_2(result, (a2 - 1));
  }

  return result;
}

uint64_t sub_1C8CDF714(char a1)
{
  if (a1)
  {
    return 0x7250797469746E65;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8CDF80C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C8EACFF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit06SystemA8ProtocolO8MetadataO_0(uint64_t a1)
{
  if ((*(a1 + 56) & 0xFu) <= 9)
  {
    return *(a1 + 56) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1C8CDFAAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 10;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C8CDFB7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CDFBC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CDFE0C()
{
  OUTLINED_FUNCTION_43_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_21_0(*v1);
  }

  OUTLINED_FUNCTION_116_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
  OUTLINED_FUNCTION_179();
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_137_0();
  }

  else
  {
    sub_1C90637EC();
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_108_1(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1C8CDFEC0()
{
  OUTLINED_FUNCTION_19_11();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3129D8, &unk_1C909DFC0);
    OUTLINED_FUNCTION_179();
    if (*(v7 + 84) == v6)
    {
      OUTLINED_FUNCTION_138_1();
    }

    else
    {
      sub_1C90637EC();
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_37_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_1C8CDFFD8()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*v0);
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE0044()
{
  OUTLINED_FUNCTION_19_11();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v4 = OUTLINED_FUNCTION_37_1(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1C8CE00A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoChangeset.Partial(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CE00F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ToolKitProtoChangeset.Partial(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1C8CE015C()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE01C8()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CE0234()
{
  OUTLINED_FUNCTION_43_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_21_0(*(v0 + 8));
  }

  OUTLINED_FUNCTION_116_1();
  sub_1C90637EC();
  v4 = OUTLINED_FUNCTION_108_1(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1C8CE02A0()
{
  OUTLINED_FUNCTION_19_11();
  if (v1)
  {
    OUTLINED_FUNCTION_153();
  }

  else
  {
    OUTLINED_FUNCTION_248_0();
    v2 = OUTLINED_FUNCTION_37_1(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1C8CE03A0()
{
  v1 = type metadata accessor for ToolDefinition(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v21 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v10 = *(v9 + 64);

  v11 = v0 + v3;

  if (*(v0 + v3 + 88))
  {
  }

  v12 = v10 + v8;

  if (*(v11 + 304))
  {
  }

  v13 = v12 + 7;

  v14 = v11 + *(v1 + 64);
  v15 = type metadata accessor for ToolIcon(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3164B0, &qword_1C9085190) + 48);
      sub_1C9061EBC();
      OUTLINED_FUNCTION_13_1();
      (*(v18 + 8))(v14 + v17);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }
  }

  v19 = v13 & 0xFFFFFFFFFFFFFFF8;

  if (*(v11 + *(v1 + 76) + 8))
  {
  }

  (*(v6 + 8))(v0 + v8, v21);
  if (*(v0 + v19 + 8) >= 5uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v19 + 16, v2 | v7 | 7);
}

uint64_t sub_1C8CE0714()
{
  v1 = sub_1C90620BC();
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 121) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C8CE07FC()
{

  sub_1C8ED37F0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 225, 7);
}

uint64_t sub_1C8CE08AC(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C8ED3AE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C8CE096C(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  result = sub_1C8CE092C(a1, *a2, a3 & 1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1C8CE0A08()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE0B94()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE0DC0()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CE0E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE0EA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE11CC()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8CE12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE1338(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3144B8, &qword_1C90839E0);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE1508()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE17D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8CE1810()
{

  if (*(v0 + 128))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1C8CE18AC()
{
  if (*(v0 + 16) >= 0x10uLL)
  {
  }

  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8CE18E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE1934()
{

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE1990()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE1ED4()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE1F08()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE1F3C()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE1F88()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE1FBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CE205C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C90620BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8CE2104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C90620BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C8CE21C4()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE2220()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE2258()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE22B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8CE22FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C906204C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C8CE2604@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8F409E4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE2668()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE269C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_93_6();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE26EC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1C8E1B758(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1C8CE2748()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C8CE2A18()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_16_5();
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC313F20, &unk_1C9074D20);
  }

  else
  {
    sub_1C900BE74();
    v14 = sub_1C8CD1B00(qword_1EDA61090, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
    OUTLINED_FUNCTION_195_3(v14);
    v15 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v15, v16);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE2CE8(uint64_t result)
{
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2D4C(uint64_t result)
{
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2D84(uint64_t result)
{
  if (*(result + 32))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2DF0(uint64_t result)
{
  if (*(result + 8))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E28(uint64_t result)
{
  if (*(result + 24))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E60(uint64_t result)
{
  if (*(result + 40))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2E98(uint64_t result)
{
  if (*(result + 56))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2ED0(uint64_t result)
{
  if (*(result + 72))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE2F08(uint64_t result)
{
  if (*(result + 88))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

void sub_1C8CE2FE8()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_16_5();
  type metadata accessor for ToolKitProtoTypeIdentifier(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC3139D8, &qword_1C9072A40);
  }

  else
  {
    OUTLINED_FUNCTION_248_3();
    sub_1C900BE74();
    v14 = sub_1C8CD1B00(&qword_1EDA6C508, type metadata accessor for ToolKitProtoTypeIdentifier, &protocol conformance descriptor for ToolKitProtoTypeIdentifier);
    OUTLINED_FUNCTION_195_3(v14);
    v15 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v15, v16);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

void sub_1C8CE316C()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_204_4(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_292();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_16_5();
  type metadata accessor for ToolKitProtoTypeInstance(v9);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_312_1();
  OUTLINED_FUNCTION_66_10();
  if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
  {
    sub_1C8D16D78(v0, &qword_1EC312A58, &unk_1C9074CC0);
  }

  else
  {
    OUTLINED_FUNCTION_234_3();
    sub_1C900BE74();
    OUTLINED_FUNCTION_229_4();
    v16 = sub_1C8CD1B00(v14, v15, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    OUTLINED_FUNCTION_195_3(v16);
    v17 = OUTLINED_FUNCTION_49();
    sub_1C8CD20B4(v17, v18);
  }

  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8CE38D0(uint64_t result)
{
  if (*(result + 32))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE3964(uint64_t result)
{
  if (*(result + 64))
  {
    OUTLINED_FUNCTION_219_2();
    return sub_1C9063B8C();
  }

  return result;
}

uint64_t sub_1C8CE39D8@<X0>(_DWORD *a1@<X8>)
{
  result = Google_Protobuf_FileOptions.ToolKitPrototoolKitProtoVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE3E08()
{

  OUTLINED_FUNCTION_50();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

__n128 sub_1C8CE4484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C8CE47CC()
{

  OUTLINED_FUNCTION_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8CE4810()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C8CE4BAC(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_10_48(a1);
}

uint64_t sub_1C8CE4CC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8CE4D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8CE4D50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31EB50, &qword_1C90C7448);
  OUTLINED_FUNCTION_13_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8CE4E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolRecord(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C8CE4EE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ToolRecord(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C8CE5018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C8CE50AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312FC0, &unk_1C906A390);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8CE515C()
{
  sub_1C8CE7B78(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C8CE528C()
{
  v1 = sub_1C9062E6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

char *sub_1C8CE5358(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_9(a3, result, a2);
  }

  return result;
}

uint64_t sub_1C8CE5404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntentStateChange(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C8CE5448(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8CE5490(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C8CE54BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CE537C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C8CE54E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9064C2C();

        if (v9)
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

uint64_t _s7ToolKit14TypeIdentifierO015MeasurementUnitC0O9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](a1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CE5698(char a1)
{
  result = 0x64496C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x656C61636F6CLL;
      break;
    case 2:
      result = 0x64726F7779656BLL;
      break;
    case 3:
      result = 0x726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8CE5714(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

uint64_t sub_1C8CE5760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8CE54E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8CE57A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8CE563C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE57D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CE6F6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C8CE580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CE6F6C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C8CE5848(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3122B8, &qword_1C90662A8);
  OUTLINED_FUNCTION_11();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8CE6F6C(v9, v10, v11);
  sub_1C9064E1C();
  v13[15] = 0;
  OUTLINED_FUNCTION_12_0();
  sub_1C9064B9C();
  if (!v1)
  {
    v13[14] = 1;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v13[13] = 2;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B2C();
    v13[12] = 3;
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B6C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C8CE59E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3122A8, &qword_1C90662A0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8CE6F6C(v6, v7, v8);
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_1_7();
  v9 = sub_1C9064A7C();
  OUTLINED_FUNCTION_1_7();
  v10 = sub_1C9064A0C();
  v12 = v11;
  v21 = v10;
  v22 = v9;
  OUTLINED_FUNCTION_1_7();
  v13 = sub_1C9064A0C();
  v15 = v14;
  v20 = v13;
  OUTLINED_FUNCTION_1_7();
  v16 = sub_1C9064A4C();
  v17 = OUTLINED_FUNCTION_0();
  v18(v17);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v21;
  a2[2] = v12;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v16;
  return result;
}

double sub_1C8CE5C10@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8CE59E0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

double sub_1C8CE5C6C@<D0>(_OWORD *a1@<X8>)
{
  sub_1C8CE5CAC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C8CE5CAC@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1EDA60980 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_1EDA60980);
  }

  v3 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v3, qword_1EDA6E590);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v5 = v4;

  if (qword_1EDA66928 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDA66928);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E848);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v16 = v6;
  v8 = v7;

  if (qword_1EDA60970 != -1)
  {
    OUTLINED_FUNCTION_3_7(&qword_1EDA60970);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E578);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  if (qword_1EDA66938 != -1)
  {
    OUTLINED_FUNCTION_2_2(&qword_1EDA66938);
  }

  OUTLINED_FUNCTION_10(v3, qword_1EDA6E860);
  sub_1C9062E5C();
  sub_1C8E2B088();
  v14 = v13;

  *a2 = v5;
  a2[1] = v8;
  a2[2] = v16;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v14;
  return result;
}

uint64_t sub_1C8CE5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8CE6DD0(a1, a2, a3);

  return sub_1C9062B4C();
}

uint64_t sub_1C8CE6004()
{
  if (qword_1EDA60980 != -1)
  {
    OUTLINED_FUNCTION_5_3(&qword_1EDA60980);
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6E590);
  v2 = sub_1C9062E5C();
  OUTLINED_FUNCTION_6(v2, v3, v2, v3, v4, v5, v6, v7, v19, v21, v23, v25, v27, v28);
  if (qword_1EDA66928 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EDA66928);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E848);
  sub_1C9062E5C();
  v8 = MEMORY[0x1E69E6158];
  v9 = MEMORY[0x1E69A0138];

  OUTLINED_FUNCTION_13_0(v10);
  if (qword_1EDA60970 != -1)
  {
    OUTLINED_FUNCTION_3_7(&qword_1EDA60970);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E578);
  sub_1C9062E5C();
  v22 = *(v0 + 24);
  v24 = *(v0 + 32);

  OUTLINED_FUNCTION_13_0(v11);
  if (qword_1EDA66938 != -1)
  {
    OUTLINED_FUNCTION_2_2(&qword_1EDA66938);
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6E860);
  v12 = sub_1C9062E5C();
  return OUTLINED_FUNCTION_6(v12, v13, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v8, v9);
}

uint64_t sub_1C8CE61A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = aSearchkeywords_5[0];

  return v6;
}

uint64_t sub_1C8CE6220(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_10(v4, a2);
  sub_1C8CE6F6C(v5, v6, v7);
  return sub_1C9062E8C();
}

uint64_t default argument 0 of IndexingLog.init(path:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA6D908 != -1)
  {
    swift_once();
  }

  v2 = sub_1C9061EBC();
  v3 = __swift_project_value_buffer(v2, qword_1EDA6D910);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t default argument 2 of ToolDatabase.Accessor.iterate(over:scope:localeOptions:block:)@<X0>(uint64_t a2@<X8>)
{
  _s7ToolKit0A8DatabaseC8AccessorC10containers8matching5scope6localeSayAA19ContainerDefinitionVGAA0iJ5QueryV_AA0abC12RequestScopeO10Foundation6LocaleVtKFfA1__0();
  result = type metadata accessor for ToolDatabaseLocaleOptions(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE6470(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C8CE64B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8CE6590(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8CE65B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1C8CE663C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C8CE7A70(a2);
  *a1 = result;
  return result;
}