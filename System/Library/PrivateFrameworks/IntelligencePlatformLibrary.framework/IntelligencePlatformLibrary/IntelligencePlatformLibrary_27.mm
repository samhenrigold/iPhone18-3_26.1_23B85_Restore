void GeneratedImageUserInteraction.init()(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GeneratedImageUserInteraction(0);
  v3 = v2[5];
  sub_19343DAD8();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[7];
  sub_19344B814();
  v10 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[9];
  sub_1934E3F94();
  v7 = v2[10];
  sub_19344B7DC();
  v16 = (a1 + v2[11]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = a1 + v2[12];
  sub_193656664();
  v14 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[21]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[22]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193655284();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v8 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v8);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  sub_19344E6DC(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v8);

  *v10 = 0;
  v10[1] = 0;
  *v6 = 0;
  v6[4] = 1;
  sub_19344E6DC(a1 + v7, &qword_1EAE3AA88, &qword_19394F9C0);
  v9 = sub_19393BE60();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v9);

  *v16 = 0;
  v16[1] = 0;

  *v15 = 0;
  v15[4] = 1;
  *v14 = 0;
  v14[1] = 0;

  *v13 = 0;
  v13[1] = 0;

  OUTLINED_FUNCTION_32_24(v2[15]);
  OUTLINED_FUNCTION_32_24(v2[16]);
  OUTLINED_FUNCTION_32_24(v2[17]);
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v17 = 0;
  v17[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
}

uint64_t static GeneratedImageUserInteraction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v125 = sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v122 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v120 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v119 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B4E8, &unk_193952CF0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  v124 = &v119 - v12;
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v128 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v119 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430) - 8;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v119 - v25;
  v126 = type metadata accessor for GeneratedImageUserInteraction(0);
  v127 = a1;
  v27 = *(v126 + 28);
  v28 = *(v23 + 56);
  sub_1934486F8(a1 + v27, v26, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(a2 + v27, &v26[v28], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v26, 1, v13);
  if (v29)
  {
    OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
    if (v29)
    {
      sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_14;
    }

LABEL_9:
    v30 = &qword_1EAE3B968;
    v31 = &qword_193972430;
    v32 = v26;
LABEL_10:
    sub_19344E6DC(v32, v30, v31);
    return 0;
  }

  sub_1934486F8(v26, v22, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(&v26[v28], 1, v13);
  if (v29)
  {
    (*(v128 + 8))(v22, v13);
    goto LABEL_9;
  }

  v34 = v128;
  (*(v128 + 32))(v18, &v26[v28], v13);
  OUTLINED_FUNCTION_19_9();
  sub_193652BF4(v35, v36, MEMORY[0x1E6969550]);
  v37 = sub_19393C550();
  v38 = *(v34 + 8);
  v38(v18, v13);
  v38(v22, v13);
  sub_19344E6DC(v26, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v40 = v126;
  v39 = v127;
  OUTLINED_FUNCTION_3_49();
  if (v43)
  {
    if (!v41)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v42);
    v46 = v29 && v44 == v45;
    if (!v46 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_22();
  if (v48)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v49)
    {
      return 0;
    }
  }

  v50 = v40[10];
  v51 = v124;
  v52 = *(v123 + 48);
  sub_1934486F8(v39 + v50, v124, &qword_1EAE3AA88, &qword_19394F9C0);
  sub_1934486F8(a2 + v50, v51 + v52, &qword_1EAE3AA88, &qword_19394F9C0);
  v53 = v125;
  OUTLINED_FUNCTION_6_3(v51, 1, v125);
  if (!v29)
  {
    v54 = v121;
    sub_1934486F8(v51, v121, &qword_1EAE3AA88, &qword_19394F9C0);
    OUTLINED_FUNCTION_6_3(v51 + v52, 1, v53);
    if (!v55)
    {
      v56 = v122;
      v57 = v51 + v52;
      v58 = v120;
      (*(v122 + 32))(v120, v57, v53);
      OUTLINED_FUNCTION_20_34();
      sub_193652BF4(v59, v60, MEMORY[0x1E69695C8]);
      v61 = sub_19393C550();
      v62 = *(v56 + 8);
      v62(v58, v53);
      v62(v54, v53);
      sub_19344E6DC(v51, &qword_1EAE3AA88, &qword_19394F9C0);
      if ((v61 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    (*(v122 + 8))(v54, v53);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_6_3(v51 + v52, 1, v53);
  if (!v29)
  {
LABEL_35:
    v30 = &qword_1EAE3B4E8;
    v31 = &unk_193952CF0;
    v32 = v51;
    goto LABEL_10;
  }

  sub_19344E6DC(v51, &qword_1EAE3AA88, &qword_19394F9C0);
LABEL_37:
  OUTLINED_FUNCTION_3_49();
  if (v65)
  {
    if (!v63)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v64);
    v68 = v29 && v66 == v67;
    if (!v68 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v63)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_22();
  if (v70)
  {
    if (!v69)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_258();
    if (v71)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3_49();
  if (v74)
  {
    if (!v72)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v73);
    v77 = v29 && v75 == v76;
    if (!v77 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v72)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_49();
  if (v80)
  {
    if (!v78)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v79);
    v83 = v29 && v81 == v82;
    if (!v83 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v78)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v40[15]);
  v84 = sub_19365260C();
  if ((OUTLINED_FUNCTION_39_22(v84, v85, &type metadata for GeneratedImageUserInteraction.Personalization, v84) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v40[16]);
  v86 = sub_193652660();
  if ((OUTLINED_FUNCTION_39_22(v86, v87, &type metadata for GeneratedImageUserInteraction.Result, v86) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_61(v40[17]);
  v88 = sub_1936526B4();
  if ((OUTLINED_FUNCTION_39_22(v88, v89, &type metadata for GeneratedImageUserInteraction.Feature, v88) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_49();
  if (v92)
  {
    if (!v90)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v91);
    v95 = v29 && v93 == v94;
    if (!v95 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  v96 = v40[19];
  v97 = *(a2 + v96 + 8);
  if (*(v39 + v96 + 8))
  {
    if (!v97)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v39 + v96);
    v100 = v29 && v98 == v99;
    if (!v100 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v97)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_28();
  if (v103)
  {
    if (!v101)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v102);
    v106 = v29 && v104 == v105;
    if (!v106 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_28();
  if (v109)
  {
    if (!v107)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v108);
    v112 = v29 && v110 == v111;
    if (!v112 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_28();
  if (v115)
  {
    if (v113)
    {
      OUTLINED_FUNCTION_5(v114);
      v118 = v29 && v116 == v117;
      if (v118 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v113)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_19365260C()
{
  result = qword_1EAE3A748;
  if (!qword_1EAE3A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A748);
  }

  return result;
}

unint64_t sub_193652660()
{
  result = qword_1EAE3A740;
  if (!qword_1EAE3A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A740);
  }

  return result;
}

unint64_t sub_1936526B4()
{
  result = qword_1EAE3A738;
  if (!qword_1EAE3A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A738);
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_19393BE60();
  OUTLINED_FUNCTION_0();
  v35 = v4;
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  v34 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_47(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = type metadata accessor for GeneratedImageUserInteraction(0);
  sub_1934486F8(v2 + v22[7], v21, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_6_3(v21, 1, v11);
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v13 + 32))(v17, v21, v11);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_19_9();
    sub_193652BF4(v24, v25, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v13 + 8))(v17, v11);
  }

  v26 = v36;
  if (*(v2 + v22[8] + 8))
  {
    OUTLINED_FUNCTION_7_1();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v2 + v22[9] + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  sub_1934486F8(v2 + v22[10], v10, &qword_1EAE3AA88, &qword_19394F9C0);
  OUTLINED_FUNCTION_6_3(v10, 1, v26);
  if (v23)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v28 = v34;
    v27 = v35;
    (*(v35 + 32))(v34, v10, v26);
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_20_34();
    sub_193652BF4(v29, v30, MEMORY[0x1E69695B8]);
    sub_19393C540();
    (*(v27 + 8))(v28, v26);
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v31 = (v2 + v22[12]);
  if (*(v31 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v26 = *v31;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_17_29(v22[15]);
  sub_193652C3C();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v22[16]);
  sub_193652C90();
  sub_19393C540();
  OUTLINED_FUNCTION_17_29(v22[17]);
  sub_193652CE4();
  sub_19393C540();
  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (!*(v2 + v22[22] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

uint64_t sub_193652BF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_193652C3C()
{
  result = qword_1EAE3F990;
  if (!qword_1EAE3F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F990);
  }

  return result;
}

unint64_t sub_193652C90()
{
  result = qword_1EAE3F998;
  if (!qword_1EAE3F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F998);
  }

  return result;
}

unint64_t sub_193652CE4()
{
  result = qword_1EAE3F9A0;
  if (!qword_1EAE3F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9A0);
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.Personalization.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GeneratedImageUserInteraction.Personalization.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9D0, &qword_193976E40);
  OUTLINED_FUNCTION_16_0();
  if (!(!v10 & v9))
  {
    v36 = OUTLINED_FUNCTION_39(v8);
    OUTLINED_FUNCTION_84_2(v36, v37, v38, v39, &qword_1EAE3F9D0, &qword_193976E40);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v4, v5, v6, v7);
  if (v16 != v17)
  {
    v40 = OUTLINED_FUNCTION_39(v15);
    OUTLINED_FUNCTION_85(v40, v41, v42, v43, &qword_1EAE3F9D0, &qword_193976E40);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v11, v12, v13, v14);
  if (v16 != v17)
  {
    v44 = OUTLINED_FUNCTION_39(v22);
    v18 = sub_1934B0FCC(v44, v3, 1, v45, &qword_1EAE3F9D0, &qword_193976E40);
    v21 = v18;
  }

  OUTLINED_FUNCTION_9_7(v18, v19, v20, v21);
  if (!(v16 ^ v17 | v10))
  {
    v46 = OUTLINED_FUNCTION_39(v27);
    v23 = OUTLINED_FUNCTION_84_2(v46, v47, v48, v49, &qword_1EAE3F9D0, &qword_193976E40);
    v26 = v23;
  }

  OUTLINED_FUNCTION_3_7(v23, v24, v25, v26);
  if (!(v16 ^ v17 | v10))
  {
    v50 = OUTLINED_FUNCTION_39(v32);
    v28 = OUTLINED_FUNCTION_85(v50, v51, v52, v53, &qword_1EAE3F9D0, &qword_193976E40);
    v31 = v28;
  }

  OUTLINED_FUNCTION_47_5(v28, v29, v30, v31);
  *(v33 + 32) = 3;
  *(v33 + 40) = v3;
  return v34;
}

uint64_t GeneratedImageUserInteraction.Personalization.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = 0x636972656E6547;
      break;
    case 2:
      result = 0x6F746F6850;
      break;
    case 3:
      result = 0x55556E6F73726550;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Personalization.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 1701736270 ? (v5 = v0 == 0xE400000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(1701736270, 0xE400000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x636972656E6547 && v0 == 0xE700000000000000;
    if (v7 || (OUTLINED_FUNCTION_22_7(0x636972656E6547) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0x6F746F6850 && v0 == 0xE500000000000000;
      if (v8 || (OUTLINED_FUNCTION_0_9(0x6F746F6850, 0xE500000000000000) & 1) != 0)
      {

        v6 = 2;
      }

      else if (v1 == 0x55556E6F73726550 && v0 == 0xEA00000000004449)
      {

        v6 = 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_0_9(0x55556E6F73726550, 0xEA00000000004449);

        v6 = 3;
        if ((v10 & 1) == 0)
        {
          v6 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t GeneratedImageUserInteraction.Result.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GeneratedImageUserInteraction.Result.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9C8, &qword_193976E38);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v73 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE3F9C8, &qword_193976E38);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v77 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v77, v78, v79, v80, &qword_1EAE3F9C8, &qword_193976E38);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v81 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v81, v3, 1, v82, &qword_1EAE3F9C8, &qword_193976E38);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v83 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE3F9C8, &qword_193976E38);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v87 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v87, v88, v89, v90, &qword_1EAE3F9C8, &qword_193976E38);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v91 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v91, v92, v93, v94, &qword_1EAE3F9C8, &qword_193976E38);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  OUTLINED_FUNCTION_4(v40);
  if (v4 + 7 > (v45 >> 1))
  {
    v95 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE3F9C8, &qword_193976E38);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  OUTLINED_FUNCTION_4(v46);
  if (v4 + 8 > (v51 >> 1))
  {
    v99 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v99, v100, v101, v102, &qword_1EAE3F9C8, &qword_193976E38);
    v50 = v47;
  }

  OUTLINED_FUNCTION_50(v47, v48, v49, v50);
  OUTLINED_FUNCTION_4(v52);
  if (v4 + 9 > (v57 >> 1))
  {
    v103 = OUTLINED_FUNCTION_39(v57);
    v53 = OUTLINED_FUNCTION_85(v103, v104, v105, v106, &qword_1EAE3F9C8, &qword_193976E38);
    v56 = v53;
  }

  OUTLINED_FUNCTION_47_5(v53, v54, v55, v56);
  OUTLINED_FUNCTION_4(v58);
  if (v4 + 10 > (v63 >> 1))
  {
    v107 = OUTLINED_FUNCTION_39(v63);
    v59 = OUTLINED_FUNCTION_84_2(v107, v108, v109, v110, &qword_1EAE3F9C8, &qword_193976E38);
    v62 = v59;
  }

  OUTLINED_FUNCTION_50(v59, v60, v61, v62);
  OUTLINED_FUNCTION_4(v64);
  if (v4 + 11 > (v69 >> 1))
  {
    v111 = OUTLINED_FUNCTION_39(v69);
    v65 = OUTLINED_FUNCTION_85(v111, v112, v113, v114, &qword_1EAE3F9C8, &qword_193976E38);
    v68 = v65;
  }

  OUTLINED_FUNCTION_47_5(v65, v66, v67, v68);
  *(v70 + 32) = 9;
  *(v70 + 40) = v3;
  return v71;
}

uint64_t GeneratedImageUserInteraction.Result.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x72656E6547746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x65746172656E6547;
      break;
    case 2:
      result = 0x64656761676E45;
      break;
    case 3:
      result = OUTLINED_FUNCTION_37_21();
      break;
    case 4:
      result = OUTLINED_FUNCTION_34_26();
      break;
    case 5:
      result = OUTLINED_FUNCTION_35_24();
      break;
    case 6:
      result = OUTLINED_FUNCTION_41_20();
      break;
    case 7:
      result = OUTLINED_FUNCTION_36_22();
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Result.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x72656E6547746F4ELL ? (v5 = v0 == 0xEC00000064657461) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x72656E6547746F4ELL, 0xEC00000064657461) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x65746172656E6547 && v0 == 0xE900000000000064;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x65746172656E6547, 0xE900000000000064) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = v1 == 0x64656761676E45 && v0 == 0xE700000000000000;
      if (v8 || (OUTLINED_FUNCTION_22_7(0x64656761676E45) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_37_21();
        v11 = v1 == v9 && v0 == v10;
        if (v11 || (OUTLINED_FUNCTION_0_9(v9, v10) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_34_26();
          v14 = v1 == v12 && v0 == v13;
          if (v14 || (OUTLINED_FUNCTION_0_9(v12, v13) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_35_24();
            v17 = v1 == v15 && v0 == v16;
            if (v17 || (OUTLINED_FUNCTION_0_9(v15, v16) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v18 = OUTLINED_FUNCTION_41_20();
              v20 = v1 == v18 && v0 == v19;
              if (v20 || (OUTLINED_FUNCTION_0_9(v18, v19) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v21 = OUTLINED_FUNCTION_36_22();
                v23 = v1 == v21 && v0 == v22;
                if (v23 || (OUTLINED_FUNCTION_0_9(v21, v22) & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  v24 = v1 == 0xD000000000000014 && 0x8000000193A2B2B0 == v0;
                  if (v24 || (OUTLINED_FUNCTION_0_9(0xD000000000000014, 0x8000000193A2B2B0) & 1) != 0)
                  {

                    v6 = 8;
                  }

                  else if (v1 == 0xD000000000000015 && 0x8000000193A2B290 == v0)
                  {

                    v6 = 9;
                  }

                  else
                  {
                    v26 = OUTLINED_FUNCTION_0_9(0xD000000000000015, 0x8000000193A2B290);

                    v6 = 9;
                    if ((v26 & 1) == 0)
                    {
                      v6 = 0;
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

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t GeneratedImageUserInteraction.Feature.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static GeneratedImageUserInteraction.Feature.allCases.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2(a1, a2, a3, MEMORY[0x1E69E7CC0], &qword_1EAE3F9C0, &qword_193976E30);
  OUTLINED_FUNCTION_16_0();
  if (!(!v11 & v10))
  {
    v43 = OUTLINED_FUNCTION_39(v9);
    OUTLINED_FUNCTION_84_2(v43, v44, v45, v46, &qword_1EAE3F9C0, &qword_193976E30);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v5, v6, v7, v8);
  if (v17 != v18)
  {
    v47 = OUTLINED_FUNCTION_39(v16);
    OUTLINED_FUNCTION_85(v47, v48, v49, v50, &qword_1EAE3F9C0, &qword_193976E30);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v12, v13, v14, v15);
  if (v17 != v18)
  {
    v51 = OUTLINED_FUNCTION_39(v23);
    v19 = sub_1934B0FCC(v51, v3, 1, v52, &qword_1EAE3F9C0, &qword_193976E30);
    v22 = v19;
  }

  OUTLINED_FUNCTION_9_7(v19, v20, v21, v22);
  if (!(v17 ^ v18 | v11))
  {
    v53 = OUTLINED_FUNCTION_39(v28);
    v24 = OUTLINED_FUNCTION_84_2(v53, v54, v55, v56, &qword_1EAE3F9C0, &qword_193976E30);
    v27 = v24;
  }

  OUTLINED_FUNCTION_3_7(v24, v25, v26, v27);
  if (!(v17 ^ v18 | v11))
  {
    v57 = OUTLINED_FUNCTION_39(v33);
    v29 = OUTLINED_FUNCTION_85(v57, v58, v59, v60, &qword_1EAE3F9C0, &qword_193976E30);
    v32 = v29;
  }

  OUTLINED_FUNCTION_47_5(v29, v30, v31, v32);
  OUTLINED_FUNCTION_4(v34);
  if (v4 + 6 > (v39 >> 1))
  {
    v61 = OUTLINED_FUNCTION_39(v39);
    v35 = OUTLINED_FUNCTION_84_2(v61, v62, v63, v64, &qword_1EAE3F9C0, &qword_193976E30);
    v38 = v35;
  }

  OUTLINED_FUNCTION_50(v35, v36, v37, v38);
  *(v40 + 32) = 4;
  *(v40 + 40) = 1;
  return v41;
}

unint64_t GeneratedImageUserInteraction.Feature.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x696A6F6D6E6547;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_38_23();
      break;
    case 2:
      result = 0x706150636967614DLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x617261746E6F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

void GeneratedImageUserInteraction.Feature.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7(v2) & 1) != 0 || (v1 == 0x696A6F6D6E6547 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_22_7(0x696A6F6D6E6547) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_38_23();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = v1 == 0x706150636967614DLL && v0 == 0xEA00000000007265;
      if (v10 || (OUTLINED_FUNCTION_0_9(0x706150636967614DLL, 0xEA00000000007265) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v11 = v1 == 0xD000000000000012 && 0x8000000193A2B2D0 == v0;
        if (v11 || (OUTLINED_FUNCTION_0_9(0xD000000000000012, 0x8000000193A2B2D0) & 1) != 0)
        {

          v6 = 3;
        }

        else if (v1 == 0x617261746E6F4DLL && v0 == 0xE700000000000000)
        {

          v6 = 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_22_7(0x617261746E6F4DLL);

          v6 = 4;
          if ((v13 & 1) == 0)
          {
            v6 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_193653B84()
{
  result = qword_1EAE3F9A8;
  if (!qword_1EAE3F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9A8);
  }

  return result;
}

unint64_t sub_193653BDC()
{
  result = qword_1EAE3F9B0;
  if (!qword_1EAE3F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9B0);
  }

  return result;
}

unint64_t sub_193653C34()
{
  result = qword_1EAE3F9B8;
  if (!qword_1EAE3F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F9B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_19393C550();
}

uint64_t sub_193653CF0()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB948);
  v1 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v54 = OUTLINED_FUNCTION_156();
  *(v54 + 16) = xmmword_193952750;
  v5 = v54 + v0;
  v6 = v54 + v0 + dword_1EAEAB980;
  *(v54 + v0) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v8 = *(v7 + 104);
  OUTLINED_FUNCTION_2_0();
  v8();
  v9 = OUTLINED_FUNCTION_3_1(v5 + v4);
  *v10 = 2;
  *v9 = "prompt";
  v9[1] = 6;
  v11 = OUTLINED_FUNCTION_41(v9);
  (v8)(v11);
  OUTLINED_FUNCTION_3_1(v5 + 2 * v4);
  OUTLINED_FUNCTION_39_7(v12);
  *v13 = "tokenLength";
  v13[1] = 11;
  v14 = OUTLINED_FUNCTION_41(v13);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_3_1(v5 + 3 * v4);
  *v16 = 4;
  *v15 = "identifier";
  v15[1] = 10;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v5 + 4 * v4);
  *v19 = 5;
  *v18 = "topic";
  v18[1] = 5;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_3_1(v5 + 5 * v4);
  *v22 = 6;
  *v21 = "usage";
  v21[1] = 5;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v5 + 6 * v4);
  *v25 = 7;
  *v24 = "userInterfaceLanguage";
  v24[1] = 21;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_3_1(v5 + 7 * v4);
  *v28 = 8;
  *v27 = "userSetRegionFormat";
  v27[1] = 19;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v5 + 8 * v4);
  *v31 = 9;
  *v30 = "personalization";
  v30[1] = 15;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_3_1(v5 + 9 * v4);
  *v34 = 10;
  *v33 = "result";
  v33[1] = 6;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_3_1(v5 + 10 * v4);
  *v37 = 11;
  *v36 = "feature";
  v36[1] = 7;
  v38 = OUTLINED_FUNCTION_41(v36);
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v5 + 11 * v4);
  *v40 = 12;
  *v39 = "style";
  v39[1] = 5;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_3_1(v5 + 12 * v4);
  *v43 = 13;
  *v42 = "hair";
  v42[1] = 4;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v8)(v44);
  v45 = OUTLINED_FUNCTION_3_1(v5 + 13 * v4);
  *v46 = 14;
  *v45 = "facialHair";
  v45[1] = 10;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v8)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v5 + 14 * v4);
  *v49 = 15;
  *v48 = "accessories";
  v48[1] = 11;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v8)(v50);
  v51 = OUTLINED_FUNCTION_3_1(v5 + 15 * v4);
  *v52 = 16;
  *v51 = "additionalDescription";
  *(v51 + 8) = 21;
  *(v51 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v8();
  return sub_19393C410();
}

void sub_193654134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = type metadata accessor for GeneratedImageUserInteraction(0);
        sub_1934976E4(v3 + *(v10 + 28), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_13;
      case 2:
      case 5:
      case 7:
      case 8:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
        type metadata accessor for GeneratedImageUserInteraction(0);
        OUTLINED_FUNCTION_9_30();
        sub_19393C200();
        goto LABEL_13;
      case 3:
      case 6:
        type metadata accessor for GeneratedImageUserInteraction(0);
        OUTLINED_FUNCTION_9_30();
        sub_19393C170();
        goto LABEL_13;
      case 4:
        type metadata accessor for GeneratedImageUserInteraction(0);
        OUTLINED_FUNCTION_9_30();
        sub_193497890(v18);
LABEL_13:
        v5 = 0;
        continue;
      case 9:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v14)
        {
          v26 = v23;
        }

        else
        {
          v26 = 0;
        }

        v27 = v24 & ~v25;
        v28 = v3 + *(type metadata accessor for GeneratedImageUserInteraction(0) + 60);
        *v28 = v26;
        *(v28 + 8) = v27 & 1;
        continue;
      case 10:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v14)
        {
          v15 = v11;
        }

        else
        {
          v15 = 0;
        }

        v16 = v12 & ~v13;
        v17 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 64);
        goto LABEL_18;
      case 11:
        OUTLINED_FUNCTION_13_33();
        sub_1934982A8();
        OUTLINED_FUNCTION_12_30();
        if (v14)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }

        v16 = v20 & ~v21;
        v17 = *(type metadata accessor for GeneratedImageUserInteraction(0) + 68);
LABEL_18:
        v22 = v3 + v17;
        *v22 = v15;
        *(v22 + 8) = v16 & 1;
        break;
      default:
        continue;
    }
  }
}

void sub_1936543F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_30();
  sub_193654714(v7, v8, v9, a3);
  if (!v4)
  {
    v10 = type metadata accessor for GeneratedImageUserInteraction(0);
    OUTLINED_FUNCTION_5_20();
    if (v11)
    {
      OUTLINED_FUNCTION_4_7(*v12, v11, 2);
    }

    if ((*(v3 + *(v10 + 36) + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_9_30();
    sub_1936548D4(v13, v14, v15, a3);
    OUTLINED_FUNCTION_5_20();
    if (v16)
    {
      OUTLINED_FUNCTION_4_7(*v17, v16, 5);
    }

    if ((*(v3 + *(v10 + 48) + 4) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_19393C350();
    }

    OUTLINED_FUNCTION_5_20();
    if (v18)
    {
      OUTLINED_FUNCTION_4_7(*v19, v18, 7);
    }

    OUTLINED_FUNCTION_5_20();
    if (v20)
    {
      OUTLINED_FUNCTION_4_7(*v21, v20, 8);
    }

    OUTLINED_FUNCTION_5_49();
    v22 = sub_19365260C();
    if ((OUTLINED_FUNCTION_25_4(v22, v23, &type metadata for GeneratedImageUserInteraction.Personalization, v22, v24, v25, v26, v27, v68, v71, v74) & 1) == 0)
    {
      v75 = v5;
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v28, v29, v30, v31, v32, v33);
    }

    OUTLINED_FUNCTION_5_49();
    v34 = sub_193652660();
    if ((OUTLINED_FUNCTION_25_4(v34, v35, &type metadata for GeneratedImageUserInteraction.Result, v34, v36, v37, v38, v39, v69, v72, v75) & 1) == 0)
    {
      v76 = v5;
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v40, v41, v42, v43, v44, v45);
    }

    OUTLINED_FUNCTION_5_49();
    v46 = sub_1936526B4();
    if ((OUTLINED_FUNCTION_25_4(v46, v47, &type metadata for GeneratedImageUserInteraction.Feature, v46, v48, v49, v50, v51, v70, v73, v76) & 1) == 0)
    {
      OUTLINED_FUNCTION_11_2();
      sub_193447324(v52, v53, v54, v55, v56, v57);
    }

    OUTLINED_FUNCTION_5_20();
    if (v58)
    {
      OUTLINED_FUNCTION_4_7(*v59, v58, 12);
    }

    OUTLINED_FUNCTION_5_20();
    if (v60)
    {
      OUTLINED_FUNCTION_4_7(*v61, v60, 13);
    }

    OUTLINED_FUNCTION_5_20();
    if (v62)
    {
      OUTLINED_FUNCTION_4_7(*v63, v62, 14);
    }

    OUTLINED_FUNCTION_5_20();
    if (v64)
    {
      OUTLINED_FUNCTION_4_7(*v65, v64, 15);
    }

    OUTLINED_FUNCTION_5_20();
    if (v66)
    {
      OUTLINED_FUNCTION_4_7(*v67, v66, 16);
    }
  }
}

uint64_t sub_193654714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  sub_19393BE00();
  OUTLINED_FUNCTION_76();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GeneratedImageUserInteraction(0);
  sub_193448758(v6 + *(v15 + 28), v9, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    return sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
  }

  (*(v11 + 32))(v14, v9, v5);
  sub_193451F04(v14, 1, 2020175477, 0xE400000000000000, v4, v17[3]);
  return (*(v11 + 8))(v14, v5);
}

uint64_t sub_1936548D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_77(a1, a2, a3, a4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  sub_19393BE60();
  OUTLINED_FUNCTION_76();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GeneratedImageUserInteraction(0);
  sub_193448758(v5 + *(v14 + 40), v8, &qword_1EAE3AA88, &qword_19394F9C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v4) == 1)
  {
    return sub_19344E6DC(v8, &qword_1EAE3AA88, &qword_19394F9C0);
  }

  (*(v10 + 32))(v13, v8, v4);
  sub_19344652C();
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_193654A88(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3F9D8;

  return v1;
}

void sub_193654B24()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB960);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v7, xmmword_19394FBD0);
  OUTLINED_FUNCTION_63("PersonalizationUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v6);
  *v11 = 1;
  *v10 = "None";
  v10[1] = 4;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v6);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "Generic");
  (v9)(v15);
  OUTLINED_FUNCTION_45_2(3 * v6);
  OUTLINED_FUNCTION_39_7(v16);
  v18 = OUTLINED_FUNCTION_0_0(v17, "Photo");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v0 + 4 * v6);
  *v20 = 4;
  *v19 = "PersonUUID";
  *(v19 + 8) = 10;
  *(v19 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193654D34()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB978);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v7, xmmword_1939526F0);
  OUTLINED_FUNCTION_63("ResultUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v6);
  *v11 = 1;
  v12 = OUTLINED_FUNCTION_0_0(v10, "NotGenerated");
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v6);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "Generated");
  (v9)(v15);
  OUTLINED_FUNCTION_45_2(3 * v6);
  OUTLINED_FUNCTION_39_7(v16);
  v18 = OUTLINED_FUNCTION_0_0(v17, "Engaged");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v0 + 4 * v6);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_0_0(v19, "UILayerBlocking");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_45_2(5 * v6);
  *v23 = 5;
  *v22 = "InputBlocking";
  v22[1] = 13;
  v24 = OUTLINED_FUNCTION_1_3(v22);
  (v9)(v24);
  v25 = OUTLINED_FUNCTION_14_4(6);
  v26 = OUTLINED_FUNCTION_0_0(v25, "OutputBlocking");
  (v9)(v26);
  v27 = OUTLINED_FUNCTION_45_2(7 * v6);
  *v28 = 7;
  *v27 = "OtherIssues";
  v27[1] = 11;
  v29 = OUTLINED_FUNCTION_1_3(v27);
  (v9)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v0 + 8 * v6);
  *v31 = 8;
  *v30 = "UserCancelled";
  v30[1] = 13;
  v32 = OUTLINED_FUNCTION_1_3(v30);
  (v9)(v32);
  v33 = OUTLINED_FUNCTION_45_2(9 * v6);
  *v34 = 9;
  v35 = OUTLINED_FUNCTION_0_0(v33, "InputPersonalization");
  (v9)(v35);
  v36 = OUTLINED_FUNCTION_14_4(10);
  *v36 = "OutputPersonalization";
  *(v36 + 1) = 21;
  v36[16] = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193655048()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB990);
  v3 = OUTLINED_FUNCTION_13_0();
  __swift_project_value_buffer(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 72);
  OUTLINED_FUNCTION_49_0();
  v7 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_20(v7, xmmword_1939526E0);
  OUTLINED_FUNCTION_63("FeatureUnknown");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v9 = *(v8 + 104);
  OUTLINED_FUNCTION_2_0();
  v9();
  v10 = OUTLINED_FUNCTION_3_1(v0 + v6);
  *v11 = 1;
  *v10 = "Genmoji";
  v10[1] = 7;
  v12 = OUTLINED_FUNCTION_1_3(v10);
  (v9)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v0 + 2 * v6);
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_0_0(v13, "ImagePlayground");
  (v9)(v15);
  OUTLINED_FUNCTION_45_2(3 * v6);
  OUTLINED_FUNCTION_39_7(v16);
  v18 = OUTLINED_FUNCTION_0_0(v17, "MagicPaper");
  (v9)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v0 + 4 * v6);
  *v20 = 4;
  v21 = OUTLINED_FUNCTION_0_0(v19, "MessagesBackground");
  (v9)(v21);
  v22 = OUTLINED_FUNCTION_45_2(5 * v6);
  *v23 = 5;
  *v22 = "Montara";
  *(v22 + 8) = 7;
  *(v22 + 16) = v1;
  OUTLINED_FUNCTION_2_0();
  v9();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t GeneratedImageUserInteraction.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t type metadata accessor for GeneratedImageUserInteraction(uint64_t a1)
{
  result = qword_1ED50DA20;
  if (!qword_1ED50DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeneratedImageUserInteraction.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t GeneratedImageUserInteraction.timestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 28));
}

