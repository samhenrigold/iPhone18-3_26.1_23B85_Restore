uint64_t TypeIdentifier.BuiltInTypeIdentifier.hash(into:)(uint64_t a1)
{
  switch(*v1)
  {
    case 0:
      v3 = 0;
      goto LABEL_18;
    case 1:
      v3 = 1;
      goto LABEL_18;
    case 2:
      v3 = 2;
      goto LABEL_18;
    case 3:
      v3 = 3;
      goto LABEL_18;
    case 4:
      v3 = 4;
      goto LABEL_18;
    case 5:
      v3 = 5;
      goto LABEL_18;
    case 6:
      v3 = 6;
      goto LABEL_18;
    case 7:
      v3 = 7;
      goto LABEL_18;
    case 8:
      v3 = 8;
      goto LABEL_18;
    case 9:
      v3 = 9;
      goto LABEL_18;
    case 0xALL:
      v3 = 10;
      goto LABEL_18;
    case 0xBLL:
      v3 = 11;
      goto LABEL_18;
    case 0xCLL:
      v3 = 12;
      goto LABEL_18;
    case 0xDLL:
      v3 = 13;
      goto LABEL_18;
    case 0xELL:
      v3 = 14;
      goto LABEL_18;
    case 0xFLL:
      v3 = 16;
LABEL_18:
      result = MEMORY[0x1CCA82810](v3);
      break;
    default:
      MEMORY[0x1CCA82810](15);
      result = TypeIdentifier.hash(into:)(a1);
      break;
  }

  return result;
}

uint64_t sub_1C9013764(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_1C9064D7C();
  a1(v4);
  return sub_1C9064DBC();
}

void TypeIdentifier.BuiltInTypeIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v26;
  a23 = v27;
  OUTLINED_FUNCTION_49_19(v28);
  v294[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDB0, &qword_1C90BC8C8);
  OUTLINED_FUNCTION_11();
  v285 = v29;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDB8, &qword_1C90BC8D0);
  OUTLINED_FUNCTION_11();
  v286 = v33;
  v287 = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v293[1] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDC0, &qword_1C90BC8D8);
  OUTLINED_FUNCTION_4_22(v36, &a20);
  v283 = v37;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17_35(v39, v251);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDC8, &qword_1C90BC8E0);
  OUTLINED_FUNCTION_4_22(v40, &a18);
  v281 = v41;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v292 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDD0, &qword_1C90BC8E8);
  OUTLINED_FUNCTION_4_22(v44, &a16);
  v279 = v45;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v291[1] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDD8, &qword_1C90BC8F0);
  OUTLINED_FUNCTION_4_22(v48, &a14);
  v277 = v49;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_19_32(v51, v251);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDE0, &qword_1C90BC8F8);
  OUTLINED_FUNCTION_4_22(v52, &a9);
  v275 = v53;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v290[1] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDE8, &qword_1C90BC900);
  OUTLINED_FUNCTION_4_22(v56, &v298);
  v273 = v57;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_97();
  v290[0] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDF0, &qword_1C90BC908);
  OUTLINED_FUNCTION_4_22(v60, &v296);
  v271 = v61;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_97();
  v296 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DDF8, &qword_1C90BC910);
  OUTLINED_FUNCTION_4_22(v64, &v295);
  v269 = v65;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_74_6(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE00, &qword_1C90BC918);
  OUTLINED_FUNCTION_4_22(v68, v294);
  v267 = v69;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_243(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE08, &qword_1C90BC920);
  OUTLINED_FUNCTION_4_22(v72, v293);
  v265 = v73;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_16_32(v75, v251);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE10, &qword_1C90BC928);
  OUTLINED_FUNCTION_4_22(v76, &v292);
  v263 = v77;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_97();
  v289 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE18, &qword_1C90BC930);
  OUTLINED_FUNCTION_4_22(v80, v291);
  v261 = v81;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_97();
  v288 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE20, &qword_1C90BC938);
  OUTLINED_FUNCTION_4_22(v84, v290);
  v259 = v85;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_18_33(v87, v251);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE28, &qword_1C90BC940);
  OUTLINED_FUNCTION_4_22(v88, &v289);
  v257 = v89;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_233();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE30, &qword_1C90BC948);
  OUTLINED_FUNCTION_11();
  v256 = v92;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v251 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31DE38, &qword_1C90BC950);
  OUTLINED_FUNCTION_11();
  v98 = v97;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_86();
  v100 = v23[3];
  v297 = v23;
  v101 = OUTLINED_FUNCTION_217(v23, v100);
  sub_1C90192B4(v101, v102, v103);
  v104 = v298;
  sub_1C9064DEC();
  if (!v104)
  {
    v254 = v95;
    v253 = v91;
    v255 = v24;
    v105 = v296;
    v298 = v98;
    v106 = sub_1C9064A9C();
    v107 = sub_1C8CB8914(v106, 0);
    if (v109 != v108 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_52_18();
      if (v114 == v115)
      {
        __break(1u);
        return;
      }

      v252 = *(v113 + v111);
      sub_1C8CB891C(v111 + 1, v110, v107, v113, v111, v112);
      v117 = v116;
      v119 = v118;
      v120 = swift_unknownObjectRelease();
      if (v117 == v119 >> 1)
      {
        v123 = v294[0];
        v124 = v294[1];
        switch(v252)
        {
          case 1:
            OUTLINED_FUNCTION_275();
            sub_1C90197F4(v203, v204, v205);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.BoundNumberCodingKeys, &a13);
            swift_unknownObjectRelease();
            v206 = OUTLINED_FUNCTION_6_26();
            v207(v206, v258);
            v208 = OUTLINED_FUNCTION_3_59();
            v209(v208);
            v129 = 1;
            break;
          case 2:
            OUTLINED_FUNCTION_119_1();
            sub_1C90197A0(v179, v180, v181);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.CalendarCodingKeys, &a13);
            swift_unknownObjectRelease();
            v182 = OUTLINED_FUNCTION_6_26();
            v183(v182, v260);
            v184 = OUTLINED_FUNCTION_3_59();
            v185(v184);
            v129 = 2;
            break;
          case 3:
            OUTLINED_FUNCTION_44_23();
            sub_1C901974C(v189, v190, v191);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.ColorCodingKeys, &a13);
            swift_unknownObjectRelease();
            v192 = OUTLINED_FUNCTION_6_26();
            v193(v192, v262);
            v194 = OUTLINED_FUNCTION_3_59();
            v195(v194);
            v129 = 3;
            break;
          case 4:
            OUTLINED_FUNCTION_231_2();
            sub_1C90196F8(v158, v159, v160);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.CurrencyCodingKeys, &a13);
            swift_unknownObjectRelease();
            v161 = OUTLINED_FUNCTION_6_26();
            v162(v161, v264);
            v163 = OUTLINED_FUNCTION_3_59();
            v164(v163);
            v129 = 4;
            break;
          case 5:
            OUTLINED_FUNCTION_219_1();
            sub_1C90196A4(v210, v211, v212);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.FileCodingKeys, &a13);
            swift_unknownObjectRelease();
            v213 = OUTLINED_FUNCTION_6_26();
            v214(v213, v266);
            v215 = OUTLINED_FUNCTION_3_59();
            v216(v215);
            v129 = 5;
            break;
          case 6:
            OUTLINED_FUNCTION_270();
            sub_1C9019650(v224, v225, v226);
            OUTLINED_FUNCTION_11_39(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.HomeAreaCodingKeys, &a13);
            swift_unknownObjectRelease();
            v227 = OUTLINED_FUNCTION_6_26();
            v228(v227, v268);
            v229 = OUTLINED_FUNCTION_3_59();
            v230(v229);
            v129 = 6;
            break;
          case 7:
            OUTLINED_FUNCTION_269();
            sub_1C90195FC(v196, v197, v198);
            OUTLINED_FUNCTION_11_39(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.MediaRouteCodingKeys, &a13);
            swift_unknownObjectRelease();
            v199 = OUTLINED_FUNCTION_6_26();
            v200(v199, v270);
            v201 = OUTLINED_FUNCTION_3_59();
            v202(v201);
            v129 = 7;
            break;
          case 8:
            OUTLINED_FUNCTION_53_16();
            sub_1C90195A8(v238, v239, v240);
            OUTLINED_FUNCTION_11_39(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PaymentMethodCodingKeys, &a13);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v245(v105, v272);
            v246 = OUTLINED_FUNCTION_3_59();
            v247(v246);
            v129 = 8;
            break;
          case 9:
            OUTLINED_FUNCTION_60_15();
            sub_1C9019554(v172, v173, v174);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PodcastCodingKeys, &a13);
            swift_unknownObjectRelease();
            v175 = OUTLINED_FUNCTION_6_26();
            v176(v175, v274);
            v177 = OUTLINED_FUNCTION_3_59();
            v178(v177);
            v129 = 9;
            break;
          case 10:
            OUTLINED_FUNCTION_54_16();
            sub_1C9019500(v231, v232, v233);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PersonCodingKeys, &a13);
            swift_unknownObjectRelease();
            v234 = OUTLINED_FUNCTION_6_26();
            v235(v234, v276);
            v236 = OUTLINED_FUNCTION_3_59();
            v237(v236);
            v129 = 10;
            break;
          case 11:
            OUTLINED_FUNCTION_62_14();
            sub_1C90194AC(v151, v152, v153);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.PlacemarkCodingKeys, &a13);
            swift_unknownObjectRelease();
            v154 = OUTLINED_FUNCTION_6_26();
            v155(v154, v278);
            v156 = OUTLINED_FUNCTION_3_59();
            v157(v156);
            v129 = 11;
            break;
          case 12:
            OUTLINED_FUNCTION_61_17();
            sub_1C9019458(v165, v166, v167);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.RideshareOptionCodingKeys, &a13);
            swift_unknownObjectRelease();
            v168 = OUTLINED_FUNCTION_6_26();
            v169(v168, v280);
            v170 = OUTLINED_FUNCTION_3_59();
            v171(v170);
            v129 = 12;
            break;
          case 13:
            OUTLINED_FUNCTION_56_14();
            sub_1C9019404(v217, v218, v219);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.VpnCodingKeys, &a13);
            swift_unknownObjectRelease();
            v220 = OUTLINED_FUNCTION_6_26();
            v221(v220, v282);
            v222 = OUTLINED_FUNCTION_3_59();
            v223(v222);
            v129 = 13;
            break;
          case 14:
            OUTLINED_FUNCTION_63_15();
            sub_1C90193B0(v144, v145, v146);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.TimeZoneCodingKeys, &a13);
            swift_unknownObjectRelease();
            v147 = OUTLINED_FUNCTION_6_26();
            v148(v147, v284);
            v149 = OUTLINED_FUNCTION_3_59();
            v150(v149);
            v129 = 14;
            break;
          case 15:
            OUTLINED_FUNCTION_71_10();
            sub_1C901935C(v186, v187, v188);
            OUTLINED_FUNCTION_11_39(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.QueryCodingKeys, &a13);
            OUTLINED_FUNCTION_50();
            v129 = swift_allocObject();
            sub_1C8CB892C(v129, v241, v242);
            v243 = v287;
            sub_1C9064A6C();
            v244 = v298;
            swift_unknownObjectRelease();
            v248 = OUTLINED_FUNCTION_184_3();
            v249(v248, v243);
            (*(v244 + 8))(v25, v96);
            break;
          case 16:
            OUTLINED_FUNCTION_59_15();
            sub_1C9019308(v137, v138, v139);
            v140 = v293[0];
            OUTLINED_FUNCTION_11_39(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.MeasurementCodingKeys, &a13);
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_296();
            v141(v140, v123);
            v142 = OUTLINED_FUNCTION_3_59();
            v143(v142);
            v129 = 15;
            break;
          default:
            a13 = 0;
            sub_1C9019848(v120, v121, v122);
            OUTLINED_FUNCTION_7_49(&type metadata for TypeIdentifier.BuiltInTypeIdentifier.AppCodingKeys, &a13);
            swift_unknownObjectRelease();
            v125 = OUTLINED_FUNCTION_6_26();
            v126(v125, v253);
            v127 = OUTLINED_FUNCTION_3_59();
            v128(v127);
            v129 = 0;
            break;
        }

        v250 = v297;
        *v124 = v129;
        __swift_destroy_boxed_opaque_existential_1(v250);
        goto LABEL_10;
      }
    }

    v130 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v130, MEMORY[0x1E69E6B28]);
    v132 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v132 = &type metadata for TypeIdentifier.BuiltInTypeIdentifier;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_42_13();
    v133 = OUTLINED_FUNCTION_81_9();
    v134(v133);
    swift_willThrow();
    swift_unknownObjectRelease();
    v135 = OUTLINED_FUNCTION_2_71();
    v136(v135);
  }

  __swift_destroy_boxed_opaque_existential_1(v297);
LABEL_10:
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C9014994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_1C9064D7C();
  a4(v7);
  return sub_1C9064DBC();
}

