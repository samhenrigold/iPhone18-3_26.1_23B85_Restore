uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1DD3AD738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_1DD3AD77C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DD3AD790(result, a2);
  }

  return result;
}

uint64_t sub_1DD3AD790(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void sub_1DD3AD7E8()
{
  OUTLINED_FUNCTION_18_4();
  v117 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB860, &qword_1DD642FE8);
  OUTLINED_FUNCTION_3(v2);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_3();
  v121 = v4;
  OUTLINED_FUNCTION_6_2();
  v114 = sub_1DD63DC28();
  OUTLINED_FUNCTION_0();
  v111 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v110 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB868, &qword_1DD642FF0);
  OUTLINED_FUNCTION_3(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  v112 = v10;
  OUTLINED_FUNCTION_6_2();
  v113 = sub_1DD63DC08();
  OUTLINED_FUNCTION_0();
  v109 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v108 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB870, &qword_1DD642FF8);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v90 - v16;
  v122 = sub_1DD63E3F8();
  OUTLINED_FUNCTION_0();
  v119 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB878, &qword_1DD643000);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  v25 = sub_1DD63DCE8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  sub_1DD3ADFBC(v125);
  v30 = sub_1DD63E468();
  v120 = v31;
  if (v31)
  {
    v32 = v31;
    v33 = v30;

    v118 = v33;
    v34._countAndFlagsBits = v33;
    v34._object = v32;
    PersonPlaceName.BoundedValue.init(rawValue:)(v34);
    v35 = v124[0] | 0x30300;
  }

  else
  {
    v118 = 0;
    v35 = 0;
  }

  v115 = sub_1DD63E458();
  v116 = v36;
  sub_1DD63E488();
  v37 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_8(v37, v38, v25);
  if (v45)
  {
    sub_1DD3ADFD0(v0, &qword_1ECCDB878, &qword_1DD643000);
    LODWORD(v39) = 2;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    v40(v29, v0, v25);
    sub_1DD63DCD8();
    v41 = sub_1DD640AA8();

    v42 = OUTLINED_FUNCTION_15_3();
    v43(v42, v25);
    if (v41)
    {
      v44 = v122;
      if (v41 == 1)
      {
        LODWORD(v39) = 1;
      }

      else
      {
        LODWORD(v39) = 2;
      }

      goto LABEL_12;
    }

    LODWORD(v39) = 0;
  }

  v44 = v122;
LABEL_12:
  sub_1DD63E478();
  OUTLINED_FUNCTION_8(v17, 1, v44);
  if (v45)
  {
    sub_1DD3ADFD0(v17, &qword_1ECCDB870, &qword_1DD642FF8);
    memcpy(v124, v125, sizeof(v124));
  }

  else
  {
    v107 = v39;
    (*(v119 + 32))(v22, v17, v44);
    sub_1DD63E3D8();
    OUTLINED_FUNCTION_5_5();
    v105 = v47;
    v106 = v46;
    if (v45)
    {
      v48 = 0;
    }

    else
    {
      v48 = 514;
    }

    v104 = v48;
    sub_1DD63E3B8();
    v103 = v49;
    OUTLINED_FUNCTION_5_5();
    v100 = v50;
    if (v45)
    {
      v51 = 0;
    }

    else
    {
      v51 = 514;
    }

    v102 = v51;
    sub_1DD63E3C8();
    v101 = v52;
    OUTLINED_FUNCTION_5_5();
    v98 = v53;
    if (v45)
    {
      v54 = 0;
    }

    else
    {
      v54 = 514;
    }

    v99 = v54;
    sub_1DD63E3A8();
    v56 = v55;
    OUTLINED_FUNCTION_5_5();
    v94 = v57;
    if (v45)
    {
      v58 = 0;
    }

    else
    {
      v58 = 514;
    }

    v96 = v58;
    sub_1DD63E3E8();
    v97 = v59;
    OUTLINED_FUNCTION_5_5();
    v93 = v60;
    if (v45)
    {
      v61 = 0;
    }

    else
    {
      v61 = 514;
    }

    v95 = v61;
    sub_1DD63E398();
    v63 = v62;
    OUTLINED_FUNCTION_5_5();
    v91 = v64;
    if (v45)
    {
      v65 = 0;
    }

    else
    {
      v65 = 514;
    }

    v92 = v65;
    v66 = v112;
    sub_1DD63E368();
    v67 = v66;
    v68 = v66;
    v69 = v113;
    OUTLINED_FUNCTION_8(v68, 1, v113);
    if (v45)
    {
      sub_1DD3ADFD0(v67, &qword_1ECCDB868, &qword_1DD642FF0);
      v70 = 768;
      v71 = v114;
    }

    else
    {
      v72 = v108;
      OUTLINED_FUNCTION_9_2();
      v73(v72, v67, v69);
      v74._countAndFlagsBits = sub_1DD63DBF8();
      OccupantNamePrefix.Value.init(rawValue:)(v74);
      v75 = OUTLINED_FUNCTION_15_3();
      v76(v75, v69);
      v71 = v114;
      if (v124[0] == 35)
      {
        v70 = 768;
      }

      else
      {
        v70 = v124[0] | 0x200;
      }
    }

    sub_1DD63E378();
    v77 = v121;
    OUTLINED_FUNCTION_8(v121, 1, v71);
    if (v45)
    {
      sub_1DD3ADFD0(v77, &qword_1ECCDB860, &qword_1DD642FE8);
      v78 = 768;
    }

    else
    {
      v79 = v110;
      v80 = v111;
      OUTLINED_FUNCTION_9_2();
      v81(v79, v77, v71);
      v82._countAndFlagsBits = sub_1DD63DC18();
      OccupantNamePostfix.Value.init(rawValue:)(v82);
      (*(v80 + 8))(v79, v71);
      if (v124[0] == 35)
      {
        v78 = 768;
      }

      else
      {
        v78 = v124[0] | 0x200;
      }

      v44 = v122;
    }

    v83 = sub_1DD63E388();
    v39 = v84;
    (*(v119 + 8))(v22, v44);
    if (v39)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0;
    }

    v123[0] = v105;
    v123[1] = v106;
    if (v39)
    {
      v86 = 3;
    }

    else
    {
      v86 = 0;
    }

    LOWORD(v123[2]) = v104;
    v123[3] = v100;
    v123[4] = v103;
    LOWORD(v123[5]) = v102;
    v123[6] = v94;
    v123[7] = v56;
    LOWORD(v123[8]) = v96;
    v123[9] = v98;
    v123[10] = v101;
    LOWORD(v123[11]) = v99;
    v123[12] = v85;
    v123[13] = v39;
    LOBYTE(v123[14]) = v86;
    v123[15] = v93;
    v123[16] = v97;
    LOWORD(v123[17]) = v95;
    v123[18] = v91;
    v123[19] = v63;
    LOWORD(v123[20]) = v92;
    WORD1(v123[20]) = v70;
    WORD2(v123[20]) = v78;
    nullsub_1();
    memcpy(v124, v123, sizeof(v124));
    LOBYTE(v39) = v107;
  }

  v87 = v115;
  v88 = v116;
  if (!v116)
  {
    v87 = 0;
  }

  v89 = v117;
  *v117 = v118;
  v89[1] = v120;
  *(v89 + 8) = v35;
  *(v89 + 18) = BYTE2(v35);
  *(v89 + 19) = v39;
  v89[3] = v87;
  v89[4] = v88;
  memcpy(v89 + 5, v124, 0xA6uLL);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3ADF44(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = sub_1DD63F8B8();
  OUTLINED_FUNCTION_3(v3);
  return a1;
}

uint64_t sub_1DD3ADFD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

SiriInference::AddressReference __swiftcall AddressReference.init(value:prefix:)(SiriInference::AddressReference::Value value, SiriInference::AddressReference::Prefix_optional prefix)
{
  v3 = *prefix.value;
  *v2 = *value;
  v2[1] = v3;
  result.value = value;
  return result;
}

uint64_t AddressReference.Value.rawValue.getter()
{
  if (*v0)
  {
    return 6647407;
  }

  else
  {
    return 0x79627261656ELL;
  }
}

uint64_t sub_1DD3AE0C8(uint64_t a1, uint64_t a2)
{
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_37_1();
  sub_1DD63FDD8();
  OUTLINED_FUNCTION_38();
  v6 = v6 && v2 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_9(v3, v5, v4);
  }

  return v7 & 1;
}

uint64_t sub_1DD3AE138()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    case 3:
      OUTLINED_FUNCTION_23_1();
      v4 = v5 - 32;
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_23_1();
      v4 = v3 - 32;
LABEL_5:
      v0 = v4 | 0x8000000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v10)
  {
    case 1:
      v8 = 28271;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v8 = 0xD000000000000010;
      v11 = v9 - 32;
      goto LABEL_11;
    case 4:
      OUTLINED_FUNCTION_10_7();
LABEL_11:
      v1 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v8 && v0 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_9(v6, v7, v8);
  }

  return v13 & 1;
}

