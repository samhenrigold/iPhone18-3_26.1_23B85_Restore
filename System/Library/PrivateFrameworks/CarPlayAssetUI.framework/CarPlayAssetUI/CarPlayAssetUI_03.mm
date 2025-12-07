uint64_t _s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = v2;
  if (v1 == InstrumentDataIdentifier.rawValue.getter() && v3 == v4)
  {
  }

  else
  {
    v5 = sub_242F06110();

    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v6 = InstrumentDataIdentifier.rawValue.getter();
  v8 = v7;
  if (v6 == InstrumentDataIdentifier.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = InstrumentDataIdentifier.rawValue.getter();
  v13 = v12;
  if (v11 == InstrumentDataIdentifier.rawValue.getter() && v13 == v14)
  {

    goto LABEL_13;
  }

  v15 = sub_242F06110();

  if ((v15 & 1) == 0)
  {
LABEL_16:
    v20 = 0;
    return v20 & 1;
  }

LABEL_13:
  v16 = InstrumentDataIdentifier.rawValue.getter();
  v18 = v17;
  if (v16 == InstrumentDataIdentifier.rawValue.getter() && v18 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_242F06110();
  }

  return v20 & 1;
}

unint64_t sub_242C8ABD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0408;
  if (!qword_27ECF0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0408);
  }

  return result;
}

unint64_t sub_242C8AC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0410;
  if (!qword_27ECF0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0410);
  }

  return result;
}

unint64_t sub_242C8AC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0420;
  if (!qword_27ECF0420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0420);
  }

  return result;
}

uint64_t sub_242C8ACD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0428, &qword_242F0A8F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_242C8AD40(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO015ChargeFuelLevelF13ConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  memcpy(__dst, v3 + 8, sizeof(__dst));
  v124 = *(v4 + 45);
  v125 = *(v4 + 44);
  v123 = v4[368];
  v119 = *(v4 + 48);
  v120 = *(v4 + 47);
  v118 = v4[392];
  v113 = *(v4 + 51);
  v114 = *(v4 + 50);
  v112 = v4[416];
  v107 = *(v4 + 54);
  v108 = *(v4 + 53);
  v106 = v4[440];
  v101 = *(v4 + 57);
  v102 = *(v4 + 56);
  v100 = v4[464];
  v95 = *(v4 + 60);
  v96 = *(v4 + 59);
  v94 = v4[488];
  v89 = *(v4 + 63);
  v90 = *(v4 + 62);
  v88 = v4[512];
  v83 = *(v4 + 66);
  v84 = *(v4 + 65);
  v82 = v4[536];
  v78 = *(v4 + 68);
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  memcpy(v135, v2 + 8, 0x158uLL);
  v13 = *(v2 + 44);
  v122 = *(v2 + 45);
  v121 = v2[368];
  v116 = *(v2 + 48);
  v117 = *(v2 + 47);
  v115 = v2[392];
  v110 = *(v2 + 51);
  v111 = *(v2 + 50);
  v109 = v2[416];
  v104 = *(v2 + 54);
  v105 = *(v2 + 53);
  v103 = v2[440];
  v98 = *(v2 + 57);
  v99 = *(v2 + 56);
  v97 = v2[464];
  v92 = *(v2 + 60);
  v93 = *(v2 + 59);
  v91 = v2[488];
  v86 = *(v2 + 63);
  v87 = *(v2 + 62);
  v85 = v2[512];
  v80 = *(v2 + 66);
  v81 = *(v2 + 65);
  v79 = v2[536];
  v77 = *(v2 + 68);
  LOBYTE(__src[0]) = v5;
  LOBYTE(v130[0]) = v9;
  v14 = InstrumentDataIdentifier.rawValue.getter();
  v16 = v15;
  if (v14 == InstrumentDataIdentifier.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_242F06110();

    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v6;
  LOBYTE(v130[0]) = v10;
  v19 = InstrumentDataIdentifier.rawValue.getter();
  v21 = v20;
  if (v19 == InstrumentDataIdentifier.rawValue.getter() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_242F06110();

    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v7;
  LOBYTE(v130[0]) = v11;
  v24 = InstrumentDataIdentifier.rawValue.getter();
  v26 = v25;
  if (v24 == InstrumentDataIdentifier.rawValue.getter() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_242F06110();

    if ((v28 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  LOBYTE(__src[0]) = v8;
  LOBYTE(v130[0]) = v12;
  v29 = InstrumentDataIdentifier.rawValue.getter();
  v31 = v30;
  if (v29 == InstrumentDataIdentifier.rawValue.getter() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_242F06110();

    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  memcpy(__src, __dst, 0x158uLL);
  memcpy(&__src[43], v135, 0x158uLL);
  memcpy(v133, __dst, sizeof(v133));
  if (sub_242C8B80C(v133) != 1)
  {
    memcpy(v131, __src, sizeof(v131));
    memcpy(v129, __src, sizeof(v129));
    memcpy(v130, &__src[43], 0x158uLL);
    if (sub_242C8B80C(v130) != 1)
    {
      memcpy(v128, &__src[43], sizeof(v128));
      sub_242C8ACD0(__dst, v127);
      sub_242C8ACD0(v135, v127);
      sub_242C8ACD0(v131, v127);
      v36 = _s14CarPlayAssetUI10InstrumentV31RemainingRangeTextConfigurationV2eeoiySbAE_AEtFZ_0(v129, v128);
      memcpy(v126, v128, sizeof(v126));
      sub_242C8C790(v126);
      memcpy(v127, v129, sizeof(v127));
      sub_242C8C790(v127);
      memcpy(v128, __src, sizeof(v128));
      sub_242C6D138(v128, &qword_27ECF0428, &qword_242F0A8F0);
      if (!v36)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    memcpy(v128, __src, sizeof(v128));
    sub_242C8ACD0(__dst, v127);
    sub_242C8ACD0(v135, v127);
    sub_242C8ACD0(v131, v127);
    sub_242C8C790(v128);
LABEL_23:
    memcpy(v130, __src, sizeof(v130));
    sub_242C6D138(v130, &qword_27ECF04C8, &qword_242F0B3F0);
    goto LABEL_24;
  }

  memcpy(v130, &__src[43], 0x158uLL);
  if (sub_242C8B80C(v130) != 1)
  {
    sub_242C8ACD0(__dst, v131);
    sub_242C8ACD0(v135, v131);
    goto LABEL_23;
  }

  memcpy(v131, __src, sizeof(v131));
  sub_242C8ACD0(__dst, v129);
  sub_242C8ACD0(v135, v129);
  sub_242C6D138(v131, &qword_27ECF0428, &qword_242F0A8F0);
LABEL_27:
  __src[0] = v125;
  __src[1] = v124;
  LOBYTE(__src[2]) = v123;
  v130[0] = v13;
  v130[1] = v122;
  LOBYTE(v130[2]) = v121;
  v37 = Theme.ColorID.rawValue.getter();
  v39 = v38;
  if (v37 == Theme.ColorID.rawValue.getter() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_242F06110();

    if ((v41 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v120;
  __src[1] = v119;
  LOBYTE(__src[2]) = v118;
  v130[0] = v117;
  v130[1] = v116;
  LOBYTE(v130[2]) = v115;
  v42 = Theme.ColorID.rawValue.getter();
  v44 = v43;
  if (v42 == Theme.ColorID.rawValue.getter() && v44 == v45)
  {
  }

  else
  {
    v46 = sub_242F06110();

    if ((v46 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v114;
  __src[1] = v113;
  LOBYTE(__src[2]) = v112;
  v130[0] = v111;
  v130[1] = v110;
  LOBYTE(v130[2]) = v109;
  v47 = Theme.ColorID.rawValue.getter();
  v49 = v48;
  if (v47 == Theme.ColorID.rawValue.getter() && v49 == v50)
  {
  }

  else
  {
    v51 = sub_242F06110();

    if ((v51 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v108;
  __src[1] = v107;
  LOBYTE(__src[2]) = v106;
  v130[0] = v105;
  v130[1] = v104;
  LOBYTE(v130[2]) = v103;
  v52 = Theme.ColorID.rawValue.getter();
  v54 = v53;
  if (v52 == Theme.ColorID.rawValue.getter() && v54 == v55)
  {
  }

  else
  {
    v56 = sub_242F06110();

    if ((v56 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v102;
  __src[1] = v101;
  LOBYTE(__src[2]) = v100;
  v130[0] = v99;
  v130[1] = v98;
  LOBYTE(v130[2]) = v97;
  v57 = Theme.ColorID.rawValue.getter();
  v59 = v58;
  if (v57 == Theme.ColorID.rawValue.getter() && v59 == v60)
  {
  }

  else
  {
    v61 = sub_242F06110();

    if ((v61 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v96;
  __src[1] = v95;
  LOBYTE(__src[2]) = v94;
  v130[0] = v93;
  v130[1] = v92;
  LOBYTE(v130[2]) = v91;
  v62 = Theme.ColorID.rawValue.getter();
  v64 = v63;
  if (v62 == Theme.ColorID.rawValue.getter() && v64 == v65)
  {
  }

  else
  {
    v66 = sub_242F06110();

    if ((v66 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v90;
  __src[1] = v89;
  LOBYTE(__src[2]) = v88;
  v130[0] = v87;
  v130[1] = v86;
  LOBYTE(v130[2]) = v85;
  v67 = Theme.ColorID.rawValue.getter();
  v69 = v68;
  if (v67 == Theme.ColorID.rawValue.getter() && v69 == v70)
  {
  }

  else
  {
    v71 = sub_242F06110();

    if ((v71 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  __src[0] = v84;
  __src[1] = v83;
  LOBYTE(__src[2]) = v82;
  v130[0] = v81;
  v130[1] = v80;
  LOBYTE(v130[2]) = v79;
  v72 = Theme.ColorID.rawValue.getter();
  v74 = v73;
  if (v72 == Theme.ColorID.rawValue.getter() && v74 == v75)
  {

LABEL_59:
    sub_242C778E4(v78, v77);
    return v34 & 1;
  }

  v76 = sub_242F06110();

  if (v76)
  {
    goto LABEL_59;
  }

LABEL_24:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_242C8B80C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_242C8B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0438;
  if (!qword_27ECF0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0438);
  }

  return result;
}

unint64_t sub_242C8B894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0440;
  if (!qword_27ECF0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0440);
  }

  return result;
}

unint64_t sub_242C8B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0458;
  if (!qword_27ECF0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0458);
  }

  return result;
}

unint64_t sub_242C8B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0468;
  if (!qword_27ECF0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0468);
  }

  return result;
}

uint64_t sub_242C8B9EC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0448, &qword_242F0A900);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C8BA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0478;
  if (!qword_27ECF0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0478);
  }

  return result;
}

unint64_t sub_242C8BB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0480;
  if (!qword_27ECF0480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0480);
  }

  return result;
}

unint64_t sub_242C8BB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0488;
  if (!qword_27ECF0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0488);
  }

  return result;
}

unint64_t sub_242C8BBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0490;
  if (!qword_27ECF0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0490);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChargeFuelDataIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && a1[4])
  {
    return (*a1 + 171);
  }

  v3 = *a1;
  v4 = v3 >= 0x56;
  v5 = v3 - 86;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargeFuelDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 85;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10RasterFontVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI10InstrumentV31RemainingRangeTextConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242C8BD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 544);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C8BD78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 520) = 0u;
    *(result + 536) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 552) = 1;
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
      *(result + 544) = (a2 - 1);
      return result;
    }

    *(result + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s33ChargeFuelLevelGaugeConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s33ChargeFuelLevelGaugeConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C8BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0498;
  if (!qword_27ECF0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0498);
  }

  return result;
}

unint64_t sub_242C8C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF04A0;
  if (!qword_27ECF04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04A0);
  }

  return result;
}

unint64_t sub_242C8C06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF04A8;
  if (!qword_27ECF04A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04A8);
  }

  return result;
}

unint64_t sub_242C8C0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF04B0;
  if (!qword_27ECF04B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04B0);
  }

  return result;
}

unint64_t sub_242C8C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF04B8;
  if (!qword_27ECF04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04B8);
  }

  return result;
}

unint64_t sub_242C8C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF04C0;
  if (!qword_27ECF04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF04C0);
  }

  return result;
}

uint64_t sub_242C8C1C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000242F58E30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58E50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58E70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F58E90 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242C8C334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000013 && 0x8000000242F58E30 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58E50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58E70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F58E90 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000242F58EB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEF4449726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F436B63617274 && a2 == 0xEC0000004449726FLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6576654C776F6CLL && a2 == 0xEF4449726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F58ED0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F58EF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58F10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000242F58F30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F58F60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F58F80 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_242C8C7FC()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF04D0 = v16;
  *(&xmmword_27ECF04D0 + 1) = v15;
  qword_27ECF04E0 = v14;
  unk_27ECF04E8 = v7;
  *&xmmword_27ECF04F0 = v8;
  *(&xmmword_27ECF04F0 + 1) = v9;
  qword_27ECF0500 = v10;
  unk_27ECF0508 = v11;
  qword_27ECF0510 = result;
  return result;
}

uint64_t static Color.Ticks.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF0500;
  v8[2] = xmmword_27ECF04F0;
  v8[3] = *&qword_27ECF0500;
  v9 = qword_27ECF0510;
  v3 = qword_27ECF0510;
  v4 = *&qword_27ECF04E0;
  v8[0] = xmmword_27ECF04D0;
  v5 = xmmword_27ECF04D0;
  v8[1] = *&qword_27ECF04E0;
  *(a1 + 32) = xmmword_27ECF04F0;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8CBA8(v8, &v7);
}

uint64_t static Color.Ticks.rose.setter(uint64_t a1)
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF04F0;
  v5[3] = *&qword_27ECF0500;
  v6 = qword_27ECF0510;
  v5[0] = xmmword_27ECF04D0;
  v5[1] = *&qword_27ECF04E0;
  v2 = *(a1 + 48);
  xmmword_27ECF04F0 = *(a1 + 32);
  *&qword_27ECF0500 = v2;
  qword_27ECF0510 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF04D0 = *a1;
  *&qword_27ECF04E0 = v3;
  return sub_242C8CCB0(v5);
}

uint64_t (*static Color.Ticks.rose.modify(uint64_t a1))()
{
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8CD8C()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v16 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v15 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF0518 = v16;
  *(&xmmword_27ECF0518 + 1) = v15;
  qword_27ECF0528 = v14;
  unk_27ECF0530 = v7;
  *&xmmword_27ECF0538 = v8;
  *(&xmmword_27ECF0538 + 1) = v9;
  qword_27ECF0548 = v10;
  unk_27ECF0550 = v11;
  qword_27ECF0558 = result;
  return result;
}

uint64_t static Color.ProgressBars.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *&qword_27ECF0548;
  v8[2] = xmmword_27ECF0538;
  v8[3] = *&qword_27ECF0548;
  v9 = qword_27ECF0558;
  v3 = qword_27ECF0558;
  v4 = *&qword_27ECF0528;
  v8[0] = xmmword_27ECF0518;
  v5 = xmmword_27ECF0518;
  v8[1] = *&qword_27ECF0528;
  *(a1 + 32) = xmmword_27ECF0538;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_242C8D144(v8, &v7);
}

uint64_t static Color.ProgressBars.rose.setter(uint64_t a1)
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_27ECF0538;
  v5[3] = *&qword_27ECF0548;
  v6 = qword_27ECF0558;
  v5[0] = xmmword_27ECF0518;
  v5[1] = *&qword_27ECF0528;
  v2 = *(a1 + 48);
  xmmword_27ECF0538 = *(a1 + 32);
  *&qword_27ECF0548 = v2;
  qword_27ECF0558 = *(a1 + 64);
  v3 = *(a1 + 16);
  xmmword_27ECF0518 = *a1;
  *&qword_27ECF0528 = v3;
  return sub_242C8D24C(v5);
}