uint64_t sub_1C90149F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4C80(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4C80(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019C38(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019C38(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4D48(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014B60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C90149F0();
  *a1 = result;
  return result;
}

uint64_t sub_1C9014B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2AA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2AA0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019B3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019B3C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6AB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6AB8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6770(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6770(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019944(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019944(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019D34(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019D34(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019C8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019C8C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90198F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90198F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA5B78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA5B78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9014FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019DDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9014FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019DDC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90199EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90199EC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90150B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019B90(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90150EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019B90(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4D9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA4D9C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90151A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019D88(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90151DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019D88(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019AE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019AE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6DE4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90152CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6DE4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901989C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901989C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6CE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90153BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA6CE8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90153F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019A40(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019A40(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019A94(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90154AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019A94(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90154E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019998(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019998(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9015560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2E68(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C901559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C8CA2E68(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90155D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019CE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9015614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019CE0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t TypeIdentifier.PrimitiveTypeIdentifier.hashValue.getter()
{
  sub_1C9064D7C();
  TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t sub_1C90156A8(uint64_t a1)
{
  sub_1C9064D7C();
  TypeIdentifier.PrimitiveTypeIdentifier.hash(into:)();
  return sub_1C9064DBC();
}

void *sub_1C90156F0@<X0>(void *a1@<X8>)
{
  result = static TypeIdentifier.PrimitiveTypeIdentifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C901571C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936941421 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D756C6F76 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x796772656E65 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6172656C65636361 && a2 == 0xEC0000006E6F6974;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656C676E61 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1634038369 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001C90D08A0 == a2;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6973726570736964 && a2 == 0xEA00000000006E6FLL;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6369727463656C65 && a2 == 0xEE00656772616843;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6369727463656C65 && a2 == 0xEF746E6572727543;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001BLL && 0x80000001C90D08C0 == a2;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000012 && 0x80000001C90D08E0 == a2;
                                if (v20 || (sub_1C9064C2C() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
                                  if (v21 || (sub_1C9064C2C() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x696666456C657566 && a2 == 0xEE0079636E656963;
                                    if (v22 || (sub_1C9064C2C() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x616E696D756C6C69 && a2 == 0xEB0000000065636ELL;
                                      if (v23 || (sub_1C9064C2C() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x80000001C90D0900 == a2;
                                        if (v24 || (sub_1C9064C2C() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x7265776F70 && a2 == 0xE500000000000000;
                                          if (v25 || (sub_1C9064C2C() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 0x6572757373657270 && a2 == 0xE800000000000000)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = sub_1C9064C2C();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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

unint64_t sub_1C9015DAC(char a1)
{
  result = 0x6874676E656CLL;
  switch(a1)
  {
    case 1:
      result = 1936941421;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x656D756C6F76;
      break;
    case 4:
      result = 0x6465657073;
      break;
    case 5:
      result = 0x796772656E65;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x6172656C65636361;
      break;
    case 8:
      result = 0x656C676E61;
      break;
    case 9:
      result = 1634038369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6973726570736964;
      break;
    case 12:
    case 13:
      result = 0x6369727463656C65;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x636E657571657266;
      break;
    case 17:
      result = 0x696666456C657566;
      break;
    case 18:
      result = 0x616E696D756C6C69;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0x7265776F70;
      break;
    case 21:
      result = 0x6572757373657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9015FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A370(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A370(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A31C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90160B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A31C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90160EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A2C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A2C8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901616C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C901571C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9016194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9015DA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C90161BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019E84(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90161F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019E84(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A274(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A274(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90162AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A220(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90162E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A220(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A3C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A3C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A1CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90163D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A1CC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A178(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A178(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A124(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90164C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A124(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A0D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A0D0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901657C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A418(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90165B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A418(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90165F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A07C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A07C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A028(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90166A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A028(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90166E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019FD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019FD4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901675C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019F80(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019F80(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90167D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A5BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A5BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A568(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A568(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90168C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019F2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019F2C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C901693C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019ED8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9019ED8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90169B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A46C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90169F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A46C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A514(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A514(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9016AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A4C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9016AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C901A4C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void TypeIdentifier.MeasurementUnitType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v208 = v24;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E020, &qword_1C90BCAF8);
  OUTLINED_FUNCTION_11();
  v205[0] = v28;
  v205[1] = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_32(v30, v196[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E028, &qword_1C90BCB00);
  OUTLINED_FUNCTION_11();
  v204[0] = v32;
  v204[1] = v31;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_35(v34, v196[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E030, &qword_1C90BCB08);
  OUTLINED_FUNCTION_11();
  v203[0] = v36;
  v203[1] = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_19_32(v38, v196[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E038, &qword_1C90BCB10);
  OUTLINED_FUNCTION_11();
  v202[0] = v40;
  v202[1] = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_16_32(v42, v196[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E040, &qword_1C90BCB18);
  OUTLINED_FUNCTION_11();
  v201[0] = v44;
  v201[1] = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_33(v46, v196[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E048, &qword_1C90BCB20);
  OUTLINED_FUNCTION_11();
  v200[0] = v48;
  v200[1] = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_34(v50, v196[0]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E050, &qword_1C90BCB28);
  OUTLINED_FUNCTION_4_22(v51, &a17);
  v199[0] = v52;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21_28(v54, v196[0]);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E058, &qword_1C90BCB30);
  OUTLINED_FUNCTION_4_22(v55, &a14);
  v198[0] = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E060, &qword_1C90BCB38);
  OUTLINED_FUNCTION_4_22(v59, &a11);
  v197[0] = v60;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E068, &qword_1C90BCB40);
  OUTLINED_FUNCTION_4_22(v63, &v209);
  v196[34] = v64;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E070, &qword_1C90BCB48);
  OUTLINED_FUNCTION_4_22(v67, v207);
  v196[31] = v68;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E078, &qword_1C90BCB50);
  OUTLINED_FUNCTION_4_22(v71, v205);
  v196[28] = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E080, &qword_1C90BCB58);
  OUTLINED_FUNCTION_4_22(v75, v204);
  v196[25] = v76;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E088, &qword_1C90BCB60);
  OUTLINED_FUNCTION_4_22(v79, v203);
  v196[22] = v80;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E090, &qword_1C90BCB68);
  OUTLINED_FUNCTION_4_22(v83, v202);
  v196[19] = v84;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E098, &qword_1C90BCB70);
  OUTLINED_FUNCTION_4_22(v87, v201);
  v196[16] = v88;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v90);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0A0, &qword_1C90BCB78);
  OUTLINED_FUNCTION_4_22(v91, v200);
  v196[13] = v92;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0A8, &qword_1C90BCB80);
  OUTLINED_FUNCTION_4_22(v95, v199);
  v196[10] = v96;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0B0, &qword_1C90BCB88);
  OUTLINED_FUNCTION_4_22(v99, v198);
  v196[7] = v100;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0B8, &qword_1C90BCB90);
  OUTLINED_FUNCTION_4_22(v103, v197);
  v196[4] = v104;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0C0, &qword_1C90BCB98);
  OUTLINED_FUNCTION_11();
  v196[2] = v108;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_233();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0C8, &qword_1C90BCBA0);
  OUTLINED_FUNCTION_11();
  v196[1] = v111;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v112);
  v114 = v196 - v113;
  v207[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0D0, &qword_1C90BCBA8);
  OUTLINED_FUNCTION_11();
  v116 = v115;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_72();
  v118 = OUTLINED_FUNCTION_217(v26, v26[3]);
  sub_1C9019E84(v118, v119, v120);
  v206 = v20;
  OUTLINED_FUNCTION_200();
  v121 = sub_1C9064E1C();
  v124 = (v116 + 8);
  switch(v208)
  {
    case 1:
      OUTLINED_FUNCTION_275();
      sub_1C901A568(v162, v163, v164);
      OUTLINED_FUNCTION_25_23(&type metadata for TypeIdentifier.MeasurementUnitType.MassCodingKeys);
      OUTLINED_FUNCTION_296();
      v135 = v21;
      v165 = v107;
      goto LABEL_26;
    case 2:
      OUTLINED_FUNCTION_119_1();
      sub_1C901A514(v150, v151, v152);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.TemperatureCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v197;
      goto LABEL_23;
    case 3:
      OUTLINED_FUNCTION_44_23();
      sub_1C901A4C0(v156, v157, v158);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.VolumeCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v198;
      goto LABEL_23;
    case 4:
      OUTLINED_FUNCTION_231_2();
      sub_1C901A46C(v141, v142, v143);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.SpeedCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v199;
      goto LABEL_23;
    case 5:
      OUTLINED_FUNCTION_219_1();
      sub_1C901A418(v172, v173, v174);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.EnergyCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v200;
      goto LABEL_23;
    case 6:
      OUTLINED_FUNCTION_270();
      sub_1C901A3C4(v181, v182, v183);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.DurationCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v201;
      goto LABEL_23;
    case 7:
      OUTLINED_FUNCTION_269();
      sub_1C901A370(v159, v160, v161);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.AccelerationCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v202;
      goto LABEL_23;
    case 8:
      OUTLINED_FUNCTION_53_16();
      sub_1C901A31C(v190, v191, v192);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.AngleCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v203;
      goto LABEL_23;
    case 9:
      OUTLINED_FUNCTION_60_15();
      sub_1C901A2C8(v147, v148, v149);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.AreaCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v204;
      goto LABEL_23;
    case 10:
      OUTLINED_FUNCTION_54_16();
      sub_1C901A274(v187, v188, v189);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.ConcentrationMassCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v205;
      goto LABEL_23;
    case 11:
      OUTLINED_FUNCTION_62_14();
      sub_1C901A220(v138, v139, v140);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.DispersionCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = v207;
      goto LABEL_23;
    case 12:
      OUTLINED_FUNCTION_61_17();
      sub_1C901A1CC(v144, v145, v146);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricChargeCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = &v209;
      goto LABEL_23;
    case 13:
      OUTLINED_FUNCTION_56_14();
      sub_1C901A178(v178, v179, v180);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricCurrentCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = &a11;
      goto LABEL_23;
    case 14:
      OUTLINED_FUNCTION_63_15();
      sub_1C901A124(v132, v133, v134);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricPotentialDifferenceCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = &a14;
      goto LABEL_23;
    case 15:
      OUTLINED_FUNCTION_71_10();
      sub_1C901A0D0(v153, v154, v155);
      OUTLINED_FUNCTION_99(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricResistanceCodingKeys);
      v135 = OUTLINED_FUNCTION_6_26();
      v137 = &a17;
LABEL_23:
      v165 = *(v137 - 32);
      goto LABEL_26;
    case 16:
      OUTLINED_FUNCTION_59_15();
      sub_1C901A07C(v128, v129, v130);
      OUTLINED_FUNCTION_84_7();
      OUTLINED_FUNCTION_99(v131);
      goto LABEL_25;
    case 17:
      OUTLINED_FUNCTION_80_8();
      sub_1C901A028(v166, v167, v168);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.MeasurementUnitType.FuelEfficiencyCodingKeys);
      goto LABEL_25;
    case 18:
      OUTLINED_FUNCTION_78_10();
      sub_1C9019FD4(v184, v185, v186);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.MeasurementUnitType.IlluminanceCodingKeys);
      goto LABEL_25;
    case 19:
      OUTLINED_FUNCTION_76_10();
      sub_1C9019F80(v193, v194, v195);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.MeasurementUnitType.InformationStorageCodingKeys);
      goto LABEL_25;
    case 20:
      OUTLINED_FUNCTION_75_6();
      sub_1C9019F2C(v169, v170, v171);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.MeasurementUnitType.PowerCodingKeys);
      goto LABEL_25;
    case 21:
      OUTLINED_FUNCTION_77_9();
      sub_1C9019ED8(v175, v176, v177);
      OUTLINED_FUNCTION_12_38(&type metadata for TypeIdentifier.MeasurementUnitType.PressureCodingKeys);
LABEL_25:
      v135 = OUTLINED_FUNCTION_30();
LABEL_26:
      v136(v135, v165);
      (*v124)(v26, v110);
      break;
    default:
      sub_1C901A5BC(v121, v122, v123);
      v125 = v206;
      v126 = v207[0];
      OUTLINED_FUNCTION_41_4();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296();
      v127(v114, v110);
      (*v124)(v125, v126);
      break;
  }

  OUTLINED_FUNCTION_198();
}

void TypeIdentifier.MeasurementUnitType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_196();
  a22 = v25;
  a23 = v26;
  v241[0] = v23;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0D8, &qword_1C90BCBB0);
  OUTLINED_FUNCTION_4_22(v29, &a20);
  v229[0] = v30;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v237[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0E0, &qword_1C90BCBB8);
  OUTLINED_FUNCTION_4_22(v33, &a18);
  v228[0] = v34;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_32(v36, v223[0]);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0E8, &qword_1C90BCBC0);
  OUTLINED_FUNCTION_4_22(v37, &a16);
  v226[1] = v38;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v236[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0F0, &qword_1C90BCBC8);
  OUTLINED_FUNCTION_4_22(v41, &a14);
  v225[1] = v42;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_87_8(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E0F8, &qword_1C90BCBD0);
  OUTLINED_FUNCTION_4_22(v45, &a9);
  v224[4] = v46;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17_35(v48, v223[0]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E100, &qword_1C90BCBD8);
  OUTLINED_FUNCTION_4_22(v49, v241);
  v224[2] = v50;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v235[0] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E108, &qword_1C90BCBE0);
  OUTLINED_FUNCTION_4_22(v53, &v239);
  v224[0] = v54;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v234[1] = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E110, &qword_1C90BCBE8);
  OUTLINED_FUNCTION_4_22(v57, v238);
  v223[33] = v58;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_32(v60, v223[0]);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E118, &qword_1C90BCBF0);
  OUTLINED_FUNCTION_4_22(v61, v237);
  v223[31] = v62;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v233[1] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E120, &qword_1C90BCBF8);
  OUTLINED_FUNCTION_4_22(v65, v236);
  v223[29] = v66;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_97();
  v233[0] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E128, &qword_1C90BCC00);
  OUTLINED_FUNCTION_4_22(v69, v235);
  v223[27] = v70;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_16_32(v72, v223[0]);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E130, &qword_1C90BCC08);
  OUTLINED_FUNCTION_4_22(v73, v234);
  v223[25] = v74;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  v232[0] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E138, &qword_1C90BCC10);
  OUTLINED_FUNCTION_4_22(v77, v233);
  v223[23] = v78;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_97();
  v231[1] = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E140, &qword_1C90BCC18);
  OUTLINED_FUNCTION_4_22(v81, v232);
  v223[21] = v82;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_97();
  v239 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E148, &qword_1C90BCC20);
  OUTLINED_FUNCTION_4_22(v85, v231);
  v223[19] = v86;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_74_6(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E150, &qword_1C90BCC28);
  OUTLINED_FUNCTION_4_22(v89, v228);
  v223[18] = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_18_33(v92, v223[0]);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E158, &qword_1C90BCC30);
  OUTLINED_FUNCTION_4_22(v93, v230);
  v223[16] = v94;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_97();
  v230[2] = v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E160, &qword_1C90BCC38);
  OUTLINED_FUNCTION_4_22(v97, v229);
  v223[14] = v98;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_243(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E168, &qword_1C90BCC40);
  OUTLINED_FUNCTION_4_22(v101, &v227);
  v223[11] = v102;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_97();
  v230[1] = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E170, &qword_1C90BCC48);
  OUTLINED_FUNCTION_4_22(v105, v226);
  v223[9] = v106;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13_34(v108, v223[0]);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E178, &qword_1C90BCC50);
  OUTLINED_FUNCTION_4_22(v109, v225);
  v223[7] = v110;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_72();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E180, &qword_1C90BCC58);
  OUTLINED_FUNCTION_11();
  v223[6] = v113;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v114);
  v116 = v223 - v115;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E188, &qword_1C90BCC60);
  OUTLINED_FUNCTION_11();
  v118 = v117;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_233();
  v240 = v28;
  v120 = OUTLINED_FUNCTION_136();
  v122 = OUTLINED_FUNCTION_217(v120, v121);
  sub_1C9019E84(v122, v123, v124);
  v125 = v241[0];
  sub_1C9064DEC();
  if (!v125)
  {
    v223[4] = v116;
    v223[3] = v112;
    v223[5] = v24;
    v126 = v239;
    v241[0] = v118;
    v127 = sub_1C9064A9C();
    v128 = sub_1C8CB8914(v127, 0);
    if (v130 != v129 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_52_18();
      if (v135 == v136)
      {
        __break(1u);
        return;
      }

      v137 = *(v134 + v132);
      v138 = sub_1C8CB891C(v132 + 1, v131, v128, v134, v132, v133);
      v140 = v139;
      v142 = v141;
      v143 = swift_unknownObjectRelease();
      v223[2] = v138;
      if (v140 == v142 >> 1)
      {
        switch(v137)
        {
          case 1:
            OUTLINED_FUNCTION_275();
            sub_1C901A568(v188, v189, v190);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.MassCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v225;
            break;
          case 2:
            OUTLINED_FUNCTION_119_1();
            sub_1C901A514(v174, v175, v176);
            OUTLINED_FUNCTION_84_7();
            OUTLINED_FUNCTION_9_41(v177, v178);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v226;
            break;
          case 3:
            OUTLINED_FUNCTION_44_23();
            sub_1C901A4C0(v182, v183, v184);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.VolumeCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &v227;
            break;
          case 4:
            OUTLINED_FUNCTION_231_2();
            sub_1C901A46C(v165, v166, v167);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.SpeedCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v229;
            break;
          case 5:
            OUTLINED_FUNCTION_219_1();
            sub_1C901A418(v197, v198, v199);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.EnergyCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v230;
            break;
          case 6:
            OUTLINED_FUNCTION_270();
            sub_1C901A3C4(v206, v207, v208);
            OUTLINED_FUNCTION_10_45();
            sub_1C906498C();
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_6_26();
            v148 = v228;
            break;
          case 7:
            OUTLINED_FUNCTION_269();
            sub_1C901A370(v185, v186, v187);
            OUTLINED_FUNCTION_10_45();
            sub_1C906498C();
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v231;
            break;
          case 8:
            OUTLINED_FUNCTION_53_16();
            sub_1C901A31C(v215, v216, v217);
            OUTLINED_FUNCTION_10_45();
            sub_1C906498C();
            OUTLINED_FUNCTION_40_22();
            OUTLINED_FUNCTION_296();
            v146 = v126;
            v148 = v232;
            break;
          case 9:
            OUTLINED_FUNCTION_60_15();
            sub_1C901A2C8(v171, v172, v173);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.AreaCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v233;
            break;
          case 10:
            OUTLINED_FUNCTION_54_16();
            sub_1C901A274(v212, v213, v214);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.ConcentrationMassCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v234;
            break;
          case 11:
            OUTLINED_FUNCTION_62_14();
            sub_1C901A220(v162, v163, v164);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.DispersionCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v235;
            break;
          case 12:
            OUTLINED_FUNCTION_61_17();
            sub_1C901A1CC(v168, v169, v170);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricChargeCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v236;
            break;
          case 13:
            OUTLINED_FUNCTION_56_14();
            sub_1C901A178(v203, v204, v205);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricCurrentCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v237;
            break;
          case 14:
            OUTLINED_FUNCTION_63_15();
            sub_1C901A124(v159, v160, v161);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricPotentialDifferenceCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v238;
            break;
          case 15:
            OUTLINED_FUNCTION_71_10();
            sub_1C901A0D0(v179, v180, v181);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.ElectricResistanceCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &v239;
            break;
          case 16:
            OUTLINED_FUNCTION_59_15();
            sub_1C901A07C(v156, v157, v158);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.FrequencyCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v241;
            break;
          case 17:
            OUTLINED_FUNCTION_80_8();
            sub_1C901A028(v191, v192, v193);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.FuelEfficiencyCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &a9;
            break;
          case 18:
            OUTLINED_FUNCTION_78_10();
            sub_1C9019FD4(v209, v210, v211);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.IlluminanceCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &a14;
            break;
          case 19:
            OUTLINED_FUNCTION_76_10();
            sub_1C9019F80(v218, v219, v220);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.InformationStorageCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &a16;
            break;
          case 20:
            OUTLINED_FUNCTION_75_6();
            sub_1C9019F2C(v194, v195, v196);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.PowerCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &a18;
            break;
          case 21:
            OUTLINED_FUNCTION_77_9();
            sub_1C9019ED8(v200, v201, v202);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.PressureCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = &a20;
            break;
          default:
            a13 = 0;
            sub_1C901A5BC(v143, v144, v145);
            OUTLINED_FUNCTION_9_41(&type metadata for TypeIdentifier.MeasurementUnitType.LengthCodingKeys, &a13);
            OUTLINED_FUNCTION_40_22();
            v146 = OUTLINED_FUNCTION_23();
            v148 = v224;
            break;
        }

        v147(v146, *(v148 - 32));
        v221 = OUTLINED_FUNCTION_77_3();
        v222(v221);
        __swift_destroy_boxed_opaque_existential_1(v240);
        goto LABEL_10;
      }
    }

    v149 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3(v149, MEMORY[0x1E69E6B28]);
    v151 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v151 = &type metadata for TypeIdentifier.MeasurementUnitType;
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_42_13();
    v152 = OUTLINED_FUNCTION_81_9();
    v153(v152);
    swift_willThrow();
    swift_unknownObjectRelease();
    v154 = OUTLINED_FUNCTION_77_3();
    v155(v154);
  }

  __swift_destroy_boxed_opaque_existential_1(v240);
LABEL_10:
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C9018C2C(uint64_t a1)
{
  v2 = *v1;
  sub_1C9064D7C();
  TypeIdentifier.MeasurementUnitType.hash(into:)(v4, v2);
  return sub_1C9064DBC();
}

uint64_t TypeIdentifier.BuiltInTypeIdentifier.debugDescription.getter()
{
  result = 0x746163696C707041;
  switch(*v0)
  {
    case 0:
      return result;
    case 1:
      result = 0x6D754E646E756F42;
      break;
    case 2:
      v2 = 0x646E656C6143;
      goto LABEL_9;
    case 3:
      result = 0x726F6C6F43;
      break;
    case 4:
      result = OUTLINED_FUNCTION_89_2();
      break;
    case 5:
      result = 1701603654;
      break;
    case 6:
      result = 0x65724120656D6F48;
      break;
    case 7:
      result = 0x6F5220616964654DLL;
      break;
    case 8:
      result = 0x20746E656D796150;
      break;
    case 9:
      result = 0x74736163646F50;
      break;
    case 0xALL:
      result = OUTLINED_FUNCTION_79_10();
      break;
    case 0xBLL:
      v2 = 0x6D6563616C50;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      break;
    case 0xCLL:
      result = 0xD000000000000010;
      break;
    case 0xDLL:
      result = 5132374;
      break;
    case 0xELL:
      result = 0x6E6F5A20656D6954;
      break;
    case 0xFLL:
      result = 0x6D6572757361654DLL;
      break;
    default:

      v3 = TypeIdentifier.debugDescription.getter();
      MEMORY[0x1CCA81A90](v3);

      MEMORY[0x1CCA81A90](62, 0xE100000000000000);

      result = 0x3C7972657551;
      break;
  }

  return result;
}

uint64_t sub_1C9018ED8()
{
  v7[0] = *v0;

  v7[0] = String.init(typeIdentifier:)(v7, v1, v2, v3, v4);
  v7[1] = v5;
  sub_1C9062CAC();
}

uint64_t sub_1C9018F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312EF8, &unk_1C90839D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C9018FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DC88;
  if (!qword_1EC31DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DC88);
  }

  return result;
}

unint64_t sub_1C9019014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DCC8;
  if (!qword_1EC31DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DCC8);
  }

  return result;
}

unint64_t sub_1C9019068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DCD0;
  if (!qword_1EC31DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DCD0);
  }

  return result;
}

unint64_t sub_1C90190BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DCD8;
  if (!qword_1EC31DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DCD8);
  }

  return result;
}

unint64_t sub_1C9019110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D130;
  if (!qword_1EDA6D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D130);
  }

  return result;
}

unint64_t sub_1C9019164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7C8;
  if (!qword_1EDA6B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7C8);
  }

  return result;
}

unint64_t sub_1C90191B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D10;
  if (!qword_1EDA69D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D10);
  }

  return result;
}

unint64_t sub_1C901920C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DD10;
  if (!qword_1EC31DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DD10);
  }

  return result;
}

unint64_t sub_1C9019260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA669E0;
  if (!qword_1EDA669E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669E0);
  }

  return result;
}

unint64_t sub_1C90192B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9C0;
  if (!qword_1EDA6B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9C0);
  }

  return result;
}

unint64_t sub_1C9019308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637D8;
  if (!qword_1EDA637D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637D8);
  }

  return result;
}

unint64_t sub_1C901935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B968;
  if (!qword_1EDA6B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B968);
  }

  return result;
}