uint64_t GeneratedImageUserInteraction.prompt.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.prompt.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.identifier.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA88, &qword_19394F9C0, *(v1 + 40));
}

uint64_t GeneratedImageUserInteraction.topic.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.topic.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.userInterfaceLanguage.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.userInterfaceLanguage.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.userSetRegionFormat.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.userSetRegionFormat.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void GeneratedImageUserInteraction.personalization.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  OUTLINED_FUNCTION_2_52(*(v1 + 60));
}

void GeneratedImageUserInteraction.result.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  OUTLINED_FUNCTION_2_52(*(v1 + 64));
}

void GeneratedImageUserInteraction.feature.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for GeneratedImageUserInteraction(v0);
  OUTLINED_FUNCTION_2_52(*(v1 + 68));
}

uint64_t GeneratedImageUserInteraction.style.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.style.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.hair.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.hair.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.facialHair.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.facialHair.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.accessories.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.accessories.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GeneratedImageUserInteraction.additionalDescription.getter()
{
  type metadata accessor for GeneratedImageUserInteraction(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t GeneratedImageUserInteraction.additionalDescription.setter()
{
  OUTLINED_FUNCTION_4_47();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_193655E2C@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Personalization.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193655E54@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static GeneratedImageUserInteraction.Personalization.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_193655EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193655FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_1936560B8@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Result.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936560E0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static GeneratedImageUserInteraction.Result.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t sub_1936561D4@<X0>(uint64_t *a1@<X8>)
{
  result = GeneratedImageUserInteraction.Feature.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1936561FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = static GeneratedImageUserInteraction.Feature.allCases.getter(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t GeneratedImageUserInteraction.hashValue.getter()
{
  sub_19393CAB0();
  GeneratedImageUserInteraction.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193656330(uint64_t a1)
{
  sub_19393CAB0();
  GeneratedImageUserInteraction.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19365640C()
{
  result = qword_1EAE3FA18;
  if (!qword_1EAE3FA18)
  {
    type metadata accessor for GeneratedImageUserInteraction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA18);
  }

  return result;
}

uint64_t sub_193656490(uint64_t a1)
{
  sub_1934D3A60(319, &qword_1ED5082C0, MEMORY[0x1E6969530]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    v2 = v6;
    if (v7 > 0x3F)
    {
      return v2;
    }

    sub_19349D1FC(319, &qword_1ED508058, MEMORY[0x1E69E72F0]);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_1934D3A60(319, &qword_1ED508298, MEMORY[0x1E69695A8]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_193656684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511298);
  v4 = __swift_project_value_buffer(v3, qword_1ED511298);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.GenerativeExperiences.FailureTracking.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:86400.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_36 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511298);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA20, &qword_1939772F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    BYTE2(v12) = 0;
    LOWORD(v12) = 1;
    v11 = [v5 _libraryStreamConfigurationWithUUID_streamIdentifier_eventClass_storeConfig_syncPolicy_legacyNames_internalMetadata_enableSubscriptions_enableSubscriptionSubstream_enableTombstoneSubstream_allowedClients_pruningTriggers_spaceAttributionOwner_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.GenerativeExperiences.FailureTracking.attribute(_:)(void (*a1)(void))
{
  result = sub_193656A94(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193656ADC(void (*a1)(void))
{
  result = sub_193656A94(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193656B0C(uint64_t a1)
{
  result = sub_193656B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193656B34()
{
  result = qword_1ED5048D0;
  if (!qword_1ED5048D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5048D0);
  }

  return result;
}

_BYTE *_s15FailureTrackingOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GenerativeExperiencesFailureTracking.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_193656E3C(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FA28, &qword_193977370, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3FA28, &qword_193977370);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_193656E3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesFailureTracking.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FA28, &qword_193977370, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_193656FE0(v8, a3);
  }

  return result;
}

uint64_t sub_193656FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GenerativeExperiencesFailureTracking.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_193657C84() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_193656FE0(v11, v36);
      v29 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t GenerativeExperiencesFailureTracking.serialize()()
{
  v1 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA28, &qword_193977370);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193656E3C(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FA28, &qword_193977370, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FA28, &qword_193977370);
  return v11;
}

id static GenerativeExperiencesFailureTracking.columns.getter()
{
  v4 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_193950B10;
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v1 + 32) = sub_19393C850();
  v2 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A14520, 2, 0, v1, 13, 0);
  if (result)
  {
    *(inited + 32) = result;
    sub_19343D230(inited);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1936575F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = a1 == 0xD000000000000011 && 0x8000000193A14520 == a2;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    result = type metadata accessor for GenerativeExperiencesFailureTracking(0);
    if (*(v3 + *(result + 28) + 8))
    {
      return sub_1934948FC();
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v10 = v9;
    *v9 = a1;
    v9[1] = a2;
    v9[5] = type metadata accessor for GenerativeExperiencesFailureTracking(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10 + 2);
    sub_193656E3C(v3, boxed_opaque_existential_1Tm);
    *(v10 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t GenerativeExperiencesFailureTracking.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  v3 = v2[5];
  sub_193657C90(a1 + v3);
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = (a1 + v2[7]);
  OUTLINED_FUNCTION_10_1();
  *a1 = *sub_193657C84();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v6 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v6);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t static GenerativeExperiencesFailureTracking.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GenerativeExperiencesFailureTracking(0) + 28);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t GenerativeExperiencesFailureTracking.hash(into:)(uint64_t a1)
{
  if (!*(v1 + *(type metadata accessor for GenerativeExperiencesFailureTracking(0) + 28) + 8))
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t sub_19365790C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB9A8);
  __swift_project_value_buffer(v0, qword_1EAEAB9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "useCaseIdentifier";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_19393C410();
}

uint64_t sub_193657A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for GenerativeExperiencesFailureTracking(0);
      sub_19393C200();
    }
  }

  return result;
}

uint64_t sub_193657B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for GenerativeExperiencesFailureTracking(0);
  if (*(v3 + *(result + 28) + 8))
  {
    return sub_19393C3C0();
  }

  return result;
}

uint64_t sub_193657B80(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FA38;

  return v1;
}

uint64_t sub_193657BC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE76C40 != -1)
  {
    OUTLINED_FUNCTION_0_62(&qword_1EAE76C40);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAB9A8);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_193657C90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_19393BE00();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t type metadata accessor for GenerativeExperiencesFailureTracking(uint64_t a1)
{
  result = qword_1ED50D870;
  if (!qword_1ED50D870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenerativeExperiencesFailureTracking.useCaseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativeExperiencesFailureTracking(0) + 28));

  return v1;
}

uint64_t GenerativeExperiencesFailureTracking.useCaseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativeExperiencesFailureTracking(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativeExperiencesFailureTracking.hashValue.getter()
{
  sub_19393CAB0();
  GenerativeExperiencesFailureTracking.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193657FC4(uint64_t a1)
{
  sub_19393CAB0();
  GenerativeExperiencesFailureTracking.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193658004()
{
  result = qword_1EAE3FA48;
  if (!qword_1EAE3FA48)
  {
    type metadata accessor for GenerativeExperiencesFailureTracking(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA48);
  }

  return result;
}

void sub_193658088(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      sub_193658134();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_193658134()
{
  if (!qword_1ED508290)
  {
    v0 = sub_19393C860();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED508290);
    }
  }
}

_BYTE *_s17TextUnderstandingOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s6OutputOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936582F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5112F8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5112F8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Document.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_37 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5112F8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA50, &qword_1939774C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Document.attribute(_:)(void (*a1)(void))
{
  result = sub_193658720(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19365875C(void (*a1)(void))
{
  result = sub_193658720(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936587C4(uint64_t a1)
{
  result = sub_1936587EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936587EC()
{
  result = qword_1ED5043C0;
  if (!qword_1ED5043C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043C0);
  }

  return result;
}

_BYTE *_s8DocumentOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingDocument.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193658AB8(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3FA58, &qword_193977540, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193658AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingDocument.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3FA58, &qword_193977540, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_193658C4C(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193658C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingDocument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingDocument.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  if (*sub_19365C7B8() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v15 + 16))(v19, v21, v13);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v21, v13);
    if (!v0)
    {
      v27 = v35;
      sub_193658C4C(v12, v35);
      v28 = type metadata accessor for TextUnderstandingDocument(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingDocument.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA58, &qword_193977540);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193658AB8(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3FA58, &qword_193977540, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FA58, &qword_193977540);
  return v11;
}

id static TextUnderstandingDocument.columns.getter()
{
  v420 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v12, v13, v14, v15, v16, 0, 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_2(result);
  inited = swift_initStackObject();
  v26 = OUTLINED_FUNCTION_2_4(inited, v19, v20, v21, v22, v23, v24, v25, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v36);
  OUTLINED_FUNCTION_31_29();
  OUTLINED_FUNCTION_25_28();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v37, v38, v39, v40, v41, 0, 1);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_2(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_2_4(v42, v43, v44, v45, v46, v47, v48, v49, v406);
  OUTLINED_FUNCTION_5_10(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v60);
  v61 = OUTLINED_FUNCTION_23_30();
  result = OUTLINED_FUNCTION_3_5(v61, 0xE800000000000000);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_7_2(result);
  v62 = swift_initStackObject();
  v70 = OUTLINED_FUNCTION_2_4(v62, v63, v64, v65, v66, v67, v68, v69, v407);
  OUTLINED_FUNCTION_5_10(v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v80);
  OUTLINED_FUNCTION_20_35();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v81, v82, v83, v84, v85, 0, 0);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_7_2(result);
  v86 = swift_initStackObject();
  v94 = OUTLINED_FUNCTION_2_4(v86, v87, v88, v89, v90, v91, v92, v93, v408);
  OUTLINED_FUNCTION_5_10(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v104);
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v105, v106, v107, v108, v109, 3, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_2(result);
  v110 = swift_initStackObject();
  v118 = OUTLINED_FUNCTION_2_4(v110, v111, v112, v113, v114, v115, v116, v117, v409);
  OUTLINED_FUNCTION_5_10(v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  v128 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v128);
  OUTLINED_FUNCTION_16_27();
  OUTLINED_FUNCTION_30_20();
  OUTLINED_FUNCTION_12_10();
  result = sub_19343D150(v129, v130, v131, v132, v133, 3, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_7_2(result);
  v134 = swift_initStackObject();
  v142 = OUTLINED_FUNCTION_2_4(v134, v135, v136, v137, v138, v139, v140, v141, v410);
  OUTLINED_FUNCTION_5_10(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v152);
  OUTLINED_FUNCTION_29_21();
  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v153, v154, v155, v156, v157);
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_7_2(result);
  v158 = swift_initStackObject();
  v166 = OUTLINED_FUNCTION_2_4(v158, v159, v160, v161, v162, v163, v164, v165, v411);
  OUTLINED_FUNCTION_5_10(v166, v167, v168, v169, v170, v171, v172, v173, v174, v175);
  v176 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v176);
  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v177, v178, v179, v180, v181);
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_7_2(result);
  v182 = swift_initStackObject();
  v190 = OUTLINED_FUNCTION_2_4(v182, v183, v184, v185, v186, v187, v188, v189, v412);
  OUTLINED_FUNCTION_5_10(v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
  v200 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v200);
  OUTLINED_FUNCTION_24_29();
  OUTLINED_FUNCTION_142();
  result = OUTLINED_FUNCTION_3_5(v201, v202);
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_2(result);
  v203 = swift_initStackObject();
  v211 = OUTLINED_FUNCTION_2_4(v203, v204, v205, v206, v207, v208, v209, v210, v413);
  OUTLINED_FUNCTION_5_10(v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
  v221 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v221);
  OUTLINED_FUNCTION_18_4();
  OUTLINED_FUNCTION_142();
  result = OUTLINED_FUNCTION_3_5(v222, v223);
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_7_2(result);
  v224 = swift_initStackObject();
  v232 = OUTLINED_FUNCTION_2_4(v224, v225, v226, v227, v228, v229, v230, v231, v414);
  OUTLINED_FUNCTION_5_10(v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);
  v242 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v242);
  v243 = OUTLINED_FUNCTION_21_31();
  result = OUTLINED_FUNCTION_3_5(v243, 0xE700000000000000);
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_7_2(result);
  v244 = swift_initStackObject();
  v252 = OUTLINED_FUNCTION_2_4(v244, v245, v246, v247, v248, v249, v250, v251, v415);
  OUTLINED_FUNCTION_5_10(v252, v253, v254, v255, v256, v257, v258, v259, v260, v261);
  v262 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v262);
  OUTLINED_FUNCTION_19_39();
  OUTLINED_FUNCTION_17_31();
  result = OUTLINED_FUNCTION_3_5(v263, v264);
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_7_2(result);
  v265 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  v275 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
  v285 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v285);
  OUTLINED_FUNCTION_18_31();
  OUTLINED_FUNCTION_12_10();
  result = OUTLINED_FUNCTION_35_25(v286, v287, v288, v289, v290);
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_7_2(result);
  v291 = swift_initStackObject();
  v299 = OUTLINED_FUNCTION_2_4(v291, v292, v293, v294, v295, v296, v297, v298, v416);
  OUTLINED_FUNCTION_5_10(v299, v300, v301, v302, v303, v304, v305, v306, v307, v308);
  v309 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v309);
  result = OUTLINED_FUNCTION_3_5(0x64497473696CLL, 0xE600000000000000);
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_7_2(result);
  v310 = swift_initStackObject();
  v318 = OUTLINED_FUNCTION_2_4(v310, v311, v312, v313, v314, v315, v316, v317, v417);
  OUTLINED_FUNCTION_5_10(v318, v319, v320, v321, v322, v323, v324, v325, v326, v327);
  v328 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v328);
  v329 = OUTLINED_FUNCTION_28_20();
  result = OUTLINED_FUNCTION_3_5(v329, 0xE700000000000000);
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_7_2(result);
  v330 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v330, v331, v332, v333, v334, v335, v336, v337, v338, v339);
  v340 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v340, v341, v342, v343, v344, v345, v346, v347, v348, v349);
  v350 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v350);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000014, 0x8000000193A2B550);
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_7_2(result);
  v351 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v351, v352, v353, v354, v355, v356, v357, v358, v359, v360);
  v361 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v361, v362, v363, v364, v365, v366, v367, v368, v369, v370);
  v371 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v371);
  v372 = OUTLINED_FUNCTION_18_31();
  result = OUTLINED_FUNCTION_3_5(v372, v373);
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_7_2(result);
  v374 = swift_initStackObject();
  v382 = OUTLINED_FUNCTION_2_4(v374, v375, v376, v377, v378, v379, v380, v381, v418);
  OUTLINED_FUNCTION_5_10(v382, v383, v384, v385, v386, v387, v388, v389, v390, v391);
  v392 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v392);
  v393 = OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_3_5(v393 & 0xFFFFFFFFFFFFLL | 0x5474000000000000, 0xEB00000000657079);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_7_2(result);
  v394 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v394, v395, v396, v397, v398, v399, v400, v401, v402, v403);
  v404 = OUTLINED_FUNCTION_6_4();
  *(v404 + 16) = v419;
  *(v404 + 32) = sub_19393C850();
  v405 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = OUTLINED_FUNCTION_35_25(0xD000000000000011, 0x8000000193A2B590, 0, 0, v404);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v420;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1936597A0()
{
  OUTLINED_FUNCTION_26();
  v93 = v0;
  v94 = v1;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v92 - v7;
  v9 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_1();
  v15 = v14 - v13;
  v16 = v5 == 0x696669746E656469 && v3 == 0xEB00000000737265;
  if (v16 || (OUTLINED_FUNCTION_6_46(0x696669746E656469, 0xEB00000000737265) & 1) != 0)
  {
    v17 = *(type metadata accessor for TextUnderstandingDocument(0) + 28);
    memcpy(v96, (v93 + v17), sizeof(v96));
    memcpy(v95, (v93 + v17), sizeof(v95));
    sub_19365A03C(v96, v97);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, v94);
    memcpy(v97, v95, 0x60uLL);
    sub_19365A098(v97);
    goto LABEL_14;
  }

  v18 = OUTLINED_FUNCTION_32_5();
  v20 = v5 == v18 && v3 == v19;
  if (v20 || (OUTLINED_FUNCTION_6_46(v18, v19) & 1) != 0)
  {
    type metadata accessor for TextUnderstandingDocument(0);
LABEL_13:
    sub_1934948FC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_25_28();
  v21 = OUTLINED_FUNCTION_31_29();
  v23 = v5 == v21 && v3 == v22;
  if (!v23 && (OUTLINED_FUNCTION_6_46(v21, v22) & 1) == 0)
  {
    v26 = OUTLINED_FUNCTION_23_30();
    v27 = v5 == v26 && v3 == 0xE800000000000000;
    if (v27 || (OUTLINED_FUNCTION_6_46(v26, 0xE800000000000000) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 40);
      goto LABEL_29;
    }

    v31 = OUTLINED_FUNCTION_20_35();
    v32 = v5 == v31 && v3 == 0xE900000000000065;
    if (v32 || (OUTLINED_FUNCTION_6_46(v31, 0xE900000000000065) & 1) != 0)
    {
      v33 = v93 + *(type metadata accessor for TextUnderstandingDocument(0) + 44);
      if ((*(v33 + 8) & 1) == 0)
      {
        v97[0] = *v33;
        goto LABEL_13;
      }

      goto LABEL_45;
    }

    v34 = v5 == 0x6874676E656CLL && v3 == 0xE600000000000000;
    if (v34 || (OUTLINED_FUNCTION_6_46(0x6874676E656CLL, 0xE600000000000000) & 1) != 0)
    {
      v35 = *(type metadata accessor for TextUnderstandingDocument(0) + 48);
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_30_20();
    v38 = OUTLINED_FUNCTION_16_27();
    v40 = v5 == v38 && v3 == v39;
    if (v40 || (OUTLINED_FUNCTION_6_46(v38, v39) & 1) != 0)
    {
      v35 = *(type metadata accessor for TextUnderstandingDocument(0) + 52);
LABEL_44:
      v36 = v93 + v35;
      if ((*(v36 + 8) & 1) == 0)
      {
        v97[0] = *v36;
        goto LABEL_13;
      }

      goto LABEL_45;
    }

    OUTLINED_FUNCTION_27_23();
    v41 = OUTLINED_FUNCTION_29_21();
    v43 = v5 == v41 && v3 == v42;
    if (v43 || (OUTLINED_FUNCTION_6_46(v41, v42) & 1) != 0)
    {
      v44 = *(type metadata accessor for TextUnderstandingDocument(0) + 56);
LABEL_59:
      v45 = *(v93 + v44);
      goto LABEL_60;
    }

    v46 = OUTLINED_FUNCTION_26_21();
    v48 = v5 == v46 && v3 == v47;
    if (v48 || (OUTLINED_FUNCTION_6_46(v46, v47) & 1) != 0)
    {
      v44 = *(type metadata accessor for TextUnderstandingDocument(0) + 60);
      goto LABEL_59;
    }

    v49 = v5 == OUTLINED_FUNCTION_24_29() && v3 == 0xE900000000000064;
    if (v49 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_6_46(v50, v51) & 1) != 0))
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 64);
      goto LABEL_29;
    }

    v52 = v5 == (OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x4974000000000000) && v3 == 0xE900000000000064;
    if (v52 || (OUTLINED_FUNCTION_142(), (OUTLINED_FUNCTION_6_46(v53, v54) & 1) != 0))
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 68);
      goto LABEL_29;
    }

    v55 = OUTLINED_FUNCTION_21_31();
    v56 = v5 == v55 && v3 == 0xE700000000000000;
    if (v56 || (OUTLINED_FUNCTION_6_46(v55, 0xE700000000000000) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 72);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_17_31();
    v57 = OUTLINED_FUNCTION_19_39();
    v59 = v5 == v57 && v3 == v58;
    if (v59 || (OUTLINED_FUNCTION_6_46(v57, v58) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 76);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_38();
    v61 = v5 == 0xD000000000000012 && v60 == v3;
    if (v61 || (OUTLINED_FUNCTION_6_46(0xD000000000000012, v60) & 1) != 0)
    {
      v62 = *(type metadata accessor for TextUnderstandingDocument(0) + 80);
LABEL_97:
      v97[0] = *(v93 + v62);
      v63 = &qword_1EAE3ABB0;
      v64 = &qword_193950BB8;
LABEL_98:
      __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_38();
    v66 = v5 == 0xD000000000000015 && v65 == v3;
    if (v66 || (OUTLINED_FUNCTION_6_46(0xD000000000000015, v65) & 1) != 0)
    {
      v67 = *(type metadata accessor for TextUnderstandingDocument(0) + 84);
LABEL_105:
      v68 = *(v93 + v67);
      if (v68 == 2)
      {
        goto LABEL_45;
      }

      v45 = v68 & 1;
LABEL_60:
      LOBYTE(v97[0]) = v45;
      goto LABEL_13;
    }

    v69 = v5 == 0x64497473696CLL && v3 == 0xE600000000000000;
    if (v69 || (OUTLINED_FUNCTION_6_46(0x64497473696CLL, 0xE600000000000000) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 88);
      goto LABEL_29;
    }

    v70 = OUTLINED_FUNCTION_28_20();
    v71 = v5 == v70 && v3 == 0xE700000000000000;
    if (v71 || (OUTLINED_FUNCTION_6_46(v70, 0xE700000000000000) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 92);
      goto LABEL_29;
    }

    v72 = v5 == 0x73726F68747561 && v3 == 0xE700000000000000;
    if (v72 || (OUTLINED_FUNCTION_6_46(0x73726F68747561, 0xE700000000000000) & 1) != 0)
    {
      v73 = *(type metadata accessor for TextUnderstandingDocument(0) + 96);
      goto LABEL_131;
    }

    v74 = v5 == 0x6E65697069636572 && v3 == 0xEA00000000007374;
    if (v74 || (OUTLINED_FUNCTION_6_46(0x6E65697069636572, 0xEA00000000007374) & 1) != 0)
    {
      v73 = *(type metadata accessor for TextUnderstandingDocument(0) + 100);
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_38();
    v76 = v5 == 0xD000000000000014 && v75 == v3;
    if (v76 || (OUTLINED_FUNCTION_6_46(0xD000000000000014, v75) & 1) != 0)
    {
      v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 104);
    }

    else
    {
      OUTLINED_FUNCTION_38();
      v78 = v5 == 0xD000000000000015 && v77 == v3;
      if (v78 || (OUTLINED_FUNCTION_6_46(0xD000000000000015, v77) & 1) != 0)
      {
        v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 108);
      }

      else
      {
        v79 = OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
        v81 = v5 == v79 && v3 == v80;
        if (!v81 && (OUTLINED_FUNCTION_6_46(v79, v80) & 1) == 0)
        {
          OUTLINED_FUNCTION_38();
          v83 = v5 == 0xD000000000000011 && v82 == v3;
          if (v83 || (OUTLINED_FUNCTION_6_46(0xD000000000000011, v82) & 1) != 0)
          {
            v67 = *(type metadata accessor for TextUnderstandingDocument(0) + 116);
            goto LABEL_105;
          }

          OUTLINED_FUNCTION_38();
          v85 = v5 == 0xD000000000000011 && v84 == v3;
          if (!v85 && (OUTLINED_FUNCTION_6_46(0xD000000000000011, v84) & 1) == 0)
          {
            v86 = OUTLINED_FUNCTION_18_4() & 0xFFFFFFFFFFFFLL | 0x4874000000000000;
            v88 = v5 == v86 && v3 == v87;
            if (!v88 && (OUTLINED_FUNCTION_6_46(v86, v87) & 1) == 0)
            {
              sub_19349AB64();
              swift_allocError();
              v90 = v89;
              *v89 = v5;
              v89[1] = v3;
              v89[5] = type metadata accessor for TextUnderstandingDocument(0);
              boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v90 + 2);
              sub_193658AB8(v93, boxed_opaque_existential_1Tm);
              *(v90 + 48) = 1;
              swift_willThrow();

              goto LABEL_14;
            }

            v62 = *(type metadata accessor for TextUnderstandingDocument(0) + 124);
            goto LABEL_97;
          }

          v73 = *(type metadata accessor for TextUnderstandingDocument(0) + 120);
LABEL_131:
          v97[0] = *(v93 + v73);
          v63 = &unk_1EAE3FA60;
          v64 = &unk_193977548;
          goto LABEL_98;
        }

        v28 = *(type metadata accessor for TextUnderstandingDocument(0) + 112);
      }
    }

LABEL_29:
    v29 = (v93 + v28);
    v30 = *(v93 + v28 + 8);
    if (v30)
    {
      v97[0] = *v29;
      v97[1] = v30;
      goto LABEL_13;
    }

LABEL_45:
    v37 = v94;
    *v94 = 0u;
    *(v37 + 1) = 0u;
    goto LABEL_14;
  }

  v24 = type metadata accessor for TextUnderstandingDocument(0);
  sub_1934DE90C(v93 + *(v24 + 36), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_19344E6DC(v8, &qword_1EAE3A9E8, &qword_19394F800);
    v25 = v94;
    *v94 = 0u;
    *(v25 + 1) = 0u;
  }

  else
  {
    (*(v11 + 32))(v15, v8, v9);
    sub_1934948FC();
    (*(v11 + 8))(v15, v9);
  }

