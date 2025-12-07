unint64_t sub_1DD4555A8()
{
  result = qword_1EE162670;
  if (!qword_1EE162670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162670);
  }

  return result;
}

unint64_t sub_1DD4555FC()
{
  result = qword_1EE161B60;
  if (!qword_1EE161B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161B60);
  }

  return result;
}

unint64_t sub_1DD455650()
{
  result = qword_1EE161748;
  if (!qword_1EE161748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161748);
  }

  return result;
}

uint64_t sub_1DD4556A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD455708(uint64_t a1)
{
  v2 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD455764()
{
  result = qword_1EE165560;
  if (!qword_1EE165560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165560);
  }

  return result;
}

uint64_t sub_1DD4557B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECCDFD20, &qword_1DD648290);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD455824()
{
  result = qword_1EE165170;
  if (!qword_1EE165170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165170);
  }

  return result;
}

unint64_t sub_1DD455878()
{
  result = qword_1EE164088;
  if (!qword_1EE164088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164088);
  }

  return result;
}

unint64_t sub_1DD4558CC()
{
  result = qword_1EE165558;
  if (!qword_1EE165558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165558);
  }

  return result;
}

unint64_t sub_1DD455920()
{
  result = qword_1ECCDCD60;
  if (!qword_1ECCDCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD60);
  }

  return result;
}

unint64_t sub_1DD455974()
{
  result = qword_1EE164080;
  if (!qword_1EE164080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164080);
  }

  return result;
}

uint64_t sub_1DD4559C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PrivatizedContactResolverConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD455B10()
{
  result = qword_1ECCDCD70;
  if (!qword_1ECCDCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD70);
  }

  return result;
}

unint64_t sub_1DD455B68()
{
  result = qword_1EE163CD0;
  if (!qword_1EE163CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CD0);
  }

  return result;
}

unint64_t sub_1DD455BC0()
{
  result = qword_1EE163CD8;
  if (!qword_1EE163CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163CD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_15(uint64_t a1)
{
  *(v3 - 112) = v1;
  sub_1DD4516B4(a1, v1);
  return v2;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v6 = (v0 + *(v3 + 64));
  v7 = *v6;
  v8 = v6[1];
  sub_1DD4516B4(v2, v1);
  sub_1DD39E698(v7, v8);
  *v6 = v5;
  v6[1] = v4;
}

uint64_t OUTLINED_FUNCTION_24_8()
{
}

void OUTLINED_FUNCTION_26_11()
{

  sub_1DD4511A4();
}

uint64_t OUTLINED_FUNCTION_29_6()
{
}

uint64_t OUTLINED_FUNCTION_30_8()
{
  result = v1;
  *(v2 - 128) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  result = v0;
  *(v2 - 128) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_8()
{
  v4 = *(v2 - 120);
  *(v0 + 40) = v1;
  *(v0 + 48) = v4;

  return type metadata accessor for ContactResolverConfig(0);
}

void OUTLINED_FUNCTION_59_3()
{

  JUMPOUT(0x1E12AF450);
}

uint64_t OUTLINED_FUNCTION_60_4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *a1;

  return sub_1DD3AF160(v4, v3);
}

uint64_t OUTLINED_FUNCTION_61_5()
{
  *v0 = v2;
  v0[1] = v1;
}

void OUTLINED_FUNCTION_62_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_63_1()
{
  *v0 = v2;
  v0[1] = v1;
}

uint64_t OUTLINED_FUNCTION_64_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DD640C68();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return sub_1DD41B6C8(v1, v0);
}

uint64_t OUTLINED_FUNCTION_66_2()
{
}

uint64_t OUTLINED_FUNCTION_67_1()
{
}

void sub_1DD456000(unint64_t *a1, uint64_t a2, const char *a3, int a4)
{
  v5 = v4;
  LODWORD(v282) = a4;
  v281 = a3;
  v275 = a2;
  v7 = type metadata accessor for ContactResolver.SignalSet(0);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v289 = v9;
  v10 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v287 = v12;
  v13 = OUTLINED_FUNCTION_6_2();
  type metadata accessor for ContactMatchRuntimeData(v13);
  OUTLINED_FUNCTION_0();
  v285 = v15;
  v286 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for StitchedContactResolverRecommendation(0);
  OUTLINED_FUNCTION_0();
  v272 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v264 = v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v280 = &v246 - v22;
  v23 = OUTLINED_FUNCTION_6_2();
  v269 = type metadata accessor for StitchedContactResolverRequest(v23);
  OUTLINED_FUNCTION_0();
  v271 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v276 = v26;
  v27 = OUTLINED_FUNCTION_6_2();
  v28 = type metadata accessor for StitchedContactData(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v268 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD78, &qword_1DD64B990);
  v32 = OUTLINED_FUNCTION_3(v31);
  MEMORY[0x1EEE9AC00](v32);
  v290 = &v246 - v33;
  v34 = OUTLINED_FUNCTION_6_2();
  v270 = type metadata accessor for ContactResolverRunTimeData(v34);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v262 = v36;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v37);
  v267 = &v246 - v38;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v39);
  v284 = &v246 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD80, &qword_1DD64B998);
  v42 = OUTLINED_FUNCTION_3(v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v246 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v246 - v46;
  v278 = type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  v279 = v49;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v50);
  v283 = &v246 - v51;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v246 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v291 = &v246 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v58 = OUTLINED_FUNCTION_3(v57);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  v274 = v59;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v246 - v61;
  v263 = v28;
  v63 = *(v28 + 28);
  v277 = a1;
  v273 = v63;
  sub_1DD4572EC(a1 + v63, &v246 - v61);
  v64 = type metadata accessor for StitchableInteraction(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v64);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v62, &qword_1ECCDC1B0, &unk_1DD6454F0);
    v260 = 0;
    goto LABEL_7;
  }

  v66 = *&v62[*(v64 + 28)];
  sub_1DD4577D4(v62, type metadata accessor for StitchableInteraction);
  sub_1DD55D704(v66);
  if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_86;
  }

  if (v67 <= -9.22337204e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v67 >= 9.22337204e18)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v260 = v67;
LABEL_7:
  LODWORD(v293) = EnumTagSinglePayload;
  v68 = v277[4];
  sub_1DD558CD0(v68, v47);
  v69 = v269;
  v70 = __swift_getEnumTagSinglePayload(v47, 1, v269);
  v261 = v17;
  v252 = v68;
  if (v70 == 1)
  {
    sub_1DD390754(v47, &qword_1ECCDCD80, &qword_1DD64B998);
    v71 = v69;
    v72 = v68;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_23();
  sub_1DD457774(v47, v54, v73);
  OUTLINED_FUNCTION_1_32();
  sub_1DD4577D4(v47, v74);
  v75 = v54;
  v76 = v291;
  sub_1DD457714(v75, v291, type metadata accessor for PrivatizedContactResolverConfig);
  sub_1DD558CD0(v68, v44);
  v71 = v69;
  v72 = v68;
  if (__swift_getEnumTagSinglePayload(v44, 1, v69) == 1)
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v76, v77);
    v78 = &qword_1ECCDCD80;
    v79 = &qword_1DD64B998;
LABEL_13:
    sub_1DD390754(v44, v78, v79);
    goto LABEL_14;
  }

  v80 = *&v44[*(v69 + 24)];

  OUTLINED_FUNCTION_1_32();
  sub_1DD4577D4(v44, v81);
  v44 = v290;
  sub_1DD558DAC(v80, v290);

  if (__swift_getEnumTagSinglePayload(v44, 1, v292) == 1)
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v76, v82);
    v78 = &qword_1ECCDCD78;
    v79 = &qword_1DD64B990;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_9_14();
  v193 = v267;
  sub_1DD457774(v44, v267, v194);
  OUTLINED_FUNCTION_2_22();
  sub_1DD4577D4(v44, v195);
  v196 = v193;
  v197 = v284;
  sub_1DD457714(v196, v284, type metadata accessor for ContactResolverRunTimeData);
  v198 = v268;
  sub_1DD457774(v277, v268, type metadata accessor for StitchedContactData);
  v199 = v281;

  v200 = sub_1DD46953C(v198, v275, v199, v282);
  if (v201)
  {
    v204 = v200;
    v205 = v201;
    v247 = v203;
    v248 = v202;
    OUTLINED_FUNCTION_3_23();
    v206 = v283;
    sub_1DD457774(v76, v283, v207);
    v208 = *(v270 + 64);
    v209 = (v197 + *(v270 + 60));
    v210 = *v209;
    v281 = v209[1];
    v254 = v209[2];
    v255 = v210;
    v211 = v209[4];
    v253 = v209[3];
    v251 = v211;
    v212 = v209[5];
    LODWORD(v267) = *(v197 + 264);
    v213 = *(v197 + 272);
    v290 = *(v197 + 280);
    LODWORD(v268) = *(v197 + v208);
    v214 = *(v206 + 48);
    v265 = *(v206 + 40);
    v266 = v213;
    v282 = v214;
    v215 = v278;
    v216 = sub_1DD63D118();
    v217 = *(v206 + v215[12]);
    v275 = v205;
    v249 = v204;
    v258 = v218;
    v259 = v216;
    switch(v217)
    {
      case 1:
        v257 = 0xE500000000000000;
        v219 = 0x656E6F6870;
        break;
      case 4:
        v257 = 0xE800000000000000;
        OUTLINED_FUNCTION_14_18();
        break;
      case 5:
        v257 = 0xE300000000000000;
        v219 = 7105633;
        break;
      default:
        v257 = 0xE700000000000000;
        v219 = 0x6E776F6E6B6E75;
        break;
    }

    v256 = v219;
    v250 = v212;
    v292 = v5;
    v223 = *(v206 + v278[10]);
    v224 = *(v223 + 16);
    if (v224)
    {

      v225 = v223 + 40;
      v226 = -1;
      do
      {
        v227 = v226 - v224 != -1;
        if (v226 - v224 == -1)
        {
          break;
        }

        if (++v226 >= *(v223 + 16))
        {
          goto LABEL_85;
        }

        v228 = v225 + 16;

        v229 = OUTLINED_FUNCTION_16_15(0x6C7070612E6D6F63);

        v225 = v228;
      }

      while ((v229 & 1) != 0);
    }

    else
    {

      v227 = 1;
    }

    v230 = v278[14];
    v231 = v283;
    v232 = *(v283 + v278[13]);
    v233 = *(v283 + v230);
    v234 = *(v283 + v230 + 8);
    if (v281 == 1)
    {
      v235 = 0;
      v236 = 0;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      v240 = 0;
      v71 = v269;
      v72 = v252;
      v241 = v291;
    }

    else
    {
      v240 = v250;

      v236 = v281;
      v71 = v269;
      v239 = v251;
      v72 = v252;
      v241 = v291;
      v237 = v254;
      v235 = v255;
    }

    v321[0] = v259;
    v321[1] = v258;
    v321[2] = v256;
    v321[3] = v257;
    v321[4] = v265;
    v321[5] = v282;
    v322 = v227;
    v323 = v232;
    v324 = v267;
    v325 = v266;
    v326 = v290;
    v327 = v233;
    v328 = v234;
    v329 = v235;
    v330 = v236;
    v331 = v237;
    v332 = v238;
    v333 = v239;
    v334 = v240;
    v335 = v268;

    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v231, v242);
    v243 = v292;
    sub_1DD5EA8F4();
    v5 = v243;
    if (v243)
    {
      OUTLINED_FUNCTION_0_41();
      sub_1DD4577D4(v241, v244);
      sub_1DD45735C(v321);

      OUTLINED_FUNCTION_5_25();
      v192 = v284;
LABEL_55:
      sub_1DD4577D4(v192, v191);
      return;
    }

    sub_1DD45735C(v321);
    sub_1DD4573B0(v249, v275, v248, v247 & 0x101010101010101);
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v241, v245);

    OUTLINED_FUNCTION_5_25();
    v222 = v284;
  }

  else
  {
    OUTLINED_FUNCTION_0_41();
    sub_1DD4577D4(v76, v220);
    OUTLINED_FUNCTION_5_25();
    v222 = v197;
  }

  sub_1DD4577D4(v222, v221);