unint64_t sub_1C90193B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D30;
  if (!qword_1EDA69D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D30);
  }

  return result;
}

unint64_t sub_1C9019404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D58;
  if (!qword_1EDA69D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D58);
  }

  return result;
}

unint64_t sub_1C9019458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D18;
  if (!qword_1EDA69D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D18);
  }

  return result;
}

unint64_t sub_1C90194AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637E0;
  if (!qword_1EDA637E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637E0);
  }

  return result;
}

unint64_t sub_1C9019500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DDA8;
  if (!qword_1EC31DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DDA8);
  }

  return result;
}

unint64_t sub_1C9019554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D48;
  if (!qword_1EDA69D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D48);
  }

  return result;
}

unint64_t sub_1C90195A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637D0;
  if (!qword_1EDA637D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637D0);
  }

  return result;
}

unint64_t sub_1C90195FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D28;
  if (!qword_1EDA69D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D28);
  }

  return result;
}

unint64_t sub_1C9019650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D38;
  if (!qword_1EDA69D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D38);
  }

  return result;
}

unint64_t sub_1C90196A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637E8;
  if (!qword_1EDA637E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637E8);
  }

  return result;
}

unint64_t sub_1C90196F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C28;
  if (!qword_1EDA60C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C28);
  }

  return result;
}

unint64_t sub_1C901974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D50;
  if (!qword_1EDA69D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D50);
  }

  return result;
}

unint64_t sub_1C90197A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D40;
  if (!qword_1EDA69D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D40);
  }

  return result;
}

unint64_t sub_1C90197F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D20;
  if (!qword_1EDA69D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D20);
  }

  return result;
}

unint64_t sub_1C9019848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D60;
  if (!qword_1EDA69D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D60);
  }

  return result;
}

unint64_t sub_1C901989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF10;
  if (!qword_1EC31DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF10);
  }

  return result;
}

unint64_t sub_1C90198F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF18;
  if (!qword_1EC31DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF18);
  }

  return result;
}

unint64_t sub_1C9019944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF20;
  if (!qword_1EC31DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF20);
  }

  return result;
}

unint64_t sub_1C9019998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF28;
  if (!qword_1EC31DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF28);
  }

  return result;
}

unint64_t sub_1C90199EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF30;
  if (!qword_1EC31DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF30);
  }

  return result;
}

unint64_t sub_1C9019A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF38;
  if (!qword_1EC31DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF38);
  }

  return result;
}

unint64_t sub_1C9019A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF40;
  if (!qword_1EC31DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF40);
  }

  return result;
}

unint64_t sub_1C9019AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637A8;
  if (!qword_1EDA637A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637A8);
  }

  return result;
}

unint64_t sub_1C9019B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637A0;
  if (!qword_1EDA637A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637A0);
  }

  return result;
}

unint64_t sub_1C9019B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CC0;
  if (!qword_1EDA69CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CC0);
  }

  return result;
}

unint64_t sub_1C9019BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA669E8;
  if (!qword_1EDA669E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA669E8);
  }

  return result;
}

unint64_t sub_1C9019C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CA8;
  if (!qword_1EDA69CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CA8);
  }

  return result;
}

unint64_t sub_1C9019C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CC8;
  if (!qword_1EDA69CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CC8);
  }

  return result;
}

unint64_t sub_1C9019CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D00;
  if (!qword_1EDA69D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D00);
  }

  return result;
}

unint64_t sub_1C9019D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31DF48;
  if (!qword_1EC31DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31DF48);
  }

  return result;
}

unint64_t sub_1C9019D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B850;
  if (!qword_1EDA6B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B850);
  }

  return result;
}

unint64_t sub_1C9019DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B880;
  if (!qword_1EDA6B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B880);
  }

  return result;
}

unint64_t sub_1C9019E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637F0;
  if (!qword_1EDA637F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637F0);
  }

  return result;
}

unint64_t sub_1C9019E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EE0;
  if (!qword_1EDA69EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EE0);
  }

  return result;
}

unint64_t sub_1C9019ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63808;
  if (!qword_1EDA63808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63808);
  }

  return result;
}

unint64_t sub_1C9019F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63828;
  if (!qword_1EDA63828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63828);
  }

  return result;
}

unint64_t sub_1C9019F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C38;
  if (!qword_1EDA60C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C38);
  }

  return result;
}

unint64_t sub_1C9019FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C70;
  if (!qword_1EDA60C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C70);
  }

  return result;
}

unint64_t sub_1C901A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C58;
  if (!qword_1EDA60C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C58);
  }

  return result;
}

unint64_t sub_1C901A07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63800;
  if (!qword_1EDA63800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63800);
  }

  return result;
}

unint64_t sub_1C901A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C40;
  if (!qword_1EDA60C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C40);
  }

  return result;
}

unint64_t sub_1C901A124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C30;
  if (!qword_1EDA60C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C30);
  }

  return result;
}

unint64_t sub_1C901A178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C50;
  if (!qword_1EDA60C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C50);
  }

  return result;
}

unint64_t sub_1C901A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C60;
  if (!qword_1EDA60C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C60);
  }

  return result;
}

unint64_t sub_1C901A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C78;
  if (!qword_1EDA60C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C78);
  }

  return result;
}

unint64_t sub_1C901A274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C48;
  if (!qword_1EDA60C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C48);
  }

  return result;
}

unint64_t sub_1C901A2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C98;
  if (!qword_1EDA60C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C98);
  }

  return result;
}

unint64_t sub_1C901A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C88;
  if (!qword_1EDA60C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C88);
  }

  return result;
}

unint64_t sub_1C901A370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C68;
  if (!qword_1EDA60C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C68);
  }

  return result;
}

unint64_t sub_1C901A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E48;
  if (!qword_1EDA69E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E48);
  }

  return result;
}

unint64_t sub_1C901A418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63818;
  if (!qword_1EDA63818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63818);
  }

  return result;
}

unint64_t sub_1C901A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63820;
  if (!qword_1EDA63820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63820);
  }

  return result;
}

unint64_t sub_1C901A4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C80;
  if (!qword_1EDA60C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C80);
  }

  return result;
}

unint64_t sub_1C901A514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637F8;
  if (!qword_1EDA637F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637F8);
  }

  return result;
}

unint64_t sub_1C901A568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA60C90;
  if (!qword_1EDA60C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60C90);
  }

  return result;
}

unint64_t sub_1C901A5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63810;
  if (!qword_1EDA63810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63810);
  }

  return result;
}

unint64_t sub_1C901A614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E190;
  if (!qword_1EC31E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E190);
  }

  return result;
}

unint64_t sub_1C901A66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6DC00;
  if (!qword_1EDA6DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6DC00);
  }

  return result;
}

unint64_t sub_1C901A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E198;
  if (!qword_1EC31E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E198);
  }

  return result;
}

unint64_t sub_1C901A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1A0;
  if (!qword_1EC31E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1A0);
  }

  return result;
}

unint64_t sub_1C901A7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1B8;
  if (!qword_1EC31E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1B8);
  }

  return result;
}

unint64_t sub_1C901A850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C901A878(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C901A878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1D0;
  if (!qword_1EC31E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit19ContainerDefinitionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C901A8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1C901A92C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit14TypeIdentifierO07BuiltIncD0O(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unsigned __int8 *getEnumTagSinglePayload for TypeIdentifier.PrimitiveTypeIdentifier(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 0x16;
    v8 = v6 - 22;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0x19)
    {
      return (v8 - 24);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 46;
    if (a2 + 46 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 46);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.PrimitiveTypeIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 46;
  if (a3 + 46 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xD2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xD1)
  {
    v7 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 46;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C901AB60(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 0x16;
  v3 = v1 - 22;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for TypeIdentifier.PrimitiveTypeIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.PrimitiveTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TypeIdentifier.BuiltInTypeIdentifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.BuiltInTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.CustomCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TypeIdentifier.AttributedTypeIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C901B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1D8;
  if (!qword_1EC31E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1D8);
  }

  return result;
}

unint64_t sub_1C901B4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1E0;
  if (!qword_1EC31E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1E0);
  }

  return result;
}

unint64_t sub_1C901B528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1E8;
  if (!qword_1EC31E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1E8);
  }

  return result;
}

unint64_t sub_1C901B580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1F0;
  if (!qword_1EC31E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1F0);
  }

  return result;
}

unint64_t sub_1C901B5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E1F8;
  if (!qword_1EC31E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E1F8);
  }

  return result;
}

unint64_t sub_1C901B630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E200;
  if (!qword_1EC31E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E200);
  }

  return result;
}

unint64_t sub_1C901B688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E208;
  if (!qword_1EC31E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E208);
  }

  return result;
}

unint64_t sub_1C901B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E210;
  if (!qword_1EC31E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E210);
  }

  return result;
}

unint64_t sub_1C901B738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E218;
  if (!qword_1EC31E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E218);
  }

  return result;
}

unint64_t sub_1C901B790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E220;
  if (!qword_1EC31E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E220);
  }

  return result;
}

unint64_t sub_1C901B7E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E228;
  if (!qword_1EC31E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E228);
  }

  return result;
}

unint64_t sub_1C901B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E230;
  if (!qword_1EC31E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E230);
  }

  return result;
}

unint64_t sub_1C901B898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E60;
  if (!qword_1EDA69E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E60);
  }

  return result;
}

unint64_t sub_1C901B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E68;
  if (!qword_1EDA69E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E68);
  }

  return result;
}

unint64_t sub_1C901B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EB0;
  if (!qword_1EDA69EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EB0);
  }

  return result;
}

unint64_t sub_1C901B9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EB8;
  if (!qword_1EDA69EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EB8);
  }

  return result;
}

unint64_t sub_1C901B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DE8;
  if (!qword_1EDA69DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DE8);
  }

  return result;
}

unint64_t sub_1C901BA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DF0;
  if (!qword_1EDA69DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DF0);
  }

  return result;
}

unint64_t sub_1C901BAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E50;
  if (!qword_1EDA69E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E50);
  }

  return result;
}

unint64_t sub_1C901BB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E58;
  if (!qword_1EDA69E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E58);
  }

  return result;
}

unint64_t sub_1C901BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E80;
  if (!qword_1EDA69E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E80);
  }

  return result;
}

unint64_t sub_1C901BBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E88;
  if (!qword_1EDA69E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E88);
  }

  return result;
}

unint64_t sub_1C901BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E70;
  if (!qword_1EDA69E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E70);
  }

  return result;
}

unint64_t sub_1C901BC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E78;
  if (!qword_1EDA69E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E78);
  }

  return result;
}

unint64_t sub_1C901BCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E38;
  if (!qword_1EDA69E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E38);
  }

  return result;
}

unint64_t sub_1C901BD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E40;
  if (!qword_1EDA69E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E40);
  }

  return result;
}

unint64_t sub_1C901BD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DD8;
  if (!qword_1EDA69DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DD8);
  }

  return result;
}

unint64_t sub_1C901BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DE0;
  if (!qword_1EDA69DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DE0);
  }

  return result;
}

unint64_t sub_1C901BE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EA0;
  if (!qword_1EDA69EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EA0);
  }

  return result;
}

unint64_t sub_1C901BE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EA8;
  if (!qword_1EDA69EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EA8);
  }

  return result;
}

unint64_t sub_1C901BEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EC0;
  if (!qword_1EDA69EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EC0);
  }

  return result;
}

unint64_t sub_1C901BF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69EC8;
  if (!qword_1EDA69EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69EC8);
  }

  return result;
}

unint64_t sub_1C901BF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D98;
  if (!qword_1EDA69D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D98);
  }

  return result;
}

unint64_t sub_1C901BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DA0;
  if (!qword_1EDA69DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DA0);
  }

  return result;
}

unint64_t sub_1C901C028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E08;
  if (!qword_1EDA69E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E08);
  }

  return result;
}

unint64_t sub_1C901C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E10;
  if (!qword_1EDA69E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E10);
  }

  return result;
}

unint64_t sub_1C901C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DC8;
  if (!qword_1EDA69DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DC8);
  }

  return result;
}

unint64_t sub_1C901C130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DD0;
  if (!qword_1EDA69DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DD0);
  }

  return result;
}

unint64_t sub_1C901C188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DA8;
  if (!qword_1EDA69DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DA8);
  }

  return result;
}

unint64_t sub_1C901C1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DB0;
  if (!qword_1EDA69DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DB0);
  }

  return result;
}

unint64_t sub_1C901C238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D68;
  if (!qword_1EDA69D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D68);
  }

  return result;
}

unint64_t sub_1C901C290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D70;
  if (!qword_1EDA69D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D70);
  }

  return result;
}

unint64_t sub_1C901C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D88;
  if (!qword_1EDA69D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D88);
  }

  return result;
}

unint64_t sub_1C901C340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D90;
  if (!qword_1EDA69D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D90);
  }

  return result;
}

unint64_t sub_1C901C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E18;
  if (!qword_1EDA69E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E18);
  }

  return result;
}

unint64_t sub_1C901C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E20;
  if (!qword_1EDA69E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E20);
  }

  return result;
}

unint64_t sub_1C901C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DB8;
  if (!qword_1EDA69DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DB8);
  }

  return result;
}

unint64_t sub_1C901C4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DC0;
  if (!qword_1EDA69DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DC0);
  }

  return result;
}

unint64_t sub_1C901C4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69DF8;
  if (!qword_1EDA69DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69DF8);
  }

  return result;
}

unint64_t sub_1C901C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E00;
  if (!qword_1EDA69E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E00);
  }

  return result;
}

unint64_t sub_1C901C5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D78;
  if (!qword_1EDA69D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D78);
  }

  return result;
}

unint64_t sub_1C901C600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69D80;
  if (!qword_1EDA69D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69D80);
  }

  return result;
}

unint64_t sub_1C901C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E90;
  if (!qword_1EDA69E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E90);
  }

  return result;
}

unint64_t sub_1C901C6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E98;
  if (!qword_1EDA69E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E98);
  }

  return result;
}

unint64_t sub_1C901C708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E28;
  if (!qword_1EDA69E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E28);
  }

  return result;
}

unint64_t sub_1C901C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69E30;
  if (!qword_1EDA69E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69E30);
  }

  return result;
}

unint64_t sub_1C901C7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69ED0;
  if (!qword_1EDA69ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69ED0);
  }

  return result;
}

unint64_t sub_1C901C810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69ED8;
  if (!qword_1EDA69ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69ED8);
  }

  return result;
}

unint64_t sub_1C901C868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD60;
  if (!qword_1EDA6CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD60);
  }

  return result;
}

unint64_t sub_1C901C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD68;
  if (!qword_1EDA6CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD68);
  }

  return result;
}

unint64_t sub_1C901C918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD80;
  if (!qword_1EDA6CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD80);
  }

  return result;
}

unint64_t sub_1C901C970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD88;
  if (!qword_1EDA6CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD88);
  }

  return result;
}

unint64_t sub_1C901C9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B870;
  if (!qword_1EDA6B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B870);
  }

  return result;
}

unint64_t sub_1C901CA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B878;
  if (!qword_1EDA6B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B878);
  }

  return result;
}

unint64_t sub_1C901CA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD50;
  if (!qword_1EDA6CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD50);
  }

  return result;
}

unint64_t sub_1C901CAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD58;
  if (!qword_1EDA6CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD58);
  }

  return result;
}