uint64_t sub_1DD3AE238(unsigned __int8 a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0x80000001DD6688F0;
      break;
    case 2u:
      v2 = 0x80000001DD668910;
      break;
    case 3u:
      break;
    case 4u:
      v2 = 0xED000064657A696CLL;
      break;
    default:
      v2 = 0x80000001DD6688D0;
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v10)
  {
    case 1:
      v1 = (v8 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000017;
      break;
    case 2:
      v1 = (v7 - 32) | 0x8000000000000000;
      v5 = v6 + 6;
      break;
    case 3:
      break;
    case 4:
      v5 = 0x616974696E696E75;
      v1 = 0xED000064657A696CLL;
      break;
    default:
      v1 = (v9 - 32) | 0x8000000000000000;
      v5 = v6 + 1;
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v12 & 1;
}

uint64_t sub_1DD3AE3B4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1953718640;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1953718640;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x746E6573657270;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x657275747566;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x746E6573657270;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x657275747566;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE4E8(char a1, char a2)
{
  if (*&aEverydayweekda[8 * a1] == *&aEverydayweekda[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DD640CD8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DD3AE554(char a1, uint64_t a2)
{
  v2 = 0x65646F6370697ALL;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v3)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x65646F6370697ALL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v7)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1DD3AE62C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7972746E756F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x7972746E756F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE6F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73656C696DLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x73656C696DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x73726574656DLL;
      break;
    case 2:
      v5 = 0x6574656D6F6C696BLL;
      v3 = 0xEA00000000007372;
      break;
    case 3:
      v5 = 0x6C6163697475616ELL;
      v3 = 0xEE0073656C696D20;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x73726574656DLL;
      break;
    case 2:
      v2 = 0x6574656D6F6C696BLL;
      v6 = 0xEA00000000007372;
      break;
    case 3:
      v2 = 0x6C6163697475616ELL;
      v6 = 0xEE0073656C696D20;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE848(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x79746E756F63;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x79746E756F63;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE90C(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6574617473;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x6574617473;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AE9D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 2037672291;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28265;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 2037672291;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 1918985582;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AEA94()
{
  v0 = 0xE900000000000064;
  OUTLINED_FUNCTION_21();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xE900000000000064;
  switch(v5)
  {
    case 1:
      v7 = 0xE800000000000000;
      v6 = 0x64657463656A6572;
      break;
    case 2:
      v6 = 0x656C6C65636E6163;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v6 = 0x7465736E75;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v3 = 0x64657463656A6572;
      break;
    case 2:
      v3 = 0x656C6C65636E6163;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v3 = 0x7465736E75;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_5(v6, v1, v3);
  }

  return v9 & 1;
}

uint64_t sub_1DD3AEBC4()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = 0xD000000000000013;
      v4 = 0x80000001DD668A50;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    case 3:
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_36();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_10_7();
      v0 = v6 | 0x8000000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    case 3:
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AECC8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x636572726F636E69;
  v4 = 0xE900000000000074;
  v5 = a1;
  v6 = 0x636572726F636E69;
  v7 = "correctAutoselection";
  switch(v5)
  {
    case 1:
      v6 = 0xD000000000000012;
      v4 = 0x80000001DD668A10;
      break;
    case 2:
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_20_1();
      break;
    case 4:
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_35_1();
      break;
    default:
      v4 = 0x80000001DD6689F0;
      v6 = 0xD000000000000014;
      break;
  }

  v8 = v2 + 16;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_10_7();
      v8 = v9 | 0x8000000000000000;
      break;
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_18_5();
      break;
    case 4:
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_36();
      break;
    default:
      v8 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
  }

  if (v6 == v3 && v4 == v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9(v6, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_1DD3AEE24(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006E6F697463;
  v3 = 0x656C65736F747561;
  v4 = a1;
  v5 = 0x656C65736F747561;
  v6 = 0xED00006E6F697463;
  switch(v4)
  {
    case 1:
      v5 = 0x616D7269666E6F63;
      v6 = 0xEC0000006E6F6974;
      break;
    case 2:
      OUTLINED_FUNCTION_12_4();
      v5 = v7 | 1;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_21();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x616D000000000000;
      v2 = 0xEC0000006E6F6974;
      break;
    case 2:
      OUTLINED_FUNCTION_9_3();
      v3 = v9 | 1;
      break;
    case 3:
      OUTLINED_FUNCTION_7_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_5(v5, a2, v3);
  }

  return v11 & 1;
}

uint64_t sub_1DD3AEF50(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7473726966;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7473726966;
  switch(v4)
  {
    case 1:
      v5 = 0x327478656ELL;
      break;
    case 2:
      v5 = 0x337265766FLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_26_3();
      v3 = 0xED0000726568744FLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_20_1();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x327478656ELL;
      break;
    case 2:
      v2 = 0x337265766FLL;
      break;
    case 3:
      OUTLINED_FUNCTION_6_3();
      v6 = 0xED0000726568744FLL;
      break;
    case 4:
      OUTLINED_FUNCTION_18_5();
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF07C()
{
  OUTLINED_FUNCTION_6_3();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x656E6F646E616261;
    }

    else
    {
      v4 = v2;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0xED0000726568744FLL;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x656E6F646E616261;
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xED0000726568744FLL;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF160(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006F69647541;
  v3 = 0x656D697465636166;
  v4 = a1;
  v5 = 0x656D697465636166;
  v6 = 0xED00006F69647541;
  switch(v4)
  {
    case 1:
      v6 = 0xED00006F65646956;
      v5 = 0x656D697465636166;
      break;
    case 2:
      v5 = 0x6C6143656E6F6870;
      v6 = 0xE90000000000006CLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_29_0();
      v6 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xED00006F65646956;
      break;
    case 2:
      v3 = 0x6C6143656E6F6870;
      v2 = 0xE90000000000006CLL;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x6567617373656DLL;
      break;
    case 4:
      OUTLINED_FUNCTION_27_1();
      v2 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF2D8(char a1, uint64_t a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_34_2();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_34_2();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_0_9(v8, a2, v2);
  }

  return v18 & 1;
}

uint64_t sub_1DD3AF3B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x74726F7073;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x74726F7073;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x65756761656CLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1835099508;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6574656C687461;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7105633;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x65756761656CLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1835099508;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6574656C687461;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 7105633;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF4FC()
{
  v0 = 0xEC0000006E6F6974;
  OUTLINED_FUNCTION_21();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x616D000000000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xEC0000006E6F6974;
  switch(v5)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_8_0();
      break;
    case 2:
      break;
    case 3:
      v6 = 0x6F69747563657865;
      v7 = 0xE90000000000006ELL;
      break;
    case 4:
      v6 = 0x6E61486B63697571;
      v7 = 0xEB00000000707567;
      break;
    default:
      OUTLINED_FUNCTION_12_4();
      v6 = v8 | 1;
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_7_4();
      break;
    case 2:
      break;
    case 3:
      v3 = 0x6F69747563657865;
      v0 = 0xE90000000000006ELL;
      break;
    case 4:
      v3 = 0x6E61486B63697571;
      v0 = 0xEB00000000707567;
      break;
    default:
      OUTLINED_FUNCTION_9_3();
      v3 = v9 | 1;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_5(v6, v1, v3);
  }

  return v11 & 1;
}

uint64_t sub_1DD3AF65C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746361746E6F63;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746361746E6F63;
  switch(v4)
  {
    case 1:
      v5 = 0x636E656772656D65;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v5 = 0x6C646E6148776172;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x64726143656DLL;
      break;
    case 4:
      v5 = 0x6E6F436E776F6E6BLL;
      v3 = 0xEC00000074636174;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x636E656772656D65;
      v6 = 0xE900000000000079;
      break;
    case 2:
      v2 = 0x6C646E6148776172;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x64726143656DLL;
      break;
    case 4:
      v2 = 0x6E6F436E776F6E6BLL;
      v6 = 0xEC00000074636174;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AF7EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D6F646E6172;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6D6F646E6172;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x53554C506D6F7266;
      break;
    case 2:
      v3 = 0x80000001DD668AA0;
      v5 = 0xD00000000000001BLL;
      break;
    case 3:
      v5 = 0x6167654D6D6F7266;
      v3 = 0xEF524345656D6F64;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x80000001DD668AD0;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1701736302;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x53554C506D6F7266;
      break;
    case 2:
      v6 = 0x80000001DD668AA0;
      v2 = 0xD00000000000001BLL;
      break;
    case 3:
      v2 = 0x6167654D6D6F7266;
      v6 = 0xEF524345656D6F64;
      break;
    case 4:
      OUTLINED_FUNCTION_10_7();
      v6 = v7 | 0x8000000000000000;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1DD3AF99C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6775156;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6775156;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 2:
      v5 = 0x6974756C6F736572;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v5 = 7562345;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_26_3();
      v3 = 0xEA00000000006449;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 2:
      v2 = 0x6974756C6F736572;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v2 = 7562345;
      break;
    case 4:
      OUTLINED_FUNCTION_6_3();
      v6 = 0xEA00000000006449;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFAE0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_1DD538ED0(a1);
  OUTLINED_FUNCTION_37_1();
  sub_1DD538ED0(v4);
  OUTLINED_FUNCTION_38();
  v7 = v7 && v2 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFB50(char a1)
{
  if (a1)
  {
    v1 = "missingDataFromTaskId";
  }

  else
  {
    v1 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_22_1();
  if (v9)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v3 == v5 && v2 == (v8 | 0x8000000000000000);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v10 & 1;
}

uint64_t sub_1DD3AFBE4()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    case 3:
      v0 = 0xEC000000646F6F68;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v6)
  {
    case 1:
      v1 = 0xE800000000000000;
      v5 = 0x7463697274736964;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v5 = 0x726F62686769656ELL;
      v1 = 0xEC000000646F6F68;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFCF8(unsigned __int8 a1, uint64_t a2)
{
  v2 = "Popularity";
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000011;
    }

    if (v3 == 1)
    {
      v5 = "missingRunTimeDataRecords";
    }

    else
    {
      v5 = "missingIntentEvents";
    }
  }

  else
  {
    v4 = 0xD000000000000019;
    v5 = "Popularity";
  }

  if (a2)
  {
    v2 = "missingRunTimeDataRecords";
    if (a2 == 1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 != 1)
    {
      v2 = "missingIntentEvents";
    }
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFDCC(unsigned __int8 a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xEA00000000006E6FLL;
      break;
    case 3u:
      v2 = 0xE90000000000006ELL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v6)
  {
    case 1:
      v5 = 0x7372655033766C6ELL;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 2:
      v5 = 0x746E6567416F7375;
      break;
    case 3:
      v5 = 0x6F737265506F7375;
      v1 = 0xE90000000000006ELL;
      break;
    case 4:
      v5 = 0x6863726165536669;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3AFF38(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x737961776C61;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E49646E61436F6ELL;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000727243;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x737961776C61;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E49646E61436F6ELL;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000727243;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B003C()
{
  OUTLINED_FUNCTION_16_2();
  v3 = v2;
  v4 = 0xE900000000000074;
  switch(v5)
  {
    case 1:
      v3 = 0xD000000000000011;
      v4 = 0x80000001DD669AF0;
      break;
    case 2:
      v4 = 0x80000001DD668A50;
      v3 = 0xD000000000000013;
      break;
    case 3:
      v4 = 0xE400000000000000;
      v3 = 1701736302;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000011;
      v0 = 0x80000001DD669AF0;
      break;
    case 2:
      v0 = 0x80000001DD668A50;
      v2 = 0xD000000000000013;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v2 = 1701736302;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_5(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_1DD3B017C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7472617473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6581861;
    }

    else
    {
      v4 = 0x746573746F6ELL;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x7472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6581861;
    }

    else
    {
      v2 = 0x746573746F6ELL;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0250(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DD3B02D4(char a1)
{
  if (a1)
  {
    v1 = 0xEB0000000065756CLL;
  }

  else
  {
    v1 = 0xE200000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DD3B0360(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E6F6973726576;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E6F6973726576;
  switch(v4)
  {
    case 1:
      v5 = 0x646E6F6973726576;
      v3 = 0xEB00000000657461;
      break;
    case 2:
      v6 = 0x6164696C6F68;
      goto LABEL_6;
    case 3:
      v6 = 0x72746E756F63;
LABEL_6:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      v5 = 0x6F666E4977656ELL;
      break;
    case 5:
      v5 = 0x7261646E656C6163;
      v3 = 0xE900000000000073;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646E6F6973726576;
      v7 = 0xEB00000000657461;
      break;
    case 2:
      v8 = 0x6164696C6F68;
      goto LABEL_13;
    case 3:
      v8 = 0x72746E756F63;
LABEL_13:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 4:
      v2 = 0x6F666E4977656ELL;
      break;
    case 5:
      v2 = 0x7261646E656C6163;
      v7 = 0xE900000000000073;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1DD3B0510(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6647407;
  }

  else
  {
    v3 = 0x79627261656ELL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6647407;
  }

  else
  {
    v5 = 0x79627261656ELL;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B05A4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1918985582;
  }

  else
  {
    v3 = 28265;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1918985582;
  }

  else
  {
    v5 = 28265;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0630(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000746F68;
  v3 = 0x53656E4F69726973;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6D6D6F6365526C6DLL;
    }

    else
    {
      v5 = 0x6369736162;
    }

    if (v4 == 1)
    {
      v6 = 0xED00007265646E65;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x53656E4F69726973;
    v6 = 0xEB00000000746F68;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6D6D6F6365526C6DLL;
    }

    else
    {
      v3 = 0x6369736162;
    }

    if (a2 == 1)
    {
      v2 = 0xED00007265646E65;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_5(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0734(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000073736572;
  v3 = 0x64646120656D6F68;
  v4 = a1;
  v5 = 0x64646120656D6F68;
  v6 = 0xEC00000073736572;
  v7 = "current location";
  switch(v4)
  {
    case 1:
      v5 = 0x646461206B726F77;
      v6 = 0xEC00000073736572;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_23_1();
      v8 = v7 - 32;
      goto LABEL_11;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x79627261656ELL;
      break;
    case 4:
      v5 = 0x61206C6F6F686373;
      v6 = 0xEE00737365726464;
      break;
    case 5:
      v9 = 544045415;
      goto LABEL_8;
    case 6:
      v5 = 0x646120726568746FLL;
      v6 = 0xED00007373657264;
      break;
    case 7:
      v9 = 544829025;
LABEL_8:
      v5 = v9 | 0x7264646100000000;
      v6 = 0xEB00000000737365;
      break;
    case 8:
      v5 = OUTLINED_FUNCTION_23_1();
      v8 = (v10 - 32);
LABEL_11:
      v6 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x646461206B726F77;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v11 = v7 - 32;
      goto LABEL_22;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x79627261656ELL;
      break;
    case 4:
      v3 = 0x61206C6F6F686373;
      v2 = 0xEE00737365726464;
      break;
    case 5:
      v12 = 544045415;
      goto LABEL_19;
    case 6:
      v3 = 0x646120726568746FLL;
      v2 = 0xED00007373657264;
      break;
    case 7:
      v12 = 544829025;
LABEL_19:
      v3 = v12 | 0x7264646100000000;
      v2 = 0xEB00000000737365;
      break;
    case 8:
      OUTLINED_FUNCTION_10_7();
LABEL_22:
      v2 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_5(v5, a2, v3);
  }

  return v14 & 1;
}

uint64_t sub_1DD3B0974(unsigned __int8 a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE500000000000000;
      break;
    case 3u:
      v2 = 0xE600000000000000;
      break;
    case 4u:
      OUTLINED_FUNCTION_29_0();
      v2 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v6)
  {
    case 1:
      v1 = 0xE500000000000000;
      v5 = 0x656E6F6870;
      break;
    case 2:
      v5 = 0x73746361746E6F63;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x794D646E6966;
      break;
    case 4:
      OUTLINED_FUNCTION_27_1();
      v1 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0AD8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x6574756C6F736241;
  v4 = a1;
  v5 = 0x6574756C6F736241;
  v6 = 0xEC00000065746144;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7473694C65746144;
      break;
    case 2:
      OUTLINED_FUNCTION_12_4();
      v5 = v7 | 3;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_8_0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7473694C65746144;
      break;
    case 2:
      OUTLINED_FUNCTION_9_3();
      v3 = v8 | 3;
      break;
    case 3:
      OUTLINED_FUNCTION_7_4();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_5(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1DD3B0BF8()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_17_3();
      goto LABEL_4;
    case 2:
      v0 = 1852795252;
LABEL_4:
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_4_4();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      goto LABEL_10;
    case 2:
      v5 = 0x6365737265746E69;
      v1 = 1852795252;
LABEL_10:
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      v5 = 28271;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0CFC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B0DA0(unsigned __int8 a1)
{
  v2 = 0xE800000000000000;
  switch(a1)
  {
    case 1u:
      v2 = 0xE700000000000000;
      break;
    case 2u:
      v2 = 0xE600000000000000;
      break;
    case 3u:
      v2 = 0xE500000000000000;
      break;
    case 4u:
      v2 = 0xE500000000000000;
      break;
    case 5u:
      OUTLINED_FUNCTION_23_1();
      v2 = (v3 - 32) | 0x8000000000000000;
      break;
    case 6u:
      v2 = 0xE700000000000000;
      break;
    case 7u:
      v2 = 0xE90000000000004ELL;
      break;
    case 9u:
      v2 = 0xE600000000000000;
      break;
    case 0xAu:
      v2 = 0xE700000000000000;
      break;
    case 0xBu:
      v2 = 0xE300000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_28_0();
  switch(v7)
  {
    case 1:
      v1 = 0xE700000000000000;
      v6 = 0x4553454E494843;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v6 = 0x574552424548;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v6 = 0x49524A4948;
      break;
    case 4:
      v1 = 0xE500000000000000;
      v6 = 0x55444E4948;
      break;
    case 5:
      OUTLINED_FUNCTION_10_7();
      v1 = v8 | 0x8000000000000000;
      break;
    case 6:
      v1 = 0xE700000000000000;
      v6 = 0x43494D414C5349;
      break;
    case 7:
      v6 = 0x4149524F47455247;
      v1 = 0xE90000000000004ELL;
      break;
    case 8:
      v6 = 0x4553454E4150414ALL;
      break;
    case 9:
      v1 = 0xE600000000000000;
      v6 = 0x4E41494C554ALL;
      break;
    case 10:
      v1 = 0xE700000000000000;
      v6 = 0x4E414953524550;
      break;
    case 11:
      v1 = 0xE300000000000000;
      v6 = 4411218;
      break;
    default:
      break;
  }

  if (v4 == v6 && v2 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9(v4, v5, v6);
  }

  return v10 & 1;
}

uint64_t sub_1DD3B1024()
{
  v0 = 0xED00006163697265;
  OUTLINED_FUNCTION_33();
  v3 = v2 | 0x6D41206800000000;
  v5 = v4;
  v6 = v3;
  v7 = 0xED00006163697265;
  switch(v5)
  {
    case 1:
      v6 = 0x6D41206874756F53;
      v7 = 0xED00006163697265;
      break;
    case 2:
      v6 = 0x6369747261746E41;
      v7 = 0xE900000000000061;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v6 = 0x616369726641;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v6 = 0x65706F727545;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v6 = 1634300737;
      break;
    case 6:
      v7 = 0xE700000000000000;
      v8 = 0x697361727545;
      goto LABEL_9;
    case 7:
      v7 = 0xE700000000000000;
      v8 = 0x696E6165634FLL;
LABEL_9:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_30_2();
      v3 = v9 | 0x6D41206800000000;
      break;
    case 2:
      v3 = 0x6369747261746E41;
      v0 = 0xE900000000000061;
      break;
    case 3:
      v0 = 0xE600000000000000;
      v3 = 0x616369726641;
      break;
    case 4:
      v0 = 0xE600000000000000;
      v3 = 0x65706F727545;
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 1634300737;
      break;
    case 6:
      v0 = 0xE700000000000000;
      v10 = 0x697361727545;
      goto LABEL_18;
    case 7:
      v0 = 0xE700000000000000;
      v10 = 0x696E6165634FLL;
LABEL_18:
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_5(v6, v1, v3);
  }

  return v12 & 1;
}

uint64_t sub_1DD3B1204(char a1, uint64_t a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E656E69746E6F63;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v4)
    {
      v6 = 28265;
    }

    else
    {
      v6 = 1918985582;
    }

    if (v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0x6E656E69746E6F63;
    v7 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 28265;
    }

    else
    {
      v3 = 1918985582;
    }

    if (a2 == 1)
    {
      v2 = 0xE200000000000000;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  if (v6 == v3 && v7 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_5(v6, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1DD3B12CC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7265626D756ELL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x7265626D756ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x7954746565727473;
      v3 = 0xEA00000000006570;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_14_7();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_4_4();
      break;
    case 4:
      v3 = 0xE200000000000000;
      v5 = 28271;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7954746565727473;
      v6 = 0xEA00000000006570;
      break;
    case 2:
      OUTLINED_FUNCTION_13_2();
      break;
    case 3:
      OUTLINED_FUNCTION_3_10();
      break;
    case 4:
      v6 = 0xE200000000000000;
      v2 = 28271;
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
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B13E8(char a1, uint64_t a2)
{
  v2 = 0x7369206572656877;
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v3)
    {
      v5 = 28265;
    }

    else
    {
      v5 = 28271;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x7369206572656877;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v7)
    {
      v2 = 28265;
    }

    else
    {
      v2 = 28271;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE200000000000000;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1DD3B14A0(char a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_15_4();
    if (v2)
    {
      v4 = 29545;
    }

    else
    {
      v4 = 1918985582;
    }

    if (v2)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v4 = 29793;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
    if (v6)
    {
      v8 = 29545;
    }

    else
    {
      v8 = 1918985582;
    }

    if (v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 29793;
  }

  if (v4 == v8 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_9(v4, a2, v8);
  }

  return v11 & 1;
}

uint64_t sub_1DD3B1554(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1918985582;
  }

  else
  {
    v3 = 29793;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1918985582;
  }

  else
  {
    v5 = 29793;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B15D4(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6973736573736F70;
    }

    else
    {
      v5 = 1918985582;
    }

    if (v4 == 1)
    {
      v2 = 0xEA00000000006576;
    }

    else
    {
      v2 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_14_7();
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v6 = 0x6973736573736F70;
    }

    else
    {
      v6 = 1918985582;
    }

    if (a2 == 1)
    {
      v3 = 0xEA00000000006576;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_2();
  }

  if (v5 == v6 && v2 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v5, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B16A8(char a1)
{
  if (a1)
  {
    v1 = 0xE200000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_22_1();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1DD3B1754(uint64_t a1)
{
  v1 = 0xE900000000000074;
  OUTLINED_FUNCTION_30_2();
  v4 = v3 | 0x7361456800000000;
  v6 = v5;
  v7 = v4;
  v8 = 0xE900000000000074;
  switch(v6)
  {
    case 1:
      v9 = 1953656654;
      goto LABEL_9;
    case 2:
      v7 = 1953719639;
      v8 = 0xE400000000000000;
      break;
    case 3:
      v8 = 0xE500000000000000;
      v10 = 1953853267;
      goto LABEL_6;
    case 4:
      v8 = 0xE500000000000000;
      v10 = 1953656654;
LABEL_6:
      v7 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      v9 = 1953853267;
LABEL_9:
      v7 = v9 | 0x7365576800000000;
      break;
    case 6:
      v8 = 0xE400000000000000;
      v7 = 1953718597;
      break;
    case 7:
      v7 = 0x7361456874726F4ELL;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_33();
      goto LABEL_19;
    case 2:
      v4 = 1953719639;
      v1 = 0xE400000000000000;
      break;
    case 3:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_30_2();
      goto LABEL_16;
    case 4:
      v1 = 0xE500000000000000;
      OUTLINED_FUNCTION_33();
LABEL_16:
      v4 = v12 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      OUTLINED_FUNCTION_30_2();
LABEL_19:
      v4 = v11 | 0x7365576800000000;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v4 = 1953718597;
      break;
    case 7:
      OUTLINED_FUNCTION_33();
      v4 = v13 | 0x7361456800000000;
      break;
    default:
      break;
  }

  if (v7 == v4 && v8 == v1)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_2_5(v7, v2, v4);
  }

  return v15 & 1;
}

uint64_t sub_1DD3B18F4()
{
  OUTLINED_FUNCTION_1_2();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_17_3();
      v0 = v0 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_4_4();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_6();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_19_3();
      v1 = v1 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_3_10();
      break;
    case 3:
      v5 = 28271;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1DD3B19D8(char a1, char a2, uint64_t (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_37_1();
  a3();
  OUTLINED_FUNCTION_38();
  v8 = v8 && v3 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_9(v4, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1DD3B1A88(char a1)
{
  OUTLINED_FUNCTION_22_1();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1DD640CD8();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_1DD3B1B14(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  OUTLINED_FUNCTION_37_1();
  a3(a2);
  OUTLINED_FUNCTION_38();
  v9 = v9 && v3 == v8;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_9(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_1DD3B1B90()
{
  sub_1DD63F598();
  sub_1DD3B2D1C();
  sub_1DD640098();
  sub_1DD640098();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = OUTLINED_FUNCTION_2_5(v6, v0, v4);
  }

  return v2 & 1;
}

uint64_t sub_1DD3B1C58@<X0>(uint64_t *a1@<X8>)
{
  result = AddressReference.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD3B1D3C@<X0>(char *a4@<X8>)
{
  v5 = sub_1DD640AA8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t AddressReference.Prefix.rawValue.getter()
{
  if (*v0)
  {
    return 1918985582;
  }

  else
  {
    return 28265;
  }
}

uint64_t sub_1DD3B1DF4@<X0>(uint64_t *a1@<X8>)
{
  result = AddressReference.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static AddressReference.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 6647407;
  }

  else
  {
    v5 = 0x79627261656ELL;
  }

  if (v4)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (*a2)
  {
    v7 = 6647407;
  }

  else
  {
    v7 = 0x79627261656ELL;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_5(v5, a2, v7);

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  result = v3 == 2 && v2 == 2;
  if (v2 != 2 && v3 != 2)
  {

    return sub_1DD3B05A4(v2 & 1, v3 & 1);
  }

  return result;
}

uint64_t sub_1DD3B1FE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD3B20A8(char a1)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a1 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B20FC(char a1)
{
  if (a1)
  {
    return 0x786966657270;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD3B2134(uint64_t a1)
{
  v2 = *v1;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B2180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3B1FE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3B21C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B20A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B21F0(uint64_t a1)
{
  v2 = sub_1DD3B2620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3B222C(uint64_t a1)
{
  v2 = sub_1DD3B2620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AddressReference.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB890, &qword_1DD643020);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B2620();
  sub_1DD640EF8();
  v17 = v10;
  v16 = 0;
  sub_1DD3B2674();
  sub_1DD640C68();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DD3B26C8();
    sub_1DD640C08();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t AddressReference.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB8B0, &qword_1DD643028);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B2620();
  sub_1DD640ED8();
  if (!v2)
  {
    v17 = 0;
    sub_1DD3B271C();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v11 = v18;
    v15 = 1;
    sub_1DD3B2770();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v7 + 8))(v10, v5);
    v13 = v16;
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DD3B2620()
{
  result = qword_1ECCDB898;
  if (!qword_1ECCDB898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB898);
  }

  return result;
}

unint64_t sub_1DD3B2674()
{
  result = qword_1ECCDB8A0;
  if (!qword_1ECCDB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8A0);
  }

  return result;
}

unint64_t sub_1DD3B26C8()
{
  result = qword_1ECCDB8A8;
  if (!qword_1ECCDB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8A8);
  }

  return result;
}

unint64_t sub_1DD3B271C()
{
  result = qword_1ECCDB8B8;
  if (!qword_1ECCDB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8B8);
  }

  return result;
}

unint64_t sub_1DD3B2770()
{
  result = qword_1ECCDB8C0;
  if (!qword_1ECCDB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8C0);
  }

  return result;
}

unint64_t sub_1DD3B27C8()
{
  result = qword_1ECCDB8C8;
  if (!qword_1ECCDB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8C8);
  }

  return result;
}

unint64_t sub_1DD3B2820()
{
  result = qword_1ECCDB8D0;
  if (!qword_1ECCDB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddressReference(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AddressReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t getEnumTagSinglePayload for StreamIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD3B2A90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3B2B70()
{
  result = qword_1ECCDB8D8;
  if (!qword_1ECCDB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8D8);
  }

  return result;
}

unint64_t sub_1DD3B2BC8()
{
  result = qword_1ECCDB8E0;
  if (!qword_1ECCDB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8E0);
  }

  return result;
}

unint64_t sub_1DD3B2C20()
{
  result = qword_1ECCDB8E8;
  if (!qword_1ECCDB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8E8);
  }

  return result;
}

unint64_t sub_1DD3B2C74()
{
  result = qword_1ECCDB8F0;
  if (!qword_1ECCDB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8F0);
  }

  return result;
}

unint64_t sub_1DD3B2CC8()
{
  result = qword_1ECCDB8F8;
  if (!qword_1ECCDB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB8F8);
  }

  return result;
}

unint64_t sub_1DD3B2D1C()
{
  result = qword_1EE160340;
  if (!qword_1EE160340)
  {
    sub_1DD63F598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160340);
  }

  return result;
}

uint64_t sub_1DD3B2F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6435D0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v73 = 1;
  v72 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_10();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v1, v2, v3, v4, 5, 0, 0, v5);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  v6 = OUTLINED_FUNCTION_0_10();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(v6, v7, v8, v9, 5, v10, v11, v12);
  *(inited + 96) = xmmword_1DD6435F0;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  v13 = OUTLINED_FUNCTION_0_10();
  *(inited + 120) = OUTLINED_FUNCTION_2_6(v13, v14, v15, v16, v17, v18, v19, v20);
  *(inited + 128) = xmmword_1DD643600;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  v21 = OUTLINED_FUNCTION_0_10();
  *(inited + 152) = OUTLINED_FUNCTION_3_6(v21, v22, v23, v24, 5, v25, v26, v27);
  *(inited + 160) = xmmword_1DD643610;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_3();
  v28 = OUTLINED_FUNCTION_0_10();
  *(inited + 184) = OUTLINED_FUNCTION_2_6(v28, v29, v30, v31, v32, v33, v34, v35);
  *(inited + 192) = xmmword_1DD643620;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_3();
  v36 = OUTLINED_FUNCTION_0_10();
  *(inited + 216) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v36, v37, v38, v39, 6, 0, 0, v40);
  *(inited + 224) = xmmword_1DD643630;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_1_3();
  v41 = OUTLINED_FUNCTION_0_10();
  *(inited + 248) = OUTLINED_FUNCTION_2_6(v41, v42, v43, v44, v45, v46, v47, v48);
  *(inited + 256) = xmmword_1DD643640;
  *(inited + 272) = 0;
  OUTLINED_FUNCTION_1_3();
  v49 = OUTLINED_FUNCTION_0_10();
  *(inited + 280) = OUTLINED_FUNCTION_3_6(v49, v50, v51, v52, 1, v53, v54, v55);
  *(inited + 288) = xmmword_1DD643650;
  *(inited + 304) = 0;
  OUTLINED_FUNCTION_1_3();
  v56 = OUTLINED_FUNCTION_0_10();
  *(inited + 312) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v56, v57, v58, v59, 6, 0, 0, v60);
  *(inited + 320) = xmmword_1DD643660;
  *(inited + 336) = 0;
  OUTLINED_FUNCTION_1_3();
  *(inited + 344) = OUTLINED_FUNCTION_3_6(3, 0, 0, &v73, 7, v61, v62, &v72);
  *(inited + 352) = xmmword_1DD643670;
  *(inited + 368) = 0;
  v73 = 1;
  v72 = 1;
  swift_allocObject();
  v63 = OUTLINED_FUNCTION_0_10();
  *(inited + 376) = OUTLINED_FUNCTION_2_6(v63, v64, v65, v66, v67, v68, v69, v70);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

unint64_t sub_1DD3B3160()
{
  result = qword_1ECCDB908;
  if (!qword_1ECCDB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB908);
  }

  return result;
}

uint64_t AirportLandmark.init(name:prefix:suffix:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = v6;
  return result;
}

SiriInference::AirportLandmark::Prefix_optional __swiftcall AirportLandmark.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AirportLandmark.Prefix.rawValue.getter()
{
  result = 0x656874206F74;
  switch(*v0)
  {
    case 1:
      result = 29793;
      break;
    case 2:
      result = 28265;
      break;
    case 3:
      result = 0x65687420726F66;
      break;
    case 4:
      result = 31074;
      break;
    case 5:
      result = 26223;
      break;
    case 6:
      result = 7499622;
      break;
    case 7:
      result = 1918985582;
      break;
    case 8:
      result = 28532;
      break;
    case 9:
      result = 0x656874207461;
      break;
    case 0xA:
      result = 0x656874206E69;
      break;
    case 0xB:
      result = 0x74726F70726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD3B332C@<X0>(uint64_t *a1@<X8>)
{
  result = AirportLandmark.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AirportLandmark.Suffix.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DD640AA8();

  *a3 = v4 != 0;
  return result;
}

uint64_t AirportLandmark.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AirportLandmark.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v2 != 12)
  {
    if (v4 != 12)
    {
      v8 = sub_1DD3B0AC0(v2, v4);
      if (v3 & 1 | ((v8 & 1) == 0))
      {
        v7 = v8 & v5;
        return v7 & 1;
      }

LABEL_13:
      v7 = v5 ^ 1;
      return v7 & 1;
    }

LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  if (!((v4 != 12) | v3 & 1))
  {
    goto LABEL_13;
  }

  v7 = (v4 == 12) & v5;
  return v7 & 1;
}

uint64_t sub_1DD3B365C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x786966667573 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD3B3774(unsigned __int8 a1)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD3B37BC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x786966657270;
  }

  return 0x786966667573;
}

uint64_t sub_1DD3B3814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD3B365C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD3B383C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD3B376C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B3864(uint64_t a1)
{
  v2 = sub_1DD3B3CD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD3B38A0(uint64_t a1)
{
  v2 = sub_1DD3B3CD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirportLandmark.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB910, &qword_1DD643688);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1DD3B3CD8();
  sub_1DD640EF8();
  v23 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_1DD3B3D2C();
    sub_1DD640C08();
    v20 = v14;
    v19 = 2;
    sub_1DD3B3D80();
    sub_1DD640C08();
  }

  return (*(v5 + 8))(v8, v13);
}

uint64_t AirportLandmark.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB930, &qword_1DD643690);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD3B3CD8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_1DD640B28();
  v8 = v7;
  v15[0] = 1;
  sub_1DD3B3DD4();
  OUTLINED_FUNCTION_3_4(&type metadata for AirportLandmark.Prefix, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_1DD3B3E28();
  OUTLINED_FUNCTION_3_4(&type metadata for AirportLandmark.Suffix, v14);
  v10 = OUTLINED_FUNCTION_0_0();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD3B3CD8()
{
  result = qword_1ECCDB918;
  if (!qword_1ECCDB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB918);
  }

  return result;
}

unint64_t sub_1DD3B3D2C()
{
  result = qword_1ECCDB920;
  if (!qword_1ECCDB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB920);
  }

  return result;
}

unint64_t sub_1DD3B3D80()
{
  result = qword_1ECCDB928;
  if (!qword_1ECCDB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB928);
  }

  return result;
}

unint64_t sub_1DD3B3DD4()
{
  result = qword_1ECCDB938;
  if (!qword_1ECCDB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB938);
  }

  return result;
}

unint64_t sub_1DD3B3E28()
{
  result = qword_1ECCDB940;
  if (!qword_1ECCDB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB940);
  }

  return result;
}

unint64_t sub_1DD3B3E80()
{
  result = qword_1ECCDB948;
  if (!qword_1ECCDB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB948);
  }

  return result;
}

unint64_t sub_1DD3B3ED8()
{
  result = qword_1ECCDB950;
  if (!qword_1ECCDB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB950);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B3F40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1DD3B3F80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirportLandmark.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirportLandmark.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirportLandmark.Suffix(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AirportLandmark.Suffix(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AirportLandmark.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AirportLandmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD3B4398()
{
  result = qword_1ECCDB958;
  if (!qword_1ECCDB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB958);
  }

  return result;
}

unint64_t sub_1DD3B43F0()
{
  result = qword_1ECCDB960;
  if (!qword_1ECCDB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB960);
  }

  return result;
}

unint64_t sub_1DD3B4448()
{
  result = qword_1ECCDB968;
  if (!qword_1ECCDB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB968);
  }

  return result;
}

unint64_t sub_1DD3B449C()
{
  result = qword_1ECCDB970;
  if (!qword_1ECCDB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB970);
  }

  return result;
}

unint64_t sub_1DD3B44F0()
{
  result = qword_1ECCDB978;
  if (!qword_1ECCDB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDB978);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD3B455C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1DD3B459C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DD3B45F0(NSObject *a1, unint64_t a2)
{
  v49 = sub_1DD63D0F8();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166510 != -1)
  {
LABEL_38:
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16F0C8);
  v8 = a1;
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();

  v11 = os_log_type_enabled(v9, v10);
  v47 = a2;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v46 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    *&v52 = v14;
    *v13 = 136315138;
    v15 = v8;
    v45 = v6;
    v16 = v15;
    v17 = [v15 description];
    v18 = sub_1DD63FDD8();
    v20 = v19;

    v6 = v45;
    v21 = sub_1DD39565C(v18, v20, &v52);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_1DD38D000, v9, v10, "[AlarmsDateTimeTaskSuccessEvaluable] Got CreateAlarmIntent: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_0_1();
    v4 = v46;
    OUTLINED_FUNCTION_0_1();
  }

  v22 = [v8 intentResponse];
  if (!v22)
  {
    v52 = 0u;
    v53 = 0u;
LABEL_31:
    sub_1DD3ADFD0(&v52, &qword_1ECCDB980, &unk_1DD643DC0);
    goto LABEL_32;
  }

  v23 = v22;
  v24 = sub_1DD63FDA8();
  v25 = [v23 valueForKeyPath_];

  if (v25)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52 = v50;
  v53 = v51;
  if (!*(&v51 + 1))
  {
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    a2 = *(&v50 + 1);
    v26 = sub_1DD3B4BE0(v50, *(&v50 + 1));
    v28 = v27;

    a1 = sub_1DD63F9D8();
    v29 = sub_1DD640368();

    v30 = os_log_type_enabled(a1, v29);
    v48 = v26;
    if (v30)
    {
      a2 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v52 = v31;
      *a2 = 136315138;

      v32 = sub_1DD39565C(v26, v28, &v52);

      *(a2 + 4) = v32;
      _os_log_impl(&dword_1DD38D000, a1, v29, "[AlarmsDateTimeTaskSuccessEvaluable] Got alarm identifier: %s", a2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v33 = sub_1DD5F3CA4(v47);
    v46 = sub_1DD3CC020();
    if (!v46)
    {
LABEL_30:

      return;
    }

    v34 = 0;
    v47 = v33 & 0xC000000000000001;
    v45 = v33 & 0xFFFFFFFFFFFFFF8;
    v35 = (v4 + 8);
    while (1)
    {
      if (v47)
      {
        v36 = MEMORY[0x1E12B2C10](v34, v33);
      }

      else
      {
        if (v34 >= *(v45 + 16))
        {
          __break(1u);
          return;
        }

        v36 = *(v33 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      a2 = [v36 alarmID];
      sub_1DD63D0D8();

      v4 = sub_1DD63D098();
      a1 = v39;
      (*v35)(v6, v49);
      if (v4 == v48 && a1 == v28)
      {
      }

      else
      {
        a2 = sub_1DD640CD8();

        if ((a2 & 1) == 0)
        {

          goto LABEL_29;
        }
      }

      a1 = [v37 eventType];

      if (a1 == 5 || a1 == 4)
      {
        goto LABEL_30;
      }

LABEL_29:
      ++v34;
      if (v38 == v46)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_32:
  v41 = sub_1DD63F9D8();
  v42 = sub_1DD640368();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1DD38D000, v41, v42, "[AlarmsDateTimeTaskSuccessEvaluable] alarmIdentifier is nil", v43, 2u);
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t sub_1DD3B4BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB988, &qword_1DD643B10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_1DD63C8B8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB990, &qword_1DD643B18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  sub_1DD63C8E8();
  v19 = sub_1DD63C8F8();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1DD3ADFD0(v18, &unk_1ECCDB990, &qword_1DD643B18);
    goto LABEL_19;
  }

  v20 = sub_1DD63C8D8();
  result = (*(*(v19 - 8) + 8))(v18, v19);
  if (v20)
  {
    v42 = v15;
    v43 = v6;
    v44 = a1;
    v45 = a2;
    v22 = 0;
    v23 = *(v20 + 16);
    v50 = v8 + 16;
    v51 = v23;
    v24 = (v8 + 8);
    v47 = (v8 + 32);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v51 == v22)
        {

          v6 = v43;
          sub_1DD558C24(v48, v43);

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
          a1 = v44;
          if (EnumTagSinglePayload == 1)
          {
            goto LABEL_20;
          }

          v37 = v42;
          (*v47)(v42, v6, v7);
          v38 = sub_1DD63C8A8();
          v40 = v39;
          (*v24)(v37, v7);
          if (v40)
          {
            return v38;
          }

          goto LABEL_21;
        }

        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          return result;
        }

        v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v26 = *(v8 + 72);
        (*(v8 + 16))(v12, v20 + v25 + v26 * v22, v7);
        if (sub_1DD63C898() != 25705 || v27 != 0xE200000000000000)
        {
          break;
        }

LABEL_14:
        v30 = *v47;
        (*v47)(v49, v12, v7);
        v31 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v31;
        v46 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD42A27C(0, *(v31 + 16) + 1, 1);
          v31 = v52;
        }

        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        v35 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v48 = v34 + 1;
          sub_1DD42A27C(v33 > 1, v34 + 1, 1);
          v35 = v48;
          v31 = v52;
        }

        ++v22;
        *(v31 + 16) = v35;
        v48 = v31;
        result = (v46)(v31 + v25 + v34 * v26, v49, v7);
      }

      v29 = sub_1DD640CD8();

      if (v29)
      {
        goto LABEL_14;
      }

      result = (*v24)(v12, v7);
      ++v22;
    }
  }

LABEL_19:
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
LABEL_20:
  sub_1DD3ADFD0(v6, &qword_1ECCDB988, &qword_1DD643B10);
LABEL_21:

  return a1;
}

uint64_t sub_1DD3B508C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DD3B50BC()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DD3B5148(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD3B5168, 0, 0);
}

void sub_1DD3B5168()
{
  v1 = 0;
  v2 = *(v0[7] + 24);
  v10 = *(v2 + 16);
  for (i = (v2 + 40); ; i += 3)
  {
    if (v10 == v1)
    {
      v6 = v0[6];
      *v6 = 0;
      v6[1] = 0;
      v7 = 3;
      goto LABEL_8;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(i - 1);
    v4 = *i;
    v0[2] = v5;
    v0[3] = v4;
    v0[4] = 0x6C7070612E6D6F63;
    v0[5] = 0xE900000000000065;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    if (sub_1DD63FD48())
    {
      break;
    }

    ++v1;
  }

  v7 = 0;
  v8 = v0[6];
  *v8 = v5;
  v8[1] = v4;
LABEL_8:
  *(v0[6] + 16) = v7;
  v9 = v0[1];

  v9();
}

unint64_t sub_1DD3B52B8()
{
  result = qword_1EE163960;
  if (!qword_1EE163960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163960);
  }

  return result;
}

unint64_t sub_1DD3B530C()
{
  result = qword_1EE163970;
  if (!qword_1EE163970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163970);
  }

  return result;
}

uint64_t sub_1DD3B5398(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD3B5148(a1, a2);
}

uint64_t sub_1DD3B5438()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of Always1pRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD3B5438;

  return v8(a1, a2);
}

uint64_t sub_1DD3B56CC()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  if (sub_1DD3CC020())
  {
    sub_1DD56B960(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CABC();
  }

  sub_1DD3B60AC();
  sub_1DD3B64E8(&unk_1ECCDB9B0, sub_1DD3B60AC, MEMORY[0x1E69E81B8]);
  v2 = sub_1DD640258();

  v9[0] = 0;
  v3 = [v0 actionsConformingToSystemProtocols:v2 logicalType:1 bundleIdentifier:0 error:v9];

  v4 = v9[0];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA90, &qword_1DD643D20);
    v5 = sub_1DD63FC58();
    v6 = v4;

    sub_1DD3B60F0(v5);

    return sub_1DD41B630();
  }

  else
  {
    v8 = v9[0];
    sub_1DD63CD98();

    return swift_willThrow();
  }
}

void sub_1DD3B58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63C758();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9C0, &qword_1DD643B90);
  MEMORY[0x1EEE9AC00](v60);
  v8 = v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v64 = v48 - v15;
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  v48[2] = *MEMORY[0x1E69AC4C0];
  v59 = *MEMORY[0x1E695A228];
  v58 = (v5 + 104);
  v49 = (v5 + 32);
  v52 = (v5 + 8);
  v55 = a3;

  v21 = 0;
  v22 = 0;
  v62 = v11;
  v53 = v20;
  for (i = v16; ; v16 = i)
  {
LABEL_4:
    if (v19)
    {
      v23 = v21;
    }

    else
    {
      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        if (v23 >= v20)
        {

          return;
        }

        v19 = *(v16 + 8 * v23);
        ++v21;
      }

      while (!v19);
    }

    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(*(v55 + 56) + ((v23 << 9) | (8 * v24)));
    v26 = [v25 systemProtocols];
    sub_1DD3B60AC();
    v27 = sub_1DD640118();

    v28 = [objc_opt_self() showInAppStringSearchResultsProtocol];
    v65 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v48[-2] = &v65;
    sub_1DD450430(sub_1DD3B6458, &v48[-4], v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_25;
    }

    v31 = [v25 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBA30, &unk_1DD643BA0);
    sub_1DD3B64E8(&qword_1ECCDB6B0, type metadata accessor for LNSystemProtocolIdentifier, &unk_1DD642D08);
    v32 = sub_1DD63FC58();

    v33 = v63;
    if (!*(v32 + 16))
    {

LABEL_25:

      goto LABEL_26;
    }

    v61 = v25;
    v34 = sub_1DD400FBC();
    if ((v35 & 1) == 0)
    {

      goto LABEL_26;
    }

    v36 = *(*(v32 + 56) + 8 * v34);
    swift_unknownObjectRetain();

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_26:
    v21 = v23;
    v20 = v53;
  }

  v48[0] = v22;
  v48[1] = v36;
  v38 = [v37 searchScopes];
  v39 = sub_1DD640118();

  v40 = 0;
  v56 = *(v39 + 16);
  v57 = v39;
  v41 = v39 + 40;
  v42 = v61;
  while (1)
  {
    if (v56 == v40)
    {

      swift_unknownObjectRelease();

      v21 = v23;
      v20 = v53;
      v16 = i;
      v22 = v48[0];
      goto LABEL_4;
    }

    if (v40 >= *(v57 + 16))
    {
      goto LABEL_34;
    }

    swift_bridgeObjectRetain_n();
    v43 = v64;
    sub_1DD63C748();
    (*v58)(v33, v59, v4);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v4);
    v44 = *(v60 + 48);
    sub_1DD3B6478(v43, v8);
    sub_1DD3B6478(v33, &v8[v44]);
    if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
    {
      break;
    }

    sub_1DD3B6478(v8, v62);
    if (__swift_getEnumTagSinglePayload(&v8[v44], 1, v4) == 1)
    {

      sub_1DD3ADFD0(v33, &qword_1ECCDBAB0, &qword_1DD643B98);
      sub_1DD3ADFD0(v64, &qword_1ECCDBAB0, &qword_1DD643B98);
      (*v52)(v62, v4);
      goto LABEL_21;
    }

    v45 = v33;
    v46 = v50;
    (*v49)(v50, &v8[v44], v4);
    sub_1DD3B64E8(&unk_1ECCDBA40, MEMORY[0x1E695A238], MEMORY[0x1E695A248]);
    v51 = sub_1DD63FD98();

    v47 = *v52;
    (*v52)(v46, v4);
    sub_1DD3ADFD0(v45, &qword_1ECCDBAB0, &qword_1DD643B98);
    sub_1DD3ADFD0(v64, &qword_1ECCDBAB0, &qword_1DD643B98);
    v47(v62, v4);
    sub_1DD3ADFD0(v8, &qword_1ECCDBAB0, &qword_1DD643B98);
    v42 = v61;
    if (v51)
    {
      goto LABEL_32;
    }

LABEL_23:
    v41 += 16;
    ++v40;
    v33 = v63;
  }

  sub_1DD3ADFD0(v33, &qword_1ECCDBAB0, &qword_1DD643B98);
  sub_1DD3ADFD0(v64, &qword_1ECCDBAB0, &qword_1DD643B98);
  if (__swift_getEnumTagSinglePayload(&v8[v44], 1, v4) != 1)
  {
LABEL_21:
    sub_1DD3ADFD0(v8, &unk_1ECCDB9C0, &qword_1DD643B90);
    v42 = v61;
    goto LABEL_23;
  }

  sub_1DD3ADFD0(v8, &qword_1ECCDBAB0, &qword_1DD643B98);
  v42 = v61;
LABEL_32:

  swift_unknownObjectRelease();
}

unint64_t sub_1DD3B60AC()
{
  result = qword_1ECCDBA80;
  if (!qword_1ECCDBA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDBA80);
  }

  return result;
}

unint64_t *sub_1DD3B60F0(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1DD3B63BC(v8, v4, v2);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DD57634C(0, v4, v5);
  sub_1DD3B6254(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1DD3B6254(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    sub_1DD3B58E8(v15, v16, v17);
    v19 = v18;

    if (v19)
    {
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DD621BE0(result, a2, v23, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1DD3B63BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD3B6254(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1DD3B6478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3B64E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD3B6544(uint64_t a1, int a2)
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

uint64_t sub_1DD3B6584(uint64_t result, int a2, int a3)
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

unint64_t sub_1DD3B65D8()
{
  result = qword_1ECCDBA68;
  if (!qword_1ECCDBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBA68);
  }

  return result;
}

void *sub_1DD3B6660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA98, &qword_1DD643D28);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBAA0, qword_1DD643D30) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD643BB0;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x1E695A228];
  v7 = sub_1DD63C758();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 1;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x1E695A220], v7);
  *(v4 + v1 + v9) = 2;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x1E695A218], v7);
  *(v4 + 2 * v1 + v10) = 4;
  v11 = v4 + 3 * v1;
  v12 = v0[14];
  v8(v11, *MEMORY[0x1E695A210], v7);
  *(v11 + v12) = 8;
  sub_1DD3B79A8(&unk_1ECCDC3C0, MEMORY[0x1E695A238], MEMORY[0x1E695A240]);
  result = sub_1DD63FC88();
  off_1ECCDBA60 = result;
  return result;
}

uint64_t sub_1DD3B687C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(char *, unint64_t, uint64_t), uint64_t a5)
{
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v60 = *MEMORY[0x1E69E9840];
  v7 = sub_1DD63D4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v12 = sub_1DD3CC020();
  v54 = a2;
  if (v12)
  {
    sub_1DD56B960(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CABC();
  }

  sub_1DD3B60AC();
  sub_1DD3B79A8(&unk_1ECCDB9B0, sub_1DD3B60AC, MEMORY[0x1E69E81B8]);
  v13 = sub_1DD640258();

  v59 = 0;
  v14 = [v10 actionsConformingToSystemProtocols:v13 logicalType:1 bundleIdentifier:0 error:&v59];

  v15 = v59;
  if (v14)
  {
    v50 = v8;
    v51 = a1;
    v52 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBA90, &qword_1DD643D20);
    v57 = sub_1DD63FC58();
    v16 = v15;

    v17 = v58 + 56;
    v18 = 1 << *(v58 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v58 + 56);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
      }

      if (v24 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        v22 = v24;
        do
        {
LABEL_12:
          v25 = v58;
          v26 = (*(v58 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
          v27 = *v26;
          v28 = v26[1];

          sub_1DD3B6F88(v27, v28, v57, v55, v56, v25);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BE37C();
            v23 = v37;
          }

          v35 = *(v23 + 16);
          if (v35 >= *(v23 + 24) >> 1)
          {
            sub_1DD3BE37C();
            v23 = v38;
          }

          v20 &= v20 - 1;
          *(v23 + 16) = v35 + 1;
          v36 = (v23 + 24 * v35);
          v36[4] = v30;
          v36[5] = v32;
          v36[6] = v34;
        }

        while (v20);
      }
    }

    v39 = sub_1DD3B80F8(v23);
    v40 = v52;
    v41 = v53;
    *v53 = v39;
    v42 = v50;
    (*(v50 + 104))(v41, *MEMORY[0x1E69D2B60], v40);
    v51(v41);
    return (*(v42 + 8))(v41, v40);
  }

  else
  {
    v44 = v59;
    v45 = sub_1DD63CD98();

    swift_willThrow();
    v46 = sub_1DD3B6D44(v58);
    v47 = sub_1DD3B80F8(v46);
    v48 = v53;
    *v53 = v47;
    (*(v8 + 104))(v48, *MEMORY[0x1E69D2B60], v7);
    a1(v48);
    return (*(v8 + 8))(v48, v7);
  }
}

uint64_t sub_1DD3B6D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1DD42B3E4(0, v1, 0);
  v2 = v31;
  result = sub_1DD55B198();
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_1DD42B3E4(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = -1;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1DD3AA558(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1DD3B6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, unint64_t, uint64_t), uint64_t a6)
{
  v60 = a6;
  v57 = a4;
  v58 = a5;
  v9 = sub_1DD63C758();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v13 = sub_1DD3978DC();
    if (v14)
    {
      v59 = v9;
      v54[0] = a1;
      v54[1] = a2;
      v15 = *(*(a3 + 56) + 8 * v13);
      v16 = v15 + 64;
      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;
      v56 = v15;
      swift_bridgeObjectRetain_n();
      v21 = 0;
      v22 = MEMORY[0x1E69E7CC0];
      v55 = v10;
      while (v19)
      {
LABEL_12:
        v25 = *(*(v56 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v19)))));
        sub_1DD3B73E0(v25);
        v27 = v26;

        v28 = *(v27 + 16);
        v29 = *(v22 + 16);
        if (__OFADD__(v29, v28))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          return;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v29 + v28 > *(v22 + 24) >> 1)
        {
          sub_1DD3BE528();
          v22 = v30;
        }

        v10 = v55;
        v19 &= v19 - 1;
        if (*(v27 + 16))
        {
          if ((*(v22 + 24) >> 1) - *(v22 + 16) < v28)
          {
            goto LABEL_46;
          }

          swift_arrayInitWithCopy();

          if (v28)
          {
            v31 = *(v22 + 16);
            v32 = __OFADD__(v31, v28);
            v33 = v31 + v28;
            if (v32)
            {
              goto LABEL_47;
            }

            *(v22 + 16) = v33;
          }
        }

        else
        {

          if (v28)
          {
            __break(1u);
            goto LABEL_43;
          }
        }
      }

      v23 = v59;
      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v24 >= v20)
        {
          break;
        }

        v19 = *(v16 + 8 * v24);
        ++v21;
        if (v19)
        {
          v21 = v24;
          goto LABEL_12;
        }
      }

      v34 = *(v22 + 16);
      if (v34)
      {
        v37 = *(v10 + 16);
        v35 = v10 + 16;
        v36 = v37;
        v38 = v22 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
        v60 = *(v35 + 56);
        v39 = (v35 - 8);
        v40 = MEMORY[0x1E69E7CC0];
        v58 = v37;
        do
        {
          v36(v12, v38, v23);
          if (qword_1ECCDB010 != -1)
          {
            swift_once();
          }

          v41 = off_1ECCDBA60;
          if (*(off_1ECCDBA60 + 2) && (sub_1DD3FE74C(), (v43 & 1) != 0))
          {
            v44 = v22;
            v45 = v35;
            v46 = *(v41[7] + 8 * v42);
            (*v39)(v12, v23);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE460();
              v40 = v48;
            }

            v47 = v40[2];
            if (v47 >= v40[3] >> 1)
            {
              sub_1DD3BE460();
              v40 = v49;
            }

            v40[2] = v47 + 1;
            v40[v47 + 4] = v46;
            v35 = v45;
            v22 = v44;
            v36 = v58;
            v23 = v59;
          }

          else
          {
            (*v39)(v12, v23);
          }

          v38 += v60;
          --v34;
        }

        while (v34);
      }

      else
      {

        v40 = MEMORY[0x1E69E7CC0];
      }

      v50 = v40[2];
      if (v50)
      {
        v51 = 0;
        v52 = v40 + 4;
        do
        {
          v53 = *v52++;
          v51 |= v53;
          --v50;
        }

        while (v50);
      }
    }
  }