LABEL_14:
  v253 = *(v72 + 16);
  if (v253)
  {
    v83 = 0;
    LODWORD(v259) = v293 == 1;
    v84 = v72 + ((*(v271 + 80) + 32) & ~*(v271 + 80));
    v281 = "userInterfaceIdiom";
    v248 = v84;
    while (1)
    {
      if (v83 >= *(v72 + 16))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v85 = v276;
      sub_1DD457774(v84 + *(v271 + 72) * v83, v276, type metadata accessor for StitchedContactResolverRequest);
      v86 = *(v85 + *(v71 + 24));
      v87 = *(v86 + 16);
      if (v87)
      {
        break;
      }

LABEL_53:
      ++v83;
      OUTLINED_FUNCTION_1_32();
      sub_1DD4577D4(v276, v189);
      v84 = v248;
      if (v83 == v253)
      {
        return;
      }
    }

    v88 = 0;
    v89 = v86 + ((*(v272 + 80) + 32) & ~*(v272 + 80));
    v90 = *(v86 + 16);
    v91 = v280;
    v247 = v83;
    v250 = v86;
    v251 = v87;
    v249 = v89;
    while (2)
    {
      if (v88 >= v90)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v275 = v88;
      OUTLINED_FUNCTION_4_21();
      sub_1DD457774(v92, v91, v93);
      OUTLINED_FUNCTION_3_23();
      v94 = v279;
      sub_1DD457774(v276, v279, v95);
      v96 = *(v270 + 64);
      v97 = (v91 + *(v270 + 60));
      v98 = *v97;
      v99 = v97[1];
      v100 = v97[3];
      v257 = v97[2];
      v258 = v98;
      v101 = v97[4];
      v254 = v97[5];
      v255 = v101;
      LODWORD(v290) = *(v91 + 264);
      v102 = *(v91 + 280);
      v284 = *(v91 + 272);
      LODWORD(v291) = *(v91 + v96);
      v103 = *(v94 + 48);
      v282 = *(v94 + 40);
      v293 = v103;
      v104 = v278;
      v105 = sub_1DD63D118();
      v106 = *(v94 + v104[12]);
      v292 = v5;
      v267 = v107;
      v268 = v105;
      if (v106 == 1)
      {
        v112 = 0xE500000000000000;
        v111 = 0x656E6F6870;
      }

      else
      {
        if (v106 != 4)
        {
          v108 = v106 == 5;
          if (v106 == 5)
          {
            v109 = 7105633;
          }

          else
          {
            v109 = 0x6E776F6E6B6E75;
          }

          v110 = 0xE300000000000000;
          if (!v108)
          {
            v110 = 0xE700000000000000;
          }

          v265 = v109;
          v266 = v110;
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_14_18();
      }

      v265 = v111;
      v266 = v112;
LABEL_31:
      v256 = v100;
      v113 = *(v279 + v278[10]);
      v114 = *(v113 + 16);
      v283 = v102;
      if (v114)
      {

        v115 = v113 + 40;
        v116 = -1;
        do
        {
          v117 = v116 - v114 != -1;
          if (v116 - v114 == -1)
          {
            break;
          }

          if (++v116 >= *(v113 + 16))
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v118 = v115 + 16;

          v119 = OUTLINED_FUNCTION_16_15(0x6C7070612E6D6F63);

          v115 = v118;
        }

        while ((v119 & 1) != 0);
      }

      else
      {

        v117 = 1;
      }

      v120 = *(v279 + v278[13]);
      v121 = (v279 + v278[14]);
      v122 = *v121;
      v123 = v121[1];
      if (v99 == 1)
      {
        v124 = 0;
        v99 = 0;
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = v292;
        v130 = v291;
      }

      else
      {
        v128 = v254;

        v129 = v292;
        v130 = v291;
        v125 = v257;
        v124 = v258;
        v127 = v255;
      }

      v306[0] = v268;
      v306[1] = v267;
      v306[2] = v265;
      v306[3] = v266;
      v306[4] = v282;
      v306[5] = v293;
      v307 = v117;
      v308 = v120;
      v309 = v290;
      v310 = v284;
      v311 = v283;
      v312 = v122;
      v313 = v123;
      v314 = v124;
      v315 = v99;
      v316 = v125;
      v317 = v126;
      v318 = v127;
      v319 = v128;
      v320 = v130;

      OUTLINED_FUNCTION_0_41();
      sub_1DD4577D4(v279, v131);
      v132 = sub_1DD5EA8F4();
      v5 = v129;
      if (v129)
      {
        sub_1DD45735C(v306);
        OUTLINED_FUNCTION_1_32();
        sub_1DD4577D4(v276, v190);
        OUTLINED_FUNCTION_2_22();
        v192 = v280;
        goto LABEL_55;
      }

      v133 = v132;
      sub_1DD45735C(v306);
      OUTLINED_FUNCTION_9_14();
      v134 = v262;
      sub_1DD457774(v280, v262, v135);
      v136 = v277;
      v137 = v274;
      sub_1DD4572EC(v277 + v273, v274);
      v138 = *(v136 + v263[10]);
      v139 = *(v136 + v263[12]);
      v140 = *(v136 + v263[13]);
      v141 = *(v136 + v263[11]);

      v142 = v134;
      v143 = v139;
      sub_1DD463F6C(v142, v137, v138, v139, v140, v141, &v294);
      if ((*(&v294 + 1) & 0xFF0000) != 0x20000)
      {
        v304 = v294;
        memcpy(v305, v295, sizeof(v305));
        sub_1DD457468();
      }

      v144 = v261;
      v145 = v264;
      v146 = v133;
      OUTLINED_FUNCTION_4_21();
      v147 = v280;
      sub_1DD457774(v280, v145, v148);
      sub_1DD46A01C(v145, v260, v259, v143, &v296);
      sub_1DD457520();
      v149 = v277;
      v150 = *v277;
      v151 = v277[1];
      OUTLINED_FUNCTION_4_21();
      sub_1DD457774(v147, v145, v152);
      v153 = v274;
      sub_1DD4572EC(v149 + v273, v274);

      sub_1DD45B3EC(v150, v151, v145, v153, v297);
      if ((v299 & 0xFF00) != 0x200)
      {
        v300 = v297[0];
        v301 = v297[1];
        v302 = v298;
        v303 = v299;
        sub_1DD4575D8();
      }

      ++v275;

      v154 = *(v280 + 296);

      v268 = sub_1DD5941F0(3, v154);
      v283 = v155;
      v284 = v146;
      v157 = v156;
      v159 = v158 >> 1;
      v282 = v158 >> 1;
      while (v159 != v157)
      {
        if (v157 >= v159)
        {
          __break(1u);
          goto LABEL_82;
        }

        v160 = *(v285 + 72);
        v290 = v157;
        sub_1DD457774(v283 + v160 * v157, v144, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD40FF0C();
        v292 = v162;
        v293 = v161;
        v291 = v163;
        v164 = v286;
        v165 = v289;
        sub_1DD457774(v144 + v286[5], v289, type metadata accessor for ContactResolver.SignalSet);
        v166 = v287;
        v167 = matched;
        sub_1DD55DD00(v165, v287 + *(matched + 20));
        v168 = v144 + v164[6];
        v169 = *(v168 + 8);
        v170 = *(v168 + 16);
        LOBYTE(v294) = *v168;
        *(&v294 + 1) = v169;
        v295[0] = v170;

        sub_1DD55EDF0(&v294);
        v172 = v171;
        v174 = v173;
        v176 = v175;
        v177 = *(v144 + v164[7]);
        sub_1DD55D704(*(v144 + v164[8]));
        v178 = *(v144 + v164[9]);
        v179 = v292;
        *v166 = v293;
        v166[1] = v179;
        v166[2] = v291;
        v180 = v166 + v167[6];
        *v180 = v172 & 1;
        *(v180 + 1) = v174;
        *(v180 + 2) = v176;
        *(v166 + v167[7]) = v177;
        *(v166 + v167[8]) = v181;
        *(v166 + v167[9]) = v178;

        v183 = sub_1DD522770(v182);
        sub_1DD4577D4(v166, type metadata accessor for PrivatizedContactMatchRuntimeData);
        v5 = 0;
        v184 = sub_1DD45B08C(v183);

        v157 = (v290 + 1);

        sub_1DD457690(v185, v184);
        v186 = sub_1DD63FDA8();
        sub_1DD395950();
        v187 = sub_1DD63FC48();

        AnalyticsSendEvent();

        OUTLINED_FUNCTION_10_20();
        v159 = v282;
      }

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_22();
      sub_1DD4577D4(v280, v188);
      v88 = v275;
      if (v275 != v251)
      {
        v90 = *(v250 + 16);
        v91 = v280;
        continue;
      }

      break;
    }

    v71 = v269;
    v72 = v252;
    v83 = v247;
    goto LABEL_53;
  }
}

uint64_t sub_1DD4572EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DD4573B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD5EAC0C(a1, a2, a3, a4 & 0x101010101010101);
  if (!v4)
  {
    v6 = v5;

    sub_1DD457690(v7, v6);
    v8 = sub_1DD63FDA8();
    sub_1DD395950();
    v9 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD457468()
{
  v1 = sub_1DD5EAF24();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD457520()
{
  v1 = sub_1DD5EB0C0();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

void sub_1DD4575D8()
{
  v1 = sub_1DD5EB25C();
  if (!v0)
  {
    v2 = v1;

    sub_1DD457690(v3, v2);
    v4 = sub_1DD63FDA8();
    sub_1DD395950();
    v5 = sub_1DD63FC48();

    AnalyticsSendEvent();
  }
}

uint64_t sub_1DD457690(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1DD45782C(a1, sub_1DD457AE8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1DD457714(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD457774(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4577D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD45782C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  sub_1DD4E75B8();
  v7 = v54;
  v8 = v56;
  v9 = v57;
  v49 = v58;
  v50 = v53[3];
  v46 = v55;
  v10 = (v55 + 64) >> 6;

  v47 = a3;

  v48 = v54;
  if (v57)
  {
    while (1)
    {
      v51 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v50 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v50 + 56) + 8 * v13);
      v53[0] = *v14;
      v53[1] = v15;
      v53[2] = v16;

      v17 = v16;
      v49(v52, v53);

      v18 = v52[0];
      v19 = v52[1];
      v20 = v52[2];
      v21 = *v59;
      v29 = sub_1DD3978DC();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v51 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC318, &qword_1DD646160);
          sub_1DD640A18();
        }
      }

      else
      {
        sub_1DD4E67A8(v32, v51 & 1, v23, v24, v25, v26, v27, v28, v45, v46, v47, SBYTE4(v47));
        v34 = sub_1DD3978DC();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v59;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        v38 = v36[7];
        v39 = *(v38 + 8 * v29);
        *(v38 + 8 * v29) = v37;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v40 = (v36[6] + 16 * v29);
        *v40 = v18;
        v40[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v41 = v36[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v36[2] = v43;
      }

      a4 = 1;
      v8 = v11;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4(v50);
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD457AE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD4E7344(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_1DD4577D4(v0, type metadata accessor for ContactMatchRuntimeData);
}

uint64_t sub_1DD457B80(uint64_t a1, void *a2, double a3, uint64_t a4, uint64_t *a5, int a6, int a7)
{
  v8 = v7;
  v203 = a7;
  LODWORD(v229) = a6;
  v230 = a5;
  v200 = a2;
  v11 = type metadata accessor for ContactResolver.SignalSet(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2();
  v225 = v13 - v12;
  v14 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for ContactMatchRuntimeData(v14);
  OUTLINED_FUNCTION_0();
  v186 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v223 = v18 - v17;
  v19 = OUTLINED_FUNCTION_6_2();
  type metadata accessor for PrivatizedContactMatchRuntimeData(v19);
  OUTLINED_FUNCTION_0();
  v221 = v21;
  v222 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v199 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v228 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v220 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v198 = v32 - v31;
  v33 = OUTLINED_FUNCTION_6_2();
  v34 = type metadata accessor for PrivatizedContactResolverConfig(v33);
  MEMORY[0x1EEE9AC00](v34 - 8);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v217 = type metadata accessor for ContactResolverDESRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_1_4();
  v216 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v180 - v42;
  v197 = type metadata accessor for StitchedContactResolverRecommendation(0);
  OUTLINED_FUNCTION_0();
  v206 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1_4();
  v219 = v46 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v205 = &v180 - v49;
  v50 = OUTLINED_FUNCTION_6_2();
  v184 = type metadata accessor for StitchedContactResolverRequest(v50);
  OUTLINED_FUNCTION_0();
  v185 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v209 = v54 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v55 - 8);
  OUTLINED_FUNCTION_1_4();
  v58 = v56 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v180 - v60;
  v196 = type metadata accessor for StitchedContactData(0);
  v195 = v196[7];
  sub_1DD4572EC(a1 + v195, v61);
  v62 = type metadata accessor for StitchableInteraction(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v62);
  v204 = v62;
  if (EnumTagSinglePayload == 1)
  {
    result = sub_1DD458B24(v61);
    v65 = 0.0;
  }

  else
  {
    v65 = *&v61[*(v62 + 28)];
    OUTLINED_FUNCTION_4_22();
    result = sub_1DD458CB4(v61, v66);
  }

  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v65 < 9.22337204e18)
  {
    v181 = *(*(a1 + 32) + 16);
    if (!v181)
    {
      return result;
    }

    v192 = v65;
    OUTLINED_FUNCTION_11_18();
    v182 = v69;
    v70 = v229 & 1;
    if (!v230)
    {
      v70 = 2;
    }

    v190 = v70;
    v191 = v228 + 8;
    v71 = fmax(a3, 0.001);
    v230 = v24;
    v194 = v29;
    v210 = v37;
    v193 = v43;
    v43 = v205;
    v187 = v58;
    v72 = v204;
    v188 = a1;
    v180 = v67;
    while (v68 < *(v67 + 16))
    {
      v73 = *(v185 + 72);
      v183 = v68;
      v74 = v209;
      sub_1DD458BF4(v182 + v73 * v68, v209, type metadata accessor for StitchedContactResolverRequest);
      v201 = *(*(v74 + *(v184 + 24)) + 16);
      if (v201)
      {
        v75 = 0;
        OUTLINED_FUNCTION_11_18();
        v202 = v77;
        v189 = v76;
        while (1)
        {
          if (v75 >= *(v76 + 16))
          {
            __break(1u);
            goto LABEL_47;
          }

          OUTLINED_FUNCTION_6_22();
          sub_1DD458BF4(v78, v43, v79);
          if ((v203 & 1) == 0 && (v43[v220[12]] & 1) == 0)
          {
            sub_1DD4C193C(0.0, 1.0);
            if (v80 >= v71)
            {
              if (qword_1EE165FB0 != -1)
              {
                goto LABEL_51;
              }

              goto LABEL_41;
            }
          }

          OUTLINED_FUNCTION_5_26();
          sub_1DD458BF4(v209, v37, v81);
          OUTLINED_FUNCTION_6_22();
          sub_1DD458BF4(v43, v219, v82);
          sub_1DD4572EC(a1 + v195, v58);
          v83 = __swift_getEnumTagSinglePayload(v58, 1, v72);
          v211 = v75;
          if (v83 == 1)
          {
            break;
          }

          v84 = *(v58 + *(v72 + 36));

          OUTLINED_FUNCTION_4_22();
          sub_1DD458CB4(v58, v85);
          v90 = *(v84 + 16);
          if (!v90)
          {

            goto LABEL_27;
          }

          v218 = v8;
          v231[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42A2D4(0, v90, 0, v86, v87, v88, v89);
          v91 = v231[0];
          v92 = (v84 + 40);
          do
          {
            v94 = *(v92 - 1);
            v93 = *v92;
            v231[0] = v91;
            v96 = *(v91 + 16);
            v95 = *(v91 + 24);

            if (v96 >= v95 >> 1)
            {
              sub_1DD42A2D4(v95 > 1, v96 + 1, 1, v97, v98, v99, v100);
              v91 = v231[0];
            }

            *(v91 + 16) = v96 + 1;
            v101 = v91 + 16 * v96;
            *(v101 + 32) = v94;
            *(v101 + 40) = v93;
            v92 += 10;
            --v90;
          }

          while (v90);
          v215 = v91;

          v24 = v230;
          v37 = v210;
          v8 = v218;
LABEL_28:
          v213 = *(a1 + v196[12]);
          v102 = (a1 + v196[8]);
          v103 = *(v102 + 6);
          v212 = *(v102 + 2);
          v104 = *v102;
          v106 = v216;
          v105 = v217;
          *v216 = 2;
          v107 = (v106 + v105[7]);
          v214 = v105[19];
          v108 = v106 + v214;
          v108[6] = 0;
          *(v108 + 2) = 0;
          *v108 = 2;
          sub_1DD63D0E8();
          OUTLINED_FUNCTION_5_26();
          sub_1DD458BF4(v37, v106 + v109, v110);
          v111 = v219;
          v112 = (v219 + v220[15]);
          v113 = *v112;
          v114 = v112[1];
          v115 = v112[2];
          v116 = v112[3];
          v117 = v112[4];
          v118 = v112[5];
          *v107 = *v112;
          v107[1] = v114;
          v107[2] = v115;
          v107[3] = v116;
          v107[4] = v117;
          v107[5] = v118;
          *(v106 + v105[8]) = *(v111 + 264);
          v119 = *(v111 + 280);
          v120 = (v106 + v105[9]);
          *v120 = *(v111 + 272);
          v120[1] = v119;
          *(v106 + v105[10]) = *(v111 + 288);
          v121 = *(v111 + 296);
          v122 = *(v121 + 16);
          v218 = v8;
          if (v122)
          {
            v207 = v103;
            v208 = v104;
            sub_1DD458B8C(v113, v114);
            v232 = MEMORY[0x1E69E7CC0];

            sub_1DD42B82C(0, v122, 0);
            v123 = v232;
            v124 = v121 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
            v226 = *(v186 + 72);
            do
            {
              v229 = v123;
              v125 = v223;
              sub_1DD458BF4(v124, v223, type metadata accessor for ContactMatchRuntimeData);
              sub_1DD40FF0C();
              v227 = v127;
              v228 = v126;
              v129 = v128;
              v131 = matched;
              v130 = v225;
              sub_1DD458BF4(v125 + *(matched + 20), v225, type metadata accessor for ContactResolver.SignalSet);
              v132 = v222;
              sub_1DD55DD00(v130, v24 + v222[5]);
              v133 = v125 + v131[6];
              v134 = *(v133 + 8);
              v135 = *(v133 + 16);
              LOBYTE(v231[0]) = *v133;
              v231[1] = v134;
              v231[2] = v135;

              sub_1DD55EDF0(v231);
              v137 = v136;
              v139 = v138;
              v141 = v140;
              v142 = *(v125 + v131[7]);
              sub_1DD55D704(*(v125 + v131[8]));
              v143 = *(v125 + v131[9]);
              v144 = v227;
              *v230 = v228;
              v230[1] = v144;
              v230[2] = v129;
              v145 = v230 + v132[6];
              LOBYTE(v144) = v137 & 1;
              v24 = v230;
              *v145 = v144;
              *(v145 + 1) = v139;
              *(v145 + 2) = v141;
              *(v24 + v132[7]) = v142;
              *(v24 + v132[8]) = v146;
              *(v24 + v132[9]) = v143;

              v147 = v125;
              v123 = v229;
              sub_1DD458CB4(v147, type metadata accessor for ContactMatchRuntimeData);
              v232 = v123;
              v149 = *(v123 + 16);
              v148 = *(v123 + 24);
              if (v149 >= v148 >> 1)
              {
                sub_1DD42B82C(v148 > 1, v149 + 1, 1);
                v123 = v232;
              }

              *(v123 + 16) = v149 + 1;
              sub_1DD458C54(v24, v123 + ((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v149, type metadata accessor for PrivatizedContactMatchRuntimeData);
              v124 += v226;
              --v122;
            }

            while (v122);
            v104 = v208;
            v103 = v207;
          }

          else
          {
            sub_1DD458B8C(v113, v114);

            v123 = MEMORY[0x1E69E7CC0];
          }

          v150 = v104 | ((v212 | (v103 << 16)) << 32);
          v151 = v216;
          v152 = v217;
          v153 = v216 + v217[14];
          v229 = v217[17];
          *(v216 + v217[11]) = v123;
          v155 = v219;
          v154 = v220;
          *(v151 + v152[12]) = sub_1DD43D87C();
          *(v151 + v152[13]) = *(v155 + v154[11]);
          v156 = v155 + *(v197 + 20);
          v157 = *v156;
          v158 = *(v156 + 8);
          v159 = *(v156 + 16);
          *v153 = *v156;
          *(v153 + 1) = v158;
          *(v153 + 2) = v159;
          v160 = *(v156 + 24);
          v153[24] = v160;
          *(v151 + v152[15]) = v215;
          *(v151 + v152[16]) = v213;
          LOBYTE(v153) = sub_1DD55D7D8(v192);
          sub_1DD458BE0(v157, v158, v159, v160);
          v37 = v210;
          sub_1DD458CB4(v210, type metadata accessor for PrivatizedContactResolverConfig);
          *(v151 + v152[18]) = v153;
          v161 = v151 + v214;
          *(v161 + 6) = BYTE6(v150);
          *(v161 + 4) = WORD2(v150);
          *v161 = v150;
          v162 = v198;
          sub_1DD458BF4(v155, v198, type metadata accessor for ContactResolverRunTimeData);
          OUTLINED_FUNCTION_0_42();
          sub_1DD458CB4(v155, v163);
          LOBYTE(v157) = *(v162 + v220[16]);
          sub_1DD458CB4(v162, type metadata accessor for ContactResolverRunTimeData);
          *(v151 + v152[20]) = v157;
          *(v151 + v229) = v190;
          v164 = v193;
          sub_1DD458C54(v151, v193, type metadata accessor for ContactResolverDESRecord);
          v165 = *__swift_project_boxed_opaque_existential_1(v200, v200[3]);
          v166 = v194;
          sub_1DD63D068();
          v167 = v218;
          sub_1DD4AF850(v164, v166, v165);
          v8 = v167;
          if (v167)
          {
            v172 = OUTLINED_FUNCTION_9_15();
            v173(v172);
            OUTLINED_FUNCTION_8_14();
            OUTLINED_FUNCTION_0_42();
            v175 = v205;
            goto LABEL_44;
          }

          v75 = v211 + 1;
          v168 = OUTLINED_FUNCTION_9_15();
          v169(v168);
          OUTLINED_FUNCTION_8_14();
          OUTLINED_FUNCTION_0_42();
          v43 = v205;
          sub_1DD458CB4(v205, v170);
          a1 = v188;
          v24 = v230;
          v58 = v187;
          v72 = v204;
          v76 = v189;
          if (v75 == v201)
          {
            goto LABEL_37;
          }
        }

        sub_1DD458B24(v58);
LABEL_27:
        v215 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

LABEL_37:
      v171 = v183 + 1;
      result = OUTLINED_FUNCTION_7_19();
      v68 = v171;
      v67 = v180;
      if (v171 == v181)
      {
        return result;
      }
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_41:
  v176 = sub_1DD63F9F8();
  __swift_project_value_buffer(v176, qword_1EE16F068);
  v177 = sub_1DD63F9D8();
  v178 = sub_1DD640368();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_1DD38D000, v177, v178, "skipping logging for non-force prompt", v179, 2u);
    MEMORY[0x1E12B3DA0](v179, -1, -1);
  }

  OUTLINED_FUNCTION_0_42();
  v175 = v43;
LABEL_44:
  sub_1DD458CB4(v175, v174);
  return OUTLINED_FUNCTION_7_19();
}

double sub_1DD4589E4()
{
  v0 = [objc_opt_self() clientWithIdentifier_];
  v1 = sub_1DD63FDA8();
  v2 = sub_1DD63FDA8();
  v3 = [v0 levelForFactor:v1 withNamespaceName:v2];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

BOOL sub_1DD458AD4(char a1, char a2, double a3)
{
  result = 1;
  if ((a2 & 1) == 0 && (a1 & 1) == 0)
  {
    v5 = fmax(a3, 0.001);
    sub_1DD4C193C(0.0, 1.0);
    return v6 < v5;
  }

  return result;
}

uint64_t sub_1DD458B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD458B8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD458BE0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DD3E7AA0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1DD458BF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD458C54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD458CB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ContactResolverDESRecord(uint64_t a1)
{
  result = qword_1EE161730;
  if (!qword_1EE161730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD458D98(uint64_t a1)
{
  sub_1DD63D0F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrivatizedContactResolverConfig(319);
    if (v2 <= 0x3F)
    {
      sub_1DD459010(319, &qword_1EE165590, &type metadata for TrialEnrollment, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        v4 = MEMORY[0x1E69E6370];
        sub_1DD458FB8(319);
        if (v5 <= 0x3F)
        {
          sub_1DD459010(319, &qword_1EE1613B0, &type metadata for StitchedContactUserPrompt, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            sub_1DD459010(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
            if (v7 <= 0x3F)
            {
              sub_1DD459010(319, &qword_1EE1638C8, v4, MEMORY[0x1E69E6720]);
              if (v8 <= 0x3F)
              {
                sub_1DD459010(319, &qword_1EE160CD0, &type metadata for PotentialRetryInteractionInfo, MEMORY[0x1E69E6720]);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DD458FB8(uint64_t a1)
{
  if (!qword_1EE1602A0)
  {
    type metadata accessor for PrivatizedContactMatchRuntimeData(255);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1602A0);
    }
  }
}

void sub_1DD459010(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DD459060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6556616D65686373 && a2 == 0xED00006E6F697372;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726E456C61697274 && a2 == 0xEF746E656D6C6C6FLL;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E656D6D6F636572 && a2 == 0xEF65707954726564;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001DD66C860 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001DD66C880 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ALL && 0x80000001DD66C8A0 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6974756C6F736572 && a2 == 0xEE00657079546E6FLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6F72506563726F66 && a2 == 0xEB0000000074706DLL;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x80000001DD66C8C0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x80000001DD66C8E0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001ELL && 0x80000001DD66C900 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000019 && 0x80000001DD66C920 == a2;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001DLL && 0x80000001DD66C940 == a2;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000018 && 0x80000001DD66C960 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_1DD640CD8();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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

unint64_t sub_1DD459570(char a1)
{
  result = 0x6556616D65686373;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6769666E6F63;
      break;
    case 3:
      result = 0x726E456C61697274;
      break;
    case 4:
      result = 0x6E656D6D6F636572;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7365686374616DLL;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0x6974756C6F736572;
      break;
    case 10:
      result = 0x6F72506563726F66;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD459798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD88, &qword_1DD64BA20);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD45A6F4();
  sub_1DD640EF8();
  LOBYTE(v27) = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DD640C48();
  if (!v2)
  {
    v11 = type metadata accessor for ContactResolverDESRecord(0);
    LOBYTE(v27) = 1;
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_9_16();
    sub_1DD45AB3C(v12, v13, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    LOBYTE(v27) = 2;
    type metadata accessor for PrivatizedContactResolverConfig(0);
    OUTLINED_FUNCTION_8_15();
    sub_1DD45AB3C(v14, v15, &unk_1DD64B7BC);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    v16 = (v3 + v11[7]);
    v17 = v16[1];
    v27 = *v16;
    v28 = v17;
    v29 = v16[2];
    v26 = 3;
    sub_1DD45A748();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    OUTLINED_FUNCTION_20_10(v11[8]);
    v26 = 4;
    sub_1DD45A79C();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    LOBYTE(v27) = 5;
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C18();
    LOBYTE(v27) = 6;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    *&v27 = *(v3 + v11[11]);
    v26 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    sub_1DD45AAA0(&qword_1ECCDCDA0, &qword_1ECCDCDA8, &unk_1DD64C458, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    OUTLINED_FUNCTION_20_10(v11[12]);
    v26 = 8;
    sub_1DD45A7F0();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    OUTLINED_FUNCTION_20_10(v11[13]);
    v26 = 9;
    sub_1DD45A844();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    v18 = (v3 + v11[14]);
    v19 = *(v18 + 2);
    v20 = *(v18 + 24);
    v27 = *v18;
    *&v28 = v19;
    BYTE8(v28) = v20;
    v26 = 10;
    sub_1DD45A898();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    *&v27 = *(v3 + v11[15]);
    v26 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4557B8(&qword_1EE1638D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_18_2();
    sub_1DD640C68();
    LOBYTE(v27) = 12;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    LOBYTE(v27) = 13;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640BD8();
    OUTLINED_FUNCTION_20_10(v11[18]);
    v26 = 14;
    sub_1DD45A8EC();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C68();
    v21 = v11[19];
    v22 = *(v3 + v21 + 6);
    v23 = *(v3 + v21 + 4);
    LODWORD(v27) = *(v3 + v21);
    BYTE6(v27) = v22;
    WORD2(v27) = v23;
    v26 = 15;
    sub_1DD45A940();
    OUTLINED_FUNCTION_0_43();
    sub_1DD640C08();
    LOBYTE(v27) = 16;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1DD459CE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for PrivatizedContactResolverConfig(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v59 = v9;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCDC0, &qword_1DD64BA38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  type metadata accessor for ContactResolverDESRecord(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v71 = (v19 - v18);
  v72 = v17;
  v20 = v17[19];
  v21 = v19 - v18 + v20;
  *(v21 + 6) = 0;
  *(v21 + 4) = 0;
  *v21 = 2;
  v23 = a1[3];
  v22 = a1[4];
  v70 = a1;
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1DD45A6F4();
  v58 = v15;
  v25 = v69;
  sub_1DD640ED8();
  if (v25)
  {
    OUTLINED_FUNCTION_1_33();
    v64 = 1;
    v65 = 0;
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_1DD447638(v69, v64);
    if (v22)
    {
    }

    if (v24)
    {
    }

    result = sub_1DD3E6340(v63, v62, v20, 0xFFu);
    if (v3)
    {
    }
  }

  else
  {
    v56 = v20;
    LOBYTE(v73) = 0;
    v26 = sub_1DD640B58();
    v27 = v71;
    *v71 = v26;
    LOBYTE(v73) = 1;
    OUTLINED_FUNCTION_9_16();
    sub_1DD45AB3C(v28, v29, MEMORY[0x1E69695D0]);
    v30 = v60;
    sub_1DD640B78();
    v31 = v72;
    (*(v59 + 32))(v27 + v72[5], v12, v30);
    LOBYTE(v73) = 2;
    OUTLINED_FUNCTION_8_15();
    sub_1DD45AB3C(v32, v33, &unk_1DD64B7E4);
    sub_1DD640B78();
    sub_1DD45A994(v7, v27 + v31[6]);
    v79 = 3;
    sub_1DD45A9F8();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B18();
    v34 = (v27 + v31[7]);
    v35 = v74;
    v36 = v75;
    v37 = v76;
    v38 = v77;
    v39 = v78;
    v68 = v75;
    v69 = v73;
    *v34 = v73;
    v34[1] = v35;
    v64 = v35;
    v65 = v39;
    v34[2] = v36;
    v34[3] = v37;
    v66 = v38;
    v67 = v37;
    v34[4] = v38;
    v34[5] = v39;
    v79 = 4;
    sub_1DD45AA4C();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v27 + v31[8]) = v73;
    OUTLINED_FUNCTION_7_20(5);
    v40 = sub_1DD640B28();
    v41 = (v27 + v31[9]);
    *v41 = v40;
    v41[1] = v42;
    OUTLINED_FUNCTION_7_20(6);
    *(v27 + v31[10]) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    v79 = 7;
    sub_1DD45AAA0(&qword_1ECCDCDC8, &qword_1ECCDCDD0, &unk_1DD64C480, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_15_17();
    sub_1DD640B78();
    *(v27 + v31[11]) = v73;
    v79 = 8;
    sub_1DD45AB84();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v27 + v72[12]) = v73;
    v79 = 9;
    sub_1DD45ABD8();
    OUTLINED_FUNCTION_2_23();
    sub_1DD640B78();
    *(v71 + v72[13]) = v73;
    v79 = 10;
    sub_1DD45AC2C();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B18();
    v43 = v71 + v72[14];
    v44 = v74;
    v45 = v75;
    v46 = v76;
    v62 = v74;
    v63 = v73;
    *v43 = v73;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    v43[24] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    v79 = 11;
    sub_1DD4557B8(&qword_1EE160268, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B78();
    *(v71 + v72[15]) = v73;
    OUTLINED_FUNCTION_7_20(12);
    OUTLINED_FUNCTION_14_19();
    *(v71 + v72[16]) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_7_20(13);
    OUTLINED_FUNCTION_14_19();
    *(v71 + v72[17]) = sub_1DD640AE8();
    v79 = 14;
    sub_1DD45AC80();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B78();
    *(v71 + v72[18]) = v73;
    v79 = 15;
    sub_1DD45ACD4();
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_14_19();
    sub_1DD640B18();
    v47 = v73;
    v48 = WORD2(v73);
    v49 = v71 + v56;
    v49[6] = BYTE6(v73);
    *(v49 + 2) = v48;
    *v49 = v47;
    OUTLINED_FUNCTION_7_20(16);
    OUTLINED_FUNCTION_14_19();
    v50 = sub_1DD640B38();
    v51 = OUTLINED_FUNCTION_10_21();
    v52(v51);
    v53 = v50 & 1;
    v54 = v71;
    *(v71 + v72[20]) = v53;
    sub_1DD45AD28(v54, v57);
    __swift_destroy_boxed_opaque_existential_1(v70);
    return sub_1DD45AD8C(v54, type metadata accessor for ContactResolverDESRecord);
  }

  return result;
}

uint64_t sub_1DD45A5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD459060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD45A624@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD459568();
  *a1 = result;
  return result;
}

uint64_t sub_1DD45A64C(uint64_t a1)
{
  v2 = sub_1DD45A6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD45A688(uint64_t a1)
{
  v2 = sub_1DD45A6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD45A6F4()
{
  result = qword_1ECCDCD90;
  if (!qword_1ECCDCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCD90);
  }

  return result;
}

unint64_t sub_1DD45A748()
{
  result = qword_1EE165598;
  if (!qword_1EE165598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165598);
  }

  return result;
}

unint64_t sub_1DD45A79C()
{
  result = qword_1EE163A68;
  if (!qword_1EE163A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A68);
  }

  return result;
}

unint64_t sub_1DD45A7F0()
{
  result = qword_1ECCDCDB0;
  if (!qword_1ECCDCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDB0);
  }

  return result;
}

unint64_t sub_1DD45A844()
{
  result = qword_1EE1651E8;
  if (!qword_1EE1651E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651E8);
  }

  return result;
}

unint64_t sub_1DD45A898()
{
  result = qword_1EE1613B8[0];
  if (!qword_1EE1613B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1613B8);
  }

  return result;
}

unint64_t sub_1DD45A8EC()
{
  result = qword_1ECCDCDB8;
  if (!qword_1ECCDCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDB8);
  }

  return result;
}

unint64_t sub_1DD45A940()
{
  result = qword_1EE160CD8[0];
  if (!qword_1EE160CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE160CD8);
  }

  return result;
}

uint64_t sub_1DD45A994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivatizedContactResolverConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD45A9F8()
{
  result = qword_1EE162928[0];
  if (!qword_1EE162928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE162928);
  }

  return result;
}

unint64_t sub_1DD45AA4C()
{
  result = qword_1EE160368;
  if (!qword_1EE160368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160368);
  }

  return result;
}

uint64_t sub_1DD45AAA0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCD98, &unk_1DD64BA28);
    sub_1DD45AB3C(a2, type metadata accessor for PrivatizedContactMatchRuntimeData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD45AB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD45AB84()
{
  result = qword_1ECCDCDD8;
  if (!qword_1ECCDCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDD8);
  }

  return result;
}

unint64_t sub_1DD45ABD8()
{
  result = qword_1EE161BD8;
  if (!qword_1EE161BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161BD8);
  }

  return result;
}

unint64_t sub_1DD45AC2C()
{
  result = qword_1ECCDCDE0;
  if (!qword_1ECCDCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDE0);
  }

  return result;
}

unint64_t sub_1DD45AC80()
{
  result = qword_1ECCDCDE8;
  if (!qword_1ECCDCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDE8);
  }

  return result;
}

unint64_t sub_1DD45ACD4()
{
  result = qword_1ECCDCDF0;
  if (!qword_1ECCDCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDF0);
  }

  return result;
}

uint64_t sub_1DD45AD28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverDESRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD45AD8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContactResolverDESRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ContactResolverDESRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD45AF4C()
{
  result = qword_1ECCDCDF8;
  if (!qword_1ECCDCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCDF8);
  }

  return result;
}

unint64_t sub_1DD45AFA4()
{
  result = qword_1ECCDCE00;
  if (!qword_1ECCDCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE00);
  }

  return result;
}

unint64_t sub_1DD45AFFC()
{
  result = qword_1ECCDCE08;
  if (!qword_1ECCDCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE08);
  }

  return result;
}

void *sub_1DD45B08C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
  result = sub_1DD640A58();
  v3 = result;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v26 + 56) + 8 * v16);
      v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v21 initWithDouble_];
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v3[6] + 16 * v16);
      *v22 = v18;
      v22[1] = v19;
      *(v3[7] + 8 * v16) = result;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD45B228(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1DD45B268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsMeasurableError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD45B38C()
{
  result = qword_1ECCDCE18;
  if (!qword_1ECCDCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE18);
  }

  return result;
}

void sub_1DD45B3EC(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t i@<X3>, unint64_t a5@<X8>)
{
  v381 = a1;
  v393 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OUTLINED_FUNCTION_14_2(&v364 - v9);
  v389 = type metadata accessor for StitchableInteraction(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v388 = &v364 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = OUTLINED_FUNCTION_14_2(&v364 - v14);
  v386 = type metadata accessor for Contact(v15);
  OUTLINED_FUNCTION_0();
  v375 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v364 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  v25 = OUTLINED_FUNCTION_14_2(&v364 - v24);
  matched = type metadata accessor for ContactMatchRuntimeData(v25);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v364 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  v40 = OUTLINED_FUNCTION_14_2(&v364 - v39);
  v41 = type metadata accessor for ContactResolverRunTimeData(v40);
  if ((*(a3 + *(v41 + 48)) & 1) == 0)
  {
    sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);

    OUTLINED_FUNCTION_11_20();
LABEL_31:
    OUTLINED_FUNCTION_0_44();
    sub_1DD45D624(a3, v70);
    LOBYTE(v43) = 0;
    v55 = 0;
    i = 0;
    v71 = 0;
    v35 = 0;
    LOWORD(a3) = 512;
    goto LABEL_32;
  }

  v42 = v41;
  v374 = a2;
  v372 = v36;
  v373 = 0;
  v43 = *(v41 + 40);
  v392 = a3;
  a3 = 0xE900000000000074;
  switch(sub_1DD43D87C())
  {
    case 1u:
      a3 = 0x80000001DD669AF0;
      goto LABEL_6;
    case 2u:
      a3 = 0x80000001DD668A50;
      goto LABEL_6;
    case 3u:

      goto LABEL_12;
    default:
LABEL_6:
      a2 = sub_1DD640CD8();

      if (a2)
      {
LABEL_12:
        sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);

LABEL_30:
        OUTLINED_FUNCTION_11_20();
        OUTLINED_FUNCTION_13_17();
        goto LABEL_31;
      }

      v44 = type metadata accessor for StitchedContactResolverRecommendation(0);
      v45 = v392;
      v46 = v392 + *(v44 + 20);
      if (*(v46 + 24) == 255)
      {
        if (qword_1EE165FB0 == -1)
        {
LABEL_9:
          v47 = sub_1DD63F9F8();
          __swift_project_value_buffer(v47, qword_1EE16F068);
          v48 = v374;

          v49 = sub_1DD63F9D8();
          a3 = sub_1DD640378();

          if (os_log_type_enabled(v49, a3))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v394 = v51;
            *v50 = 136315138;
            v52 = OUTLINED_FUNCTION_8_16();
            a2 = sub_1DD39565C(v52, v48, v53);

            *(v50 + 4) = a2;
            _os_log_impl(&dword_1DD38D000, v49, a3, "force prompt but no found user prompt. taskId=%s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            MEMORY[0x1E12B3DA0](v51, -1, -1);
            MEMORY[0x1E12B3DA0](v50, -1, -1);
          }

          else
          {
          }

          sub_1DD390754(i, &qword_1ECCDC1B0, &unk_1DD6454F0);
          goto LABEL_30;
        }

LABEL_200:
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
        goto LABEL_9;
      }

      v368 = *(v46 + 24);
      v366 = v21;
      v381 = i;
      v54 = *(v46 + 8);
      v367 = *v46;
      v370 = v54;
      v371 = *(v46 + 16);

      sub_1DD3DD9B4(v45 + v43, v391, &qword_1ECCDBEE0, &unk_1DD645510);
      LOBYTE(v43) = v45;
      v374 = sub_1DD43D87C();
      i = 0;
      a2 = *(v45 + 296);
      v55 = *(a2 + 16);
      a3 = MEMORY[0x1E69E7CC0];
      while (v55 != i)
      {
        if (i >= *(a2 + 16))
        {
          __break(1u);
LABEL_173:
          v71 = 0;
LABEL_174:
          sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
          v324 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v324, v325, v326);
          v327 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v327, v328, v329);
          OUTLINED_FUNCTION_13_17();
          if (v71)
          {

            v71 = 2;
          }

          goto LABEL_185;
        }

        LOBYTE(v43) = (*(v28 + 80) + 32) & ~*(v28 + 80);
        OUTLINED_FUNCTION_4_24();
        sub_1DD45D5C4(v56, v35, v57);
        if (*(v35 + *(matched + 36)) == 1)
        {
          OUTLINED_FUNCTION_12_19();
          sub_1DD45D67C(v35, v390, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v394 = a3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DD42B564(0, *(a3 + 16) + 1, 1);
            a3 = v394;
          }

          v62 = *(a3 + 16);
          v61 = *(a3 + 24);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v369 = v62 + 1;
            v364 = v62;
            sub_1DD42B564(v61 > 1, v62 + 1, 1);
            v63 = v369;
            a3 = v394;
          }

          ++i;
          *(a3 + 16) = v63;
          OUTLINED_FUNCTION_12_19();
          sub_1DD45D67C(v390, v64, v65);
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v35, v58);
          ++i;
        }
      }

      i = *(a3 + 16);

      if (*(v392 + *(v42 + 64) + 2))
      {
        v66 = 256;
      }

      else
      {
        v66 = 0;
      }

      LODWORD(v369) = v66;
      v67 = sub_1DD556FCC();
      v68 = v383;
      sub_1DD558C3C(v67, v383);

      v69 = v386;
      if (__swift_getEnumTagSinglePayload(v68, 1, v386) == 1)
      {
        sub_1DD390754(v68, &qword_1ECCDC268, &qword_1DD64CE00);
        LOWORD(a3) = 3;
        v35 = -1;
        OUTLINED_FUNCTION_23_12(768);
        v43 = v384;
      }

      else
      {
        OUTLINED_FUNCTION_5_28();
        v72 = v378;
        sub_1DD45D67C(v68, v378, v73);
        v43 = v384;
        if (v55 == 1)
        {
          v35 = *(*(v72 + *(v69 + 80)) + 16);
          if (v35)
          {
            LOWORD(a3) = v35 != 1;
            sub_1DD45D624(v72, type metadata accessor for Contact);
            v74 = (v35 != 1) << 8;
          }

          else
          {
            OUTLINED_FUNCTION_2_24();
            sub_1DD45D624(v72, v76);
            LOWORD(a3) = 2;
            v74 = 512;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_24();
          sub_1DD45D624(v72, v75);
          LOWORD(a3) = 3;
          v35 = -1;
          v74 = 768;
        }

        OUTLINED_FUNCTION_23_12(v74);
      }

      v77 = OUTLINED_FUNCTION_8_16();
      sub_1DD3DD9B4(v77, v43, v78, v79);
      if (__swift_getEnumTagSinglePayload(v43, 1, v389) != 1)
      {
        sub_1DD45D67C(v43, v388, type metadata accessor for StitchableInteraction);
        if (qword_1EE165FB0 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_204;
      }

      sub_1DD390754(v43, &qword_1ECCDC1B0, &unk_1DD6454F0);
      if (v368)
      {
        if (v368 == 1)
        {
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v80 | 4;
          OUTLINED_FUNCTION_33_7();
          if (v81)
          {
            v378 = v35;
            v82 = i;
            v43 = *(a2 + 16);
            if (!v43)
            {
LABEL_55:
              v92 = OUTLINED_FUNCTION_8_16();
              sub_1DD390754(v92, v93, v94);
              v95 = OUTLINED_FUNCTION_9_17();
              sub_1DD390754(v95, v96, v97);
LABEL_170:
              OUTLINED_FUNCTION_17_16();
              v321 = sub_1DD45D264(v43, v320);
              OUTLINED_FUNCTION_0_44();
              OUTLINED_FUNCTION_25_8(v322, v323);
              v71 = v383 | v321;
              OUTLINED_FUNCTION_11_20();
              i = v82;
LABEL_171:
              v35 = v378;
              goto LABEL_32;
            }

            v83 = 0;
            i = *(matched + 36);
            OUTLINED_FUNCTION_20_11();
            while (v83 < *(a2 + 16))
            {
              OUTLINED_FUNCTION_4_24();
              v84 = v385;
              sub_1DD45D5C4(v85, v385, v86);
              if (*(v84 + i) == 1)
              {
                if (*v84 == v370 && v371 == v84[1])
                {
                  OUTLINED_FUNCTION_1_34();
                  sub_1DD45D624(v84, v309);
LABEL_169:
                  OUTLINED_FUNCTION_33_7();
                  v394 = v311;
                  v395 = v310;
                  MEMORY[0x1EEE9AC00](v312);
                  OUTLINED_FUNCTION_31_0();
                  OUTLINED_FUNCTION_34_9(v313);
                  OUTLINED_FUNCTION_26_12();
                  v314 = OUTLINED_FUNCTION_8_16();
                  sub_1DD390754(v314, v315, v316);
                  v317 = OUTLINED_FUNCTION_9_17();
                  sub_1DD390754(v317, v318, v319);
                  goto LABEL_170;
                }

                v88 = sub_1DD640CD8();
                OUTLINED_FUNCTION_1_34();
                sub_1DD45D624(v90, v89);
                if (v88)
                {
                  goto LABEL_169;
                }
              }

              else
              {
                OUTLINED_FUNCTION_1_34();
                sub_1DD45D624(v84, v91);
              }

              if (v43 == ++v83)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_199;
          }

          v192 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v192, v193, v194);
          v195 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v195, v196, v197);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v198, v199);
          OUTLINED_FUNCTION_18_15();
          v71 = matched | 3;
          goto LABEL_120;
        }

        OUTLINED_FUNCTION_33_7();
        if (!v122)
        {
          v200 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v200, v201, v202);
          v203 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v203, v204, v205);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v206, v207);
          OUTLINED_FUNCTION_18_15();
          v71 = matched | 3;
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v208 | 3;
LABEL_120:
          OUTLINED_FUNCTION_11_20();