uint64_t (*static Color.ProgressBars.rose.modify(uint64_t a1))()
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8D328()
{
  v0 = sub_242F04700();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v1);
  result = sub_242F047A0();
  qword_27ECF0560 = result;
  return result;
}

uint64_t static Color.Modular.rose.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECF0560;
}

uint64_t static Color.Modular.rose.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECF0560 = v1;
}

uint64_t (*static Color.Modular.rose.modify(uint64_t a1))()
{
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8D598()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277CE0EE0];
  v6 = *(v1 + 104);
  v6(v4, v5, v0, v2);
  v14 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v7 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v8 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v9 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v10 = sub_242F047A0();
  (v6)(v4, v5, v0);
  v11 = sub_242F047A0();
  (v6)(v4, v5, v0);
  result = sub_242F047A0();
  *&xmmword_27ECF0568 = v14;
  *(&xmmword_27ECF0568 + 1) = v7;
  qword_27ECF0578 = v8;
  unk_27ECF0580 = v9;
  *&xmmword_27ECF0588 = v10;
  *(&xmmword_27ECF0588 + 1) = v11;
  qword_27ECF0598 = result;
  return result;
}

uint64_t static Color.ACC.rose.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27ECF0568 + 1);
  v3 = qword_27ECF0578;
  v4 = unk_27ECF0580;
  v5 = xmmword_27ECF0588;
  v6 = qword_27ECF0598;
  *a1 = xmmword_27ECF0568;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
}

uint64_t static Color.ACC.rose.setter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v3 = *(a1 + 32);
  v1 = *(a1 + 48);
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF0568 = v5;
  *&qword_27ECF0578 = v4;
  xmmword_27ECF0588 = v3;
  qword_27ECF0598 = v1;
}

uint64_t (*static Color.ACC.rose.modify(uint64_t a1))()
{
  if (qword_27ECEEE38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242C8DA7C()
{
  if (qword_27ECEEE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = xmmword_27ECF0538;
  v37 = *&qword_27ECF0548;
  v38 = qword_27ECF0558;
  v34 = xmmword_27ECF0518;
  v35 = *&qword_27ECF0528;
  sub_242C8D144(&v34, &v39);
  if (qword_27ECEEE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = xmmword_27ECF04F0;
  v42 = *&qword_27ECF0500;
  v43 = qword_27ECF0510;
  v39 = xmmword_27ECF04D0;
  v40 = *&qword_27ECF04E0;
  sub_242C8CBA8(&v39, &v30);
  if (qword_27ECEEE30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27ECEEE38;
  v28 = qword_27ECF0560;

  if (v0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = *(&xmmword_27ECF0568 + 1);
  v2 = qword_27ECF0578;
  v3 = unk_27ECF0580;
  v4 = xmmword_27ECF0588;
  v5 = qword_27ECF0598;
  v6 = qword_27ECEF0B0;
  v27 = xmmword_27ECF0568;

  v26 = v1;

  v25 = v2;

  v24 = v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_27ECF3678;
  v8 = qword_27ECF3680;
  v9 = qword_27ECEF0B8;
  v23 = qword_27ECF3670;

  v22 = v7;

  v21 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_27ECEF0C0;
  v20 = qword_27ECF3688;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_27ECF3698;
  v12 = qword_27ECF36A0;
  v13 = unk_27ECF36A8;
  v14 = qword_27ECF36B0;
  v15 = unk_27ECF36B8;
  v16 = qword_27ECF36C0;
  v17 = qword_27ECEF0C8;
  v19 = qword_27ECF3690;

  if (v17 != -1)
  {
    swift_once();
  }

  v30 = xmmword_27ECF36C8;
  v31 = *&qword_27ECF36D8;
  v32 = xmmword_27ECF36E8;
  v33 = *&qword_27ECF36F8;
  sub_242C8E7B0(&v30, v29);
  if (qword_27ECEF0D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27ECF05C0 = v36;
  unk_27ECF05D0 = v37;
  xmmword_27ECF05A0 = v34;
  *algn_27ECF05B0 = v35;
  unk_27ECF05E8 = v39;
  unk_27ECF0618 = v42;
  qword_27ECF05E0 = v38;
  unk_27ECF0608 = v41;
  unk_27ECF05F8 = v40;
  qword_27ECF0628 = v43;
  unk_27ECF0630 = v28;
  qword_27ECF0638 = v23;
  unk_27ECF0640 = v22;
  qword_27ECF0648 = v21;
  unk_27ECF0650 = v27;
  qword_27ECF0658 = v26;
  qword_27ECF0660 = v25;
  unk_27ECF0668 = v3;
  xmmword_27ECF0670 = v4;
  qword_27ECF0680 = v24;
  unk_27ECF0688 = v20;
  qword_27ECF0690 = v19;
  qword_27ECF0698 = v11;
  unk_27ECF06A0 = v12;
  qword_27ECF06A8 = v13;
  unk_27ECF06B0 = v14;
  qword_27ECF06B8 = v15;
  unk_27ECF06C0 = v16;
  xmmword_27ECF06E8 = v32;
  unk_27ECF06F8 = v33;
  xmmword_27ECF06C8 = v30;
  unk_27ECF06D8 = v31;
  xmmword_27ECF0708 = xmmword_27ECF3708;
  qword_27ECF0718 = qword_27ECF3718;
  unk_27ECF0720 = unk_27ECF3720;
  xmmword_27ECF0728 = xmmword_27ECF3728;
  qword_27ECF0738 = qword_27ECF3738;
}

uint64_t static Color.ColorValues.rose.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEEE40 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_27ECF05A0, sizeof(__dst));
  memcpy(a1, &xmmword_27ECF05A0, 0x1A0uLL);
  return sub_242C8DFF4(__dst, &v3);
}

uint64_t sub_242C8E050()
{
  v0 = sub_242F04700();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0758, &qword_242F0B4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  *(inited + 32) = xmmword_242F0B490;
  v25 = inited + 32;
  *(inited + 48) = 0;
  v5 = *(v1 + 104);
  v24 = *MEMORY[0x277CE0EE0];
  v23 = v5;
  v5(v3);
  v6 = sub_242F047A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  v7 = swift_initStackObject();
  v22 = xmmword_242F09510;
  *(v7 + 16) = xmmword_242F09510;
  *(v7 + 32) = 0;
  v8 = v7 + 32;
  *(v7 + 40) = v6;
  v9 = sub_242CE6C84(v7);
  swift_setDeallocating();

  sub_242C6E840(v8);
  v10 = sub_242E1E384(v9);

  if (*(v10 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v11 = sub_242F05CB0();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v26[0] = v11;

  sub_242E21B3C(v12, 1, v26);

  *(inited + 56) = v26[0];
  *(inited + 64) = xmmword_242F0B4A0;
  *(inited + 80) = 0;
  v23(v3, v24, v0);
  v13 = sub_242F047A0();
  v14 = swift_initStackObject();
  *(v14 + 16) = v22;
  *(v14 + 32) = 0;
  v15 = v14 + 32;
  *(v14 + 40) = v13;
  v16 = sub_242CE6C84(v14);
  swift_setDeallocating();

  sub_242C6E840(v15);
  v17 = sub_242E1E384(v16);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v18 = sub_242F05CB0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v26[0] = v18;

  sub_242E21B3C(v19, 1, v26);

  *(inited + 88) = v26[0];
  v20 = sub_242CE6EE4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0760, &qword_242F0B4B8);
  result = swift_arrayDestroy();
  qword_27ECF0740 = v20;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiBandLightRose.modify(uint64_t a1))()
{
  if (qword_27ECEEE48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242C8E4F8()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF0748 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesDigiRingLightRose.modify(uint64_t a1))()
{
  if (qword_27ECEEE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_242C8E5F0()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECF0750 = result;
  return result;
}

uint64_t sub_242C8E63C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_242C8E6BC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightRose.modify(uint64_t a1))()
{
  if (qword_27ECEEE58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void WidgetMultiStackScreenLayout.Metrics.init(minVerticalGoldenSplitAspectRatio:margin:minHorizontalInset:maxHorizontalInset:minWidgetDimension:maxWidgetDimension:maxWidetRowSpacing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
}

uint64_t WidgetMultiStackScreenLayout.Metrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x245D279D0](*&v8);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x245D279D0](*&v9);
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x245D279D0](*&v10);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x245D279D0](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x245D279D0](*&v12);
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  return MEMORY[0x245D279D0](*&v13);
}

uint64_t WidgetMultiStackScreenLayout.Metrics.hashValue.getter()
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242C8E984()
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242C8E9E4(uint64_t a1)
{
  sub_242F06390();
  WidgetMultiStackScreenLayout.Metrics.hash(into:)();
  return sub_242F063E0();
}

double WidgetMultiStackScreenLayout.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  v3 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = result;
  return result;
}

uint64_t WidgetMultiStackScreenLayout.maxColumns.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    result = 0;
LABEL_15:
    v12 = v2 - v3;
    v13 = (v1 + 40 * v3 + 40);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 > result)
      {
        result = v14;
      }

      --v12;
    }

    while (v12);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (v1 + 80);
  v8 = v2 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 5);
    v11 = *v7;
    v7 += 10;
    v10 = v11;
    if (v9 > v5)
    {
      v5 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v5 <= v6)
  {
    result = v6;
  }

  else
  {
    result = v5;
  }

  if (v2 != v3)
  {
    goto LABEL_15;
  }

  return result;
}

double WidgetMultiStackScreenLayout.widgetRowSpacing.getter()
{
  result = *(v0 + 72);
  if (*(*(v0 + 16) + 16) <= 1uLL)
  {
    return 0.0;
  }

  return result;
}

uint64_t WidgetMultiStackScreenLayout.init(safeArea:screenScale:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 32);
  v85 = *(a1 + 24);
  v87 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D2F8);
  v15 = sub_242F039B0();
  v16 = sub_242F05720();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = COERCE_DOUBLE(swift_slowAlloc());
    v96 = v18;
    *v17 = 136446466;
    v19 = sub_242F057C0();
    v21 = sub_242C8FD38(v19, v20, &v96);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2050;
    *(v17 + 14) = a5;
    _os_log_impl(&dword_242C53000, v15, v16, "Calculating left of dashboard widget metrics for safe area %{public}s, screen scale %{public}f", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_2Tm(*&v18);
    MEMORY[0x245D287D0](*&v18, -1, -1);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

  type metadata accessor for WidgetMultiStackRowLayoutBuilder();
  v22 = swift_allocObject();
  v81 = v12;
  v83 = a5;
  *(v22 + 16) = a5;
  *(v22 + 24) = v9;
  v79 = v13;
  v80 = v10;
  *(v22 + 32) = v10;
  *(v22 + 40) = v11;
  v23 = v11;
  *(v22 + 48) = v85;
  *(v22 + 56) = v12;
  *(v22 + 64) = v87;
  *(v22 + 72) = v13;
  v24 = a3 / a4;
  if (a3 / a4 >= v9)
  {
    v28 = 0;
    v27 = 0;
    v29 = 0.0;
    v30 = 0.0;
    v26 = 0.0;
    v31 = 1;
  }

  else
  {
    v25 = 1;
    sub_242C8F9E8(2, 1, &v96, a3, a4, 0.382);
    v26 = v96;
    v28 = v97;
    v27 = v98;
    v29 = v99;
    v30 = v100;
    v31 = v101;
    if ((v101 & 1) == 0 && v97 > 1)
    {
      v32 = 1.2;
      v33 = 0.618;
      goto LABEL_14;
    }
  }

  v32 = 1.0;
  if (v24 >= 1.1)
  {
    v25 = 0;
    v33 = 0.5;
    if (v31)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = 0.5;
    sub_242C8F9E8(2, 1, &v96, a3, a4, 0.5);
    v25 = 0;
    v26 = v96;
    v28 = v97;
    v27 = v98;
    v29 = v99;
    v30 = v100;
    if (v101)
    {
      goto LABEL_17;
    }
  }

LABEL_14:
  if (v28 >= 2)
  {
    v34 = sub_242F039B0();
    v35 = sub_242F05720();
    if (os_log_type_enabled(v34, v35))
    {
      v88 = v27;
      v36 = swift_slowAlloc();
      v86 = v29;
      *&v82 = COERCE_DOUBLE(swift_slowAlloc());
      v90 = *&v82;
      *v36 = 136446978;
      v37 = sub_242F057C0();
      v39 = v30;
      v40 = sub_242C8FD38(v37, v38, &v90);

      *(v36 + 4) = v40;
      *(v36 + 12) = 1026;
      *(v36 + 14) = v25;
      *(v36 + 18) = 2082;
      v96 = v32 * v26;
      v97 = 1;
      v98 = 0;
      v41 = v83;
      v99 = v33;
      v100 = v83;
      v42 = WidgetMultiStackRowLayout.description.getter();
      v44 = sub_242C8FD38(v42, v43, &v90);

      *(v36 + 20) = v44;
      *(v36 + 28) = 2082;
      v96 = v26;
      v97 = v28;
      v98 = v88;
      v99 = v86;
      v100 = v39;
      v45 = WidgetMultiStackRowLayout.description.getter();
      v47 = sub_242C8FD38(v45, v46, &v90);

      *(v36 + 30) = v47;
      v30 = v39;
      _os_log_impl(&dword_242C53000, v34, v35, "Calculated 2 rows of widgets for safe area %{public}s:\n    supportsGoldenRatio: %{BOOL,public}d\n    top: %{public}s\n    bottom: %{public}s", v36, 0x26u);
      swift_arrayDestroy();
      v29 = v86;
      MEMORY[0x245D287D0](v82, -1, -1);
      v48 = v36;
      v27 = v88;
      MEMORY[0x245D287D0](v48, -1, -1);
    }

    else
    {

      v41 = v83;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768, &qword_242F0B510);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_242F0A4E0;
    *(v58 + 32) = v32 * v26;
    *(v58 + 40) = 1;
    *(v58 + 48) = 0;
    *(v58 + 56) = v33;
    *(v58 + 64) = v41;
    *(v58 + 72) = v26;
    *(v58 + 80) = v28;
    *(v58 + 88) = v27;
    *(v58 + 96) = v29;
    *(v58 + 104) = v30;
LABEL_27:

    v64 = 24.0;
    v54 = 20.0;
    v65 = 0x4040000000000000;
    v66 = 0x406B800000000000;
    v67 = 0x4062000000000000;
    v9 = 0.83;
    v68 = 0x4050000000000000;
    goto LABEL_32;
  }

LABEL_17:
  sub_242C8F9E8(3, v24 >= 2.68, &v96, a3, a4, 1.0);
  if (v101)
  {
    v49 = sub_242F039B0();
    v50 = sub_242F05700();
    v51 = v23;
    if (os_log_type_enabled(v49, v50))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_242C53000, v49, v50, "Screen is too small to satisfy a widget at its minimum size. Recalculate favoring size instead of count.", v52, 2u);
      MEMORY[0x245D287D0](v52, -1, -1);
    }

    sub_242C8F9E8(3, 0, &v90, a3, a4, 1.0);
    v53 = v91;
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v54 = v80;
    if (v95)
    {
      v55 = sub_242F039B0();
      v56 = sub_242F05700();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_242C53000, v55, v56, "Unable to satisfy view area with any number of rows of widgets. Using a single row with minimum widget size.", v57, 2u);
        MEMORY[0x245D287D0](v57, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768, &qword_242F0B510);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_242F09510;
      *(v58 + 32) = v81;
      *(v58 + 40) = 1;
      *(v58 + 48) = xmmword_242F0B500;
      *(v58 + 64) = v83;
      goto LABEL_27;
    }

    v84 = v51;
    v59 = v94;
    v60 = v93;
    v61 = v92;
    v62 = v90;
  }

  else
  {
    v53 = v97;
    v60 = v99;
    v59 = v100;
    v61 = v98;
    v62 = v96;
    v84 = v23;
    v54 = v80;
  }

  v69 = sub_242F039B0();
  v70 = sub_242F05720();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89 = v72;
    *v71 = 136446466;
    v73 = sub_242F057C0();
    v75 = sub_242C8FD38(v73, v74, &v89);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    v90 = v62;
    v91 = v53;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    v76 = WidgetMultiStackRowLayout.description.getter();
    v78 = sub_242C8FD38(v76, v77, &v89);

    *(v71 + 14) = v78;
    _os_log_impl(&dword_242C53000, v69, v70, "Vehicle doesn't support multiple rows of widgets with safe area: %{public}s,\nproviding single row: %{public}s", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v72, -1, -1);
    MEMORY[0x245D287D0](v71, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0768, &qword_242F0B510);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_242F09510;
  *(v58 + 32) = v62;
  *(v58 + 40) = v53;
  *(v58 + 48) = v61;
  *(v58 + 56) = v60;
  *(v58 + 64) = v59;

  v67 = v81;
  v64 = v84;
  v68 = v85;
  v66 = v87;
  v65 = v79;