LABEL_43:
}

void sub_1DD3B73E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1DD63C758();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 systemProtocols];
  sub_1DD3B60AC();
  v11 = sub_1DD640118();

  v12 = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v38 = v12;
  v37 = &v38;
  sub_1DD450430(sub_1DD3B6458, v36, v11);
  LOBYTE(v10) = v13;

  if (v10)
  {
    v14 = [a1 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBA30, &unk_1DD643BA0);
    sub_1DD3B79A8(&qword_1ECCDB6B0, type metadata accessor for LNSystemProtocolIdentifier, &unk_1DD642D08);
    v15 = sub_1DD63FC58();

    v16 = sub_1DD59B5F0(*MEMORY[0x1E69AC4C0], v15);

    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v35 = v9;
        v18 = [v17 searchScopes];
        v19 = sub_1DD640118();

        v20 = 0;
        v21 = *(v19 + 16);
        v33 = v6;
        v34 = (v6 + 32);
        v22 = v19 + 40;
        v23 = MEMORY[0x1E69E7CC0];
        v32 = v19 + 40;
LABEL_5:
        for (i = v22 + 16 * v20; ; i += 16)
        {
          if (v21 == v20)
          {

            goto LABEL_17;
          }

          if (v20 >= *(v19 + 16))
          {
            break;
          }

          sub_1DD63C748();
          if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
          {
            v25 = *v34;
            (*v34)(v35, v4, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1DD3BE528();
              v23 = v28;
            }

            v26 = *(v23 + 16);
            v27 = v26 + 1;
            if (v26 >= *(v23 + 24) >> 1)
            {
              v31 = v26 + 1;
              sub_1DD3BE528();
              v27 = v31;
              v23 = v29;
            }

            ++v20;
            *(v23 + 16) = v27;
            v25((v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v26), v35, v5);
            v22 = v32;
            goto LABEL_5;
          }

          sub_1DD3B79F0(v4);
          ++v20;
        }

        __break(1u);
      }

      else
      {
LABEL_17:
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1DD3B7834()
{
  v0 = qword_1ECCDBA50;

  return v0;
}

uint64_t sub_1DD3B788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3B7954();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD3B78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD3B7954();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD3B7954()
{
  result = qword_1ECCDBA70;
  if (!qword_1ECCDBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBA70);
  }

  return result;
}