LABEL_191:
          OUTLINED_FUNCTION_17_16();
          goto LABEL_32;
        }

        v380 = i;
        v43 = *(a2 + 16);
        if (v43)
        {
          v123 = 0;
          v390 = *(matched + 36);
          OUTLINED_FUNCTION_20_11();
          while (v123 < *(a2 + 16))
          {
            i = v35;
            OUTLINED_FUNCTION_4_24();
            v124 = v377;
            sub_1DD45D5C4(v125, v377, v126);
            v127 = v370;
            if (*(v124 + v390) == 1)
            {
              v128 = *(v377 + *(v386 + 80));
              v129 = (v128 + 80);
              v130 = v371;
              v131 = *(v128 + 16) + 1;
              while (--v131)
              {
                if (*(v129 - 1) != v127 || v130 != *v129)
                {
                  v129 += 10;
                  v133 = sub_1DD640CD8();
                  v130 = v371;
                  v127 = v370;
                  if ((v133 & 1) == 0)
                  {
                    continue;
                  }
                }

                OUTLINED_FUNCTION_1_34();
                v210 = v209;
                v43 = v211;
                v213 = sub_1DD45D624(v377, v212);
                v394 = v210;
                v395 = v43;
                MEMORY[0x1EEE9AC00](v213);
                OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_34_9(v214);
                v141 = OUTLINED_FUNCTION_26_12();
                v215 = OUTLINED_FUNCTION_8_16();
                sub_1DD390754(v215, v216, v217);
                v218 = OUTLINED_FUNCTION_9_17();
                sub_1DD390754(v218, v219, v220);
                v35 = i;
                goto LABEL_122;
              }
            }

            ++v123;
            OUTLINED_FUNCTION_1_34();
            sub_1DD45D624(v377, v134);
            v35 = i;
            if (v123 == v43)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
          return;
        }

LABEL_87:
        v135 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v135, v136, v137);
        v138 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v138, v139, v140);
        v141 = 0;