LABEL_14:
  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingDocument.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingDocument(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v5 = v2[9];
  sub_19349C79C();
  v22 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v20 = a1 + v2[11];
  j__OUTLINED_FUNCTION_8_11();
  v19 = a1 + v2[12];
  j__OUTLINED_FUNCTION_8_11();
  v15 = a1 + v2[13];
  j__OUTLINED_FUNCTION_8_11();
  v16 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v23 = v2[21];
  OUTLINED_FUNCTION_7_9();
  v21 = (a1 + v2[22]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[23]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = (a1 + v2[26]);
  j__OUTLINED_FUNCTION_10_1();
  v14 = (a1 + v2[27]);
  j__OUTLINED_FUNCTION_10_1();
  v12 = (a1 + v2[28]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = v2[29];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_19365C7B8();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v7 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v7);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  sub_19393BDC0();
  sub_193442B60(a1 + v5, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v7);

  *v22 = 0;
  v22[1] = 0;
  *v20 = 0;
  v20[8] = 1;
  *v19 = 0;
  v19[8] = 1;
  *v15 = 0;
  v15[8] = 1;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *v16 = 0;
  v16[1] = 0;
  *v13 = 0;
  v13[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[1] = 0;

  v9 = MEMORY[0x1E69E7CC0];
  *(a1 + v2[20]) = MEMORY[0x1E69E7CC0];
  *(a1 + v23) = 2;
  *v21 = 0;
  v21[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *(a1 + v2[24]) = v9;
  *(a1 + v2[25]) = v9;
  *v17 = 0;
  v17[1] = 0;
  *v14 = 0;
  v14[1] = 0;
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v10) = 2;
  *(a1 + v2[30]) = v9;
  *(a1 + v2[31]) = v9;
  return result;
}

uint64_t static TextUnderstandingDocument.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v115 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v115 - v13;
  v15 = type metadata accessor for TextUnderstandingDocument(0);
  v16 = *(v15 + 28);
  memcpy(v122, (a1 + v16), sizeof(v122));
  memcpy(v121, (a1 + v16), sizeof(v121));
  v17 = *(v15 + 28);
  memcpy(v123, (a2 + v17), sizeof(v123));
  memcpy(v120, (a2 + v17), sizeof(v120));
  sub_19365A03C(v122, __dst);
  sub_19365A03C(v123, __dst);
  sub_19365AB48();
  LOBYTE(v17) = sub_19393C550();
  memcpy(v124, v120, sizeof(v124));
  sub_19365A098(v124);
  memcpy(__dst, v121, 0x60uLL);
  sub_19365A098(__dst);
  if ((v17 & 1) == 0)
  {
    goto LABEL_12;
  }

  v117 = v6;
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  if ((sub_19393C550() & 1) == 0)
  {
    goto LABEL_12;
  }

  v118 = a2;
  v115 = a1;
  v116 = v15;
  v18 = *(v15 + 36);
  v19 = *(v12 + 48);
  sub_1934DE90C(a1 + v18, v14);
  v20 = v118 + v18;
  v21 = v118;
  sub_1934DE90C(v20, &v14[v19]);
  OUTLINED_FUNCTION_23_5(v14);
  if (!v22)
  {
    sub_1934DE90C(v14, v11);
    OUTLINED_FUNCTION_23_5(&v14[v19]);
    if (!v22)
    {
      v25 = v117;
      v26 = v119;
      (*(v117 + 32))(v119, &v14[v19], v4);
      v27 = sub_19393C550();
      v28 = *(v25 + 8);
      v28(v26, v4);
      v28(v11, v4);
      sub_193442B60(v14, &qword_1EAE3A9E8, &qword_19394F800);
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v117 + 8))(v11, v4);
LABEL_11:
    sub_193442B60(v14, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23_5(&v14[v19]);
  if (!v22)
  {
    goto LABEL_11;
  }

  sub_193442B60(v14, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_15:
  v29 = v115;
  v30 = v116;
  OUTLINED_FUNCTION_2_53();
  if (v33)
  {
    if (!v31)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v32);
    v36 = v22 && v34 == v35;
    if (!v36 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v31)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_32();
  if (v40)
  {
    if (!v37)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*v38 != *v39)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_7_32();
  if (v42)
  {
    if (!v41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v43)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_7_32();
  if (v45)
  {
    if (!v44)
    {
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v46)
    {
      goto LABEL_12;
    }
  }

  if (*(v29 + v30[14]) != *(v21 + v30[14]) || *(v29 + v30[15]) != *(v21 + v30[15]))
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_53();
  if (v49)
  {
    if (!v47)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v48);
    v52 = v22 && v50 == v51;
    if (!v52 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v47)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_53();
  if (v55)
  {
    if (!v53)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v54);
    v58 = v22 && v56 == v57;
    if (!v58 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v53)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_53();
  if (v61)
  {
    if (!v59)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v60);
    v64 = v22 && v62 == v63;
    if (!v64 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v59)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_53();
  if (v67)
  {
    if (!v65)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_5(v66);
    v70 = v22 && v68 == v69;
    if (!v70 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v65)
  {
    goto LABEL_12;
  }

  v71 = OUTLINED_FUNCTION_3_50(v116[20]);
  if (sub_19344FC94(v71, v72))
  {
    OUTLINED_FUNCTION_14_37();
    if (v22)
    {
      if (v73 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v73 == 2 || ((v74 ^ v73) & 1) != 0)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_64();
    if (v77)
    {
      if (!v75)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v76);
      v80 = v22 && v78 == v79;
      if (!v80 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v75)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_64();
    if (v83)
    {
      if (!v81)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v82);
      v86 = v22 && v84 == v85;
      if (!v86 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v81)
    {
      goto LABEL_12;
    }

    v87 = OUTLINED_FUNCTION_3_50(v116[24]);
    if ((sub_19365AFC8(v87, v88) & 1) == 0)
    {
      goto LABEL_12;
    }

    v89 = OUTLINED_FUNCTION_3_50(v116[25]);
    if ((sub_19365AFC8(v89, v90) & 1) == 0)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_64();
    if (v93)
    {
      if (!v91)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v92);
      v96 = v22 && v94 == v95;
      if (!v96 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v91)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_64();
    if (v99)
    {
      if (!v97)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v98);
      v102 = v22 && v100 == v101;
      if (!v102 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v97)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_0_64();
    if (v105)
    {
      if (!v103)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_5(v104);
      v108 = v22 && v106 == v107;
      if (!v108 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v103)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_14_37();
    if (v22)
    {
      if (v109 != 2)
      {
        goto LABEL_12;
      }
    }

    else if (v109 == 2 || ((v110 ^ v109) & 1) != 0)
    {
      goto LABEL_12;
    }

    v111 = OUTLINED_FUNCTION_3_50(v116[30]);
    if (sub_19365AFC8(v111, v112))
    {
      v113 = OUTLINED_FUNCTION_3_50(v116[31]);
      v23 = sub_19344FC94(v113, v114);
      return v23 & 1;
    }
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_19365AB48()
{
  result = qword_1EAE3A850;
  if (!qword_1EAE3A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A850);
  }

  return result;
}

uint64_t TextUnderstandingDocument.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &__dst[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &__dst[-v9];
  v11 = type metadata accessor for TextUnderstandingDocument(0);
  memcpy(__dst, (v1 + v11[7]), sizeof(__dst));
  sub_19365B174();
  sub_19393C540();
  sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
  sub_19393C540();
  sub_1934DE90C(v1 + v11[9], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v4 + 32))(v7, v10, v2);
    OUTLINED_FUNCTION_103_0();
    sub_19393C540();
    (*(v4 + 8))(v7, v2);
  }

  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_10_43();
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v12;
    OUTLINED_FUNCTION_103_0();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v2;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x193B18060](v14);
  }

  OUTLINED_FUNCTION_10_43();
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v15;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  OUTLINED_FUNCTION_10_43();
  if (v13)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v2 = *v16;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v2);
  }

  sub_19393CAD0();
  sub_19393CAD0();
  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v2)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = OUTLINED_FUNCTION_11_35();
  sub_1934D11C8(v17, v18);
  v19 = *(v1 + v11[21]);
  if (v19 != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v20 = OUTLINED_FUNCTION_11_35();
  sub_19365B1C8(v20, v21);
  v22 = OUTLINED_FUNCTION_11_35();
  sub_19365B1C8(v22, v23);
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v11[29]) != 2)
  {
    OUTLINED_FUNCTION_103_0();
  }

  sub_19393CAD0();
  v24 = OUTLINED_FUNCTION_11_35();
  sub_19365B1C8(v24, v25);
  v26 = OUTLINED_FUNCTION_11_35();
  return sub_1934D11C8(v26, v27);
}