uint64_t sub_1DD3B79A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD3B79F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAB0, &qword_1DD643B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD3B7A58()
{
  if (!AFIsInternalInstall())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1DD63FDA8();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD63FDD8();

  sub_1DD3B7F10();
  v4 = sub_1DD640638();

  return v4;
}

uint64_t sub_1DD3B7B40@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16))
  {
    v5 = *(v1 + 16);
    return sub_1DD3B7BC8(&v5, a1);
  }

  else
  {
    v4 = sub_1DD63D078();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

uint64_t sub_1DD3B7BC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DD63FDA8();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v6 = sub_1DD63D078();
    v7 = swift_dynamicCast() ^ 1;
    v8 = a2;
    v9 = v6;
  }

  else
  {
    sub_1DD3ADFD0(v13, &qword_1ECCDB980, &unk_1DD643DC0);
    v9 = sub_1DD63D078();
    v8 = a2;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v7, 1, v9);
}

uint64_t sub_1DD3B7CF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + 16);
  if (v6)
  {
    sub_1DD3B7EA0(a1, &v11 - v4);
    v7 = sub_1DD63D078();
    v8 = 0;
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
    {
      v8 = sub_1DD63CFA8();
      (*(*(v7 - 8) + 8))(v5, v7);
    }

    v9 = sub_1DD63FDA8();
    [v6 setValue:v8 forKey:v9];
    swift_unknownObjectRelease();
  }

  return sub_1DD3ADFD0(a1, &qword_1ECCDEBC0, &qword_1DD6445A0);
}