unint64_t sub_1C901CB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B830;
  if (!qword_1EDA6B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B830);
  }

  return result;
}

unint64_t sub_1C901CB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B838;
  if (!qword_1EDA6B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B838);
  }

  return result;
}

unint64_t sub_1C901CBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD48;
  if (!qword_1EDA6CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD48);
  }

  return result;
}

unint64_t sub_1C901CC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD40;
  if (!qword_1EDA6CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD40);
  }

  return result;
}

unint64_t sub_1C901CC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD70;
  if (!qword_1EDA6CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD70);
  }

  return result;
}

unint64_t sub_1C901CCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD78;
  if (!qword_1EDA6CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD78);
  }

  return result;
}

unint64_t sub_1C901CD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD18;
  if (!qword_1EDA6CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD18);
  }

  return result;
}

unint64_t sub_1C901CD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD20;
  if (!qword_1EDA6CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD20);
  }

  return result;
}

unint64_t sub_1C901CDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD98;
  if (!qword_1EDA6CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD98);
  }

  return result;
}

unint64_t sub_1C901CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDA0;
  if (!qword_1EDA6CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDA0);
  }

  return result;
}

unint64_t sub_1C901CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD28;
  if (!qword_1EDA6CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD28);
  }

  return result;
}

unint64_t sub_1C901CEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD30;
  if (!qword_1EDA6CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD30);
  }

  return result;
}

unint64_t sub_1C901CF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD10;
  if (!qword_1EDA6CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD10);
  }

  return result;
}

unint64_t sub_1C901CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CD08;
  if (!qword_1EDA6CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CD08);
  }

  return result;
}

unint64_t sub_1C901CFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B800;
  if (!qword_1EDA6B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B800);
  }

  return result;
}

unint64_t sub_1C901D050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B808;
  if (!qword_1EDA6B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B808);
  }

  return result;
}

unint64_t sub_1C901D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7E0;
  if (!qword_1EDA6B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7E0);
  }

  return result;
}

unint64_t sub_1C901D100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7E8;
  if (!qword_1EDA6B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7E8);
  }

  return result;
}

unint64_t sub_1C901D158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7F0;
  if (!qword_1EDA6B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7F0);
  }

  return result;
}

unint64_t sub_1C901D1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7F8;
  if (!qword_1EDA6B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7F8);
  }

  return result;
}

unint64_t sub_1C901D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B820;
  if (!qword_1EDA6B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B820);
  }

  return result;
}

unint64_t sub_1C901D260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B828;
  if (!qword_1EDA6B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B828);
  }

  return result;
}

unint64_t sub_1C901D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B840;
  if (!qword_1EDA6B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B840);
  }

  return result;
}

unint64_t sub_1C901D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B848;
  if (!qword_1EDA6B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B848);
  }

  return result;
}

unint64_t sub_1C901D368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B860;
  if (!qword_1EDA6B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B860);
  }

  return result;
}

unint64_t sub_1C901D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B868;
  if (!qword_1EDA6B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B868);
  }

  return result;
}

unint64_t sub_1C901D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B888;
  if (!qword_1EDA6B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B888);
  }

  return result;
}

unint64_t sub_1C901D470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B890;
  if (!qword_1EDA6B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B890);
  }

  return result;
}

unint64_t sub_1C901D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7D0;
  if (!qword_1EDA6B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7D0);
  }

  return result;
}

unint64_t sub_1C901D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7D8;
  if (!qword_1EDA6B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7D8);
  }

  return result;
}

unint64_t sub_1C901D578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CB0;
  if (!qword_1EDA69CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CB0);
  }

  return result;
}

unint64_t sub_1C901D5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CB8;
  if (!qword_1EDA69CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CB8);
  }

  return result;
}

unint64_t sub_1C901D628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B810;
  if (!qword_1EDA6B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B810);
  }

  return result;
}

unint64_t sub_1C901D680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B818;
  if (!qword_1EDA6B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B818);
  }

  return result;
}

unint64_t sub_1C901D6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CD8;
  if (!qword_1EDA69CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CD8);
  }

  return result;
}

unint64_t sub_1C901D730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA69CE0;
  if (!qword_1EDA69CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69CE0);
  }

  return result;
}

unint64_t sub_1C901D788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637B0;
  if (!qword_1EDA637B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637B0);
  }

  return result;
}

unint64_t sub_1C901D7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637B8;
  if (!qword_1EDA637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637B8);
  }

  return result;
}

unint64_t sub_1C901D838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637C0;
  if (!qword_1EDA637C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637C0);
  }

  return result;
}

unint64_t sub_1C901D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA637C8;
  if (!qword_1EDA637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA637C8);
  }

  return result;
}

unint64_t sub_1C901D8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63790;
  if (!qword_1EDA63790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63790);
  }

  return result;
}

unint64_t sub_1C901D940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA63798;
  if (!qword_1EDA63798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63798);
  }

  return result;
}

unint64_t sub_1C901D998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDA8;
  if (!qword_1EDA6CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDA8);
  }

  return result;
}

unint64_t sub_1C901D9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6CDB0;
  if (!qword_1EDA6CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6CDB0);
  }

  return result;
}

unint64_t sub_1C901DA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9A0;
  if (!qword_1EDA6B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9A0);
  }

  return result;
}

unint64_t sub_1C901DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9A8;
  if (!qword_1EDA6B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9A8);
  }

  return result;
}

unint64_t sub_1C901DAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8C8;
  if (!qword_1EDA6B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8C8);
  }

  return result;
}

unint64_t sub_1C901DB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8D0;
  if (!qword_1EDA6B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8D0);
  }

  return result;
}

unint64_t sub_1C901DBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B928;
  if (!qword_1EDA6B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B928);
  }

  return result;
}

unint64_t sub_1C901DC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B930;
  if (!qword_1EDA6B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B930);
  }

  return result;
}

unint64_t sub_1C901DC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B970;
  if (!qword_1EDA6B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B970);
  }

  return result;
}

unint64_t sub_1C901DCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B978;
  if (!qword_1EDA6B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B978);
  }

  return result;
}

unint64_t sub_1C901DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B918;
  if (!qword_1EDA6B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B918);
  }

  return result;
}

unint64_t sub_1C901DD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B920;
  if (!qword_1EDA6B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B920);
  }

  return result;
}

unint64_t sub_1C901DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B980;
  if (!qword_1EDA6B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B980);
  }

  return result;
}

unint64_t sub_1C901DE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B988;
  if (!qword_1EDA6B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B988);
  }

  return result;
}

unint64_t sub_1C901DE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B908;
  if (!qword_1EDA6B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B908);
  }

  return result;
}

unint64_t sub_1C901DEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B910;
  if (!qword_1EDA6B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B910);
  }

  return result;
}

unint64_t sub_1C901DF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8D8;
  if (!qword_1EDA6B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8D8);
  }

  return result;
}

unint64_t sub_1C901DF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8E0;
  if (!qword_1EDA6B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8E0);
  }

  return result;
}

unint64_t sub_1C901DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8A8;
  if (!qword_1EDA6B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8A8);
  }

  return result;
}

unint64_t sub_1C901E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8B0;
  if (!qword_1EDA6B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8B0);
  }

  return result;
}

unint64_t sub_1C901E078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B938;
  if (!qword_1EDA6B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B938);
  }

  return result;
}

unint64_t sub_1C901E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B940;
  if (!qword_1EDA6B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B940);
  }

  return result;
}

unint64_t sub_1C901E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B948;
  if (!qword_1EDA6B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B948);
  }

  return result;
}

unint64_t sub_1C901E180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B950;
  if (!qword_1EDA6B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B950);
  }

  return result;
}

unint64_t sub_1C901E1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8E8;
  if (!qword_1EDA6B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8E8);
  }

  return result;
}

unint64_t sub_1C901E230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8F0;
  if (!qword_1EDA6B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8F0);
  }

  return result;
}

unint64_t sub_1C901E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B898;
  if (!qword_1EDA6B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B898);
  }

  return result;
}

unint64_t sub_1C901E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8A0;
  if (!qword_1EDA6B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8A0);
  }

  return result;
}

unint64_t sub_1C901E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B990;
  if (!qword_1EDA6B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B990);
  }

  return result;
}

unint64_t sub_1C901E390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B998;
  if (!qword_1EDA6B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B998);
  }

  return result;
}

unint64_t sub_1C901E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8F8;
  if (!qword_1EDA6B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8F8);
  }

  return result;
}

unint64_t sub_1C901E440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B900;
  if (!qword_1EDA6B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B900);
  }

  return result;
}

unint64_t sub_1C901E498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B958;
  if (!qword_1EDA6B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B958);
  }

  return result;
}

unint64_t sub_1C901E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B960;
  if (!qword_1EDA6B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B960);
  }

  return result;
}

unint64_t sub_1C901E548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8B8;
  if (!qword_1EDA6B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8B8);
  }

  return result;
}

unint64_t sub_1C901E5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B8C0;
  if (!qword_1EDA6B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B8C0);
  }

  return result;
}

unint64_t sub_1C901E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9B0;
  if (!qword_1EDA6B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9B0);
  }

  return result;
}

unint64_t sub_1C901E650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B9B8;
  if (!qword_1EDA6B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B9B8);
  }

  return result;
}

unint64_t sub_1C901E6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D110;
  if (!qword_1EDA6D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D110);
  }

  return result;
}

unint64_t sub_1C901E700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D118;
  if (!qword_1EDA6D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D118);
  }

  return result;
}

unint64_t sub_1C901E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D120;
  if (!qword_1EDA6D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D120);
  }

  return result;
}

unint64_t sub_1C901E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D128;
  if (!qword_1EDA6D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D128);
  }

  return result;
}

unint64_t sub_1C901E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D138;
  if (!qword_1EDA6D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D138);
  }

  return result;
}

unint64_t sub_1C901E860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D140;
  if (!qword_1EDA6D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D140);
  }

  return result;
}

unint64_t sub_1C901E8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7A8;
  if (!qword_1EDA6B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7A8);
  }

  return result;
}

unint64_t sub_1C901E910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7B0;
  if (!qword_1EDA6B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7B0);
  }

  return result;
}

unint64_t sub_1C901E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7B8;
  if (!qword_1EDA6B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7B8);
  }

  return result;
}

unint64_t sub_1C901E9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6B7C0;
  if (!qword_1EDA6B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6B7C0);
  }

  return result;
}

unint64_t sub_1C901EA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D148;
  if (!qword_1EDA6D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D148);
  }

  return result;
}

unint64_t sub_1C901EA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDA6D150;
  if (!qword_1EDA6D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA6D150);
  }

  return result;
}

unint64_t sub_1C901EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E238;
  if (!qword_1EC31E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E238);
  }

  return result;
}

unint64_t sub_1C901EB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC31E240;
  if (!qword_1EC31E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC31E240);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_72_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C906498C();
}

uint64_t OUTLINED_FUNCTION_92_8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1C901EC60()
{
  result = sub_1C9063EBC();
  qword_1EDA604A8 = result;
  return result;
}