uint64_t sub_19365AFC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_19365B310();
      v3 = 0;
      do
      {

        v4 = sub_19393C550();

        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_19365B174()
{
  result = qword_1EAE3FA68;
  if (!qword_1EAE3FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA68);
  }

  return result;
}

uint64_t sub_19365B1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    sub_19365B2BC();
    v5 = a2 + 40;
    do
    {

      sub_19393C540();

      v5 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19365B2BC()
{
  result = qword_1EAE3FA70;
  if (!qword_1EAE3FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA70);
  }

  return result;
}

unint64_t sub_19365B310()
{
  result = qword_1EAE3FA78;
  if (!qword_1EAE3FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA78);
  }

  return result;
}

uint64_t sub_19365B364()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB9C0);
  __swift_project_value_buffer(v0, qword_1EAEAB9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1939775A0;
  v4 = v81 + v3 + v1[14];
  *(v81 + v3) = 1;
  *v4 = "identifiers";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  OUTLINED_FUNCTION_9_10();
  v8 = *(v7 + 104);
  v8(v4, v5, v6);
  v9 = OUTLINED_FUNCTION_3_1(v81 + v3 + v2);
  *v10 = 2;
  *v9 = "receivedDate";
  v9[1] = 12;
  v11 = OUTLINED_FUNCTION_41(v9);
  (v8)(v11);
  v12 = OUTLINED_FUNCTION_3_1(v81 + v3 + 2 * v2);
  *v13 = 3;
  *v12 = "relevanceDate";
  v12[1] = 13;
  v14 = OUTLINED_FUNCTION_41(v12);
  (v8)(v14);
  v15 = OUTLINED_FUNCTION_44(3 * v2);
  *v16 = 4;
  *v15 = "language";
  v15[1] = 8;
  v17 = OUTLINED_FUNCTION_41(v15);
  (v8)(v17);
  v18 = OUTLINED_FUNCTION_3_1(v81 + v3 + 4 * v2);
  *v19 = 5;
  *v18 = "dwellTime";
  v18[1] = 9;
  v20 = OUTLINED_FUNCTION_41(v18);
  (v8)(v20);
  v21 = OUTLINED_FUNCTION_44(5 * v2);
  *v22 = 6;
  *v21 = "length";
  v21[1] = 6;
  v23 = OUTLINED_FUNCTION_41(v21);
  (v8)(v23);
  v24 = OUTLINED_FUNCTION_3_1(v81 + v3 + 6 * v2);
  *v25 = 7;
  *v24 = "donationCount";
  v24[1] = 13;
  v26 = OUTLINED_FUNCTION_41(v24);
  (v8)(v26);
  v27 = OUTLINED_FUNCTION_44(7 * v2);
  *v28 = 8;
  *v27 = "isUserCreated";
  v27[1] = 13;
  v29 = OUTLINED_FUNCTION_41(v27);
  (v8)(v29);
  v30 = OUTLINED_FUNCTION_3_1(v81 + v3 + 8 * v2);
  *v31 = 9;
  *v30 = "hasBeenRead";
  v30[1] = 11;
  v32 = OUTLINED_FUNCTION_41(v30);
  (v8)(v32);
  v33 = OUTLINED_FUNCTION_44(9 * v2);
  *v34 = 10;
  *v33 = "messageId";
  v33[1] = 9;
  v35 = OUTLINED_FUNCTION_41(v33);
  (v8)(v35);
  v36 = OUTLINED_FUNCTION_52_0();
  *v37 = 11;
  *v36 = "accountId";
  v36[1] = 9;
  v38 = OUTLINED_FUNCTION_41(v36);
  (v8)(v38);
  v39 = OUTLINED_FUNCTION_3_1(v81 + v3 + 11 * v2);
  *v40 = 12;
  *v39 = "subject";
  v39[1] = 7;
  v41 = OUTLINED_FUNCTION_41(v39);
  (v8)(v41);
  v42 = OUTLINED_FUNCTION_52_0();
  *v43 = 13;
  *v42 = "mailMessageId";
  v42[1] = 13;
  v44 = OUTLINED_FUNCTION_41(v42);
  (v8)(v44);
  v45 = OUTLINED_FUNCTION_52_0();
  *v46 = 14;
  *v45 = "mailboxIdentifiers";
  v45[1] = 18;
  v47 = OUTLINED_FUNCTION_41(v45);
  (v8)(v47);
  v48 = OUTLINED_FUNCTION_3_1(v81 + v3 + 14 * v2);
  *v49 = 15;
  *v48 = "isPartiallyDownloaded";
  v48[1] = 21;
  v50 = OUTLINED_FUNCTION_41(v48);
  (v8)(v50);
  v51 = OUTLINED_FUNCTION_44(15 * v2);
  *v52 = 16;
  *v51 = "listId";
  v51[1] = 6;
  v53 = OUTLINED_FUNCTION_41(v51);
  (v8)(v53);
  v54 = OUTLINED_FUNCTION_3_1(v81 + v3 + 16 * v2);
  *v55 = 17;
  *v54 = "snippet";
  v54[1] = 7;
  v56 = OUTLINED_FUNCTION_41(v54);
  (v8)(v56);
  v57 = OUTLINED_FUNCTION_44(17 * v2);
  *v58 = 18;
  *v57 = "authors";
  v57[1] = 7;
  v59 = OUTLINED_FUNCTION_41(v57);
  (v8)(v59);
  v60 = OUTLINED_FUNCTION_52_0();
  *v61 = 19;
  *v60 = "recipients";
  v60[1] = 10;
  v62 = OUTLINED_FUNCTION_41(v60);
  (v8)(v62);
  v63 = OUTLINED_FUNCTION_52_0();
  *v64 = 20;
  *v63 = "suggestedContactName";
  v63[1] = 20;
  v65 = OUTLINED_FUNCTION_41(v63);
  (v8)(v65);
  v66 = OUTLINED_FUNCTION_52_0();
  *v67 = 21;
  *v66 = "suggestedContactPhoto";
  v66[1] = 21;
  v68 = OUTLINED_FUNCTION_41(v66);
  (v8)(v68);
  v69 = OUTLINED_FUNCTION_52_0();
  *v70 = 22;
  *v69 = "accountType";
  v69[1] = 11;
  v71 = OUTLINED_FUNCTION_41(v69);
  (v8)(v71);
  v72 = OUTLINED_FUNCTION_52_0();
  *v73 = 23;
  *v72 = "hasInhumanHeaders";
  v72[1] = 17;
  v74 = OUTLINED_FUNCTION_41(v72);
  (v8)(v74);
  v75 = OUTLINED_FUNCTION_52_0();
  *v76 = 24;
  *v75 = "primaryRecipients";
  v75[1] = 17;
  v77 = OUTLINED_FUNCTION_41(v75);
  (v8)(v77);
  v78 = OUTLINED_FUNCTION_52_0();
  *v79 = 25;
  *v78 = "accountHandles";
  *(v78 + 8) = 14;
  *(v78 + 16) = 2;
  (v8)();
  return sub_19393C410();
}

void sub_19365B944()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v39 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v38 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v36 = (v9 + 32);
  v37 = (v9 + 40);
  while (1)
  {
    v18 = sub_19393C0E0();
    if (v2 || (v19 & 1) != 0)
    {
      break;
    }

    switch(v18)
    {
      case 1:
        v42 = 0u;
        memset(v43, 0, sizeof(v43));
        sub_193498018();
        if (*(&v42 + 1))
        {
          memcpy(&v40[1], v43, 0x50uLL);
          v40[0] = v42;
        }

        else
        {
          TextUnderstandingDocumentIdentifiers.init()(v40);
        }

        v33 = *(type metadata accessor for TextUnderstandingDocument(0) + 28);
        memcpy(v41, (v3 + v33), sizeof(v41));
        sub_19365A098(v41);
        memcpy((v3 + v33), v40, 0x60uLL);
        continue;
      case 2:
        v27 = v39;
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v39);
        OUTLINED_FUNCTION_15_38(v17);
        v2 = 0;
        v34 = v3;
        sub_1934DE90C(v17, v44);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v27);
        v35 = v17;
        if (EnumTagSinglePayload == 1)
        {
          v29 = v38;
          sub_19393BDC0();
          sub_19344E680(v17, &qword_1EAE3A9E8, &qword_19394F800);
          if (__swift_getEnumTagSinglePayload(v44, 1, v27) != 1)
          {
            sub_19344E680(v44, &qword_1EAE3A9E8, &qword_19394F800);
          }
        }

        else
        {
          sub_19344E680(v17, &qword_1EAE3A9E8, &qword_19394F800);
          v29 = v38;
          (*v36)(v38, v44, v27);
        }

        v32 = type metadata accessor for TextUnderstandingDocument(0);
        v3 = v34;
        (*v37)(v34 + *(v32 + 32), v29, v27);
        v17 = v35;
        continue;
      case 3:
        v24 = type metadata accessor for TextUnderstandingDocument(0);
        OUTLINED_FUNCTION_15_38(v3 + *(v24 + 36));
        goto LABEL_39;
      case 4:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 40);
        goto LABEL_36;
      case 5:
        v22 = type metadata accessor for TextUnderstandingDocument(0);
        OUTLINED_FUNCTION_4_48(*(v22 + 44));
        sub_19393C1E0();
        goto LABEL_39;
      case 6:
        v31 = *(type metadata accessor for TextUnderstandingDocument(0) + 48);
        goto LABEL_28;
      case 7:
        v31 = *(type metadata accessor for TextUnderstandingDocument(0) + 52);
LABEL_28:
        OUTLINED_FUNCTION_4_48(v31);
        sub_19393C190();
        goto LABEL_39;
      case 8:
        OUTLINED_FUNCTION_12_31();
        v2 = 0;
        v25 = v42;
        v26 = *(type metadata accessor for TextUnderstandingDocument(0) + 56);
        goto LABEL_32;
      case 9:
        OUTLINED_FUNCTION_12_31();
        v2 = 0;
        v25 = v42;
        v26 = *(type metadata accessor for TextUnderstandingDocument(0) + 60);
LABEL_32:
        *(v3 + v26) = v25 & 1;
        continue;
      case 10:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 64);
        goto LABEL_36;
      case 11:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 68);
        goto LABEL_36;
      case 12:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 72);
        goto LABEL_36;
      case 13:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 76);
        goto LABEL_36;
      case 14:
        v23 = *(type metadata accessor for TextUnderstandingDocument(0) + 80);
        goto LABEL_26;
      case 15:
        v21 = *(type metadata accessor for TextUnderstandingDocument(0) + 84);
        goto LABEL_34;
      case 16:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 88);
        goto LABEL_36;
      case 17:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 92);
        goto LABEL_36;
      case 18:
        v30 = *(type metadata accessor for TextUnderstandingDocument(0) + 96);
        goto LABEL_38;
      case 19:
        v30 = *(type metadata accessor for TextUnderstandingDocument(0) + 100);
        goto LABEL_38;
      case 20:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 104);
        goto LABEL_36;
      case 21:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 108);
        goto LABEL_36;
      case 22:
        v20 = *(type metadata accessor for TextUnderstandingDocument(0) + 112);
LABEL_36:
        OUTLINED_FUNCTION_4_48(v20);
        sub_19393C200();
        goto LABEL_39;
      case 23:
        v21 = *(type metadata accessor for TextUnderstandingDocument(0) + 116);
LABEL_34:
        OUTLINED_FUNCTION_4_48(v21);
        sub_19393C0F0();
        goto LABEL_39;
      case 24:
        v30 = *(type metadata accessor for TextUnderstandingDocument(0) + 120);
LABEL_38:
        sub_193498238(v3 + v30, v7, &type metadata for TextUnderstandingPersonHandles, v5, &off_1F07E01C0);
        goto LABEL_39;
      case 25:
        v23 = *(type metadata accessor for TextUnderstandingDocument(0) + 124);
LABEL_26:
        OUTLINED_FUNCTION_4_48(v23);
        sub_19393C1B0();