LABEL_32:
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = v58;
  *(a2 + 24) = v9;
  *(a2 + 32) = v54;
  *(a2 + 40) = v64;
  *(a2 + 48) = v68;
  *(a2 + 56) = v67;
  *(a2 + 64) = v66;
  *(a2 + 72) = v65;
  return result;
}

Swift::Int __swiftcall WidgetMultiStackScreenLayout.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall WidgetMultiStackScreenLayout.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t WidgetMultiStackScreenLayout.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 40 * result;
      v5 = *(v4 + 40);
      v6 = *(v4 + 64);
      *a2 = *(v4 + 32);
      *(a2 + 8) = v5;
      *(a2 + 16) = *(v4 + 48);
      *(a2 + 32) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_242C8F3F4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = *(*(v3 + 16) + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_242C8F464@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_242C8F47C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_242C8F4A4(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    if (v6 < *(v7 + 16))
    {
      v8 = v7 + 40 * v6;
      v9 = *(v8 + 40);
      v10 = *(v8 + 64);
      v11 = *(v8 + 48);
      *result = *(v8 + 32);
      *(result + 1) = v9;
      *(result + 1) = v11;
      *(result + 4) = v10;
      return sub_242C8F558;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_242C8F560@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = v2[4];
  v13 = v2[3];
  v14 = v5;
  v6 = v2[2];
  v11 = v2[1];
  v12 = v6;
  v10 = *v2;
  if (v3 < 0 || *(v11 + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v2[3];
    *(a2 + 48) = v2[2];
    *(a2 + 64) = v7;
    *(a2 + 80) = v2[4];
    v8 = v2[1];
    *(a2 + 16) = *v2;
    *(a2 + 32) = v8;
    *a2 = v3;
    *(a2 + 8) = v4;
    return sub_242C90A34(&v10, &v9);
  }

  return result;
}

void sub_242C8F5D8(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_242C8F5FC@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_242C8F628@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_242C8F3F4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t *sub_242C8F684(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_242C8F6AC(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F6C8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F6E4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_242C8F700@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_242C8F718(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_242C8F730@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  *(a1 + 80) = 0;
  return result;
}

void *sub_242C8F758()
{
  v1 = v0[3];
  v5[2] = v0[2];
  v5[3] = v1;
  v5[4] = v0[4];
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v3 = sub_242CD4F38(v5);
  sub_242C90A04(v5);
  return v3;
}

uint64_t WidgetMultiStackScreenLayout.description.getter()
{
  v1 = *(v0 + 16);
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000025, 0x8000000242F58FA0);
  v2 = MEMORY[0x245D26920](v1, &type metadata for WidgetMultiStackRowLayout);
  MEMORY[0x245D26660](v2);

  MEMORY[0x245D26660](0x6C6F4378616D202CLL, 0xEE00203A736E6D75);
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0;
LABEL_14:
    v12 = v3 - v4;
    v13 = (v1 + 40 * v4 + 40);
    do
    {
      v15 = *v13;
      v13 += 5;
      v14 = v15;
      if (v15 > v5)
      {
        v5 = v14;
      }

      --v12;
    }

    while (v12);
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v4 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v7 = (v1 + 80);
  v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v9 = *(v7 - 5);
    v11 = *v7;
    v7 += 10;
    v10 = v11;
    if (v9 > v5)
    {
      v5 = v9;
    }

    if (v10 > v6)
    {
      v6 = v10;
    }

    v8 -= 2;
  }

  while (v8);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (v3 != v4)
  {
    goto LABEL_14;
  }

LABEL_18:
  v16 = sub_242F05F60();
  MEMORY[0x245D26660](v16);

  MEMORY[0x245D26660](0xD000000000000014, 0x8000000242F58FD0);
  v17 = sub_242F05470();
  MEMORY[0x245D26660](v17);

  return 0;
}

void sub_242C8F9E8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v9 = a5 * a6;
  v10 = *(v6 + 32);
  v11 = a4 - (v10 + v10);
  v12 = v9 - (v10 + v10);
  if (v12 >= v11)
  {
    v12 = v11;
  }

  v13 = *(v6 + 56);
  if (*(v6 + 64) < v12)
  {
    v12 = *(v6 + 64);
  }

  if (v13 > v12)
  {
    if (qword_27ECEF4C8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_44;
  }

  if (a2)
  {
    if (a1 >= 1)
    {
      if (v10 <= *(v6 + 40))
      {
        v10 = *(v6 + 40);
      }

      while (1)
      {
        v18 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        v19 = (a4 - v10 * v18) / a1;
        if (v12 < v19)
        {
          v19 = v12;
        }

        if (v13 <= v19)
        {
          break;
        }

        if (a1-- <= 1)
        {
          goto LABEL_10;
        }
      }

      v25 = (a4 - v19 * a1) / v18;
      v26 = *(v6 + 48);
      v27 = *(v6 + 16);
      *a3 = v19;
      *(a3 + 8) = a1;
      if (v25 >= v26)
      {
        v25 = v26;
      }

      *(a3 + 16) = v25;
      *(a3 + 24) = a6;
      *(a3 + 32) = v27;
      *(a3 + 40) = 0;
      return;
    }

LABEL_48:
    sub_242F05A80();

    v29 = sub_242F05F60();
    MEMORY[0x245D26660](v29);

    sub_242F05C60();
    __break(1u);
    return;
  }

  if (a1 < 1)
  {
    goto LABEL_48;
  }

  v21 = floor(a4 / v12);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v22 = v21;
  if (v21 >= a1)
  {
    v22 = a1;
  }

  if (v10 <= *(v6 + 40))
  {
    v10 = *(v6 + 40);
  }

  while (!__OFADD__(v22, 1))
  {
    v23 = (a4 - v12 * v22) / (v22 + 1);
    if (v23 >= *(v6 + 48))
    {
      v23 = *(v6 + 48);
    }

    if (v10 <= v23)
    {
      v28 = *(v6 + 16);
      *a3 = v12;
      *(a3 + 8) = v22;
      *(a3 + 16) = v23;
      *(a3 + 24) = a6;
      *(a3 + 32) = v28;
      *(a3 + 40) = 0;
      return;
    }

    if (__OFSUB__(v22--, 1))
    {
      goto LABEL_43;
    }

    if (v22 <= 0)
    {
      goto LABEL_10;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_7:
  v14 = sub_242F039D0();
  __swift_project_value_buffer(v14, qword_27ED5D2F8);
  v15 = sub_242F039B0();
  v16 = sub_242F05720();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349312;
    *(v17 + 4) = a4;
    *(v17 + 12) = 2050;
    *(v17 + 14) = v9;
    _os_log_impl(&dword_242C53000, v15, v16, "View area too small to create a single widget: %{public}fx%{public}f", v17, 0x16u);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

LABEL_10:
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 40) = 1;
}

unint64_t sub_242C8FD38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242C8FE04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242C90A6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v7;
}

unint64_t sub_242C8FE04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_242C8FF10(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_242F05B50();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_242C8FF10(uint64_t a1, unint64_t a2)
{
  v3 = sub_242C8FF5C(a1, a2);
  sub_242C9008C(&unk_28557A3D8);
  return v3;
}

void *sub_242C8FF5C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_242D00DB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_242F05B50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_242F050A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242D00DB4(v10, 0);
        result = sub_242F05A30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_242C9008C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_242C90178(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_242C90178(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF07F0, &qword_242F0B8B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL _s14CarPlayAssetUI28WidgetMultiStackScreenLayoutV7MetricsV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t _s14CarPlayAssetUI28WidgetMultiStackScreenLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a1 + 72);
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  v13 = *(a2 + 24);
  v14 = *(a2 + 40);
  v8 = *(a2 + 56);
  v7 = *(a2 + 64);
  v9 = *(a2 + 72);
  if ((sub_242C72B08(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v10 = v5 == v8;
  if (v4 != v7)
  {
    v10 = 0;
  }

  v11 = vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v13), vceqq_f64(v16, v14)));
  v11.i16[0] = vminv_u16(v11);
  v12 = v10 & v11.i32[0];
  if (v6 == v9)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242C90404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0770;
  if (!qword_27ECF0770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0770);
  }

  return result;
}

unint64_t sub_242C9045C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0778;
  if (!qword_27ECF0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0778);
  }

  return result;
}

unint64_t sub_242C904E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0790;
  if (!qword_27ECF0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0790);
  }

  return result;
}

unint64_t sub_242C90580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF07A8;
  if (!qword_27ECF07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07A8);
  }

  return result;
}

unint64_t sub_242C905D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF07B0;
  if (!qword_27ECF07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07B0);
  }

  return result;
}

uint64_t sub_242C906A8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF07A0, &qword_242F0B5B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C90724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF07C8;
  if (!qword_27ECF07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07C8);
  }

  return result;
}

uint64_t sub_242C907B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0788, &qword_242F0B5A8);
    sub_242C904E4(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_242C908D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C9091C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_242C9099C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242C909BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_242C90A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t WidgetSuggestionSource.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t Widget.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *Widget.init(id:chsWidget:suggestionSource:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = v5;
  return result;
}

uint64_t Widget.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_242F04DD0();
  sub_242F05820();
  return MEMORY[0x245D279A0](v2);
}

uint64_t Widget.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C90C6C()
{
  v1 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242C90CE8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_242F04DD0();
  sub_242F05820();
  return MEMORY[0x245D279A0](v2);
}

uint64_t sub_242C90D38(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F05820();
  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

uint64_t Widget.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);

  sub_242F05A80();
  MEMORY[0x245D26660](0x6928746567646957, 0xEB00000000203A64);
  v5 = sub_242F04F90();
  MEMORY[0x245D26660](v5);

  MEMORY[0x245D26660](0x646957736863202CLL, 0xED0000203A746567);
  v6 = [v3 description];
  v7 = sub_242F04F30();
  v9 = v8;

  MEMORY[0x245D26660](v7, v9);

  MEMORY[0x245D26660](0xD000000000000014, 0x8000000242F59060);
  v10 = 0xE600000000000000;
  v11 = 0x3173756C506ELL;
  if (v4 != 1)
  {
    v11 = 0x696472616F626E6FLL;
    v10 = 0xEA0000000000676ELL;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1701736302;
  }

  if (v4)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x245D26660](v12, v13);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

uint64_t WidgetSuggestionSource.description.getter()
{
  v1 = 0x3173756C506ELL;
  if (*v0 != 1)
  {
    v1 = 0x696472616F626E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_242C90FBC()
{
  v1 = 0x3173756C506ELL;
  if (*v0 != 1)
  {
    v1 = 0x696472616F626E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t _s14CarPlayAssetUI6WidgetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_242F06110(), result = 0, (v5 & 1) != 0))
  {
    sub_242C912A0();
    return sub_242F05810() & (v2 == v3);
  }

  return result;
}

unint64_t sub_242C910A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF07F8;
  if (!qword_27ECF07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF07F8);
  }

  return result;
}

unint64_t sub_242C910FC()
{
  result = qword_27ECF0800;
  if (!qword_27ECF0800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0808, &qword_242F0B928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0800);
  }

  return result;
}

unint64_t sub_242C9117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0810;
  if (!qword_27ECF0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0810);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_242C91204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C9124C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242C912A0()
{
  result = qword_27ECF0818;
  if (!qword_27ECF0818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF0818);
  }

  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeColors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeSecondaryColors.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.activeTertiaryColors.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveColors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveSecondaryColors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.inactiveTertiaryColors.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.init(activeColors:activeSecondaryColors:activeTertiaryColors:inactiveColors:inactiveSecondaryColors:inactiveTertiaryColors:stops:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = *(result + 16);
  if (v8 && *(a2 + 16) && (v9 = *(a4 + 16)) != 0 && v8 == v9 && *(a7 + 16) + 1 == v8)
  {
    *a8 = result;
    a8[1] = a2;
    a8[2] = a3;
    a8[3] = a4;
    a8[4] = a5;
    a8[5] = a6;
    a8[6] = a7;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242C91674()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000015;
    if (v1 != 1)
    {
      v5 = 0xD000000000000014;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F43657669746361;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 != 5)
    {
      v2 = 0x73706F7473;
    }

    v3 = 0xD000000000000017;
    if (v1 == 3)
    {
      v3 = 0x6576697463616E69;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_242C91774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C95D34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C9179C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C946CC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C917D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C946CC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0820, &unk_242F0BAB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v11 = v1[5];
  v21 = v1[4];
  v22 = v10;
  v19 = v1[6];
  v20 = v11;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C946CC(v12, v13, v14);

  sub_242F064C0();
  v26 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830, &qword_242F18030);
  sub_242C94720(&qword_27ECF0838, sub_242C7C594, MEMORY[0x277D83948]);
  v15 = v4;
  sub_242F05F20();
  if (v2)
  {
  }

  else
  {
    v16 = v23;

    v26 = v24;
    v25 = 1;
    sub_242F05F20();
    v26 = v16;
    v25 = 2;
    sub_242F05F20();
    v26 = v22;
    v25 = 3;
    sub_242F05F20();
    v26 = v21;
    v25 = 4;
    sub_242F05F20();
    v26 = v20;
    v25 = 5;
    sub_242F05F20();
    v26 = v19;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0840, &qword_242F0BAC0);
    sub_242C94798(&qword_27ECF0848, MEMORY[0x277D83A08], MEMORY[0x277D83948]);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v15);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  MEMORY[0x245D279A0](*(*v1 + 16));
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = v4 + 32;
    do
    {
      v11 += 8;

      sub_242F04720();

      --v10;
    }

    while (v10);
  }

  MEMORY[0x245D279A0](*(v3 + 16));
  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = v3 + 32;
    do
    {
      v13 += 8;

      sub_242F04720();

      --v12;
    }

    while (v12);
  }

  MEMORY[0x245D279A0](*(v6 + 16));
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = v6 + 32;
    do
    {
      v15 += 8;

      sub_242F04720();

      --v14;
    }

    while (v14);
  }

  MEMORY[0x245D279A0](*(v5 + 16));
  v16 = *(v5 + 16);
  if (v16)
  {
    v17 = v5 + 32;
    do
    {
      v17 += 8;

      sub_242F04720();

      --v16;
    }

    while (v16);
  }

  MEMORY[0x245D279A0](*(v8 + 16));
  v18 = *(v8 + 16);
  if (v18)
  {
    v19 = v8 + 32;
    do
    {
      v19 += 8;

      sub_242F04720();

      --v18;
    }

    while (v18);
  }

  MEMORY[0x245D279A0](*(v7 + 16));
  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = v7 + 32;
    do
    {
      v21 += 8;

      sub_242F04720();

      --v20;
    }

    while (v20);
  }

  return sub_242C7BD24(a1, v9);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.TickColors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0850, &unk_242F0BAC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C946CC(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0830, &qword_242F18030);
  v25 = 0;
  sub_242C94720(&qword_27ECF0858, sub_242C7C540, MEMORY[0x277D83978]);
  sub_242F05E00();
  v23 = v26;
  v25 = 1;
  sub_242F05E00();
  v22 = v26;
  v25 = 2;
  sub_242F05E00();
  v21 = v26;
  v25 = 3;
  sub_242F05E00();
  v19[1] = 0;
  v20 = v26;
  v25 = 4;
  sub_242F05E00();
  v19[0] = v26;
  v25 = 5;
  sub_242F05E00();
  v13 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0840, &qword_242F0BAC0);
  v25 = 6;
  sub_242C94798(&qword_27ECF0860, MEMORY[0x277D83A30], MEMORY[0x277D83978]);
  sub_242F05E00();
  (*(v6 + 8))(v8, v5);
  v14 = v26;
  v15 = v24;
  v17 = v21;
  v16 = v22;
  *v24 = v23;
  v15[1] = v16;
  v18 = v20;
  v15[2] = v17;
  v15[3] = v18;
  v15[4] = v19[0];
  v15[5] = v13;
  v15[6] = v14;

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C92350()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242C923B0(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.tickColors.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.iconImageName.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

void Instrument.GaugeStyle.DialConfiguration.currentValueLabelFont.getter(uint64_t *a1@<X8>)
{
  v2 = v1[18];
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  v8 = v1[24];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_242C94804(v2, v3, v4, v5, v6, v7, v8);
}

__n128 Instrument.GaugeStyle.DialConfiguration.currentValueLabelFont.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_242C94844(*(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192));
  v4 = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = v4;
  result = v6;
  *(v1 + 176) = v6;
  *(v1 + 192) = v3;
  return result;
}