uint64_t (*static NSNotificationName.toolKitIndexingBegan.modify())(uint64_t a1)
{
  if (qword_1EDA604A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_78();
  return j__swift_endAccess_2;
}

uint64_t sub_1C901ED5C()
{
  result = sub_1C9063EBC();
  qword_1EDA6B510 = result;
  return result;
}

id sub_1C901EDB8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_1C901EE44(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static NSNotificationName.toolkitDatabaseChanged.modify())(uint64_t)
{
  if (qword_1EDA6B508 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_78();
  return j_j__swift_endAccess_2;
}

uint64_t IndexingServiceClient.reindexDatabase(request:)()
{
  OUTLINED_FUNCTION_7();
  v0[2] = v1;
  v2 = sub_1C9063D3C();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C901F01C, 0, 0);
}

uint64_t sub_1C901F01C()
{
  v25 = v0;
  v1 = v0[2];
  sub_1C906371C();
  v2 = v1;
  v3 = sub_1C9063D1C();
  v4 = sub_1C906446C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v9 = v0[2];
    v23 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    v12 = [v9 debugDescription];
    v13 = sub_1C9063EEC();
    v15 = v14;

    v19 = sub_1C8CACE04(v13, v15, &v24, v16, v17, v18);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_1C8C9B000, v3, v4, "IndexingClient: Submitting request to service: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1CCA833A0](v11, -1, -1);
    MEMORY[0x1CCA833A0](v10, -1, -1);

    (*(v6 + 8))(v23, v8);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v0[6] = [objc_opt_self() standardClient];
  v20 = swift_task_alloc();
  v0[7] = v20;
  *v20 = v0;
  v20[1] = sub_1C901F248;
  v21 = v0[2];

  return MEMORY[0x1EEE50570](v21);
}

uint64_t sub_1C901F248()
{
  OUTLINED_FUNCTION_7();
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1C901F3C0;
  }

  else
  {
    v2 = sub_1C901F358;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C901F358()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C901F3C0()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ComparisonPredicate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_15(a1, a2);

  v12 = OUTLINED_FUNCTION_60_16(v4, v5, v6, v7, v8, v9, v10, v11, v60, v63, v66, v70, v74, v78);
  v13 = static EntityPropertyDefinition.== infix(_:_:)(v12);

  if (v13 & 1) != 0 && (v14 = *(v3 + 40), v15 = *(v3 + 48), v16 = *(v2 + 40), v17 = *(v2 + 48), sub_1C8D06E80(v14, v15), v18 = sub_1C8D06E80(v16, v17), v26 = OUTLINED_FUNCTION_60_16(v18, v19, v20, v21, v22, v23, v24, v25, v16, v17, v67, v71, v75, v14), v28 = static ComparisonPredicate.Comparison.== infix(_:_:)(v26, v27), sub_1C8D06F08(v16, v17), sub_1C8D06F08(v14, v15), (v28) && (v29 = type metadata accessor for ComparisonPredicate(0), v30 = OUTLINED_FUNCTION_110_8(v29), (v30))
  {
    OUTLINED_FUNCTION_40_23(v30, v31, v32, v33, v34, v35, v36, v37);
    v38 = OUTLINED_FUNCTION_94();
    v41 = sub_1C8D06F98(v38, v39, v14, v15, v16, v40);
    v49 = OUTLINED_FUNCTION_60_16(v41, v42, v43, v44, v45, v46, v47, v48, v61, v64, v68, v72, v76, v79);
    v51 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v49, v50);
    OUTLINED_FUNCTION_109_6(v51, v52, v53, v54, v55, v56, v57, v58, v62, v65, v69, v73, v77);
    sub_1C8D06FF4(v80, v15, v81, v82, v83);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t static ComparisonPredicate.Template.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_15(a1, a2);

  v12 = OUTLINED_FUNCTION_60_16(v4, v5, v6, v7, v8, v9, v10, v11, v58, v61, v65, v69, v73, v77);
  v13 = static EntityPropertyDefinition.== infix(_:_:)(v12);

  if (v13 & 1) != 0 && (v14 = *(v3 + 40), v15 = *(v2 + 40), sub_1C8D076FC(v14), v16 = sub_1C8D076FC(v15), v24 = OUTLINED_FUNCTION_60_16(v16, v17, v18, v19, v20, v21, v22, v23, v15, v62, v66, v70, v74, v14), v26 = static ComparisonPredicate.Comparison.Template.== infix(_:_:)(v24, v25), sub_1C8D07700(v15), sub_1C8D07700(v14), (v26) && (v27 = type metadata accessor for ComparisonPredicate.Template(0), v28 = OUTLINED_FUNCTION_110_8(v27), (v28))
  {
    OUTLINED_FUNCTION_40_23(v28, v29, v30, v31, v32, v33, v34, v35);
    v36 = OUTLINED_FUNCTION_94();
    v39 = sub_1C8D06F98(v36, v37, v14, v15, v26, v38);
    v47 = OUTLINED_FUNCTION_60_16(v39, v40, v41, v42, v43, v44, v45, v46, v59, v63, v67, v71, v75, v78);
    v49 = static ContentItemClassDescriptor.Inner.== infix(_:_:)(v47, v48);
    OUTLINED_FUNCTION_109_6(v49, v50, v51, v52, v53, v54, v55, v56, v60, v64, v68, v72, v76);
    sub_1C8D06FF4(v79, v80, v81, v82, v83);
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t ComparisonPredicate.Template.init(contentItemClass:property:comparisonTemplate:groupId:)()
{
  OUTLINED_FUNCTION_108_6();
  v11 = v3[1];
  v12 = *v3;
  v4 = *(v3 + 4);
  v6 = *v5;
  v7 = type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_74_7(v7);
  *v2 = v12;
  *(v2 + 16) = v11;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  OUTLINED_FUNCTION_116_10();
  OUTLINED_FUNCTION_13_1();
  v9 = *(v8 + 32);

  return v9(v2 + v1, v0);
}

uint64_t ComparisonPredicate.init(contentItemClassDescriptor:property:comparison:groupId:)()
{
  OUTLINED_FUNCTION_108_6();
  v4 = *v3;
  v5 = v3[1];
  v14 = *(v3 + 1);
  v6 = v3[4];
  v8 = *v7;
  v9 = v7[1];
  v10 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_74_7(v10);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v14;
  *(v2 + 32) = v6;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  OUTLINED_FUNCTION_116_10();
  OUTLINED_FUNCTION_13_1();
  v12 = *(v11 + 32);

  return v12(v2 + v1, v0);
}

unint64_t ComparisonPredicate.Template.comparisonTemplate.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return sub_1C8D076FC(v2);
}

uint64_t ComparisonPredicate.Template.instantiate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 5);
  switch((v6 >> 57) & 8 | v6 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_33_19();
      v36 = 0;
      v4 = *(v12 + 32);
      goto LABEL_46;
    case 2uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v10 = 1;
      goto LABEL_45;
    case 3uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v8 = v4 | 4;
      v9 = 1;
      goto LABEL_31;
    case 4uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v10 = 2;
      goto LABEL_45;
    case 5uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v8 = v4 | 4;
      v9 = 2;
      goto LABEL_31;
    case 6uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v10 = 3;
      goto LABEL_45;
    case 7uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v8 = v4 | 4;
      v9 = 3;
      goto LABEL_31;
    case 8uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v10 = 4;
      goto LABEL_45;
    case 9uLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v8 = v4 | 4;
      v9 = 4;
      goto LABEL_31;
    case 0xAuLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v10 = 5;
LABEL_45:
      v36 = v10;
      goto LABEL_46;
    case 0xBuLL:
      OUTLINED_FUNCTION_39_20();
      if (!v7)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_18_34();
      v8 = v4 | 4;
      v9 = 5;
LABEL_31:
      v35 = v8;
      v36 = v9;
      goto LABEL_47;
    case 0xCuLL:
      v5 = *(a1 + 16);
      if (v5 != 2)
      {
        v27 = 2;
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_33_19();
      v4 = *(v11 + 32);
      v36 = *(v11 + 40) | 6;

LABEL_46:
      v35 = v4;
      goto LABEL_47;
    case 0xDuLL:
      if (v6 == 0x1000000000000005 || v6 == 0x100000000000000DLL)
      {
        v5 = *(a1 + 16);
        if (!v5)
        {
          OUTLINED_FUNCTION_33_19();
          v36 = 6;
          v13 = 4;
          goto LABEL_55;
        }

LABEL_53:
        v27 = 0;
        goto LABEL_50;
      }

      v5 = *(a1 + 16);
      if (v5)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_33_19();
      v36 = 6;
      v13 = 20;
LABEL_55:
      v35 = v13;
LABEL_48:
      v14 = type metadata accessor for ComparisonPredicate.Template(0);
      v15 = &v3[*(v14 + 28)];
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v31 = *(v3 + 1);
      v33 = *(v3 + 2);
      v34 = *v3;
      v32 = *(v3 + 3);
      v29 = *(v14 + 24);
      v30 = *(v3 + 4);
      v20 = v15[32];
      v21 = type metadata accessor for ComparisonPredicate(0);
      v22 = *(v21 + 24);
      sub_1C906204C();
      OUTLINED_FUNCTION_13_1();
      (*(v23 + 16))(&v37[v22], &v3[v29]);
      v24 = &v37[*(v21 + 28)];
      *v24 = v16;
      *(v24 + 1) = v17;
      *(v24 + 2) = v18;
      *(v24 + 3) = v19;
      v24[32] = v20;
      *v37 = v34;
      *(v37 + 1) = v31;
      *(v37 + 2) = v33;
      *(v37 + 3) = v32;
      *(v37 + 4) = v30;
      *(v37 + 5) = v35;
      *(v37 + 6) = v36;
      sub_1C8D06F98(v16, v17, v18, v19, v20, v25);

    default:
      OUTLINED_FUNCTION_39_20();
      if (v7)
      {
        OUTLINED_FUNCTION_18_34();
        v35 = v4 | 4;
        v36 = 0;
LABEL_47:

        goto LABEL_48;
      }

LABEL_49:
      v27 = 1;
LABEL_50:
      sub_1C8D09510(a1, a2, a3);
      swift_allocError();
      *v28 = v27;
      *(v28 + 8) = v5;
      *(v28 + 16) = 0;
      return swift_willThrow();
  }
}

uint64_t ComparisonPredicate.Template.debugDescription.getter()
{
  MEMORY[0x1CCA81A90](v0[2], v0[3]);
  v1 = MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  OUTLINED_FUNCTION_56_15(v1, v2, &type metadata for ComparisonPredicate.Comparison.Template, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4, v5, v7, v0[5]);
  sub_1C90648BC();
  return 0;
}

uint64_t static ComparisonPredicate.Comparison.Template.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch((*a1 >> 57) & 8 | *a1 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_14_1();
      if (v12 == 1)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 2uLL:
      OUTLINED_FUNCTION_14_1();
      if (v9 != 2)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 3uLL:
      OUTLINED_FUNCTION_14_1();
      if (v10 != 3)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 4uLL:
      OUTLINED_FUNCTION_14_1();
      if (v6 != 4)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 5uLL:
      OUTLINED_FUNCTION_14_1();
      if (v13 != 5)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 6uLL:
      OUTLINED_FUNCTION_14_1();
      if (v17 != 6)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 7uLL:
      OUTLINED_FUNCTION_14_1();
      if (v11 != 7)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 8uLL:
      OUTLINED_FUNCTION_14_1();
      if (v19 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    case 9uLL:
      OUTLINED_FUNCTION_14_1();
      if (v8 != 9)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xAuLL:
      OUTLINED_FUNCTION_14_1();
      if (v18 != 10)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xBuLL:
      OUTLINED_FUNCTION_14_1();
      if (v5 != 11)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    case 0xCuLL:
      OUTLINED_FUNCTION_14_1();
      if (v7 != 12)
      {
        goto LABEL_47;
      }

LABEL_35:
      v36 = v3 & 0xEFFFFFFFFFFFFFF8;
      v37 = v2 & 0xF8;
      goto LABEL_36;
    case 0xDuLL:
      if (v2 == 0x1000000000000005)
      {
        if (((v3 >> 57) & 8 | v3 & 7) != 0xD || v3 != 0x1000000000000005)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000005uLL);
        v16 = 0x1000000000000005;
      }

      else if (v2 == 0x100000000000000DLL)
      {
        OUTLINED_FUNCTION_14_1();
        if (v14 != 13 || v3 != 0x100000000000000DLL)
        {
LABEL_47:
          sub_1C8D076FC(v2);
          sub_1C8D076FC(v3);
          sub_1C8D07700(v2);
          sub_1C8D07700(v3);
          v31 = 0;
          return v31 & 1;
        }

        sub_1C8D07700(0x100000000000000DuLL);
        v16 = 0x100000000000000DLL;
      }

      else
      {
        OUTLINED_FUNCTION_14_1();
        if (v33 != 13 || v3 != 0x1000000000000015)
        {
          goto LABEL_47;
        }

        sub_1C8D07700(0x1000000000000015uLL);
        v16 = 0x1000000000000015;
      }

      sub_1C8D07700(v16);
      v31 = 1;
      return v31 & 1;
    default:
      OUTLINED_FUNCTION_14_1();
      if (v4)
      {
        goto LABEL_47;
      }

      v36 = v3;
      v37 = v2;
LABEL_36:
      sub_1C8D076FC(v3);
      sub_1C8D076FC(v2);
      sub_1C8D076FC(v2);
      v20 = sub_1C8D076FC(v3);
      v28 = OUTLINED_FUNCTION_106(v20, v21, v22, v23, v24, v25, v26, v27, v36, v37);
      static TypeInstance.== infix(_:_:)(v28, v29);
      v31 = v30;
      sub_1C8D07700(v2);
      sub_1C8D07700(v3);
      sub_1C8D07700(v3);
      sub_1C8D07700(v2);
      return v31 & 1;
  }
}

uint64_t sub_1C901FEF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CEBE0 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x80000001C90C9C40 == a2)
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

unint64_t sub_1C9020058(char a1)
{
  result = 0x79747265706F7270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x644970756F7267;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90200F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C901FEF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9020118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027D28(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027D28(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t ComparisonPredicate.Template.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E248, &qword_1C90C0E70);
  OUTLINED_FUNCTION_11();
  v7 = v6;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = OUTLINED_FUNCTION_217(a1, a1[3]);
  sub_1C9027D28(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_50_3(&type metadata for ComparisonPredicate.Template.CodingKeys);
  v15 = OUTLINED_FUNCTION_61_18(v12, v13, v14);

  OUTLINED_FUNCTION_30_27();
  OUTLINED_FUNCTION_68_9();
  if (v15)
  {
  }

  else
  {

    v31 = *(v3 + 40);
    v16 = sub_1C8D076FC(v31);
    sub_1C9027D7C(v16, v17, v18);
    OUTLINED_FUNCTION_30_27();
    OUTLINED_FUNCTION_68_9();
    sub_1C8D07700(v31);
    type metadata accessor for ComparisonPredicate.Template(0);
    OUTLINED_FUNCTION_78_11();
    OUTLINED_FUNCTION_2_72();
    sub_1C8CC80AC(v19, v20, MEMORY[0x1E69695B0]);
    v21 = OUTLINED_FUNCTION_57_15();
    v27 = OUTLINED_FUNCTION_50_19(v21, v22, v23, v24, v25, v26);
    sub_1C8D3A070(v27, v28, v29);
    OUTLINED_FUNCTION_30_27();
    OUTLINED_FUNCTION_68_9();
    OUTLINED_FUNCTION_114_6();
  }

  return (*(v7 + 8))(v2, v5);
}

uint64_t ComparisonPredicate.Template.hash(into:)(uint64_t a1)
{
  OUTLINED_FUNCTION_76_11(a1);
  OUTLINED_FUNCTION_94();
  sub_1C9063FBC();
  OUTLINED_FUNCTION_297();
  TypeInstance.hash(into:)();
  OUTLINED_FUNCTION_297();
  ComparisonPredicate.Comparison.Template.hash(into:)();
  type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_116_10();
  OUTLINED_FUNCTION_2_72();
  sub_1C8CC80AC(v1, v2, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_117();
  sub_1C9063E7C();
  OUTLINED_FUNCTION_75_7();
  switch(v3)
  {
    case 1:
      v5 = 1;
      goto LABEL_7;
    case 2:
      v5 = 2;
LABEL_7:
      MEMORY[0x1CCA82810](v5);
      OUTLINED_FUNCTION_46_16();
      sub_1C9063FBC();
      OUTLINED_FUNCTION_117();
      goto LABEL_8;
    case 3:
      v4 = 3;
      goto LABEL_5;
    default:
      v4 = 0;
LABEL_5:
      MEMORY[0x1CCA82810](v4);
      OUTLINED_FUNCTION_46_16();
LABEL_8:

      return sub_1C9063FBC();
  }
}

void ComparisonPredicate.Template.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_113_8(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E250, &qword_1C90C0E78);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_110();
  v5 = type metadata accessor for ComparisonPredicate.Template(0);
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v7 = OUTLINED_FUNCTION_217(v0, v0[3]);
  v10 = sub_1C9027D28(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_79_11(&type metadata for ComparisonPredicate.Template.CodingKeys, v11, v10);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_111_6(v12, v13, v14);
    OUTLINED_FUNCTION_17_36(&type metadata for EntityPropertyDefinition);
    OUTLINED_FUNCTION_59_16();
    sub_1C9027DD0(v15, v16, v17);
    OUTLINED_FUNCTION_17_36(&type metadata for ComparisonPredicate.Comparison.Template);
    *(v5 + 40) = v29;
    OUTLINED_FUNCTION_2_72();
    sub_1C8CC80AC(v18, v19, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_47_19();
    v20 = OUTLINED_FUNCTION_53_17(v28);
    v22 = v21(v20);
    sub_1C8D3A118(v22, v23, v24);
    OUTLINED_FUNCTION_17_36(&type metadata for ContentItemClassDescriptor);
    v25 = OUTLINED_FUNCTION_23_30();
    v26(v25);
    OUTLINED_FUNCTION_52_19();
    sub_1C9028A48(v5, v27, type metadata accessor for ComparisonPredicate.Template);
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C9028AA4(v5, type metadata accessor for ComparisonPredicate.Template);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t ComparisonPredicate.Comparison.Template.debugDescription.getter()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112801;
      goto LABEL_13;
    case 2uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8254;
      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112830;
      goto LABEL_13;
    case 4uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 8252;
LABEL_8:
      v9 = 0xE200000000000000;
      goto LABEL_24;
    case 5uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = 2112828;
      goto LABEL_13;
    case 6uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_70_7();
      v9 = 0xE900000000000020;
      goto LABEL_24;
    case 7uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_62_15();
      v9 = v10 | 0xED00002000000000;
      goto LABEL_24;
    case 8uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_58_14();
      goto LABEL_23;
    case 9uLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_107_7();
      v9 = 0xEA00000000002048;
      goto LABEL_24;
    case 0xAuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_44_24() & 0xFFFFFFFFFFFFLL | 0x4E20000000000000;
      v9 = v13 + 1284;
      goto LABEL_24;
    case 0xBuLL:
      OUTLINED_FUNCTION_5_1();
      v2 = OUTLINED_FUNCTION_44_24() & 0xFFFFFFFFFFFFLL | 0x4C20000000000000;
      v3 = 542397249;
LABEL_23:
      v9 = v3 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_24;
    case 0xCuLL:
      OUTLINED_FUNCTION_5_1();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v4 = MEMORY[0x1CCA81A90](0xD000000000000010, 0x80000001C90CCAF0);
      OUTLINED_FUNCTION_56_15(v4, v5, &type metadata for TypeInstance, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v6, v7, v8, v19, v1);
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](29536, 0xE200000000000000);
      return v20;
    case 0xDuLL:
      v11 = 0x56204F4E20534148;
      if (v1 != 0x100000000000000DLL)
      {
        v11 = 0x5941444F54205349;
      }

      if (v1 == 0x1000000000000005)
      {
        return 0x554C415620534148;
      }

      else
      {
        return v11;
      }

    default:
      v20 = 0;
      v2 = 2112829;
LABEL_13:
      v9 = 0xE300000000000000;
LABEL_24:
      v14 = MEMORY[0x1CCA81A90](v2, v9);
      OUTLINED_FUNCTION_56_15(v14, v15, &type metadata for TypeInstance, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v16, v17, v18, v19, v1);
      sub_1C90648BC();
      return v20;
  }
}

unint64_t sub_1C9020AC0(char a1)
{
  result = 0x6F546C61757165;
  switch(a1)
  {
    case 1:
      result = 0x6C61757145746F6ELL;
      break;
    case 2:
      result = 0x65756C6156736168;
      break;
    case 3:
      result = 0x6C61566F4E736168;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E6168547373656CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6961746E6F63;
      break;
    case 9:
      result = 0x61746E6F43746F6ELL;
      break;
    case 10:
      result = 0x6957736E69676562;
      break;
    case 11:
      result = 0x6874695773646E65;
      break;
    case 12:
      result = 0x78654E6568546E69;
      break;
    case 13:
      result = 0x73614C6568546E69;
      break;
    case 14:
      result = 0x7961646F547369;
      break;
    case 15:
      result = 0x6565777465427369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9020C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902801C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902801C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027E24(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027E24(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90280C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90280C4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027FC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027FC8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028364(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028364(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028214(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028214(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90281C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9020FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90281C0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9020FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028268(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9021024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028268(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9021060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90282BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C902109C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90282BC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90210D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027F20(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9021114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027F20(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9021150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027F74(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C902118C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027F74(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90211C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027E78(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9021204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027E78(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9021240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027ECC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C902127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9027ECC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90212B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902816C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90212F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902816C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9021330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028118(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C902136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028118(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90213A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028070(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90213E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028070(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9021420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028310(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C902145C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028310(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ComparisonPredicate.Comparison.Template.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v219 = v21;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E258, &qword_1C90C0E80);
  OUTLINED_FUNCTION_11();
  v214 = v28;
  v215 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_97();
  v213 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E260, &qword_1C90C0E88);
  OUTLINED_FUNCTION_4_22(v31, &v212);
  v198[8] = v32;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E268, &qword_1C90C0E90);
  OUTLINED_FUNCTION_11();
  v211 = v36;
  v212 = v35;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v210 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E270, &qword_1C90C0E98);
  OUTLINED_FUNCTION_11();
  v208 = v40;
  v209 = v39;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v207 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E278, &qword_1C90C0EA0);
  OUTLINED_FUNCTION_11();
  v205 = v44;
  v206 = v43;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v204 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E280, &qword_1C90C0EA8);
  OUTLINED_FUNCTION_11();
  v202 = v48;
  v203 = v47;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v201 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E288, &qword_1C90C0EB0);
  OUTLINED_FUNCTION_11();
  v199 = v52;
  v200 = v51;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E290, &qword_1C90C0EB8);
  OUTLINED_FUNCTION_4_22(v55, &a17);
  v198[25] = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E298, &qword_1C90C0EC0);
  OUTLINED_FUNCTION_4_22(v59, &a14);
  v198[22] = v60;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2A0, &qword_1C90C0EC8);
  OUTLINED_FUNCTION_4_22(v63, &a11);
  v198[19] = v64;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2A8, &qword_1C90C0ED0);
  OUTLINED_FUNCTION_4_22(v67, &v220);
  v198[16] = v68;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2B0, &qword_1C90C0ED8);
  OUTLINED_FUNCTION_4_22(v71, &v217);
  v198[13] = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2B8, &qword_1C90C0EE0);
  OUTLINED_FUNCTION_4_22(v75, &v209);
  v198[5] = v76;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2C0, &qword_1C90C0EE8);
  OUTLINED_FUNCTION_4_22(v79, &v206);
  v198[2] = v80;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2C8, &qword_1C90C0EF0);
  OUTLINED_FUNCTION_11();
  v198[11] = v84;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_110();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2D0, &qword_1C90C0EF8);
  OUTLINED_FUNCTION_11();
  v198[10] = v87;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2D8, &qword_1C90C0F00);
  OUTLINED_FUNCTION_11();
  v217 = v89;
  v218 = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  v93 = v198 - v92;
  v94 = *v20;
  v95 = v26;
  v96 = v26[3];
  v97 = OUTLINED_FUNCTION_217(v95, v96);
  sub_1C9027E24(v97, v98, v99);
  v216 = v93;
  v100 = sub_1C9064E1C();
  switch((v94 >> 57) & 8 | v94 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_277_0();
      sub_1C9028310(v153, v154, v155);
      v156 = OUTLINED_FUNCTION_75_3(&type metadata for ComparisonPredicate.Comparison.Template.NotEqualToCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v156, v157, v158);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v106 = v22;
      v159 = v83;
      goto LABEL_19;
    case 2uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_98_9();
      sub_1C9028214(v135, v136, v137);
      v111 = v198[12];
      v138 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.GreaterThanCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v138, v139, v140);
      v86 = v198[14];
      OUTLINED_FUNCTION_67(&a10);
      v122 = &v216;
      goto LABEL_16;
    case 3uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_96_7();
      sub_1C90281C0(v141, v142, v143);
      v111 = v198[15];
      v144 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.GreaterThanOrEqualToCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v144, v145, v146);
      v86 = v198[17];
      OUTLINED_FUNCTION_67(&a10);
      v122 = &v219;
      goto LABEL_16;
    case 4uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_103_5();
      sub_1C902816C(v116, v117, v118);
      v111 = v198[18];
      v119 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.LessThanCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v119, v120, v121);
      v86 = v198[20];
      OUTLINED_FUNCTION_67(&a10);
      v122 = &a10;
      goto LABEL_16;
    case 5uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_89_3();
      sub_1C9028118(v160, v161, v162);
      v111 = v198[21];
      v163 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.LessThanOrEqualToCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v163, v164, v165);
      v86 = v198[23];
      OUTLINED_FUNCTION_67(&a10);
      v122 = &a13;
      goto LABEL_16;
    case 6uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_85_7();
      sub_1C90280C4(v172, v173, v174);
      v111 = v198[24];
      v175 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.ContainsCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v175, v176, v177);
      v86 = v198[26];
      OUTLINED_FUNCTION_67(&a10);
      v122 = &a16;
LABEL_16:
      v115 = *(v122 - 32);
      goto LABEL_17;
    case 7uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_92_9();
      sub_1C9028070(v147, v148, v149);
      v111 = v198[27];
      v150 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.NotContainsCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v150, v151, v152);
      v86 = v200;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v199;
      goto LABEL_17;
    case 8uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_83_9();
      sub_1C902801C(v184, v185, v186);
      v111 = v201;
      v187 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.BeginsWithCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v187, v188, v189);
      v86 = v203;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v202;
      goto LABEL_17;
    case 9uLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_101_8();
      sub_1C9027FC8(v129, v130, v131);
      v111 = v204;
      v132 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.EndsWithCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v132, v133, v134);
      v86 = v206;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v205;
      goto LABEL_17;
    case 0xAuLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_84_8();
      sub_1C9027F74(v178, v179, v180);
      v111 = v207;
      v181 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.InTheNextCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v181, v182, v183);
      v86 = v209;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v208;
      goto LABEL_17;
    case 0xBuLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_104_8();
      sub_1C9027F20(v108, v109, v110);
      v111 = v210;
      v112 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.InTheLastCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v112, v113, v114);
      v86 = v212;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v211;
      goto LABEL_17;
    case 0xCuLL:
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_102_9();
      sub_1C9027E78(v123, v124, v125);
      v111 = v213;
      v126 = OUTLINED_FUNCTION_16_0(&type metadata for ComparisonPredicate.Comparison.Template.IsBetweenCodingKeys);
      a10 = v86;
      sub_1C8CA6D90(v126, v127, v128);
      v86 = v215;
      OUTLINED_FUNCTION_67(&a10);
      v115 = v214;