LABEL_39:
        v2 = 0;
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_19365BECC()
{
  OUTLINED_FUNCTION_26();
  v2 = v0;
  v3 = type metadata accessor for TextUnderstandingDocument(0);
  v4 = v3[7];
  memcpy(__dst, (v0 + v4), sizeof(__dst));
  memcpy(v59, (v0 + v4), sizeof(v59));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v5 = sub_19393C550();
  memcpy(v61, __src, sizeof(v61));
  sub_19365A098(v61);
  memcpy(v62, v59, sizeof(v62));
  sub_19365A098(v62);
  if (v5)
  {
    if (v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    memcpy(v59, (v2 + v4), sizeof(v59));
    memcpy(__src, (v2 + v4), sizeof(__src));
    sub_19365A03C(v59, v57);
    OUTLINED_FUNCTION_23_3();
    sub_193447600();
    if (v1)
    {
      memcpy(v57, __src, sizeof(v57));
      sub_19365A098(v57);
      goto LABEL_8;
    }

    memcpy(v57, __src, sizeof(v57));
    sub_19365A098(v57);
  }

  OUTLINED_FUNCTION_13_35();
  sub_19365C38C();
  v6 = OUTLINED_FUNCTION_13_35();
  sub_19365C4B0(v6, v7, v8, v9, v10, v11, v12, v13, v57[0], v57[1], v57[2], v57[3], v57[4], v57[5], v57[6], v57[7], v57[8], v57[9], v57[10], v57[11]);
  OUTLINED_FUNCTION_5_20();
  if (v14)
  {
    OUTLINED_FUNCTION_4_7(*v15, v14, 4);
  }

  if ((*(v2 + v3[11] + 8) & 1) == 0)
  {
    sub_19393C3B0();
  }

  if ((*(v2 + v3[12] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C360();
  }

  if ((*(v2 + v3[13] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C360();
  }

  if (*(v2 + v3[14]) == 1)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  if (*(v2 + v3[15]) == 1)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v16)
  {
    OUTLINED_FUNCTION_4_7(*v17, v16, 10);
  }

  OUTLINED_FUNCTION_5_20();
  if (v18)
  {
    OUTLINED_FUNCTION_4_7(*v19, v18, 11);
  }

  OUTLINED_FUNCTION_5_20();
  if (v20)
  {
    OUTLINED_FUNCTION_4_7(*v21, v20, 12);
  }

  OUTLINED_FUNCTION_5_20();
  if (v22)
  {
    OUTLINED_FUNCTION_4_7(*v23, v22, 13);
  }

  OUTLINED_FUNCTION_14_38(v3[20]);
  if (v24)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C380();
  }

  if (*(v2 + v3[21]) != 2)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_5_20();
  if (v25)
  {
    OUTLINED_FUNCTION_4_7(*v26, v25, 16);
  }

  OUTLINED_FUNCTION_5_20();
  if (v27)
  {
    OUTLINED_FUNCTION_4_7(*v28, v27, 17);
  }

  OUTLINED_FUNCTION_14_38(v3[24]);
  if (v29)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v30, v31, v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_14_38(v3[25]);
  if (v36)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v37, v38, v39, v40, v41, v42);
  }

  OUTLINED_FUNCTION_5_20();
  if (v43)
  {
    OUTLINED_FUNCTION_4_7(*v44, v43, 20);
  }

  OUTLINED_FUNCTION_5_20();
  if (v45)
  {
    OUTLINED_FUNCTION_4_7(*v46, v45, 21);
  }

  OUTLINED_FUNCTION_5_20();
  if (v47)
  {
    OUTLINED_FUNCTION_4_7(*v48, v47, 22);
  }

  if (*(v2 + v3[29]) != 2)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C2E0();
  }

  OUTLINED_FUNCTION_14_38(v3[30]);
  if (v49)
  {
    OUTLINED_FUNCTION_23_3();
    sub_193451CFC(v50, v51, v52, v53, v54, v55);
  }

  OUTLINED_FUNCTION_14_38(v3[31]);
  if (v56)
  {
    OUTLINED_FUNCTION_1_54();
    sub_19393C380();
  }

LABEL_8:
  OUTLINED_FUNCTION_27();
}

void sub_19365C38C()
{
  OUTLINED_FUNCTION_26();
  v14 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = *(type metadata accessor for TextUnderstandingDocument(0) + 32);
  sub_19393BDC0();
  sub_19365C760();
  v13 = sub_19393C550();
  (*(v7 + 8))(v11, v5);
  if ((v13 & 1) == 0)
  {
    sub_193451F04(v4 + v12, 2, 26211, 0xE200000000000000, v2, v14);
  }

  OUTLINED_FUNCTION_27();
}

void sub_19365C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &a9 - v29;
  v31 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_1();
  v37 = v36 - v35;
  v38 = type metadata accessor for TextUnderstandingDocument(0);
  sub_1934DE90C(v27 + *(v38 + 36), v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_19344E680(v30, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    (*(v33 + 32))(v37, v30, v31);
    sub_193451F04(v37, 3, 26211, 0xE200000000000000, v25, v23);
    (*(v33 + 8))(v37, v31);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19365C654(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FA80;

  return v1;
}

uint64_t sub_19365C698@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE76D50 != -1)
  {
    OUTLINED_FUNCTION_5_50(&qword_1EAE76D50);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEAB9C0);
  OUTLINED_FUNCTION_9_10();
  v4 = *(v3 + 16);

  return v4(a1);
}

unint64_t sub_19365C760()
{
  result = qword_1EAE3A848;
  if (!qword_1EAE3A848)
  {
    sub_19393BE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A848);
  }

  return result;
}

uint64_t TextUnderstandingDocument.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocument(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingDocument(uint64_t a1)
{
  result = qword_1ED50D190;
  if (!qword_1ED50D190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingDocument.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocument(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingDocument.identifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingDocument(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingDocument.identifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingDocument.receivedDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingDocument(v2) + 32);
  v4 = sub_19393BE00();
  v5 = *(*(v4 - 8) + 16);

  return v5(v0, v1 + v3, v4);
}

uint64_t TextUnderstandingDocument.receivedDate.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 32);
  sub_19393BE00();
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t TextUnderstandingDocument.relevanceDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingDocument(v2);
  return sub_19344865C(v1 + *(v3 + 36), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t TextUnderstandingDocument.language.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.language.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.isUserCreated.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hasBeenRead.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 60)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.messageId.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.messageId.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountId.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.accountId.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.subject.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.subject.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.mailMessageId.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.mailMessageId.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.mailboxIdentifiers.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
}

uint64_t TextUnderstandingDocument.mailboxIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 80);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.isPartiallyDownloaded.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.listId.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.listId.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.snippet.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.snippet.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.authors.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
}

uint64_t TextUnderstandingDocument.authors.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 96);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.recipients.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
}

uint64_t TextUnderstandingDocument.recipients.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 100);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.suggestedContactName.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.suggestedContactName.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.suggestedContactPhoto.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.suggestedContactPhoto.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountType.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t TextUnderstandingDocument.accountType.setter()
{
  OUTLINED_FUNCTION_5_51();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hasInhumanHeaders.setter()
{
  result = OUTLINED_FUNCTION_10_44();
  *(v1 + *(result + 116)) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.primaryRecipients.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
}

uint64_t TextUnderstandingDocument.primaryRecipients.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 120);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.accountHandles.getter()
{
  type metadata accessor for TextUnderstandingDocument(0);
}

uint64_t TextUnderstandingDocument.accountHandles.setter()
{
  v2 = *(OUTLINED_FUNCTION_10_44() + 124);

  *(v1 + v2) = v0;
  return result;
}

uint64_t TextUnderstandingDocument.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocument.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19365DA08(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingDocument.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19365DA48()
{
  result = qword_1EAE3FA98;
  if (!qword_1EAE3FA98)
  {
    type metadata accessor for TextUnderstandingDocument(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FA98);
  }

  return result;
}

uint64_t sub_19365DACC(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    v4 = sub_19393BE00();
    if (v6 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_0_65(v4, &qword_1ED508290, MEMORY[0x1E69E6158]);
    v2 = v7;
    if (v8 > 0x3F)
    {
      return v2;
    }

    OUTLINED_FUNCTION_0_65(v7, &qword_1ED506690, MEMORY[0x1E69E63B0]);
    if (v9 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_0_65(v4, &qword_1ED506678, MEMORY[0x1E69E7360]);
    if (v10 > 0x3F)
    {
      return v4;
    }

    OUTLINED_FUNCTION_7_33(v4, qword_1ED507ED8, MEMORY[0x1E69E6158]);
    if (v12 > 0x3F)
    {
      return v11;
    }

    OUTLINED_FUNCTION_0_65(v11, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v14 > 0x3F)
    {
      return v13;
    }

    OUTLINED_FUNCTION_7_33(v13, qword_1ED502EA0, &type metadata for TextUnderstandingPersonHandles);
    if (v15 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_19365DCD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_19365DD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v8 || (OUTLINED_FUNCTION_0_66(0x6449656C646E7562) & 1) != 0)
  {
    v10 = *(&__dst[0] + 1);
    v9 = *&__dst[0];
LABEL_7:
    *&v19[0] = v9;
    *(&v19[0] + 1) = v10;
    return sub_1934948FC();
  }

  result = 0x64496E69616D6F64;
  v12 = a1 == 0x64496E69616D6F64 && a2 == 0xE800000000000000;
  if (v12 || (result = OUTLINED_FUNCTION_0_66(0x64496E69616D6F64), (result & 1) != 0))
  {
    if (*(&__dst[1] + 1))
    {
      v19[0] = __dst[1];
      return sub_1934948FC();
    }

LABEL_35:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v13 = a1 == 0x6449657571696E75 && a2 == 0xE800000000000000;
  if (v13 || (OUTLINED_FUNCTION_0_66(0x6449657571696E75) & 1) != 0)
  {
    v10 = *(&__dst[2] + 1);
    v9 = *&__dst[2];
    goto LABEL_7;
  }

  v14 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v14 || (OUTLINED_FUNCTION_0_66(0x79726F6765746163) & 1) != 0)
  {
    *&v19[0] = *&__dst[3];
    BYTE8(v19[0]) = BYTE8(__dst[3]);
    return sub_1934948FC();
  }

  result = 0x654D746E65696C63;
  v15 = a1 == 0x654D746E65696C63 && a2 == 0xEE00617461646174;
  if (v15 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (*(&__dst[4] + 1))
    {
      v19[0] = __dst[4];
      v19[1] = __dst[5];
      return sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata, &off_1F07DB1D0, a3);
    }

    goto LABEL_35;
  }

  sub_19349AB64();
  swift_allocError();
  v17 = v16;
  *v16 = a1;
  v16[1] = a2;
  v16[5] = &type metadata for TextUnderstandingDocumentIdentifiers;
  v18 = swift_allocObject();
  v17[2] = v18;
  memcpy((v18 + 16), __dst, 0x60uLL);
  *(v17 + 48) = 1;
  swift_willThrow();

  return sub_19365A03C(__dst, v19);
}

uint64_t sub_19365DF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {
    return sub_1934948FC();
  }

  v11 = v3[2];
  v10 = v3[3];
  result = sub_19393CA30();
  if (result)
  {
    return sub_1934948FC();
  }

  v13 = a1 == 0xD000000000000012 && 0x8000000193A2B6F0 == a2;
  if (v13 || (result = sub_19393CA30(), (result & 1) != 0))
  {
    if (v10)
    {
      return sub_1934948FC();
    }

    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v15 = v14;
    *v14 = a1;
    v14[1] = a2;
    v14[5] = &type metadata for TextUnderstandingDocumentIdentifiers.ClientMetadata;
    v16 = swift_allocObject();
    v15[2] = v16;
    v16[2] = v7;
    v16[3] = v6;
    v16[4] = v11;
    v16[5] = v10;
    *(v15 + 48) = 1;
    swift_willThrow();
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  result = 0;
  v4 = 1;
  switch(v2)
  {
    case 0:
      break;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    default:
      v4 = 0;
      break;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = 0;
  return result;
}

char *static TextUnderstandingDocumentIdentifiers.Category.allCases.getter()
{
  v0 = sub_19365E540(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v16 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v16, v2 + 1, 1, v17);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[16 * v2];
  *(v5 + 4) = 0;
  v5[40] = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v18 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v18, v2 + 2, 1, v19);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v6;
  v7 = &v0[16 * v4];
  *(v7 + 4) = 0;
  v7[40] = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    v20 = OUTLINED_FUNCTION_39(v1);
    v0 = sub_19365E540(v20, v2 + 3, 1, v21);
  }

  *(v0 + 2) = v8;
  v9 = &v0[16 * v6];
  *(v9 + 4) = 1;
  v9[40] = 1;
  v10 = *(v0 + 3);
  v11 = v2 + 4;
  if ((v2 + 4) > (v10 >> 1))
  {
    v22 = OUTLINED_FUNCTION_39(v10);
    v0 = sub_19365E540(v22, v2 + 4, 1, v23);
  }

  *(v0 + 2) = v11;
  v12 = &v0[16 * v8];
  *(v12 + 4) = 2;
  v12[40] = 1;
  v13 = *(v0 + 3);
  if ((v2 + 5) > (v13 >> 1))
  {
    v24 = OUTLINED_FUNCTION_39(v13);
    v0 = sub_19365E540(v24, v2 + 5, 1, v25);
  }

  *(v0 + 2) = v2 + 5;
  v14 = &v0[16 * v11];
  *(v14 + 4) = 3;
  v14[40] = 1;
  return v0;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0x6E776F6E6B6E55;
  }

  result = 0x6261686372616553;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_3_51();
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_49();
      break;
    case 3:
      result = OUTLINED_FUNCTION_2_54();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.Category.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E55 && a2 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_9(0x6E776F6E6B6E55, 0xE700000000000000) & 1) != 0)
  {

    v8 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v10 = a1 == 0x6261686372616553 && a2 == 0xEE006D657449656CLL;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6261686372616553, 0xEE006D657449656CLL) & 1) != 0)
  {

    v8 = 0;
LABEL_13:
    v9 = 1;
    goto LABEL_14;
  }

  v11 = OUTLINED_FUNCTION_3_51();
  v13 = a1 == v11 && a2 == v12;
  if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
  {

    v8 = 1;
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_4_49();
  v16 = a1 == v14 && a2 == v15;
  if (v16 || (OUTLINED_FUNCTION_0_9(v14, v15) & 1) != 0)
  {

    v9 = 1;
    v8 = 2;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_2_54();
    if (a1 == v17 && a2 == v18)
    {

      v9 = 1;
      v8 = 3;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_0_9(v17, v18);

      v8 = 3;
      if ((v9 & 1) == 0)
      {
        v8 = 0;
      }
    }
  }

LABEL_14:
  *a3 = v8;
  *(a3 + 8) = v9 & 1;
  *(a3 + 9) = 0;
  return result;
}

char *sub_19365E540(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAA8, &qword_1939777D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_19365E640()
{
  result = qword_1EAE3FAA0;
  if (!qword_1EAE3FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAA0);
  }

  return result;
}

void sub_19365E694()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB9D8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 1;
  *v0 = "bundleId";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 2;
  *v8 = "domainId";
  v8[1] = 8;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 3;
  *v11 = "uniqueId";
  v11[1] = 8;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 4;
  *v14 = "category";
  v14[1] = 8;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 5;
  *v17 = "clientMetadata";
  *(v17 + 8) = 14;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19365E884()
{
  OUTLINED_FUNCTION_8_42();
  while (1)
  {
    v4 = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_4_50(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
        v0 = 0;
        OUTLINED_FUNCTION_11_36();
        if (v13)
        {
          v14 = v2;
        }

        else
        {
          v14 = v12;
        }

        *v1 = v3;
        *(v1 + 8) = v14;
        break;
      case 2:
        OUTLINED_FUNCTION_23_31();
        goto LABEL_16;
      case 3:
        OUTLINED_FUNCTION_4_50(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
        v0 = 0;
        OUTLINED_FUNCTION_11_36();
        if (v13)
        {
          v16 = v2;
        }

        else
        {
          v16 = v15;
        }

        *(v1 + 32) = v3;
        *(v1 + 40) = v16;
        break;
      case 4:
        v17 = 0;
        LOWORD(v18) = 256;
        sub_1934982A8();
        *(v1 + 48) = 0;
        *(v1 + 56) = 0;
        break;
      case 5:
        sub_193498018();
LABEL_16:
        v0 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_19365EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *v3;
  v7 = v5[1];
  v8 = v5[3];
  v18 = v5[4];
  v16 = v5[9];
  v17 = v5[5];
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 == 0xE000000000000000;
  }

  if (!v9 && (OUTLINED_FUNCTION_272(v6, v7) & 1) == 0)
  {
    sub_19393C3C0();
  }

  if (!v4)
  {
    if (v8)
    {
      sub_19393C3C0();
    }

    if ((v18 || v17 != 0xE000000000000000) && (OUTLINED_FUNCTION_272(v18, v17) & 1) == 0)
    {
      sub_19393C3C0();
    }

    OUTLINED_FUNCTION_18_32();
    sub_19365F1B8();
    if ((sub_19393C550() & 1) == 0)
    {
      OUTLINED_FUNCTION_18_32();
      OUTLINED_FUNCTION_16_28();
      sub_193447324(v10, v11, v12, v13, v14, v15);
    }

    if (v16)
    {
      OUTLINED_FUNCTION_16_28();
      sub_193447600();
    }
  }
}

void sub_19365EC5C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB9F0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "CategoryUnknown";
  *(v0 + 8) = 15;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "SearchableItem";
  v8[1] = 14;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "Interaction";
  v11[1] = 11;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 3;
  *v14 = "UserActivity";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 4;
  *v17 = "ClientDocument";
  *(v17 + 8) = 14;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19365EE74()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA08);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBE0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEABA40;
  *v6 = 1;
  *v7 = "identifier";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 2;
  *v12 = "documentIdentifier";
  *(v12 + 8) = 18;
  *(v12 + 16) = 2;
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_19365F000()
{
  OUTLINED_FUNCTION_8_42();
  while (1)
  {
    result = sub_19393C0E0();
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_23_31();
      v0 = 0;
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_4_50(1, v5, v6, v7, v8, v9, v10, v11, v15, v16);
      v0 = 0;
      OUTLINED_FUNCTION_11_36();
      if (v13)
      {
        v14 = v2;
      }

      else
      {
        v14 = v12;
      }

      *v1 = v3;
      v1[1] = v14;
    }
  }

  return result;
}