void Instrument.GaugeStyle.DialConfiguration.primaryTickMarkLabelFont.getter(uint64_t *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[29];
  v7 = v1[30];
  v8 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_242C94804(v2, v3, v4, v5, v6, v7, v8);
}

__n128 Instrument.GaugeStyle.DialConfiguration.primaryTickMarkLabelFont.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_242C94844(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248));
  v4 = *a1;
  *(v1 + 216) = a1[1];
  *(v1 + 200) = v4;
  result = v6;
  *(v1 + 232) = v6;
  *(v1 + 248) = v3;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.minimumValueLabel.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.maximumValueLabel.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

__n128 Instrument.GaugeStyle.DialConfiguration.init(dataIdentifier:bounds:minimumAngle:maximumAngle:primaryTickMarks:secondaryTickMarks:tertiaryTickMarks:tickColors:hasNeedle:iconImageName:currentValueLabelFont:primaryTickMarkLabelFont:currentValueMaximumFractionDigits:minimumValueLabel:maximumValueLabel:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, __int128 *a15, uint64_t a16, char a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a5 + 48);
  v22 = *(a14 + 48);
  v29 = a15[1];
  v30 = *a15;
  v27 = *(a14 + 32);
  v28 = a15[2];
  v23 = *(a15 + 6);
  *a9 = *a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a13;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  v24 = *(a5 + 16);
  *(a9 + 64) = *a5;
  *(a9 + 80) = v24;
  *(a9 + 96) = *(a5 + 32);
  *(a9 + 112) = v21;
  *(a9 + 120) = a6;
  *(a9 + 128) = a7;
  *(a9 + 136) = a8;
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  v25 = *(a14 + 16);
  *(a9 + 144) = *a14;
  *(a9 + 160) = v25;
  *(a9 + 176) = v27;
  *(a9 + 192) = v22;
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  *(a9 + 200) = v30;
  *(a9 + 216) = v29;
  *(a9 + 232) = v28;
  *(a9 + 248) = v23;
  *(a9 + 256) = a16;
  *(a9 + 264) = a17 & 1;
  result = a18;
  *(a9 + 272) = a18;
  *(a9 + 288) = a19;
  *(a9 + 296) = a20;
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.activeTickColor(for:)(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v4 = *(v1 + 64);
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E0, &qword_242F0A890);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    *(inited + 32) = v6;

    sub_242C81D3C(inited);
    v9 = 0;
    while (1)
    {
      if (*(v7 + 16) == v9 || (v10 = *(v4 + 16), v9 == v10))
      {

        return sub_242F04730();
      }

      if (v9 >= v10)
      {
        break;
      }

      v11 = (*(v7 + 8 * v9++ + 32) - v5) / (v6 - v5);
      if (v11 >= a1)
      {
        v12 = *(v4 + 8 * v9 + 24);

        return v12;
      }
    }

    __break(1u);
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

uint64_t Instrument.GaugeStyle.DialConfiguration.inactiveTickColor(for:)(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03E0, &qword_242F0A890);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F09510;
    *(inited + 32) = v6;

    sub_242C81D3C(inited);
    v9 = 0;
    while (1)
    {
      if (*(v7 + 16) == v9 || (v10 = *(v4 + 16), v9 == v10))
      {

        return sub_242F04730();
      }

      if (v9 >= v10)
      {
        break;
      }

      v11 = (*(v7 + 8 * v9++ + 32) - v5) / (v6 - v5);
      if (v11 >= a1)
      {
        v12 = *(v4 + 8 * v9 + 24);

        return v12;
      }
    }

    __break(1u);
  }

  result = sub_242F05C60();
  __break(1u);
  return result;
}

void *Instrument.GaugeStyle.DialConfiguration.assets.getter()
{
  v1 = v0[20];
  v2 = v0[26];
  v3 = v0[27];
  v27 = v0[25];
  v28 = v0[28];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[31];
  if (!v1)
  {
    v13 = MEMORY[0x277D84F90];
    if (!v3)
    {
      return v13;
    }

    goto LABEL_7;
  }

  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[31];
  v26 = v0[30];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  v21 = (v9 >> 8) & 1;
  v22 = v0[22] & 1;
  v35 = v12;
  v36 = v11;
  v37 = v1;
  v38 = v10;
  v39 = v9;
  v40 = v8;
  v41 = v7;
  sub_242C94884(&v35, &v29);
  v13 = sub_242C82D10(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_242C82D10((v14 > 1), v15 + 1, 1, v13);
  }

  v30 = &type metadata for RasterFont;
  v31 = &protocol witness table for RasterFont;
  v16 = swift_allocObject();
  *&v29 = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v11;
  *(v16 + 32) = v1;
  *(v16 + 40) = v10;
  *(v16 + 48) = v22;
  *(v16 + 49) = v21;
  *(v16 + 56) = v8;
  *(v16 + 64) = v7;
  v13[2] = v15 + 1;
  sub_242C65564(&v29, &v13[5 * v15 + 4]);
  v6 = v25;
  v4 = v26;
  v3 = v23;
  v2 = v24;
  if (v23)
  {
LABEL_7:
    v35 = v27;
    v36 = v2;
    v37 = v3;
    v38 = v28;
    v39 = v5;
    v40 = v4;
    v41 = v6;
    sub_242C94884(&v35, &v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_242C82D10(0, v13[2] + 1, 1, v13);
    }

    v18 = v13[2];
    v17 = v13[3];
    if (v18 >= v17 >> 1)
    {
      v13 = sub_242C82D10((v17 > 1), v18 + 1, 1, v13);
    }

    v30 = &type metadata for RasterFont;
    v31 = &protocol witness table for RasterFont;
    v19 = swift_allocObject();
    *&v29 = v19;
    *(v19 + 16) = v27;
    *(v19 + 17) = *v34;
    *(v19 + 20) = *&v34[3];
    *(v19 + 24) = v2;
    *(v19 + 32) = v3;
    *(v19 + 40) = v28;
    *(v19 + 48) = v5 & 1;
    *(v19 + 49) = BYTE1(v5) & 1;
    *(v19 + 50) = v32;
    *(v19 + 54) = v33;
    *(v19 + 56) = v4;
    *(v19 + 64) = v6;
    v13[2] = v18 + 1;
    sub_242C65564(&v29, &v13[5 * v18 + 4]);
  }

  return v13;
}

uint64_t sub_242C92D38(char a1)
{
  result = 0x6E65644961746164;
  switch(a1)
  {
    case 1:
      result = 0x73646E756F62;
      break;
    case 2:
      v3 = 1768843629;
      goto LABEL_10;
    case 3:
      v3 = 1769496941;
LABEL_10:
      result = v3 | 0x416D756D00000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6F6C6F436B636974;
      break;
    case 8:
      result = 0x6C6465654E736168;
      break;
    case 9:
      result = 0x67616D496E6F6369;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242C92F08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C95F8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C92F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C95374(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C92F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C95374(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0868, &qword_242F0BAD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v44 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v12 = *(v1 + 5);
  v70 = *(v1 + 6);
  v71 = v12;
  v13 = *(v1 + 8);
  v69 = *(v1 + 7);
  v62 = v13;
  v14 = *(v1 + 10);
  v63 = *(v1 + 9);
  v64 = v14;
  v15 = *(v1 + 12);
  v65 = *(v1 + 11);
  v66 = v15;
  v16 = *(v1 + 14);
  v67 = *(v1 + 13);
  v68 = v16;
  v80 = v1[120];
  v17 = *(v1 + 17);
  v60 = *(v1 + 16);
  v61 = v17;
  v18 = *(v1 + 19);
  v53 = *(v1 + 18);
  v54 = v18;
  v19 = *(v1 + 21);
  v59 = *(v1 + 20);
  v58 = v19;
  v20 = *(v1 + 23);
  v57 = *(v1 + 22);
  v56 = v20;
  v21 = *(v1 + 25);
  v55 = *(v1 + 24);
  v46 = v21;
  v22 = *(v1 + 27);
  v47 = *(v1 + 26);
  v52 = v22;
  v23 = *(v1 + 29);
  v51 = *(v1 + 28);
  v50 = v23;
  v24 = *(v1 + 31);
  v49 = *(v1 + 30);
  v48 = v24;
  v44[3] = *(v1 + 32);
  v45 = v1[264];
  v25 = *(v1 + 35);
  v44[1] = *(v1 + 34);
  v44[2] = v25;
  v26 = *(v1 + 37);
  v44[0] = *(v1 + 36);
  v27 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C95374(v27, v28, v29);
  v30 = sub_242F064C0();
  LOBYTE(v73) = v7;
  v81 = 0;
  sub_242C8AC28(v30, v31, v32);
  v33 = v72;
  sub_242F05F20();
  if (!v33)
  {
    v72 = v26;
    v73 = v8;
    v74 = v9;
    v81 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878, &qword_242F0BAE0);
    sub_242C953C8(&qword_27ECF0880, MEMORY[0x277D83A08], MEMORY[0x277D83640]);
    v34 = sub_242F05F20();
    v73 = v11;
    v81 = 2;
    sub_242C7DB7C(v34, v35, v36);
    sub_242F05F20();
    v73 = v10;
    v81 = 3;
    sub_242F05F20();
    LOBYTE(v73) = 4;
    sub_242F05F00();
    LOBYTE(v73) = 5;
    sub_242F05F00();
    LOBYTE(v73) = 6;
    v37 = sub_242F05F00();
    v73 = v62;
    v74 = v63;
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v79 = v68;
    v81 = 7;
    sub_242C95434(v37, v38, v39);

    sub_242F05F20();
    v70 = v77;
    v71 = v76;

    LOBYTE(v73) = 8;
    sub_242F05ED0();
    LOBYTE(v73) = 9;
    sub_242F05E50();
    v73 = v53;
    v74 = v54;
    v75 = v59;
    v76 = v58;
    v77 = v57;
    v78 = v56;
    v79 = v55;
    v81 = 10;
    sub_242C94804(v53, v54, v59, v58, v57, v56, v55);
    sub_242C95488(v40, v41, v42);
    sub_242F05EB0();
    sub_242C94844(v73, v74, v75, v76, v77, v78, v79);
    v73 = v46;
    v74 = v47;
    v75 = v52;
    v76 = v51;
    v77 = v50;
    v78 = v49;
    v79 = v48;
    v81 = 11;
    sub_242C94804(v46, v47, v52, v51, v50, v49, v48);
    sub_242F05EB0();
    sub_242C94844(v73, v74, v75, v76, v77, v78, v79);
    LOBYTE(v73) = 12;
    sub_242F05E90();
    LOBYTE(v73) = 13;
    sub_242F05E50();
    LOBYTE(v73) = 14;
    sub_242F05E50();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.GaugeStyle.DialConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v37 = *(v1 + 48);
  v38 = *(v1 + 56);
  v39 = *(v1 + 112);
  v8 = *(v1 + 136);
  v26 = *(v1 + 152);
  v27 = *(v1 + 144);
  v9 = *(v1 + 160);
  v24 = *(v1 + 176);
  v25 = *(v1 + 168);
  v23 = *(v1 + 184);
  v22 = *(v1 + 192);
  v32 = *(v1 + 208);
  v33 = *(v1 + 200);
  v40 = *(v1 + 216);
  v30 = *(v1 + 232);
  v31 = *(v1 + 224);
  v29 = *(v1 + 240);
  v28 = *(v1 + 248);
  v21 = *(v1 + 256);
  v41 = *(v1 + 264);
  v42 = *(v1 + 296);
  v43 = *(v1 + 280);
  LOBYTE(v57) = *v1;
  InstrumentDataIdentifier.rawValue.getter();
  v10 = 0.0;
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  v12 = v11;
  if (v4 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v4;
  }

  v14 = v13;
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  v16 = v15;
  if (v6 != 0.0)
  {
    v10 = v6;
  }

  v17 = v10;
  v35 = *(v1 + 80);
  v36 = *(v1 + 64);
  v34 = *(v1 + 96);
  sub_242F04DD0();

  MEMORY[0x245D279D0](*&v12);
  MEMORY[0x245D279D0](*&v14);
  MEMORY[0x245D279D0](*&v16);
  MEMORY[0x245D279D0](*&v17);
  MEMORY[0x245D279A0](v7);
  MEMORY[0x245D279A0](v37);
  MEMORY[0x245D279A0](v38);
  v57 = v36;
  v58 = v35;
  v59 = v34;
  v60 = v39;
  Instrument.GaugeStyle.DialConfiguration.TickColors.hash(into:)(a1);
  sub_242F063B0();
  if (v8)
  {
    sub_242F063B0();
    sub_242F04DD0();
    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_242F063B0();
    if (v9)
    {
LABEL_14:
      *&v44 = v27;
      *(&v44 + 1) = v26;
      *&v46 = v9;
      *(&v46 + 1) = v25;
      *&v48 = v24;
      *(&v48 + 1) = v23;
      sub_242F063B0();
      v50 = v27;
      v51 = v26;
      v52 = v9;
      v53 = v25;
      v54 = v24;
      v55 = v23;
      v56 = v22;
      sub_242C94884(&v50, &v57);
      RasterFont.hash(into:)(a1);
      v57 = v44;
      v58 = v46;
      v59 = v48;
      v60 = v22;
      sub_242C954DC(&v57);
      v18 = v40;
      if (v40)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  sub_242F063B0();
  v18 = v40;
  if (v40)
  {
LABEL_15:
    *&v45 = v33;
    *(&v45 + 1) = v32;
    *&v47 = v18;
    *(&v47 + 1) = v31;
    *&v49 = v30;
    *(&v49 + 1) = v29;
    sub_242F063B0();
    v50 = v33;
    v51 = v32;
    v52 = v18;
    v53 = v31;
    v54 = v30;
    v55 = v29;
    v56 = v28;
    sub_242C94884(&v50, &v57);
    RasterFont.hash(into:)(a1);
    v57 = v45;
    v58 = v47;
    v59 = v49;
    v60 = v28;
    sub_242C954DC(&v57);
    if (v41)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_242F063B0();
  if (v41)
  {
LABEL_16:
    sub_242F063B0();
    v19 = v42;
    if (v43)
    {
      goto LABEL_17;
    }

LABEL_23:
    sub_242F063B0();
    if (v19)
    {
      goto LABEL_18;
    }

    return sub_242F063B0();
  }

LABEL_22:
  sub_242F063B0();
  MEMORY[0x245D279A0](v21);
  v19 = v42;
  if (!v43)
  {
    goto LABEL_23;
  }

LABEL_17:
  sub_242F063B0();
  sub_242F04DD0();
  if (v19)
  {
LABEL_18:
    sub_242F063B0();
    return sub_242F04DD0();
  }

  return sub_242F063B0();
}

uint64_t Instrument.GaugeStyle.DialConfiguration.hashValue.getter()
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void Instrument.GaugeStyle.DialConfiguration.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0898, &qword_242F0BAE8);
  v5 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v7 = &v56 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C95374(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    v134 = v2;
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
LABEL_4:
    sub_242C94844(v35, v36, v37, v38, v39, v34, v33);
    sub_242C94844(v32, v31, v30, v29, v28, v27, v26);
    return;
  }

  v86 = v5;
  LOBYTE(v88[0]) = 0;
  sub_242C8AC7C(v11, v12, v13);
  sub_242F05E00();
  v14 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878, &qword_242F0BAE0);
  LOBYTE(v88[0]) = 1;
  sub_242C953C8(&qword_27ECF08A0, MEMORY[0x277D83A30], MEMORY[0x277D83668]);
  v15 = sub_242F05E00();
  v84 = v14;
  v16 = v89;
  v17 = v90;
  LOBYTE(v88[0]) = 2;
  sub_242C7DBD0(v15, v18, v19);
  sub_242F05E00();
  v20 = v89;
  LOBYTE(v88[0]) = 3;
  sub_242F05E00();
  v21 = v89;
  LOBYTE(v89) = 4;
  v22 = sub_242F05DE0();
  LOBYTE(v89) = 5;
  v23 = sub_242F05DE0();
  LOBYTE(v89) = 6;
  v82 = sub_242F05DE0();
  v83 = v23;
  LOBYTE(v88[0]) = 7;
  sub_242C95530(v82, v24, v25);
  sub_242F05E00();
  v67 = v90;
  v68 = v89;
  v66 = v91;
  v71 = v93;
  v72 = v92;
  v69 = v95;
  v70 = v94;
  LOBYTE(v89) = 8;
  v40 = sub_242F05DB0();
  v134 = 0;
  v41 = v40;
  v64 = v22;
  LOBYTE(v89) = 9;
  v42 = sub_242F05D30();
  v65 = v43;
  v134 = 0;
  v45 = v42;
  LOBYTE(v88[0]) = 10;
  sub_242C95584(v42, v43, v44);
  v46 = v134;
  sub_242F05D90();
  v134 = v46;
  if (v46)
  {
    (*(v86 + 8))(v7, v87);
    v78 = 0;
    v79 = 0;
    v76 = 0;
    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
LABEL_10:
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v80 = 0;
    v81 = 0;
    v27 = 0;
    v26 = 0;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_2Tm(a1);

    v38 = v78;
    v39 = v79;
    v36 = v76;
    v37 = v77;
    v33 = v73;
    v34 = v74;
    v35 = v75;
    v28 = v80;
    v29 = v81;
    goto LABEL_4;
  }

  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v79 = v93;
  v73 = v95;
  v74 = v94;
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  LOBYTE(v88[0]) = 11;
  v47 = v134;
  sub_242F05D90();
  v134 = v47;
  if (v47)
  {
    (*(v86 + 8))(v7, v87);
    goto LABEL_10;
  }

  v62 = v90;
  v63 = v89;
  v61 = v91;
  v80 = v93;
  v81 = v92;
  v27 = v94;
  v26 = v95;
  sub_242C94844(0, 0, 0, 0, 0, 0, 0);
  LOBYTE(v89) = 12;
  v48 = v134;
  v60 = sub_242F05D70();
  v134 = v48;
  if (v48)
  {
    (*(v86 + 8))(v7, v87);
    v31 = v62;
    v32 = v63;
    v30 = v61;
    goto LABEL_5;
  }

  v131 = v49 & 1;
  LOBYTE(v89) = 13;
  v59 = sub_242F05D30();
  v85 = v50;
  v134 = 0;
  v129 = 14;
  v51 = sub_242F05D30();
  v57 = v52;
  v58 = v51;
  v134 = 0;
  HIDWORD(v56) = v41 & 1;
  (*(v86 + 8))(v7, v87);
  *(&v88[33] + 1) = *v130;
  LOBYTE(v88[0]) = v84;
  v88[1] = v16;
  v88[2] = v17;
  v88[3] = v20;
  v88[4] = v21;
  v88[5] = v64;
  v88[6] = v83;
  v53 = v67;
  v54 = v68;
  v88[7] = v82;
  v88[8] = v68;
  v55 = v66;
  v88[9] = v67;
  v88[10] = v66;
  v88[11] = v72;
  v88[12] = v71;
  v88[13] = v70;
  v88[14] = v69;
  LOBYTE(v88[15]) = BYTE4(v56);
  v88[16] = v45;
  v88[17] = v65;
  v88[18] = v75;
  v88[19] = v76;
  v88[20] = v77;
  v88[21] = v78;
  v88[22] = v79;
  v88[23] = v74;
  v88[24] = v73;
  v88[25] = v63;
  v88[26] = v62;
  v88[27] = v61;
  v88[28] = v81;
  v88[29] = v80;
  v88[30] = v27;
  v88[31] = v26;
  v88[32] = v60;
  HIDWORD(v88[33]) = *&v130[3];
  LODWORD(v87) = v131;
  LOBYTE(v88[33]) = v131;
  v88[34] = v59;
  v88[35] = v85;
  v88[36] = v58;
  v88[37] = v57;
  memcpy(a2, v88, 0x130uLL);
  sub_242C955D8(v88, &v89);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  LOBYTE(v89) = v84;
  v94 = v64;
  v95 = v83;
  v96 = v82;
  v97 = v54;
  v98 = v53;
  v99 = v55;
  *(&v89 + 1) = v133[0];
  HIDWORD(v89) = *(v133 + 3);
  v90 = v16;
  v91 = v17;
  v92 = v20;
  v93 = v21;
  v100 = v72;
  v101 = v71;
  v102 = v70;
  v103 = v69;
  v104 = BYTE4(v56);
  *v105 = *v132;
  *&v105[3] = *&v132[3];
  v106 = v45;
  v107 = v65;
  v108 = v75;
  v109 = v76;
  v110 = v77;
  v111 = v78;
  v112 = v79;
  v113 = v74;
  v114 = v73;
  v115 = v63;
  v116 = v62;
  v117 = v61;
  v118 = v81;
  v119 = v80;
  v120 = v27;
  v121 = v26;
  v122 = v60;
  v123 = v87;
  *v124 = *v130;
  *&v124[3] = *&v130[3];
  v125 = v59;
  v126 = v85;
  v127 = v58;
  v128 = v57;
  sub_242C95610(&v89);
}

uint64_t sub_242C944F8()
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242C9453C(uint64_t a1)
{
  sub_242F06390();
  Instrument.GaugeStyle.DialConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t sub_242C9457C(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x245D279D0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x245D279D0](*&v3);
}

uint64_t _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV10TickColorsV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v14 = a1[6];
  if ((sub_242C73158(*a1, *a2) & 1) == 0 || (sub_242C73158(v2, v7) & 1) == 0 || (sub_242C73158(v4, v9) & 1) == 0 || (sub_242C73158(v3, v8) & 1) == 0 || (sub_242C73158(v6, v11) & 1) == 0 || (sub_242C73158(v5, v10) & 1) == 0)
  {
    return 0;
  }

  return sub_242C732A0(v14, v13);
}

unint64_t sub_242C946CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0828;
  if (!qword_27ECF0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0828);
  }

  return result;
}