LABEL_17:
      v107 = *(v115 + 8);
      v106 = v111;
      goto LABEL_18;
    case 0xDuLL:
      if (v94 == 0x1000000000000005)
      {
        OUTLINED_FUNCTION_36_11();
        sub_1C90282BC(v190, v191, v192);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicate.Comparison.Template.HasValueCodingKeys);
        v169 = OUTLINED_FUNCTION_6_26();
        v171 = &v206;
      }

      else if (v94 == 0x100000000000000DLL)
      {
        OUTLINED_FUNCTION_38_0();
        sub_1C9028268(v166, v167, v168);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicate.Comparison.Template.HasNoValueCodingKeys);
        v169 = OUTLINED_FUNCTION_6_26();
        v171 = &v209;
      }

      else
      {
        OUTLINED_FUNCTION_82_7();
        sub_1C9027ECC(v193, v194, v195);
        OUTLINED_FUNCTION_99(&type metadata for ComparisonPredicate.Comparison.Template.IsTodayCodingKeys);
        v169 = OUTLINED_FUNCTION_6_26();
        v171 = &v212;
      }

      v170(v169, *(v171 - 32));
      v196 = OUTLINED_FUNCTION_95_0();
      v197(v196);
      goto LABEL_20;
    default:
      LOBYTE(a10) = 0;
      sub_1C9028364(v100, v101, v102);
      v103 = OUTLINED_FUNCTION_75_3(&type metadata for ComparisonPredicate.Comparison.Template.EqualToCodingKeys);
      a10 = v94;
      sub_1C8CA6D90(v103, v104, v105);
      sub_1C9064B8C();
      v106 = OUTLINED_FUNCTION_45();
LABEL_18:
      v159 = v86;
LABEL_19:
      v107(v106, v159);
      (*(v218 + 8))(v93, v96);
LABEL_20:
      OUTLINED_FUNCTION_198();
      return;
  }
}

uint64_t ComparisonPredicate.Comparison.Template.hash(into:)()
{
  v1 = *v0;
  switch((*v0 >> 57) & 8 | *v0 & 7)
  {
    case 1uLL:
      OUTLINED_FUNCTION_79();
      v2 = 1;
      goto LABEL_18;
    case 2uLL:
      OUTLINED_FUNCTION_79();
      v2 = 4;
      goto LABEL_18;
    case 3uLL:
      OUTLINED_FUNCTION_79();
      v2 = 5;
      goto LABEL_18;
    case 4uLL:
      OUTLINED_FUNCTION_79();
      v2 = 6;
      goto LABEL_18;
    case 5uLL:
      OUTLINED_FUNCTION_79();
      v2 = 7;
      goto LABEL_18;
    case 6uLL:
      OUTLINED_FUNCTION_79();
      v2 = 8;
      goto LABEL_18;
    case 7uLL:
      OUTLINED_FUNCTION_79();
      v2 = 9;
      goto LABEL_18;
    case 8uLL:
      OUTLINED_FUNCTION_79();
      v2 = 10;
      goto LABEL_18;
    case 9uLL:
      OUTLINED_FUNCTION_79();
      v2 = 11;
      goto LABEL_18;
    case 0xAuLL:
      OUTLINED_FUNCTION_79();
      v2 = 12;
      goto LABEL_18;
    case 0xBuLL:
      OUTLINED_FUNCTION_79();
      v2 = 13;
      goto LABEL_18;
    case 0xCuLL:
      OUTLINED_FUNCTION_79();
      v2 = 15;
      goto LABEL_18;
    case 0xDuLL:
      if (v1 == 0x1000000000000005)
      {
        v3 = 2;
      }

      else if (v1 == 0x100000000000000DLL)
      {
        v3 = 3;
      }

      else
      {
        v3 = 14;
      }

      return MEMORY[0x1CCA82810](v3);
    default:
      v2 = 0;
LABEL_18:
      MEMORY[0x1CCA82810](v2);
      OUTLINED_FUNCTION_297();
      return TypeInstance.hash(into:)();
  }
}

uint64_t ComparisonPredicate.Comparison.Template.hashValue.getter()
{
  sub_1C9064D7C();
  ComparisonPredicate.Comparison.Template.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicate.Comparison.Template.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v22;
  a20 = v23;
  v278 = v20;
  v25 = v24;
  v274[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2F0, &qword_1C90C0F08);
  OUTLINED_FUNCTION_11();
  v268 = v27;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_97();
  v273[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E2F8, &qword_1C90C0F10);
  OUTLINED_FUNCTION_4_22(v30, &a18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v272[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E300, &qword_1C90C0F18);
  OUTLINED_FUNCTION_11();
  v267 = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v273[0] = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E308, &qword_1C90C0F20);
  OUTLINED_FUNCTION_4_22(v36, &a16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_97();
  v272[0] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E310, &qword_1C90C0F28);
  OUTLINED_FUNCTION_4_22(v39, &a14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v271[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E318, &qword_1C90C0F30);
  OUTLINED_FUNCTION_4_22(v42, &a12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_97();
  v271[0] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E320, &qword_1C90C0F38);
  OUTLINED_FUNCTION_4_22(v45, &a10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v276 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E328, &qword_1C90C0F40);
  OUTLINED_FUNCTION_4_22(v48, &v278);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v269 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E330, &qword_1C90C0F48);
  OUTLINED_FUNCTION_4_22(v51, &v277);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_97();
  v275 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E338, &qword_1C90C0F50);
  OUTLINED_FUNCTION_4_22(v54, &v275);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_97();
  v270[1] = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E340, &qword_1C90C0F58);
  OUTLINED_FUNCTION_4_22(v57, v274);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_97();
  v270[0] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E348, &qword_1C90C0F60);
  OUTLINED_FUNCTION_4_22(v60, v273);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E350, &qword_1C90C0F68);
  OUTLINED_FUNCTION_4_22(v62, v272);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v274[1] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E358, &qword_1C90C0F70);
  OUTLINED_FUNCTION_4_22(v65, v270);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_97();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E360, &qword_1C90C0F78);
  OUTLINED_FUNCTION_4_22(v67, v271);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E368, &qword_1C90C0F80);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E370, &unk_1C90C0F88);
  OUTLINED_FUNCTION_11();
  v71 = v70;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_106_6();
  v277 = v25;
  v73 = OUTLINED_FUNCTION_217(v25, v21);
  sub_1C9027E24(v73, v74, v75);
  v76 = v278;
  sub_1C9064DEC();
  if (v76)
  {
    goto LABEL_8;
  }

  v77 = v276;
  v278 = v71;
  OUTLINED_FUNCTION_100_9();
  v78 = sub_1C9064A9C();
  v79 = sub_1C8CB8914(v78, 0);
  if (v80 == v81 >> 1)
  {
LABEL_7:
    v95 = sub_1C90647DC();
    swift_allocError();
    v97 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v97 = &type metadata for ComparisonPredicate.Comparison.Template;
    OUTLINED_FUNCTION_100_9();
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    (*(*(v95 - 8) + 104))(v97, *MEMORY[0x1E69E6AF8], v95);
    swift_willThrow();
    swift_unknownObjectRelease();
    v98 = OUTLINED_FUNCTION_14_40();
    v99(v98);
LABEL_8:
    v100 = v277;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v80 < (v81 >> 1))
  {
    v82 = OUTLINED_FUNCTION_90_5(v79, v81 >> 1, v80, v81, v80);
    sub_1C8CB891C(v82, v83, v84, v85, v86, v87);
    v88 = OUTLINED_FUNCTION_115_7();
    if (!(v25 >> 1))
    {
      switch(v266)
      {
        case 1:
          OUTLINED_FUNCTION_277_0();
          sub_1C9028310(v165, v166, v167);
          v168 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.NotEqualToCodingKeys, &a10);
          sub_1C8CAC450(v168, v169, v170);
          OUTLINED_FUNCTION_81_10(&type metadata for TypeInstance, v171);
          swift_unknownObjectRelease();
          v241 = OUTLINED_FUNCTION_45();
          v242(v241, v77);
          v243 = OUTLINED_FUNCTION_14_40();
          v244(v243);
          v240 = a10 | 1;
          break;
        case 2:
          OUTLINED_FUNCTION_36_11();
          sub_1C90282BC(v136, v137, v138);
          OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.Template.HasValueCodingKeys, &a10);
          swift_unknownObjectRelease();
          v139 = OUTLINED_FUNCTION_6_26();
          v140(v139);
          v141 = OUTLINED_FUNCTION_14_40();
          v142(v141);
          v143 = 0x1000000000000001;
          goto LABEL_27;
        case 3:
          OUTLINED_FUNCTION_38_0();
          sub_1C9028268(v151, v152, v153);
          OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.HasNoValueCodingKeys, &a10);
          swift_unknownObjectRelease();
          v154 = OUTLINED_FUNCTION_45();
          v155(v154);
          v156 = OUTLINED_FUNCTION_14_40();
          v157(v156);
          v240 = 0x100000000000000DLL;
          break;
        case 4:
          OUTLINED_FUNCTION_98_9();
          sub_1C9028214(v115, v116, v117);
          v118 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.GreaterThanCodingKeys, &a10);
          sub_1C8CAC450(v118, v119, v120);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v121);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v213 = OUTLINED_FUNCTION_10_34();
          v214(v213);
          v215 = OUTLINED_FUNCTION_86_4();
          v216(v215);
          v217 = a10;
          goto LABEL_26;
        case 5:
          OUTLINED_FUNCTION_96_7();
          sub_1C90281C0(v172, v173, v174);
          v175 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.GreaterThanOrEqualToCodingKeys, &a10);
          sub_1C8CAC450(v175, v176, v177);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v178);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v245 = OUTLINED_FUNCTION_10_34();
          v246(v245);
          v247 = OUTLINED_FUNCTION_86_4();
          v248(v247);
          v240 = a10 | 3;
          break;
        case 6:
          OUTLINED_FUNCTION_103_5();
          sub_1C902816C(v186, v187, v188);
          v189 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.LessThanCodingKeys, &a10);
          sub_1C8CAC450(v189, v190, v191);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v192);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v255 = OUTLINED_FUNCTION_10_34();
          v256(v255);
          v257 = OUTLINED_FUNCTION_86_4();
          v258(v257);
          v143 = a10;
LABEL_27:
          v240 = v143 | 4;
          break;
        case 7:
          OUTLINED_FUNCTION_89_3();
          sub_1C9028118(v158, v159, v160);
          v161 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.Template.LessThanOrEqualToCodingKeys, &a10);
          sub_1C8CAC450(v161, v162, v163);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v164);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v232 = OUTLINED_FUNCTION_10_34();
          v233(v232);
          v234 = OUTLINED_FUNCTION_86_4();
          v235(v234);
          v211 = a10;
          v212 = 5;
          goto LABEL_25;
        case 8:
          OUTLINED_FUNCTION_85_7();
          sub_1C90280C4(v200, v201, v202);
          v203 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.Template.ContainsCodingKeys, &a10);
          sub_1C8CAC450(v203, v204, v205);
          OUTLINED_FUNCTION_77_10(&type metadata for TypeInstance, v206);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v263(v269, 0);
          v264 = OUTLINED_FUNCTION_86_4();
          v265(v264);
          v240 = a10 | 6;
          break;
        case 9:
          OUTLINED_FUNCTION_92_9();
          sub_1C9028070(v129, v130, v131);
          v132 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.Template.NotContainsCodingKeys, &a10);
          sub_1C8CAC450(v132, v133, v134);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v135);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v223 = OUTLINED_FUNCTION_10_34();
          v224(v223);
          v225 = OUTLINED_FUNCTION_86_4();
          v226(v225);
          v240 = a10 | 7;
          break;
        case 10:
          OUTLINED_FUNCTION_83_9();
          sub_1C902801C(v193, v194, v195);
          v196 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.BeginsWithCodingKeys, &a10);
          sub_1C8CAC450(v196, v197, v198);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v199);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v259 = OUTLINED_FUNCTION_10_34();
          v260(v259);
          v261 = OUTLINED_FUNCTION_86_4();
          v262(v261);
          v240 = a10 | 0x1000000000000000;
          break;
        case 11:
          OUTLINED_FUNCTION_101_8();
          sub_1C9027FC8(v108, v109, v110);
          v111 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.EndsWithCodingKeys, &a10);
          sub_1C8CAC450(v111, v112, v113);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v114);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v207 = OUTLINED_FUNCTION_10_34();
          v208(v207);
          v209 = OUTLINED_FUNCTION_86_4();
          v210(v209);
          OUTLINED_FUNCTION_103();
          goto LABEL_25;
        case 12:
          OUTLINED_FUNCTION_84_8();
          sub_1C9027F74(v122, v123, v124);
          v125 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.InTheNextCodingKeys, &a10);
          sub_1C8CAC450(v125, v126, v127);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v128);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v218 = OUTLINED_FUNCTION_10_34();
          v219(v218);
          v220 = OUTLINED_FUNCTION_86_4();
          v221(v220);
          OUTLINED_FUNCTION_103();
          v212 = v222 + 1;
          goto LABEL_25;
        case 13:
          OUTLINED_FUNCTION_104_8();
          sub_1C9027F20(v179, v180, v181);
          v182 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.InTheLastCodingKeys, &a10);
          sub_1C8CAC450(v182, v183, v184);
          OUTLINED_FUNCTION_16_33(&type metadata for TypeInstance, v185);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v249 = OUTLINED_FUNCTION_54_10();
          v250(v249, v267);
          v251 = OUTLINED_FUNCTION_86_4();
          v252(v251);
          OUTLINED_FUNCTION_103();
          v217 = v253 | v254;
LABEL_26:
          v240 = v217 | 2;
          break;
        case 14:
          OUTLINED_FUNCTION_82_7();
          sub_1C9027ECC(v101, v102, v103);
          OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.Template.IsTodayCodingKeys, &a10);
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_6_26();
          v105(v104);
          v106 = OUTLINED_FUNCTION_14_40();
          v107(v106);
          v240 = 0x1000000000000015;
          break;
        case 15:
          OUTLINED_FUNCTION_102_9();
          sub_1C9027E78(v144, v145, v146);
          v147 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.IsBetweenCodingKeys, &a10);
          sub_1C8CAC450(v147, v148, v149);
          OUTLINED_FUNCTION_16_33(&type metadata for TypeInstance, v150);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v227 = OUTLINED_FUNCTION_54_10();
          v228(v227, v268);
          v229 = OUTLINED_FUNCTION_86_4();
          v230(v229);
          OUTLINED_FUNCTION_103();
          v212 = v231 + 3;