uint64_t sub_1DD3B7E44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3B7EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DD3B7F10()
{
  result = qword_1EE166100;
  if (!qword_1EE166100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166100);
  }

  return result;
}

uint64_t sub_1DD3B7F64()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  *(v0 + 16) = sub_1DD3B7FC0(0xD000000000000024, 0x80000001DD66A020);
  return v0;
}

id sub_1DD3B7FC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD3B8038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1DD3B808C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1DD3B8120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB08, &qword_1DD643E90);
    v1 = sub_1DD640A78();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DD3BAF0C(v2, 1, &v4, sub_1DD4E6410, &qword_1ECCDBB10, &qword_1DD643E98);

  return v4;
}

uint64_t sub_1DD3B81F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB28, &qword_1DD654D00);
    v1 = sub_1DD640A78();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1DD3BAF0C(v2, 1, &v4, sub_1DD4E6424, &qword_1ECCDBB30, &qword_1DD643EB0);

  return v4;
}

uint64_t sub_1DD3B82F8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DD640A78();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

void *sub_1DD3B83AC()
{
  v0 = [objc_opt_self() sharedAnalytics];
  v1 = [v0 defaultMessageStream];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  type metadata accessor for TrialAppRankerSELFConfigProvider();
  swift_allocObject();
  v3 = v1;
  v4 = sub_1DD5FE9FC();
  type metadata accessor for UserDefaultsAppRankerPersistentStorage();
  swift_allocObject();
  v5 = sub_1DD3B7F64();

  type metadata accessor for AppRankerSELFRecorder();
  result = swift_allocObject();
  result[2] = sub_1DD3BB650;
  result[3] = v2;
  result[4] = sub_1DD3BB658;
  result[5] = v4;
  result[6] = v5;
  result[7] = &off_1F58B0388;
  result[8] = sub_1DD3B860C;
  result[9] = 0;
  result[10] = sub_1DD3B86EC;
  result[11] = 0;
  result[12] = sub_1DD3B8618;
  result[13] = 0;
  return result;
}