uint64_t sub_242C94720(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0830, &qword_242F18030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C94798(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0840, &qword_242F0BAC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_242C94804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a3;
  }
}

void sub_242C94844(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v107 = *(a1 + 48);
  v108 = *(a1 + 40);
  v102 = *(a1 + 64);
  v103 = *(a1 + 80);
  v104 = *(a1 + 96);
  v105 = *(a1 + 112);
  v106 = *(a1 + 56);
  v101 = *(a1 + 120);
  v85 = *(a1 + 128);
  v92 = *(a1 + 152);
  v90 = *(a1 + 136);
  v91 = *(a1 + 160);
  v93 = *(a1 + 168);
  v94 = *(a1 + 176);
  v95 = *(a1 + 184);
  v96 = *(a1 + 192);
  v97 = *(a1 + 144);
  v79 = *(a1 + 208);
  v82 = *(a1 + 216);
  v74 = *(a1 + 200);
  v75 = *(a1 + 224);
  v76 = *(a1 + 232);
  v6 = *(a1 + 256);
  v77 = *(a1 + 248);
  LOBYTE(v119) = *a1;
  LOBYTE(v129) = *a2;
  v71 = *(a1 + 264);
  v63 = *(a1 + 272);
  v68 = *(a1 + 280);
  v69 = v6;
  v60 = *(a1 + 288);
  v65 = *(a1 + 296);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 56);
  v13 = *(a2 + 64);
  v15 = *(a2 + 72);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v109 = *(a2 + 96);
  v110 = *(a2 + 112);
  v100 = *(a2 + 120);
  v84 = *(a2 + 128);
  v98 = *(a2 + 144);
  v88 = *(a2 + 160);
  v89 = *(a2 + 136);
  v99 = *(a2 + 168);
  v86 = *(a2 + 176);
  v87 = *(a2 + 192);
  v81 = *(a2 + 200);
  v80 = *(a2 + 216);
  v78 = *(a2 + 224);
  v83 = *(a2 + 232);
  v72 = *(a2 + 240);
  v73 = *(a2 + 248);
  v70 = *(a2 + 264);
  v66 = *(a2 + 256);
  v67 = *(a2 + 280);
  v61 = *(a2 + 288);
  v62 = *(a2 + 272);
  v64 = *(a2 + 296);
  v18 = InstrumentDataIdentifier.rawValue.getter();
  v20 = v19;
  if (v18 == InstrumentDataIdentifier.rawValue.getter() && v20 == v21)
  {

    result = 0;
  }

  else
  {
    v23 = sub_242F06110();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v8 && v2 == v7 && v5 == v10 && v4 == v9 && v108 == v11 && v107 == v12 && v106 == v14)
  {
    v119 = v102;
    v120 = v103;
    v121 = v104;
    v122 = v105;
    *&v129 = v13;
    *(&v129 + 1) = v15;
    *&v130 = v16;
    *(&v130 + 1) = v17;
    v131 = v109;
    v132 = v110;

    v24 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO17DialConfigurationV10TickColorsV2eeoiySbAI_AItFZ_0(&v119, &v129);

    result = 0;
    if ((v24 & 1) != 0 && ((v101 ^ v100) & 1) == 0)
    {
      if (v90)
      {
        v26 = v95;
        v25 = v96;
        v28 = v93;
        v27 = v94;
        v29 = v91;
        v30 = v92;
        v31 = v97;
        v33 = *(&v98 + 1);
        v34 = v98;
        v32 = v99;
        if (!v89)
        {
          return 0;
        }

        if (v85 != v84 || v90 != v89)
        {
          v35 = sub_242F06110();
          v25 = v96;
          v26 = v95;
          v27 = v94;
          v28 = v93;
          v30 = v92;
          v31 = v97;
          if ((v35 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v26 = v95;
        v25 = v96;
        v28 = v93;
        v27 = v94;
        v29 = v91;
        v30 = v92;
        v31 = v97;
        v33 = *(&v98 + 1);
        v34 = v98;
        v32 = v99;
        if (v89)
        {
          return 0;
        }
      }

      if (v29)
      {
        *&v119 = v31;
        *(&v119 + 1) = v30;
        *&v120 = v29;
        *(&v120 + 1) = v28;
        *&v121 = v27;
        *(&v121 + 1) = v26;
        v122 = v25;
        if (v88)
        {
          *&v111 = v34;
          *(&v111 + 1) = v33;
          *&v112 = v88;
          *(&v112 + 1) = v32;
          v113 = v86;
          v114 = v87;
          sub_242C94804(v31, v30, v29, v28, v27, v26, v25);
          sub_242C94804(v98, *(&v98 + 1), v88, v99, v86, *(&v86 + 1), v87);
          sub_242C94804(v31, v30, v29, v28, v27, v26, v96);
          v36 = v29;
          v37 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v119, &v111);
          v115 = v111;
          v116 = v112;
          v117 = v113;
          v118 = v114;
          sub_242C954DC(&v115);
          v129 = v119;
          v130 = v120;
          v131 = v121;
          v132 = v122;
          sub_242C954DC(&v129);
          sub_242C94844(v31, v30, v36, v28, v27, v26, v96);
          if ((v37 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_30;
        }

        v129 = v119;
        v130 = v120;
        v131 = v121;
        v132 = v122;
        v38 = v25;
        sub_242C94804(v31, v30, v29, v28, v27, v26, v25);
        v45 = v34;
        v46 = v33;
        v47 = v32;
        v42 = *(&v86 + 1);
        v43 = v86;
        v44 = v87;
        sub_242C94804(v45, v46, 0, v47, v86, *(&v86 + 1), v87);
        sub_242C94804(v31, v30, v29, v28, v27, v26, v38);
        sub_242C954DC(&v129);
      }

      else
      {
        v38 = v25;
        sub_242C94804(v31, v30, 0, v28, v27, v26, v25);
        if (!v88)
        {
          sub_242C94804(v34, v33, 0, v32, v86, *(&v86 + 1), v87);
          sub_242C94844(v31, v30, 0, v28, v27, v26, v38);
LABEL_30:
          if (v82)
          {
            v48 = v75;
            *&v119 = v74;
            *(&v119 + 1) = v79;
            *&v120 = v82;
            *(&v120 + 1) = v75;
            v49 = *(&v76 + 1);
            v50 = v76;
            v121 = v76;
            v51 = v77;
            v122 = v77;
            if (v80)
            {
              v111 = v81;
              *&v112 = v80;
              *(&v112 + 1) = v78;
              *&v113 = v83;
              *(&v113 + 1) = v72;
              v114 = v73;
              sub_242C94804(v74, v79, v82, v75, v76, *(&v76 + 1), v77);
              sub_242C94804(v81, *(&v81 + 1), v80, v78, v83, v72, v73);
              sub_242C94804(v74, v79, v82, v75, v76, *(&v76 + 1), v77);
              v52 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v119, &v111);
              v115 = v111;
              v116 = v112;
              v117 = v113;
              v118 = v114;
              sub_242C954DC(&v115);
              v129 = v119;
              v130 = v120;
              v131 = v121;
              v132 = v122;
              sub_242C954DC(&v129);
              sub_242C94844(v74, v79, v82, v75, v76, *(&v76 + 1), v77);
              if ((v52 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_42;
            }

            v129 = v119;
            v130 = v120;
            v131 = v121;
            v132 = v122;
            v54 = v79;
            v53 = v74;
            v58 = v82;
            sub_242C94804(v74, v79, v82, v75, v76, *(&v76 + 1), v77);
            v55 = v78;
            v57 = v72;
            v56 = v73;
            sub_242C94804(v81, *(&v81 + 1), 0, v78, v83, v72, v73);
            sub_242C94804(v74, v79, v82, v75, v76, *(&v76 + 1), v77);
            sub_242C954DC(&v129);
          }

          else
          {
            v53 = v74;
            v48 = v75;
            v54 = v79;
            v49 = *(&v76 + 1);
            v50 = v76;
            v51 = v77;
            sub_242C94804(v74, v79, 0, v75, v76, *(&v76 + 1), v77);
            if (!v80)
            {
              sub_242C94804(v81, *(&v81 + 1), 0, v78, v83, v72, v73);
              sub_242C94844(v74, v79, 0, v75, v76, *(&v76 + 1), v77);
LABEL_42:
              if (v71)
              {
                if (!v70)
                {
                  return 0;
                }
              }

              else
              {
                v59 = v70;
                if (v69 != v66)
                {
                  v59 = 1;
                }

                if (v59)
                {
                  return 0;
                }
              }

              if (v68)
              {
                if (!v67 || (v63 != v62 || v68 != v67) && (sub_242F06110() & 1) == 0)
                {
                  return 0;
                }
              }

              else if (v67)
              {
                return 0;
              }

              if (v65)
              {
                return v64 && (v60 == v61 && v65 == v64 || (sub_242F06110() & 1) != 0);
              }

              return !v64;
            }

            v55 = v78;
            v57 = v72;
            v56 = v73;
            sub_242C94804(v81, *(&v81 + 1), v80, v78, v83, v72, v73);
            v58 = 0;
          }

          *&v119 = v53;
          *(&v119 + 1) = v54;
          *&v120 = v58;
          *(&v120 + 1) = v48;
          *&v121 = v50;
          *(&v121 + 1) = v49;
          v122 = v51;
          v123 = v81;
          v124 = v80;
          v125 = v55;
          v126 = v83;
          v127 = v57;
          v128 = v56;
LABEL_38:
          sub_242C96450(&v119);
          return 0;
        }

        v39 = v34;
        v40 = v33;
        v41 = v32;
        v42 = *(&v86 + 1);
        v43 = v86;
        v44 = v87;
        sub_242C94804(v39, v40, v88, v41, v86, *(&v86 + 1), v87);
      }

      *&v119 = v31;
      *(&v119 + 1) = v30;
      *&v120 = v29;
      *(&v120 + 1) = v28;
      *&v121 = v27;
      *(&v121 + 1) = v26;
      v122 = v38;
      v123 = v98;
      v124 = v88;
      v125 = v99;
      v126 = v43;
      v127 = v42;
      v128 = v44;
      goto LABEL_38;
    }
  }

  return result;
}

unint64_t sub_242C95374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0870;
  if (!qword_27ECF0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0870);
  }

  return result;
}

uint64_t sub_242C953C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0878, &qword_242F0BAE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C95434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0888;
  if (!qword_27ECF0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0888);
  }

  return result;
}