LABEL_25:
          v240 = v211 | v212;
          break;
        default:
          LOBYTE(a10) = 0;
          sub_1C9028364(v88, v89, v90);
          v91 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.Template.EqualToCodingKeys, &a10);
          sub_1C8CAC450(v91, v92, v93);
          OUTLINED_FUNCTION_7_50(&type metadata for TypeInstance, v94);
          OUTLINED_FUNCTION_25_1();
          swift_unknownObjectRelease();
          v236 = OUTLINED_FUNCTION_10_34();
          v237(v236);
          v238 = OUTLINED_FUNCTION_86_4();
          v239(v238);
          v240 = a10;
          break;
      }

      v100 = v277;
      *v274[0] = v240;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C9023684(uint64_t a1)
{
  sub_1C9064D7C();
  ComparisonPredicate.Comparison.Template.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t ComparisonPredicate.Comparison.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  switch((*v0 >> 2) & 1 | (2 * (v1 & 7)))
  {
    case 1:
      OUTLINED_FUNCTION_20_33();
      v3 = 656424253;
      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_20_33();
      v3 = 2564158;
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_20_33();
      v3 = 656424254;
      goto LABEL_13;
    case 4:
      LOBYTE(v2) = v2 & 0xFB;
      OUTLINED_FUNCTION_305();
      v3 = 2564156;
LABEL_8:
      v22 = 0xE300000000000000;
      goto LABEL_30;
    case 5:
      OUTLINED_FUNCTION_20_33();
      v3 = 656424252;
      goto LABEL_13;
    case 6:
      OUTLINED_FUNCTION_20_33();
      v3 = OUTLINED_FUNCTION_70_7();
      v22 = 0xEA00000000002720;
      goto LABEL_30;
    case 7:
      LOBYTE(v2) = v2 & 0xFB;
      OUTLINED_FUNCTION_305();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v3 = OUTLINED_FUNCTION_62_15();
      v22 = v23 | 0xEE00272000000000;
      goto LABEL_30;
    case 8:
      LOBYTE(v2) = v2 & 0xFB;
      OUTLINED_FUNCTION_305();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v3 = OUTLINED_FUNCTION_58_14();
      goto LABEL_29;
    case 9:
      OUTLINED_FUNCTION_20_33();
      v3 = OUTLINED_FUNCTION_107_7();
      v22 = 0xEB00000000272048;
      goto LABEL_30;
    case 0xALL:
      LOBYTE(v2) = v2 & 0xFB;
      OUTLINED_FUNCTION_305();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v3 = OUTLINED_FUNCTION_44_24() & 0xFFFFFFFFFFFFLL | 0x4E20000000000000;
      v22 = v28 + 1284;
      goto LABEL_30;
    case 0xBLL:
      LOBYTE(v2) = v2 & 0xFB;
      OUTLINED_FUNCTION_305();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v3 = OUTLINED_FUNCTION_44_24() & 0xFFFFFFFFFFFFLL | 0x4C20000000000000;
      v4 = 542397249;
LABEL_29:
      v22 = v4 | 0xED00002700000000;
      goto LABEL_30;
    case 0xCLL:
      v5 = v1 & 0xF8;
      OUTLINED_FUNCTION_305();
      sub_1C906478C();
      OUTLINED_FUNCTION_64_13();
      v6 = MEMORY[0x1CCA81A90](0x4557544542205349, 0xEC00000027204E45);
      OUTLINED_FUNCTION_56_15(v6, v7, v8, v9, v10, v11, v12, v13, v34, v2 & 0xFB);
      OUTLINED_FUNCTION_97_8();
      sub_1C90648BC();
      v14 = MEMORY[0x1CCA81A90](0x2720444E412027, 0xE700000000000000);
      OUTLINED_FUNCTION_56_15(v14, v15, v16, v17, v18, v19, v20, v21, v35, v5);
      OUTLINED_FUNCTION_97_8();
      goto LABEL_31;
    case 0xDLL:
      v24 = v1 == 6 && v2 == 12;
      v25 = 0x56204F4E20534148;
      if (!v24)
      {
        v25 = 0x5941444F54205349;
      }

      if (v1 == 6 && v2 == 4)
      {
        return 0x554C415620534148;
      }

      else
      {
        return v25;
      }

    default:
      OUTLINED_FUNCTION_305();
      v3 = 656424225;
LABEL_13:
      v22 = 0xE400000000000000;
LABEL_30:
      v29 = MEMORY[0x1CCA81A90](v3, v22);
      OUTLINED_FUNCTION_56_15(v29, v30, &type metadata for TypedValue, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v31, v32, v33, v34, v2);
LABEL_31:
      sub_1C90648BC();
      MEMORY[0x1CCA81A90](39, 0xE100000000000000);
      return v36;
  }
}

uint64_t static ComparisonPredicate.Comparison.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  switch((*a1 >> 2) & 1 | (2 * (v2 & 7)))
  {
    case 1:
      OUTLINED_FUNCTION_37_22();
      if (v40 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_64;
    case 2:
      OUTLINED_FUNCTION_37_22();
      if (v37 != 2)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 3:
      OUTLINED_FUNCTION_37_22();
      if (v38 != 3)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 4:
      OUTLINED_FUNCTION_37_22();
      if (v8 != 4)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 5:
      OUTLINED_FUNCTION_37_22();
      if (v41 != 5)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 6:
      OUTLINED_FUNCTION_37_22();
      if (v50 != 6)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 7:
      OUTLINED_FUNCTION_37_22();
      if (v39 != 7)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 8:
      OUTLINED_FUNCTION_37_22();
      if (v52 == 8)
      {
        goto LABEL_46;
      }

      goto LABEL_64;
    case 9:
      OUTLINED_FUNCTION_37_22();
      if (v36 != 9)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 0xALL:
      OUTLINED_FUNCTION_37_22();
      if (v51 != 10)
      {
        goto LABEL_64;
      }

      goto LABEL_46;
    case 0xBLL:
      OUTLINED_FUNCTION_37_22();
      if (v7 != 11)
      {
        goto LABEL_64;
      }

LABEL_46:
      v96 = v5 & 0xFFFFFFFFFFFFFFFBLL;
      v97 = v3 & 0xFB;
      goto LABEL_47;
    case 0xCLL:
      OUTLINED_FUNCTION_37_22();
      if (v9 != 12)
      {
        goto LABEL_64;
      }

      v10 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06E80(v10, v11);
      v12 = OUTLINED_FUNCTION_100();
      sub_1C8D06E80(v12, v13);

      OUTLINED_FUNCTION_106(v14, v15, v16, v17, v18, v19, v20, v21, v5 & 0xFFFFFFFFFFFFFFFBLL, v3 & 0xFB);
      static TypedValue.== infix(_:_:)();
      if (v22)
      {
        OUTLINED_FUNCTION_106(v22, v23, v24, v25, v26, v27, v28, v29, v4 & 0xFFFFFFFFFFFFFFF8, v2 & 0xF8);
        static TypedValue.== infix(_:_:)();
        v31 = v30;
        v32 = OUTLINED_FUNCTION_95_0();
        sub_1C8D06F08(v32, v33);
        v34 = OUTLINED_FUNCTION_100();
        sub_1C8D06F08(v34, v35);

        return v31 & 1;
      }

      goto LABEL_65;
    case 0xDLL:
      if (v2 == 6 && v3 == 4)
      {
        OUTLINED_FUNCTION_37_22();
        if (v78 == 13 && v5 == 4 && v4 == 6)
        {
          v81 = OUTLINED_FUNCTION_95_0();
          sub_1C8D06F08(v81, v82);
          v49 = 4;
          goto LABEL_69;
        }
      }

      else
      {
        v43 = (v5 >> 2) & 1 | (2 * (v4 & 7));
        if (v2 != 6 || v3 != 12)
        {
          if (v43 != 13 || v5 != 20 || v4 != 6)
          {
            goto LABEL_64;
          }

          v94 = OUTLINED_FUNCTION_95_0();
          sub_1C8D06F08(v94, v95);
          v49 = 20;
LABEL_69:
          sub_1C8D06F08(v49, 6);
          v31 = 1;
          return v31 & 1;
        }

        if (v43 == 13 && v5 == 12 && v4 == 6)
        {
          v47 = OUTLINED_FUNCTION_95_0();
          sub_1C8D06F08(v47, v48);
          v49 = 12;
          goto LABEL_69;
        }
      }

LABEL_64:
      v85 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06E80(v85, v86);
      v87 = OUTLINED_FUNCTION_100();
      sub_1C8D06E80(v87, v88);
LABEL_65:
      v89 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06F08(v89, v90);
      v91 = OUTLINED_FUNCTION_100();
      sub_1C8D06F08(v91, v92);
      v31 = 0;
      return v31 & 1;
    default:
      OUTLINED_FUNCTION_37_22();
      if (v6)
      {
        goto LABEL_64;
      }

      v96 = v5;
      v97 = v3;
LABEL_47:
      v53 = OUTLINED_FUNCTION_100();
      sub_1C8D06E80(v53, v54);
      v55 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06E80(v55, v56);
      v57 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06E80(v57, v58);
      v59 = OUTLINED_FUNCTION_100();
      v61 = sub_1C8D06E80(v59, v60);
      OUTLINED_FUNCTION_106(v61, v62, v63, v64, v65, v66, v67, v68, v96, v97);
      static TypedValue.== infix(_:_:)();
      v31 = v69;
      v70 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06F08(v70, v71);
      v72 = OUTLINED_FUNCTION_100();
      sub_1C8D06F08(v72, v73);
      v74 = OUTLINED_FUNCTION_100();
      sub_1C8D06F08(v74, v75);
      v76 = OUTLINED_FUNCTION_95_0();
      sub_1C8D06F08(v76, v77);
      return v31 & 1;
  }
}

uint64_t sub_1C9023D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61757145746F6ELL && a2 == 0xEA00000000006F54;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F546C61757165 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6156736168 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61566F4E736168 && a2 == 0xEA00000000006575;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x80000001C90CCB50 == a2;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C90CCB70 == a2;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000;
                  if (v13 || (sub_1C9064C2C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x61746E6F43746F6ELL && a2 == 0xEB00000000736E69;
                    if (v14 || (sub_1C9064C2C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6957736E69676562 && a2 == 0xEA00000000006874;
                      if (v15 || (sub_1C9064C2C() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6874695773646E65 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1C9064C2C() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x78654E6568546E69 && a2 == 0xE900000000000074;
                          if (v17 || (sub_1C9064C2C() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x73614C6568546E69 && a2 == 0xE900000000000074;
                            if (v18 || (sub_1C9064C2C() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x7961646F547369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1C9064C2C() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x6565777465427369 && a2 == 0xE90000000000006ELL)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1C9064C2C();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1C90241D0(char a1)
{
  result = 0x6C61757145746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F546C61757165;
      break;
    case 2:
      result = 0x65756C6156736168;
      break;
    case 3:
      result = 0x6C61566F4E736168;
      break;
    case 4:
      result = 0x5472657461657267;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E6168547373656CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x736E6961746E6F63;
      break;
    case 9:
      result = 0x61746E6F43746F6ELL;
      break;
    case 10:
      result = 0x6957736E69676562;
      break;
    case 11:
      result = 0x6874695773646E65;
      break;
    case 12:
      result = 0x78654E6568546E69;
      break;
    case 13:
      result = 0x73614C6568546E69;
      break;
    case 14:
      result = 0x7961646F547369;
      break;
    case 15:
      result = 0x6565777465427369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C90243A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

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

uint64_t sub_1C9024464(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1C902447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90285B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90244B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90285B0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90244FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9023D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9024524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90283B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90283B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C902459C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028658(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90245D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028658(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902855C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902855C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C902468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90288A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90246C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90288A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90287A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90287A8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C902477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028754(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90247B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028754(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90247F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90287FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90287FC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C902486C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028850(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C90248A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028850(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90248E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90284B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90284B4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C902495C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028508(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028508(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C90249DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C90243A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9024A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902840C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C902840C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028460(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028460(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028700(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028700(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90286AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90286AC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028604(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9028604(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C9024C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90288F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C9024C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C90288F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

void ComparisonPredicate.Comparison.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  v229 = v21;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E378, &qword_1C90C0F98);
  OUTLINED_FUNCTION_11();
  v224 = v29;
  v225 = v28;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v223 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E380, &qword_1C90C0FA0);
  OUTLINED_FUNCTION_4_22(v32, &v221);
  v209[8] = v33;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E388, &qword_1C90C0FA8);
  OUTLINED_FUNCTION_11();
  v221 = v37;
  v222 = v36;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_97();
  v220 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E390, &qword_1C90C0FB0);
  OUTLINED_FUNCTION_11();
  v218 = v41;
  v219 = v40;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v217 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E398, &qword_1C90C0FB8);
  OUTLINED_FUNCTION_11();
  v215 = v45;
  v216 = v44;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v214 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3A0, &qword_1C90C0FC0);
  OUTLINED_FUNCTION_11();
  v212 = v49;
  v213 = v48;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_97();
  v211 = v51;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3A8, &qword_1C90C0FC8);
  OUTLINED_FUNCTION_11();
  v209[29] = v52;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3B0, &qword_1C90C0FD0);
  OUTLINED_FUNCTION_4_22(v55, &a16);
  v209[26] = v56;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3B8, &qword_1C90C0FD8);
  OUTLINED_FUNCTION_4_22(v59, &a13);
  v209[23] = v60;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3C0, &qword_1C90C0FE0);
  OUTLINED_FUNCTION_4_22(v63, &a10);
  v209[20] = v64;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3C8, &qword_1C90C0FE8);
  OUTLINED_FUNCTION_4_22(v67, &v230);
  v209[17] = v68;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3D0, &qword_1C90C0FF0);
  OUTLINED_FUNCTION_4_22(v71, &v227);
  v209[14] = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3D8, &qword_1C90C0FF8);
  OUTLINED_FUNCTION_4_22(v75, &v218);
  v209[5] = v76;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3E0, &qword_1C90C1000);
  OUTLINED_FUNCTION_4_22(v79, &v215);
  v209[2] = v80;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3E8, &qword_1C90C1008);
  OUTLINED_FUNCTION_4_22(v83, &v224);
  v209[11] = v84;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_72();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3F0, &qword_1C90C1010);
  OUTLINED_FUNCTION_11();
  v209[10] = v87;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E3F8, &qword_1C90C1018);
  OUTLINED_FUNCTION_11();
  v227 = v89;
  v228 = v90;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v91);
  v93 = v209 - v92;
  v94 = *v20;
  v95 = v20[1];
  v96 = OUTLINED_FUNCTION_217(v27, v27[3]);
  sub_1C90283B8(v96, v97, v98);
  v226 = v93;
  v99 = sub_1C9064E1C();
  switch((v94 >> 2) & 1 | (2 * (v95 & 7)))
  {
    case 1uLL:
      OUTLINED_FUNCTION_277_0();
      sub_1C90288A4(v154, v155, v156);
      v157 = v227;
      v158 = sub_1C9064ACC();
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v158, v159, v160);
      v161 = v209[12];
      sub_1C9064B8C();
      v162 = OUTLINED_FUNCTION_6_26();
      v163(v162, v161);
      v164 = OUTLINED_FUNCTION_54_10();
      v166 = v157;
      goto LABEL_27;
    case 2uLL:
      v114 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      OUTLINED_FUNCTION_98_9();
      sub_1C90287A8(v136, v137, v138);
      v139 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.GreaterThanCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v139, v140, v141);
      OUTLINED_FUNCTION_34_19(&a10);
      goto LABEL_25;
    case 3uLL:
      v114 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      OUTLINED_FUNCTION_96_7();
      sub_1C9028754(v142, v143, v144);
      v145 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.GreaterThanOrEqualToCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v145, v146, v147);
      OUTLINED_FUNCTION_34_19(&a10);
      goto LABEL_25;
    case 4uLL:
      v114 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      OUTLINED_FUNCTION_103_5();
      sub_1C9028700(v115, v116, v117);
      v118 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.LessThanCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v118, v119, v120);
      OUTLINED_FUNCTION_34_19(&a10);
      goto LABEL_25;
    case 5uLL:
      v114 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      OUTLINED_FUNCTION_89_3();
      sub_1C90286AC(v167, v168, v169);
      v170 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.LessThanOrEqualToCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v170, v171, v172);
      OUTLINED_FUNCTION_34_19(&a10);
      goto LABEL_25;
    case 6uLL:
      v114 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      OUTLINED_FUNCTION_85_7();
      sub_1C9028658(v178, v179, v180);
      v181 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.ContainsCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v181, v182, v183);
      OUTLINED_FUNCTION_34_19(&a10);
      goto LABEL_25;
    case 7uLL:
      OUTLINED_FUNCTION_92_9();
      sub_1C9028604(v148, v149, v150);
      v151 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.NotContainsCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v151, v152, v153);
      v114 = v210;
      OUTLINED_FUNCTION_35_25();
      goto LABEL_25;
    case 8uLL:
      OUTLINED_FUNCTION_83_9();
      sub_1C90285B0(v192, v193, v194);
      v195 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.BeginsWithCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v195, v196, v197);
      v114 = v213;
      OUTLINED_FUNCTION_35_25();
      goto LABEL_25;
    case 9uLL:
      OUTLINED_FUNCTION_101_8();
      sub_1C902855C(v130, v131, v132);
      v133 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.EndsWithCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v133, v134, v135);
      v114 = v216;
      OUTLINED_FUNCTION_35_25();
      goto LABEL_25;
    case 0xAuLL:
      OUTLINED_FUNCTION_84_8();
      sub_1C9028508(v186, v187, v188);
      v189 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.InTheNextCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v189, v190, v191);
      v114 = v219;
      OUTLINED_FUNCTION_35_25();
      goto LABEL_25;
    case 0xBuLL:
      OUTLINED_FUNCTION_104_8();
      sub_1C90284B4(v108, v109, v110);
      v111 = OUTLINED_FUNCTION_13_35(&type metadata for ComparisonPredicate.Comparison.InTheLastCodingKeys);
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      sub_1C8D381AC(v111, v112, v113);
      v114 = v222;
      OUTLINED_FUNCTION_35_25();