void sub_19365F0AC()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  if (*v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0xE000000000000000;
  }

  if (!v7 && (OUTLINED_FUNCTION_272(*v0, v0[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_24_30(v3, v4, 1);
    v2 = v1;
  }

  if (!v2)
  {
    if (v6)
    {
      OUTLINED_FUNCTION_24_30(v5, v6, 2);
    }
  }
}

unint64_t sub_19365F1B8()
{
  result = qword_1EAE3A720;
  if (!qword_1EAE3A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3A720);
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.bundleId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.domainId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.uniqueId.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void TextUnderstandingDocumentIdentifiers.category.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t TextUnderstandingDocumentIdentifiers.category.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.clientMetadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_19365F3E0(v2, v3);
}

uint64_t sub_19365F3E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 TextUnderstandingDocumentIdentifiers.clientMetadata.setter(uint64_t a1)
{
  sub_193442C40(v1[8], v1[9], v1[10], v1[11]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v4;
  return result;
}

double TextUnderstandingDocumentIdentifiers.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_193442C40(0, 0, 0, 0);
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t sub_19365F4D4@<X0>(uint64_t *a1@<X8>)
{
  result = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19365F4FC@<X0>(char **a1@<X8>)
{
  result = static TextUnderstandingDocumentIdentifiers.Category.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19365F530()
{
  sub_19393CAB0();
  v0 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v0);
  return sub_19393CB00();
}

uint64_t sub_19365F5E8(uint64_t a1)
{
  sub_19393CAB0();
  v1 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v1);
  return sub_19393CB00();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.identifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.documentIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformLibrary::TextUnderstandingDocumentIdentifiers::ClientMetadata __swiftcall TextUnderstandingDocumentIdentifiers.ClientMetadata.init()()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0;
  return result;
}

uint64_t static TextUnderstandingDocumentIdentifiers.ClientMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_19393CA30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_19393C640();
  if (!v2)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingDocumentIdentifiers.ClientMetadata.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_19393CAB0();
  sub_19393C640();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t sub_19365F96C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_19393CAB0();
  sub_19393C640();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  return sub_19393CB00();
}

uint64_t static TextUnderstandingDocumentIdentifiers.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v76 = a1[9];
  v77 = a1[8];
  v78 = a1[10];
  v79 = a1[11];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v74 = a2[8];
  v75 = a2[9];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  v72 = a2[11];
  v73 = a2[10];
  if (!v10 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = v2 == v6 && v4 == v7;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    v12 = v3 == v8 && v5 == v9;
    if (!v12 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }

    v13 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
    if (v13 != TextUnderstandingDocumentIdentifiers.Category.rawValue.getter())
    {
      return 0;
    }

    if (v76)
    {
      v15 = v78;
      v14 = v79;
      if (v75)
      {
        v16 = v77 == v74 && v76 == v75;
        if (v16 || (sub_19393CA30() & 1) != 0)
        {
          if (!v79)
          {
            v47 = OUTLINED_FUNCTION_1_55();
            sub_19365F3E0(v47, v48);
            if (!v72)
            {
              v68 = OUTLINED_FUNCTION_234();
              sub_19365F3E0(v68, v69);
              v70 = OUTLINED_FUNCTION_1_55();
              sub_19365F3E0(v70, v71);
              v64 = OUTLINED_FUNCTION_234();
              v66 = v73;
              v67 = 0;
              goto LABEL_50;
            }

LABEL_43:
            v49 = OUTLINED_FUNCTION_2_55();
            sub_19365F3E0(v49, v50);
            v51 = OUTLINED_FUNCTION_1_55();
            sub_19365F3E0(v51, v52);
            v53 = OUTLINED_FUNCTION_2_55();
            sub_193442C40(v53, v54, v55, v56);
LABEL_44:

            v39 = OUTLINED_FUNCTION_17_1();
            goto LABEL_45;
          }

          if (v72)
          {
            if (v78 != v73 || v79 != v72)
            {
              v18 = sub_19393CA30();
              v19 = OUTLINED_FUNCTION_17_1();
              sub_19365F3E0(v19, v20);
              v21 = OUTLINED_FUNCTION_2_55();
              sub_19365F3E0(v21, v22);
              v23 = OUTLINED_FUNCTION_17_1();
              sub_19365F3E0(v23, v24);
              v25 = OUTLINED_FUNCTION_2_55();
              sub_193442C40(v25, v26, v27, v28);
              if (v18)
              {
                goto LABEL_51;
              }

              goto LABEL_44;
            }

            v58 = OUTLINED_FUNCTION_17_1();
            sub_19365F3E0(v58, v59);
            v60 = OUTLINED_FUNCTION_234();
            sub_19365F3E0(v60, v61);
            v62 = OUTLINED_FUNCTION_17_1();
            sub_19365F3E0(v62, v63);
            v64 = OUTLINED_FUNCTION_234();
            v66 = v78;
            v67 = v79;
LABEL_50:
            sub_193442C40(v64, v65, v66, v67);
LABEL_51:

            v45 = v77;
            v46 = v76;
            goto LABEL_52;
          }
        }

        v43 = OUTLINED_FUNCTION_17_1();
        sub_19365F3E0(v43, v44);
        goto LABEL_43;
      }

      v31 = OUTLINED_FUNCTION_17_1();
      sub_19365F3E0(v31, v32);
      OUTLINED_FUNCTION_10_45();
      v33 = OUTLINED_FUNCTION_17_1();
      sub_19365F3E0(v33, v34);
    }

    else
    {
      v15 = v78;
      v14 = v79;
      sub_19365F3E0(v77, 0);
      if (!v75)
      {
        OUTLINED_FUNCTION_10_45();
        v45 = v77;
        v46 = 0;
LABEL_52:
        sub_193442C40(v45, v46, v15, v14);
        return 1;
      }

      v29 = OUTLINED_FUNCTION_2_55();
      sub_19365F3E0(v29, v30);
    }

    v35 = OUTLINED_FUNCTION_17_1();
    sub_193442C40(v35, v36, v37, v38);
    v39 = OUTLINED_FUNCTION_2_55();
LABEL_45:
    sub_193442C40(v39, v40, v41, v42);
    return 0;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t TextUnderstandingDocumentIdentifiers.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[9];
  v4 = v1[11];
  sub_19393C640();
  sub_19393CAD0();
  if (v2)
  {
    sub_19393C640();
  }

  sub_19393C640();
  v5 = TextUnderstandingDocumentIdentifiers.Category.rawValue.getter();
  MEMORY[0x193B18030](v5);
  if (!v3)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();
  sub_19393C640();
  if (!v4)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t TextUnderstandingDocumentIdentifiers.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingDocumentIdentifiers.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19365FEBC(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingDocumentIdentifiers.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_19365FEFC()
{
  result = qword_1EAE3FAD0;
  if (!qword_1EAE3FAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FAD8, &qword_193977848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAD0);
  }

  return result;
}

unint64_t sub_19365FF68()
{
  result = qword_1EAE3FAE0;
  if (!qword_1EAE3FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FAE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary36TextUnderstandingDocumentIdentifiersV14ClientMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19365FFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_19366001C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_3_2(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_3_2(result, a2);
    }
  }

  return result;
}

uint64_t sub_193660084(uint64_t a1, int a2)
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

uint64_t sub_1936600EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511358);
  v4 = __swift_project_value_buffer(v3, qword_1ED511358);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Contact.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_38 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511358);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAE8, &qword_193977AE0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Contact.attribute(_:)(void (*a1)(void))
{
  result = sub_193660514(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660550(void (*a1)(void))
{
  result = sub_193660514(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936605B8(uint64_t a1)
{
  result = sub_1936605E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936605E0()
{
  result = qword_1ED5043D0;
  if (!qword_1ED5043D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043D0);
  }

  return result;
}

_BYTE *_s7ContactOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1936606FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5113B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5113B8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Event.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_39 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5113B8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAF0, &qword_193977B50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Event.attribute(_:)(void (*a1)(void))
{
  result = sub_193660B24(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660B60(void (*a1)(void))
{
  result = sub_193660B24(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193660BC8(uint64_t a1)
{
  result = sub_193660BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193660BF0()
{
  result = qword_1ED5043E8;
  if (!qword_1ED5043E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043E8);
  }

  return result;
}

_BYTE *_s5EventOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_193660D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511418);
  v4 = __swift_project_value_buffer(v3, qword_1ED511418);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Location.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_40 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511418);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FAF8, &qword_193977BC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Location.attribute(_:)(void (*a1)(void))
{
  result = sub_193661134(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661170(void (*a1)(void))
{
  result = sub_193661134(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936611D8(uint64_t a1)
{
  result = sub_193661200();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661200()
{
  result = qword_1ED5043B0;
  if (!qword_1ED5043B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043B0);
  }

  return result;
}

_BYTE *_s8LocationOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19366131C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED511478);
  v4 = __swift_project_value_buffer(v3, qword_1ED511478);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.NamedEntity.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_41 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED511478);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB00, &qword_193977C38);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.NamedEntity.attribute(_:)(void (*a1)(void))
{
  result = sub_193661744(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661780(void (*a1)(void))
{
  result = sub_193661744(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_1936617E8(uint64_t a1)
{
  result = sub_193661810();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661810()
{
  result = qword_1ED5043F0;
  if (!qword_1ED5043F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043F0);
  }

  return result;
}

_BYTE *_s11NamedEntityOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_19366192C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED5114D8);
  v4 = __swift_project_value_buffer(v3, qword_1ED5114D8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.TextUnderstanding.Output.Topic.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:259200.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:5242880 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_42 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED5114D8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB08, &qword_193977CB0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD00000000000001CLL, 0x8000000193A2B4D0, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.TextUnderstanding.Output.Topic.attribute(_:)(void (*a1)(void))
{
  result = sub_193661D54(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661D90(void (*a1)(void))
{
  result = sub_193661D54(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193661DF8(uint64_t a1)
{
  result = sub_193661E20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_193661E20()
{
  result = qword_1ED5043D8;
  if (!qword_1ED5043D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5043D8);
  }

  return result;
}

_BYTE *_s5TopicOwst(_BYTE *result, int a2, int a3)
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

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingContact.json()()
{
  v1 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingContact(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1936620DC(v0, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  sub_193662140();
  v16 = sub_19393C250();
  v18 = v17;
  (*(v3 + 8))(v7, v1);
  sub_19344E6DC(v15, &qword_1EAE3FB10, &qword_193977D20);
  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t sub_1936620DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_193662140()
{
  result = qword_1EAE3FB18;
  if (!qword_1EAE3FB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAE3FB10, &qword_193977D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB18);
  }

  return result;
}

uint64_t static TextUnderstandingContact.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;

  sub_19393C060();
  sub_193662140();
  result = sub_19393C260();
  if (!v3)
  {
    return sub_1936622C0(v8, a3);
  }

  return result;
}

uint64_t sub_1936622C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TextUnderstandingContact.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v33 = a5;
  v31 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  if (*sub_1936630CC() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    sub_193662140();
    v21 = v37;
    sub_19393C280();
    if (v21)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v24 = v32;
      sub_1936622C0(v11, v32);
      v25 = type metadata accessor for TextUnderstandingContact(0);
      v26 = *(v25 + 20);
      sub_19344E6DC(v24 + v26, &qword_1EAE3A9E8, &qword_19394F800);
      v27 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v28 + 16))(v24 + v26, v31, v27);
      __swift_storeEnumTagSinglePayload(v24 + v26, 0, 1, v27);
      v29 = *(v25 + 24);
      sub_19344E6DC(v24 + v29, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v33, v24 + v29);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v23 = a3;
    *(v23 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t TextUnderstandingContact.serialize()()
{
  v1 = type metadata accessor for TextUnderstandingContact(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB10, &qword_193977D20);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1936620DC(v0, v5);
  sub_1934470C8(v5, v1, v8);
  sub_193662140();
  v9 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3FB10, &qword_193977D20);
  return v9;
}

uint64_t sub_1936627A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0xD000000000000013 && 0x8000000193A2B920 == a2;
  if (v6 || (sub_19393CA30() & 1) != 0)
  {
    v8 = *(type metadata accessor for TextUnderstandingContact(0) + 28);
    memcpy(__dst, (v3 + v8), sizeof(__dst));
    memcpy(v13, (v3 + v8), sizeof(v13));
    sub_19365A03C(__dst, v15);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, a3);
    memcpy(v15, v13, sizeof(v15));
    return sub_19365A098(v15);
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    v11 = v10;
    *v10 = a1;
    v10[1] = a2;
    v10[5] = type metadata accessor for TextUnderstandingContact(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11 + 2);
    sub_1936620DC(v3, boxed_opaque_existential_1Tm);
    *(v11 + 48) = 1;
    swift_willThrow();
  }
}

void *TextUnderstandingContact.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingContact(0);
  v3 = v2[5];
  sub_19349C79C();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  *a1 = *sub_1936630CC();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v5 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v5);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(v7);
  return memcpy(a1 + v2[7], v7, 0x60uLL);
}

uint64_t static TextUnderstandingContact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingContact(0);
  v5 = *(v4 + 28);
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(__src, (a1 + v5), sizeof(__src));
  v6 = *(v4 + 28);
  memcpy(v11, (a2 + v6), sizeof(v11));
  memcpy(v8, (a2 + v6), sizeof(v8));
  sub_19365A03C(__dst, v13);
  sub_19365A03C(v11, v13);
  sub_19365AB48();
  LOBYTE(a2) = sub_19393C550();
  memcpy(v12, v8, sizeof(v12));
  sub_19365A098(v12);
  memcpy(v13, __src, sizeof(v13));
  sub_19365A098(v13);
  return a2 & 1;
}

uint64_t TextUnderstandingContact.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingContact(0);
  memcpy(v4, (v1 + *(v2 + 28)), sizeof(v4));
  sub_19365B174();
  return sub_19393C540();
}

uint64_t sub_193662B4C()
{
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEABA20);
  __swift_project_value_buffer(v0, qword_1EAEABA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19394FAC0;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "documentIdentifiers";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_19393C400();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_19393C410();
}

uint64_t sub_193662CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_19393C0E0();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      __src = 0u;
      memset(v11, 0, sizeof(v11));
      sub_193498018();
      if (*(&__src + 1))
      {
        memcpy(&v8[1], v11, 0x50uLL);
        v8[0] = __src;
      }

      else
      {
        TextUnderstandingDocumentIdentifiers.init()(v8);
      }

      v7 = *(type metadata accessor for TextUnderstandingContact(0) + 28);
      memcpy(__dst, (v3 + v7), sizeof(__dst));
      sub_19365A098(__dst);
      memcpy((v3 + v7), v8, 0x60uLL);
    }
  }

  return result;
}

uint64_t sub_193662E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FA90, &qword_1939775B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_193662E68()
{
  v1 = v0;
  v2 = *(type metadata accessor for TextUnderstandingContact(0) + 28);
  memcpy(__dst, (v0 + v2), sizeof(__dst));
  memcpy(v7, (v0 + v2), sizeof(v7));
  sub_19365A03C(__dst, __src);
  TextUnderstandingDocumentIdentifiers.init()(__src);
  sub_19365AB48();
  v3 = sub_19393C550();
  memcpy(v9, __src, sizeof(v9));
  sub_19365A098(v9);
  memcpy(v10, v7, sizeof(v10));
  result = sub_19365A098(v10);
  if ((v3 & 1) == 0)
  {
    memcpy(v7, (v1 + v2), sizeof(v7));
    memcpy(__src, (v1 + v2), sizeof(__src));
    sub_19365A03C(v7, v5);
    sub_193447600();
    memcpy(v5, __src, sizeof(v5));
    return sub_19365A098(v5);
  }

  return result;
}

uint64_t sub_193662FC8(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3FB20;

  return v1;
}

uint64_t sub_19366300C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAE77180 != -1)
  {
    OUTLINED_FUNCTION_0_67(&qword_1EAE77180);
  }

  v2 = sub_19393C420();
  __swift_project_value_buffer(v2, qword_1EAEABA20);
  OUTLINED_FUNCTION_5_6();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TextUnderstandingContact.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingContact(v2);
  return sub_1934488AC(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for TextUnderstandingContact(uint64_t a1)
{
  result = qword_1ED50D1A0;
  if (!qword_1ED50D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TextUnderstandingContact.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for TextUnderstandingContact(v2);
  return sub_1934488AC(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t TextUnderstandingContact.documentIdentifiers.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for TextUnderstandingContact(v2) + 28);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x60uLL);
  return sub_19365A03C(__dst, &v5);
}

void *TextUnderstandingContact.documentIdentifiers.setter()
{
  v2 = *(OUTLINED_FUNCTION_0_68() + 28);
  memcpy(v4, (v1 + v2), sizeof(v4));
  sub_19365A098(v4);
  return memcpy((v1 + v2), v0, 0x60uLL);
}

uint64_t TextUnderstandingContact.hashValue.getter()
{
  sub_19393CAB0();
  TextUnderstandingContact.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_1936633F4(uint64_t a1)
{
  sub_19393CAB0();
  TextUnderstandingContact.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193663434()
{
  result = qword_1EAE3FB30;
  if (!qword_1EAE3FB30)
  {
    type metadata accessor for TextUnderstandingContact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3FB30);
  }

  return result;
}

void sub_1936634B8(uint64_t a1)
{
  sub_19349D140(319);
  if (v1 <= 0x3F)
  {
    sub_19349D198(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TextUnderstandingEvent.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v23 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_4_51();
  sub_1936659E0(v1, v12, v16);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v17, &qword_1EAE3FB38, &qword_193977E40, v18);
  sub_19393C250();
  (*(v3 + 8))(v7, v23);
  sub_19344E6DC(v15, &qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_27();
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void static TextUnderstandingEvent.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  v26 = OUTLINED_FUNCTION_47(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v30, &qword_1EAE3FB38, &qword_193977E40, v31);
  sub_19393C260();
  if (!v20)
  {
    sub_19366384C(v29, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_19366384C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextUnderstandingEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static TextUnderstandingEvent.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v3;
  v36 = v2;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_1();
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  if (*sub_193669E04() == v6)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    (*(v14 + 16))(v18, v21, v12);
    sub_193450688(v10, v8);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v14 + 8))(v21, v12);
    if (!v0)
    {
      v27 = v35;
      sub_19366384C(v1, v35);
      v28 = type metadata accessor for TextUnderstandingEvent(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v26 = v6;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t TextUnderstandingEvent.serialize()()
{
  v2 = type metadata accessor for TextUnderstandingEvent(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_25_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3FB38, &qword_193977E40);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  OUTLINED_FUNCTION_4_51();
  sub_1936659E0(v0, v1, v7);
  sub_1934470C8(v1, v2, v6);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v8, &qword_1EAE3FB38, &qword_193977E40, v9);
  sub_19393C290();
  sub_19344E6DC(v6, &qword_1EAE3FB38, &qword_193977E40);
  return OUTLINED_FUNCTION_13_0();
}

id static TextUnderstandingEvent.columns.getter()
{
  v299 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  *(swift_initStackObject() + 16) = xmmword_193950B10;
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_5_10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v12, v13, v14, v15, v16, v17, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_69_3(result);
  inited = swift_initStackObject();
  v27 = OUTLINED_FUNCTION_2_4(inited, v20, v21, v22, v23, v24, v25, v26, xmmword_193950B10);
  OUTLINED_FUNCTION_5_10(v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  v37 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v37);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v38, v39, v40, v41, v42, v43, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_69_3(result);
  v44 = swift_initStackObject();
  v52 = OUTLINED_FUNCTION_2_4(v44, v45, v46, v47, v48, v49, v50, v51, v288);
  OUTLINED_FUNCTION_5_10(v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v62 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v62);
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v63, v64, v65, v66, v67, v68, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_69_3(result);
  v69 = swift_initStackObject();
  v77 = OUTLINED_FUNCTION_2_4(v69, v70, v71, v72, v73, v74, v75, v76, v289);
  OUTLINED_FUNCTION_5_10(v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v87 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v87);
  v88 = OUTLINED_FUNCTION_24_31();
  result = OUTLINED_FUNCTION_20_36(v88, 0xE900000000000065);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_69_3(result);
  v89 = swift_initStackObject();
  v97 = OUTLINED_FUNCTION_2_4(v89, v90, v91, v92, v93, v94, v95, v96, v290);
  OUTLINED_FUNCTION_5_10(v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v107);
  v108 = OUTLINED_FUNCTION_27_24();
  result = OUTLINED_FUNCTION_20_36(v108, 0xE700000000000000);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_69_3(result);
  v109 = swift_initStackObject();
  v117 = OUTLINED_FUNCTION_2_4(v109, v110, v111, v112, v113, v114, v115, v116, v291);
  OUTLINED_FUNCTION_5_10(v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  v127 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v127);
  OUTLINED_FUNCTION_26_22();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v128, v129, v130, v131, v132, v133, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_69_3(result);
  v134 = swift_initStackObject();
  v142 = OUTLINED_FUNCTION_2_4(v134, v135, v136, v137, v138, v139, v140, v141, v292);
  OUTLINED_FUNCTION_5_10(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v152);
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_23_32();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v153, v154, v155, v156, v157, v158, 0);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_69_3(result);
  v159 = swift_initStackObject();
  v167 = OUTLINED_FUNCTION_2_4(v159, v160, v161, v162, v163, v164, v165, v166, v293);
  OUTLINED_FUNCTION_5_10(v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
  v177 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v177);
  OUTLINED_FUNCTION_34_27();
  OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v178, v179, v180, v181, v182, v183, 0);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_69_3(result);
  v184 = swift_initStackObject();
  v192 = OUTLINED_FUNCTION_2_4(v184, v185, v186, v187, v188, v189, v190, v191, v294);
  OUTLINED_FUNCTION_5_10(v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
  v202 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v202);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v203, v204, v205, v206, v207, v208, 0);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_69_3(result);
  v209 = swift_initStackObject();
  v217 = OUTLINED_FUNCTION_2_4(v209, v210, v211, v212, v213, v214, v215, v216, v295);
  OUTLINED_FUNCTION_5_10(v217, v218, v219, v220, v221, v222, v223, v224, v225, v226);
  v227 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v227);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v228, v229, v230, v231, v232, v233, 0);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_69_3(result);
  v234 = swift_initStackObject();
  v242 = OUTLINED_FUNCTION_2_4(v234, v235, v236, v237, v238, v239, v240, v241, v296);
  OUTLINED_FUNCTION_5_10(v242, v243, v244, v245, v246, v247, v248, v249, v250, v251);
  v252 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v252);
  OUTLINED_FUNCTION_29_22();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v253, v254, v255, v256, v0, 12, 0);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_69_3(result);
  v257 = swift_initStackObject();
  v265 = OUTLINED_FUNCTION_2_4(v257, v258, v259, v260, v261, v262, v263, v264, v297);
  OUTLINED_FUNCTION_5_10(v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  v275 = sub_19393C850();
  OUTLINED_FUNCTION_18_2(v275);
  OUTLINED_FUNCTION_2_56();
  result = sub_19343D150(v276, v277, v278, v279, v280, v281, 4);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_69_3(result);
  *(swift_initStackObject() + 16) = v298;
  v282 = swift_allocObject();
  *(v282 + 16) = v298;
  *(v282 + 32) = sub_19393C850();
  v283 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v284, v285, v286, v287, v282, 12, 0);
  if (result)
  {
    OUTLINED_FUNCTION_69_3(result);
    return v299;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1936641E4()
{
  OUTLINED_FUNCTION_26();
  v95 = v0;
  v96 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_47(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v90 - v8;
  v93 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v91 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_1();
  v90 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v14 = OUTLINED_FUNCTION_47(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90 - v19;
  v21 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v94 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v90 - v28;
  OUTLINED_FUNCTION_38();
  v31 = v5 == 0xD000000000000013 && v30 == v3;
  if (v31 || (OUTLINED_FUNCTION_24_5(0xD000000000000013, v30) & 1) != 0)
  {
    v32 = *(type metadata accessor for TextUnderstandingEvent(0) + 28);
    memcpy(v98, (v95 + v32), 0x60uLL);
    memcpy(v97, (v95 + v32), sizeof(v97));
    sub_19365A03C(v98, v99);
    sub_193494798(&type metadata for TextUnderstandingDocumentIdentifiers, &off_1F07DB1C0, v96);
    memcpy(v99, v97, 0x60uLL);
    sub_19365A098(v99);
    goto LABEL_16;
  }

  v33 = v5 == 0x737574617473 && v3 == 0xE600000000000000;
  if (v33 || (OUTLINED_FUNCTION_24_5(0x737574617473, 0xE600000000000000) & 1) != 0)
  {
    v34 = *(type metadata accessor for TextUnderstandingEvent(0) + 32);
LABEL_13:
    v35 = (v95 + v34);
    v37 = *v35;
    v36 = v35[1];
LABEL_14:
    v99[0] = v37;
    v99[1] = v36;
LABEL_15:
    sub_1934948FC();
    goto LABEL_16;
  }

  v38 = OUTLINED_FUNCTION_31_2();
  v39 = v5 == v38 && v3 == 0xE800000000000000;
  if (v39 || (OUTLINED_FUNCTION_24_5(v38, 0xE800000000000000) & 1) != 0)
  {
    v34 = *(type metadata accessor for TextUnderstandingEvent(0) + 36);
    goto LABEL_13;
  }

  v40 = OUTLINED_FUNCTION_30_2();
  v41 = v5 == v40 && v3 == 0xE90000000000006DLL;
  if (v41 || (OUTLINED_FUNCTION_24_5(v40, 0xE90000000000006DLL) & 1) != 0)
  {
    v34 = *(type metadata accessor for TextUnderstandingEvent(0) + 40);
    goto LABEL_13;
  }

  v42 = OUTLINED_FUNCTION_32_25();
  v43 = v5 == v42 && v3 == 0xE800000000000000;
  if (v43 || (OUTLINED_FUNCTION_24_5(v42, 0xE800000000000000) & 1) != 0)
  {
    type metadata accessor for TextUnderstandingEvent(0);
    v44 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
    v45 = &off_1F07DB898;
LABEL_35:
    sub_193494798(v44, v45, v96);
    goto LABEL_16;
  }

  v46 = OUTLINED_FUNCTION_24_31();
  v47 = v5 == v46 && v3 == 0xE900000000000065;
  if (!v47 && (OUTLINED_FUNCTION_24_5(v46, 0xE900000000000065) & 1) == 0)
  {
    v51 = OUTLINED_FUNCTION_27_24();
    v52 = v5 == v51 && v3 == 0xE700000000000000;
    if (v52 || (OUTLINED_FUNCTION_24_5(v51, 0xE700000000000000) & 1) != 0)
    {
      v53 = type metadata accessor for TextUnderstandingEvent(0);
      sub_193448758(v95 + *(v53 + 52), v17, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_5_3(v17);
      if (!v31)
      {
        v57 = v94;
        (*(v94 + 32))(v26, v17, v21);
        sub_1934948FC();
        (*(v57 + 8))(v26, v21);
        goto LABEL_16;
      }

      v54 = &qword_1EAE3A9E8;
      v55 = &qword_19394F800;
      v56 = v17;
      goto LABEL_52;
    }

    v58 = v5 == 0x636F4C7472617473 && v3 == 0xED00006E6F697461;
    if (v58 || (OUTLINED_FUNCTION_24_5(0x636F4C7472617473, 0xED00006E6F697461) & 1) != 0)
    {
      v59 = *(type metadata accessor for TextUnderstandingEvent(0) + 56);
    }

    else
    {
      v61 = v5 == 0x7461636F4C646E65 && v3 == 0xEB000000006E6F69;
      if (!v61 && (OUTLINED_FUNCTION_24_5(0x7461636F4C646E65, 0xEB000000006E6F69) & 1) == 0)
      {
        v62 = OUTLINED_FUNCTION_26_22();
        v63 = v5 == v62 && v3 == 0xE700000000000000;
        if (v63 || (OUTLINED_FUNCTION_24_5(v62, 0xE700000000000000) & 1) != 0)
        {
          v64 = *(type metadata accessor for TextUnderstandingEvent(0) + 64);
        }

        else
        {
          OUTLINED_FUNCTION_23_32();
          v66 = OUTLINED_FUNCTION_80_1();
          v68 = v5 == v66 && v3 == v67;
          if (v68 || (OUTLINED_FUNCTION_24_5(v66, v67) & 1) != 0)
          {
            v64 = *(type metadata accessor for TextUnderstandingEvent(0) + 68);
          }

          else
          {
            OUTLINED_FUNCTION_33_19();
            v69 = OUTLINED_FUNCTION_34_27();
            v71 = v5 == v69 && v3 == v70;
            if (v71 || (OUTLINED_FUNCTION_24_5(v69, v70) & 1) != 0)
            {
              v64 = *(type metadata accessor for TextUnderstandingEvent(0) + 72);
            }

            else
            {
              v72 = v5 == 0x7365746F6ELL && v3 == 0xE500000000000000;
              if (v72 || (OUTLINED_FUNCTION_24_5(0x7365746F6ELL, 0xE500000000000000) & 1) != 0)
              {
                v64 = *(type metadata accessor for TextUnderstandingEvent(0) + 76);
              }

              else
              {
                v73 = v5 == 0x656C746974 && v3 == 0xE500000000000000;
                if (!v73 && (OUTLINED_FUNCTION_24_5(0x656C746974, 0xE500000000000000) & 1) == 0)
                {
                  v74 = OUTLINED_FUNCTION_29_22();
                  v75 = v5 == v74 && v3 == 0xE800000000000000;
                  if (v75 || (OUTLINED_FUNCTION_24_5(v74, 0xE800000000000000) & 1) != 0)
                  {
                    v76 = *(v95 + *(type metadata accessor for TextUnderstandingEvent(0) + 84));
                  }

                  else
                  {
                    v77 = v5 == 7107189 && v3 == 0xE300000000000000;
                    if (v77 || (OUTLINED_FUNCTION_24_5(7107189, 0xE300000000000000) & 1) != 0)
                    {
                      v78 = type metadata accessor for TextUnderstandingEvent(0);
                      v79 = v92;
                      sub_193448758(v95 + *(v78 + 88), v92, &qword_1EAE3ACA0, &qword_193972420);
                      if (__swift_getEnumTagSinglePayload(v79, 1, v93) != 1)
                      {
                        v81 = v90;
                        v80 = v91;
                        v82 = v93;
                        (*(v91 + 32))(v90, v92, v93);
                        sub_1934948FC();
                        (*(v80 + 8))(v81, v82);
                        goto LABEL_16;
                      }

                      v54 = &qword_1EAE3ACA0;
                      v55 = &qword_193972420;
                      v56 = v92;
LABEL_52:
                      sub_19344E6DC(v56, v54, v55);
                      goto LABEL_60;
                    }

                    OUTLINED_FUNCTION_38();
                    v84 = v5 == 0xD000000000000014 && v83 == v3;
                    if (!v84 && (OUTLINED_FUNCTION_24_5(0xD000000000000014, v83) & 1) == 0)
                    {
                      sub_19349AB64();
                      OUTLINED_FUNCTION_11();
                      swift_allocError();
                      v87 = v86;
                      *v86 = v5;
                      v86[1] = v3;
                      v86[5] = type metadata accessor for TextUnderstandingEvent(0);
                      __swift_allocate_boxed_opaque_existential_1Tm(v87 + 2);
                      OUTLINED_FUNCTION_4_51();
                      sub_1936659E0(v95, v88, v89);
                      *(v87 + 48) = 1;
                      swift_willThrow();

                      goto LABEL_16;
                    }

                    v85 = *(v95 + *(type metadata accessor for TextUnderstandingEvent(0) + 92));
                    if (v85 == 2)
                    {
                      goto LABEL_60;
                    }

                    v76 = v85 & 1;
                  }

                  LOBYTE(v99[0]) = v76;
                  goto LABEL_15;
                }

                v64 = *(type metadata accessor for TextUnderstandingEvent(0) + 80);
              }
            }
          }
        }

        v65 = (v95 + v64);
        v36 = *(v95 + v64 + 8);
        if (v36)
        {
          v37 = *v65;
          goto LABEL_14;
        }

LABEL_60:
        v60 = v96;
        *v96 = 0u;
        *(v60 + 1) = 0u;
        goto LABEL_16;
      }

      v59 = *(type metadata accessor for TextUnderstandingEvent(0) + 60);
    }

    memcpy(v99, (v95 + v59), 0xF8uLL);
    if (sub_19366596C(v99) != 1)
    {
      memcpy(v98, v99, sizeof(v98));
      v44 = &type metadata for TextUnderstandingEvent.Location;
      v45 = &off_1F07DB888;
      goto LABEL_35;
    }

    goto LABEL_60;
  }

  v48 = type metadata accessor for TextUnderstandingEvent(0);
  sub_193448758(v95 + *(v48 + 48), v20, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_5_3(v20);
  if (v31)
  {
    sub_19344E6DC(v20, &qword_1EAE3A9E8, &qword_19394F800);
    v49 = v96;
    *v96 = 0u;
    *(v49 + 1) = 0u;
  }

  else
  {
    v50 = v94;
    (*(v94 + 32))(v29, v20, v21);
    sub_1934948FC();
    (*(v50 + 8))(v29, v21);
  }

LABEL_16:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193664AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  memcpy(__dst, v4, sizeof(__dst));
  v8 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v8 || (result = OUTLINED_FUNCTION_5_5(0x79726F6765746163, 0xE800000000000000), (result & 1) != 0))
  {
    __src[0] = *__dst;
    return sub_1934948FC();
  }

  v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_5_5(1701667182, 0xE400000000000000), (result & 1) != 0))
  {
    v11 = *&__dst[24];
    if (*&__dst[24])
    {
      v12 = *&__dst[16];
LABEL_15:
      *&__src[0] = v12;
      *(&__src[0] + 1) = v11;
      return sub_1934948FC();
    }

    goto LABEL_22;
  }

  v13 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v13 || (OUTLINED_FUNCTION_5_5(0x73736572646461, 0xE700000000000000) & 1) != 0)
  {
    memcpy(__src, (v4 + 32), 0x90uLL);
    result = get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__src);
    if (result == 1)
    {
LABEL_22:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    memcpy(v23, __src, sizeof(v23));
    v14 = &type metadata for TextUnderstandingLocation.Address;
    v15 = &off_1F07DBAC8;
    return sub_193494798(v14, v15, a3);
  }

  result = 0x6D754E656E6F6870;
  v16 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v16 || (result = OUTLINED_FUNCTION_5_5(0x6D754E656E6F6870, 0xEB00000000726562), (result & 1) != 0))
  {
    v11 = *&__dst[184];
    if (*&__dst[184])
    {
      v12 = *&__dst[176];
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  result = 0x616E6964726F6F63;
  v17 = a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000736574;
  if (v17 || (result = OUTLINED_FUNCTION_5_5(0x616E6964726F6F63, 0xEB00000000736574), (result & 1) != 0))
  {
    if (__dst[208])
    {
      goto LABEL_22;
    }

    __src[0] = *&__dst[192];
    v14 = &type metadata for TextUnderstandingLocation.Coordinates;
    v15 = &off_1F07DBAD8;
    return sub_193494798(v14, v15, a3);
  }

  result = OUTLINED_FUNCTION_32_25();
  v18 = a1 == result && a2 == 0xE800000000000000;
  if (v18 || (result = OUTLINED_FUNCTION_5_5(result, 0xE800000000000000), (result & 1) != 0))
  {
    if (*&__dst[224] == 1)
    {
      goto LABEL_22;
    }

    __src[0] = *&__dst[216];
    v14 = &type metadata for TextUnderstandingLocation.Metadata;
    v15 = &off_1F07DBAE8;
    return sub_193494798(v14, v15, a3);
  }

  v19 = a1 == 0xD000000000000012 && 0x8000000193A2B980 == a2;
  if (v19 || (result = OUTLINED_FUNCTION_5_5(0xD000000000000012, 0x8000000193A2B980), (result & 1) != 0))
  {
    v11 = *&__dst[240];
    if (*&__dst[240])
    {
      v12 = *&__dst[232];
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v21 = v20;
  *v20 = a1;
  v20[1] = a2;
  v20[5] = &type metadata for TextUnderstandingEvent.Location;
  v22 = swift_allocObject();
  v21[2] = v22;
  memcpy((v22 + 16), __dst, 0xF8uLL);
  *(v21 + 48) = 1;
  swift_willThrow();

  return sub_193665984(__dst, __src);
}

void sub_193664E28()
{
  OUTLINED_FUNCTION_26();
  v103 = v0;
  v104 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v8 = OUTLINED_FUNCTION_47(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v100 = v9 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v99 - v12;
  sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v101 = v15;
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v99 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_1();
  v23 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_1();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_187_1();
  v32 = v31 | 2;
  v33 = v6 == (v31 | 2) && v30 == v4;
  if (v33 || (OUTLINED_FUNCTION_59_0(v31 + 2, v30) & 1) != 0)
  {
    v34 = v103;
    goto LABEL_7;
  }

  v36 = v6 == 0x50676E696B6F6F62 && v4 == 0xEF72656469766F72;
  if (v36 || (OUTLINED_FUNCTION_59_0(0x50676E696B6F6F62, 0xEF72656469766F72) & 1) != 0)
  {
    v37 = v103[3];
    if (v37)
    {
      v38 = v103[2];
LABEL_17:
      v105 = v38;
      v106 = v37;
      sub_1934948FC();
      goto LABEL_56;
    }

    goto LABEL_39;
  }

  v39 = v6 == 0x7069636974726170 && v4 == 0xEC00000073746E61;
  if (v39 || (OUTLINED_FUNCTION_59_0(0x7069636974726170, 0xEC00000073746E61) & 1) != 0)
  {
    v40 = v103[4];
LABEL_24:
    v105 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ABB0, &qword_193950BB8);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_187_1();
  v43 = v6 == v42 + 1 && v41 == v4;
  if (v43 || (OUTLINED_FUNCTION_59_0(v42 + 1, v41) & 1) != 0)
  {
    v37 = v103[6];
    if (v37)
    {
      v38 = v103[5];
      goto LABEL_17;
    }

LABEL_39:
    v45 = v104;
    *v104 = 0u;
    v45[1] = 0u;
    goto LABEL_56;
  }

  v44 = v6 == 0x754E746867696C66 && v4 == 0xEC0000007265626DLL;
  if (v44 || (OUTLINED_FUNCTION_59_0(0x754E746867696C66, 0xEC0000007265626DLL) & 1) != 0)
  {
    v37 = v103[8];
    if (v37)
    {
      v38 = v103[7];
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  v46 = v6 == 0x626D754E74616573 && v4 == 0xEB00000000737265;
  if (v46 || (OUTLINED_FUNCTION_59_0(0x626D754E74616573, 0xEB00000000737265) & 1) != 0)
  {
    v40 = v103[9];
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_38();
  v48 = v6 == v32 && v47 == v4;
  if (v48 || (OUTLINED_FUNCTION_59_0(0xD000000000000012, v47) & 1) != 0)
  {
    v49 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
    sub_193448758(v103 + *(v49 + 40), v1, &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_5_3(v1);
    if (!v33)
    {
      (*(v25 + 32))(v29, v1, v23);
      sub_1934948FC();
      (*(v25 + 8))(v29, v23);
      goto LABEL_56;
    }

    v50 = &qword_1EAE3A9E8;
    v51 = &qword_19394F800;
    v52 = v1;
    goto LABEL_54;
  }

  v54 = v6 == 0x6E6F697461727564 && v4 == 0xE800000000000000;
  if (!v54 && (OUTLINED_FUNCTION_59_0(0x6E6F697461727564, 0xE800000000000000) & 1) == 0)
  {
    OUTLINED_FUNCTION_187_1();
    v58 = v6 == v57 && v56 == v4;
    if (v58 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, v56) & 1) != 0)
    {
      v59 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
      sub_193448758(v103 + *(v59 + 48), v13, &qword_1EAE3ACA0, &qword_193972420);
      if (__swift_getEnumTagSinglePayload(v13, 1, v102) != 1)
      {
        (*(v101 + 32))(v20, v13, v102);
        OUTLINED_FUNCTION_13_0();
        sub_1934948FC();
        v60 = OUTLINED_FUNCTION_13_0();
        v61(v60);
        goto LABEL_56;
      }

      v50 = &qword_1EAE3ACA0;
      v51 = &qword_193972420;
      v52 = v13;
      goto LABEL_54;
    }

    v62 = v6 == 1953722211 && v4 == 0xE400000000000000;
    if (v62 || (OUTLINED_FUNCTION_59_0(1953722211, 0xE400000000000000) & 1) != 0)
    {
      v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 52);
      goto LABEL_63;
    }

    v63 = v6 == 0x79636E6572727563 && v4 == 0xE800000000000000;
    if (v63 || (OUTLINED_FUNCTION_59_0(0x79636E6572727563, 0xE800000000000000) & 1) != 0)
    {
      v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 56);
      goto LABEL_63;
    }

    v64 = v6 == 0x6F6F526C65746F68 && v4 == 0xEE00746E756F436DLL;
    if (v64 || (OUTLINED_FUNCTION_59_0(0x6F6F526C65746F68, 0xEE00746E756F436DLL) & 1) != 0)
    {
      v65 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 60);
    }

    else
    {
      OUTLINED_FUNCTION_187_1();
      v69 = v6 == v68 && v67 == v4;
      if (v69 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, v67) & 1) != 0)
      {
        v40 = *(v103 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 64));
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_187_1();
      v72 = v6 == v71 + 3 && v70 == v4;
      if (!v72 && (OUTLINED_FUNCTION_59_0(v71 + 3, v70) & 1) == 0)
      {
        v73 = v6 == 0x61746E6552726163 && v4 == 0xED0000656D614E6CLL;
        if (v73 || (OUTLINED_FUNCTION_59_0(0x61746E6552726163, 0xED0000656D614E6CLL) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 72);
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_187_1();
        v76 = v75 + 4;
        v77 = v6 == v75 + 4 && v74 == v4;
        if (v77 || (OUTLINED_FUNCTION_59_0(v75 + 4, v74) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 76);
          goto LABEL_63;
        }

        v78 = v6 == 0x6D614E7974726170 && v4 == 0xE900000000000065;
        if (v78 || (OUTLINED_FUNCTION_59_0(0x6D614E7974726170, 0xE900000000000065) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 80);
          goto LABEL_63;
        }

        v79 = v6 == 0x4C52557974726170 && v4 == 0xE800000000000000;
        if (v79 || (OUTLINED_FUNCTION_59_0(0x4C52557974726170, 0xE800000000000000) & 1) != 0)
        {
          v80 = type metadata accessor for TextUnderstandingEvent.Metadata(0);
          v81 = v100;
          sub_193448758(v103 + *(v80 + 84), v100, &qword_1EAE3ACA0, &qword_193972420);
          if (__swift_getEnumTagSinglePayload(v81, 1, v102) != 1)
          {
            v82 = v101;
            v83 = v99;
            v84 = v102;
            (*(v101 + 32))(v99, v100, v102);
            sub_1934948FC();
            (*(v82 + 8))(v83, v84);
            goto LABEL_56;
          }

          v50 = &qword_1EAE3ACA0;
          v51 = &qword_193972420;
          v52 = v100;
LABEL_54:
          sub_19344E6DC(v52, v50, v51);
          goto LABEL_55;
        }

        v85 = v6 == 0x6D746E696F707061 && v4 == 0xEF656D614E746E65;
        if (v85 || (OUTLINED_FUNCTION_59_0(0x6D746E696F707061, 0xEF656D614E746E65) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 88);
          goto LABEL_63;
        }

        OUTLINED_FUNCTION_38();
        v87 = v6 == v76 && v86 == v4;
        if (v87 || (OUTLINED_FUNCTION_59_0(0xD000000000000014, v86) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 92);
          goto LABEL_63;
        }

        v88 = v6 == 0x65707954776F6873 && v4 == 0xE800000000000000;
        if (v88 || (OUTLINED_FUNCTION_59_0(0x65707954776F6873, 0xE800000000000000) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 96);
          goto LABEL_63;
        }

        v89 = v6 == 0x656D614E776F6873 && v4 == 0xE800000000000000;
        if (v89 || (OUTLINED_FUNCTION_59_0(0x656D614E776F6873, 0xE800000000000000) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 100);
          goto LABEL_63;
        }

        v90 = v6 == 0x6B636954776F6873 && v4 == 0xEE00657079547465;
        if (v90 || (OUTLINED_FUNCTION_59_0(0x6B636954776F6873, 0xEE00657079547465) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 104);
          goto LABEL_63;
        }

        v91 = v6 == 0x726F70736E617274 && v4 == 0xED00006570795474;
        if (v91 || (OUTLINED_FUNCTION_59_0(0x726F70736E617274, 0xED00006570795474) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 108);
          goto LABEL_63;
        }

        v92 = v6 == 0x726F70736E617274 && v4 == 0xED0000656D614E74;
        if (v92 || (OUTLINED_FUNCTION_59_0(0x726F70736E617274, 0xED0000656D614E74) & 1) != 0)
        {
          v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 112);
          goto LABEL_63;
        }

        v93 = v6 == 0x656D686361747461 && v4 == 0xEE0061746144746ELL;
        if (!v93 && (OUTLINED_FUNCTION_59_0(0x656D686361747461, 0xEE0061746144746ELL) & 1) == 0)
        {
          sub_19349AB64();
          OUTLINED_FUNCTION_11();
          swift_allocError();
          v97 = v96;
          *v96 = v6;
          v96[1] = v4;
          v96[5] = type metadata accessor for TextUnderstandingEvent.Metadata(0);
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v97 + 2);
          sub_1936659E0(v103, boxed_opaque_existential_1Tm, type metadata accessor for TextUnderstandingEvent.Metadata);
          *(v97 + 48) = 1;
          swift_willThrow();

          goto LABEL_56;
        }

        v94 = (v103 + *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 116));
        v95 = v94[1];
        if (v95 >> 60 != 15)
        {
          v105 = *v94;
          v106 = v95;
          goto LABEL_9;
        }

LABEL_55:
        v53 = v104;
        *v104 = 0u;
        v53[1] = 0u;
        goto LABEL_56;
      }

      v65 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 68);
    }

    v66 = v103 + v65;
    if ((v66[4] & 1) == 0)
    {
      LODWORD(v105) = *v66;
      goto LABEL_9;
    }

    goto LABEL_55;
  }

  v55 = *(type metadata accessor for TextUnderstandingEvent.Metadata(0) + 44);
LABEL_63:
  v34 = (v103 + v55);
LABEL_7:
  v35 = v34[1];
  if (!v35)
  {
    goto LABEL_55;
  }

  v105 = *v34;
  v106 = v35;
LABEL_9:
  sub_1934948FC();
LABEL_56:
  OUTLINED_FUNCTION_27();
}

uint64_t sub_19366596C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1936659E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  v4 = OUTLINED_FUNCTION_13_0();
  v5(v4);
  return a2;
}

uint64_t TextUnderstandingEvent.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for TextUnderstandingEvent(0);
  v3 = v2[5];
  sub_193669E10();
  v4 = a1 + v2[6];
  v5 = sub_19344B5D8(v4);
  v6 = v2[12];
  sub_19366E80C(v5);
  v7 = v2[13];
  sub_19366E80C(v8);
  v9 = v2[14];
  sub_19366E810(a1 + v9);
  v15 = v2[15];
  sub_19366A68C(a1 + v15);
  v21 = (a1 + v2[16]);
  j__OUTLINED_FUNCTION_10_1();
  v20 = (a1 + v2[17]);
  j__OUTLINED_FUNCTION_10_1();
  v19 = (a1 + v2[18]);
  j__OUTLINED_FUNCTION_10_1();
  v18 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  v16 = (a1 + v2[20]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = v2[22];
  sub_19366AB14();
  v22 = v2[23];
  OUTLINED_FUNCTION_7_9();
  *a1 = *sub_193669E04();
  sub_19344E6DC(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_21_32(a1 + v3);
  sub_19344E6DC(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  TextUnderstandingDocumentIdentifiers.init()(__src);
  memcpy(a1 + v2[7], __src, 0x60uLL);
  v10 = (a1 + v2[8]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a1 + v2[9]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a1 + v2[10]);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  TextUnderstandingEvent.Metadata.init()();
  sub_19344E6DC(a1 + v6, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_21_32(a1 + v6);
  sub_19344E6DC(a1 + v7, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_21_32(a1 + v7);
  sub_193665964(v24);
  memcpy(__dst, a1 + v9, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3FB48, &qword_193977E48);
  memcpy(a1 + v9, v24, 0xF8uLL);
  memcpy(v26, a1 + v15, 0xF8uLL);
  sub_19344E6DC(v26, &qword_1EAE3FB48, &qword_193977E48);

  memcpy(a1 + v15, v24, 0xF8uLL);

  *v21 = 0;
  v21[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  *v19 = 0;
  v19[1] = 0;
  *v18 = 0;
  v18[1] = 0;
  *v16 = 0;
  v16[1] = 0;
  *(a1 + v2[21]) = 0;
  sub_19344E6DC(a1 + v17, &qword_1EAE3ACA0, &qword_193972420);
  v13 = sub_19393BD10();
  result = __swift_storeEnumTagSinglePayload(a1 + v17, 1, 1, v13);
  *(a1 + v22) = 2;
  return result;
}

BOOL static TextUnderstandingEvent.== infix(_:_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = sub_19393BD10();
  OUTLINED_FUNCTION_0();
  v134 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v133 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3ACA0, &qword_193972420);
  v11 = OUTLINED_FUNCTION_47(v10);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v128 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F118, &qword_193972428);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  v137 = &v128 - v14;
  v15 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v141 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_1();
  v139 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v21 = OUTLINED_FUNCTION_47(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v138 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v128 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v140 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v128 - v32;
  v34 = type metadata accessor for TextUnderstandingEvent(0);
  v35 = v34[7];
  memcpy(v155, (v4 + v35), sizeof(v155));
  memcpy(v151, (v4 + v35), 0x60uLL);
  v36 = v34[7];
  memcpy(v156, (v3 + v36), sizeof(v156));
  memcpy(v149, (v3 + v36), 0x60uLL);
  sub_19365A03C(v155, v154);
  sub_19365A03C(v156, v154);
  sub_19365AB48();
  LOBYTE(v36) = sub_19393C550();
  memcpy(v157, v149, sizeof(v157));
  sub_19365A098(v157);
  memcpy(__dst, v151, 0x60uLL);
  sub_19365A098(__dst);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v34[8]);
  v39 = v39 && v37 == v38;
  if (!v39 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v34[9]);
  v42 = v39 && v40 == v41;
  if (!v42 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_52(v34[10]);
  v45 = v39 && v43 == v44;
  if (!v45 && (sub_19393CA30() & 1) == 0)
  {
    return 0;
  }

  v131 = v5;
  type metadata accessor for TextUnderstandingEvent.Metadata(0);
  OUTLINED_FUNCTION_6_47();
  sub_193667288(v46, v47, &protocol conformance descriptor for TextUnderstandingEvent.Metadata);
  if ((sub_19393C550() & 1) == 0)
  {
    return 0;
  }

  v132 = v3;
  v48 = v34[12];
  v49 = *(v27 + 48);
  v129 = v4;
  v130 = v34;
  sub_1934486F8(v4 + v48, v33, &qword_1EAE3A9E8, &qword_19394F800);
  sub_1934486F8(v132 + v48, &v33[v49], &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v33);
  if (v39)
  {
    OUTLINED_FUNCTION_13_25(&v33[v49]);
    if (v39)
    {
      sub_19344E6DC(v33, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_28;
    }

LABEL_26:
    v51 = &qword_1EAE3B968;
    v52 = &qword_193972430;
    v53 = v33;
LABEL_58:
    sub_19344E6DC(v53, v51, v52);
    return 0;
  }

  sub_1934486F8(v33, v26, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(&v33[v49]);
  if (v50)
  {
    (*(v141 + 8))(v26, v15);
    goto LABEL_26;
  }

  v54 = v141;
  v55 = v139;
  (*(v141 + 32))(v139, &v33[v49], v15);
  OUTLINED_FUNCTION_0_69();
  sub_193667288(v56, v57, MEMORY[0x1E6969550]);
  v58 = sub_19393C550();
  v59 = *(v54 + 8);
  v59(v55, v15);
  v59(v26, v15);
  sub_19344E6DC(v33, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v58 & 1) == 0)
  {
    return 0;
  }

LABEL_28:
  v60 = v130[13];
  v61 = *(v27 + 48);
  v62 = v140;
  OUTLINED_FUNCTION_15_4(v129 + v60, v140);
  OUTLINED_FUNCTION_15_4(v132 + v60, v62 + v61);
  OUTLINED_FUNCTION_13_25(v62);
  if (v39)
  {
    OUTLINED_FUNCTION_13_25(v62 + v61);
    if (v39)
    {
      sub_19344E6DC(v62, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v63 = v138;
  sub_1934486F8(v62, v138, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_13_25(v62 + v61);
  if (v64)
  {
    (*(v141 + 8))(v63, v15);
LABEL_36:
    v51 = &qword_1EAE3B968;
    v52 = &qword_193972430;
    v53 = v62;
    goto LABEL_58;
  }

  v65 = v141;
  v66 = v62 + v61;
  v67 = v139;
  (*(v141 + 32))(v139, v66, v15);
  OUTLINED_FUNCTION_0_69();
  sub_193667288(v68, v69, MEMORY[0x1E6969550]);
  v70 = sub_19393C550();
  v71 = *(v65 + 8);
  v71(v67, v15);
  v71(v63, v15);
  sub_19344E6DC(v62, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v70 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  OUTLINED_FUNCTION_20_37(v152);
  OUTLINED_FUNCTION_27_25(v153);
  OUTLINED_FUNCTION_20_37(v151);
  OUTLINED_FUNCTION_27_25(&v151[248]);
  OUTLINED_FUNCTION_20_37(v154);
  OUTLINED_FUNCTION_25_29(v154);
  if (v39)
  {
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v149);
    if (!v39)
    {
      OUTLINED_FUNCTION_15_4(v152, v150);
      v74 = v153;
      v75 = v150;
LABEL_56:
      OUTLINED_FUNCTION_15_4(v74, v75);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_17_32(v150);
    OUTLINED_FUNCTION_15_4(v152, v148);
    OUTLINED_FUNCTION_15_4(v153, v148);
    sub_19344E6DC(v150, &qword_1EAE3FB48, &qword_193977E48);
  }

  else
  {
    OUTLINED_FUNCTION_17_32(v150);
    OUTLINED_FUNCTION_17_32(v148);
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v149);
    if (v72)
    {
      memcpy(v147, v148, sizeof(v147));
      OUTLINED_FUNCTION_15_4(v152, v146);
      OUTLINED_FUNCTION_15_4(v153, v146);
      OUTLINED_FUNCTION_15_4(v150, v146);
      v73 = v147;
LABEL_55:
      sub_193666B30(v73);
LABEL_57:
      memcpy(v149, v151, sizeof(v149));
      v51 = &unk_1EAE3FB58;
      v52 = &unk_193977EB8;
      v53 = v149;
      goto LABEL_58;
    }

    memcpy(v147, &v151[248], sizeof(v147));
    OUTLINED_FUNCTION_23_33(v152);
    OUTLINED_FUNCTION_23_33(v153);
    OUTLINED_FUNCTION_23_33(v150);
    sub_193666B84();
    v76 = sub_19393C550();
    memcpy(v145, v147, sizeof(v145));
    sub_193666B30(v145);
    memcpy(v146, v148, sizeof(v146));
    sub_193666B30(v146);
    OUTLINED_FUNCTION_17_32(v147);
    sub_19344E6DC(v147, &qword_1EAE3FB48, &qword_193977E48);
    if ((v76 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_20_37(v147);
  OUTLINED_FUNCTION_27_25(v148);
  OUTLINED_FUNCTION_20_37(v151);
  OUTLINED_FUNCTION_27_25(&v151[248]);
  OUTLINED_FUNCTION_20_37(v150);
  OUTLINED_FUNCTION_25_29(v150);
  if (v39)
  {
    OUTLINED_FUNCTION_13_36();
    OUTLINED_FUNCTION_25_29(v149);
    if (v39)
    {
      OUTLINED_FUNCTION_17_32(v146);
      OUTLINED_FUNCTION_15_4(v147, v145);
      OUTLINED_FUNCTION_15_4(v148, v145);
      sub_19344E6DC(v146, &qword_1EAE3FB48, &qword_193977E48);
      goto LABEL_61;
    }

    OUTLINED_FUNCTION_15_4(v147, v146);
    v74 = v148;
    v75 = v146;
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_17_32(v146);
  OUTLINED_FUNCTION_17_32(v145);
  OUTLINED_FUNCTION_13_36();
  OUTLINED_FUNCTION_25_29(v149);
  if (v77)
  {
    memcpy(v144, v145, sizeof(v144));
    OUTLINED_FUNCTION_15_4(v147, v143);
    OUTLINED_FUNCTION_15_4(v148, v143);
    OUTLINED_FUNCTION_15_4(v146, v143);
    v73 = v144;
    goto LABEL_55;
  }

  memcpy(v144, &v151[248], sizeof(v144));
  OUTLINED_FUNCTION_22_30(v147);
  OUTLINED_FUNCTION_22_30(v148);
  OUTLINED_FUNCTION_22_30(v146);
  sub_193666B84();
  v79 = sub_19393C550();
  memcpy(v142, v144, sizeof(v142));
  sub_193666B30(v142);
  memcpy(v143, v145, sizeof(v143));
  sub_193666B30(v143);
  OUTLINED_FUNCTION_17_32(v144);
  sub_19344E6DC(v144, &qword_1EAE3FB48, &qword_193977E48);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  OUTLINED_FUNCTION_1_56();
  if (v82)
  {
    if (!v80)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v81);
    v85 = v39 && v83 == v84;
    if (!v85 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v80)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_56();
  if (v88)
  {
    if (!v86)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v87);
    v91 = v39 && v89 == v90;
    if (!v91 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v86)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_56();
  if (v94)
  {
    if (!v92)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v93);
    v97 = v39 && v95 == v96;
    if (!v97 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_56();
  if (v100)
  {
    if (!v98)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v99);
    v103 = v39 && v101 == v102;
    if (!v103 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_56();
  if (v106)
  {
    if (!v104)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v105);
    v109 = v39 && v107 == v108;
    if (!v109 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  if (*(v129 + v130[21]) != *(v132 + v130[21]))
  {
    return 0;
  }

  v110 = v130[22];
  v111 = *(v135 + 48);
  v112 = v137;
  OUTLINED_FUNCTION_15_4(v129 + v110, v137);
  OUTLINED_FUNCTION_15_4(v132 + v110, v112 + v111);
  OUTLINED_FUNCTION_28_21(v112);
  if (v39)
  {
    OUTLINED_FUNCTION_28_21(&v137[v111]);
    if (v39)
    {
      sub_19344E6DC(v137, &qword_1EAE3ACA0, &qword_193972420);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v113 = v137;
  sub_1934486F8(v137, v136, &qword_1EAE3ACA0, &qword_193972420);
  OUTLINED_FUNCTION_28_21(v113 + v111);
  if (v114)
  {
    (*(v134 + 8))(v136, v131);
LABEL_115:
    v51 = &qword_1EAE3F118;
    v52 = &qword_193972428;
    v53 = v137;
    goto LABEL_58;
  }

  v116 = v133;
  v115 = v134;
  v117 = v137;
  v118 = &v137[v111];
  v119 = v131;
  (*(v134 + 32))(v133, v118, v131);
  OUTLINED_FUNCTION_7_34();
  sub_193667288(v120, v121, MEMORY[0x1E6968FC8]);
  v122 = v136;
  v123 = sub_19393C550();
  v124 = *(v115 + 8);
  v124(v116, v119);
  v124(v122, v119);
  sub_19344E6DC(v117, &qword_1EAE3ACA0, &qword_193972420);
  if ((v123 & 1) == 0)
  {
    return 0;
  }

LABEL_117:
  v125 = v130[23];
  v126 = *(v129 + v125);
  v127 = *(v132 + v125);
  if (v126 != 2)
  {
    return v127 != 2 && ((v126 ^ v127) & 1) == 0;
  }

  return v127 == 2;
}