LABEL_122:
        OUTLINED_FUNCTION_17_16();
        v222 = v383 | sub_1DD45D264(v43, v221);
        sub_1DD45D2A8(a3, v141);
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_25_8(v223, v224);
        v71 = v222;
        OUTLINED_FUNCTION_21_10();
        OUTLINED_FUNCTION_11_20();
LABEL_196:
        OUTLINED_FUNCTION_30_9();
        goto LABEL_32;
      }

      break;
  }

  v380 = i;
  OUTLINED_FUNCTION_33_7();
  i = 0xE900000000000064;
  v43 = v121;
  switch(v121)
  {
    case 1:
      i = 0xE800000000000000;
      goto LABEL_126;
    case 3:

      goto LABEL_141;
    default:
LABEL_126:
      v239 = sub_1DD640CD8();

      if (v239)
      {
LABEL_141:
        v251 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v251, v252, v253);
        v254 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v254, v255, v256);
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_25_8(v257, v258);
        OUTLINED_FUNCTION_18_15();
        v71 = matched | 3;
        OUTLINED_FUNCTION_19_13();
        LOWORD(a3) = v259 | 3;
        OUTLINED_FUNCTION_11_20();
        OUTLINED_FUNCTION_17_16();
        goto LABEL_196;
      }

      i = *(a2 + 16);
      if (!i)
      {
        v250 = 0;
        OUTLINED_FUNCTION_11_20();
        goto LABEL_195;
      }

      v390 = v43;
      v365 = v55;
      v240 = 0;
      v55 = *(matched + 36);
      OUTLINED_FUNCTION_20_11();
      v43 = a2 + v241;
      while (v240 < *(a2 + 16))
      {
        OUTLINED_FUNCTION_4_24();
        v242 = v382;
        sub_1DD45D5C4(v243, v382, v244);
        if (*(v242 + v55) == 1)
        {
          if (*v242 == v367 && v370 == v242[1])
          {
            OUTLINED_FUNCTION_1_34();
            sub_1DD45D624(v242, v336);
LABEL_181:
            i = 0xE500000000000000;
            v250 = 1;
            a2 = v393;
            v55 = v365;
            switch(v390)
            {
              case 1:
                i = 0xE800000000000000;
                goto LABEL_193;
              case 2:
                i = 0xE900000000000064;
                goto LABEL_193;
              case 3:
LABEL_193:
                v250 = sub_1DD640CD8();
                break;
              default:
                break;
            }

            goto LABEL_195;
          }

          v246 = sub_1DD640CD8();
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v248, v247);
          if (v246)
          {
            goto LABEL_181;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_34();
          sub_1DD45D624(v242, v249);
        }

        if (i == ++v240)
        {
          v250 = 0;
          OUTLINED_FUNCTION_11_20();
          v55 = v365;
LABEL_195:
          v354 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v354, v355, v356);
          v357 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v357, v358, v359);
          OUTLINED_FUNCTION_17_16();
          v361 = v383 | sub_1DD45D264(v43, v360);
          sub_1DD45D2A8(a3, v250 & 1);
          OUTLINED_FUNCTION_0_44();
          OUTLINED_FUNCTION_25_8(v362, v363);
          v71 = v361;
          OUTLINED_FUNCTION_21_10();
          goto LABEL_196;
        }
      }

      break;
  }

LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
LABEL_57:
  v98 = sub_1DD63F9F8();
  __swift_project_value_buffer(v98, qword_1EE16F068);
  v99 = sub_1DD63F9D8();
  v100 = sub_1DD640368();
  os_log_type_enabled(v99, v100);
  OUTLINED_FUNCTION_11_20();
  v42 = v380;
  if (v101)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DD38D000, v99, v100, "using interaction to collect ModelEvaluation data", v43, 2u);
    MEMORY[0x1E12B3DA0](v43, -1, -1);
  }

  v385 = *(v388 + *(v389 + 9));
  v102 = OUTLINED_FUNCTION_9_17();
  v103 = v379;
  sub_1DD3DD9B4(v102, v379, v104, v105);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  a3 = v392;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_5_28();
      v166 = v366;
      v168 = sub_1DD45D67C(v103, v366, v167);
      MEMORY[0x1EEE9AC00](v168);
      OUTLINED_FUNCTION_31_0();
      *(v169 - 16) = v166;
      OUTLINED_FUNCTION_22_9(v170, v171);
      OUTLINED_FUNCTION_36_7();
      if (!v395)
      {
        v232 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v232, v233, v234);
        v235 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v235, v236, v237);
        OUTLINED_FUNCTION_0_44();
        sub_1DD45D624(a3, v238);
        OUTLINED_FUNCTION_3_24();
        OUTLINED_FUNCTION_18_15();
        v71 = &v364 + 2;
        goto LABEL_190;
      }

      OUTLINED_FUNCTION_32_8();
      if (v172)
      {
        OUTLINED_FUNCTION_35_9();
        v174 = v375;
        v173 = v376;

        if (a3)
        {
          if (v173)
          {
            if (v43 != v174 || a3 != v173)
            {
              a3 = OUTLINED_FUNCTION_29_7();
            }

            sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
            OUTLINED_FUNCTION_13_17();
            v346 = OUTLINED_FUNCTION_8_16();
            sub_1DD390754(v346, v347, v348);
            v349 = OUTLINED_FUNCTION_9_17();
            sub_1DD390754(v349, v350, v351);
            goto LABEL_189;
          }

LABEL_161:
          sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
          v292 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v292, v293, v294);
          v295 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v295, v296, v297);
          OUTLINED_FUNCTION_13_17();
          goto LABEL_189;
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_161;
        }

        v173 = 0;
      }

      sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
      v330 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v330, v331, v332);
      v333 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v333, v334, v335);
      OUTLINED_FUNCTION_13_17();
      if (v173)
      {
      }

LABEL_189:
      v166 = v366;
      OUTLINED_FUNCTION_0_44();
      sub_1DD45D624(a3, v352);
      OUTLINED_FUNCTION_3_24();
      v71 = v383 | 1;
LABEL_190:
      OUTLINED_FUNCTION_21_10();
      OUTLINED_FUNCTION_2_24();
      sub_1DD45D624(v166, v353);
      goto LABEL_191;
    case 2:
      v380 = i;
      v142 = *v103;
      v143 = *(*v103 + 16);
      v365 = v55;
      v378 = v35;
      if (!v143)
      {
        v384 = MEMORY[0x1E69E7CC0];
LABEL_143:

        i = MEMORY[0x1E69E7CC0];
        goto LABEL_144;
      }

      OUTLINED_FUNCTION_27_11(EnumCaseMultiPayload, v107, v108, v109, v110, v111, v112);
      v144 = v394;
      v145 = (*(v375 + 80) + 32) & ~*(v375 + 80);
      v390 = v142;
      a2 = v142 + v145;
      v35 = *(v375 + 72);
      v146 = v142 + v145;
      a3 = v376;
      do
      {
        v147 = v144;
        sub_1DD45D5C4(v146, a3, type metadata accessor for Contact);
        v149 = *a3;
        v148 = *(a3 + 8);

        OUTLINED_FUNCTION_2_24();
        sub_1DD45D624(a3, v150);
        v144 = v147;
        v394 = v147;
        v156 = *(v147 + 16);
        v155 = *(v147 + 24);
        if (v156 >= v155 >> 1)
        {
          sub_1DD42A2D4(v155 > 1, v156 + 1, 1, v151, v152, v153, v154);
          a3 = v376;
          v144 = v394;
        }

        *(v144 + 16) = v156 + 1;
        v157 = v144 + 16 * v156;
        *(v157 + 32) = v149;
        *(v157 + 40) = v148;
        v146 += v35;
        --v143;
      }

      while (v143);
      v176 = *(v390 + 16);
      if (!v176)
      {
        v384 = v144;
        OUTLINED_FUNCTION_13_17();
        goto LABEL_143;
      }

      v384 = v144;
      v55 = *(v386 + 80);
      i = MEMORY[0x1E69E7CC0];
      a3 = &type metadata for ContactHandle;
      break;
    case 3:
      v158 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v158, v159, v160);
      v161 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v161, v162, v163);
      OUTLINED_FUNCTION_0_44();
      sub_1DD45D624(a3, v164);
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_18_15();
      v71 = v103 | 4;
      OUTLINED_FUNCTION_19_13();
      LOWORD(a3) = v165 | 4;
      goto LABEL_191;
    default:
      OUTLINED_FUNCTION_5_28();
      v114 = sub_1DD45D67C(v103, v42, v113);
      MEMORY[0x1EEE9AC00](v114);
      OUTLINED_FUNCTION_31_0();
      *(v115 - 16) = v42;
      OUTLINED_FUNCTION_22_9(v116, v117);
      OUTLINED_FUNCTION_36_7();
      if (!v395)
      {
        v225 = OUTLINED_FUNCTION_8_16();
        sub_1DD390754(v225, v226, v227);
        v228 = OUTLINED_FUNCTION_9_17();
        sub_1DD390754(v228, v229, v230);
        OUTLINED_FUNCTION_0_44();
        sub_1DD45D624(a3, v231);
        OUTLINED_FUNCTION_3_24();
        OUTLINED_FUNCTION_23_12(v383 | 2);
        v71 = 2;
        goto LABEL_186;
      }

      OUTLINED_FUNCTION_32_8();
      if (v118)
      {
        OUTLINED_FUNCTION_35_9();
        v119 = v375;
        v71 = v376;

        if (!a3)
        {
          goto LABEL_174;
        }

        if (v71)
        {
          if (v43 == v119 && a3 == v71)
          {

            sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
            v71 = 0;
          }

          else
          {
            a3 = OUTLINED_FUNCTION_29_7();

            sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
            if (a3)
            {
              v71 = 0;
            }

            else
            {
              v71 = 2;
            }
          }

          OUTLINED_FUNCTION_13_17();
          v337 = OUTLINED_FUNCTION_8_16();
          sub_1DD390754(v337, v338, v339);
          v340 = OUTLINED_FUNCTION_9_17();
          sub_1DD390754(v340, v341, v342);
LABEL_185:
          OUTLINED_FUNCTION_0_44();
          sub_1DD45D624(a3, v343);
          OUTLINED_FUNCTION_3_24();
LABEL_186:
          OUTLINED_FUNCTION_19_13();
          LOWORD(a3) = v344 | v71;
          OUTLINED_FUNCTION_2_24();
          sub_1DD45D624(v42, v345);
          OUTLINED_FUNCTION_17_16();
          goto LABEL_187;
        }
      }

      else if (!a3)
      {
        goto LABEL_173;
      }

      sub_1DD390754(&v394, &qword_1ECCDCE20, &qword_1DD64BCC8);
      v286 = OUTLINED_FUNCTION_8_16();
      sub_1DD390754(v286, v287, v288);
      v289 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v289, v290, v291);
      v71 = 2;
      OUTLINED_FUNCTION_13_17();
      goto LABEL_185;
  }

  do
  {
    v177 = v387;
    sub_1DD45D5C4(a2, v387, type metadata accessor for Contact);
    v178 = *(v177 + v55);

    OUTLINED_FUNCTION_2_24();
    sub_1DD45D624(v177, v179);
    v180 = *(v178 + 16);
    v43 = *(i + 16);
    if (__OFADD__(v43, v180))
    {
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v180 > *(i + 24) >> 1)
    {
      sub_1DD3BEE1C();
      i = v181;
    }

    if (*(v178 + 16))
    {
      if ((*(i + 24) >> 1) - *(i + 16) < v180)
      {
        __break(1u);
        goto LABEL_202;
      }

      swift_arrayInitWithCopy();

      if (v180)
      {
        v182 = *(i + 16);
        v183 = __OFADD__(v182, v180);
        v184 = v182 + v180;
        if (v183)
        {
          goto LABEL_203;
        }

        *(i + 16) = v184;
      }
    }

    else
    {

      if (v180)
      {
        goto LABEL_198;
      }
    }

    a2 += v35;
    --v176;
  }

  while (v176);

  OUTLINED_FUNCTION_13_17();
LABEL_144:
  v260 = *(i + 16);
  if (v260)
  {
    OUTLINED_FUNCTION_27_11(v185, v186, v187, v188, v189, v190, v191);
    v261 = v394;
    v262 = (i + 96);
    do
    {
      v263 = *(v262 - 1);
      v43 = *v262;
      v394 = v261;
      v264 = *(v261 + 16);
      a3 = *(v261 + 24);

      if (v264 >= a3 >> 1)
      {
        v270 = a3 > 1;
        a3 = &v394;
        sub_1DD42A2D4(v270, v264 + 1, 1, v265, v266, v267, v268);
        v261 = v394;
      }

      *(v261 + 16) = v264 + 1;
      v269 = v261 + 16 * v264;
      *(v269 + 32) = v263;
      *(v269 + 40) = v43;
      v262 += 10;
      --v260;
    }

    while (v260);
    v379 = v261;

    OUTLINED_FUNCTION_13_17();
  }

  else
  {

    v379 = MEMORY[0x1E69E7CC0];
  }

  a2 = 0;
  v386 = v385[2];
  for (i = (v385 + 7); ; i += 80)
  {
    v271 = v381;
    if (v386 == a2)
    {

      sub_1DD390754(v271, &qword_1ECCDC1B0, &unk_1DD6454F0);
      v279 = OUTLINED_FUNCTION_9_17();
      sub_1DD390754(v279, v280, v281);
      OUTLINED_FUNCTION_0_44();
      sub_1DD45D624(a3, v282);
      OUTLINED_FUNCTION_3_24();
      OUTLINED_FUNCTION_18_15();
      v71 = v271 | 2;
      OUTLINED_FUNCTION_19_13();
      LOWORD(a3) = v283 | 2;
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_17_16();
      v55 = v365;
      OUTLINED_FUNCTION_30_9();
      goto LABEL_171;
    }

    v387 = a2;
    sub_1DD408C00();
    v389 = &v364;
    v273 = *(i + 8);
    v272 = *(i + 16);
    v275 = *(i + 24);
    v274 = *(i + 32);
    v43 = *(i + 48);
    v276 = *i;
    v382 = *(i - 8);
    a3 = *(i - 16);
    v394 = *(i - 24);
    v395 = a3;
    MEMORY[0x1EEE9AC00](v276);
    OUTLINED_FUNCTION_34_9(&v364);
    v390 = v277;

    v278 = v273;
    sub_1DD458B8C(v273, v272);

    a2 = OUTLINED_FUNCTION_26_12();
    v373 = v43;

    if (a2)
    {
      break;
    }

    a2 = v387 + 1;

    sub_1DD447638(v273, v272);
    OUTLINED_FUNCTION_13_17();
  }

  v387 = v43;
  v389 = v274;
  v386 = v275;

  OUTLINED_FUNCTION_23_12(v383 | 1);
  v284 = v390;
  if (v390)
  {
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_30_9();
    v285 = v382;
  }

  else
  {

    v285 = 0;
    v284 = 0xE000000000000000;
    OUTLINED_FUNCTION_11_20();
    OUTLINED_FUNCTION_30_9();
  }

  v298 = sub_1DD447638(v278, v272);
  v394 = v285;
  v395 = v284;
  MEMORY[0x1EEE9AC00](v298);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_34_9(v299);
  LOBYTE(v43) = v373;
  v71 = sub_1DD450388();

  v300 = OUTLINED_FUNCTION_8_16();
  sub_1DD390754(v300, v301, v302);
  v303 = OUTLINED_FUNCTION_9_17();
  sub_1DD390754(v303, v304, v305);

  OUTLINED_FUNCTION_0_44();
  OUTLINED_FUNCTION_25_8(v306, v307);
  OUTLINED_FUNCTION_3_24();
  if (v71)
  {
    v308 = 1;
  }

  else
  {
    v308 = 2;
  }

  LOWORD(a3) = v308 | v369;
  OUTLINED_FUNCTION_17_16();
  v55 = v365;
  v35 = v378;
LABEL_187:
  OUTLINED_FUNCTION_18_15();
LABEL_32:
  *a2 = v43;
  *(a2 + 8) = v55;
  *(a2 + 16) = i;
  *(a2 + 24) = v71;
  *(a2 + 32) = v35;
  *(a2 + 40) = a3;
}

uint64_t sub_1DD45D20C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8() & 1;
  }
}

uint64_t sub_1DD45D264(char a1, char a2)
{
  switch(a1)
  {
    case 1:
    case 2:
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

      result = 1;
      break;
    case 3:
      goto LABEL_6;
    default:
      if (a2)
      {
        result = 0;
      }

      else
      {
LABEL_6:
        result = 2;
      }

      break;
  }

  return result;
}