LABEL_25:
      v184 = OUTLINED_FUNCTION_54_10();
      v185(v184, v114);
      goto LABEL_26;
    case 0xCuLL:
      OUTLINED_FUNCTION_102_9();
      sub_1C902840C(v121, v122, v123);
      v124 = v223;
      v86 = v226;
      v22 = v227;
      v125 = sub_1C9064ACC();
      a10 = v94 & 0xFFFFFFFFFFFFFFFBLL;
      HIBYTE(v230) = 0;
      sub_1C8D381AC(v125, v126, v127);
      v128 = v225;
      v129 = v229;
      sub_1C9064B8C();
      if (!v129)
      {
        a10 = v95 & 0xFFFFFFFFFFFFFFF8;
        HIBYTE(v230) = 1;
        sub_1C9064B8C();
      }

      (*(v224 + 8))(v124, v128);
LABEL_26:
      v165 = *(v228 + 8);
      v164 = v86;
      v166 = v22;
LABEL_27:
      v165(v164, v166);
      break;
    case 0xDuLL:
      if (v95 == 6 && v94 == 4)
      {
        OUTLINED_FUNCTION_36_11();
        sub_1C9028850(v198, v199, v200);
        OUTLINED_FUNCTION_104_0();
        sub_1C9064ACC();
        v204 = OUTLINED_FUNCTION_6_26();
        v206 = &v215;
      }

      else if (v95 == 6 && v94 == 12)
      {
        OUTLINED_FUNCTION_38_0();
        sub_1C90287FC(v175, v176, v177);
        OUTLINED_FUNCTION_104_0();
        sub_1C9064ACC();
        v204 = OUTLINED_FUNCTION_6_26();
        v206 = &v218;
      }

      else
      {
        OUTLINED_FUNCTION_82_7();
        sub_1C9028460(v201, v202, v203);
        OUTLINED_FUNCTION_104_0();
        sub_1C9064ACC();
        v204 = OUTLINED_FUNCTION_6_26();
        v206 = &v221;
      }

      v205(v204, *(v206 - 32));
      v207 = OUTLINED_FUNCTION_95_0();
      v208(v207);
      break;
    default:
      LOBYTE(a10) = 0;
      sub_1C90288F8(v99, v100, v101);
      v103 = v226;
      v102 = v227;
      OUTLINED_FUNCTION_104_0();
      v104 = sub_1C9064ACC();
      a10 = v94;
      sub_1C8D381AC(v104, v105, v106);
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296();
      v107(v23, v86);
      (*(v228 + 8))(v103, v102);
      break;
  }

  OUTLINED_FUNCTION_198();
}

void ComparisonPredicate.Comparison.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch((*v0 >> 2) & 1 | (2 * (v1 & 7)))
  {
    case 1:
      v3 = 1;
      goto LABEL_25;
    case 2:
      v3 = 4;
      goto LABEL_25;
    case 3:
      v3 = 5;
      goto LABEL_25;
    case 4:
      v3 = 6;
      goto LABEL_25;
    case 5:
      v3 = 7;
      goto LABEL_25;
    case 6:
      v3 = 8;
      goto LABEL_25;
    case 7:
      v3 = 9;
      goto LABEL_25;
    case 8:
      v3 = 10;
      goto LABEL_25;
    case 9:
      v3 = 11;
      goto LABEL_25;
    case 0xALL:
      v3 = 12;
      goto LABEL_25;
    case 0xBLL:
      v3 = 13;
      goto LABEL_25;
    case 0xCLL:
      MEMORY[0x1CCA82810](15);
      OUTLINED_FUNCTION_297();
      TypedValue.hash(into:)();
      goto LABEL_26;
    case 0xDLL:
      if (v1 == 6 && v2 == 4)
      {
        v6 = 2;
      }

      else if (v1 == 6 && v2 == 12)
      {
        v6 = 3;
      }

      else
      {
        v6 = 14;
      }

      MEMORY[0x1CCA82810](v6);
      return;
    default:
      v3 = 0;
LABEL_25:
      MEMORY[0x1CCA82810](v3);
LABEL_26:
      OUTLINED_FUNCTION_297();
      TypedValue.hash(into:)();
      return;
  }
}

uint64_t ComparisonPredicate.Comparison.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  ComparisonPredicate.Comparison.hash(into:)();
  return sub_1C9064DBC();
}

void ComparisonPredicate.Comparison.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v273 = v20;
  v26 = v25;
  v269[0] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E488, &qword_1C90C1020);
  OUTLINED_FUNCTION_11();
  v261 = v29;
  v262 = v28;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_97();
  v268 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E490, &qword_1C90C1028);
  OUTLINED_FUNCTION_4_22(v32, &a16);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  v266[1] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E498, &qword_1C90C1030);
  OUTLINED_FUNCTION_4_22(v35, &a18);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v267 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4A0, &qword_1C90C1038);
  OUTLINED_FUNCTION_4_22(v38, &a14);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v266[0] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4A8, &qword_1C90C1040);
  OUTLINED_FUNCTION_4_22(v41, &a12);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v265[1] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4B0, &qword_1C90C1048);
  OUTLINED_FUNCTION_4_22(v44, &a10);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_97();
  v265[0] = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4B8, &qword_1C90C1050);
  OUTLINED_FUNCTION_4_22(v47, &v276);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_97();
  v271 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4C0, &qword_1C90C1058);
  OUTLINED_FUNCTION_4_22(v50, &v273);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v263 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4C8, &qword_1C90C1060);
  OUTLINED_FUNCTION_4_22(v53, &v272);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v270 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4D0, &qword_1C90C1068);
  OUTLINED_FUNCTION_4_22(v56, &v270);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_97();
  v264[1] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4D8, &qword_1C90C1070);
  OUTLINED_FUNCTION_4_22(v59, v269);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_97();
  v264[0] = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4E0, &qword_1C90C1078);
  OUTLINED_FUNCTION_4_22(v62, &v267);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4E8, &qword_1C90C1080);
  OUTLINED_FUNCTION_4_22(v64, v266);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_97();
  v269[1] = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4F0, &qword_1C90C1088);
  OUTLINED_FUNCTION_4_22(v67, v264);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E4F8, &qword_1C90C1090);
  OUTLINED_FUNCTION_4_22(v69, v265);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E500, &qword_1C90C1098);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_72();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC31E508, &qword_1C90C10A0);
  OUTLINED_FUNCTION_11();
  v73 = v72;
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_106_6();
  v272 = v26;
  v75 = OUTLINED_FUNCTION_217(v26, v22);
  sub_1C90283B8(v75, v76, v77);
  v78 = v273;
  sub_1C9064DEC();
  if (v78)
  {
    goto LABEL_8;
  }

  v79 = v271;
  v273 = v73;
  OUTLINED_FUNCTION_100_9();
  v80 = sub_1C9064A9C();
  v81 = sub_1C8CB8914(v80, 0);
  if (v82 == v83 >> 1)
  {
LABEL_7:
    v97 = sub_1C90647DC();
    swift_allocError();
    v99 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0);
    *v99 = &type metadata for ComparisonPredicate.Comparison;
    OUTLINED_FUNCTION_100_9();
    sub_1C906499C();
    OUTLINED_FUNCTION_43_4();
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x1E69E6AF8], v97);
    swift_willThrow();
    swift_unknownObjectRelease();
    v100 = OUTLINED_FUNCTION_11_40();
    v101(v100);
LABEL_8:
    v102 = v272;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v102);
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v82 < (v83 >> 1))
  {
    v84 = OUTLINED_FUNCTION_90_5(v81, v83 >> 1, v82, v83, v82);
    sub_1C8CB891C(v84, v85, v86, v87, v88, v89);
    v90 = OUTLINED_FUNCTION_115_7();
    if (!(v26 >> 1))
    {
      switch(v260)
      {
        case 1:
          OUTLINED_FUNCTION_277_0();
          sub_1C90288A4(v166, v167, v168);
          v169 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.EqualToCodingKeys, &a10);
          sub_1C8D39E40(v169, v170, v171);
          OUTLINED_FUNCTION_81_10(&type metadata for TypedValue, v172);
          swift_unknownObjectRelease();
          v234 = OUTLINED_FUNCTION_45();
          v235(v234, v79);
          v236 = OUTLINED_FUNCTION_11_40();
          v237(v236);
          v232 = 0;
          v233 = a10 | 4;
          break;
        case 2:
          OUTLINED_FUNCTION_36_11();
          sub_1C9028850(v138, v139, v140);
          OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.HasValueCodingKeys, &a10);
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_6_26();
          v142(v141);
          v143 = OUTLINED_FUNCTION_11_40();
          v144(v143);
          v232 = 6;
          v233 = 4;
          break;
        case 3:
          OUTLINED_FUNCTION_38_0();
          sub_1C90287FC(v152, v153, v154);
          OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.HasNoValueCodingKeys, &a10);
          swift_unknownObjectRelease();
          v155 = OUTLINED_FUNCTION_45();
          v156(v155);
          v157 = OUTLINED_FUNCTION_11_40();
          v158(v157);
          v232 = 6;
          v233 = 12;
          break;
        case 4:
          OUTLINED_FUNCTION_98_9();
          sub_1C90287A8(v117, v118, v119);
          v120 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.GreaterThanCodingKeys, &a10);
          sub_1C8D39E40(v120, v121, v122);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v123);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v212 = OUTLINED_FUNCTION_10_34();
          v213(v212);
          v214 = OUTLINED_FUNCTION_86_4();
          v215(v214);
          v233 = a10;
          goto LABEL_25;
        case 5:
          OUTLINED_FUNCTION_96_7();
          sub_1C9028754(v173, v174, v175);
          v233 = v21;
          v176 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.GreaterThanOrEqualToCodingKeys, &a10);
          sub_1C8D39E40(v176, v177, v178);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v179);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v238 = OUTLINED_FUNCTION_10_34();
          v239(v238);
          v240 = OUTLINED_FUNCTION_86_4();
          v241(v240);
          OUTLINED_FUNCTION_71_0();
LABEL_25:
          v232 = 1;
          break;
        case 6:
          OUTLINED_FUNCTION_103_5();
          sub_1C9028700(v187, v188, v189);
          v190 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.LessThanCodingKeys, &a10);
          sub_1C8D39E40(v190, v191, v192);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v193);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v246 = OUTLINED_FUNCTION_10_34();
          v247(v246);
          v248 = OUTLINED_FUNCTION_86_4();
          v249(v248);
          v233 = a10;
          goto LABEL_27;
        case 7:
          OUTLINED_FUNCTION_89_3();
          sub_1C90286AC(v159, v160, v161);
          v233 = v21;
          v162 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.LessThanOrEqualToCodingKeys, &a10);
          sub_1C8D39E40(v162, v163, v164);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v165);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v224 = OUTLINED_FUNCTION_10_34();
          v225(v224);
          v226 = OUTLINED_FUNCTION_86_4();
          v227(v226);
          OUTLINED_FUNCTION_71_0();
LABEL_27:
          v232 = 2;
          break;
        case 8:
          OUTLINED_FUNCTION_85_7();
          sub_1C9028658(v201, v202, v203);
          v204 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.ContainsCodingKeys, &a10);
          sub_1C8D39E40(v204, v205, v206);
          OUTLINED_FUNCTION_77_10(&type metadata for TypedValue, v207);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296();
          v254(v263, 0);
          v255 = OUTLINED_FUNCTION_86_4();
          v256(v255);
          v233 = a10;
          goto LABEL_29;
        case 9:
          OUTLINED_FUNCTION_92_9();
          sub_1C9028604(v131, v132, v133);
          v233 = v21;
          v134 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.NotContainsCodingKeys, &a10);
          sub_1C8D39E40(v134, v135, v136);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v137);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v220 = OUTLINED_FUNCTION_10_34();
          v221(v220);
          v222 = OUTLINED_FUNCTION_86_4();
          v223(v222);
          OUTLINED_FUNCTION_71_0();
LABEL_29:
          v232 = 3;
          break;
        case 10:
          OUTLINED_FUNCTION_83_9();
          sub_1C90285B0(v194, v195, v196);
          v197 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.BeginsWithCodingKeys, &a10);
          sub_1C8D39E40(v197, v198, v199);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v200);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v250 = OUTLINED_FUNCTION_10_34();
          v251(v250);
          v252 = OUTLINED_FUNCTION_86_4();
          v253(v252);
          v233 = a10;
          goto LABEL_28;
        case 11:
          OUTLINED_FUNCTION_101_8();
          sub_1C902855C(v110, v111, v112);
          v233 = v21;
          v113 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.EndsWithCodingKeys, &a10);
          sub_1C8D39E40(v113, v114, v115);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v116);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v208 = OUTLINED_FUNCTION_10_34();
          v209(v208);
          v210 = OUTLINED_FUNCTION_86_4();
          v211(v210);
          OUTLINED_FUNCTION_71_0();
LABEL_28:
          v232 = 4;
          break;
        case 12:
          OUTLINED_FUNCTION_84_8();
          sub_1C9028508(v124, v125, v126);
          v127 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.InTheNextCodingKeys, &a10);
          sub_1C8D39E40(v127, v128, v129);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v130);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v216 = OUTLINED_FUNCTION_10_34();
          v217(v216);
          v218 = OUTLINED_FUNCTION_86_4();
          v219(v218);
          v233 = a10;
          goto LABEL_26;
        case 13:
          OUTLINED_FUNCTION_104_8();
          sub_1C90284B4(v180, v181, v182);
          v233 = v21;
          v183 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.InTheLastCodingKeys, &a10);
          sub_1C8D39E40(v183, v184, v185);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v186);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v242 = OUTLINED_FUNCTION_10_34();
          v243(v242);
          v244 = OUTLINED_FUNCTION_86_4();
          v245(v244);
          OUTLINED_FUNCTION_71_0();
LABEL_26:
          v232 = 5;
          break;
        case 14:
          OUTLINED_FUNCTION_82_7();
          sub_1C9028460(v103, v104, v105);
          OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.IsTodayCodingKeys, &a10);
          swift_unknownObjectRelease();
          v106 = OUTLINED_FUNCTION_6_26();
          v107(v106);
          v108 = OUTLINED_FUNCTION_11_40();
          v109(v108);
          v232 = 6;
          v233 = 20;
          break;
        case 15:
          OUTLINED_FUNCTION_102_9();
          sub_1C902840C(v145, v146, v147);
          v148 = v268;
          v149 = OUTLINED_FUNCTION_32_17(&type metadata for ComparisonPredicate.Comparison.IsBetweenCodingKeys, &a10);
          LOBYTE(v275) = 0;
          sub_1C8D39E40(v149, v150, v151);
          OUTLINED_FUNCTION_80_9(&type metadata for TypedValue, &v275);
          v233 = a10;
          v274 = 1;
          OUTLINED_FUNCTION_80_9(&type metadata for TypedValue, &v274);
          swift_unknownObjectRelease();
          (*(v261 + 8))(v148, v262);
          v258 = OUTLINED_FUNCTION_11_40();
          v259(v258);
          v232 = v275 | 6;
          break;
        default:
          LOBYTE(a10) = 0;
          sub_1C90288F8(v90, v91, v92);
          v93 = OUTLINED_FUNCTION_15_1(&type metadata for ComparisonPredicate.Comparison.NotEqualToCodingKeys, &a10);
          sub_1C8D39E40(v93, v94, v95);
          OUTLINED_FUNCTION_7_50(&type metadata for TypedValue, v96);
          OUTLINED_FUNCTION_21_29();
          swift_unknownObjectRelease();
          v228 = OUTLINED_FUNCTION_10_34();
          v229(v228);
          v230 = OUTLINED_FUNCTION_86_4();
          v231(v230);
          v232 = 0;
          v233 = a10;
          break;
      }

      v102 = v272;
      v257 = v269[0];
      *v269[0] = v233;
      *(v257 + 8) = v232;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C9026FE0(uint64_t a1)
{
  sub_1C9064D7C();
  ComparisonPredicate.Comparison.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t _s7ToolKit19ComparisonPredicateV8TemplateV8propertyAA24EntityPropertyDefinitionVvg_0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t ComparisonPredicate.comparison.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C8D06E80(v2, v3);
}

uint64_t sub_1C90270E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1C906204C();
  OUTLINED_FUNCTION_13_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C9027178@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + *(a1(0) + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  *a2 = *v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  v10 = *(v5 + 32);
  *(a2 + 32) = v10;

  return sub_1C8D06F98(v6, v7, v8, v9, v10, v4);
}

uint64_t ComparisonPredicate.debugDescription.getter()
{
  v1 = type metadata accessor for ComparisonPredicate(0);
  OUTLINED_FUNCTION_63_16(v1);
  OUTLINED_FUNCTION_97_8();
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](46, 0xE100000000000000);
  MEMORY[0x1CCA81A90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1CCA81A90](32, 0xE100000000000000);
  OUTLINED_FUNCTION_97_8();
  sub_1C90648BC();
  return 0;
}

uint64_t sub_1C9027294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79747265706F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x80000001C90D09B0 == a2)
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