unint64_t sub_242C95488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0890;
  if (!qword_27ECF0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0890);
  }

  return result;
}

unint64_t sub_242C95530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08A8;
  if (!qword_27ECF08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08A8);
  }

  return result;
}

unint64_t sub_242C95584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08B0;
  if (!qword_27ECF08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08B0);
  }

  return result;
}

unint64_t sub_242C95644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08B8;
  if (!qword_27ECF08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08B8);
  }

  return result;
}

unint64_t sub_242C9569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08C0;
  if (!qword_27ECF08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08C0);
  }

  return result;
}

uint64_t sub_242C956F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C95740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242C957E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242C95828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17DialConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17DialConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s17DialConfigurationV10TickColorsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17DialConfigurationV10TickColorsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242C95B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08C8;
  if (!qword_27ECF08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08C8);
  }

  return result;
}

unint64_t sub_242C95B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08D0;
  if (!qword_27ECF08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08D0);
  }

  return result;
}

unint64_t sub_242C95BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08D8;
  if (!qword_27ECF08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08D8);
  }

  return result;
}

unint64_t sub_242C95C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08E0;
  if (!qword_27ECF08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08E0);
  }

  return result;
}

unint64_t sub_242C95C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08E8;
  if (!qword_27ECF08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08E8);
  }

  return result;
}

unint64_t sub_242C95CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF08F0;
  if (!qword_27ECF08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF08F0);
  }

  return result;
}

uint64_t sub_242C95D34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43657669746361 && a2 == 0xEC00000073726F6CLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F591D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F591F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xEE0073726F6C6F43 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F59210 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F59230 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_242C95F8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416D756D696E696DLL && a2 == 0xEC000000656C676ELL || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x416D756D6978616DLL && a2 == 0xEC000000656C676ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59250 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59270 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59290 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C6F436B636974 && a2 == 0xEA00000000007372 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6465654E736168 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x67616D496E6F6369 && a2 == 0xED0000656D614E65 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F592B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F592D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000242F592F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59320 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F59340 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_242C96450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF08F8, &qword_242F0C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LayerHostView.body.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for WrapLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_242C96A28, v3, v2);
}

uint64_t sub_242C96568()
{
  v1 = *v0;
  v2 = type metadata accessor for WrapLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_242C96B0C, v3, v2);
}

id sub_242C966C4()
{
  result = [v0 sublayers];
  if (result)
  {
    v2 = result;
    sub_242C96AC0();
    v3 = sub_242F05310();

    if (v3 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_242F059B0())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x245D270D0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v0 bounds];
        [v7 setFrame_];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  return result;
}

id sub_242C96974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WrapLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_242C969AC(void *a1, id a2)
{
  v4 = [a2 superlayer];
  if (v4)
  {
  }

  else
  {

    [a1 addSublayer_];
  }
}

unint64_t sub_242C96A5C()
{
  result = qword_27ECF0900;
  if (!qword_27ECF0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0908, &qword_242F0C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0900);
  }

  return result;
}

unint64_t sub_242C96AC0()
{
  result = qword_27ECF0910;
  if (!qword_27ECF0910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF0910);
  }

  return result;
}

CarPlayAssetUI::VehicleType_optional __swiftcall VehicleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VehicleType.rawValue.getter()
{
  v1 = 4539209;
  if (*v0 != 1)
  {
    v1 = 0x646972627948;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 22085;
  }
}

uint64_t sub_242C96BBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4539209;
  if (v2 != 1)
  {
    v4 = 0x646972627948;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 22085;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 4539209;
  if (*a2 != 1)
  {
    v8 = 0x646972627948;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 22085;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242C96CA0()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242C96D2C(uint64_t a1)
{
  sub_242F04DD0();
}

uint64_t sub_242C96DA4(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242C96E38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE300000000000000;
  v5 = 4539209;
  if (v2 != 1)
  {
    v5 = 0x646972627948;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 22085;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_242C96F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0918;
  if (!qword_27ECF0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0918);
  }

  return result;
}

unint64_t sub_242C96FA4()
{
  result = qword_27ECF0920;
  if (!qword_27ECF0920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0928, &qword_242F0C178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0920);
  }

  return result;
}

unint64_t sub_242C9700C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0930;
  if (!qword_27ECF0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0930);
  }

  return result;
}

unint64_t sub_242C97064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0938;
  if (!qword_27ECF0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0938);
  }

  return result;
}

unint64_t sub_242C970C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0940;
  if (!qword_27ECF0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0940);
  }

  return result;
}

void TrackingView.init(identifier:cornerRadius:)(void *a3@<X8>, double a4@<D0>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
  *a3 = v6;
  v8 = v6;
  v7 = sub_242F04F00();

  [v8 setIdentifier_];

  [v8 setCornerRadius_];
}

id TrackingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  return v2;
}

id sub_242C9720C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 8) = 0;
  return v2;
}

unint64_t sub_242C9722C()
{
  result = qword_27ECF0948;
  if (!qword_27ECF0948)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0950, &qword_242F0C2D8);
    sub_242C972B8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0948);
  }

  return result;
}

unint64_t sub_242C972B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0958;
  if (!qword_27ECF0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0958);
  }

  return result;
}

uint64_t TypedIdentifier.init(rawValue:)@<X0>(uint64_t a2@<X1>, void *a4@<X8>)
{
  if (a2)
  {
    sub_242F03810();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_242F03830();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

void sub_242C973A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D0E8 = v8;
  unk_27ED5D0F0 = v10;
  qword_27ED5D0F8 = v15;
  byte_27ED5D100 = 0;
}

void sub_242C97654()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D108 = v8;
  unk_27ED5D110 = v10;
  qword_27ED5D118 = v15;
  byte_27ED5D120 = 0;
}

void sub_242C97904()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D128 = v8;
  unk_27ED5D130 = v10;
  qword_27ED5D138 = v15;
  byte_27ED5D140 = 0;
}

void sub_242C97BB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D148 = v8;
  unk_27ED5D150 = v10;
  qword_27ED5D158 = v15;
  byte_27ED5D160 = 0;
}

void sub_242C97E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D168 = v8;
  unk_27ED5D170 = v10;
  qword_27ED5D178 = v15;
  byte_27ED5D180 = 0;
}

void sub_242C98118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D188 = v8;
  unk_27ED5D190 = v10;
  qword_27ED5D198 = v15;
  byte_27ED5D1A0 = 0;
}

void sub_242C983C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D1A8 = v8;
  unk_27ED5D1B0 = v10;
  qword_27ED5D1B8 = v15;
  byte_27ED5D1C0 = 0;
}

void sub_242C98678()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9410, &unk_242F39E40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_242F03720();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F03710();
  v8 = sub_242F036F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  sub_242F057A0();
  sub_242F03810();
  sub_242F03810();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = sub_242F05790();
  v13 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v14 = sub_242F04F00();
  v15 = [v13 initWithExtensionIdentity:v12 kind:v14 family:1 intent:0 activityIdentifier:0];

  qword_27ED5D1C8 = v8;
  unk_27ED5D1D0 = v10;
  qword_27ED5D1D8 = v15;
  byte_27ED5D1E0 = 0;
}

uint64_t static Widget.defaultWidgets.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0248, &qword_242F0A740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_242F0C2E0;
  if (qword_27ECEEE60 != -1)
  {
    swift_once();
  }

  v1 = unk_27ED5D0F0;
  v2 = qword_27ED5D0F8;
  v3 = byte_27ED5D100;
  *(v0 + 32) = qword_27ED5D0E8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  v4 = qword_27ECEEE70;

  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = unk_27ED5D130;
  v7 = qword_27ED5D138;
  v8 = byte_27ED5D140;
  *(v0 + 64) = qword_27ED5D128;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = qword_27ECEEE88;

  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = unk_27ED5D190;
  v12 = qword_27ED5D198;
  v13 = byte_27ED5D1A0;
  *(v0 + 96) = qword_27ED5D188;
  *(v0 + 104) = v11;
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  v14 = qword_27ECEEE68;

  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = unk_27ED5D110;
  v17 = qword_27ED5D118;
  v18 = byte_27ED5D120;
  *(v0 + 128) = qword_27ED5D108;
  *(v0 + 136) = v16;
  *(v0 + 144) = v17;
  *(v0 + 152) = v18;
  v19 = qword_27ECEEE78;

  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = unk_27ED5D150;
  v22 = qword_27ED5D158;
  v23 = byte_27ED5D160;
  *(v0 + 160) = qword_27ED5D148;
  *(v0 + 168) = v21;
  *(v0 + 176) = v22;
  *(v0 + 184) = v23;
  v24 = qword_27ECEEE98;

  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = unk_27ED5D1D0;
  v27 = qword_27ED5D1D8;
  v28 = byte_27ED5D1E0;
  *(v0 + 192) = qword_27ED5D1C8;
  *(v0 + 200) = v26;
  *(v0 + 208) = v27;
  *(v0 + 216) = v28;
  v29 = qword_27ECEEE80;

  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = unk_27ED5D170;
  v32 = qword_27ED5D178;
  v33 = byte_27ED5D180;
  *(v0 + 224) = qword_27ED5D168;
  *(v0 + 232) = v31;
  *(v0 + 240) = v32;
  *(v0 + 248) = v33;
  v34 = qword_27ECEEE90;

  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = unk_27ED5D1B0;
  v37 = qword_27ED5D1B8;
  v38 = byte_27ED5D1C0;
  *(v0 + 256) = qword_27ED5D1A8;
  *(v0 + 264) = v36;
  *(v0 + 272) = v37;
  *(v0 + 280) = v38;

  v39 = v37;
  return v0;
}

uint64_t sub_242C98C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_242E3BE10(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_242F05940();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 944 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_242E3BE10((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_242C9E060(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_242C9E060(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_242C98E68()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x6564616873;
  }
}

uint64_t sub_242C98E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6564616873 && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242C98F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B53C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C98FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B53C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242C98FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B590(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C9901C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B590(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242C9906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564616873 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242C990F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B638(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C9912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B638(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Theme.ColorOverride.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0968, &qword_242F0C300);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0970, &qword_242F0C308);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0978, &qword_242F0C310);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v27 - v10;
  v12 = v1[1];
  v32 = *v1;
  v29 = v1[2];
  v13 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B53C(v13, v14, v15);
  v16 = sub_242F064C0();
  if (v12 < 0)
  {
    LOBYTE(v34) = 1;
    sub_242C9B590(v16, v17, v18);
    v22 = v33;
    v23 = sub_242F05E40();
    v34 = v32;
    sub_242C9B5E4(v23, v24, v25);
    v26 = v28;
    sub_242F05F20();
    (*(v27 + 8))(v5, v26);
    return (*(v9 + 8))(v11, v22);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_242C9B638(v16, v17, v18);
    v19 = v33;
    sub_242F05E40();
    v34 = v32;
    v35 = v12 & 1;
    v36 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09A0, &qword_242F0C318);
    sub_242C9B734(&qword_27ECF09A8, &protocol conformance descriptor for <> Pair<A, B>);
    v20 = v31;
    sub_242F05F20();
    (*(v30 + 8))(v8, v20);
    return (*(v9 + 8))(v11, v19);
  }
}

uint64_t Theme.ColorOverride.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[1] < 0)
  {
    MEMORY[0x245D279A0](1);

    return sub_242C793AC(a1, v3);
  }

  else
  {
    v4 = v1[2];
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    return MEMORY[0x245D279A0](v4);
  }
}

uint64_t Theme.ColorOverride.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F06390();
  if (v2 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242C793AC(v5, v1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    MEMORY[0x245D279A0](v3);
  }

  return sub_242F063E0();
}