void sub_1DD3B84FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1DD3BB660(a2, &v11 - v7);
  v9 = sub_1DD63D0F8();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_1DD63D0B8();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  [a3 emitMessage:a1 isolatedStreamUUID:v10];
}

id sub_1DD3B8618()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DD3B8678(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  os_unfair_lock_lock((v3 + 56));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 36);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);

  os_unfair_lock_unlock((v3 + 56));
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
}

void sub_1DD3B86F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_3();
  v123 = v8;
  v9 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v124 = (v13 - v14);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v122 = &v102 - v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_3();
  v121 = v24;
  if ((sub_1DD3BA390() & 1) == 0)
  {
    return;
  }

  v25 = type metadata accessor for AppRankEvent(0);
  v26 = *(a1 + *(v25 + 28));
  if (!v26)
  {
    return;
  }

  v115 = v11;
  v116 = v1;
  v27 = *(a1 + *(v25 + 24));
  if (qword_1ECCDB018 != -1)
  {
    goto LABEL_63;
  }

LABEL_4:
  v28 = qword_1ECCDBAB8;
  if (qword_1ECCDB020 != -1)
  {
    swift_once();
  }

  v29 = sub_1DD3B9424(v26, v27, v28, qword_1ECCDBAC0, sub_1DD3B940C, 0, sub_1DD3B9418, 0, sub_1DD3B81F8, sub_1DD3BE624, sub_1DD3CC020);
  if (!v29)
  {
    return;
  }

  v32 = v30;
  v33 = v31;
  v120 = v27;
  v34 = v29;
  v35 = objc_allocWithZone(MEMORY[0x1E69CED00]);
  v117 = v34;

  v36 = [v35 init];
  if (v36)
  {
    v37 = v36;
    v111 = v17;
    v112 = v34;
    v114 = v33;
    v110 = v20;
    [v36 setIndependentSignal_];

    sub_1DD3BB50C(v38, v37, &qword_1ECCDBB20, 0x1E69CECF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAD0, &qword_1DD643E68);
    v113 = v37;
    v39 = sub_1DD63FC88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAD8, &qword_1DD643E70);
    v40 = sub_1DD63FC88();
    v41 = sub_1DD3B9424(v26, v120, v39, v40, sub_1DD3BA340, 0, sub_1DD3BA34C, 0, sub_1DD3B8120, sub_1DD3BE600, sub_1DD3CC020);
    v20 = v42;
    v44 = v43;

    if (v41)
    {
      v45 = objc_allocWithZone(MEMORY[0x1E69CED20]);
      v46 = v41;

      v109 = [v45 init];
      if (v109)
      {
        v104 = v41;
        v106 = v32;
        v107 = v9;
        v103 = v6;
        [v46 setDisambiguationAppsOrder_];
        v47 = type metadata accessor for AppRankSelectionEvent(0);
        v48 = a1 + *(v47 + 28);
        v49 = *(v48 + 8);
        v118 = v47;
        v119 = (v120 + 16);
        if (v49)
        {
          v48 = v120 + 16;
        }

        if (*v48 == *v48)
        {
          [v46 setNumDisambiguationApps_];
        }

        v108 = v46;
        v105 = v44;
        v27 = v120;
        v50 = *(v120 + 16);
        v9 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v20 >= 0)
        {
          v51 = v20 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v51 = v20;
        }

        v102 = v51;
        v6 = v20 & 0xC000000000000001;

        v17 = 0;
        v26 = (v27 + 40);
        v52 = v20 >> 62;
        v120 = v20;
        while (v50 != v17)
        {
          if (v17 >= *v119)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            swift_once();
            goto LABEL_4;
          }

          v53 = *(v26 - 1);
          v27 = *v26;
          if (v52)
          {
            v54 = sub_1DD6407B8();
          }

          else
          {
            v54 = *(v9 + 16);
          }

          if (v17 == v54)
          {
            break;
          }

          if (v6)
          {

            v56 = MEMORY[0x1E12B2C10](v17, v20);
          }

          else
          {
            if (v17 >= *(v9 + 16))
            {
              goto LABEL_62;
            }

            v55 = *(v20 + 8 * v17 + 32);

            v56 = v55;
          }

          v57 = v56;
          v58 = (a1 + *(v118 + 24));
          if (v53 == *v58 && v27 == v58[1])
          {
            v60 = 1;
          }

          else
          {
            v60 = sub_1DD640CD8();
          }

          [v57 setIsDisambiguatedApp_];
          if (v17 <= 0x7FFFFFFE)
          {
            [v57 setDisambiguationAppOrdinal_];
          }

          v26 += 2;
          ++v17;
          v20 = v120;
        }

        (*(v116 + 32))(v126, v61);
        v62 = v108;
        if ((v128 & 1) == 0)
        {
          [v108 setTrialDeploymentId_];
        }

        v63 = v107;
        v64 = v123;
        v65 = v124;
        v66 = v109;
        v67 = &off_1E8655000;
        if (v129)
        {
          sub_1DD63D088();
          sub_1DD3BA6F8(v126);
          if (__swift_getEnumTagSinglePayload(v64, 1, v63) == 1)
          {
            sub_1DD3ADFD0(v64, &qword_1ECCDBAC8, &qword_1DD643E60);
          }

          else
          {
            v69 = v115;
            v70 = v65;
            v71 = v121;
            (*(v115 + 32))(v121, v64, v63);
            sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
            v72 = v122;
            (*(v69 + 16))(v122, v71, v63);
            v73 = v62;
            v74 = v72;
            v67 = &off_1E8655000;
            v75 = sub_1DD5A5500(v74);
            [v73 setTrialTreatmentId_];

            v76 = v71;
            v65 = v70;
            (*(v69 + 8))(v76, v63);
          }
        }

        v77 = v113;
        [v66 setPlayOnThirdPartyAppSignals_];
        [v66 setIndependentSignal_];

        sub_1DD3BB50C(v78, v66, &qword_1ECCDBAE8, 0x1E69CED10);
        v79 = [objc_allocWithZone(MEMORY[0x1E69CEBD8]) v67[418]];
        if (v79)
        {
          v80 = v79;
          v81 = [objc_allocWithZone(MEMORY[0x1E69CEBE0]) v67[418]];
          if (v81)
          {
            v82 = v110;
            v83 = v81;
            sub_1DD63D0E8();
            sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
            v84 = *(v115 + 16);
            v85 = v122;
            v84(v122, v82, v63);
            v86 = sub_1DD5A5500(v85);
            [v83 setInferenceId_];

            v123 = v83;
            [v80 setEventMetadata_];
            [v80 setVideoSmartAppSelectionDisambiguation_];
            sub_1DD63D0E8();
            if (qword_1EE166510 != -1)
            {
              OUTLINED_FUNCTION_0_3(&qword_1EE166510);
            }

            v87 = sub_1DD63F9F8();
            __swift_project_value_buffer(v87, qword_1EE16F0C8);
            v122 = v84;
            v84(v65, v82, v63);
            v88 = sub_1DD63F9D8();
            v89 = sub_1DD640368();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = v65;
              v91 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v125 = v121;
              *v91 = 136315138;
              sub_1DD3BB588();
              v92 = sub_1DD640CB8();
              v94 = v93;
              OUTLINED_FUNCTION_15_5();
              (v84)(v90, v95);
              v96 = v92;
              v66 = v109;
              v97 = sub_1DD39565C(v96, v94, &v125);

              *(v91 + 4) = v97;
              _os_log_impl(&dword_1DD38D000, v88, v89, "AppRankerSELFRecorder will emit SELF message with Inference ID %s", v91, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v121);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();

              v98 = v107;
            }

            else
            {

              OUTLINED_FUNCTION_15_5();
              (v84)(v65, v63);
              v98 = v63;
            }

            v99 = *(v116 + 16);
            v100 = v103;
            v101 = v111;
            (v122)(v103, v111, v98);
            __swift_storeEnumTagSinglePayload(v100, 0, 1, v98);
            v99(v80, v100);

            sub_1DD3BB4C0(v104);

            sub_1DD3BB4C0(v112);
            sub_1DD3ADFD0(v100, &qword_1ECCDBAC8, &qword_1DD643E60);
            (v84)(v101, v98);
            (v84)(v110, v98);
            return;
          }

          sub_1DD3BB4C0(v104);
          sub_1DD3BB4C0(v112);
        }

        else
        {
          sub_1DD3BB4C0(v104);
          sub_1DD3BB4C0(v112);
        }

        return;
      }

      sub_1DD3BB4C0(v41);
      sub_1DD3BB4C0(v112);
    }

    else
    {
      sub_1DD3BB4C0(v112);
    }
  }

  else
  {
    sub_1DD3BB4C0(v34);
  }

  v68 = v117;
}