uint64_t sub_1DD45D2A8(unsigned __int8 a1, char a2)
{
  if (a1 - 2 < 2)
  {
    return 4;
  }

  if (a1)
  {
    if (a2)
    {
      return 1;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 2;
}

unint64_t sub_1DD45D2E4(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD45D330(char a1)
{
  result = 0x636572726F636E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656E6F646E616261;
      break;
    case 4:
      result = OUTLINED_FUNCTION_37_10();
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_1DD45D3E4(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD45D430(char a1)
{
  result = 0x6E656469666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 1701736302;
      break;
    case 3:
      result = OUTLINED_FUNCTION_37_10();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD45D4D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD45D2E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD45D508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45D330(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD45D560@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD45D3E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD45D590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45D430(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD45D5C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD45D624(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD45D67C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD45D710(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 41);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD45D75C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD45D7B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD45D890(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD45D96C()
{
  result = qword_1ECCDCE28;
  if (!qword_1ECCDCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE28);
  }

  return result;
}

unint64_t sub_1DD45D9C4()
{
  result = qword_1ECCDCE30;
  if (!qword_1ECCDCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  v2 = *(v0 - 304);

  return sub_1DD45D624(v2, type metadata accessor for StitchableInteraction);
}

uint64_t (*OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2))(_BYTE *)
{
  v5 = *(v3 - 328);

  return sub_1DD6083CC(v2, v5, (v3 - 256));
}

BOOL OUTLINED_FUNCTION_26_12()
{

  return sub_1DD450388();
}

void OUTLINED_FUNCTION_27_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v9 - 176) = v8;

  sub_1DD42A2D4(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_35_9()
{

  return sub_1DD408C00();
}

void *OUTLINED_FUNCTION_36_7()
{

  return memcpy((v0 - 176), (v0 - 256), 0x50uLL);
}

uint64_t sub_1DD45DBC4(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x636E656772656D65;
      break;
    case 2:
      result = 0x6C646E6148776172;
      break;
    case 3:
      result = 0x64726143656DLL;
      break;
    case 4:
      result = 0x6E6F436E776F6E6BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD45DC70()
{
  v1 = type metadata accessor for ContactResolver.SignalSet(0);
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v70 = v4 - v3;
  v5 = OUTLINED_FUNCTION_6_2();
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v68 = (v8 - v7);
  v9 = OUTLINED_FUNCTION_6_2();
  v67 = type metadata accessor for ContactMatchRuntimeData(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = (v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA80, &qword_1DD649F78);
  v14 = sub_1DD63FC88();
  v15 = *(v0 + 296);
  v66 = *(v15 + 16);
  if (v66)
  {
    v16 = 0;
    v65 = *(v0 + 296);
    while (2)
    {
      if (v16 >= *(v15 + 16))
      {
LABEL_22:
        __break(1u);
      }

      else
      {
        v73 = v16 + 1;
        v74 = v14;
        OUTLINED_FUNCTION_17_17();
        sub_1DD463124();
        v71 = v13[1];
        v72 = *v13;
        sub_1DD40FF0C();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        OUTLINED_FUNCTION_23_13();
        sub_1DD463124();
        sub_1DD55DD00(v70, v68 + matched[5]);
        v23 = v13 + v67[6];
        v24 = *(v23 + 1);
        v25 = *(v23 + 2);
        LOBYTE(v76[0]) = *v23;
        v76[1] = v24;
        v76[2] = v25;

        sub_1DD55EDF0(v76);
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = *(v13 + v67[7]);
        sub_1DD55D704(*(v13 + v67[8]));
        v33 = *(v13 + v67[9]);
        *v68 = v18;
        v68[1] = v20;
        v68[2] = v22;
        v34 = v68 + matched[6];
        *v34 = v27 & 1;
        *(v34 + 1) = v29;
        *(v34 + 2) = v31;
        *(v68 + matched[7]) = v32;
        *(v68 + matched[8]) = v35;
        *(v68 + matched[9]) = v33;

        OUTLINED_FUNCTION_20_12();
        sub_1DD462FD0(v68, v36);
        v37 = sub_1DD522770(v32);
        v38 = v37;
        v39 = v37 + 64;
        v40 = 1 << *(v37 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v42 = v41 & *(v37 + 64);
        v43 = (v40 + 63) >> 6;

        v44 = 0;
        v75 = MEMORY[0x1E69E7CC0];
        while (v42)
        {
LABEL_13:
          v46 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v47 = v46 | (v44 << 6);
          v48 = (*(v38 + 48) + 16 * v47);
          v49 = *v48;
          v50 = v48[1];
          v51 = *(*(v38 + 56) + 8 * v47);

          v52 = sub_1DD45E0CC(v49, v50, v51);
          v54 = v53;
          v56 = v55;

          if (v54)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE37C();
              v75 = v60;
            }

            v57 = *(v75 + 16);
            v58 = v57 + 1;
            if (v57 >= *(v75 + 24) >> 1)
            {
              sub_1DD3BE37C();
              v58 = v57 + 1;
              v75 = v61;
            }

            *(v75 + 16) = v58;
            v59 = (v75 + 24 * v57);
            v59[4] = v52;
            v59[5] = v54;
            v59[6] = v56;
          }
        }

        while (1)
        {
          v45 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            __break(1u);
            goto LABEL_22;
          }

          if (v45 >= v43)
          {
            break;
          }

          v42 = *(v39 + 8 * v45);
          ++v44;
          if (v42)
          {
            v44 = v45;
            goto LABEL_13;
          }
        }

        v62 = sub_1DD3B80F8(v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v74;
        sub_1DD400048(v62, v72, v71, isUniquelyReferenced_nonNull_native);
        v14 = v76[0];
        OUTLINED_FUNCTION_7_21();
        sub_1DD462FD0(v13, v64);
        v16 = v73;
        v15 = v65;
        if (v73 != v66)
        {
          continue;
        }
      }

      break;
    }
  }
}

uint64_t sub_1DD45E0CC(uint64_t a1, unint64_t a2, double a3)
{
  v6 = trunc(a3);
  if (a3 > -9.22337204e18 && a3 < 9.22337204e18 && v6 == a3)
  {
    goto LABEL_15;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (qword_1EE165FB0 != -1)
  {
LABEL_19:
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_1DD39565C(a1, a2, &v15);
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    *(v12 + 22) = 2048;
    *(v12 + 24) = a3;
    _os_log_impl(&dword_1DD38D000, v10, v11, "Rounded down value for signal %s %f -> %ld", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
    MEMORY[0x1E12B3DA0](v12, -1, -1);
  }

LABEL_15:

  return a1;
}

uint64_t sub_1DD45E2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE88, &unk_1DD64C280);
  OUTLINED_FUNCTION_3(v1);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_3();
  v61 = v3;
  v4 = OUTLINED_FUNCTION_6_2();
  v59 = type metadata accessor for ContactResolver.SignalSet(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  v58[1] = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = v58 - v8;
  v9 = OUTLINED_FUNCTION_6_2();
  v10 = type metadata accessor for Contact(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v58 - v16);
  v18 = type metadata accessor for ContactResolverRunTimeData(0);
  v62 = v0;
  sub_1DD3C4EB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = MEMORY[0x1E69E7CC0];
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v20 = *v17;
      break;
    case 3:
      break;
    default:
      sub_1DD463794();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD58, &unk_1DD649DD0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DD643F90;
      sub_1DD463794();
      break;
  }

  if (*(v20 + 16) != 1)
  {
    goto LABEL_11;
  }

  v21 = v62;
  v22 = sub_1DD45DBC4(*(v62 + *(v18 + 44)));
  v24 = v23;
  if (v22 == 0x64726143656DLL && v23 == 0xE600000000000000)
  {

LABEL_14:

    return 1;
  }

  v26 = v22;
  v27 = sub_1DD640CD8();

  if (v27)
  {
    goto LABEL_14;
  }

  if (v26 == 0x6C646E6148776172 && v24 == 0xE900000000000065)
  {
  }

  else
  {
    v30 = sub_1DD640CD8();

    if ((v30 & 1) == 0)
    {

      if (v26 != 0x6E6F436E776F6E6BLL || v24 != 0xEC00000074636174)
      {
        v32 = sub_1DD640CD8();

        result = 0;
        if (v32)
        {
          return result;
        }

        v33 = *(v21 + 296);
        v34 = v61;
        sub_1DD558EE8(v33, v61);
        matched = type metadata accessor for ContactMatchRuntimeData(0);
        if (__swift_getEnumTagSinglePayload(v34, 1, matched) == 1)
        {
          sub_1DD390754(v34, &qword_1ECCDCE88, &unk_1DD64C280);
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
          }

          v36 = sub_1DD63F9F8();
          __swift_project_value_buffer(v36, qword_1EE16F068);
          v37 = sub_1DD63F9D8();
          v38 = sub_1DD640378();
          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_42;
          }

          v39 = swift_slowAlloc();
          *v39 = 0;
          v40 = "1-person recommendation but no matches!";
LABEL_41:
          _os_log_impl(&dword_1DD38D000, v37, v38, v40, v39, 2u);
          MEMORY[0x1E12B3DA0](v39, -1, -1);
LABEL_42:

          return 0;
        }

        OUTLINED_FUNCTION_23_13();
        sub_1DD463124();
        OUTLINED_FUNCTION_7_21();
        sub_1DD462FD0(v34, v45);
        OUTLINED_FUNCTION_21_11();
        v46 = v60;
        sub_1DD463794();
        if ((*(v46 + v59[35]) & 1) != 0 || *(v46 + v59[37]) == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v46, v47);
          return 6;
        }

        v48 = (v46 + v59[33]);
        if (v48[9] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v46, v49);
          return 4;
        }

        if (v48[10] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v46, v50);
          return 2;
        }

        if (v48[12] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v46, v51);
          return 3;
        }

        if (v48[15] == 1)
        {
          OUTLINED_FUNCTION_0_45();
          sub_1DD462FD0(v46, v52);
          return 5;
        }

        v53 = v48[13];
        OUTLINED_FUNCTION_0_45();
        sub_1DD462FD0(v46, v54);
        if (v53)
        {
          return 7;
        }

        goto LABEL_58;
      }

LABEL_11:

      return 0;
    }
  }

  if (!*(v20 + 16))
  {
    __break(1u);
LABEL_58:
    v55 = *(v62 + 192);
    v56 = *(v62 + 208);
    if (v56 && v55 == 2)
    {
      return 9;
    }

    if (v55 != 1 || v56 == 0)
    {
      return 0;
    }

    return 12;
  }

  sub_1DD463124();

  v41 = *&v13[*(v10 + 80)];

  OUTLINED_FUNCTION_22_10();
  sub_1DD462FD0(v13, v42);
  if (!*(v41 + 16))
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
    }

    v44 = sub_1DD63F9F8();
    __swift_project_value_buffer(v44, qword_1EE16F068);
    v37 = sub_1DD63F9D8();
    v38 = sub_1DD640378();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_42;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "rawHandle recommendation but no handle in the contact!";
    goto LABEL_41;
  }

  v43 = *(v41 + 48);

  if (v43 == 2)
  {
    return 9;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_1DD45E9E8(uint64_t a1, uint64_t a2)
{
  v118 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v116 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v115 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  v117 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE60, &qword_1DD64C250);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  v119 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v103 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v103 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE68, &qword_1DD64C258);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v103 - v23;
  memcpy(v122, a1, sizeof(v122));
  memcpy(v121, a1, sizeof(v121));
  memcpy(v123, a2, sizeof(v123));
  memcpy(v120, a2, sizeof(v120));
  sub_1DD3C9478(v122, v125);
  sub_1DD3C9478(v123, v125);
  v25 = static ContactQuery.== infix(_:_:)(v121, v120);
  memcpy(v124, v120, sizeof(v124));
  sub_1DD3C9580(v124);
  memcpy(v125, v121, 0x108uLL);
  sub_1DD3C9580(v125);
  if ((v25 & 1) == 0 || (sub_1DD3AE238(*(a1 + 264)) & 1) == 0)
  {
    return 0;
  }

  v26 = *(a1 + 272) == *(a2 + 272) && *(a1 + 280) == *(a2 + 280);
  if (!v26 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 288) != *(a2 + 288))
  {
    return 0;
  }

  if (*(a1 + 289) != *(a2 + 289))
  {
    return 0;
  }

  if ((sub_1DD3C38A8() & 1) == 0)
  {
    return 0;
  }

  v27 = type metadata accessor for ContactResolverRunTimeData(0);
  if ((sub_1DD4621B0() & 1) == 0)
  {
    return 0;
  }

  v112 = v27;
  v28 = *(v27 + 44);
  v29 = *(a1 + v28);
  LODWORD(v113) = *(a2 + v28);
  v30 = sub_1DD45DBC4(v29);
  v114 = v31;
  if (v30 == sub_1DD45DBC4(v113) && v114 == v32)
  {
  }

  else
  {
    LODWORD(v113) = sub_1DD640CD8();

    if ((v113 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v112[12]) != *(a2 + v112[12]) || (sub_1DD3AF7EC(*(a1 + v112[13]), *(a2 + v112[13])) & 1) == 0)
  {
    return 0;
  }

  v34 = *(v21 + 48);
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_105(v24);
  if (v26)
  {
    OUTLINED_FUNCTION_105(&v24[v34]);
    if (v26)
    {
      sub_1DD390754(v24, &qword_1ECCDC1C8, qword_1DD64ADD0);
      goto LABEL_32;
    }

LABEL_29:
    v36 = &qword_1ECCDCE68;
    v37 = &qword_1DD64C258;
    v38 = v24;
LABEL_30:
    sub_1DD390754(v38, v36, v37);
    return 0;
  }

  sub_1DD3C4EB4();
  OUTLINED_FUNCTION_105(&v24[v34]);
  if (v35)
  {
    sub_1DD390754(v20, &qword_1ECCDBEE0, &unk_1DD645510);
    goto LABEL_29;
  }

  sub_1DD462CA0(&v24[v34], v16);
  v39 = sub_1DD4621B0();
  sub_1DD390754(v16, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v20, &qword_1ECCDBEE0, &unk_1DD645510);
  sub_1DD390754(v24, &qword_1ECCDC1C8, qword_1DD64ADD0);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v40 = v112[15];
  v41 = *(a1 + v40);
  v42 = *(a1 + v40 + 8);
  v44 = *(a1 + v40 + 16);
  v43 = *(a1 + v40 + 24);
  v45 = *(a1 + v40 + 32);
  v114 = *(a1 + v40 + 40);
  v46 = (a2 + v40);
  v47 = *v46;
  v48 = v46[1];
  v49 = v46[2];
  v50 = v46[3];
  v51 = v46[4];
  v52 = v46[5];
  if (v42 == 1)
  {
    if (v48 == 1)
    {
      goto LABEL_38;
    }

LABEL_36:
    v110 = *v46;
    v111 = v52;
    v113 = v49;
    sub_1DD458B8C(v110, v48);
    v53 = OUTLINED_FUNCTION_44_8();
    sub_1DD458B8C(v53, v54);
    v55 = OUTLINED_FUNCTION_44_8();
    sub_1DD447638(v55, v56);
    sub_1DD447638(v110, v48);
    return 0;
  }

  if (v48 == 1)
  {
    goto LABEL_36;
  }

  v121[0] = *v46;
  v121[1] = v48;
  v121[2] = v49;
  v121[3] = v50;
  v121[4] = v51;
  v121[5] = v52;
  v120[0] = v41;
  v120[1] = v42;
  v120[2] = v44;
  v120[3] = v43;
  v120[4] = v45;
  v120[5] = v114;
  v104 = v41;
  v105 = v43;
  v110 = v47;
  v111 = v52;
  v106 = v45;
  v107 = v50;
  v108 = v44;
  v103 = v51;
  v113 = v49;
  v109 = sub_1DD600C28(v120, v121);
  sub_1DD458B8C(v110, v48);
  v57 = v104;
  sub_1DD458B8C(v104, v42);

  sub_1DD447638(v57, v42);
  if ((v109 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v58 = v112[16];
  v59 = *(a1 + v58);
  v60 = *(a1 + v58 + 1);
  v61 = *(a1 + v58 + 2);
  v62 = *(a1 + v58 + 3);
  v63 = *(a1 + v58 + 4);
  v64 = (a2 + v58);
  v65 = *v64;
  v66 = v64[1];
  v67 = v64[2];
  v68 = v64[3];
  v69 = v64[4];
  v26 = v62 == 0;
  v70 = 0x1000000;
  if (v26)
  {
    v71 = 0;
  }

  else
  {
    v71 = 0x1000000;
  }

  v72 = v71 | (v63 << 32);
  v26 = v61 == 0;
  v73 = 0x10000;
  if (v26)
  {
    v74 = 0;
  }

  else
  {
    v74 = 0x10000;
  }

  v26 = v60 == 0;
  v75 = 256;
  if (v26)
  {
    v76 = 0;
  }

  else
  {
    v76 = 256;
  }

  v77 = v74 | v76 | v59;
  if (!v68)
  {
    v70 = 0;
  }

  v78 = v70 | (v69 << 32);
  if (!v67)
  {
    v73 = 0;
  }

  if (!v66)
  {
    v75 = 0;
  }

  if (!sub_1DD5563A8(v72 | v77, v78 | v73 | v75 | v65))
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_8();
  if (v79)
  {
    if (!v80)
    {
      return 0;
    }

    v83 = *v81 == *v82 && v79 == v80;
    if (!v83 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  if ((sub_1DD63D0C8() & 1) == 0)
  {
    return 0;
  }

  v84 = *(v11 + 48);
  v85 = v119;
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v85, 1, v118) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v119 + v84, 1, v118) == 1)
    {
      sub_1DD390754(v119, &qword_1ECCDBAC8, &qword_1DD643E60);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v86 = v119;
  sub_1DD3C4EB4();
  if (__swift_getEnumTagSinglePayload(v86 + v84, 1, v118) == 1)
  {
    (*(v116 + 8))(v117, v118);
LABEL_69:
    v36 = &qword_1ECCDCE60;
    v37 = &qword_1DD64C250;
    v38 = v119;
    goto LABEL_30;
  }

  v88 = v115;
  v87 = v116;
  v89 = v119;
  v90 = v119 + v84;
  v91 = v118;
  (*(v116 + 32))(v115, v90, v118);
  OUTLINED_FUNCTION_6_23();
  sub_1DD462C58(v92, v93, MEMORY[0x1E69695C8]);
  v94 = v117;
  v95 = sub_1DD63FD98();
  v96 = *(v87 + 8);
  v96(v88, v91);
  v96(v94, v91);
  sub_1DD390754(v89, &qword_1ECCDBAC8, &qword_1DD643E60);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  if (*(a1 + v112[20]) != *(a2 + v112[20]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_57_8();
  if (v98)
  {
    if (!v99)
    {
      return 0;
    }

    v102 = *v100 == *v101 && v98 == v99;
    if (!v102 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1DD45F378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001DD66C980 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD66C9A0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD66C880 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000020 && 0x80000001DD66C9C0 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E656D6D6F636572 && a2 == 0xEE006E6F69746164;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6974756C6F736572 && a2 == 0xEE00657079546E6FLL;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F72506563726F66 && a2 == 0xEB0000000074706DLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6F72506563726F66 && a2 == 0xEF6570795474706DLL;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000019 && 0x80000001DD66C9F0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x726E456C61697274 && a2 == 0xEF746E656D6C6C6FLL;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x546E755273756C50 && a2 == 0xEF61746144656D69;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x64497972657571 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6974756C6F736572 && a2 == 0xEC00000064496E6FLL;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x80000001DD66CA10 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD00000000000001BLL && 0x80000001DD66CA30 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1DD640CD8();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

unint64_t sub_1DD45F900(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000020;
      break;
    case 5:
      result = 0x7365686374616DLL;
      break;
    case 6:
      result = 0x6E656D6D6F636572;
      break;
    case 7:
    case 15:
      result = 0x6974756C6F736572;
      break;
    case 8:
    case 9:
      result = 0x6F72506563726F66;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x726E456C61697274;
      break;
    case 12:
      result = 0x546E755273756C50;
      break;
    case 13:
      result = 0x4974736575716572;
      break;
    case 14:
      result = 0x64497972657571;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD45FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v25 = v23;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE58, &qword_1DD64C248);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v43 - v32;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DD462C04();
  sub_1DD640EF8();
  memcpy(v50, v25, 0x108uLL);
  memcpy(v49, v25, sizeof(v49));
  sub_1DD3C9478(v50, v48);
  sub_1DD4236C0();
  OUTLINED_FUNCTION_9_18();
  sub_1DD640C68();
  if (v24)
  {
    memcpy(v48, v49, sizeof(v48));
    sub_1DD3C9580(v48);
  }

  else
  {
    memcpy(v48, v49, sizeof(v48));
    sub_1DD3C9580(v48);
    LOBYTE(v45) = *(v25 + 264);
    sub_1DD45A79C();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    LOBYTE(v45) = 2;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640C18();
    LOBYTE(v45) = 3;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    LOBYTE(v45) = 4;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    *&v45 = *(v25 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462DB8(&qword_1EE163928, &qword_1EE1640D0, &unk_1DD64C080, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_11_21();
    sub_1DD640C68();
    v44 = type metadata accessor for ContactResolverRunTimeData(0);
    LOBYTE(v45) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
    sub_1DD462E54(&unk_1EE1659C0, &protocol conformance descriptor for <A> Recommendation<A>);
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C68();
    LOBYTE(v45) = *(v25 + v44[11]);
    sub_1DD45A844();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    LOBYTE(v45) = 8;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    LOBYTE(v45) = *(v25 + v44[13]);
    sub_1DD462F28();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    LOBYTE(v45) = 10;
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C08();
    v34 = (v25 + v44[15]);
    v35 = v34[1];
    v45 = *v34;
    v46 = v35;
    v47 = v34[2];
    sub_1DD45A748();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C08();
    v36 = (v25 + v44[16]);
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[2];
    v40 = v36[3];
    LOBYTE(v36) = v36[4];
    LOBYTE(v45) = v37;
    BYTE1(v45) = v38;
    BYTE2(v45) = v39;
    BYTE3(v45) = v40;
    BYTE4(v45) = v36;
    sub_1DD462F7C();
    OUTLINED_FUNCTION_3_25();
    sub_1DD640C68();
    LOBYTE(v45) = 13;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640BC8();
    LOBYTE(v45) = 14;
    sub_1DD63D0F8();
    OUTLINED_FUNCTION_6_23();
    sub_1DD462C58(v41, v42, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C68();
    LOBYTE(v45) = 15;
    OUTLINED_FUNCTION_8_17();
    sub_1DD640C08();
    LOBYTE(v45) = 16;
    OUTLINED_FUNCTION_9_18();
    sub_1DD640C28();
    LOBYTE(v45) = 17;
    OUTLINED_FUNCTION_11_21();
    sub_1DD640BC8();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_86();
}

void sub_1DD460090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v95 = v23;
  v25 = v24;
  v81 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v27);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_3();
  v82 = v29;
  OUTLINED_FUNCTION_6_2();
  v30 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v93 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v83 = v34 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  OUTLINED_FUNCTION_3(v35);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_3();
  v88 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7_3();
  v89 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE48, &qword_1DD64C238);
  OUTLINED_FUNCTION_0();
  v84 = v42;
  v85 = v41;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v79 - v44;
  v46 = type metadata accessor for ContactResolverRunTimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2();
  v50 = v49 - v48;
  *v50 = 0;
  *(v50 + 8) = 0xE000000000000000;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0xE000000000000000;
  *(v50 + 40) = 0;
  *(v50 + 48) = 0xE000000000000000;
  *(v50 + 56) = 0;
  *(v50 + 64) = 0xE000000000000000;
  *(v50 + 72) = 0;
  *(v50 + 80) = 0xE000000000000000;
  *(v50 + 88) = 0;
  *(v50 + 96) = 0xE000000000000000;
  *(v50 + 104) = 0;
  *(v50 + 112) = 0xE000000000000000;
  *(v50 + 120) = 0;
  *(v50 + 128) = 0xE000000000000000;
  *(v50 + 136) = 0;
  *(v50 + 144) = 0xE000000000000000;
  *(v50 + 152) = 0;
  *(v50 + 160) = 0xE000000000000000;
  *(v50 + 216) = 0u;
  *(v50 + 200) = 0u;
  *(v50 + 184) = 0u;
  *(v50 + 168) = 0u;
  v51 = MEMORY[0x1E69E7CC0];
  *(v50 + 232) = 0;
  *(v50 + 240) = v51;
  *(v50 + 248) = 1;
  *(v50 + 256) = 0;
  v53 = *(v52 + 52);
  *(v50 + v53) = 5;
  v96 = *(v52 + 56);
  __swift_storeEnumTagSinglePayload(v50 + v96, 1, 1, v38);
  v90 = *(v46 + 72);
  sub_1DD63D0E8();
  v86 = v46;
  v91 = *(v46 + 76);
  v94 = v30;
  __swift_storeEnumTagSinglePayload(v50 + v91, 1, 1, v30);
  v54 = v25[3];
  v92 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v54);
  sub_1DD462C04();
  v55 = v95;
  sub_1DD640ED8();
  if (v55)
  {
    OUTLINED_FUNCTION_4_25();
    __swift_destroy_boxed_opaque_existential_1(v92);
    memcpy(v105, v50, 0x108uLL);
    sub_1DD3C9580(v105);

    sub_1DD390754(v50 + v96, &qword_1ECCDC1C8, qword_1DD64ADD0);
    sub_1DD447638(v38, 1);

    (*(v93 + 8))(v50 + v90, v94);
    sub_1DD390754(v50 + v91, &qword_1ECCDBAC8, &qword_1DD643E60);
  }

  else
  {
    v87 = v53;
    v56 = v89;
    v95 = v38;
    v57 = v84;
    sub_1DD42366C();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640B78();
    memcpy(v103, v105, sizeof(v103));
    memcpy(v104, v50, sizeof(v104));
    sub_1DD3C9580(v104);
    memcpy(v50, v103, 0x108uLL);
    sub_1DD45AA4C();
    OUTLINED_FUNCTION_30_10();
    sub_1DD640B78();
    *(v50 + 264) = v97;
    OUTLINED_FUNCTION_28_6(2);
    v80 = v45;
    *(v50 + 272) = sub_1DD640B28();
    *(v50 + 280) = v58;
    v79[2] = v58;
    OUTLINED_FUNCTION_28_6(3);
    OUTLINED_FUNCTION_14_20();
    *(v50 + 288) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_28_6(4);
    OUTLINED_FUNCTION_14_20();
    *(v50 + 289) = sub_1DD640B38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462DB8(&qword_1EE1602C8, &qword_1EE161758, &unk_1DD64C0A8, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v50 + 296) = v97;
    LOBYTE(v97) = 6;
    sub_1DD462E54(qword_1EE162E48, &protocol conformance descriptor for <A> Recommendation<A>);
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    sub_1DD462CA0(v56, v50 + v86[10]);
    sub_1DD45ABD8();
    OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v50 + v86[11]) = v97;
    OUTLINED_FUNCTION_28_6(8);
    OUTLINED_FUNCTION_14_20();
    *(v50 + v86[12]) = sub_1DD640B38() & 1;
    sub_1DD462D10();
    OUTLINED_FUNCTION_30_10();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    *(v50 + v87) = v97;
    LOBYTE(v97) = 10;
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    sub_1DD3E6284();
    sub_1DD45A9F8();
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    v59 = (v50 + v86[15]);
    v60 = v98;
    v61 = v99;
    v62 = v100;
    v63 = v101;
    v64 = v102;
    v79[0] = v99;
    v79[1] = v97;
    *v59 = v97;
    v59[1] = v60;
    v59[2] = v61;
    v59[3] = v62;
    v88 = v63;
    v89 = v62;
    v59[4] = v63;
    v59[5] = v64;
    v87 = v64;
    sub_1DD462D64();
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    v65 = (v50 + v86[16]);
    v66 = BYTE1(v97);
    v67 = BYTE2(v97);
    v68 = BYTE3(v97);
    v69 = BYTE4(v97);
    *v65 = v97;
    v65[1] = v66;
    v65[2] = v67;
    v65[3] = v68;
    v65[4] = v69;
    LOBYTE(v97) = 13;
    OUTLINED_FUNCTION_14_20();
    v70 = sub_1DD640AD8();
    v95 = v71;
    v72 = (v50 + v86[17]);
    *v72 = v70;
    v72[1] = v71;
    LOBYTE(v97) = 14;
    OUTLINED_FUNCTION_6_23();
    sub_1DD462C58(v73, v74, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_53_5();
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B78();
    (*(v93 + 40))(v50 + v90, v83, v94);
    LOBYTE(v97) = 15;
    OUTLINED_FUNCTION_14_20();
    sub_1DD640B18();
    sub_1DD3E6284();
    LOBYTE(v97) = 16;
    OUTLINED_FUNCTION_14_20();
    *(v50 + v86[20]) = sub_1DD640B38() & 1;
    LOBYTE(v97) = 17;
    OUTLINED_FUNCTION_14_20();
    v75 = sub_1DD640AD8();
    v77 = v76;
    v78 = (v50 + v86[21]);
    (*(v57 + 8))(v80, v85);
    *v78 = v75;
    v78[1] = v77;
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v92);
    sub_1DD462FD0(v50, type metadata accessor for ContactResolverRunTimeData);
  }

  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD460B34(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DD460B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD45F378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD460BB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD45F8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD460BD8(uint64_t a1)
{
  v2 = sub_1DD462C04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD460C14(uint64_t a1)
{
  v2 = sub_1DD462C04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD460C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD460B34(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD460CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD45DBC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD460DB4()
{
  OUTLINED_FUNCTION_18_7();
  static Contact.== infix(_:_:)();
  if (v3 & 1) != 0 && (matched = type metadata accessor for ContactMatchRuntimeData(0), v5 = OUTLINED_FUNCTION_50_9(matched), static ContactResolver.SignalSet.== infix(_:_:)(v5, v6)) && ((v9 = OUTLINED_FUNCTION_32_9(), v11) ? (v11 = v9 == v10) : (v11 = 0), v11 && (sub_1DD3C3E7C(*(v7 + 16), *(v8 + 16)) & 1) != 0 && (sub_1DD4747FC(*(v1 + *(v2 + 28)), *(v0 + *(v2 + 28))), (v12) && (OUTLINED_FUNCTION_56_5(), v11)))
  {
    OUTLINED_FUNCTION_42_6();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1DD460E48(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE80, &unk_1DD64C270);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DD463028();
  OUTLINED_FUNCTION_59_4(&type metadata for ContactMatchRuntimeData.CodingKeys, v10, v9);
  v23 = 0;
  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_19_14();
  sub_1DD462C58(v11, v12, &protocol conformance descriptor for Contact);
  OUTLINED_FUNCTION_56();
  sub_1DD640C68();
  if (!v1)
  {
    type metadata accessor for ContactMatchRuntimeData(0);
    v13 = OUTLINED_FUNCTION_43_9();
    type metadata accessor for ContactResolver.SignalSet(v13);
    OUTLINED_FUNCTION_18_16();
    sub_1DD462C58(v14, v15, &protocol conformance descriptor for ContactResolver.SignalSet);
    OUTLINED_FUNCTION_56();
    sub_1DD640C68();
    v16 = OUTLINED_FUNCTION_48_9();
    v18 = *(v17 + 16);
    v23 = v19;
    v24 = v16;
    v25 = v18;
    v22[7] = 2;
    v20 = sub_1DD46317C();

    OUTLINED_FUNCTION_56();
    sub_1DD640C68();

    if (!v20)
    {
      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_10_4();
      sub_1DD640C68();
      v23 = 4;
      OUTLINED_FUNCTION_56();
      sub_1DD640C38();
      v23 = 5;
      OUTLINED_FUNCTION_10_4();
      sub_1DD640C28();
    }
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1DD4610C4()
{
  OUTLINED_FUNCTION_93();
  v32 = v0;
  v2 = v1;
  v29[0] = v3;
  type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE78, &qword_1DD64C268);
  OUTLINED_FUNCTION_0();
  v29[1] = v7;
  v29[2] = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = v2[3];
  v33 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v15);
  sub_1DD463028();
  v31 = v10;
  v16 = v32;
  sub_1DD640ED8();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    LOBYTE(v34) = 0;
    OUTLINED_FUNCTION_19_14();
    sub_1DD462C58(v17, v18, &protocol conformance descriptor for Contact);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    sub_1DD463794();
    LOBYTE(v34) = 1;
    OUTLINED_FUNCTION_18_16();
    sub_1DD462C58(v19, v20, &protocol conformance descriptor for ContactResolver.SignalSet);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    v21 = matched;
    OUTLINED_FUNCTION_21_11();
    sub_1DD463794();
    sub_1DD46307C();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    v22 = OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_46_2(v23, v22);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B78();
    *(v14 + v21[7]) = v34;
    OUTLINED_FUNCTION_55_5(4);
    OUTLINED_FUNCTION_36_8();
    sub_1DD640B48();
    *(v14 + v21[8]) = v24;
    OUTLINED_FUNCTION_55_5(5);
    OUTLINED_FUNCTION_36_8();
    v25 = sub_1DD640B38();
    v26 = OUTLINED_FUNCTION_39_6();
    v27(v26);
    *(v14 + v21[9]) = v25 & 1;
    OUTLINED_FUNCTION_17_17();
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_7_21();
    sub_1DD462FD0(v14, v28);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD461554()
{
  OUTLINED_FUNCTION_18_7();
  v3 = *(v1 + 16);
  v4 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v4 || (sub_1DD640CD8()) && (sub_1DD3C3778(), (v5) && (matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0), v7 = OUTLINED_FUNCTION_50_9(matched), sub_1DD55EFCC(v7, v8)) && ((v9 = OUTLINED_FUNCTION_32_9(), v4) ? (v11 = v9 == v10) : (v11 = 0), v11 && (sub_1DD3C37FC(), (v12) && (sub_1DD4747FC(*(v1 + *(v3 + 28)), *(v0 + *(v3 + 28))), (v13) && (OUTLINED_FUNCTION_56_5(), v4)))
  {
    OUTLINED_FUNCTION_42_6();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1DD461610()
{
  OUTLINED_FUNCTION_18_7();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_27(0x65756C6176, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x736C616E676973 && v0 == 0xE700000000000000;
    if (v5 || (OUTLINED_FUNCTION_27(0x736C616E676973, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v6 = v1 == 0xD000000000000011 && 0x80000001DD66CA50 == v0;
      if (v6 || (OUTLINED_FUNCTION_27(0xD000000000000011, 0x80000001DD66CA50) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x7365727574616566 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_27(0x7365727574616566, 0xE800000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x65726F6373 && v0 == 0xE500000000000000;
          if (v8 || (OUTLINED_FUNCTION_27(0x65726F6373, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v9 = OUTLINED_FUNCTION_45_7();
            if (v1 == v9 && v0 == v10)
            {

              return 5;
            }

            else
            {
              v12 = OUTLINED_FUNCTION_27(v9, v10);

              if (v12)
              {
                return 5;
              }

              else
              {
                return 6;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD461798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCEC8, &qword_1DD64C550);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DD4636EC();
  OUTLINED_FUNCTION_59_4(&type metadata for PrivatizedContactMatchRuntimeData.CodingKeys, v12, v11);
  v22 = *v3;
  v23 = *(v3 + 1);
  HIBYTE(v21) = 0;
  sub_1DD463840();
  OUTLINED_FUNCTION_10_4();
  sub_1DD640C68();
  if (!v2)
  {
    type metadata accessor for PrivatizedContactMatchRuntimeData(0);
    v13 = OUTLINED_FUNCTION_43_9();
    type metadata accessor for PrivatizedSignalSet(v13);
    OUTLINED_FUNCTION_16_17();
    sub_1DD462C58(v14, v15, &unk_1DD65BCAC);
    OUTLINED_FUNCTION_56();
    sub_1DD640C68();
    v16 = OUTLINED_FUNCTION_48_9();
    v18 = *(v17 + 16);
    LOBYTE(v22) = v19;
    *&v23 = v16;
    *(&v23 + 1) = v18;
    HIBYTE(v21) = 2;
    sub_1DD463894();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
    LOBYTE(v22) = 4;
    OUTLINED_FUNCTION_56();
    sub_1DD640C38();
    LOBYTE(v22) = 5;
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C28();
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1DD4619E0()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  type metadata accessor for PrivatizedSignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCEA0, &qword_1DD64C548);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v19 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DD4636EC();
  sub_1DD640ED8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1DD463740();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    *v8 = v20;
    *(v8 + 8) = v21;
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_16_17();
    sub_1DD462C58(v9, v10, &unk_1DD65BCD4);
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    sub_1DD463794();
    sub_1DD4637EC();
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    v11 = OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_46_2(v12, v11);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B78();
    *(v8 + matched[7]) = v20;
    OUTLINED_FUNCTION_55_5(4);
    OUTLINED_FUNCTION_37_11();
    sub_1DD640B48();
    *(v8 + matched[8]) = v13;
    OUTLINED_FUNCTION_55_5(5);
    OUTLINED_FUNCTION_37_11();
    v14 = sub_1DD640B38();
    v15 = OUTLINED_FUNCTION_13_18();
    v16(v15);
    *(v8 + matched[9]) = v14 & 1;
    sub_1DD463124();
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_20_12();
    sub_1DD462FD0(v8, v17);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD461E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD460E40();
  *a1 = result;
  return result;
}

uint64_t sub_1DD461E34(uint64_t a1)
{
  v2 = sub_1DD463028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD461E70(uint64_t a1)
{
  v2 = sub_1DD463028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD461EE0(uint64_t a1)
{
  v2 = sub_1DD4636EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD461F1C(uint64_t a1)
{
  v2 = sub_1DD4636EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

SiriInference::ForcePromptType_optional __swiftcall ForcePromptType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ForcePromptType.rawValue.getter()
{
  result = 0x6D6F646E6172;
  switch(*v0)
  {
    case 1:
      result = 0x53554C506D6F7266;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0x6167654D6D6F7266;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DD4620CC@<X0>(unint64_t *a1@<X8>)
{
  result = ForcePromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD4621B0()
{
  v0 = type metadata accessor for Contact(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE70, &qword_1DD64C260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v17 = *(v16 + 56);
  sub_1DD3C4EB4();
  sub_1DD3C4EB4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C4EB4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v28;
        sub_1DD463794();
        static Contact.== infix(_:_:)();
        v20 = v22;
        sub_1DD462FD0(v21, type metadata accessor for Contact);
        v23 = v9;
        goto LABEL_15;
      }

      v18 = v9;
      goto LABEL_12;
    case 2u:
      sub_1DD3C4EB4();
      v19 = *v6;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v20 = sub_1DD3C3CE8(v19, *&v15[v17]);

        goto LABEL_16;
      }

      goto LABEL_13;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_13;
      }

      sub_1DD390754(v15, &qword_1ECCDBEE0, &unk_1DD645510);
      v20 = 1;
      return v20 & 1;
    default:
      sub_1DD3C4EB4();
      if (swift_getEnumCaseMultiPayload())
      {
        v18 = v12;
LABEL_12:
        sub_1DD462FD0(v18, type metadata accessor for Contact);
LABEL_13:
        sub_1DD390754(v15, &qword_1ECCDCE70, &qword_1DD64C260);
        v20 = 0;
      }

      else
      {
        v24 = v27;
        sub_1DD463794();
        static Contact.== infix(_:_:)();
        v20 = v25;
        sub_1DD462FD0(v24, type metadata accessor for Contact);
        v23 = v12;
LABEL_15:
        sub_1DD462FD0(v23, type metadata accessor for Contact);
LABEL_16:
        sub_1DD390754(v15, &qword_1ECCDBEE0, &unk_1DD645510);
      }

      return v20 & 1;
  }
}

unint64_t sub_1DD4625DC()
{
  result = qword_1ECCDCE38;
  if (!qword_1ECCDCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD462764(uint64_t a1)
{
  sub_1DD4629B8(319, &qword_1EE163930, type metadata accessor for ContactMatchRuntimeData, MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DD4629B8(319, &unk_1EE166040, type metadata accessor for Contact, type metadata accessor for Recommendation);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1DD462A1C(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1DD3EBBE4(319, &qword_1EE165590, &type metadata for TrialEnrollment);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1EE163958, MEMORY[0x1E69E6158]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            v12 = sub_1DD63D0F8();
            if (v13 > 0x3F)
            {
              return v12;
            }

            sub_1DD4629B8(319, &qword_1EE165CC0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
            if (v14 > 0x3F)
            {
              return v12;
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

void sub_1DD4629B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD462A1C(uint64_t a1)
{
  if (!qword_1EE166038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBEE0, &unk_1DD645510);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE166038);
    }
  }
}

uint64_t sub_1DD462AA8(uint64_t a1)
{
  result = type metadata accessor for Contact(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ContactResolver.SignalSet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD462B5C()
{
  result = qword_1ECCDCE40;
  if (!qword_1ECCDCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE40);
  }

  return result;
}

unint64_t sub_1DD462BB0()
{
  result = qword_1EE1651E0;
  if (!qword_1EE1651E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651E0);
  }

  return result;
}

unint64_t sub_1DD462C04()
{
  result = qword_1EE163E18[0];
  if (!qword_1EE163E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163E18);
  }

  return result;
}

uint64_t sub_1DD462C58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD462CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD462D10()
{
  result = qword_1EE162960;
  if (!qword_1EE162960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162960);
  }

  return result;
}

unint64_t sub_1DD462D64()
{
  result = qword_1EE162958;
  if (!qword_1EE162958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162958);
  }

  return result;
}

uint64_t sub_1DD462DB8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCE50, &qword_1DD64C240);
    sub_1DD462C58(a2, type metadata accessor for ContactMatchRuntimeData, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD462E54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBEE0, &unk_1DD645510);
    sub_1DD462C58(&qword_1EE163B38, type metadata accessor for Contact, &protocol conformance descriptor for Contact);
    sub_1DD462C58(&qword_1EE163B40, type metadata accessor for Contact, &protocol conformance descriptor for Contact);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD462F28()
{
  result = qword_1EE165670[0];
  if (!qword_1EE165670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165670);
  }

  return result;
}

unint64_t sub_1DD462F7C()
{
  result = qword_1EE165648;
  if (!qword_1EE165648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165648);
  }

  return result;
}

uint64_t sub_1DD462FD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1DD463028()
{
  result = qword_1EE1640E8[0];
  if (!qword_1EE1640E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1640E8);
  }

  return result;
}

unint64_t sub_1DD46307C()
{
  result = qword_1EE162BF0;
  if (!qword_1EE162BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162BF0);
  }

  return result;
}

unint64_t sub_1DD4630D0()
{
  result = qword_1EE161750;
  if (!qword_1EE161750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161750);
  }

  return result;
}

uint64_t sub_1DD463124()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

unint64_t sub_1DD46317C()
{
  result = qword_1EE165820;
  if (!qword_1EE165820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165820);
  }

  return result;
}

unint64_t sub_1DD4631D0()
{
  result = qword_1EE164090;
  if (!qword_1EE164090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164090);
  }

  return result;
}

unint64_t sub_1DD463224()
{
  result = qword_1EE165668;
  if (!qword_1EE165668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165668);
  }

  return result;
}

uint64_t sub_1DD4632C0(uint64_t a1)
{
  result = type metadata accessor for PrivatizedSignalSet(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolverRunTimeData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactResolverRunTimeData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4634E0()
{
  result = qword_1ECCDCE90;
  if (!qword_1ECCDCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE90);
  }

  return result;
}

unint64_t sub_1DD463538()
{
  result = qword_1ECCDCE98;
  if (!qword_1ECCDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCE98);
  }

  return result;
}

unint64_t sub_1DD463590()
{
  result = qword_1EE1640D8;
  if (!qword_1EE1640D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1640D8);
  }

  return result;
}

unint64_t sub_1DD4635E8()
{
  result = qword_1EE1640E0;
  if (!qword_1EE1640E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1640E0);
  }

  return result;
}

unint64_t sub_1DD463640()
{
  result = qword_1EE163E08;
  if (!qword_1EE163E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163E08);
  }

  return result;
}

unint64_t sub_1DD463698()
{
  result = qword_1EE163E10;
  if (!qword_1EE163E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163E10);
  }

  return result;
}

unint64_t sub_1DD4636EC()
{
  result = qword_1ECCDCEA8;
  if (!qword_1ECCDCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEA8);
  }

  return result;
}

unint64_t sub_1DD463740()
{
  result = qword_1ECCDCEB0;
  if (!qword_1ECCDCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEB0);
  }

  return result;
}

uint64_t sub_1DD463794()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

unint64_t sub_1DD4637EC()
{
  result = qword_1ECCDCEC0;
  if (!qword_1ECCDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEC0);
  }

  return result;
}

unint64_t sub_1DD463840()
{
  result = qword_1ECCDCED0;
  if (!qword_1ECCDCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCED0);
  }

  return result;
}

unint64_t sub_1DD463894()
{
  result = qword_1ECCDCEE0;
  if (!qword_1ECCDCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEE0);
  }

  return result;
}

uint64_t _s7MeasureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD463970(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD463A50()
{
  result = qword_1ECCDCEE8;
  if (!qword_1ECCDCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEE8);
  }

  return result;
}

unint64_t sub_1DD463AA8()
{
  result = qword_1ECCDCEF0;
  if (!qword_1ECCDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEF0);
  }

  return result;
}

unint64_t sub_1DD463B00()
{
  result = qword_1ECCDCEF8;
  if (!qword_1ECCDCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCEF8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_46_2@<X0>(char a1@<W8>, double a2@<D0>)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = v2;
  *(v4 - 65) = 3;

  return sub_1DD4630D0();
}

unint64_t OUTLINED_FUNCTION_47_7()
{
  *(v2 - 88) = *(v0 + *(v1 + 28));
  *(v2 - 89) = 3;

  return sub_1DD4631D0();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640EF8();
}

uint64_t sub_1DD463DAC(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC6C4();
    v7 = v8;
  }

  v9 = *(v7 + 16);
  v11[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v11[1] = v9;
  result = sub_1DD465B44(v11, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1DD463E6C(char a1)
{
  v5 = sub_1DD640F28();
  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  if (a1)
  {
    v2 = 0xD000000000000024;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v3 = "missingDataFromTaskId";
  }

  else
  {
    v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  }

  MEMORY[0x1E12B2260](v2, v3 | 0x8000000000000000);

  return v5;
}

uint64_t sub_1DD463F00()
{
  v1 = sub_1DD640F28();
  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  MEMORY[0x1E12B2260](0xD000000000000018, 0x80000001DD668AF0);
  return v1;
}

uint64_t sub_1DD463F6C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _OWORD *a7@<X8>)
{
  v182 = a5;
  v183 = a6;
  v188 = a4;
  v181 = a3;
  v186 = a2;
  v184 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v191 = &v180[-v10];
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v11 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v196 = &v180[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_0();
  v187 = v14;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_0();
  v197 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  v198 = v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_0();
  v189 = v20;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v180[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v201 = &v180[-v25];
  v185 = a1;
  v26 = *(a1 + 37);
  v27 = v26[2];
  v28 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69964B0];
  v30 = &qword_1DD643000;
  v200 = v11;
  v204 = v26;
  v192 = v23;
  v195 = v27;
  if (!v27)
  {
    v30 = 0;
    goto LABEL_32;
  }

  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_11_22();
  v193 = v26 + v31;
  *&v194 = v32;
  OUTLINED_FUNCTION_6_24(*v29);
  v190 = xmmword_1DD643F90;
  v208 = xmmword_1DD642F70;
  do
  {
    if (v33 >= v26[2])
    {
      goto LABEL_145;
    }

    v203 = v28;
    v34 = OUTLINED_FUNCTION_19_15();
    v35 = v201;
    sub_1DD3CD140(v34, v201);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(v35 + v194);
    v39 = *(v38 + 16);
    if (v39)
    {
      v216 = MEMORY[0x1E69E7CC0];

      OUTLINED_FUNCTION_21_12();
      v40 = 0;
      v41 = (v38 + 32);
      v30 = v216;
      v209 = v39 - 1;
      v210 = v36;
      *&v207 = v38;
      while (1)
      {
        v42 = *(v38 + 16);
        if (v40 >= v42)
        {
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        memcpy(v214, v41, 0x4AuLL);
        v211 = v214[7];
        v212 = v214[8];
        OUTLINED_FUNCTION_3_26();

        sub_1DD3C6A40(v214, v213);
        v7 = sub_1DD3B7F10();

        v35 = &v211;
        if (OUTLINED_FUNCTION_13_19(v215, MEMORY[0x1E69E6158]))
        {
          break;
        }

        v35 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v46 = sub_1DD40B8E0();
        sub_1DD415480(v46);
        if (v47)
        {
          OUTLINED_FUNCTION_20_13();
          goto LABEL_11;
        }

        sub_1DD3C6A9C(v214);

        v7 = 0xE000000000000000;
LABEL_12:
        v216 = v30;
        v49 = *(v30 + 16);
        v48 = *(v30 + 24);
        if (v49 >= v48 >> 1)
        {
          v52 = OUTLINED_FUNCTION_7_22(v48);
          sub_1DD42B7A0(v52, v49 + 1, 1);
          v30 = v216;
        }

        *(v30 + 16) = v49 + 1;
        OUTLINED_FUNCTION_17_18();
        OUTLINED_FUNCTION_5_29(v50);
        if (v51)
        {

          v26 = v204;
          v23 = v192;
          goto LABEL_19;
        }

        v41 += 80;
        v40 = (v40 + 1);
        v38 = v207;
      }

      sub_1DD63FDA8();
      v43 = OUTLINED_FUNCTION_4_26();
      v45 = v44(v43);

      sub_1DD63FDD8();
      OUTLINED_FUNCTION_20_13();

LABEL_11:
      sub_1DD3C6A9C(v214);

      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v30 = swift_allocObject();
    *(v30 + 16) = v190;
    *(v30 + 32) = v36;
    *(v30 + 40) = v37;
    OUTLINED_FUNCTION_1_35(v30);

LABEL_19:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v201, v53);
    v54 = *(v30 + 16);
    v28 = v203;
    v55 = v203[2];
    if (__OFADD__(v55, v54))
    {
      goto LABEL_146;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v55 + v54 > (v28[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v28 = v56;
    }

    v11 = v200;
    if (*(v30 + 16))
    {
      OUTLINED_FUNCTION_9_19();
      if (v58 != v59)
      {
        goto LABEL_154;
      }

      OUTLINED_FUNCTION_8_18(&v28[10 * v57]);
      swift_arrayInitWithCopy();

      v60 = v199;
      if (v54)
      {
        v61 = v28[2];
        v59 = __OFADD__(v61, v54);
        v62 = v61 + v54;
        if (v59)
        {
          goto LABEL_157;
        }

        v28[2] = v62;
      }
    }

    else
    {

      v60 = v199;
      if (v54)
      {
        goto LABEL_147;
      }
    }

    v33 = v60 + 1;
  }

  while (v33 != v195);
  v30 = v26[2];
LABEL_32:
  v63 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  while (v30 != v63)
  {
    if (v63 >= v26[2])
    {
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      swift_once();
LABEL_119:
      v138 = sub_1DD63F9F8();
      v139 = __swift_project_value_buffer(v138, qword_1EE16F068);

      v210 = v139;
      v140 = sub_1DD63F9D8();
      v141 = sub_1DD640368();

      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v214[0] = v143;
        *v142 = 136315906;
        v144 = MEMORY[0x1E12B2430](v28, &type metadata for StitchablePerson);
        sub_1DD39565C(v144, v145, v214);
        OUTLINED_FUNCTION_22_11();
        *(v142 + 4) = v28;
        *(v142 + 12) = 2080;
        v146 = MEMORY[0x1E12B2430](v26, &type metadata for StitchablePerson);
        sub_1DD39565C(v146, v147, v214);
        OUTLINED_FUNCTION_22_11();
        *(v142 + 14) = v28;
        *(v142 + 22) = 2080;
        v148 = MEMORY[0x1E12B2430](v204, &type metadata for StitchablePerson);
        sub_1DD39565C(v148, v149, v214);
        OUTLINED_FUNCTION_22_11();
        *(v142 + 24) = v28;
        *(v142 + 32) = 2080;
        v150 = MEMORY[0x1E12B2430](v30, &type metadata for StitchablePerson);
        v152 = sub_1DD39565C(v150, v151, v214);

        *(v142 + 34) = v152;
        _os_log_impl(&dword_1DD38D000, v140, v141, "allPersons=%s\nnlxPersons=%s\nstdPersons=%s\ncorrectPersons=%s", v142, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v143, -1, -1);
        MEMORY[0x1E12B3DA0](v142, -1, -1);
      }

      if ((v188 & 1) != 0 && !*(v30 + 16))
      {

        v163 = sub_1DD63F9D8();
        v164 = sub_1DD640378();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_1DD38D000, v163, v164, "task is successful but has no StitchablePersons.", v165, 2u);
          MEMORY[0x1E12B3DA0](v165, -1, -1);
        }

        sub_1DD465568(0xD00000000000008CLL, 0x80000001DD66CA70, 0xD00000000000006FLL, 0x80000001DD66CB00, 92);
        sub_1DD458B24(v186);
        result = OUTLINED_FUNCTION_2_25();
        v167 = v184;
        *v184 = xmmword_1DD64C660;
        v167[1] = 0u;
        v167[2] = 0u;
        v167[3] = 0u;
        v167[4] = 0u;
        *(v167 + 10) = 0;
        return result;
      }

      v153 = v185;
      memcpy(v214, v185, 0x108uLL);
      memcpy(v213, v185, sizeof(v213));
      sub_1DD3C9478(v214, &v211);
      v7 = sub_1DD422F70(v213);
      v154 = v153[248];
      v155 = type metadata accessor for ContactResolverRunTimeData(0);
      v156 = sub_1DD43D87C();
      LOBYTE(v37) = v156;
      v157 = v153[*(v155 + 48)];
      v35 = v203;
      v40 = v201;
      LODWORD(v209) = v154;
      LODWORD(v208) = v157;
      if ((v188 & 1) == 0)
      {
        v160 = v156;
        v161 = v7;
        LODWORD(v207) = 0;
        LODWORD(v210) = 0;
        v206 = 0;
        v205 = 0;
        LODWORD(matched) = 0;
        v109 = -1;
        v162 = -1;
        goto LABEL_140;
      }

      v158 = sub_1DD465730(v30);
      v159 = sub_1DD465730(v30);
      LODWORD(v210) = v159;
      LODWORD(v42) = sub_1DD465730(v30);
      LODWORD(v207) = v158;
      v206 = v42;
      if (v159)
      {
        v205 = v42 ^ 1;
        if ((v42 ^ 1))
        {
          goto LABEL_138;
        }

        goto LABEL_132;
      }

LABEL_130:
      if ((v42 & 1) == 0)
      {
        goto LABEL_137;
      }

      v205 = 0;
LABEL_132:
      LODWORD(matched) = v210 ^ 1;
      goto LABEL_139;
    }

    v7 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v65 = v26 + v7;
    v66 = *(v11 + 72);
    sub_1DD3CD140(&v65[v66 * v63], v23);
    OUTLINED_FUNCTION_16_18();
    if (v51)
    {
      sub_1DD3CD200(v23, v189);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v214[0] = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_21();
        v64 = v214[0];
      }

      v70 = *(v64 + 16);
      v69 = *(v64 + 24);
      if (v70 >= v69 >> 1)
      {
        OUTLINED_FUNCTION_15_18(v69);
        v64 = v214[0];
      }

      ++v63;
      *(v64 + 16) = v70 + 1;
      sub_1DD3CD200(v189, v64 + v7 + v70 * v66);
      v11 = v200;
      v26 = v204;
      v23 = v192;
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_1DD467AE8(v23, v67);
      ++v63;
      v26 = v204;
    }
  }

  v214[0] = v64;

  sub_1DD463DAC(v214, sub_1DD466978, sub_1DD465E9C);
  v189 = 0;

  v71 = v214[0];
  v72 = *(v214[0] + 16);
  v203 = v28;
  v73 = v200;
  v195 = v72;
  if (!v72)
  {

    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_11_22();
  v193 = (v71 + v74);
  *&v194 = v75;
  OUTLINED_FUNCTION_6_24(*MEMORY[0x1E69964B0]);
  v190 = xmmword_1DD643F90;
  v208 = xmmword_1DD642F70;
  v26 = MEMORY[0x1E69E7CC0];
  v192 = v71;
  while (2)
  {
    if (v76 >= *(v71 + 16))
    {
      goto LABEL_148;
    }

    v77 = OUTLINED_FUNCTION_19_15();
    v78 = v198;
    sub_1DD3CD140(v77, v198);
    v79 = *v78;
    v80 = v78[1];
    v37 = *(v78 + v194);
    v81 = *(v37 + 16);
    if (v81)
    {
      v201 = v26;
      v216 = MEMORY[0x1E69E7CC0];

      v35 = &v216;
      sub_1DD42B7A0(0, v81, 0);
      v40 = 0;
      v82 = (v37 + 32);
      v30 = v216;
      v209 = v81 - 1;
      v210 = v79;
      *&v207 = v37;
      while (1)
      {
        v42 = *(v37 + 16);
        if (v40 >= v42)
        {
          goto LABEL_129;
        }

        memcpy(v214, v82, 0x4AuLL);
        v211 = v214[7];
        v212 = v214[8];
        OUTLINED_FUNCTION_3_26();

        sub_1DD3C6A40(v214, v213);
        v7 = sub_1DD3B7F10();

        v35 = &v211;
        if (OUTLINED_FUNCTION_13_19(v215, MEMORY[0x1E69E6158]))
        {
          break;
        }

        v35 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v86 = sub_1DD40B8E0();
        sub_1DD415480(v86);
        if (v87)
        {
          OUTLINED_FUNCTION_20_13();
          goto LABEL_52;
        }

        sub_1DD3C6A9C(v214);

        v7 = 0xE000000000000000;
LABEL_53:
        v216 = v30;
        v89 = *(v30 + 16);
        v88 = *(v30 + 24);
        if (v89 >= v88 >> 1)
        {
          v91 = OUTLINED_FUNCTION_7_22(v88);
          sub_1DD42B7A0(v91, v89 + 1, 1);
          v30 = v216;
        }

        *(v30 + 16) = v89 + 1;
        OUTLINED_FUNCTION_17_18();
        OUTLINED_FUNCTION_5_29(v90);
        if (v51)
        {

          v26 = v201;
          goto LABEL_60;
        }

        v82 += 80;
        v40 = (v40 + 1);
        v37 = v207;
      }

      sub_1DD63FDA8();
      v83 = OUTLINED_FUNCTION_4_26();
      v85 = v84(v83);

      sub_1DD63FDD8();
      OUTLINED_FUNCTION_20_13();

LABEL_52:
      sub_1DD3C6A9C(v214);

      goto LABEL_53;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v30 = swift_allocObject();
    *(v30 + 16) = v190;
    *(v30 + 32) = v79;
    *(v30 + 40) = v80;
    OUTLINED_FUNCTION_1_35(v30);

LABEL_60:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v198, v92);
    v93 = *(v30 + 16);
    v94 = v26[2];
    v28 = v203;
    if (__OFADD__(v94, v93))
    {
      goto LABEL_149;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v94 + v93 > (v26[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v26 = v95;
    }

    v73 = v200;
    if (*(v30 + 16))
    {
      OUTLINED_FUNCTION_9_19();
      if (v58 != v59)
      {
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_8_18(&v26[10 * v96]);
      swift_arrayInitWithCopy();

      v97 = v199;
      if (v93)
      {
        v98 = v26[2];
        v59 = __OFADD__(v98, v93);
        v99 = v98 + v93;
        if (v59)
        {
          goto LABEL_158;
        }

        v26[2] = v99;
      }
    }

    else
    {

      v97 = v199;
      if (v93)
      {
        goto LABEL_150;
      }
    }

    v76 = v97 + 1;
    v71 = v192;
    if (v76 != v195)
    {
      continue;
    }

    break;
  }

LABEL_73:
  v30 = 0;
  v100 = v204[2];
  v101 = MEMORY[0x1E69E7CC0];
  v201 = v26;
  while (v100 != v30)
  {
    if (v30 >= v204[2])
    {
      goto LABEL_144;
    }

    v102 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v103 = *(v73 + 72);
    v104 = v197;
    sub_1DD3CD140(v204 + v102 + v103 * v30, v197);
    OUTLINED_FUNCTION_16_18();
    if (v51)
    {
      sub_1DD3CD200(v104, v187);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v214[0] = v101;
      if ((v106 & 1) == 0)
      {
        OUTLINED_FUNCTION_14_21();
        v101 = v214[0];
      }

      v108 = *(v101 + 16);
      v107 = *(v101 + 24);
      if (v108 >= v107 >> 1)
      {
        OUTLINED_FUNCTION_15_18(v107);
        v101 = v214[0];
      }

      ++v30;
      *(v101 + 16) = v108 + 1;
      sub_1DD3CD200(v187, v101 + v102 + v108 * v103);
      v73 = v200;
      v26 = v201;
    }

    else
    {
      OUTLINED_FUNCTION_0_46();
      sub_1DD467AE8(v104, v105);
      ++v30;
      v26 = v201;
    }
  }

  v214[0] = v101;

  v109 = v189;
  sub_1DD463DAC(v214, sub_1DD4660C8, sub_1DD465C84);
  if (v109)
  {
    goto LABEL_163;
  }

  v110 = v214[0];
  v199 = *(v214[0] + 16);
  if (!v199)
  {

    v204 = MEMORY[0x1E69E7CC0];
    v136 = v191;
LABEL_115:
    sub_1DD4572EC(v186, v136);
    v137 = type metadata accessor for StitchableInteraction(0);
    if (__swift_getEnumTagSinglePayload(v136, 1, v137) == 1)
    {
      sub_1DD458B24(v136);
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v30 = *(v136 + *(v137 + 36));

      sub_1DD467AE8(v136, type metadata accessor for StitchableInteraction);
    }

    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_160;
    }

    goto LABEL_119;
  }

  v7 = 0;
  v111 = *(type metadata accessor for Contact(0) + 80);
  v197 = v110 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
  v198 = v111;
  OUTLINED_FUNCTION_6_24(*MEMORY[0x1E69964B0]);
  v194 = xmmword_1DD643F90;
  v207 = xmmword_1DD642F70;
  v204 = MEMORY[0x1E69E7CC0];
  v195 = v110;
  while (1)
  {
    if (v7 >= *(v110 + 16))
    {
      goto LABEL_151;
    }

    v35 = v196;
    sub_1DD3CD140(v197 + *(v200 + 72) * v7, v196);
    v112 = *v35;
    v37 = v35[1];
    v113 = *(v198 + v35);
    v114 = *(v113 + 16);
    if (v114)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE60, &qword_1DD644198);
    v30 = swift_allocObject();
    *(v30 + 16) = v194;
    *(v30 + 32) = v112;
    *(v30 + 40) = v37;
    OUTLINED_FUNCTION_1_35(v30);

LABEL_102:
    OUTLINED_FUNCTION_0_46();
    sub_1DD467AE8(v196, v129);
    v130 = *(v30 + 16);
    v28 = v203;
    v131 = v204[2];
    if (__OFADD__(v131, v130))
    {
      goto LABEL_152;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v131 + v130 > (v204[3] >> 1))
    {
      OUTLINED_FUNCTION_10_22();
      sub_1DD3BF370();
      v204 = v132;
    }

    if (*(v30 + 16))
    {
      OUTLINED_FUNCTION_9_19();
      if (v58 != v59)
      {
        goto LABEL_156;
      }

      OUTLINED_FUNCTION_8_18(&v204[10 * v133]);
      swift_arrayInitWithCopy();

      if (v130)
      {
        v134 = v204[2];
        v59 = __OFADD__(v134, v130);
        v135 = v134 + v130;
        if (v59)
        {
          goto LABEL_159;
        }

        v204[2] = v135;
      }
    }

    else
    {

      if (v130)
      {
        goto LABEL_153;
      }
    }

    ++v7;
    v136 = v191;
    if (v7 == v199)
    {

      goto LABEL_115;
    }
  }

  matched = v7;
  v216 = MEMORY[0x1E69E7CC0];
  v210 = v113;

  OUTLINED_FUNCTION_21_12();
  v115 = v210;
  v40 = 0;
  v116 = (v210 + 32);
  v30 = v216;
  *&v208 = v114 - 1;
  v209 = v112;
  while (2)
  {
    if (v40 < *(v115 + 16))
    {
      memcpy(v214, v116, 0x4AuLL);
      v211 = v214[7];
      v212 = v214[8];
      OUTLINED_FUNCTION_3_26();

      sub_1DD3C6A40(v214, v213);
      sub_1DD3B7F10();

      v35 = &v211;
      if (OUTLINED_FUNCTION_13_19(v215, MEMORY[0x1E69E6158]))
      {
        sub_1DD63FDA8();
        v117 = OUTLINED_FUNCTION_4_26();
        v119 = v118(v117);

        v7 = sub_1DD63FDD8();
        v121 = v120;

        goto LABEL_94;
      }

      v35 = sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

      v122 = sub_1DD40B8E0();
      v123 = sub_1DD415480(v122);
      if (v124)
      {
        v7 = v123;
        v121 = v124;
LABEL_94:
        sub_1DD3C6A9C(v214);
      }

      else
      {
        sub_1DD3C6A9C(v214);

        v7 = 0;
        v121 = 0xE000000000000000;
      }

      v216 = v30;
      v126 = *(v30 + 16);
      v125 = *(v30 + 24);
      if (v126 >= v125 >> 1)
      {
        v128 = OUTLINED_FUNCTION_7_22(v125);
        sub_1DD42B7A0(v128, v126 + 1, 1);
        v30 = v216;
      }

      *(v30 + 16) = v126 + 1;
      v127 = v30 + 80 * v126;
      *(v127 + 32) = v209;
      *(v127 + 40) = v37;
      *(v127 + 48) = v7;
      *(v127 + 56) = v121;
      *(v127 + 64) = v207;
      *(v127 + 80) = 0u;
      *(v127 + 96) = 0u;
      if (v208 == v40)
      {

        v26 = v201;
        v7 = matched;
        v110 = v195;
        goto LABEL_102;
      }

      v116 += 80;
      v40 = (v40 + 1);
      v115 = v210;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_137:
  v205 = 0;
LABEL_138:
  LODWORD(matched) = 0;
LABEL_139:
  v160 = v37;
  v161 = v7;
  sub_1DD46582C(v30, v40);
  v109 = v168;
  sub_1DD46582C(v30, v204);
  v162 = v169;
LABEL_140:

  v170 = v35[2];

  v171 = v204;
  v172 = sub_1DD46596C(v40);
  sub_1DD458B24(v186);
  OUTLINED_FUNCTION_2_25();
  v173 = v40[2];

  v174 = *(v171 + 16);

  if (__OFSUB__(v173, v172))
  {
    __break(1u);
  }

  else if (!__OFSUB__(v174, v172))
  {
    v175 = v182;
    v176 = v181 & 1;
    v177 = v184;
    *v184 = v161;
    v178 = v188 & 1;
    *(v177 + 8) = v209;
    v179 = v183 & 1;
    *(v177 + 9) = v160;
    *(v177 + 10) = v178;
    *(v177 + 11) = v175 & 1;
    *(v177 + 12) = v179;
    *(v177 + 13) = v176;
    *(v177 + 14) = v208;
    *(v177 + 15) = v207;
    *(v177 + 16) = v210;
    *(v177 + 17) = v206;
    *(v177 + 18) = v205;
    *(v177 + 19) = matched;
    *(v177 + 3) = v170;
    *(v177 + 4) = v172;
    *(v177 + 5) = v173;
    *(v177 + 6) = v174;
    *(v177 + 7) = v173 - v172;
    *(v177 + 8) = v174 - v172;
    *(v177 + 9) = v109;
    *(v177 + 10) = v162;
    return result;
  }

  __break(1u);
LABEL_163:

  __break(1u);
  return result;
}

uint64_t sub_1DD46539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = sub_1DD63FDA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  sub_1DD463E6C(a6 & 1);
  sub_1DD63FDA8();
  OUTLINED_FUNCTION_22_11();
  *(inited + 48) = v6;
  *(inited + 56) = 1701603686;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_1DD63FDA8();
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD63FDA8();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
  sub_1DD63FC88();
  v11 = sub_1DD63FC48();

  AnalyticsSendEvent();

  return a6 & 1;
}

void sub_1DD465568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1DD63FDA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0x6449726F727265;
  *(inited + 40) = 0xE700000000000000;
  sub_1DD463F00();
  v8 = sub_1DD63FDA8();

  *(inited + 48) = v8;
  *(inited + 56) = 1701603686;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_1DD63FDA8();
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD63FDA8();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1DD39638C(0, &qword_1EE166470, 0x1E69E58C0);
  sub_1DD63FC88();
  v9 = sub_1DD63FC48();

  AnalyticsSendEvent();
}

BOOL sub_1DD465730(uint64_t a1)
{
  v1 = *(a1 + 16);
  for (i = (a1 + 32); v1; i += 80)
  {
    memcpy(__dst, i, sizeof(__dst));
    v3 = memcpy(v7, i, sizeof(v7));
    MEMORY[0x1EEE9AC00](v3);
    sub_1DD3E6404(__dst, v6);
    v4 = sub_1DD450524();
    sub_1DD3E6460(__dst);
    if (v4)
    {
      break;
    }

    --v1;
  }

  return v1 != 0;
}

void sub_1DD46582C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 80 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      sub_1DD4B81E8(v6);

      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    memcpy(v15, v7, sizeof(v15));
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    v9 = sub_1DD528184(v15, a2);
    ++v3;
    v7 += 80;
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BE460();
        v6 = v13;
      }

      v12 = v6[2];
      if (v12 >= v6[3] >> 1)
      {
        sub_1DD3BE460();
        v6 = v14;
      }

      v6[2] = v12 + 1;
      v6[v12 + 4] = v11;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1DD46596C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  if (!v2)
  {
    return v1;
  }

  while (1)
  {
    memcpy(__dst, v3, sizeof(__dst));
    v4 = memcpy(v9, v3, sizeof(v9));
    MEMORY[0x1EEE9AC00](v4);
    sub_1DD3E6404(__dst, v8);
    v5 = sub_1DD450524();
    result = sub_1DD3E6460(__dst);
    v7 = __OFADD__(v1, v5);
    v1 += v5;
    if (v7)
    {
      break;
    }

    v3 += 80;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DD465A70(uint64_t a1)
{
  v1 = sub_1DD640AA8();

  return v1 != 0;
}

BOOL sub_1DD465AE0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD465A70(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DD465B14@<X0>(void *a1@<X8>)
{
  result = sub_1DD465AB8();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD465B44(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ContactMatchRuntimeData(0);
        v10 = sub_1DD640158();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1DD465C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      do
      {
        sub_1DD3CD140(v23, v17);
        sub_1DD3CD140(v20, v13);
        v24 = *(matched + 32);
        v25 = *&v17[v24];
        v26 = *&v13[v24];
        sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v17, type metadata accessor for ContactMatchRuntimeData);
        if (v26 >= v25)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        sub_1DD3CD200(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD3CD200(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD465E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v37 = v17 + 344;
    v35 = v18;
    v36 = v13 + 344;
    v20 = v18 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v29 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v23;
      v32 = v22;
      do
      {
        sub_1DD3CD140(v23, v17);
        sub_1DD3CD140(v20, v13);
        v24 = *(matched + 20);
        v25 = *&v37[v24];
        v26 = *&v36[v24];
        sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v17, type metadata accessor for ContactMatchRuntimeData);
        if (v26 >= v25)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return;
        }

        sub_1DD3CD200(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD3CD200(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD4660C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = a1;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v116 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v112 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v105 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v105 - v15;
  v118 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_104:
    a3 = *v108;
    if (!*v108)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v99 = v19 + 16;
      v98 = *(v19 + 2);
      for (i = v19; v98 >= 2; v19 = i)
      {
        if (!*v118)
        {
          goto LABEL_142;
        }

        v100 = &v19[16 * v98];
        v101 = *v100;
        v102 = &v99[2 * v98];
        v103 = *(v102 + 1);
        sub_1DD46722C(*v118 + *(v116 + 72) * *v100, *v118 + *(v116 + 72) * *v102, *v118 + *(v116 + 72) * v103, a3);
        if (v5)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_130;
        }

        if (v98 - 2 >= *v99)
        {
          goto LABEL_131;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v99 - v98;
        if (*v99 < v98)
        {
          goto LABEL_132;
        }

        v98 = *v99 - 1;
        sub_1DD4EC4E4(v102 + 16, v104, v102);
        *v99 = v98;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v19 = sub_1DD4EC2B8();
    goto LABEL_106;
  }

  v107 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = matched;
  v113 = &v105 - v15;
  while (1)
  {
    v21 = v18 + 1;
    v109 = v18;
    if (v18 + 1 >= v17)
    {
      v35 = v18;
    }

    else
    {
      a3 = *v118;
      v22 = *(v116 + 72);
      i = v17;
      v120 = v18 + 1;
      v23 = a3 + v22 * v21;
      sub_1DD3CD140(v23, v16);
      v24 = v109;
      sub_1DD3CD140(a3 + v22 * v109, v13);
      v25 = *(v20 + 32);
      v26 = *&v16[v25];
      v27 = *&v13[v25];
      sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
      sub_1DD467AE8(v16, type metadata accessor for ContactMatchRuntimeData);
      v28 = i;
      v29 = v24 + 2;
      v117 = v22;
      v30 = a3 + v22 * (v24 + 2);
      while (1)
      {
        v31 = v29;
        if (++v120 >= v28)
        {
          break;
        }

        a3 = v27 < v26;
        sub_1DD3CD140(v30, v16);
        sub_1DD3CD140(v23, v13);
        v32 = *(matched + 32);
        v33 = *&v16[v32];
        v34 = *&v13[v32];
        sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
        sub_1DD467AE8(v16, type metadata accessor for ContactMatchRuntimeData);
        v28 = i;
        v30 += v117;
        v23 += v117;
        v29 = v31 + 1;
        if (v27 < v26 == v34 >= v33)
        {
          goto LABEL_10;
        }
      }

      v120 = v28;
LABEL_10:
      if (v27 >= v26)
      {
        v20 = matched;
      }

      else
      {
        v21 = v120;
        v35 = v109;
        if (v120 < v109)
        {
          goto LABEL_136;
        }

        if (v109 >= v120)
        {
          v20 = matched;
          goto LABEL_33;
        }

        i = v19;
        v106 = v5;
        v36 = v28 >= v31 ? v31 : v28;
        v37 = v109;
        v38 = v117 * (v36 - 1);
        v39 = v117 * v36;
        v40 = v109 * v117;
        v20 = matched;
        do
        {
          if (v37 != --v21)
          {
            a3 = *v118;
            if (!*v118)
            {
              goto LABEL_143;
            }

            sub_1DD3CD200(a3 + v40, v112);
            v41 = v40 < v38 || a3 + v40 >= a3 + v39;
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3CD200(v112, a3 + v38);
            v20 = matched;
          }

          ++v37;
          v38 -= v117;
          v39 -= v117;
          v40 += v117;
        }

        while (v37 < v21);
        v5 = v106;
        v19 = i;
      }

      v21 = v120;
      v35 = v109;
    }

LABEL_33:
    v42 = v118[1];
    if (v21 < v42)
    {
      if (__OFSUB__(v21, v35))
      {
        goto LABEL_135;
      }

      if (v21 - v35 < v107)
      {
        break;
      }
    }

LABEL_51:
    if (v21 < v35)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DD3BEB7C();
      v19 = v96;
    }

    a3 = *(v19 + 2);
    v55 = a3 + 1;
    if (a3 >= *(v19 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v19 = v97;
    }

    *(v19 + 2) = v55;
    v56 = v19 + 32;
    v57 = &v19[16 * a3 + 32];
    v58 = v120;
    *v57 = v109;
    *(v57 + 1) = v58;
    v117 = *v108;
    if (!v117)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      i = v19;
      while (1)
      {
        v59 = v55 - 1;
        v60 = &v56[16 * v55 - 16];
        v61 = &v19[16 * v55];
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v19 + 4);
          v63 = *(v19 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_72:
          if (v65)
          {
            goto LABEL_121;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_124;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_129;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v55 < 2)
        {
          goto LABEL_123;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_87:
        if (v80)
        {
          goto LABEL_126;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_128;
        }

        if (v87 < v79)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v59 - 1 >= v55)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_138;
        }

        if (!*v118)
        {
          goto LABEL_141;
        }

        v91 = &v56[16 * v59 - 16];
        v92 = *v91;
        a3 = v59;
        v93 = &v56[16 * v59];
        v94 = *(v93 + 1);
        sub_1DD46722C(*v118 + *(v116 + 72) * *v91, *v118 + *(v116 + 72) * *v93, *v118 + *(v116 + 72) * v94, v117);
        if (v5)
        {
          goto LABEL_114;
        }

        if (v94 < v92)
        {
          goto LABEL_116;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_117;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        if (a3 >= v5)
        {
          goto LABEL_118;
        }

        v55 = v5 - 1;
        sub_1DD4EC4E4(v93 + 16, v5 - 1 - a3, v93);
        v19 = i;
        *(i + 16) = v5 - 1;
        v95 = v5 > 2;
        v5 = 0;
        v20 = matched;
        v16 = v113;
        if (!v95)
        {
          goto LABEL_101;
        }
      }

      v66 = &v56[16 * v55];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_119;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_122;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_125;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_133;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v17 = v118[1];
    v18 = v120;
    if (v120 >= v17)
    {
      goto LABEL_104;
    }
  }

  v43 = v35 + v107;
  if (__OFADD__(v35, v107))
  {
    goto LABEL_137;
  }

  if (v43 >= v42)
  {
    v43 = v118[1];
  }

  if (v43 < v35)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v21 == v43)
  {
    goto LABEL_51;
  }

  i = v19;
  v106 = v5;
  a3 = *v118;
  v44 = *(v116 + 72);
  v45 = *v118 + v44 * (v21 - 1);
  v46 = -v44;
  v47 = v35 - v21;
  v110 = v44;
  v111 = v43;
  v48 = a3 + v21 * v44;
LABEL_42:
  v120 = v21;
  v114 = v48;
  v115 = v47;
  v117 = v45;
  v49 = v45;
  while (1)
  {
    sub_1DD3CD140(v48, v16);
    sub_1DD3CD140(v49, v13);
    v50 = *(v20 + 32);
    v51 = *&v16[v50];
    v52 = *&v13[v50];
    sub_1DD467AE8(v13, type metadata accessor for ContactMatchRuntimeData);
    sub_1DD467AE8(v16, type metadata accessor for ContactMatchRuntimeData);
    if (v52 >= v51)
    {
      v20 = matched;
LABEL_49:
      v21 = v120 + 1;
      v45 = v117 + v110;
      v47 = v115 - 1;
      v48 = v114 + v110;
      if (v120 + 1 == v111)
      {
        v21 = v111;
        v5 = v106;
        v19 = i;
        v35 = v109;
        goto LABEL_51;
      }

      goto LABEL_42;
    }

    if (!a3)
    {
      break;
    }

    v53 = v121;
    sub_1DD3CD200(v48, v121);
    v20 = matched;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3CD200(v53, v49);
    v49 += v46;
    v48 += v46;
    v41 = __CFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}