uint64_t Theme.ColorOverride.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09C0, &qword_242F0C320);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09C8, &qword_242F0C328);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09D0, &qword_242F0C330);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = a1[3];
  v50 = a1;
  v14 = __swift_project_boxed_opaque_existential_2Tm(a1, v13);
  sub_242C9B53C(v14, v15, v16);
  v17 = v42;
  sub_242F06480();
  if (!v17)
  {
    v42 = v10;
    v18 = v40;
    v19 = v41;
    v20 = sub_242F05E10();
    v21 = (2 * *(v20 + 16)) | 1;
    v46 = v20;
    v47 = v20 + 32;
    v48 = 0;
    v49 = v21;
    v22 = sub_242C7FBE4();
    if (v22 == 2 || v48 != v49 >> 1)
    {
      v28 = sub_242F05B10();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v30 = &type metadata for Theme.ColorOverride;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v42 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v22)
      {
        LOBYTE(v43) = 1;
        sub_242C9B590(v22, v23, v24);
        v25 = v5;
        v26 = sub_242F05D10();
        v27 = v42;
        sub_242C7E0D4(v26, v33, v34);
        sub_242F05E00();
        (*(v39 + 8))(v25, v18);
        (*(v27 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v35 = 0;
        v36 = v43;
        v37 = 0x8000000000000000;
      }

      else
      {
        LOBYTE(v43) = 0;
        sub_242C9B638(v22, v23, v24);
        sub_242F05D10();
        v32 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09A0, &qword_242F0C318);
        sub_242C9B734(&qword_27ECF09D8, &protocol conformance descriptor for <> Pair<A, B>);
        sub_242F05E00();
        (*(v38 + 8))(v8, v6);
        (*(v32 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v36 = v43;
        v37 = v44;
        v35 = v45;
      }

      *v19 = v36;
      v19[1] = v37;
      v19[2] = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v50);
}

uint64_t sub_242C99BF8(uint64_t a1)
{
  v3 = *v1;
  if (v1[1] < 0)
  {
    MEMORY[0x245D279A0](1);

    return sub_242C793AC(a1, v3);
  }

  else
  {
    v4 = v1[2];
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    return MEMORY[0x245D279A0](v4);
  }
}

uint64_t sub_242C99CC4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_242F06390();
  if (v3 < 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242C793AC(v6, v2);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    ColorSet.ColorID.rawValue.getter();
    sub_242F04DD0();

    MEMORY[0x245D279A0](v4);
  }

  return sub_242F063E0();
}

uint64_t Theme.LayoutStyle.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Theme.LayoutStyle.defaultPaletteID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.defaultPaletteID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t Theme.LayoutStyle.defaultWallpaperID.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t Theme.LayoutStyle.defaultWallpaperID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t Theme.LayoutStyle.paletteIDs.getter()
{

  v1 = sub_242C98C38(v0);

  return v1;
}

uint64_t Theme.LayoutStyle.init(id:defaultPaletteID:defaultWallpaperID:colorSetOverrides:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  v11 = *a3;
  v12 = a3[1];

  v14 = sub_242C98C38(v13);

  v22 = v10;
  v23 = v9;
  v19 = &v22;
  v15 = sub_242E384A4(sub_242C9B7C0, v18, v14);

  if (v15)
  {

    *a5 = v7;
    a5[1] = v8;
    a5[2] = a4;
    a5[3] = v10;
    a5[4] = v9;
    a5[5] = v11;
    a5[6] = v12;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_242F05A80();

    v22 = 0xD00000000000001CLL;
    v23 = 0x8000000242F596B0;
    v20 = v10;
    v21 = v9;

    v17 = sub_242F04F90();
    MEMORY[0x245D26660](v17);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Theme.LayoutStyle.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_242F04DD0();
  sub_242C7A3DC(a1, v3);
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t Theme.LayoutStyle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v3, v1);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242C9A174()
{
  v1 = *(v0 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v3, v1);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t sub_242C9A210(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_242F04DD0();
  sub_242C7A3DC(a1, v3);
  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t sub_242C9A28C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_242F06390();
  sub_242F04DD0();
  sub_242C7A3DC(v4, v2);
  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

unint64_t sub_242C9A328()
{
  v1 = 25705;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242C9A39C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242C9DEF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242C9A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B930(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242C9A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242C9B930(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Theme.LayoutStyle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09E0, &qword_242F0C338);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B930(v8, v9, v10);
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v53 = a1;
  v54 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0, &qword_242F0C340);
  LOBYTE(v57[0]) = 0;
  sub_242C9BB60(&qword_27ECF09F8, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05E00();
  v13 = v56[0];
  v12 = v56[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
  LOBYTE(v57[0]) = 2;
  sub_242C9BB60(&qword_27ECEFF60, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05E00();
  v52 = v13;
  v14 = v56[0];
  v15 = v56[1];
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00, &qword_242F0C348);
  LOBYTE(v57[0]) = 3;
  v16 = v51;
  sub_242C9BB60(&qword_27ECF0A08, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05E00();
  if (v16)
  {
    (*(v54 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_2Tm(v53);
  }

  else
  {
    v47 = v14;
    v17 = v56[0];
    v48 = v56[1];
    LOBYTE(v56[0]) = 1;
    sub_242F05D00();
    v45 = v4;
    v46 = v12;
    v43 = v17;
    v44 = v15;
    __swift_project_boxed_opaque_existential_2Tm(v57, v58);
    if (sub_242F05F90())
    {
      v50 = MEMORY[0x277D84F98];
      v18 = v55;
      v19 = v52;
LABEL_8:
      (*(v54 + 8))(v7, v45);
      __swift_destroy_boxed_opaque_existential_2Tm(v57);
      v21 = v46;
      v20 = v47;
      *v18 = v19;
      v18[1] = v21;
      v18[2] = v50;
      v18[3] = v20;
      v22 = v43;
      v18[4] = v44;
      v18[5] = v22;
      v18[6] = v48;

      __swift_destroy_boxed_opaque_existential_2Tm(v53);
    }

    else
    {
      v50 = MEMORY[0x277D84F98];
      v49 = v7;
      while (1)
      {
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
        sub_242C9B984(v23, v24, v25);
        sub_242F05F80();
        memcpy(v59, v56, 0x3B0uLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A18, &qword_242F0C350);
        __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
        sub_242C9B9D8();
        sub_242F05F80();
        v26 = v56[0];
        v27 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v27;
        v29 = sub_242CE5238(v59);
        v31 = v27[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          break;
        }

        v35 = v30;
        v19 = v52;
        if (v27[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v29;
            sub_242D01BD0();
            v29 = v41;
          }
        }

        else
        {
          sub_242D05338(v34, isUniquelyReferenced_nonNull_native);
          v29 = sub_242CE5238(v59);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_23;
          }
        }

        v37 = v60;
        v50 = v60;
        if (v35)
        {
          *(v60[7] + 8 * v29) = v26;

          sub_242C7C7BC(v59);
        }

        else
        {
          v60[(v29 >> 6) + 8] |= 1 << v29;
          v38 = v29;
          memcpy((v37[6] + 944 * v29), v59, 0x3B0uLL);
          *(v37[7] + 8 * v38) = v26;
          v39 = v37[2];
          v33 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v33)
          {
            goto LABEL_22;
          }

          v37[2] = v40;
        }

        v18 = v55;
        __swift_project_boxed_opaque_existential_2Tm(v57, v58);
        if (sub_242F05F90())
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      result = sub_242F06320();
      __break(1u);
    }
  }

  return result;
}

uint64_t Theme.LayoutStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A58, &qword_242F0C370);
  v46 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v38 = v1[3];
  v39 = v10;
  v37 = v9;
  v11 = v1[6];
  v35 = v8;
  v36 = v11;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9B930(v12, v13, v14);

  sub_242F064C0();
  v43[0] = v6;
  v15 = v5;
  v43[1] = v7;
  LOBYTE(v41[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF09F0, &qword_242F0C340);
  sub_242C9BB60(&qword_27ECF0A60, &qword_27ECF09F0, &qword_242F0C340, &protocol conformance descriptor for <> TaggedValue<A, B>);
  v16 = v40;
  sub_242F05F20();
  if (v16)
  {

    return (*(v46 + 8))(v5, v3);
  }

  v18 = v36;
  v17 = v37;

  v43[0] = v38;
  v43[1] = v39;
  LOBYTE(v41[0]) = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF38, &qword_242F095B0);
  sub_242C9BB60(&qword_27ECEFF40, &qword_27ECEFF38, &qword_242F095B0, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05F20();

  v43[0] = v17;
  v43[1] = v18;
  LOBYTE(v41[0]) = 3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A00, &qword_242F0C348);
  sub_242C9BB60(&qword_27ECF0A68, &qword_27ECF0A00, &qword_242F0C348, &protocol conformance descriptor for <> TaggedValue<A, B>);
  sub_242F05F20();

  LOBYTE(v43[0]) = 1;
  v39 = v3;
  sub_242F05E30();
  KeyPath = swift_getKeyPath();
  v21 = v35;
  v22 = *(v35 + 16);
  if (v22)
  {
    v23 = sub_242CDD8C0(*(v35 + 16), 0);
    v40 = sub_242CDFCB8(v43, v23 + 4, v22, v21);
    v24 = v43[0];
    v37 = v43[4];
    v38 = v43[3];

    sub_242C6548C(v24);
    if (v40 == v22)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_7:
  v43[0] = v23;
  sub_242C9D524(v43, KeyPath);

  v25 = v43[0];
  v40 = *(v43[0] + 16);
  if (v40)
  {
    v26 = 0;
    v27 = 32;
    v34 = v15;
    while (v26 < *(v25 + 16))
    {
      memcpy(v43, (v25 + v27), sizeof(v43));
      v28 = v43[118];
      memcpy(v42, v43, sizeof(v42));
      __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
      v29 = sub_242C9D5C8(v43, v41);
      sub_242C9D638(v29, v30, v31);
      sub_242F05FA0();
      v41[0] = v28;
      __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A18, &qword_242F0C350);
      sub_242C9D6F4();
      sub_242F05FA0();
      v26 = (v26 + 1);
      sub_242C9D68C(v43);
      v27 += 952;
      v32 = v46;
      v15 = v34;
      if (v40 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v32 = v46;
LABEL_13:

    (*(v32 + 8))(v15, v39);
    return __swift_destroy_boxed_opaque_existential_2Tm(v44);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI5ThemeO13ColorOverrideO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = ColorSet.ColorID.rawValue.getter();
      v10 = v9;
      if (v8 == ColorSet.ColorID.rawValue.getter() && v10 == v11)
      {
        sub_242C7F7D4(v3, v2);
        sub_242C7F7D4(v6, v5);

        if (v4 == v7)
        {
          return 1;
        }
      }

      else
      {
        v13 = sub_242F06110();
        sub_242C7F7D4(v3, v2);
        sub_242C7F7D4(v6, v5);

        if ((v13 & 1) != 0 && v4 == v7)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_9:
    sub_242C7F7A0(v6, v5);
    sub_242C7F7D4(v3, v2);
    sub_242C7F7D4(v6, v5);
    return 0;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {

    goto LABEL_9;
  }

  sub_242C7F7A0(*a2, a2[1]);
  sub_242C7F7A0(v3, v2);
  sub_242C7F7A0(v6, v5);
  sub_242C7F7A0(v3, v2);
  v14 = sub_242C74594(v3, v6);
  sub_242C7F7D4(v3, v2);
  sub_242C7F7D4(v6, v5);
  sub_242C7F7D4(v6, v5);
  sub_242C7F7D4(v3, v2);
  return v14 & 1;
}

unint64_t sub_242C9B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0980;
  if (!qword_27ECF0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0980);
  }

  return result;
}

unint64_t sub_242C9B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0988;
  if (!qword_27ECF0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0988);
  }

  return result;
}

unint64_t sub_242C9B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0990;
  if (!qword_27ECF0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0990);
  }

  return result;
}

unint64_t sub_242C9B638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0998;
  if (!qword_27ECF0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0998);
  }

  return result;
}

unint64_t sub_242C9B68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF09B0;
  if (!qword_27ECF09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09B0);
  }

  return result;
}

unint64_t sub_242C9B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF09B8;
  if (!qword_27ECF09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09B8);
  }

  return result;
}

uint64_t sub_242C9B734(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF09A0, &qword_242F0C318);
    v9 = sub_242C9B68C(v4, v5, v6);
    sub_242C9B6E0(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C9B7C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110() & 1;
  }
}

uint64_t _s14CarPlayAssetUI5ThemeO11LayoutStyleV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  sub_242C746FC(v2);
  if ((v11 & 1) == 0 || (v3 != v7 || v4 != v9) && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v8 && v6 == v10)
  {
    return 1;
  }

  return sub_242F06110();
}

unint64_t sub_242C9B930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF09E8;
  if (!qword_27ECF09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF09E8);
  }

  return result;
}

unint64_t sub_242C9B984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0A10;
  if (!qword_27ECF0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A10);
  }

  return result;
}

unint64_t sub_242C9B9D8()
{
  result = qword_27ECF0A20;
  if (!qword_27ECF0A20)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A18, &qword_242F0C350);
    sub_242C7DFAC(v1, v2, v3);
    sub_242C9D79C(&qword_27ECF0A28, &protocol conformance descriptor for Dynamic<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A20);
  }

  return result;
}

unint64_t sub_242C9BA80()
{
  result = qword_27ECF0A40;
  if (!qword_27ECF0A40)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A38, &qword_242F0C360);
    v6 = sub_242C7DFAC(v1, v2, v3);
    sub_242C9BB0C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A40);
  }

  return result;
}

unint64_t sub_242C9BB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0A48;
  if (!qword_27ECF0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A48);
  }

  return result;
}

uint64_t sub_242C9BB60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242C9BBC8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = v1;
  v9 = v2 - v1;
  v10 = (v2 - v1) / 952;
  v11 = v5 - v2;
  v12 = (v5 - v2) / 952;
  if (v10 < v12)
  {
    if (v3 != v1 || &v1[952 * v10] <= v3)
    {
      memmove(v3, v1, 952 * v10);
    }

    v13 = &v4[952 * v10];
    if (v9 < 952)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_43;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      memcpy(v29, v7, sizeof(v29));
      memcpy(v30, v4, 0x3B8uLL);
      memcpy(v28, v29, sizeof(v28));
      memcpy(__dst, v30, sizeof(__dst));
      sub_242C9D5C8(v29, v25);
      sub_242C9D5C8(v30, v25);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v25[0] == __src[0] && v25[1] == __src[1])
      {
        break;
      }

      v16 = sub_242F06110();
      memcpy(v23, __src, sizeof(v23));
      sub_242C7C7BC(v23);
      memcpy(v24, v25, sizeof(v24));
      sub_242C7C7BC(v24);
      sub_242C9D68C(v30);
      sub_242C9D68C(v29);
      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }

      v14 = v7;
      v15 = v8 == v7;
      v7 += 952;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 952;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    memcpy(v23, __src, sizeof(v23));
    sub_242C7C7BC(v23);
    memcpy(v24, v25, sizeof(v24));
    sub_242C7C7BC(v24);
    sub_242C9D68C(v30);
    sub_242C9D68C(v29);
LABEL_15:
    v14 = v4;
    v15 = v8 == v4;
    v4 += 952;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v8, v14, 0x3B8uLL);
    goto LABEL_9;
  }

  if (v3 != v2 || &v2[952 * v12] <= v3)
  {
    memmove(v3, v2, 952 * v12);
  }

  v13 = &v4[952 * v12];
  if (v11 >= 952 && v7 > v8)
  {
LABEL_23:
    v17 = v7 - 952;
    v6 -= 952;
    v18 = v13;
    do
    {
      v13 = v18;
      v18 -= 952;
      memcpy(v29, v18, sizeof(v29));
      memcpy(v30, v7 - 952, 0x3B8uLL);
      memcpy(v28, v29, sizeof(v28));
      memcpy(__dst, v7 - 952, sizeof(__dst));
      sub_242C9D5C8(v29, v25);
      sub_242C9D5C8(v30, v25);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (__src[0] == v25[0] && __src[1] == v25[1])
      {
        v19 = 0;
      }

      else
      {
        v19 = sub_242F06110();
      }

      memcpy(v23, v25, sizeof(v23));
      sub_242C7C7BC(v23);
      memcpy(v24, __src, sizeof(v24));
      sub_242C7C7BC(v24);
      sub_242C9D68C(v30);
      sub_242C9D68C(v29);
      v20 = v6 + 952;
      if (v19)
      {
        if (v20 < v7 || v6 >= v7 || v20 != v7)
        {
          memmove(v6, v7 - 952, 0x3B8uLL);
        }

        if (v13 <= v4 || (v7 -= 952, v17 <= v8))
        {
          v7 = v17;
          goto LABEL_43;
        }

        goto LABEL_23;
      }

      if (v20 < v13 || v6 >= v13 || v20 != v13)
      {
        memmove(v6, v18, 0x3B8uLL);
      }

      v6 -= 952;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_43:
  v21 = (v13 - v4) / 952;
  if (v7 != v4 || v7 >= &v4[952 * v21])
  {
    memmove(v7, v4, 952 * v21);
  }

  return 1;
}

uint64_t sub_242C9C0B8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v18 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v18 = sub_242D9D130(v18);
  }

  v16 = v6;
  *v6 = v18;
  v8 = (v18 + 16);
  v9 = *(v18 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v16 = v18;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v6 = &v18[16 * v9];
      v10 = *v6;
      v11 = &v8[2 * v9];
      v12 = v11[1];
      v19 = *a3 + 952 * *v6;

      sub_242C9BBC8(v19);

      if (v5)
      {
        *v16 = v18;

        return 1;
      }

      if (v12 < v10)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v13 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v10;
      v6[1] = v12;
      v14 = v13 - v9;
      if (v13 < v9)
      {
        goto LABEL_14;
      }

      v9 = v13 - 1;
      memmove(v11, v11 + 2, 16 * v14);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v18;
    __break(1u);
  }

  return result;
}