char *sub_1DD3B9424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(int64_t *__return_ptr), uint64_t a6, void (*a7)(int64_t *__return_ptr, uint64_t), uint64_t a8, void (**a9)(char *, char *, uint64_t), uint64_t a10, uint64_t (*a11)(int64_t))
{
  v206 = a1;
  v216 = sub_1DD63D4F8();
  OUTLINED_FUNCTION_0();
  v207 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v186 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v208 = &v186 - v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  v214 = &v186 - v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_16_3();
  v205 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF0, &qword_1DD643E78);
  MEMORY[0x1EEE9AC00](v30 - 8);
  OUTLINED_FUNCTION_1_4();
  v210 = (v31 - v32);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16_3();
  v209 = v34;
  a5(&v218);
  v35 = v218;
  if (!v218)
  {
    if (qword_1EE166510 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_114;
  }

  v191 = v23;
  v36 = *(a2 + 16);

  v38 = *(sub_1DD41859C(v37) + 16);

  if (v36 != v38)
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v57 = sub_1DD63F9F8();
    __swift_project_value_buffer(v57, qword_1EE16F0C8);
    v52 = sub_1DD63F9D8();
    v58 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v58))
    {
      v59 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v59);
      v62 = "AppRankerSELFSerialization create has duplicate candidateAppBundleIds";
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v187 = v20;
  v195 = a3;
  v196 = a4;
  v197 = v35;
  v39 = 0;
  v188 = a11;
  v211 = a10;
  v213 = a9;
  v189 = a2;
  v40 = (a2 + 40);
  v41 = MEMORY[0x1E69E7CC0];
  v215 = v36;
  v212 = v40;
LABEL_4:
  v42 = &v40[2 * v39];
  for (i = v39; v36 != i; ++i)
  {
    if (i >= v36)
    {
      goto LABEL_110;
    }

    v39 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_111;
    }

    v44 = *(v42 - 1);
    v45 = *v42;

    a7(&v218, v46);
    v47 = v218;
    if (v218)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = (v211)(0, *(v41 + 16) + 1, 1, v41);
      }

      v40 = v212;
      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      if (v49 >= v48 >> 1)
      {
        v41 = (v211)(v48 > 1, v49 + 1, 1, v41);
      }

      *(v41 + 16) = v49 + 1;
      v50 = (v41 + 24 * v49);
      v50[4] = v44;
      v50[5] = v45;
      v50[6] = v47;
      v36 = v215;
      goto LABEL_4;
    }

    v42 += 2;
    v36 = v215;
  }

  v63 = (v213)(v41);
  if (*(v63 + 16) == v36)
  {
    v64 = v206 + 64;
    v65 = 1 << *(v206 + 32);
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & *(v206 + 64);
    v68 = (v65 + 63) >> 6;
    v212 = (v207 + 32);
    v213 = (v207 + 16);
    v204 = (v207 + 88);
    v203 = *MEMORY[0x1E69D2B58];
    v193 = *MEMORY[0x1E69D2B60];
    v201 = (v207 + 8);
    v199 = (v207 + 96);
    v211 = v63;
    v192 = v63 + 64;
    v186 = v207 + 40;

    v35 = 0;
    v190 = MEMORY[0x1E69E7CC8];
    v69 = v216;
    v200 = v68;
    v202 = v64;
    if (v67)
    {
      while (1)
      {
        v70 = v35;
LABEL_32:
        v71 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v72 = v71 | (v70 << 6);
        v73 = v207;
        v74 = (*(v206 + 48) + 16 * v72);
        v75 = *v74;
        v76 = v74[1];
        v77 = v205;
        (*(v207 + 16))(v205, *(v206 + 56) + *(v207 + 72) * v72, v69);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        v79 = v69;
        v80 = v78;
        v81 = *(v78 + 48);
        v82 = v210;
        *v210 = v75;
        v82[1] = v76;
        v83 = v82;
        (*(v73 + 32))(v82 + v81, v77, v79);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v80);

LABEL_33:
        v84 = v83;
        v85 = v209;
        sub_1DD3BB5E0(v84, v209);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        if (__swift_getEnumTagSinglePayload(v85, 1, v86) == 1)
        {

          v172 = 0;
          v173 = MEMORY[0x1E69E7CC0];
          v218 = MEMORY[0x1E69E7CC0];
          v174 = v189 + 40;
          v175 = v215;
          v176 = v211;
LABEL_89:
          v177 = v174 + 16 * v172;
          while (v175 != v172)
          {
            if (v172 >= v175)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v172, 1))
            {
              goto LABEL_113;
            }

            if (*(v176 + 16))
            {

              v178 = sub_1DD3978DC();
              if (v179)
              {
                v180 = *(*(v176 + 56) + 8 * v178);

                MEMORY[0x1E12B23F0](v181);
                if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1DD640138();
                }

                sub_1DD640168();
                v173 = v218;
                ++v172;
                goto LABEL_89;
              }
            }

            ++v172;
            v177 += 16;
          }

          if (v175 == v188(v173))
          {
            return v197;
          }

          v35 = v197;
          if (qword_1EE166510 != -1)
          {
            goto LABEL_116;
          }

LABEL_103:
          v183 = sub_1DD63F9F8();
          __swift_project_value_buffer(v183, qword_1EE16F0C8);
          v52 = sub_1DD63F9D8();
          v184 = sub_1DD640378();
          if (!OUTLINED_FUNCTION_5_6(v184))
          {
            goto LABEL_106;
          }

          v185 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v185);
          v62 = "AppRankerSELFSerialization error creating ordered dependent signals";
LABEL_105:
          OUTLINED_FUNCTION_18(&dword_1DD38D000, v60, v61, v62);
          OUTLINED_FUNCTION_0_1();
          goto LABEL_106;
        }

        v69 = *v85;
        v87 = v85[1];
        v88 = *v212;
        v89 = v85 + *(v86 + 48);
        v90 = v214;
        v91 = v216;
        (*v212)(v214, v89, v216);
        v92 = *v213;
        v93 = v208;
        (*v213)(v208, v90, v91);
        v94 = (*v204)(v93, v91);
        if (v94 != v203)
        {
          break;
        }

        (*v199)(v93, v91);
        v95 = v195;
        if (!*(v195 + 16) || (v96 = *v93, OUTLINED_FUNCTION_4_5(), v97 = sub_1DD3978DC(), (v98 & 1) == 0))
        {
          v92(v191, v214, v216);
          v131 = v190;
          swift_isUniquelyReferenced_nonNull_native();
          v218 = v131;
          OUTLINED_FUNCTION_4_5();
          sub_1DD3978DC();
          OUTLINED_FUNCTION_7_5();
          if (__OFADD__(v134, v135))
          {
            __break(1u);
LABEL_116:
            OUTLINED_FUNCTION_0_3(&qword_1EE166510);
            goto LABEL_103;
          }

          v136 = v132;
          v137 = v133;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB00, &qword_1DD643E88);
          if (sub_1DD640A08())
          {
            OUTLINED_FUNCTION_4_5();
            v198 = sub_1DD3978DC();
            v64 = v202;
            if ((v137 & 1) != (v138 & 1))
            {
              goto LABEL_120;
            }

            if (v137)
            {
LABEL_70:

              OUTLINED_FUNCTION_17_4();
              v140 = v139 + *(v207 + 72) * v198;
              v141 = *(v207 + 40);
              v142 = &v220;
LABEL_83:
              v69 = v216;
              v141(v140, *(v142 - 32), v216);
              v167 = OUTLINED_FUNCTION_3_11();
              v168(v167);
              goto LABEL_63;
            }
          }

          else
          {
            v198 = v136;
            v64 = v202;
            if (v137)
            {
              goto LABEL_70;
            }
          }

          v152 = v218;
          OUTLINED_FUNCTION_14_5(v218 + 8 * (v198 >> 6));
          v162 = (v160 + 16 * v161);
          *v162 = v69;
          v162[1] = v87;
          OUTLINED_FUNCTION_12_5();
          v88();
          v163 = OUTLINED_FUNCTION_3_11();
          v164(v163);
          v165 = *(v152 + 16);
          v158 = __OFADD__(v165, 1);
          v159 = v165 + 1;
          if (v158)
          {
            goto LABEL_118;
          }

LABEL_80:
          v190 = v152;
          *(v152 + 16) = v159;
          goto LABEL_63;
        }

        v99 = v97;

        v100 = *(*(v95 + 56) + 16 * v99);
        v217 = v96;
        v218 = v197;

        v100(&v218, &v217);

        v101 = OUTLINED_FUNCTION_6_4();
        v102(v101);
LABEL_62:
        v64 = v202;
LABEL_63:
        v68 = v200;
        if (!v67)
        {
          goto LABEL_28;
        }
      }

      v103 = v196;
      if (v94 != v193)
      {

        if (qword_1EE166510 != -1)
        {
          swift_once();
        }

        v122 = sub_1DD63F9F8();
        __swift_project_value_buffer(v122, qword_1EE16F0C8);
        v123 = sub_1DD63F9D8();
        v69 = sub_1DD640378();
        v124 = os_log_type_enabled(v123, v69);
        v64 = v202;
        if (v124)
        {
          v125 = OUTLINED_FUNCTION_9();
          *v125 = 0;
          _os_log_impl(&dword_1DD38D000, v123, v69, "AppRankerSELFSerialization unsupported SignalValue type", v125, 2u);
          OUTLINED_FUNCTION_0_1();
        }

        v126 = *v201;
        v127 = OUTLINED_FUNCTION_6_4();
        v126(v127);
        (v126)(v93, v69);
        goto LABEL_63;
      }

      (*v199)(v93, v216);
      v104 = *v93;
      if (*(v103 + 16))
      {
        OUTLINED_FUNCTION_4_5();
        v105 = sub_1DD3978DC();
        if (v106)
        {
          v107 = v105;

          v108 = *(v103 + 56) + 16 * v107;
          v109 = *(v108 + 8);
          v194 = *v108;
          v110 = v211;
          v111 = 1 << *(v211 + 32);
          if (v111 < 64)
          {
            v112 = ~(-1 << v111);
          }

          else
          {
            v112 = -1;
          }

          v113 = v112 & *(v211 + 64);
          v69 = (v111 + 63) >> 6;
          v198 = v109;

          v114 = 0;
          while (v113)
          {
            v115 = v113;
LABEL_52:
            v113 = (v115 - 1) & v115;
            if (*(v104 + 16))
            {
              v117 = *(*(v110 + 56) + 8 * (__clz(__rbit64(v115)) | (v114 << 6)));

              v118 = v117;
              v119 = sub_1DD3978DC();
              v121 = v120;

              if (v121)
              {
                v217 = *(*(v104 + 56) + 8 * v119);
                v218 = v118;
                v194(&v218, &v217);
              }

              v110 = v211;
            }
          }

          while (1)
          {
            v116 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              break;
            }

            if (v116 >= v69)
            {
              v128 = OUTLINED_FUNCTION_6_4();
              v129(v128);

              goto LABEL_62;
            }

            v115 = *(v192 + 8 * v116);
            ++v114;
            if (v115)
            {
              v114 = v116;
              v110 = v211;
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_109;
        }
      }

      v92(v187, v214, v216);
      v143 = v190;
      LODWORD(v198) = swift_isUniquelyReferenced_nonNull_native();
      v218 = v143;
      OUTLINED_FUNCTION_4_5();
      sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v146, v147))
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        result = sub_1DD640D58();
        __break(1u);
        return result;
      }

      v148 = v144;
      v149 = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB00, &qword_1DD643E88);
      if (sub_1DD640A08())
      {
        OUTLINED_FUNCTION_4_5();
        v150 = sub_1DD3978DC();
        v64 = v202;
        if ((v149 & 1) != (v151 & 1))
        {
          goto LABEL_120;
        }

        v148 = v150;
        if (v149)
        {
LABEL_82:

          OUTLINED_FUNCTION_17_4();
          v140 = OUTLINED_FUNCTION_13_3(v166);
          v141 = *(v148 + 40);
          v142 = &v219;
          goto LABEL_83;
        }
      }

      else
      {
        v64 = v202;
        if (v149)
        {
          goto LABEL_82;
        }
      }

      v152 = v218;
      OUTLINED_FUNCTION_14_5(v218 + 8 * (v148 >> 6));
      v154 = (v153 + 16 * v148);
      *v154 = v69;
      v154[1] = v87;
      OUTLINED_FUNCTION_13_3(*(v152 + 56));
      OUTLINED_FUNCTION_12_5();
      v88();
      v155 = OUTLINED_FUNCTION_3_11();
      v156(v155);
      v157 = *(v152 + 16);
      v158 = __OFADD__(v157, 1);
      v159 = v157 + 1;
      if (v158)
      {
        goto LABEL_119;
      }

      goto LABEL_80;
    }

LABEL_28:
    while (1)
    {
      v70 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v70 >= v68)
      {
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
        v83 = v210;
        __swift_storeEnumTagSinglePayload(v210, 1, 1, v130);
        v67 = 0;
        goto LABEL_33;
      }

      v67 = *(v64 + 8 * v70);
      ++v35;
      if (v67)
      {
        v35 = v70;
        goto LABEL_32;
      }
    }

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
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
LABEL_16:
    v51 = sub_1DD63F9F8();
    __swift_project_value_buffer(v51, qword_1EE16F0C8);
    v52 = sub_1DD63F9D8();
    v53 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v53))
    {
      v54 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v54);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v55, v56, "AppRankerSELFSerialization create could not create independentSignals");
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_107;
  }

  v35 = v197;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v169 = sub_1DD63F9F8();
  __swift_project_value_buffer(v169, qword_1EE16F0C8);
  v52 = sub_1DD63F9D8();
  v170 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v170))
  {
    v171 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v171);
    v62 = "AppRankerSELFSerialization create could not create dependentSignals";
    goto LABEL_105;
  }