uint64_t sub_242C9C264(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v97 = v1;
  v4 = v3;
  v6 = v5;
  v95 = v7;
  v8 = v7[1];
  v233 = MEMORY[0x277D84F90];
  if (v8 >= 1)
  {
    v9 = v2;
    swift_retain_n();
    v10 = 0;
    v234 = MEMORY[0x277D84F90];
    v91 = v6;
    v92 = v9;
    v96 = v4;
    while (1)
    {
      v11 = v10;
      v12 = v10 + 1;
      if (v10 + 1 >= v8)
      {
        ++v10;
      }

      else
      {
        v13 = *v95;
        memcpy(v231, (*v95 + 952 * v12), sizeof(v231));
        memcpy(v232, (v13 + 952 * v11), sizeof(v232));
        sub_242C9D5C8(v231, v230);
        sub_242C9D5C8(v232, v230);
        v164 = *&v231[8];
        v165 = *&v231[24];
        v166 = *&v231[40];
        v167 = *&v231[56];
        v168 = *&v231[72];
        v169 = *&v231[88];
        v170 = *&v231[104];
        v171 = *&v231[120];
        v172 = *&v231[136];
        v173 = *&v231[152];
        v174 = *&v231[168];
        v175 = *&v231[184];
        v176 = *&v231[200];
        v177 = *&v231[216];
        v178 = *&v231[232];
        v179 = *&v231[248];
        v181 = *&v231[272];
        v182 = *&v231[288];
        v183 = *&v231[304];
        v184 = *&v231[320];
        v185 = *&v231[336];
        v186 = *&v231[352];
        v187 = *&v231[368];
        v188 = *&v231[384];
        v189 = *&v231[400];
        v190 = *&v231[416];
        v191 = *&v231[432];
        v192 = *&v231[448];
        v193 = *&v231[464];
        v194 = *&v231[480];
        v195 = *&v231[496];
        v196 = *&v231[512];
        v197 = *&v231[528];
        v198 = *&v231[544];
        v199 = *&v231[560];
        v200 = *&v231[576];
        v201 = *&v231[592];
        v202 = *&v231[608];
        v203 = *&v231[624];
        v204 = *&v231[640];
        v205 = *&v231[656];
        v206 = *&v231[672];
        v207 = *&v231[688];
        v208 = *&v231[704];
        v209 = *&v231[720];
        v210 = *&v231[736];
        v211 = *&v231[752];
        v212 = *&v231[768];
        v213 = *&v231[784];
        v214 = *&v231[800];
        v215 = *&v231[816];
        v216 = *&v231[832];
        v217 = *&v231[848];
        v218 = *&v231[864];
        v219 = *&v231[880];
        v222 = *&v231[912];
        v101 = *&v232[8];
        v102 = *&v232[24];
        v103 = *&v232[40];
        v104 = *&v232[56];
        v105 = *&v232[72];
        v106 = *&v232[88];
        v107 = *&v232[104];
        v108 = *&v232[120];
        v109 = *&v232[136];
        v110 = *&v232[152];
        v111 = *&v232[168];
        v112 = *&v232[184];
        v113 = *&v232[200];
        v114 = *&v232[216];
        v115 = *&v232[232];
        v116 = *&v232[248];
        v118 = *&v232[272];
        v119 = *&v232[288];
        v120 = *&v232[304];
        v121 = *&v232[320];
        v122 = *&v232[336];
        v123 = *&v232[352];
        v124 = *&v232[368];
        v125 = *&v232[384];
        v126 = *&v232[400];
        v127 = *&v232[416];
        v128 = *&v232[432];
        v129 = *&v232[448];
        v130 = *&v232[464];
        v131 = *&v232[480];
        v132 = *&v232[496];
        v133 = *&v232[512];
        v134 = *&v232[528];
        v135 = *&v232[544];
        v136 = *&v232[560];
        v137 = *&v232[576];
        v138 = *&v232[592];
        v139 = *&v232[608];
        v140 = *&v232[624];
        v141 = *&v232[640];
        v142 = *&v232[656];
        v143 = *&v232[672];
        v144 = *&v232[688];
        v145 = *&v232[704];
        v146 = *&v232[720];
        v147 = *&v232[736];
        v148 = *&v232[752];
        v149 = *&v232[768];
        v150 = *&v232[784];
        v151 = *&v232[800];
        v152 = *&v232[816];
        v153 = *&v232[832];
        v154 = *&v232[848];
        v155 = *&v232[864];
        v156 = *&v232[880];
        v159 = *&v232[912];
        v163 = *v231;
        v180 = *&v231[264];
        v220 = v231[896];
        v221 = *&v231[904];
        v223 = v231[928];
        v224 = *&v231[936];
        v225 = *&v231[944];
        __dst[119] = *v232;
        v117 = *&v232[264];
        v157 = v232[896];
        v158 = *&v232[904];
        v160 = v232[928];
        v161 = *&v232[936];
        v162 = *&v232[944];
        v14 = v11;
        v15 = sub_242DB6748(&v163);
        sub_242C9D68C(v232);
        sub_242C9D68C(v231);
        if (v97)
        {
          goto LABEL_102;
        }

        v16 = v14 + 2;
        if (v14 + 2 >= v8)
        {
          v17 = v14;
          v10 = v14 + 2;
          if ((v15 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v17 = v14;
          v18 = v13 + 952 * v14 + 952;
          do
          {
            v10 = v16;
            memcpy(v229, (v18 + 952), sizeof(v229));
            memcpy(v230, v18, sizeof(v230));
            memcpy(v228, v229, sizeof(v228));
            memcpy(__dst, v230, 0x3B8uLL);
            sub_242C9D5C8(v229, __src);
            sub_242C9D5C8(v230, __src);
            swift_getAtKeyPath();
            swift_getAtKeyPath();
            if (__src[0] == v227[0] && __src[1] == v227[1])
            {
              v19 = 0;
            }

            else
            {
              v19 = sub_242F06110();
            }

            memcpy(v98, v227, sizeof(v98));
            sub_242C7C7BC(v98);
            memcpy(v226, __src, sizeof(v226));
            sub_242C7C7BC(v226);
            sub_242C9D68C(v230);
            sub_242C9D68C(v229);
            if ((v15 ^ v19))
            {
              v12 = v10 - 1;
              if ((v15 & 1) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_19;
            }

            v16 = v10 + 1;
            v18 += 952;
          }

          while (v8 != v10 + 1);
          v12 = v10;
          v10 = v8;
          if ((v15 & 1) == 0)
          {
LABEL_27:
            v11 = v17;
            goto LABEL_29;
          }
        }

LABEL_19:
        if (v10 < v17)
        {
          goto LABEL_123;
        }

        v11 = v17;
        if (v17 <= v12)
        {
          v20 = v10;
          v21 = v6;
          v22 = 952 * v20 - 952;
          v23 = 952 * v17;
          v24 = v20;
          v25 = v20;
          v26 = v17;
          do
          {
            if (v11 != --v25)
            {
              v27 = *v95;
              if (!*v95)
              {
                goto LABEL_126;
              }

              memcpy(v230, (v27 + v23), sizeof(v230));
              memmove((v27 + v23), (v27 + v22), 0x3B8uLL);
              memcpy((v27 + v22), v230, 0x3B8uLL);
            }

            ++v11;
            v22 -= 952;
            v23 += 952;
          }

          while (v11 < v25);
          v6 = v21;
          v9 = v92;
          v11 = v26;
          v10 = v24;
          v4 = v96;
        }
      }

LABEL_29:
      v28 = v95[1];
      if (v10 < v28)
      {
        if (__OFSUB__(v10, v11))
        {
          goto LABEL_120;
        }

        if (v10 - v11 < v9)
        {
          v29 = v11 + v9;
          if (__OFADD__(v11, v9))
          {
            goto LABEL_121;
          }

          if (v29 >= v28)
          {
            v29 = v95[1];
          }

          if (v29 < v11)
          {
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
            return result;
          }

          if (v10 != v29)
          {
            v30 = *v95;
            v31 = *v95 + 952 * v10 - 952;
            v94 = v11;
            v32 = v10;
            v33 = v11 - v10 + 1;
            do
            {
              v10 = v29;
              v34 = v33;
              for (i = v31; ; i -= 952)
              {
                memcpy(v231, (i + 952), sizeof(v231));
                memcpy(v232, i, sizeof(v232));
                memcpy(v230, v231, sizeof(v230));
                memcpy(v229, v232, sizeof(v229));
                sub_242C9D5C8(v231, v228);
                sub_242C9D5C8(v232, v228);
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (__dst[0] == __src[0] && __dst[1] == __src[1])
                {
                  break;
                }

                v36 = sub_242F06110();
                memcpy(v226, __src, sizeof(v226));
                sub_242C7C7BC(v226);
                memcpy(v227, __dst, sizeof(v227));
                sub_242C7C7BC(v227);
                sub_242C9D68C(v232);
                sub_242C9D68C(v231);
                if ((v36 & 1) == 0)
                {
                  goto LABEL_39;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                memcpy(v228, (i + 952), sizeof(v228));
                memcpy((i + 952), i, 0x3B8uLL);
                memcpy(i, v228, 0x3B8uLL);
                if (!v34)
                {
                  goto LABEL_39;
                }

                ++v34;
              }

              memcpy(v226, __src, sizeof(v226));
              sub_242C7C7BC(v226);
              memcpy(v227, __dst, sizeof(v227));
              sub_242C7C7BC(v227);
              sub_242C9D68C(v232);
              sub_242C9D68C(v231);
LABEL_39:
              v31 += 952;
              --v33;
              ++v32;
              v29 = v10;
            }

            while (v32 != v10);
            v6 = v91;
            v11 = v94;
          }
        }
      }

      if (v10 < v11)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v234 = sub_242C829CC(0, *(v234 + 2) + 1, 1, v234);
      }

      v38 = *(v234 + 2);
      v37 = *(v234 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v234 = sub_242C829CC((v37 > 1), v38 + 1, 1, v234);
      }

      v40 = v234;
      *(v234 + 2) = v39;
      v41 = v40 + 32;
      v42 = &v40[16 * v38 + 32];
      *v42 = v11;
      *(v42 + 1) = v10;
      v233 = v40;
      if (!*v6)
      {
        goto LABEL_127;
      }

      if (v38)
      {
        v93 = v10;
        while (1)
        {
          v43 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v44 = *(v234 + 4);
            v45 = *(v234 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_69:
            if (v47)
            {
              goto LABEL_110;
            }

            v60 = &v234[16 * v39];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_113;
            }

            v66 = &v41[16 * v43];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_117;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v39 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          v70 = &v234[16 * v39];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_83:
          if (v65)
          {
            goto LABEL_112;
          }

          v73 = &v41[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_115;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_90:
          if (v43 - 1 >= v39)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_122;
          }

          if (!*v95)
          {
            goto LABEL_125;
          }

          v81 = &v41[16 * v43 - 16];
          v82 = *v81;
          v83 = v41;
          v84 = v43;
          v85 = &v41[16 * v43];
          v86 = *(v85 + 1);
          v87 = *v95 + 952 * *v81;

          sub_242C9BBC8(v87);

          if (v97)
          {
            v233 = v234;
            goto LABEL_102;
          }

          if (v86 < v82)
          {
            goto LABEL_105;
          }

          v88 = *(v234 + 2);
          if (v84 > v88)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          *(v81 + 1) = v86;
          if (v84 >= v88)
          {
            goto LABEL_107;
          }

          v97 = 0;
          v39 = v88 - 1;
          memmove(v85, v85 + 16, 16 * (v88 - 1 - v84));
          *(v234 + 2) = v88 - 1;
          v10 = v93;
          v4 = v96;
          v41 = v83;
          if (v88 <= 2)
          {
LABEL_3:
            v233 = v234;
            v6 = v91;
            goto LABEL_4;
          }
        }

        v48 = &v41[16 * v39];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_108;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_109;
        }

        v55 = &v234[16 * v39];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_111;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_114;
        }

        if (v59 >= v51)
        {
          v77 = &v41[16 * v43];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_118;
          }

          if (v46 < v80)
          {
            v43 = v39 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_69;
      }

LABEL_4:
      v8 = v95[1];
      v9 = v92;
      if (v10 >= v8)
      {
        goto LABEL_100;
      }
    }
  }

  swift_retain_n();
LABEL_100:
  v89 = *v6;
  if (!*v6)
  {
    goto LABEL_128;
  }

  sub_242C9C0B8(&v233, v89, v95, v4);

LABEL_102:
}

void sub_242C9D170(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  if (v3 != v2)
  {
    v5 = v3;
    v6 = v2;
    v7 = *v4;
    v8 = *v4 + 952 * v3 - 952;
    v9 = v1 - v3 + 1;
LABEL_6:
    v10 = v9;
    for (i = v8; ; i -= 952)
    {
      memcpy(v20, (i + 952), sizeof(v20));
      memcpy(v21, i, 0x3B8uLL);
      memcpy(v19, v20, sizeof(v19));
      memcpy(v18, v21, sizeof(v18));
      sub_242C9D5C8(v20, v16);
      sub_242C9D5C8(v21, v16);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v17[0] == __src[0] && v17[1] == __src[1])
      {
        memcpy(v13, __src, sizeof(v13));
        sub_242C7C7BC(v13);
        memcpy(__dst, v17, sizeof(__dst));
        sub_242C7C7BC(__dst);
        sub_242C9D68C(v21);
        sub_242C9D68C(v20);
LABEL_5:
        ++v5;
        v8 += 952;
        --v9;
        if (v5 == v6)
        {
          return;
        }

        goto LABEL_6;
      }

      v12 = sub_242F06110();
      memcpy(v13, __src, sizeof(v13));
      sub_242C7C7BC(v13);
      memcpy(__dst, v17, sizeof(__dst));
      sub_242C7C7BC(__dst);
      sub_242C9D68C(v21);
      sub_242C9D68C(v20);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      memcpy(v16, (i + 952), sizeof(v16));
      memcpy((i + 952), i, 0x3B8uLL);
      memcpy(i, v16, 0x3B8uLL);
      if (!v10)
      {
        goto LABEL_5;
      }

      ++v10;
    }

    __break(1u);
  }
}

uint64_t sub_242C9D3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  swift_retain_n();
  result = sub_242F05F50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = v2 / 2;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70, &qword_242F0C398);
        v5 = sub_242F05360();
        *(v5 + 16) = v4;
      }

      v6[0] = v5 + 32;
      v6[1] = v4;

      sub_242C9C264(v6);

      *(v5 + 16) = 0;
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

    sub_242C9D170(0);
  }
}

uint64_t sub_242C9D524(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_242D9D16C(v4);
  }

  v5 = v4[2];
  v7[0] = v4 + 4;
  v7[1] = v5;

  sub_242C9D3CC(v7, a2);

  *a1 = v4;
}

uint64_t sub_242C9D5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70, &qword_242F0C398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C9D638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0A78;
  if (!qword_27ECF0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A78);
  }

  return result;
}

uint64_t sub_242C9D68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70, &qword_242F0C398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C9D6F4()
{
  result = qword_27ECF0A80;
  if (!qword_27ECF0A80)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A18, &qword_242F0C350);
    sub_242C7DEA0(v1, v2, v3);
    sub_242C9D79C(&qword_27ECF0A88, &protocol conformance descriptor for Dynamic<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A80);
  }

  return result;
}

uint64_t sub_242C9D79C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A30, &qword_242F0C358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C9D7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF0A90;
  if (!qword_27ECF0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A90);
  }

  return result;
}

unint64_t sub_242C9D848()
{
  result = qword_27ECF0A98;
  if (!qword_27ECF0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF09F0, &qword_242F0C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A98);
  }

  return result;
}