LABEL_106:

LABEL_107:
  return 0;
}

id sub_1DD3BA358@<X0>(Class *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(*a1) init];
  *a2 = result;
  return result;
}

uint64_t sub_1DD3BA390()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1_4();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-1] - v6;
  v8 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30[-1] - v17;
  if (((*(v0 + 96))(v16) & 1) == 0)
  {
    return 0;
  }

  v19 = (*(v0 + 32))(v30);
  (*(v0 + 80))(v19);
  sub_1DD3B7B40(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    v20 = sub_1DD3ADFD0(v7, &qword_1ECCDEBC0, &qword_1DD6445A0);
  }

  else
  {
    (*(v10 + 32))(v14, v7, v8);
    sub_1DD63CF88();
    v22 = v21;
    v23 = *(v10 + 8);
    v20 = v23(v14, v8);
    if (v22 < v30[1])
    {
      v23(v18, v8);
      sub_1DD3BA6F8(v30);
      return 0;
    }
  }

  v24 = (*(v0 + 64))(v20);
  sub_1DD3BA6F8(v30);
  if (v24 >= v30[0])
  {
    (*(v10 + 8))(v18, v8);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_4_5();
  v26(v25);
  v27 = 1;
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  sub_1DD3B7CF0(v4);
  (*(v10 + 8))(v18, v8);
  return v27;
}

void *sub_1DD3BA658()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1DD3BA6A0()
{
  sub_1DD3BA658();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD3BA74C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB40, &qword_1DD643EC0);
  result = sub_1DD63FC88();
  qword_1ECCDBAB8 = result;
  return result;
}

id sub_1DD3BA79C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setClientHourOfDay_];
  }

  return result;
}

id sub_1DD3BA7E8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setDeviceClass_];
  }

  return result;
}

id sub_1DD3BA804(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingState_];
  }

  return result;
}

uint64_t sub_1DD3BA820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB38, &qword_1DD643EB8);
  result = sub_1DD63FC88();
  qword_1ECCDBAC0 = result;
  return result;
}

id sub_1DD3BA870(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage1Day_];
  }

  return result;
}

id sub_1DD3BA88C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage7Day_];
  }

  return result;
}

id sub_1DD3BA8A8(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setRelativeAppUsage14Day_];
  }

  return result;
}

id sub_1DD3BA8C4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount2Min_];
  }

  return result;
}

id sub_1DD3BA8E0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount10Min_];
  }

  return result;
}

id sub_1DD3BA8FC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Hr_];
  }

  return result;
}

id sub_1DD3BA918(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount6Hr_];
  }

  return result;
}

id sub_1DD3BA934(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount1Day_];
  }

  return result;
}

id sub_1DD3BA950(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount7Day_];
  }

  return result;
}

id sub_1DD3BA96C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setNowPlayingAbsoluteCount28Day_];
  }

  return result;
}

id sub_1DD3BA988(id result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return [result setSupportedMediaCategories_];
  }

  return result;
}

id sub_1DD3BA9A0(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsForegroundApp_];
}

id sub_1DD3BA9C8(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastForegroundApp_];
}

id sub_1DD3BA9F0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppStartInSec_];
  }

  return result;
}

id sub_1DD3BAA0C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastForegroundAppEndInSec_];
  }

  return result;
}

id sub_1DD3BAA28(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount2Min_];
  }

  return result;
}

id sub_1DD3BAA44(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount10Min_];
  }

  return result;
}

id sub_1DD3BAA60(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Hr_];
  }

  return result;
}

id sub_1DD3BAA7C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount6Hr_];
  }

  return result;
}

id sub_1DD3BAA98(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount1Day_];
  }

  return result;
}

id sub_1DD3BAAB4(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount7Day_];
  }

  return result;
}

id sub_1DD3BAAD0(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityAbsoluteCount28Day_];
  }

  return result;
}

id sub_1DD3BAAEC(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount2Min_];
  }

  return result;
}

id sub_1DD3BAB08(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount10Min_];
  }

  return result;
}

id sub_1DD3BAB24(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Hr_];
  }

  return result;
}

id sub_1DD3BAB40(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount6Hr_];
  }

  return result;
}

id sub_1DD3BAB5C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount1Day_];
  }

  return result;
}

id sub_1DD3BAB78(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount7Day_];
  }

  return result;
}

id sub_1DD3BAB94(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setEntityPartialAppCount28Day_];
  }

  return result;
}

id sub_1DD3BABB0(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsNowPlayingApp_];
}

id sub_1DD3BABD8(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v2 = 0;
  }

  return [result setIsLastNowPlayingApp_];
}

id sub_1DD3BAC00(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppStartInSec_];
  }

  return result;
}

id sub_1DD3BAC1C(id result, uint64_t a2)
{
  if (a2 == a2)
  {
    return [result setTimeSinceLastNowPlayingAppEndInSec_];
  }

  return result;
}

void sub_1DD3BAC38(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v34 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v34 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v17 = sub_1DD3978DC();
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
      sub_1DD640A18();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v7;
    v25[1] = v6;
    *(v24[7] + 8 * v17) = v8;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v24[2] = v28;
    ++v4;
    a2 = 1;
  }

  sub_1DD4E62AC(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v31, v32, *v33, v33[4]);
  v22 = sub_1DD3978DC();
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void sub_1DD3BAF0C(uint64_t a1, char a2, void *a3, void (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v7 = 0;
  v31 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v31 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(i - 2);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *a3;

    v13 = v11;
    v14 = sub_1DD3978DC();
    OUTLINED_FUNCTION_7_5();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v15;
    if (v12[3] < v16 + v17)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      sub_1DD640A18();
      if (v18)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v21[6] + 16 * v14);
    *v22 = v9;
    v22[1] = v10;
    *(v21[7] + 8 * v14) = v13;
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v21[2] = v25;
    ++v7;
    a2 = 1;
  }

  a4();
  v19 = sub_1DD3978DC();
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void sub_1DD3BB1E8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1DD640D58();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_1DD3978DC();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB50, &unk_1DD643ED0);
      sub_1DD640A18();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v8;
    v19[1] = v7;
    *(v18[7] + 8 * v12) = v9;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v18[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1DD4E6438();
  v16 = sub_1DD3978DC();
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_20;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001BLL, 0x80000001DD66A130);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](39, 0xE100000000000000);
  sub_1DD640A38();
  __break(1u);
}

void *sub_1DD3BB4C0(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DD3BB50C(uint64_t a1, void *a2, unint64_t *a3, void *a4)
{
  sub_1DD39638C(0, a3, a4);
  v5 = sub_1DD6400F8();

  [a2 setDependentSignals_];
}

unint64_t sub_1DD3BB588()
{
  result = qword_1ECCDBAE0;
  if (!qword_1ECCDBAE0)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDBAE0);
  }

  return result;
}

uint64_t sub_1DD3BB5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF0, &qword_1DD643E78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3BB660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3BB774(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD3BB7AC(uint64_t a1)
{
  type metadata accessor for AppRankEvent(319);
  if (v1 <= 0x3F)
  {
    sub_1DD63D078();
    if (v2 <= 0x3F)
    {
      sub_1DD3BB974(319, &qword_1ECCDBB70, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD3BB89C(uint64_t a1)
{
  sub_1DD63D0F8();
  if (v1 <= 0x3F)
  {
    sub_1DD63D078();
    if (v2 <= 0x3F)
    {
      sub_1DD3BB974(319, &qword_1EE1638D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1DD3BB9C4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD3BB974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DD3BB9C4(uint64_t a1)
{
  if (!qword_1ECCDBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDBB90, qword_1DD643F18);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDBB88);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DD3BBA74()
{
  result = qword_1EE163810;
  if (!qword_1EE163810)
  {
    sub_1DD63D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163810);
  }

  return result;
}

uint64_t sub_1DD3BBACC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD63D0F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_3_12@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t dispatch thunk of AppResolutionRule.resolve(features:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD3B5438;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DD3BBC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_seasAppUsageEnabledLocales) = &unk_1F58AAE60;
  sub_1DD3BCBE4(a1, v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature);
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderPhone) = a2;
  *(v3 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_trialConfigProviderMessages) = a3;
  return v3;
}

__n128 *sub_1DD3BBCFC()
{
  CommsAppResolutionFeature.isPhone.getter();
  if (v0)
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v1 = sub_1DD63F9F8();
    v2 = OUTLINED_FUNCTION_11(v1, qword_1EE16EFB8);
    v3 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v3))
    {
      v4 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v4);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v5, v6, "#AppResolutionRulesProvider#getAppResolutionRules: Generating app resolution rules to use in phone request");
      OUTLINED_FUNCTION_8_2();
    }

    return sub_1DD3BC2DC();
  }

  else
  {
    CommsAppResolutionFeature.isMessage.getter();
    if (v8)
    {
      if (qword_1EE162D98 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
      }

      v9 = sub_1DD63F9F8();
      v10 = OUTLINED_FUNCTION_11(v9, qword_1EE16EFB8);
      v11 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v11))
      {
        v12 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_13_4(v12);
        OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v13, v14, "#AppResolutionRulesProvider#getAppResolutionRules: Generating app resolution rules to use in message request");
        OUTLINED_FUNCTION_8_2();
      }

      return sub_1DD3BBE5C();
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }
}

__n128 *sub_1DD3BBE5C()
{
  v2 = v0;
  if (sub_1DD3C5200())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v3 = sub_1DD63F9F8();
    v4 = OUTLINED_FUNCTION_11(v3, qword_1EE16EFB8);
    v5 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v5))
    {
      v6 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_5_7(v6);
      OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v7, v8, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: always1p rule is enabled");
      OUTLINED_FUNCTION_4_6();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
    v10 = OUTLINED_FUNCTION_12_6(v9);
    OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F90);
    v11 = type metadata accessor for Always1pRule();
    v12 = OUTLINED_FUNCTION_10_8(v11);
    v13 = &protocol witness table for Always1pRule;
    goto LABEL_7;
  }

  if (sub_1DD3C5278())
  {
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v14 = sub_1DD63F9F8();
    v15 = OUTLINED_FUNCTION_11(v14, qword_1EE16EFB8);
    v16 = sub_1DD640368();
    if (OUTLINED_FUNCTION_2_4(v16))
    {
      v17 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_5_7(v17);
      OUTLINED_FUNCTION_1_6(&dword_1DD38D000, v18, v19, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: app selection CoreML rule is enabled");
      OUTLINED_FUNCTION_4_6();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
    v10 = OUTLINED_FUNCTION_12_6(v20);
    v21 = OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F90);
    v4 = type metadata accessor for ModelBasedAppResolverRule(v21);
    v12 = sub_1DD527F68();
    if (!v1)
    {
      v13 = &off_1F58BB7F0;
LABEL_7:
      v10[3].n128_u64[1] = v4;
      v10[4].n128_u64[0] = v13;
      v10[2].n128_u64[0] = v12;
      return v10;
    }

LABEL_16:
    v10[1].n128_u64[0] = 0;

    return v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD90, &qword_1DD643FC8);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_6_5(v10, xmmword_1DD643F80);
  v22 = type metadata accessor for SeasAppMatcherRule();
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v23 = swift_allocObject();
  v24 = sub_1DD59C848(&v49);
  if (v1)
  {
    goto LABEL_16;
  }

  v10[3].n128_u64[1] = v22;
  v10[4].n128_u64[0] = &off_1F58BF7A0;
  v10[2].n128_u64[0] = v24;
  v26 = type metadata accessor for SeasContactInSingleAppRule();
  v27 = OUTLINED_FUNCTION_10_8(v26);
  v10[6].n128_u64[0] = v23;
  v10[6].n128_u64[1] = &protocol witness table for SeasContactInSingleAppRule;
  v10[4].n128_u64[1] = v27;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v28 = sub_1DD63F9F8();
  v29 = OUTLINED_FUNCTION_11(v28, qword_1EE16EFB8);
  v30 = sub_1DD640368();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_9();
    *v31 = 0;
    _os_log_impl(&dword_1DD38D000, v29, v30, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: SeAS is enabled by default", v31, 2u);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  v32 = v2 + OBJC_IVAR____TtC13SiriInference26AppResolutionRulesProvider_commsAppResolutionFeature;
  v33 = (v32 + *(type metadata accessor for CommsAppResolutionFeature(0) + 32));
  v34 = v33[1];
  if (v34)
  {
    v35 = *v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  *&v49 = v35;
  *(&v49 + 1) = v36;
  MEMORY[0x1EEE9AC00](v34);

  v37 = sub_1DD450388();

  if (v37)
  {
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v39))
    {
      v40 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_13_4(v40);
      OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v41, v42, "#AppResolutionRulesProvider#getMessagesAppResolutionRules: SeAS appUsageRule is enabled");
      OUTLINED_FUNCTION_8_2();
    }

    type metadata accessor for AppUsageProvider();
    v43 = swift_allocObject();
    v44 = type metadata accessor for SeasAppUsageRule();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    v47 = v10[1].n128_u64[0];
    v46 = v10[1].n128_u64[1];
    if (v47 >= v46 >> 1)
    {
      sub_1DD3BE71C(v46 > 1, v47 + 1, 1, v10);
      v10 = v48;
    }

    *(&v50 + 1) = v44;
    v51 = &protocol witness table for SeasAppUsageRule;
    *&v49 = v45;
    v10[1].n128_u64[0] = v47 + 1;
    sub_1DD3AA4A8(&v49, &v10[2] + 40 * v47);
  }

  return v10;
}