MusicKit::LegacyModelKeepLocalManagedStatus_optional __swiftcall LegacyModelKeepLocalManagedStatus.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() keepLocalManagedStatusForRawValue_];
  v4 = 7;
  if (v3 < 7)
  {
    v4 = v3;
  }

  *v2 = v4;
  return v3;
}

Swift::Int sub_21767171C@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatus.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t LegacyModelKeepLocalManagedStatus.description.getter()
{
  result = 0x656E6F6E2ELL;
  switch(*v0)
  {
    case 1:
    case 2:
      result = OUTLINED_FUNCTION_8_76();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_92();
      break;
    case 4:
      result = OUTLINED_FUNCTION_7_72();
      break;
    case 5:
      result = OUTLINED_FUNCTION_4_108();
      break;
    case 6:
      result = OUTLINED_FUNCTION_9_75();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217671858()
{
  result = qword_27CB2BB70;
  if (!qword_27CB2BB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BB78, &qword_21778D718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB70);
  }

  return result;
}

unint64_t sub_2176718C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB80;
  if (!qword_27CB2BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB80);
  }

  return result;
}

_BYTE *sub_217671924(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217671A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB88;
  if (!qword_27CB2BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB88);
  }

  return result;
}

unint64_t sub_217671ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB90;
  if (!qword_27CB2BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB90);
  }

  return result;
}

unint64_t sub_217671B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BB98;
  if (!qword_27CB2BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BB98);
  }

  return result;
}

unint64_t sub_217671B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBA0;
  if (!qword_27CB2BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBA0);
  }

  return result;
}

unint64_t sub_217671BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBA8;
  if (!qword_27CB2BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBA8);
  }

  return result;
}

unint64_t sub_217671C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBB0;
  if (!qword_27CB2BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBB0);
  }

  return result;
}

unint64_t sub_217671C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBB8;
  if (!qword_27CB2BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBB8);
  }

  return result;
}

unint64_t sub_217671CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBC0;
  if (!qword_27CB2BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBC0);
  }

  return result;
}

unint64_t sub_217671D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBC8;
  if (!qword_27CB2BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBC8);
  }

  return result;
}

unint64_t sub_217671D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBD0;
  if (!qword_27CB2BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBD0);
  }

  return result;
}

unint64_t sub_217671DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBD8;
  if (!qword_27CB2BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBD8);
  }

  return result;
}

unint64_t sub_217671E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBE0;
  if (!qword_27CB2BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBE0);
  }

  return result;
}

unint64_t sub_217671E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBE8;
  if (!qword_27CB2BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBE8);
  }

  return result;
}

unint64_t sub_217671EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBF0;
  if (!qword_27CB2BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBF0);
  }

  return result;
}

unint64_t sub_217671F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BBF8;
  if (!qword_27CB2BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BBF8);
  }

  return result;
}

unint64_t sub_217671F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC00;
  if (!qword_27CB2BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC00);
  }

  return result;
}

unint64_t sub_217671FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC08;
  if (!qword_27CB2BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC08);
  }

  return result;
}

uint64_t CloudSnippet.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudSnippet.Kind.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_2176720FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudSnippet.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_21767213C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudSnippet.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217672218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC10;
  if (!qword_27CB2BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC10);
  }

  return result;
}

unint64_t sub_217672280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC18;
  if (!qword_27CB2BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC18);
  }

  return result;
}

MusicKit::Playlist::Kind_optional __swiftcall CloudPlaylist.Kind.convertToPlaylistKind()()
{
  v2 = v0;
  result.value = 101;
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0x6169726F74696465 && v4 == 0xE90000000000006CLL;
  if (v6 || (result.value = OUTLINED_FUNCTION_196(0x6169726F74696465, 0xE90000000000006CLL), (result.value & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    result.value = 101;
    v8 = v5 == 0x6C616E7265747865 && v4 == 0xE800000000000000;
    if (v8 || (result.value = OUTLINED_FUNCTION_196(0x6C616E7265747865, 0xE800000000000000), (result.value & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      result.value = 112;
      v9 = v5 == 0x6C616E6F73726570 && v4 == 0xEC00000078696D2DLL;
      if (v9 || (result.value = OUTLINED_FUNCTION_196(0x6C616E6F73726570, 0xEC00000078696D2DLL), (result.value & 1) != 0))
      {
        v7 = 2;
      }

      else
      {
        result.value = 114;
        v10 = v5 == 0x79616C706572 && v4 == 0xE600000000000000;
        if (v10 || (result.value = OUTLINED_FUNCTION_196(0x79616C706572, 0xE600000000000000), (result.value & 1) != 0))
        {
          v7 = 3;
        }

        else
        {
          result.value = 117;
          v7 = 4;
          if (v5 != 0x6168732D72657375 || v4 != 0xEB00000000646572)
          {
            result.value = OUTLINED_FUNCTION_196(0x6168732D72657375, 0xEB00000000646572);
            if (result.value)
            {
              v7 = 4;
            }

            else
            {
              v7 = 5;
            }
          }
        }
      }
    }
  }

  *v2 = v7;
  return result;
}

uint64_t CloudPlaylist.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudPlaylist.Kind.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_217672518@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudPlaylist.Kind.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_217672558@<X0>(uint64_t *a1@<X8>)
{
  result = CloudPlaylist.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217672634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC20;
  if (!qword_27CB2BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC20);
  }

  return result;
}

unint64_t sub_21767269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE44A0;
  if (!qword_280BE44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE44A0);
  }

  return result;
}

void *CloudFlexAnalysis.init(id:attributes:relationships:views:meta:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  *a7 = a2;
  *(a7 + 8) = a3;
  result = memcpy((a7 + 16), __src, 0x88uLL);
  *(a7 + 152) = v8;
  *(a7 + 153) = v9;
  *(a7 + 154) = v10;
  return result;
}

__n128 CloudFlexAnalysis.Attributes.init(arousal:entryPoints:exitPoints:valence:videoEvents:visualTempo:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v7;
  v8 = a4[1];
  *(a7 + 48) = *a4;
  *(a7 + 64) = v8;
  *(a7 + 80) = *a5;
  result = *a6;
  v10 = *(a6 + 16);
  *(a7 + 104) = *a6;
  v11 = *(a5 + 16);
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 96) = v11;
  *(a7 + 120) = v10;
  return result;
}

uint64_t sub_217672788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

uint64_t CloudFlexAnalysis.Attributes.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2176727F8(v2);
}

uint64_t sub_2176727F8(uint64_t result)
{
  if (result)
  {
    sub_217751DE8();
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

BOOL static CloudFlexAnalysis.Attributes.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v104 = a1[5];
  v105 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v102 = a2[7];
  v103 = a2[5];
  v100 = a2[9];
  v101 = a2[6];
  if (!v5)
  {
    if (!v9)
    {
      v95 = a2[8];
      v96 = a1[9];
      v97 = a1[6];
      v98 = a1[7];
      v99 = a1[8];
      v90 = a2[12];
      v91 = a2[10];
      v88 = a1[15];
      v89 = a2[11];
      v92 = a1[10];
      v93 = a1[11];
      v94 = a1[12];
      v82 = a2[16];
      v83 = a2[13];
      v84 = a2[14];
      v85 = a2[15];
      v81 = a1[16];
      v86 = a1[13];
      v87 = a1[14];
      v33 = OUTLINED_FUNCTION_8_77();
      sub_217672788(v33, v34, v35, 0);
      v36 = OUTLINED_FUNCTION_4_109();
      sub_217672788(v36, v37, v38, 0);
      v39 = OUTLINED_FUNCTION_8_77();
      sub_2176742C8(v39, v40, v41, 0);
      goto LABEL_11;
    }

LABEL_6:
    v106 = *a1;
    v107 = v2;
    v108 = v4;
    v109 = v5;
    v110 = v7;
    v111 = v6;
    v112 = v8;
    v113 = v9;
    v25 = OUTLINED_FUNCTION_8_77();
    sub_217672788(v25, v26, v27, v5);
    v28 = OUTLINED_FUNCTION_4_109();
    v31 = v9;
LABEL_7:
    sub_217672788(v28, v29, v30, v31);
    sub_217674260(&v106);
    return 0;
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  v95 = a2[8];
  v96 = a1[9];
  v97 = a1[6];
  v98 = a1[7];
  v99 = a1[8];
  v90 = a2[12];
  v91 = a2[10];
  v88 = a1[15];
  v89 = a2[11];
  v92 = a1[10];
  v93 = a1[11];
  v94 = a1[12];
  v82 = a2[16];
  v83 = a2[13];
  v84 = a2[14];
  v85 = a2[15];
  v81 = a1[16];
  v86 = a1[13];
  v87 = a1[14];
  v11 = OUTLINED_FUNCTION_8_77();
  sub_217672788(v11, v12, v13, v5);
  v14 = OUTLINED_FUNCTION_4_109();
  sub_217672788(v14, v15, v16, v9);
  LOBYTE(v106) = v6 & 1;
  sub_2172A9414(v3, v2 & 1, v4, v5, v7, v6 & 1, v8, v9);
  v18 = v17;
  v19 = OUTLINED_FUNCTION_4_109();
  sub_2176742C8(v19, v20, v21, v9);
  v22 = OUTLINED_FUNCTION_8_77();
  sub_2176742C8(v22, v23, v24, v5);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v105)
  {
    if (!v10)
    {
      return 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_131_1();
    sub_217271D10();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v44 = v104;
  if (v104)
  {
    if (!v103)
    {
      return 0;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_93();
    sub_217271D10();
    v44 = v45;

    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v103)
  {
    return 0;
  }

  v46 = v96;
  if (!v96)
  {
    v47 = v98;
    v48 = v99;
    v49 = v97;
    v50 = v100;
    if (!v100)
    {
      sub_217672788(v97, v98, v99, 0);
      sub_217672788(v101, v102, v95, 0);
      v60 = OUTLINED_FUNCTION_4_109();
      sub_2176742C8(v60, v61, v62, 0);
      goto LABEL_29;
    }

LABEL_26:
    v106 = v49;
    v107 = v47;
    v108 = v48;
    v109 = v96;
    v110 = v101;
    v111 = v102;
    v59 = v95;
LABEL_27:
    v112 = v59;
    v113 = v50;
    sub_217672788(v49, v47, v48, v46);
    v28 = OUTLINED_FUNCTION_4_109();
    v31 = v50;
    goto LABEL_7;
  }

  v47 = v98;
  v48 = v99;
  v49 = v97;
  v50 = v100;
  if (!v100)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_87();
  v52 = v51;
  sub_217672788(v53, v54, v55, v51);
  sub_217672788(v101, v102, v95, v100);
  OUTLINED_FUNCTION_14_58();
  OUTLINED_FUNCTION_42_35();
  v56 = OUTLINED_FUNCTION_6_8();
  sub_2176742C8(v56, v57, v58, v52);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (!v92)
  {
    v68 = v94;
    v63 = v91;
    if (!v91)
    {
      sub_2176727F8(0);
      sub_2176727F8(0);
      sub_21767430C(0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  v63 = v91;
  if (!v91)
  {
LABEL_36:
    sub_2176727F8(v92);
    sub_2176727F8(v63);
    v71 = OUTLINED_FUNCTION_4_109();
    sub_21767430C(v71);
    v72 = v63;
LABEL_39:
    sub_21767430C(v72);
    return 0;
  }

  if ((sub_217271798(v92, v91) & 1) == 0)
  {
    v73 = OUTLINED_FUNCTION_6_8();
    sub_2176727F8(v73);
    sub_2176727F8(v91);
    goto LABEL_38;
  }

  v64 = sub_2172717F0(v93, v89);
  v65 = OUTLINED_FUNCTION_6_8();
  sub_2176727F8(v65);
  v66 = OUTLINED_FUNCTION_5_3();
  sub_2176727F8(v66);
  if ((v64 & 1) == 0)
  {
LABEL_38:
    v74 = OUTLINED_FUNCTION_5_3();
    sub_21767430C(v74);
    v72 = OUTLINED_FUNCTION_6_8();
    goto LABEL_39;
  }

  sub_217261FB0(v94, v90);
  v68 = v67;
  v69 = OUTLINED_FUNCTION_5_3();
  sub_21767430C(v69);
  v70 = OUTLINED_FUNCTION_6_8();
  sub_21767430C(v70);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_41:
  v46 = v81;
  if (!v81)
  {
    v48 = v88;
    v50 = v82;
    if (!v82)
    {
      sub_217672788(v86, v87, v88, 0);
      sub_217672788(v83, v84, v85, 0);
      v78 = OUTLINED_FUNCTION_4_109();
      sub_2176742C8(v78, v79, v80, 0);
      return 1;
    }

    goto LABEL_46;
  }

  v48 = v88;
  v50 = v82;
  if (!v82)
  {
LABEL_46:
    v49 = v86;
    v47 = v87;
    v106 = v86;
    v107 = v87;
    v108 = v48;
    v109 = v81;
    v110 = v83;
    v111 = v84;
    v59 = v85;
    goto LABEL_27;
  }

  sub_217672788(v86, v87, v88, v81);
  sub_217672788(v83, v84, v85, v82);
  OUTLINED_FUNCTION_14_58();
  OUTLINED_FUNCTION_42_35();
  v75 = OUTLINED_FUNCTION_6_8();
  sub_2176742C8(v75, v76, v77, v81);
  return (v68 & 1) != 0;
}

uint64_t sub_217672D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_217753058();

            if (v11)
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

uint64_t sub_217672F44(char a1)
{
  result = 0x6C6173756F7261;
  switch(a1)
  {
    case 1:
      result = 0x696F507972746E65;
      break;
    case 2:
      result = 0x6E696F5074697865;
      break;
    case 3:
      result = 0x65636E656C6176;
      break;
    case 4:
      result = 0x6576456F65646976;
      break;
    case 5:
      result = 0x65546C6175736976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217673024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217672D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21767304C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217674358(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217673088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217674358(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudFlexAnalysis.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC48, &qword_21778E148);
  OUTLINED_FUNCTION_0_0();
  v31 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_87_2();
  v7 = *v0;
  v8 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v28 = v0[7];
  v29 = v0[6];
  v26 = v0[9];
  v27 = v0[8];
  v25 = v0[10];
  v24 = v0[13];
  v22 = v0[15];
  v23 = v0[14];
  v21 = v0[16];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  v11 = sub_217672788(v7, v8, v10, v9);
  sub_217674358(v11, v12, v13);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC58, &qword_21778E150);
  sub_2176743AC();
  OUTLINED_FUNCTION_7_73();
  sub_217752F38();
  if (v1)
  {
    v14 = sub_2176742C8(v7, v8, v10, v9);
    (*(v31 + 8))(v2, v30, v14);
  }

  else
  {
    sub_2176742C8(v7, v8, v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC78, &qword_21778E158);
    sub_217676CB4(&unk_27CB2BC80);
    v15 = OUTLINED_FUNCTION_7_73();
    OUTLINED_FUNCTION_49_29(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_7_73();
    OUTLINED_FUNCTION_49_29(v18, v19, v20);
    sub_217672788(v29, v28, v27, v26);
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_2176742C8(v29, v28, v27, v26);
    sub_2176727F8(v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCA8, &qword_21778E168);
    sub_217674614();
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_21767430C(v25);
    sub_217672788(v24, v23, v22, v21);
    OUTLINED_FUNCTION_7_73();
    sub_217752F38();
    sub_2176742C8(v24, v23, v22, v21);
    (*(v31 + 8))(v2, v30);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.Attributes.hash(into:)(const void *a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v1[9];
  v7 = v1[16];
  v10 = v1[10];
  if (v4)
  {
    OUTLINED_FUNCTION_24();
    CloudFlexAnalysis.CloudSampledValues.hash(into:)();
    sub_217751DE8();
    sub_217265A08(a1, v4);

    if (v3)
    {
LABEL_3:
      OUTLINED_FUNCTION_24();
      sub_2172822E0();
      goto LABEL_6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_6:
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_131_1();
    sub_2172822E0();
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v6)
    {
LABEL_8:
      OUTLINED_FUNCTION_24();
      CloudFlexAnalysis.CloudSampledValues.hash(into:)();
      sub_217751DE8();
      sub_217265A08(a1, v6);

      if (v10)
      {
        goto LABEL_9;
      }

LABEL_15:
      OUTLINED_FUNCTION_25();
      if (v7)
      {
        goto LABEL_10;
      }

LABEL_16:
      OUTLINED_FUNCTION_25();
      return;
    }
  }

  OUTLINED_FUNCTION_25();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_9:
  OUTLINED_FUNCTION_24();
  sub_217282254();
  sub_2172822A0();
  sub_217751DE8();
  v8 = OUTLINED_FUNCTION_93();
  sub_217265A08(v8, v9);

  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_24();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)();
  sub_217751DE8();
  sub_217265A08(a1, v7);
}

uint64_t CloudFlexAnalysis.Attributes.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudFlexAnalysis.Attributes.hash(into:)(v1);
  return sub_217753238();
}

void CloudFlexAnalysis.Attributes.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCC8, &qword_21778E170);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_128();
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_217674358(v6, v7, v8);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC58, &qword_21778E150);
    sub_217676C28();
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v15 = v4;
    v27 = v31;
    v28 = v32;
    v21 = v34;
    v22 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC78, &qword_21778E158);
    sub_217676CB4(&unk_27CB2BCD8);
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v24 = v31;
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v23 = v31;
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v17 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCA8, &qword_21778E168);
    LOBYTE(v30[0]) = 4;
    sub_217676DAC();
    OUTLINED_FUNCTION_34_36();
    OUTLINED_FUNCTION_10_62();
    sub_217752E58();
    v10 = v31;
    v9 = v32;
    v26 = v33;
    OUTLINED_FUNCTION_4_7();
    sub_217752E58();
    v25 = v32;
    v11 = OUTLINED_FUNCTION_3_108();
    v12(v11);
    v29 = v48;
    v16 = v49;
    v13 = v51;
    v14 = v50;
    v30[0] = v27;
    v30[1] = v28;
    v30[2] = v22;
    v30[3] = v21;
    v30[4] = v24;
    v30[5] = v23;
    v30[6] = v18;
    v30[7] = v19;
    v30[8] = v20;
    v30[9] = v17;
    v30[10] = v10;
    v30[11] = v9;
    v30[12] = v26;
    v30[13] = v48;
    v30[14] = v49;
    v30[15] = v50;
    v30[16] = v51;
    memcpy(v15, v30, 0x88uLL);
    sub_217676E38(v30, &v31);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v31 = v27;
    v32 = v28;
    v33 = v22;
    v34 = v21;
    v35 = v24;
    v36 = v23;
    v37 = v18;
    v38 = v19;
    v39 = v20;
    v40 = v17;
    v41 = v10;
    v42 = v25;
    v43 = v26;
    v44 = v29;
    v45 = v16;
    v46 = v14;
    v47 = v13;
    sub_217676E70(&v31);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217673B7C(uint64_t a1)
{
  sub_2177531E8();
  CloudFlexAnalysis.Attributes.hash(into:)(v2);
  return sub_217753238();
}

MusicKit::CloudFlexAnalysis::CloudEvents __swiftcall CloudFlexAnalysis.CloudEvents.init(timeInSeconds:score:)(Swift::OpaquePointer timeInSeconds, Swift::OpaquePointer score)
{
  v2->_rawValue = timeInSeconds._rawValue;
  v2[1]._rawValue = score._rawValue;
  result.score = score;
  result.timeInSeconds = timeInSeconds;
  return result;
}

uint64_t static CloudFlexAnalysis.CloudEvents.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_217271798(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_93();

  return sub_2172717F0(v2, v3);
}

uint64_t sub_217673C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

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

uint64_t sub_217673CF0(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65536E49656D6974;
  }
}

uint64_t sub_217673D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217673C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217673D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217676EA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217673DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217676EA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudFlexAnalysis.CloudEvents.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BCF0, &qword_21778E178);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_87_2();
  v27 = OUTLINED_FUNCTION_160(v22, v22[3]);
  v30 = sub_217676EA0(v27, v28, v29);
  sub_217751DE8();
  OUTLINED_FUNCTION_125_4();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
  OUTLINED_FUNCTION_33_41();
  sub_217676F54(v31);
  OUTLINED_FUNCTION_18_52();
  sub_217752F88();

  if (!v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_33_41();
    sub_217676EF4(v33);
    OUTLINED_FUNCTION_18_52();
    sub_217752F88();
  }

  (*(v25 + 8))(v20, v23, v32);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.CloudEvents.hash(into:)()
{
  sub_217282254();
  OUTLINED_FUNCTION_93();

  sub_2172822A0();
}

uint64_t CloudFlexAnalysis.CloudEvents.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_217282254();
  sub_2172822A0();
  return sub_217753238();
}

void CloudFlexAnalysis.CloudEvents.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD00, &qword_21778E190);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_128();
  v16 = OUTLINED_FUNCTION_131_1();
  v18 = OUTLINED_FUNCTION_160(v16, v17);
  sub_217676EA0(v18, v19, v20);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_32();
    sub_217676F54(v21);
    OUTLINED_FUNCTION_10_62();
    sub_217752EA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_32();
    sub_217676EF4(v22);
    OUTLINED_FUNCTION_10_62();
    sub_217752EA8();
    v23 = OUTLINED_FUNCTION_5_3();
    v24(v23);
    *v14 = a10;
    v14[1] = a10;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217674260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BC40, &qword_21778E140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2176742C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

double sub_21767430C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_217674358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC50;
  if (!qword_27CB2BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC50);
  }

  return result;
}

unint64_t sub_2176743AC()
{
  result = qword_27CB2BC60;
  if (!qword_27CB2BC60)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC58, &qword_21778E150);
    v6 = sub_217674438(v1, v2, v3);
    sub_21767448C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC60);
  }

  return result;
}

unint64_t sub_217674438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC68;
  if (!qword_27CB2BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC68);
  }

  return result;
}

unint64_t sub_21767448C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC70;
  if (!qword_27CB2BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC70);
  }

  return result;
}

unint64_t sub_2176744E0()
{
  result = qword_27CB2BC88;
  if (!qword_27CB2BC88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC90, &qword_21778E160);
    v6 = sub_21767456C(v1, v2, v3);
    sub_2176745C0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC88);
  }

  return result;
}

unint64_t sub_21767456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BC98;
  if (!qword_27CB2BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BC98);
  }

  return result;
}

unint64_t sub_2176745C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BCA0;
  if (!qword_27CB2BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCA0);
  }

  return result;
}

unint64_t sub_217674614()
{
  result = qword_27CB2BCB0;
  if (!qword_27CB2BCB0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BCA8, &qword_21778E168);
    v6 = sub_2176746A0(v1, v2, v3);
    sub_2176746F4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCB0);
  }

  return result;
}

unint64_t sub_2176746A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BCB8;
  if (!qword_27CB2BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCB8);
  }

  return result;
}

unint64_t sub_2176746F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BCC0;
  if (!qword_27CB2BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCC0);
  }

  return result;
}

uint64_t sub_217674750(uint64_t a1)
{
  sub_2177531E8();
  CloudFlexAnalysis.CloudEvents.hash(into:)();
  return sub_217753238();
}

uint64_t CloudFlexAnalysis.CloudTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532A8();
  if (!v2)
  {
    OUTLINED_FUNCTION_160(v9, v9[3]);
    v5 = sub_217753078();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CloudFlexAnalysis.CloudTag.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2176749C8@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudFlexAnalysis.CloudTag.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217674A08@<X0>(uint64_t *a1@<X8>)
{
  result = CloudFlexAnalysis.CloudTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall CloudFlexAnalysis.CloudPivotPoints.init(timeInSeconds:gainTimeInSeconds:gainValue:fadeToBlack:tags:)(MusicKit::CloudFlexAnalysis::CloudPivotPoints *__return_ptr retstr, Swift::Double timeInSeconds, Swift::OpaquePointer gainTimeInSeconds, Swift::OpaquePointer gainValue, Swift::Double_optional fadeToBlack, Swift::OpaquePointer_optional tags)
{
  retstr->timeInSeconds = timeInSeconds;
  retstr->gainTimeInSeconds = gainTimeInSeconds;
  retstr->gainValue = gainValue;
  retstr->fadeToBlack.value = *&fadeToBlack.is_nil;
  retstr->fadeToBlack.is_nil = tags.value._rawValue & 1;
  *(&retstr->tags.value._rawValue + 7) = *&tags.is_nil;
}

BOOL static CloudFlexAnalysis.CloudPivotPoints.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 16);
  v9 = *(a1 + 16);
  if ((sub_217271798(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_217271798(v9, v8) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_93();
    return (sub_2172849CC() & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217674B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000002177B4740 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1936154996 && a2 == 0xE400000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_217753058();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_217674CF0(char a1)
{
  result = 0x65536E49656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E696167;
      break;
    case 3:
      result = 0x6C426F5465646166;
      break;
    case 4:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217674DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217674B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217674DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217676FB4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217674E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217676FB4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudFlexAnalysis.CloudPivotPoints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD08, &qword_21778E198);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_87_2();
  v8 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_217676FB4(v8, v9, v10);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F68();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_217676F54(v11);
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_44_2();
    sub_217752F88();
    OUTLINED_FUNCTION_44_2();
    sub_217752F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD18, &qword_21778E1A0);
    sub_217677008(&unk_27CB2BD20);
    OUTLINED_FUNCTION_32_40();
    OUTLINED_FUNCTION_18_52();
    sub_217752F38();
  }

  (*(v6 + 8))(v2, v4);
  OUTLINED_FUNCTION_46_1();
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA3580](*&v1);
  sub_217282254();
  sub_217282254();
  if (v3 != 1)
  {
    sub_217753208();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEA3580](v6);
    if (v4)
    {
      goto LABEL_5;
    }

    return sub_217753208();
  }

  sub_217753208();
  if (!v4)
  {
    return sub_217753208();
  }

LABEL_5:
  sub_217753208();

  return sub_2172849D8();
}

uint64_t CloudFlexAnalysis.CloudPivotPoints.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CloudFlexAnalysis.CloudPivotPoints.hash(into:)();
  return sub_217753238();
}

void CloudFlexAnalysis.CloudPivotPoints.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD30, &qword_21778E1A8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_160(a1, a1[3]);
  sub_217676FB4(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v20) = 0;
    OUTLINED_FUNCTION_45_34();
    sub_217752E88();
    v10 = v9;
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_32();
    sub_217676F54(v11);
    OUTLINED_FUNCTION_28_47();
    v12 = v20;
    OUTLINED_FUNCTION_28_47();
    v13 = v20;
    LOBYTE(v20) = 3;
    OUTLINED_FUNCTION_45_34();
    v14 = sub_217752E38();
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD18, &qword_21778E1A0);
    sub_217677008(&unk_27CB2BD38);
    sub_217752E58();
    v16 = OUTLINED_FUNCTION_9_76();
    v17(v16);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v13;
    *(v19 + 24) = v14;
    *(v19 + 32) = v18 & 1;
    *(v19 + 40) = v20;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_217675578(uint64_t a1)
{
  sub_2177531E8();
  CloudFlexAnalysis.CloudPivotPoints.hash(into:)();
  return sub_217753238();
}

void __swiftcall CloudFlexAnalysis.CloudSampledValues.init(samplingFrequency:value:)(MusicKit::CloudFlexAnalysis::CloudSampledValues *__return_ptr retstr, Swift::Double_optional samplingFrequency, Swift::OpaquePointer_optional value)
{
  retstr->samplingFrequency.value = *&samplingFrequency.is_nil;
  retstr->samplingFrequency.is_nil = value.value._rawValue & 1;
  *(&retstr->value.value._rawValue + 7) = *&value.is_nil;
}

BOOL static CloudFlexAnalysis.CloudSampledValues.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && (sub_217271798(v5, v7) & 1) != 0;
  }

  return !v7;
}

uint64_t sub_217675674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176756C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21767711C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176756FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21767711C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudFlexAnalysis.CloudSampledValues.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD48, &qword_21778E1B0);
  OUTLINED_FUNCTION_0_0();
  v34 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_87_2();
  v30 = OUTLINED_FUNCTION_160(v26, v26[3]);
  sub_21767711C(v30, v31, v32);
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  OUTLINED_FUNCTION_44_2();
  sub_217752F18();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_33_41();
    sub_217676F54(v33);
    OUTLINED_FUNCTION_18_52();
    sub_217752F38();
  }

  (*(v34 + 8))(v24, v27);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.CloudSampledValues.hash(into:)()
{
  v1 = v0[2];
  if (*(v0 + 8) != 1)
  {
    v2 = *v0;
    sub_217753208();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x21CEA3580](v3);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_217753208();
    return;
  }

  sub_217753208();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_217753208();

  sub_217282254();
}

uint64_t CloudFlexAnalysis.CloudSampledValues.hashValue.getter()
{
  sub_2177531E8();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)();
  return sub_217753238();
}

void CloudFlexAnalysis.CloudSampledValues.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD58, &qword_21778E1B8);
  OUTLINED_FUNCTION_0_0();
  v31 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_128();
  v33 = OUTLINED_FUNCTION_131_1();
  v35 = OUTLINED_FUNCTION_160(v33, v34);
  sub_21767711C(v35, v36, v37);
  OUTLINED_FUNCTION_22();
  sub_2177532C8();
  if (!v23)
  {
    v38 = sub_217752E38();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_32();
    sub_217676F54(v41);
    sub_217752E58();
    (*(v31 + 8))(v24, v29);
    *v28 = v38;
    *(v28 + 8) = v40 & 1;
    *(v28 + 16) = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217675BAC(uint64_t a1)
{
  sub_2177531E8();
  CloudFlexAnalysis.CloudSampledValues.hash(into:)();
  return sub_217753238();
}

uint64_t sub_217675C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217677170(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217675C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217677170(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217675CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176771C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217675D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176771C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217675E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217677218(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217675E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217677218(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_217675EE0()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1();
  OUTLINED_FUNCTION_22();
  sub_2177532F8();
  v7 = OUTLINED_FUNCTION_5_3();
  v8(v7);
  OUTLINED_FUNCTION_170();
}

void CloudFlexAnalysis.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudFlexAnalysis.attributes.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_47_27();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 16), 0x88uLL);
  return sub_217676E38(v8, v7);
}

uint64_t sub_217676148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_27CB23B90 != -1)
  {
    swift_once();
  }

  v1 = unk_27CB26FE0;
  v2 = byte_27CB26FE8;
  *(v0 + 32) = qword_27CB26FD8;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2BC38 = v0;

  return sub_217751DE8();
}

uint64_t static CloudFlexAnalysis.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  v6 = *(a1 + 152);
  v22 = *(a1 + 154);
  v23 = *(a1 + 153);
  v7 = *a2;
  v8 = a2[1];
  OUTLINED_FUNCTION_47_27();
  memcpy(v9, v10, v11);
  v12 = *(a2 + 152);
  v13 = *(a2 + 153);
  v14 = *(a2 + 154);
  v15 = v4 == v7 && v5 == v8;
  if (v15 || (v16 = sub_217753058(), result = 0, (v16 & 1) != 0))
  {
    sub_217676E38(__dst, v24);
    sub_217676E38(v28, v24);
    v18 = static CloudFlexAnalysis.Attributes.== infix(_:_:)(a1 + 2, a2 + 2);
    OUTLINED_FUNCTION_47_27();
    memcpy(v19, v20, v21);
    sub_217676E70(v25);
    memcpy(v26, a1 + 2, sizeof(v26));
    sub_217676E70(v26);
    if (v18 && v6 == v12 && v23 == v13)
    {
      return v22 ^ v14 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_217676354(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176763E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21767643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21767726C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217676478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21767726C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudFlexAnalysis.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BD90, &qword_21778E1D8);
  OUTLINED_FUNCTION_0_0();
  v51 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = *v0;
  v10 = v0[1];
  OUTLINED_FUNCTION_47_27();
  memcpy(v11, v12, v13);
  v14 = *(v0 + 152);
  v49 = *(v0 + 153);
  v50 = v14;
  v48 = *(v0 + 154);
  v15 = OUTLINED_FUNCTION_160(v3, v3[3]);
  sub_21767726C(v15, v16, v17);
  sub_217751DE8();
  v18 = v8;
  v19 = sub_2177532F8();
  v55[0] = v9;
  v55[1] = v10;
  v54[0] = 0;
  sub_2172E1B18(v19, v20, v21);
  sub_217752F88();
  if (v1)
  {

    (*(v51 + 8))(v8, v4, v22);
  }

  else
  {
    v24 = v49;
    v23 = v50;
    v25 = v51;

    OUTLINED_FUNCTION_50_28(v55);
    v54[143] = 1;
    v26 = sub_217676E38(&v56, v54);
    sub_2176772C0(v26, v27, v28);
    sub_217752F88();
    memcpy(v54, v55, 0x88uLL);
    v29 = sub_217676E70(v54);
    v53 = v23;
    v52 = 2;
    v32 = sub_217677314(v29, v30, v31);
    v35 = OUTLINED_FUNCTION_15_60(v32, v33, v34, &type metadata for CloudFlexAnalysis.Relationships, v32);
    v53 = v24;
    v52 = 3;
    v38 = sub_217677368(v35, v36, v37);
    v41 = OUTLINED_FUNCTION_15_60(v38, v39, v40, &type metadata for CloudFlexAnalysis.Associations, v38);
    v53 = v48;
    v52 = 4;
    v44 = sub_2176773BC(v41, v42, v43);
    OUTLINED_FUNCTION_15_60(v44, v45, v46, &type metadata for CloudFlexAnalysis.Metadata, v44);
    (*(v25 + 8))(v18, v4);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudFlexAnalysis.hash(into:)(const void *a1)
{
  sub_217751FF8();
  CloudFlexAnalysis.Attributes.hash(into:)(a1);
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t CloudFlexAnalysis.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  sub_217751FF8();
  CloudFlexAnalysis.Attributes.hash(into:)(v1);
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753238();
}

void CloudFlexAnalysis.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_171();
  v29 = v28;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BDC0, &qword_21778E1E0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_160(v29, v29[3]);
  sub_21767726C(v33, v34, v35);
  v36 = sub_2177532C8();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_2172E1C68(v36, v37, v38);
    v39 = sub_217752EA8();
    v40 = v56;
    v54 = v57;
    sub_217677410(v39, v41, v42);
    OUTLINED_FUNCTION_20_47();
    sub_217752EA8();
    v43 = memcpy(v60, v59, sizeof(v60));
    sub_217677464(v43, v44, v45);
    OUTLINED_FUNCTION_20_47();
    v46 = sub_217752E58();
    v61 = v56;
    LOBYTE(v55[0]) = 3;
    sub_2176774B8(v46, v47, v48);
    OUTLINED_FUNCTION_20_47();
    v49 = sub_217752E58();
    v62 = v56;
    sub_21767750C(v49, v50, v51);
    OUTLINED_FUNCTION_20_47();
    sub_217752E58();
    v52 = OUTLINED_FUNCTION_172_2();
    v53(v52);
    v55[0] = v40;
    v55[1] = v54;
    OUTLINED_FUNCTION_50_28(&v55[2]);
    LOBYTE(v55[19]) = v61;
    BYTE1(v55[19]) = v62;
    BYTE2(v55[19]) = a14;
    memcpy(v31, v55, 0x9BuLL);
    sub_217677560(v55, &v56);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v56 = v40;
    v57 = v54;
    OUTLINED_FUNCTION_50_28(v58);
    v58[136] = v61;
    v58[137] = v62;
    v58[138] = a14;
    sub_217677598(&v56);
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217676BEC(uint64_t a1)
{
  sub_2177531E8();
  CloudFlexAnalysis.hash(into:)(v2);
  return sub_217753238();
}

unint64_t sub_217676C28()
{
  result = qword_27CB2BCD0;
  if (!qword_27CB2BCD0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC58, &qword_21778E150);
    v6 = sub_217674438(v1, v2, v3);
    sub_21767448C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCD0);
  }

  return result;
}

unint64_t sub_217676CB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC78, &qword_21778E158);
    v2();
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676D20()
{
  result = qword_27CB2BCE0;
  if (!qword_27CB2BCE0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BC90, &qword_21778E160);
    v6 = sub_21767456C(v1, v2, v3);
    sub_2176745C0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCE0);
  }

  return result;
}

unint64_t sub_217676DAC()
{
  result = qword_27CB2BCE8;
  if (!qword_27CB2BCE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BCA8, &qword_21778E168);
    v6 = sub_2176746A0(v1, v2, v3);
    sub_2176746F4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCE8);
  }

  return result;
}

unint64_t sub_217676EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BCF8;
  if (!qword_27CB2BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BCF8);
  }

  return result;
}

unint64_t sub_217676EF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B6F0, &qword_21778B860);
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676F54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2B750, &unk_21778E180);
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217676FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD10;
  if (!qword_27CB2BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD10);
  }

  return result;
}

unint64_t sub_217677008(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_87();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2BD18, &qword_21778E1A0);
    v2();
    OUTLINED_FUNCTION_43_27();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217677074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD28;
  if (!qword_27CB2BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD28);
  }

  return result;
}

unint64_t sub_2176770C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD40;
  if (!qword_27CB2BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD40);
  }

  return result;
}

unint64_t sub_21767711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD50;
  if (!qword_27CB2BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD50);
  }

  return result;
}

unint64_t sub_217677170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD68;
  if (!qword_27CB2BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD68);
  }

  return result;
}

unint64_t sub_2176771C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD78;
  if (!qword_27CB2BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD78);
  }

  return result;
}

unint64_t sub_217677218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD88;
  if (!qword_27CB2BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD88);
  }

  return result;
}

unint64_t sub_21767726C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BD98;
  if (!qword_27CB2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BD98);
  }

  return result;
}

unint64_t sub_2176772C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDA0;
  if (!qword_27CB2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDA0);
  }

  return result;
}

unint64_t sub_217677314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDA8;
  if (!qword_27CB2BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDA8);
  }

  return result;
}

unint64_t sub_217677368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDB0;
  if (!qword_27CB2BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDB0);
  }

  return result;
}

unint64_t sub_2176773BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDB8;
  if (!qword_27CB2BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDB8);
  }

  return result;
}

unint64_t sub_217677410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDC8;
  if (!qword_27CB2BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDC8);
  }

  return result;
}

unint64_t sub_217677464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDD0;
  if (!qword_27CB2BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDD0);
  }

  return result;
}

unint64_t sub_2176774B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDD8;
  if (!qword_27CB2BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDD8);
  }

  return result;
}

unint64_t sub_21767750C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDE0;
  if (!qword_27CB2BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDE0);
  }

  return result;
}

unint64_t sub_2176775CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDE8;
  if (!qword_27CB2BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDE8);
  }

  return result;
}

unint64_t sub_217677624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDF0;
  if (!qword_27CB2BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDF0);
  }

  return result;
}

unint64_t sub_21767767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BDF8;
  if (!qword_27CB2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BDF8);
  }

  return result;
}

unint64_t sub_2176776D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE00;
  if (!qword_27CB2BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE00);
  }

  return result;
}

unint64_t sub_21767772C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE08;
  if (!qword_27CB2BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE08);
  }

  return result;
}

unint64_t sub_217677784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE10;
  if (!qword_27CB2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE10);
  }

  return result;
}

unint64_t sub_2176777DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE18;
  if (!qword_27CB2BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE18);
  }

  return result;
}

unint64_t sub_217677834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE20;
  if (!qword_27CB2BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE20);
  }

  return result;
}

unint64_t sub_2176778AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE28;
  if (!qword_27CB2BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C12FlexAnalysisV0C13SampledValuesVGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C12FlexAnalysisV0C6EventsVGSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217677938(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 155))
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

uint64_t sub_217677978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 154) = 0;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 155) = 1;
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

    *(result + 155) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176779F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_217677A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_217677B0C(_BYTE *result, int a2, int a3)
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

_BYTE *sub_217677C04(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_217677CDC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_79_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudFlexAnalysis.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217677E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE30;
  if (!qword_27CB2BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE30);
  }

  return result;
}

unint64_t sub_217677EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE38;
  if (!qword_27CB2BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE38);
  }

  return result;
}

unint64_t sub_217677F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE40;
  if (!qword_27CB2BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE40);
  }

  return result;
}

unint64_t sub_217677F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE48;
  if (!qword_27CB2BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE48);
  }

  return result;
}

unint64_t sub_217677FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE50;
  if (!qword_27CB2BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE50);
  }

  return result;
}

unint64_t sub_21767804C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE58;
  if (!qword_27CB2BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE58);
  }

  return result;
}

unint64_t sub_2176780A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE60;
  if (!qword_27CB2BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE60);
  }

  return result;
}

unint64_t sub_2176780FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE68;
  if (!qword_27CB2BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE68);
  }

  return result;
}

unint64_t sub_217678154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE70;
  if (!qword_27CB2BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE70);
  }

  return result;
}

unint64_t sub_2176781AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE78;
  if (!qword_27CB2BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE78);
  }

  return result;
}

unint64_t sub_217678204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE80;
  if (!qword_27CB2BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE80);
  }

  return result;
}

unint64_t sub_21767825C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE88;
  if (!qword_27CB2BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE88);
  }

  return result;
}

unint64_t sub_2176782B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE90;
  if (!qword_27CB2BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE90);
  }

  return result;
}

unint64_t sub_21767830C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BE98;
  if (!qword_27CB2BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BE98);
  }

  return result;
}

unint64_t sub_217678364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEA0;
  if (!qword_27CB2BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEA0);
  }

  return result;
}

unint64_t sub_2176783BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEA8;
  if (!qword_27CB2BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEA8);
  }

  return result;
}

unint64_t sub_217678414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEB0;
  if (!qword_27CB2BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEB0);
  }

  return result;
}

unint64_t sub_21767846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEB8;
  if (!qword_27CB2BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEB8);
  }

  return result;
}

unint64_t sub_2176784C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEC0;
  if (!qword_27CB2BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEC0);
  }

  return result;
}

unint64_t sub_21767851C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BEC8;
  if (!qword_27CB2BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BEC8);
  }

  return result;
}

unint64_t sub_217678574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BED0;
  if (!qword_27CB2BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BED0);
  }

  return result;
}

void OUTLINED_FUNCTION_14_58()
{
  *(v8 - 152) = v1 & 1;
  *(v8 - 152) = v5 & 1;

  sub_2172A9414(v2, v1 & 1, v0, v3, v6, v5 & 1, v4, v7);
}

uint64_t OUTLINED_FUNCTION_15_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752F38();
}

double OUTLINED_FUNCTION_42_35()
{

  return sub_2176742C8(v2, v1, v0, v3);
}

uint64_t OUTLINED_FUNCTION_49_29(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_217752F38();
}

void *OUTLINED_FUNCTION_50_28(void *a1)
{

  return memcpy(a1, (v1 - 224), 0x88uLL);
}

uint64_t MusicVideo.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *MusicVideo.editorialNotes.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6CD8 != -1)
  {
    OUTLINED_FUNCTION_73_1(&qword_280BE6CD8);
  }

  v26 = qword_280C02318;

  return sub_2176CA67C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t MusicVideo.genreNames.getter()
{
  if (qword_280BE6D98 != -1)
  {
    OUTLINED_FUNCTION_72_8(&qword_280BE6D98);
  }

  result = sub_2172A4238(qword_280C02380);
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_217678BA4()
{
  OUTLINED_FUNCTION_23_0();
  if (!v0)
  {
    swift_once();
  }

  v1 = sub_2172A4204();
  return OUTLINED_FUNCTION_41_35(v1, v2);
}

void *MusicVideo.playParameters.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6CA8 != -1)
  {
    swift_once();
  }

  v26 = qword_280C022F8;

  return sub_2176CAB9C(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217678D60()
{
  OUTLINED_FUNCTION_23_0();
  if (!v0)
  {
    swift_once();
  }

  return sub_2172A4204();
}

uint64_t sub_217678F28()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

uint64_t sub_217678FC0(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0();
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t MusicVideo.catalogAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6D38 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02348;

  return sub_2176CA848(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2176792F0()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

uint64_t MusicVideo.keepLocalManagedStatusReasons.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6C18 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02298;

  return sub_2176CB3C0(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t MusicVideo.localFileAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6CB0 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02300;

  return sub_2176CB3D4(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t MusicVideo.lyrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6B78 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_280BE6B78);
  }

  v26 = qword_280C02268;

  return sub_2176CB3E8(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t static MusicVideo.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t MusicVideo.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_31();
  v358 = v3;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v4);
  *&v368 = &v356 - v5;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v6);
  v361 = &v356 - v7;
  v362 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31();
  v357 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  *&v366 = &v356 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_31();
  v363 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  v18 = &v356 - v17;
  v19 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  *&v367 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_31();
  v360 = v22;
  OUTLINED_FUNCTION_79_2();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v356 - v25;
  v404 = 0x646956636973754DLL;
  v405 = 0xEB00000000286F65;
  *&v389 = 0x22203A646920200ALL;
  *(&v389 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v24);
  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  OUTLINED_FUNCTION_24_0();
  *&v389 = v27 | 0x6C74697400000000;
  *(&v389 + 1) = 0xEC00000022203A65;
  if (qword_280BE6BC8 == -1)
  {
    goto LABEL_2;
  }

LABEL_208:
  OUTLINED_FUNCTION_105_1(&qword_280BE6BC8);
LABEL_2:
  v28 = sub_2172A4204();
  v30 = OUTLINED_FUNCTION_41_35(v28, v29);
  if (v118)
  {
    v32 = 0xE000000000000000;
  }

  else
  {
    v32 = v31;
  }

  MEMORY[0x21CEA23B0](v30, v32);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  *&v389 = 0xD000000000000011;
  *(&v389 + 1) = 0x80000002177B4760;
  if (qword_280BE6DA0 != -1)
  {
    OUTLINED_FUNCTION_77(&qword_280BE6DA0);
  }

  v33 = sub_2172A4204();
  v35 = OUTLINED_FUNCTION_41_35(v33, v34);
  if (v118)
  {
    v37 = 0xE000000000000000;
  }

  else
  {
    v37 = v36;
  }

  MEMORY[0x21CEA23B0](v35, v37);

  OUTLINED_FUNCTION_18_53();
  OUTLINED_FUNCTION_47();

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11(v38);
  OUTLINED_FUNCTION_30_3();
  v39 = sub_2172E3DC0();
  sub_2176CA63C(v39, v40, v41, v42, v43, v44, v45, v46, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374);

  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_2171F06D8(v18, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v54 = v367;
    (*(v367 + 32))(v26, v18, v19);
    OUTLINED_FUNCTION_0_107();
    *&v389 = v56 - 1;
    *(&v389 + 1) = v55;
    sub_21736C310();
    v57 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v57);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    (*(v54 + 8))(v26, v19, v58);
  }

  v26 = v368;
  if (qword_280BE6D00 != -1)
  {
    swift_once();
  }

  sub_2176CA688(qword_280C02330, v47, v48, v49, v50, v51, v52, v53, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372);
  v59 = v389;
  if (v389 != 2)
  {
    *&v389 = 0;
    *(&v389 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v396) = v59 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B38 != -1)
  {
    swift_once();
  }

  sub_2172A4330();
  if ((v60 & 1) == 0)
  {
    *&v389 = 0;
    *(&v389 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6CD8 != -1)
  {
    OUTLINED_FUNCTION_73_1(&qword_280BE6CD8);
  }

  sub_2176CA67C(qword_280C02318, v60, v61, v62, v63, v64, v65, v66, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370);
  v400[0] = v389;
  v400[1] = v390;
  v400[2] = v391;
  v400[3] = v392;
  v401 = v390;
  v402 = v391;
  v403 = v392;
  if (*(&v389 + 1) != 1)
  {
    v396 = 0xD000000000000014;
    v397 = 0x80000002177AB940;
    v389 = v400[0];
    v390 = v401;
    v391 = v402;
    v392 = v403;
    v67 = EditorialNotes.debugDescription.getter();
    v69 = v68;
    v70 = sub_2171F06D8(v400, &qword_27CB24B70, &unk_217759460);
    *&v388[0] = v67;
    *(&v388[0] + 1) = v69;
    *&v375 = 10;
    *(&v375 + 1) = 0xE100000000000000;
    *&v380 = 2105354;
    *(&v380 + 1) = 0xE300000000000000;
    sub_21733A5C8(v70, v71, v72);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v356 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    v81 = OUTLINED_FUNCTION_49_30(v73, v74, v75, v76, v77, v78, v79, v80, v356);
    v83 = v82;

    v85 = v81;
    v26 = v368;
    MEMORY[0x21CEA23B0](v85, v83, v84);

    MEMORY[0x21CEA23B0](v396, v397, v86);
  }

  v398 = 0;
  v399 = 0xE000000000000000;
  if (qword_280BE6D98 != -1)
  {
    OUTLINED_FUNCTION_72_8(&qword_280BE6D98);
  }

  v359 = v9;
  v365 = v1;
  v87 = sub_2172A4238(qword_280C02380);
  if (v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v89 = *(v88 + 16);
  v364 = v19;
  if (v89)
  {
    v90 = v367;
    v91 = (v88 + 40);
    v9 = 0xE600000000000000;
    do
    {
      v93 = *(v91 - 1);
      v92 = *v91;
      if ((v399 & 0x2000000000000000) != 0)
      {
        v94 = HIBYTE(v399) & 0xF;
      }

      else
      {
        v94 = v398 & 0xFFFFFFFFFFFFLL;
      }

      sub_217751DE8();
      if (v94)
      {
        OUTLINED_FUNCTION_48_1();
      }

      *&v389 = 0x22202020200ALL;
      *(&v389 + 1) = 0xE600000000000000;
      MEMORY[0x21CEA23B0](v93, v92);

      OUTLINED_FUNCTION_18_53();
      MEMORY[0x21CEA23B0](v389, *(&v389 + 1));

      v91 += 2;
      --v89;
    }

    while (v89);

    v95 = v398;
    v96 = v399;
    v97 = v90;
    v26 = v368;
  }

  else
  {

    v95 = 0;
    v96 = 0xE000000000000000;
    v97 = v367;
  }

  v98 = HIBYTE(v96) & 0xF;
  if ((v96 & 0x2000000000000000) == 0)
  {
    v98 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v98)
  {
    OUTLINED_FUNCTION_0_107();
    *&v389 = v100;
    *(&v389 + 1) = v99;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6BF0 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02280, v101, v102, v103, v104, v105, v106, v107, v360, v361, v362, v363, v364, v365, SWORD2(v365), SBYTE6(v365), HIBYTE(v365), v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370);
  if (v115 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v389 = v116 | 0x3473616800000000;
    *(&v389 + 1) = 0xEB00000000203A4BLL;
    v118 = (v117 & 1) == 0;
    if (v117)
    {
      v119 = 1702195828;
    }

    else
    {
      v119 = 0x65736C6166;
    }

    if (v118)
    {
      v120 = 0xE500000000000000;
    }

    else
    {
      v120 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v119, v120);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B88 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02270, v108, v109, v110, v111, v112, v113, v114, v360, v361, v362, v363, v364, v365, SWORD2(v365), SBYTE6(v365), HIBYTE(v365), v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370);
  if (v128 != 2)
  {
    OUTLINED_FUNCTION_24_0();
    *&v389 = v129 | 0x4873616800000000;
    *(&v389 + 1) = 0xEC000000203A5244;
    v131 = (v130 & 1) == 0;
    if (v130)
    {
      v132 = 1702195828;
    }

    else
    {
      v132 = 0x65736C6166;
    }

    if (v131)
    {
      v133 = 0xE500000000000000;
    }

    else
    {
      v133 = 0xE400000000000000;
    }

    MEMORY[0x21CEA23B0](v132, v133);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B20 != -1)
  {
    OUTLINED_FUNCTION_32_41(&qword_280BE6B20);
  }

  sub_2172A422C(qword_280C02240, v121, v122, v123, v124, v125, v126, v127, v360, v361, v362, v363, v364, v365, SWORD2(v365), SBYTE6(v365), HIBYTE(v365), v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370);
  if (v134 != 2 && (v134 & 1) != 0)
  {
    MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177B47E0);
  }

  if (qword_280BE6BF8 != -1)
  {
    swift_once();
  }

  sub_2172A4204();
  if (v135)
  {
    OUTLINED_FUNCTION_24_0();
    *&v389 = v142 | 0x6372736900000000;
    *(&v389 + 1) = 0xEB0000000022203ALL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6D58 != -1)
  {
    swift_once();
  }

  v143 = v361;
  sub_2176CA65C(qword_280C02360, v135, v136, v137, v138, v139, v140, v141, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  v144 = v362;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v143, 1, v362);
  v146 = v366;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F06D8(v143, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    v147 = v359;
    v148 = v359[4];
    v148(v366, v143, v144);
    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for CloudFormatter(0);
    v150 = __swift_project_value_buffer(v149, qword_280BE8918);
    (*(v147 + 16))(v26, v146, v144);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v144);
    v151 = v26;
    v26 = v358;
    sub_217202078(v151, v358, &qword_27CB241C0, &qword_217759480);
    if (__swift_getEnumTagSinglePayload(v26, 1, v144) == 1)
    {
      sub_2171F06D8(v368, &qword_27CB241C0, &qword_217759480);
      sub_2171F06D8(v26, &qword_27CB241C0, &qword_217759480);
      v152 = *(v147 + 8);
      v9 = (v147 + 8);
      v152(v146, v144);
    }

    else
    {
      v153 = v357;
      v148(v357, v26, v144);
      v154 = *(v150 + *(v149 + 20));
      v155 = sub_2177517A8();
      v156 = [v154 stringFromDate_];

      v157 = sub_217751F48();
      v26 = v158;

      v159 = *(v147 + 8);
      v9 = (v147 + 8);
      v159(v153, v144);
      sub_2171F06D8(v368, &qword_27CB241C0, &qword_217759480);
      OUTLINED_FUNCTION_0_107();
      *&v389 = v161 + 1;
      *(&v389 + 1) = v160;
      MEMORY[0x21CEA23B0](v157, v26);

      OUTLINED_FUNCTION_18_53();
      OUTLINED_FUNCTION_15_5();

      (v159)(v366, v144, v162);
    }

    v97 = v367;
  }

  v19 = v364;
  if (qword_280BE6D50 != -1)
  {
    swift_once();
  }

  sub_2172A4218();
  if ((v163 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_107();
    *&v389 = v165;
    *(&v389 + 1) = v164;
    v396 = v166;
    v167 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v167);

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6B30 != -1)
  {
    swift_once();
  }

  sub_2172A4204();
  if (v168)
  {
    OUTLINED_FUNCTION_24_0();
    *&v389 = v175 | 0x6B726F7700000000;
    *(&v389 + 1) = 0xEE00203A656D614ELL;
    MEMORY[0x21CEA23B0]();

    OUTLINED_FUNCTION_15_5();
  }

  if (qword_280BE6C08 != -1)
  {
    swift_once();
  }

  v176 = v363;
  sub_2176CA63C(qword_280C02290, v168, v169, v170, v171, v172, v173, v174, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  if (__swift_getEnumTagSinglePayload(v176, 1, v19) == 1)
  {
    sub_2171F06D8(v176, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    v177 = v360;
    (*(v97 + 32))(v360, v176, v19);
    OUTLINED_FUNCTION_24_0();
    *&v389 = v178 | 0x3A6C727500000000;
    *(&v389 + 1) = 0xEA00000000002220;
    sub_21736C310();
    v179 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v179);

    OUTLINED_FUNCTION_18_53();
    OUTLINED_FUNCTION_15_5();

    (*(v97 + 8))(v177, v19, v180);
  }

  if (qword_280BE6BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA620(v181, v182, v183, v184, v185, v186, v187, v188, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  if (v393)
  {
    OUTLINED_FUNCTION_36_0();
    *&v380 = 0;
    *(&v380 + 1) = 0xE000000000000000;
    v18 = &unk_21775D410;
    v189 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v189, v190, v191, &unk_21775D410);
    v192 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v192, v193, v194, &unk_21775D410);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v195 = BYTE8(v389);
    v1 = (v19 + 32);
    v9 = &qword_217758A00;
    if (BYTE8(v389))
    {
LABEL_100:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v118)
      {

        sub_217294574();
        goto LABEL_106;
      }
    }

    else
    {
      while (1)
      {
        v196 = *(v19 + 16);
        if (v18 == v196)
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (v18 >= v196)
        {
          goto LABEL_195;
        }

        OUTLINED_FUNCTION_56();
        v197 = OUTLINED_FUNCTION_60_28(v19);
        sub_2172940A0(v197, v198, v199, v200, v201, v202, v203, v204);
        sub_2171F06D8(v388, &unk_27CB276C0, &qword_217758A00);
LABEL_106:
        OUTLINED_FUNCTION_16_64();
        v26 = __OFADD__(v18, 1);
        if (v195)
        {
          sub_21725CF00(v19, 1);
          if (v26)
          {
            goto LABEL_194;
          }
        }

        else
        {
          sub_21725CF00(v19, 0);
          if (v26)
          {
            goto LABEL_193;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v205)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v206 = Album.debugDescription.getter();
        MEMORY[0x21CEA23B0](v206);

        v26 = *(&v375 + 1);
        MEMORY[0x21CEA23B0](v375, *(&v375 + 1), v207);

        sub_21725CE44(v388);
        ++v18;
        v1 += 8;
        if (v195)
        {
          goto LABEL_100;
        }
      }
    }

    v394 = v18;
    sub_2171F06D8(&v389, &qword_27CB276B0, &unk_21777D6C0);
    OUTLINED_FUNCTION_24_0();
    *&v389 = v208 | 0x75626C6100000000;
    *(&v389 + 1) = 0xED00005B203A736DLL;
    v388[0] = v380;
    OUTLINED_FUNCTION_2_118();
    v384 = v210;
    v385 = v209;
    sub_21733A5C8(v211, v212, v213);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v360 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v214, v215, v216, v217, v218, v219, v220, v221, v360);
    v222 = OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v19, v1, v222);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v396, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    sub_2171F06D8(&v389, &qword_27CB25318, &qword_2177657C0);
  }

  if (qword_280BE6B58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA604(v223, v224, v225, v226, v227, v228, v229, v230, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  if (v393)
  {
    OUTLINED_FUNCTION_36_0();
    *&v380 = 0;
    *(&v380 + 1) = 0xE000000000000000;
    v18 = &unk_21776C4F0;
    v231 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v231, v232, v233, &unk_21776C4F0);
    v234 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v234, v235, v236, &unk_21776C4F0);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v237 = BYTE8(v389);
    v1 = (v19 + 32);
    v9 = &qword_21776B8C0;
    if (BYTE8(v389))
    {
LABEL_123:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v118)
      {

        sub_2172945D4();
        goto LABEL_129;
      }
    }

    else
    {
      while (1)
      {
        v238 = *(v19 + 16);
        if (v18 == v238)
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_196;
        }

        if (v18 >= v238)
        {
          goto LABEL_199;
        }

        OUTLINED_FUNCTION_56();
        v239 = OUTLINED_FUNCTION_60_28(v19);
        sub_217294118(v239, v240, v241, v242, v243, v244, v245, v246);
        sub_2171F06D8(v388, &qword_27CB27BD0, &qword_21776B8C0);
LABEL_129:
        OUTLINED_FUNCTION_16_64();
        v26 = __OFADD__(v18, 1);
        if (v237)
        {
          sub_21725CF00(v19, 1);
          if (v26)
          {
            goto LABEL_198;
          }
        }

        else
        {
          sub_21725CF00(v19, 0);
          if (v26)
          {
            goto LABEL_197;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v247)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v248 = Artist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v248);

        v26 = *(&v375 + 1);
        MEMORY[0x21CEA23B0](v375, *(&v375 + 1), v249);

        sub_217284498(v388);
        ++v18;
        v1 += 8;
        if (v237)
        {
          goto LABEL_123;
        }
      }
    }

    v394 = v18;
    sub_2171F06D8(&v389, &qword_27CB27BC0, &qword_21776B8B0);
    OUTLINED_FUNCTION_24_0();
    *&v389 = v250 | 0x6974726100000000;
    *(&v389 + 1) = 0xEE005B203A737473;
    v388[0] = v380;
    OUTLINED_FUNCTION_2_118();
    v384 = v252;
    v385 = v251;
    sub_21733A5C8(v253, v254, v255);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v360 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v256, v257, v258, v259, v260, v261, v262, v263, v360);
    v264 = OUTLINED_FUNCTION_57_23();
    MEMORY[0x21CEA23B0](v19, v1, v264);

    OUTLINED_FUNCTION_17_55();
    OUTLINED_FUNCTION_15_5();

    sub_2171F06D8(&v396, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    sub_2171F06D8(&v389, &qword_27CB25310, &unk_21775D3D0);
  }

  if (qword_280BE6B98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5E8(v265, v266, v267, v268, v269, v270, v271, v272, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  if (v393)
  {
    OUTLINED_FUNCTION_36_0();
    *&v395 = 0;
    *(&v395 + 1) = 0xE000000000000000;
    v18 = &unk_21775D420;
    v273 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v273, v274, v275, &unk_21775D420);
    v276 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v276, v277, v278, &unk_21775D420);
    OUTLINED_FUNCTION_19_42();
    OUTLINED_FUNCTION_35_36();
    v279 = BYTE8(v389);
    v1 = (v19 + 32);
    v26 = 10;
    v9 = &qword_217778790;
    if (BYTE8(v389))
    {
LABEL_146:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_38_34();
      if (!v118)
      {

        sub_21729464C();
        goto LABEL_155;
      }
    }

    else
    {
      while (1)
      {
        v280 = *(v19 + 16);
        if (v18 == v280)
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_200;
        }

        if (v18 >= v280)
        {
          goto LABEL_203;
        }

        sub_217202078(v1, v388, &qword_27CB24618, &qword_217778790);
        sub_217202078(v388, &v375, &qword_27CB24618, &qword_217778790);
        if (v379)
        {
          v281 = *(v375 + 16);
          v282 = *(v375 + 24);
          sub_217283C5C(v19, 0);
          sub_217751DE8();

          sub_2172937E4(v281, v282, v283, v284, v285, v286, v287, v288, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1), v377, *(&v377 + 1), v378, v379, v380, *(&v380 + 1), v381, *(&v381 + 1));
          v26 = 10;
        }

        else
        {
          v380 = v375;
          v381 = v376;
          v382 = v377;
          v383 = v378;
          sub_217283C5C(v19, 0);
        }

        sub_2171F06D8(v388, &qword_27CB24618, &qword_217778790);
LABEL_155:
        v367 = v381;
        v368 = v380;
        v366 = v382;
        v289 = __OFADD__(v18, 1);
        if (v279)
        {
          sub_21725CF00(v19, 1);
          if (v289)
          {
            goto LABEL_202;
          }
        }

        else
        {
          sub_21725CF00(v19, 0);
          if (v289)
          {
            goto LABEL_201;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v290)
        {
          OUTLINED_FUNCTION_48_1();
        }

        *&v375 = 10;
        *(&v375 + 1) = 0xE100000000000000;
        v291 = Genre.debugDescription.getter();
        MEMORY[0x21CEA23B0](v291);

        MEMORY[0x21CEA23B0](v375, *(&v375 + 1), v292);

        sub_21728418C(v388);
        ++v18;
        v1 += 8;
        if (v279)
        {
          goto LABEL_146;
        }
      }
    }

    v394 = v18;
    sub_2171F06D8(&v389, &qword_27CB27C88, &qword_21779F250);
    OUTLINED_FUNCTION_24_0();
    *&v389 = v293 | 0x726E656700000000;
    *(&v389 + 1) = 0xED00005B203A7365;
    v388[0] = v395;
    OUTLINED_FUNCTION_2_118();
    *&v380 = v295;
    *(&v380 + 1) = v294;
    sub_21733A5C8(v296, v297, v298);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v360 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v299, v300, v301, v302, v303, v304, v305, v306, v360);
    v307 = OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v18, v19, v307);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v389, *(&v389 + 1));

    sub_2171F06D8(&v396, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    sub_2171F06D8(&v389, &qword_27CB25320, &unk_21776E020);
  }

  if (qword_280BE6BD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_53_25();
  sub_2176CA5CC(v308, v309, v310, v311, v312, v313, v314, v315, v360, v361, v362, v363, v364, v365, v366, *(&v366 + 1), v367, *(&v367 + 1), v368, *(&v368 + 1), v369, v370, v371, v372, v373, v374, v375, *(&v375 + 1), v376, *(&v376 + 1));
  if (v393)
  {
    OUTLINED_FUNCTION_36_0();
    *&v395 = 0;
    *(&v395 + 1) = 0xE000000000000000;
    v316 = OUTLINED_FUNCTION_29_0();
    sub_217202078(v316, v317, v318, &qword_21775DAB0);
    v319 = OUTLINED_FUNCTION_33_42();
    sub_217202078(v319, v320, v321, &qword_21775DAB0);
    v322 = *&v388[0];
    v323 = BYTE8(v388[0]);
    sub_217283C5C(*&v388[0], SBYTE8(v388[0]));
    sub_2171F06D8(v388, &qword_27CB27820, &qword_21775DAB0);
    sub_21725CF00(v322, v323);
    v324 = 0;
    v394 = 0;
    v18 = v389;
    v26 = BYTE8(v389);
    v19 = v389 + 32;
    v1 = &qword_27CB24540;
    if (BYTE8(v389))
    {
LABEL_172:
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (v324 != *(*(v18 + 56) + 16))
      {

        sub_2172945A4();
        goto LABEL_178;
      }
    }

    else
    {
      while (1)
      {
        v325 = *(v18 + 16);
        if (v324 == v325)
        {
          break;
        }

        if ((v324 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        if (v324 >= v325)
        {
          goto LABEL_207;
        }

        sub_217202078(v19, v388, &qword_27CB24540, &qword_21776B300);
        v326 = OUTLINED_FUNCTION_60_28(v18);
        sub_2172940C8(v326, v327, v328, v329, v330, v331, v332, v333);
        sub_2171F06D8(v388, &qword_27CB24540, &qword_21776B300);
LABEL_178:
        OUTLINED_FUNCTION_16_64();
        v9 = __OFADD__(v324, 1);
        if (v26)
        {
          sub_21725CF00(v18, 1);
          if (v9)
          {
            goto LABEL_206;
          }
        }

        else
        {
          sub_21725CF00(v18, 0);
          if (v9)
          {
            goto LABEL_205;
          }
        }

        OUTLINED_FUNCTION_4_110();
        OUTLINED_FUNCTION_4_6();
        if (v334)
        {
          OUTLINED_FUNCTION_48_1();
        }

        OUTLINED_FUNCTION_40_4();
        v335 = Song.debugDescription.getter();
        MEMORY[0x21CEA23B0](v335);

        v9 = *(&v375 + 1);
        MEMORY[0x21CEA23B0](v375, *(&v375 + 1), v336);

        sub_217283B58(v388);
        ++v324;
        v19 += 64;
        if (v26)
        {
          goto LABEL_172;
        }
      }
    }

    v394 = v324;
    sub_2171F06D8(&v389, &qword_27CB27828, &qword_21776B2F0);
    OUTLINED_FUNCTION_24_0();
    *&v389 = v337 | 0x676E6F7300000000;
    *(&v389 + 1) = 0xEC0000005B203A73;
    v388[0] = v395;
    OUTLINED_FUNCTION_2_118();
    v386 = v339;
    v387 = v338;
    sub_21733A5C8(v340, v341, v342);
    OUTLINED_FUNCTION_6_93();
    OUTLINED_FUNCTION_43_28();
    v360 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_1_125();
    OUTLINED_FUNCTION_49_30(v343, v344, v345, v346, v347, v348, v349, v350, v360);
    v351 = OUTLINED_FUNCTION_58_0();
    MEMORY[0x21CEA23B0](v18, v19, v351);

    OUTLINED_FUNCTION_17_55();
    MEMORY[0x21CEA23B0](v389, *(&v389 + 1));

    v352 = &qword_27CB27820;
    v353 = &qword_21775DAB0;
    v354 = &v396;
  }

  else
  {
    v352 = &qword_27CB255A8;
    v353 = &unk_21775D450;
    v354 = &v389;
  }

  sub_2171F06D8(v354, v352, v353);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v404;
}

uint64_t MusicVideo.albumIdentifierSet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_27CB23DE8 != -1)
  {
    swift_once();
  }

  v26 = qword_27CB8A300;

  return sub_2176CB5A4(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21767B198()
{
  OUTLINED_FUNCTION_16_4();
  if (!v0)
  {
    swift_once();
  }

  v1 = OUTLINED_FUNCTION_50_29();

  return v2(v1);
}

uint64_t sub_21767B230(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_23_0();
  if (!v5)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t MusicVideo.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_2172E1FE4(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_2172E1FE4(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_2172E1FE4(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t MusicVideo.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t MusicVideo.albumTrackCount.getter()
{
  if (qword_27CB23DE0 != -1)
  {
    swift_once();
  }

  result = sub_2172A4218();
  if (v1)
  {
    return 0;
  }

  return result;
}

void *sub_21767B5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4();
  if (!v26)
  {
    swift_once();
  }

  v27 = OUTLINED_FUNCTION_50_29();

  return sub_2176CA83C(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t MusicVideo.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t MusicVideo.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21767B7D4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicVideo.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21767B7FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE8, &qword_21778F728);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02258 = result;
  return result;
}

uint64_t sub_21767B870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E6D75626C61, 0xE900000000000065, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02390 = result;
  return result;
}

uint64_t sub_21767B8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_30_3();
  result = OUTLINED_FUNCTION_26(v1 & 0xFFFFFFFFFFFFLL | 0x614E000000000000, 0xEA0000000000656DLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02388 = result;
  return result;
}

uint64_t sub_21767B958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF58, &qword_21778F798);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x676F6C617461635FLL, 0xED00007465737341, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02348 = result;
  return result;
}

uint64_t sub_21767B9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFE0, &unk_21778F820);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02330 = result;
  return result;
}

uint64_t sub_21767BA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF08, &qword_21778F748);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_280C02250 = result;
  return result;
}

uint64_t sub_21767BAC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFD8, &qword_21778F818);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_44_29();
  result = sub_217729830();
  qword_280C022C8 = result;
  return result;
}

uint64_t sub_21767BB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFD0, &qword_21778F810);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02318 = result;
  return result;
}

uint64_t sub_21767BBB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFC8, &qword_21778F808);
  OUTLINED_FUNCTION_31_11(v0);
  OUTLINED_FUNCTION_212();
  result = sub_217729830();
  qword_280C023A0 = result;
  return result;
}

uint64_t sub_21767BC28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFC0, &qword_21778F800);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D614E65726E6567, 0xEA00000000007365, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02380 = result;
  return result;
}

uint64_t sub_21767BCA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x4B34736168, 0xE500000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02280 = result;
  return result;
}

uint64_t sub_21767BD10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x524448736168, 0xE600000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02270 = result;
  return result;
}

uint64_t sub_21767BD80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF48, &qword_21778F788);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022D8 = result;
  return result;
}

uint64_t sub_21767BDF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697F4C(0x76697372656D6D69, 0xEC0000006C725565, 0, 5001813, 0xE300000000000000, qword_282959AF8);
  qword_280C02338 = result;
  return result;
}

uint64_t sub_21767BE6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6275536F65646976, 0xEC00000065707954, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02240 = result;
  return result;
}

uint64_t sub_21767BEE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1668445033, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02288 = result;
  return result;
}

uint64_t sub_21767BF54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF18, &qword_21778F758);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x69466C61636F6C5FLL, 0xEF7465737341656CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02300 = result;
  return result;
}

uint64_t sub_21767BFD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE8, &qword_21778F728);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022E0 = result;
  return result;
}

uint64_t sub_21767C054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFB8, &qword_21778F7F8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697CBC(0x73726566666FLL, 0xE600000000000000, 0, 0xD000000000000021, 0x80000002177B49A0, qword_282959AF8);
  qword_280C02260 = result;
  return result;
}

uint64_t sub_21767C0CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFB0, &qword_21778F7F0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C022F8 = result;
  return result;
}

uint64_t sub_21767C144()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFA8, &qword_21778F7E8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7377656976657270, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02328 = result;
  return result;
}

uint64_t sub_21767C1B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x44657361656C6572, 0xEB00000000657461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02360 = result;
  return result;
}

uint64_t sub_21767C234()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000072616559, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02350 = result;
  return result;
}

uint64_t sub_21767C2B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02278 = result;
  return result;
}

uint64_t sub_21767C31C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D754E6B63617274, 0xEB00000000726562, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02358 = result;
  return result;
}

uint64_t sub_21767C398()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BFA0, &qword_21778F7E0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02290 = result;
  return result;
}

uint64_t sub_21767C404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF98, &qword_21778F7D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D614E6B726F77, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02248 = result;
  return result;
}

uint64_t sub_21767C478()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEE00657461446465, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02320 = result;
  return result;
}

uint64_t sub_21767C4EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF40, &qword_21778F780);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_54_22();
  result = OUTLINED_FUNCTION_26(v1, 0xEF73757461745365, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022F0 = result;
  return result;
}

uint64_t sub_21767C560()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x617262694C73695FLL, 0xEF64656464417972, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02310 = result;
  return result;
}

uint64_t sub_21767C5E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022B8 = result;
  return result;
}

uint64_t sub_21767C654()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF38, &qword_21778F778);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000016, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022B0 = result;
  return result;
}

uint64_t sub_21767C6C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF30, &qword_21778F770);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000017, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022A8 = result;
  return result;
}

uint64_t sub_21767C73C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF28, &qword_21778F768);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD00000000000001ELL, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02298 = result;
  return result;
}

uint64_t sub_21767C7B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022C0 = result;
  return result;
}

uint64_t sub_21767C824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF50, &qword_21778F790);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x745364756F6C635FLL, 0xEC00000073757461, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02368 = result;
  return result;
}

uint64_t sub_21767C8A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF08, &qword_21778F748);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x746152726573755FLL, 0xEB00000000676E69, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02370 = result;
  return result;
}

uint64_t sub_21767C91C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02308 = result;
  return result;
}

uint64_t sub_21767C99C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF20, &qword_21778F760);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C022D0 = result;
  return result;
}

uint64_t sub_21767CA10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F4379616C705FLL, 0xEA0000000000746ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02238 = result;
  return result;
}

uint64_t sub_21767CA88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF90, &qword_21778F7D0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A070();
  qword_280BE6BB8 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.albums.getter()
{
  return sub_21767CE84(&qword_280BE6BB0, &qword_280BE6BB8);
}

{
  return sub_21767CE84(&qword_280BE6880, &qword_280BE6888);
}

{
  return sub_2177286EC();
}

uint64_t sub_21767CB0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF88, &qword_21778F7C8);
  OUTLINED_FUNCTION_60(v0);
  OUTLINED_FUNCTION_30_3();
  result = sub_21769A074();
  qword_280BE6B60 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.artists.getter()
{
  return sub_21767CE84(&qword_280BE6B58, &qword_280BE6B60);
}

{
  return sub_2177286EC();
}

{
  return sub_2177286EC();
}

uint64_t sub_21767CB8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A07C();
  qword_280C02398 = result;
  return result;
}

uint64_t sub_21767CBF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF80, &qword_21778F7C0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A06C();
  qword_280BE6BA0 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.genres.getter()
{
  return sub_21767CE84(&qword_280BE6B98, &qword_280BE6BA0);
}

{
  return sub_21767CE84(&qword_280BE6870, &qword_280BE6878);
}

{
  return sub_2177286EC();
}

{
  return sub_2177286EC();
}

uint64_t sub_21767CC74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A07C();
  qword_280BE6B48 = result;
  return result;
}

uint64_t static PartialMusicProperty<A>.library.getter()
{
  return sub_21767CE84(&qword_280BE6B40, &qword_280BE6B48);
}

{
  return sub_21767CE84(&qword_280BE91A8, &qword_280BE91B0);
}

{
  return sub_2177286EC();
}

{
  return sub_2177286EC();
}

uint64_t sub_21767CCFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF78, &qword_21778F7B8);
  OUTLINED_FUNCTION_60(v0);
  result = sub_21769A078();
  qword_280BE6BE0 = result;
  return result;
}

uint64_t sub_21767CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF70, &qword_21778F7B0);
  OUTLINED_FUNCTION_60(v5);
  result = sub_21736C3E4();
  *a4 = result;
  return result;
}

uint64_t sub_21767CE84(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_23_0();
  if (!v2)
  {
    swift_once();
  }
}

uint64_t sub_21767CECC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF60, &qword_21778F7A0);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C02378 = result;
  return result;
}

uint64_t sub_21767CF28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEE0, &qword_21778F720);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697C78(0x4C6D6F747375635FLL, 0xED00007363697279, 0, 0x676E69727453, 0xE600000000000000, qword_28295A918);
  qword_280C02340 = result;
  return result;
}

uint64_t sub_21767CFA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  v1 = OUTLINED_FUNCTION_44_29();
  result = OUTLINED_FUNCTION_26(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
  qword_280C022E8 = result;
  return result;
}

uint64_t sub_21767D018()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF10, &qword_21778F750);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_217697D00(0x73636972796C5FLL, 0xE700000000000000, 0, 0x72794C636973754DLL, 0xEB00000000736369, qword_28295A918);
  qword_280C02268 = result;
  return result;
}

uint64_t sub_21767D098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF68, &qword_21778F7A8);
  OUTLINED_FUNCTION_31_11(v0);
  result = sub_2172E3DC4();
  qword_280C022A0 = result;
  return result;
}

uint64_t sub_21767D0FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF0, &qword_21778F730);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656E6E695073695FLL, 0xE900000000000064, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_27CB8A2F0 = result;
  return result;
}

uint64_t sub_21767D174()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BEF8, &qword_21778F738);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x756F436B63617274, 0xEA0000000000746ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_27CB8A2F8 = result;
  return result;
}

uint64_t sub_21767D1EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2BF00, &qword_21778F740);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_27CB8A300 = result;
  return result;
}

uint64_t static MusicVideo.catalogFilterID(for:)@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(byte_21778F388);
  v3 = sub_2177529D8();
  v6 = OUTLINED_FUNCTION_59_22(v3, v4, v5, MEMORY[0x277D83F90]);

  if (v6)
  {
    v7 = 0xE200000000000000;
    v8 = 25705;
LABEL_5:
    *a2 = v8;
    a2[1] = v7;
    return sub_217751DE8();
  }

  KeyPath = swift_getKeyPath(byte_21778F3B0);
  v11 = OUTLINED_FUNCTION_59_22(KeyPath, v9, v10, MEMORY[0x277D83F90]);

  if (v11)
  {
    v7 = 0xE400000000000000;
    v8 = 1668445033;
    goto LABEL_5;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
  sub_217752C78();
  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21767D3D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21767D430@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t MusicVideo.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EEA6C();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicVideo.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();
  v2 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v2);
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x656C746974202C22, 0xEB0000000022203ALL);
  if (qword_280BE6BC8 != -1)
  {
    OUTLINED_FUNCTION_105_1(&qword_280BE6BC8);
  }

  v3 = sub_2172A4204();
  v5 = OUTLINED_FUNCTION_41_35(v3, v4);
  if (!v7)
  {
    v1 = v6;
  }

  MEMORY[0x21CEA23B0](v5, v1);

  v8 = OUTLINED_FUNCTION_44_29();
  MEMORY[0x21CEA23B0](v8);
  if (qword_280BE6DA0 != -1)
  {
    OUTLINED_FUNCTION_77(&qword_280BE6DA0);
  }

  v9 = sub_2172A4204();
  v11 = OUTLINED_FUNCTION_41_35(v9, v10);
  if (v7)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = v12;
  }

  MEMORY[0x21CEA23B0](v11, v13);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000, v14);
  return 0;
}

uint64_t static MusicVideo.typeValue.getter()
{
  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2(&qword_280BE7F40);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE7F48);

  return sub_217751DE8();
}

uint64_t sub_21767D768()
{
  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2(&qword_280BE7F40);
  }

  xmmword_280BE6380 = xmmword_280BE7F48;
  xmmword_280BE6390 = xmmword_280BE7F58;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.musicVideo.getter()
{
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6380);

  return sub_217751DE8();
}

unint64_t sub_21767D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2BED8;
  if (!qword_27CB2BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2BED8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_16_64()
{
  v1 = *(v0 + 176);
  *(v0 + 96) = *(v0 + 192);
  *(v0 + 112) = v1;
  result = *(v0 + 208);
  *(v0 + 80) = result;
  return result;
}

void OUTLINED_FUNCTION_18_53()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_41_35(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_49_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_217752998();
}

double OUTLINED_FUNCTION_57_23()
{
}

uint64_t OUTLINED_FUNCTION_59_22(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_217751F08();
}

uint64_t sub_21767DBE4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_169();
  if ((v6() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_47_28(v7);
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_71_19();
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_59_0(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v11)
  {
LABEL_30:
    v62 = 0;
    return OUTLINED_FUNCTION_15_61(v62);
  }

  OUTLINED_FUNCTION_73_19(v117);
  OUTLINED_FUNCTION_103_16(v118);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_73_19(v17);
  OUTLINED_FUNCTION_103_16(v5 + 48);
  v18 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_73_19(v18);
  v19 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v19);
  if (v10)
  {
    OUTLINED_FUNCTION_52_27();
    OUTLINED_FUNCTION_172_0(v115);
    if (v10)
    {
      OUTLINED_FUNCTION_51_24();
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v20, v21, v22);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_51_24();
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_52_27();
  OUTLINED_FUNCTION_172_0(v115);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_50_30();
    OUTLINED_FUNCTION_13_62(v24, v25, v26, v27, v28, v29, v30, v31, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    v32 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v32, v33, v34, v35, v36, v37, v38, v39, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    sub_21733BED8(v113);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v115, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  memcpy(v113, v5 + 48, sizeof(v113));
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  v40 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_94_15(v40, v41, v42, v43, v44, v45, v46, v47, v64);
  v48 = sub_21733BED8(&v64);
  OUTLINED_FUNCTION_29_39(v48, v49, v50, v51, v52, v53, v54, v55, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *v112);
  sub_21733BED8(v112);
  OUTLINED_FUNCTION_50_30();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v56, v57, v58);
  if ((v1 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  OUTLINED_FUNCTION_63_23(*(v3 + 48));
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 52));
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 56));
  if ((v61 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 60));
  return OUTLINED_FUNCTION_15_61(v62);
}

uint64_t sub_21767DE54(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_169();
  memcpy(v112, v2, sizeof(v112));
  memcpy(v111, v1, sizeof(v111));
  if ((static CloudFlexAnalysis.== infix(_:_:)(v112, v111) & 1) == 0)
  {
    goto LABEL_30;
  }

  v5 = v2[20] == v1[20] && v2[21] == v1[21];
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = v2[24];
  v7 = v1[24];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v2[23] == v1[23] && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v7)
  {
LABEL_30:
    v54 = 0;
    return v54 & 1;
  }

  OUTLINED_FUNCTION_68_23(v109);
  OUTLINED_FUNCTION_78_16(v110);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_68_23(v9);
  OUTLINED_FUNCTION_78_16((v3 + 384));
  v10 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_68_23(v10);
  v11 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v11);
  if (v5)
  {
    OUTLINED_FUNCTION_78_16(v107);
    OUTLINED_FUNCTION_172_0(v107);
    if (v5)
    {
      OUTLINED_FUNCTION_68_23(v108);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_68_23(v108);
  OUTLINED_FUNCTION_68_23(v106);
  OUTLINED_FUNCTION_78_16(v107);
  OUTLINED_FUNCTION_172_0(v107);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_68_23(v105);
    OUTLINED_FUNCTION_13_62(v16, v17, v18, v19, v20, v21, v22, v23, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104[0]);
    v24 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v24, v25, v26, v27, v28, v29, v30, v31, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104[0]);
    sub_21733BED8(v105);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v107, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_78_16(v105);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v32 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v32, v33, v34, v35, v36, v37, v38, v39, v56);
  v40 = sub_21733BED8(&v56);
  OUTLINED_FUNCTION_29_39(v40, v41, v42, v43, v44, v45, v46, v47, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *v104);
  sub_21733BED8(v104);
  OUTLINED_FUNCTION_68_23(v105);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v48, v49, v50);
  if ((v4 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v2[73], v1[73]);
  if ((v51 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[74], v1[74]);
  if ((v52 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[75], v1[75]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[76], v1[76]);
  return v54 & 1;
}

uint64_t sub_21767E124()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudMusicCreditsSection.== infix(_:_:)(v5, v6, v7, v8, v9, v10, v11, v12) & 1) == 0)
  {
    goto LABEL_30;
  }

  v13 = v0[23] == v1[23] && v0[24] == v1[24];
  if (!v13 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = v0[27];
  v15 = v1[27];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = v0[26] == v1[26] && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v15)
  {
LABEL_30:
    v62 = 0;
    return OUTLINED_FUNCTION_15_61(v62);
  }

  OUTLINED_FUNCTION_66_18(v117);
  OUTLINED_FUNCTION_76_17(v118);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_66_18(v17);
  OUTLINED_FUNCTION_76_17((v2 + 384));
  v18 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_66_18(v18);
  v19 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v19);
  if (v13)
  {
    OUTLINED_FUNCTION_76_17(v115);
    OUTLINED_FUNCTION_172_0(v115);
    if (v13)
    {
      OUTLINED_FUNCTION_66_18(v116);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v20, v21, v22);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_66_18(v116);
  OUTLINED_FUNCTION_66_18(v114);
  OUTLINED_FUNCTION_76_17(v115);
  OUTLINED_FUNCTION_172_0(v115);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_66_18(v113);
    OUTLINED_FUNCTION_13_62(v24, v25, v26, v27, v28, v29, v30, v31, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    v32 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v32, v33, v34, v35, v36, v37, v38, v39, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    sub_21733BED8(v113);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v115, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_76_17(v113);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v40 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v40, v41, v42, v43, v44, v45, v46, v47, v64);
  v48 = sub_21733BED8(&v64);
  OUTLINED_FUNCTION_29_39(v48, v49, v50, v51, v52, v53, v54, v55, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *v112);
  sub_21733BED8(v112);
  OUTLINED_FUNCTION_66_18(v113);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v56, v57, v58);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[76], v1[76]);
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[77], v1[77]);
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[78], v1[78]);
  if ((v61 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[79], v1[79]);
  return OUTLINED_FUNCTION_15_61(v62);
}

uint64_t sub_21767E3C0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_169();
  memcpy(v113, v2, sizeof(v113));
  memcpy(v112, v1, sizeof(v112));
  static CloudAudioAnalysis.== infix(_:_:)();
  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = v2[102] == v1[102] && v2[103] == v1[103];
  if (!v6 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v2[106];
  v8 = v1[106];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v2[105] == v1[105] && v7 == v8;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v8)
  {
LABEL_30:
    v55 = 0;
    return v55 & 1;
  }

  OUTLINED_FUNCTION_65_24(v110);
  OUTLINED_FUNCTION_75_16(v111);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_65_24(v10);
  OUTLINED_FUNCTION_75_16((v3 + 384));
  v11 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_65_24(v11);
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v12);
  if (v6)
  {
    OUTLINED_FUNCTION_75_16(v108);
    OUTLINED_FUNCTION_172_0(v108);
    if (v6)
    {
      OUTLINED_FUNCTION_65_24(v109);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v13, v14, v15);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_65_24(v109);
  OUTLINED_FUNCTION_65_24(v107);
  OUTLINED_FUNCTION_75_16(v108);
  OUTLINED_FUNCTION_172_0(v108);
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_65_24(v106);
    OUTLINED_FUNCTION_13_62(v17, v18, v19, v20, v21, v22, v23, v24, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0]);
    v25 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v25, v26, v27, v28, v29, v30, v31, v32, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105[0]);
    sub_21733BED8(v106);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v108, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_75_16(v106);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v33 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v33, v34, v35, v36, v37, v38, v39, v40, v57);
  v41 = sub_21733BED8(&v57);
  OUTLINED_FUNCTION_29_39(v41, v42, v43, v44, v45, v46, v47, v48, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *v105);
  sub_21733BED8(v105);
  OUTLINED_FUNCTION_65_24(v106);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v49, v50, v51);
  if ((v4 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v2[155], v1[155]);
  if ((v52 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[156], v1[156]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[157], v1[157]);
  if ((v54 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v2[158], v1[158]);
  return v55 & 1;
}

uint64_t sub_21767E738()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_16();
  if (!static CloudPersonalRecommendation.== infix(_:_:)())
  {
    goto LABEL_30;
  }

  v5 = v0[39] == v1[39] && v0[40] == v1[40];
  if (!v5 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = v0[43];
  v7 = v1[43];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v0[42] == v1[42] && v6 == v7;
    if (!v8 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v7)
  {
LABEL_30:
    v54 = 0;
    return OUTLINED_FUNCTION_15_61(v54);
  }

  OUTLINED_FUNCTION_48_20(v109);
  OUTLINED_FUNCTION_57_24(v110);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_48_20(v9);
  OUTLINED_FUNCTION_57_24((v2 + 384));
  v10 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_48_20(v10);
  v11 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v11);
  if (v5)
  {
    OUTLINED_FUNCTION_53_26();
    OUTLINED_FUNCTION_172_0(v107);
    if (v5)
    {
      OUTLINED_FUNCTION_48_20(v108);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v12, v13, v14);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_48_20(v108);
  OUTLINED_FUNCTION_48_20(v106);
  OUTLINED_FUNCTION_53_26();
  OUTLINED_FUNCTION_172_0(v107);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_48_20(v105);
    OUTLINED_FUNCTION_13_62(v16, v17, v18, v19, v20, v21, v22, v23, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104[0]);
    v24 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v24, v25, v26, v27, v28, v29, v30, v31, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104[0]);
    sub_21733BED8(v105);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v107, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_57_24(v105);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v32 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v32, v33, v34, v35, v36, v37, v38, v39, v56);
  v40 = sub_21733BED8(&v56);
  OUTLINED_FUNCTION_29_39(v40, v41, v42, v43, v44, v45, v46, v47, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, *v104);
  sub_21733BED8(v104);
  OUTLINED_FUNCTION_48_20(v105);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v48, v49, v50);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[92], v1[92]);
  if ((v51 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[93], v1[93]);
  if ((v52 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[94], v1[94]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[95], v1[95]);
  return OUTLINED_FUNCTION_15_61(v54);
}

uint64_t sub_21767EABC()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudPlaylistFolder.== infix(_:_:)(v5, v6) & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v0[39] == v1[39] && v0[40] == v1[40];
  if (!v7 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = v0[43];
  v9 = v1[43];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v0[42] == v1[42] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v9)
  {
LABEL_30:
    v56 = 0;
    return OUTLINED_FUNCTION_15_61(v56);
  }

  OUTLINED_FUNCTION_48_20(v111);
  OUTLINED_FUNCTION_57_24(v112);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_48_20(v11);
  OUTLINED_FUNCTION_57_24((v2 + 384));
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_48_20(v12);
  v13 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v13);
  if (v7)
  {
    OUTLINED_FUNCTION_53_26();
    OUTLINED_FUNCTION_172_0(v109);
    if (v7)
    {
      OUTLINED_FUNCTION_48_20(v110);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v14, v15, v16);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_48_20(v110);
  OUTLINED_FUNCTION_48_20(v108);
  OUTLINED_FUNCTION_53_26();
  OUTLINED_FUNCTION_172_0(v109);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_48_20(v107);
    OUTLINED_FUNCTION_13_62(v18, v19, v20, v21, v22, v23, v24, v25, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]);
    v26 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v26, v27, v28, v29, v30, v31, v32, v33, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]);
    sub_21733BED8(v107);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v109, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_57_24(v107);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v34 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v34, v35, v36, v37, v38, v39, v40, v41, v58);
  v42 = sub_21733BED8(&v58);
  OUTLINED_FUNCTION_29_39(v42, v43, v44, v45, v46, v47, v48, v49, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
  sub_21733BED8(v106);
  OUTLINED_FUNCTION_48_20(v107);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v50, v51, v52);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[92], v1[92]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[93], v1[93]);
  if ((v54 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[94], v1[94]);
  if ((v55 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[95], v1[95]);
  return OUTLINED_FUNCTION_15_61(v56);
}

uint64_t sub_21767EDA0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_169();
  if ((v6() & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_47_28(v7);
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_71_19();
  if (v13)
  {
    if (!v11)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_59_0(v12);
    v16 = v10 && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v11)
  {
LABEL_30:
    v62 = 0;
    return OUTLINED_FUNCTION_15_61(v62);
  }

  OUTLINED_FUNCTION_73_19(v117);
  OUTLINED_FUNCTION_103_16(v118);
  OUTLINED_FUNCTION_86_16();
  OUTLINED_FUNCTION_73_19(v17);
  OUTLINED_FUNCTION_103_16(v5 + 48);
  v18 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_73_19(v18);
  v19 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v19);
  if (v10)
  {
    OUTLINED_FUNCTION_52_27();
    OUTLINED_FUNCTION_172_0(v115);
    if (v10)
    {
      OUTLINED_FUNCTION_51_24();
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_170_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v20, v21, v22);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_51_24();
  memcpy(__dst, __src, sizeof(__dst));
  OUTLINED_FUNCTION_52_27();
  OUTLINED_FUNCTION_172_0(v115);
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_50_30();
    OUTLINED_FUNCTION_13_62(v24, v25, v26, v27, v28, v29, v30, v31, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    v32 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v32, v33, v34, v35, v36, v37, v38, v39, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0]);
    sub_21733BED8(v113);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v115, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  memcpy(v113, v5 + 48, sizeof(v113));
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  v40 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_94_15(v40, v41, v42, v43, v44, v45, v46, v47, v64);
  v48 = sub_21733BED8(&v64);
  OUTLINED_FUNCTION_29_39(v48, v49, v50, v51, v52, v53, v54, v55, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, *v112);
  sub_21733BED8(v112);
  OUTLINED_FUNCTION_50_30();
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v56, v57, v58);
  if ((v1 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  OUTLINED_FUNCTION_63_23(*(v3 + 48));
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 52));
  if ((v60 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 56));
  if ((v61 & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_63_23(*(v3 + 60));
  return OUTLINED_FUNCTION_15_61(v62);
}

uint64_t sub_21767F088()
{
  OUTLINED_FUNCTION_90_17();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_88_16();
  if ((static CloudCreditArtist.== infix(_:_:)(v5, v6) & 1) == 0)
  {
    goto LABEL_30;
  }

  v7 = v0[77] == v1[77] && v0[78] == v1[78];
  if (!v7 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_30;
  }

  v8 = v0[81];
  v9 = v1[81];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v0[80] == v1[80] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v9)
  {
LABEL_30:
    v56 = 0;
    return OUTLINED_FUNCTION_15_61(v56);
  }

  OUTLINED_FUNCTION_67_19(v111);
  OUTLINED_FUNCTION_77_16(v112);
  OUTLINED_FUNCTION_87_19();
  OUTLINED_FUNCTION_67_19(v11);
  OUTLINED_FUNCTION_77_16((v2 + 384));
  v12 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_67_19(v12);
  v13 = OUTLINED_FUNCTION_21_47();
  OUTLINED_FUNCTION_172_0(v13);
  if (v7)
  {
    OUTLINED_FUNCTION_77_16(v109);
    OUTLINED_FUNCTION_172_0(v109);
    if (v7)
    {
      OUTLINED_FUNCTION_67_19(v110);
      OUTLINED_FUNCTION_43_29();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_42_36();
      OUTLINED_FUNCTION_39_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_36();
      sub_2171F0738(v14, v15, v16);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_12_56();
    OUTLINED_FUNCTION_10_63();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_67_19(v110);
  OUTLINED_FUNCTION_67_19(v108);
  OUTLINED_FUNCTION_77_16(v109);
  OUTLINED_FUNCTION_172_0(v109);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_67_19(v107);
    OUTLINED_FUNCTION_13_62(v18, v19, v20, v21, v22, v23, v24, v25, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]);
    v26 = OUTLINED_FUNCTION_11_70();
    OUTLINED_FUNCTION_9_78(v26, v27, v28, v29, v30, v31, v32, v33, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106[0]);
    sub_21733BED8(v107);
LABEL_24:
    OUTLINED_FUNCTION_30_38();
    sub_2171F0738(v109, &qword_27CB289A8, &qword_217790120);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_77_16(v107);
  OUTLINED_FUNCTION_23_50();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_22_53();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_20_49();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  v34 = OUTLINED_FUNCTION_64_24();
  OUTLINED_FUNCTION_18_54(v34, v35, v36, v37, v38, v39, v40, v41, v58);
  v42 = sub_21733BED8(&v58);
  OUTLINED_FUNCTION_29_39(v42, v43, v44, v45, v46, v47, v48, v49, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, *v106);
  sub_21733BED8(v106);
  OUTLINED_FUNCTION_67_19(v107);
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v50, v51, v52);
  if ((v3 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  sub_217261FB0(v0[130], v1[130]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[131], v1[131]);
  if ((v54 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[132], v1[132]);
  if ((v55 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_217261FB0(v0[133], v1[133]);
  return OUTLINED_FUNCTION_15_61(v56);
}

void static LegacyModelCodablePlaylistEntry.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C000, &unk_21778F840);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_87_2();
  memcpy(v76, v5, sizeof(v76));
  memcpy(v77, v3, sizeof(v77));
  memcpy(v74, v5, 0x1B8uLL);
  memcpy(&v74[440], v3, 0x1B8uLL);
  memcpy(v78, v5, 0x1B8uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v78) == 1)
  {
    OUTLINED_FUNCTION_176(v73);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v73) == 1)
    {
      v69 = v9;
      memcpy(v75, v74, sizeof(v75));
      sub_2172E3D54();
      sub_2172E3D54();
      sub_2171F0738(v75, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_9;
    }

LABEL_5:
    memcpy(v73, v74, sizeof(v73));
    sub_2172E3D54();
    sub_2172E3D54();
    v16 = &qword_27CB25008;
    v17 = &qword_21778F850;
    v18 = v73;
LABEL_6:
    sub_2171F0738(v18, v16, v17);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_176(v72);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v72) == 1)
  {
    goto LABEL_5;
  }

  v69 = v9;
  OUTLINED_FUNCTION_176(v70);
  OUTLINED_FUNCTION_176(v73);
  memcpy(v75, v74, sizeof(v75));
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172A92BC();
  v20 = v19;
  sub_2171F0738(v70, &qword_27CB25000, &unk_21776EA00);
  memcpy(v71, v74, sizeof(v71));
  sub_2171F0738(v71, &qword_27CB25000, &unk_21776EA00);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v21 = *(v3 + 448);
  if (*(v5 + 448))
  {
    if (!*(v3 + 448))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*(v5 + 440) != *(v3 + 440))
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_7;
    }
  }

  v22 = *(v5 + 464);
  v23 = *(v3 + 464);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_7;
    }

    v24 = *(v5 + 456) == *(v3 + 456) && v22 == v23;
    if (!v24 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v23)
  {
    goto LABEL_7;
  }

  v25 = *(v5 + 480);
  v26 = *(v3 + 480);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_7;
    }

    v27 = *(v5 + 472) == *(v3 + 472) && v25 == v26;
    if (!v27 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v26)
  {
    goto LABEL_7;
  }

  v68 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v28 = *(v14 + 48);
  OUTLINED_FUNCTION_171_1();
  sub_2172E3D54();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v0, 1, v6);
  if (!v24)
  {
    sub_2172E3D54();
    OUTLINED_FUNCTION_133(v0 + v28, 1, v6);
    if (!v29)
    {
      v30 = v69;
      sub_2172E21DC();
      v31 = sub_21767DBE4(v13);
      sub_2171F0738(v30, &qword_27CB25650, &unk_21778F830);
      sub_2171F0738(v13, &qword_27CB25650, &unk_21778F830);
      sub_2171F0738(v0, &qword_27CB25648, &qword_21775D598);
      if ((v31 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_43;
    }

    sub_2171F0738(v13, &qword_27CB25650, &unk_21778F830);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_133(v0 + v28, 1, v6);
  if (!v24)
  {
LABEL_41:
    v16 = &qword_27CB2C000;
    v17 = &unk_21778F840;
    v18 = v0;
    goto LABEL_6;
  }

  sub_2171F0738(v0, &qword_27CB25648, &qword_21775D598);
LABEL_43:
  v32 = v68;
  OUTLINED_FUNCTION_7_74();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v34);
    v38 = v24 && v36 == v37;
    if (!v38 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v33)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_74();
  if (v41)
  {
    if (!v39)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v40);
    v44 = v24 && v42 == v43;
    if (!v44 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v39)
  {
    goto LABEL_7;
  }

  v45 = *(v32 + 44);
  v46 = (v5 + v45);
  v47 = *(v5 + v45 + 8);
  v48 = (v3 + v45);
  v49 = *(v3 + v45 + 8);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_74();
  if (v52)
  {
    if (!v50)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v51);
    v55 = v24 && v53 == v54;
    if (!v55 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v50)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_74();
  if (v58)
  {
    if (!v56)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_59_0(v57);
    v61 = v24 && v59 == v60;
    if (!v61 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v56)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_74();
  if (v64 && v62)
  {
    OUTLINED_FUNCTION_59_0(v63);
    if (!v24 || v65 != v66)
    {
      sub_217753058();
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21767F994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002177ABFE0 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000002177B49D0 == a2;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1835365481 && a2 == 0xE400000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7079546D6574695FLL && a2 == 0xE900000000000065;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000002177B49F0 == a2;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x53676E6974696465 && a2 == 0xEF4449656C626174)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_217753058();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_21767FD0C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x79616C507473616CLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 1835365481;
      break;
    case 5:
      result = 0x7079546D6574695FLL;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6E6F697469736F70;
      break;
    case 8:
      result = 0x44657361656C6572;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x53676E6974696465;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21767FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21767F994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21767FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176802EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21767FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176802EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void LegacyModelCodablePlaylistEntry.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C008, &unk_21778F858);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2176802EC(v11, v12, v13);
  sub_2177532F8();
  OUTLINED_FUNCTION_12_33();
  memcpy(v14, v15, v16);
  OUTLINED_FUNCTION_12_33();
  memcpy(v17, v18, v19);
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  OUTLINED_FUNCTION_38_7();
  sub_217752F38();
  if (v1)
  {
    memcpy(v33, v34, sizeof(v33));
    sub_2171F0738(v33, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v33, v34, sizeof(v33));
    sub_2171F0738(v33, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_0_133(1);
    sub_217752F28();
    OUTLINED_FUNCTION_0_133(2);
    sub_217752EF8();
    OUTLINED_FUNCTION_0_133(3);
    sub_217752EF8();
    v20 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    LOBYTE(v31) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    sub_217683A94(&qword_27CB2C018, &protocol conformance descriptor for <> CloudResource<A>);
    OUTLINED_FUNCTION_38_7();
    v21 = sub_217752F38();
    v24 = (v2 + v20[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v24) = *(v24 + 16);
    *&v31 = v25;
    *(&v31 + 1) = v26;
    v32 = v24;
    v27 = sub_21733ABF0(v21, v22, v23);
    sub_217751DE8();
    OUTLINED_FUNCTION_62_21();
    OUTLINED_FUNCTION_38_7();
    sub_217752F38();
    if (v27)
    {
    }

    else
    {

      OUTLINED_FUNCTION_0_133(6);
      sub_217752EF8();
      OUTLINED_FUNCTION_0_133(7);
      sub_217752F28();
      OUTLINED_FUNCTION_0_133(8);
      v28 = sub_217752EF8();
      v31 = *(v2 + v20[13]);
      sub_2172E1B18(v28, v29, v30);
      OUTLINED_FUNCTION_62_21();
      OUTLINED_FUNCTION_38_7();
      sub_217752F38();
      v31 = *(v2 + v20[14]);
      OUTLINED_FUNCTION_62_21();
      OUTLINED_FUNCTION_38_7();
      sub_217752F38();
    }
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176802EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C010;
  if (!qword_27CB2C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C010);
  }

  return result;
}

uint64_t sub_217680340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void LegacyModelCodablePlaylistEntry.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9 - 8];
  memcpy(v18, v0, sizeof(v18));
  v11 = *(v0 + 432);
  memcpy(v19, v0, sizeof(v19));
  v20 = v11;
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v19) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v17, v18, sizeof(v17));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v2);
    sub_217751DE8();
    sub_217265A08(v2, v11);
  }

  if (*(v0 + 448) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v12 = *(v0 + 440);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v12);
  }

  if (*(v0 + 464))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 480))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v10, 1, v3);
  if (v14)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    sub_2172E21DC();
    OUTLINED_FUNCTION_119();
    LegacyModelCodablePlaylistEntryItem.hash(into:)();
    sub_217751FF8();
    if (*&v6[v3[10] + 8])
    {
      OUTLINED_FUNCTION_119();
      OUTLINED_FUNCTION_185_0();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_120();
    }

    memcpy(v17, &v6[v3[11]], 0x180uLL);
    sub_2172638E8(v2);
    OUTLINED_FUNCTION_101_13(v3[12]);
    OUTLINED_FUNCTION_101_13(v3[13]);
    OUTLINED_FUNCTION_101_13(v3[14]);
    OUTLINED_FUNCTION_101_13(v3[15]);
    sub_2171F0738(v6, &qword_27CB25650, &unk_21778F830);
  }

  OUTLINED_FUNCTION_82_14();
  if (v3)
  {
    OUTLINED_FUNCTION_113_12();
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_82_14();
  if (v3)
  {
    OUTLINED_FUNCTION_113_12();
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v15 = v0 + *(v13 + 44);
  if (*(v15 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v3 = *v15;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v3);
  }

  OUTLINED_FUNCTION_82_14();
  if (v3)
  {
    OUTLINED_FUNCTION_113_12();
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_82_14();
  if (v3)
  {
    OUTLINED_FUNCTION_113_12();
    OUTLINED_FUNCTION_54_23();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + *(v13 + 56) + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

void LegacyModelCodablePlaylistEntry.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v28);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = v73 - v30;
  v73[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C030, &qword_21778F868);
  OUTLINED_FUNCTION_0_0();
  v33 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v77 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v74 = v25;
  v75 = (v37 - v36);
  v38 = v25[4];
  v39 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2176802EC(v39, v40, v41);
  sub_2177532C8();
  v42 = v23;
  if (v23)
  {
    v76 = v23;
    OUTLINED_FUNCTION_92_17();
    v43 = v75;
    __swift_destroy_boxed_opaque_existential_1(v74);
    v45 = 0;
    v46 = 0;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_5:

    if (v31)
    {
      goto LABEL_13;
    }

LABEL_6:
    v44 = v77;
    if (!v38)
    {
      goto LABEL_14;
    }

LABEL_7:
    sub_2171F0738(&v43[v44[8]], &qword_27CB25648, &qword_21775D598);
    if (v42)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (!v46)
    {
      goto LABEL_16;
    }

LABEL_9:
    OUTLINED_FUNCTION_191_2();
    if ((v45 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v73[0] = v27;
  LODWORD(v38) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D0, &protocol conformance descriptor for <A> CloudAttribute<A>);
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v47 = v75;
  memcpy(v75, v80, 0x1B8uLL);
  LOBYTE(v78) = 1;
  OUTLINED_FUNCTION_93_15();
  *(v47 + 55) = sub_217752E48();
  v47[448] = v48 & 1;
  OUTLINED_FUNCTION_5_93(2);
  *(v47 + 57) = sub_217752E18();
  *(v47 + 58) = v49;
  OUTLINED_FUNCTION_5_93(3);
  *(v47 + 59) = sub_217752E18();
  *(v47 + 60) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  LOBYTE(v78) = 4;
  sub_217683A94(&qword_27CB2C038, &protocol conformance descriptor for <> CloudResource<A>);
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v42 = 0;
  v51 = v77;
  v52 = sub_2172E21DC();
  sub_21733BE84(v52, v53, v54);
  OUTLINED_FUNCTION_37_35();
  OUTLINED_FUNCTION_93_15();
  sub_217752E58();
  v55 = v79;
  v56 = &v47[v51[9]];
  *v56 = v78;
  v56[16] = v55;
  OUTLINED_FUNCTION_5_93(6);
  v57 = sub_217752E18();
  v58 = &v47[v51[10]];
  *v58 = v57;
  v58[1] = v59;
  OUTLINED_FUNCTION_5_93(7);
  v60 = sub_217752E48();
  v61 = &v47[v51[11]];
  *v61 = v60;
  v61[8] = v62 & 1;
  OUTLINED_FUNCTION_5_93(8);
  v63 = sub_217752E18();
  v76 = 0;
  v66 = &v47[v77[12]];
  *v66 = v63;
  v66[1] = v64;
  LODWORD(v31) = sub_2172E1C68(v63, v64, v65);
  OUTLINED_FUNCTION_37_35();
  v67 = v76;
  sub_217752E58();
  v76 = v67;
  if (!v67)
  {
    *&v75[v77[13]] = v78;
    OUTLINED_FUNCTION_37_35();
    sub_217752E58();
    v76 = 0;
    v70 = OUTLINED_FUNCTION_61_19();
    v71(v70);
    v72 = v75;
    *&v75[v77[14]] = v78;
    sub_217683E38();
    __swift_destroy_boxed_opaque_existential_1(v74);
    sub_217683E90(v72, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
    goto LABEL_18;
  }

  v68 = OUTLINED_FUNCTION_61_19();
  v69(v68);
  __swift_destroy_boxed_opaque_existential_1(v74);
  OUTLINED_FUNCTION_17_56();
  v46 = 1;
  v45 = 1;
  v43 = v75;
  memcpy(v80, v75, 0x1B8uLL);
  sub_2171F0738(v80, &qword_27CB25000, &unk_21776EA00);
  if (v38)
  {
    goto LABEL_5;
  }

LABEL_12:
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_13:

  v44 = v77;
  if (v38)
  {
    goto LABEL_7;
  }

LABEL_14:
  if (!v42)
  {
    goto LABEL_8;
  }

LABEL_15:
  OUTLINED_FUNCTION_191_2();
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_16:
  if (!v45)
  {
    goto LABEL_18;
  }

LABEL_17:
  OUTLINED_FUNCTION_191_2();
LABEL_18:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_217680E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683B68(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217680E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683B68(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217680F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683BBC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217680F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683BBC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21768103C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683C10(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217681078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683C10(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2176810F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0_0();
  v30 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_2177532F8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_170();
}

uint64_t LegacyModelCodablePlaylistEntry.attributes.getter()
{
  OUTLINED_FUNCTION_99_16();
  OUTLINED_FUNCTION_32_42();
  return sub_217683E38();
}

uint64_t LegacyModelCodablePlaylistEntry.relationships.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntry.views.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LegacyModelCodablePlaylistEntry.meta.getter()
{
  result = OUTLINED_FUNCTION_99_16();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_217681368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BE8AD0 + 1);
  v2 = byte_280BE8AE0;
  *(v0 + 32) = xmmword_280BE8AD0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_27CB2BFF8 = v0;

  return sub_217751DE8();
}

uint64_t static LegacyModelCodablePlaylistEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (v3 || (sub_217753058()) && (v4 = type metadata accessor for LegacyModelCodablePlaylistEntry(0), static LegacyModelCodablePlaylistEntry.Attributes.== infix(_:_:)(), (v5) && *(v1 + v4[6]) == *(v0 + v4[6]) && *(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v6 = *(v1 + v4[8]) ^ *(v0 + v4[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2176814F8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21768158C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176815E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683C84(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21768161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217683C84(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelCodablePlaylistEntry.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C070, &qword_21778F888);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_87_2();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217683C84(v8, v9, v10);
  v11 = sub_2177532F8();
  sub_2172E1B18(v11, v12, v13);
  OUTLINED_FUNCTION_4_111();
  sub_217752F88();
  if (!v1)
  {
    type metadata accessor for LegacyModelCodablePlaylistEntry(0);
    type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
    OUTLINED_FUNCTION_34_37();
    sub_217680340(v14, v15, &protocol conformance descriptor for LegacyModelCodablePlaylistEntry.Attributes);
    v16 = sub_217752F88();
    sub_21733C0C8(v16, v17, v18);
    OUTLINED_FUNCTION_4_111();
    v19 = sub_217752F38();
    sub_21733C074(v19, v20, v21);
    OUTLINED_FUNCTION_4_111();
    v22 = sub_217752F38();
    sub_2174D77D0(v22, v23, v24);
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t LegacyModelCodablePlaylistEntry.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  LegacyModelCodablePlaylistEntry.Attributes.hash(into:)();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t sub_217681938(uint64_t (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void LegacyModelCodablePlaylistEntry.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v62[1] = v26;
  type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2C080, &unk_21778F890);
  OUTLINED_FUNCTION_0_0();
  v62[2] = v32;
  v62[3] = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  v35 = v62 - v34;
  v36 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v40 = (v39 - v38);
  v41 = v25[3];
  v63 = v25;
  v42 = __swift_project_boxed_opaque_existential_1(v25, v41);
  sub_217683C84(v42, v43, v44);
  v62[4] = v35;
  v45 = sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    sub_2172E1C68(v45, v46, v47);
    sub_217752EA8();
    v48 = v65;
    *v40 = v64;
    v40[1] = v48;
    v62[0] = v48;
    LOBYTE(v64) = 1;
    OUTLINED_FUNCTION_34_37();
    sub_217680340(v49, v50, &protocol conformance descriptor for LegacyModelCodablePlaylistEntry.Attributes);
    sub_217752EA8();
    v51 = sub_217683CD8(v30, v40 + v36[5]);
    sub_217683D3C(v51, v52, v53);
    OUTLINED_FUNCTION_5_62();
    v54 = sub_217752E58();
    *(v40 + v36[6]) = v64;
    sub_217683D90(v54, v55, v56);
    OUTLINED_FUNCTION_5_62();
    v57 = sub_217752E58();
    *(v40 + v36[7]) = v64;
    sub_217683DE4(v57, v58, v59);
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    v60 = OUTLINED_FUNCTION_10_0();
    v61(v60);
    *(v40 + v36[8]) = v64;
    sub_217683E38();
    __swift_destroy_boxed_opaque_existential_1(v63);
    sub_217683E90(v40, type metadata accessor for LegacyModelCodablePlaylistEntry);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_217681D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

void Playlist.Entry.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v172 = v1;
  v196 = v3;
  v197 = v2;
  v5 = v4;
  v193 = v6;
  v198 = v7;
  v195 = *(v7 - 8);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v171 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v190 = v169 - v12;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_1();
  v169[2] = v14 - v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  v170 = v169 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_1();
  v175 = v20 - v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_99();
  v191 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99();
  v192 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99();
  v174 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_99();
  v186 = v29;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_99();
  v187 = v31;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_99();
  v173 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_99();
  v202 = v35;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v36);
  v184 = v169 - v37;
  v201 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v203 = v40 - v39;
  v41 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  v219 = 0;
  v46 = 0uLL;
  v217 = 0u;
  v218 = 0u;
  v216 = 0u;
  v220 = -1;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
    v46 = 0uLL;
  }

  v221[0] = v46;
  v221[1] = v46;
  v221[2] = v46;
  v221[3] = v46;
  v221[4] = v46;
  v221[5] = v46;
  v221[6] = v46;
  *&v221[7] = 0;
  sub_2172DABC4();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v48 = v47[10];
  v49 = v5 + v47[9];
  v50 = *(v49 + 8);
  v200 = *v49;
  v181 = *(v49 + 16);
  v51 = *(v5 + v47[12]);
  v52 = *(v5 + v47[13]);
  v53 = v47[15];
  v176 = *(v5 + v47[14]);
  v177 = v51;
  v54 = *(v5 + v48 + 8);
  v179 = *(v5 + v48);
  v204 = v5;
  v55 = *(v5 + v53);
  v215 = 0;
  v213 = 0u;
  v214 = 0u;
  sub_2172A497C(v223);
  memcpy(v45, v223, 0x221uLL);
  *(v45 + 552) = 0;
  *(v45 + 560) = 1;
  v56 = v41[8];
  v57 = sub_2177517D8();
  v182 = v56;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v57);
  v183 = v41[9];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v57);
  v64 = v45 + v41[10];
  *(v64 + 48) = 0;
  *(v64 + 16) = 0u;
  *(v64 + 32) = 0u;
  *v64 = 0u;
  v194 = v64;
  *(v64 + 56) = -1;
  v65 = v45 + v41[11];
  *v65 = 0;
  *(v65 + 8) = 0;
  v185 = v65;
  *(v65 + 16) = 0;
  memcpy((v45 + v41[12]), v221, 0x78uLL);
  v66 = (v45 + v41[14]);
  *v66 = 0;
  v66[1] = 0;
  v188 = v41[15];
  OUTLINED_FUNCTION_5_5();
  v205 = v57;
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v57);
  v70 = v45 + v41[17];
  *(v70 + 32) = 0;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  v71 = qword_280BE3168;
  v180 = v50;
  v72 = v55;
  v74 = v176;
  v73 = v177;
  sub_217751DE8();
  v178 = v54;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v75 = v72;
  sub_217751DE8();
  if (v71 != -1)
  {
    swift_once();
  }

  v76 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    v168 = qword_280C01FB0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FB0 < 0)
    {
      v168 = qword_280C01FB0;
    }

    v169[1] = v168;
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_1024();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_1024();

    v76 = v71;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v45 + v41[18]) = v76;
  v77 = (v45 + v41[21]);
  memcpy((v45 + v41[19]), v222, 0x161uLL);
  v78 = v45 + v41[20];
  v79 = v180;
  *v78 = v200;
  *(v78 + 8) = v79;
  *(v78 + 16) = v181;
  v80 = v178;
  *v77 = v179;
  v77[1] = v80;
  *(v45 + v41[22]) = v73;
  *(v45 + v41[23]) = v52;
  *(v45 + v41[24]) = v74;
  *(v45 + v41[25]) = v75;
  sub_2172E1F3C();
  sub_2172E1F3C();
  v81 = v203;
  sub_217683E38();
  v82 = v81 + *(v201 + 20);
  OUTLINED_FUNCTION_12_33();
  memcpy(v83, v84, v85);
  OUTLINED_FUNCTION_12_33();
  memcpy(v86, v87, v88);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v212) == 1)
  {
    v89 = v223;
  }

  else
  {
    memcpy(v210, v212, 0x1B8uLL);
    memcpy(v206, v211, sizeof(v206));
    OUTLINED_FUNCTION_39_0();
    sub_2172E3D54();
    CloudAttribute<A>.convertToArtwork()(v208);
    memcpy(v207, v210, sizeof(v207));
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v90, v91, v92);
    memcpy(v209, v208, 0x221uLL);
    nullsub_1();
    v89 = v209;
  }

  memcpy(v210, v89, sizeof(v210));
  v93 = v205;
  v94 = v202;
  memcpy(v209, v45, 0x221uLL);
  sub_2171F0738(v209, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v45, v210, 0x221uLL);
  if ((*(v82 + 448) & 1) == 0)
  {
    *(v45 + 552) = *(v82 + 440) / 1000.0;
    *(v45 + 560) = 0;
  }

  v199 = v41;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v95 = type metadata accessor for CloudFormatter(0);
  v96 = __swift_project_value_buffer(v95, qword_280BE8918);
  v97 = *(v82 + 464);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v93);
  v200 = v96;
  v201 = v95;
  if (v97)
  {
    v101 = *(v96 + *(v95 + 20));
    OUTLINED_FUNCTION_16_0();
    v102 = sub_217751F18();
    v103 = [v101 dateFromString_];

    if (v103)
    {
      v104 = v173;
      sub_2177517C8();

      v105 = 0;
    }

    else
    {
      v105 = 1;
      v104 = v173;
    }

    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v109, v110, v111);
    __swift_storeEnumTagSinglePayload(v104, v105, 1, v93);
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_36();
    sub_2172E21DC();
    v95 = v201;
  }

  else
  {
    sub_2171F0738(v94, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v93);
  }

  sub_2172E1F3C();
  v112 = *(v82 + 480);
  v113 = v186;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v93);
  if (v112)
  {
    v117 = *(v200 + *(v95 + 20));
    OUTLINED_FUNCTION_16_0();
    v118 = sub_217751F18();
    v119 = [v117 dateFromString_];

    if (v119)
    {
      v120 = v174;
      sub_2177517C8();

      v121 = 0;
    }

    else
    {
      v121 = 1;
      v120 = v174;
    }

    v125 = v205;
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v126, v127, v128);
    __swift_storeEnumTagSinglePayload(v120, v121, 1, v125);
    OUTLINED_FUNCTION_170_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_36();
    sub_2172E21DC();
  }

  else
  {
    sub_2171F0738(v113, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v93);
  }

  sub_2172E1F3C();
  v129 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v130 = v190;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v130, 1, v189);
  if (v131)
  {
    sub_2171F0738(v130, &qword_27CB25648, &qword_21775D598);
  }

  else
  {
    v132 = v170;
    sub_2172E21DC();
    sub_2172E3D54();
    (*(v195 + 16))(v171, v197, v198);

    Playlist.Entry.Item.init<A>(_:configuration:sharedRelatedItemStore:)();
    sub_2171F0738(v132, &qword_27CB25650, &unk_21778F830);
    sub_2172E1F3C();
  }

  v133 = v191;
  v134 = v201;
  v135 = v199;
  v136 = v45 + v199[13];
  v137 = v82 + v129[9];
  v139 = *v137;
  v138 = *(v137 + 8);
  LOBYTE(v137) = *(v137 + 16);
  v140 = v185;
  *v185 = v139;
  v140[1] = v138;
  *(v140 + 16) = v137;
  sub_217751DE8();

  v141 = v82 + v129[11];
  v142 = *v141;
  LOBYTE(v141) = *(v141 + 8);
  *v136 = v142;
  *(v136 + 8) = v141;
  v143 = *(v82 + v129[12] + 8);
  OUTLINED_FUNCTION_5_5();
  v144 = v205;
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v205);
  if (v143)
  {
    v148 = *(v200 + *(v134 + 20));
    OUTLINED_FUNCTION_16_0();
    v149 = sub_217751F18();
    v150 = [v148 dateFromString_];

    if (v150)
    {
      v151 = v175;
      sub_2177517C8();

      v152 = 0;
    }

    else
    {
      v152 = 1;
      v151 = v175;
    }

    v157 = v204;
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v158, v159, v160);
    __swift_storeEnumTagSinglePayload(v151, v152, 1, v205);
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    v156 = v157;
    v135 = v199;
  }

  else
  {
    sub_2171F0738(v133, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v144);
    v156 = v204;
  }

  v161 = (v45 + *(v135 + 64));
  sub_2172E1F3C();
  v162 = (v82 + v129[10]);
  v163 = v162[1];
  *v161 = *v162;
  v161[1] = v163;
  v164 = (v82 + v129[13]);
  v165 = v164[1];
  *(v45 + 568) = *v164;
  *(v45 + 576) = v165;
  v166 = (v82 + v129[14]);
  v167 = v166[1];
  *(v45 + 584) = *v166;
  *(v45 + 592) = v167;
  v208[3] = v135;
  v208[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v208);
  sub_217683E38();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  Playlist.Entry.init(propertyProvider:)(v208, v193);

  (*(v195 + 8))(v197, v198);
  sub_2171F0738(v156, &qword_27CB247D8, &qword_217758D60);
  sub_217683E90(v203, type metadata accessor for LegacyModelCodablePlaylistEntry);
  sub_217683E90(v45, type metadata accessor for PlaylistEntryPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void Playlist.Entry.convertToLegacyModelCodableResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v209 = v3;
  v210 = v4;
  v208 = v5;
  v222 = v6;
  v221 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v224 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_87_2();
  v12 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v207 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_99();
  v204 = v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20);
  v22 = &v201 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v205 = v25 - v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99();
  v218 = v28;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v29);
  v31 = &v201 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_99();
  v212 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34);
  v36 = &v201 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v201 - v38;
  v220 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v219 = (v49 - v48);
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, v41, v42, v43, v44, v45, v46, v47, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, qword_280BE66E0, v217, v218);
  v50 = LOBYTE(v230[7]);
  v51 = sub_2171F0738(v230, &qword_27CB27D20, &qword_217758B80);
  LODWORD(v217) = v50;
  v223 = v1;
  if (v50 == 255)
  {
    v61 = COERCE_DOUBLE(Playlist.Entry.duration.getter(v51));
    HIDWORD(v206) = v62;
    if (v62)
    {
      v215 = 0;
LABEL_11:
      Playlist.Entry.artwork.getter(v62, v63, v64, v65, v66, v67, v68, v229);
      memcpy(v230, v229, 0x221uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v230) == 1)
      {
        sub_2172E22C0(v225);
      }

      else
      {
        memcpy(v225, v230, 0x221uLL);
        Artwork.convertToCloudArtworkAttribute()(v227);
        memcpy(v226, v225, 0x221uLL);
        sub_217284084(v226);
        memcpy(v228, v227, sizeof(v228));
        nullsub_1();
        memcpy(v225, v228, 0x1B8uLL);
      }

      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24(&qword_280BE8910);
      }

      v70 = type metadata accessor for CloudFormatter(0);
      v211 = __swift_project_value_buffer(v70, qword_280BE8918);
      if (qword_280BE6738 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02080, v71, v72, v73, v74, v75, v76, v77, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
      OUTLINED_FUNCTION_185_0();
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v36, 1, v12);
      v202 = v70;
      v203 = v17;
      if (v78)
      {
        sub_2171F0738(v39, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v36, &qword_27CB241C0, &qword_217759480);
        v213 = 0;
        v214 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_59_23();
        v79(v22, v36, v12);
        v80 = *(v211 + *(v70 + 20));
        v81 = sub_2177517A8();
        v82 = [v80 stringFromDate_];

        v83 = sub_217751F48();
        v213 = v84;
        v214 = v83;

        v85 = *(v17 + 8);
        v17 += 8;
        v85(v22, v12);
        sub_2171F0738(v39, &qword_27CB241C0, &qword_217759480);
      }

      v93 = v212;
      v1 = v223;
      if (qword_280BE6700 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02068, v86, v87, v88, v89, v90, v91, v92, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222);
      sub_2172E3D54();
      OUTLINED_FUNCTION_133(v31, 1, v12);
      if (v78)
      {
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v94, v95, v96);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v97, v98, v99);
        v211 = 0;
        v212 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_59_23();
        v100 = v204;
        v101(v204, v31, v12);
        v102 = *(v211 + *(v202 + 20));
        v103 = sub_2177517A8();
        v104 = [v102 stringFromDate_];

        v105 = sub_217751F48();
        v211 = v106;
        v212 = v105;

        (*(v17 + 8))(v100, v12);
        sub_2171F0738(v93, &qword_27CB241C0, &qword_217759480);
      }

      v17 = v203;
      memcpy(v231, v225, 0x1B8uLL);
      v60 = v218;
      v59 = HIDWORD(v206);
      goto LABEL_27;
    }

    v69 = v61 * 1000.0;
    if (COERCE__INT64(fabs(v61 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v69 > -9.22337204e18)
    {
      if (v69 < 9.22337204e18)
      {
        v215 = v69;
        goto LABEL_11;
      }

LABEL_54:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_2172E22C0(v231);
  v211 = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v59 = 1;
  v60 = v218;
LABEL_27:
  sub_2176CA244(v216, v52, v53, v54, v55, v56, v57, v58, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218);
  if (LOBYTE(v230[7]) == 255)
  {
    sub_2171F0738(v230, &qword_27CB27D20, &qword_217758B80);
    v107 = 1;
  }

  else
  {
    Playlist.Entry.Item.convertToLegacyModelCodableResource<A>(configuration:)();
    sub_21729C7F8(v230);
    v107 = 0;
  }

  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  __swift_storeEnumTagSinglePayload(v1, v107, 1, v108);
  if (qword_280BE66B8 != -1)
  {
    swift_once();
  }

  v116 = sub_2176CAC5C(qword_280C02038, v109, v110, v111, v112, v113, v114, v115, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
  v218 = v228[0];
  v216 = v228[1];
  LODWORD(v210) = LOBYTE(v228[2]);
  v117 = v217;
  if (v217 == 255)
  {
    v118 = Playlist.Entry.title.getter(v116);
    v208 = v119;
    v209 = v118;
  }

  else
  {
    v208 = 0;
    v209 = 0;
  }

  if (qword_280BE66A8 != -1)
  {
    swift_once();
  }

  v120 = sub_2172A3FC8(qword_280C02030);
  v122 = v121;
  if (v117 == 255)
  {
    HIDWORD(v206) = v59;
    if (qword_280BE8910 != -1)
    {
      OUTLINED_FUNCTION_2_24(&qword_280BE8910);
    }

    v124 = type metadata accessor for CloudFormatter(0);
    v125 = __swift_project_value_buffer(v124, qword_280BE8918);
    Playlist.Entry.releaseDate.getter(v60);
    v126 = v205;
    sub_2172E3D54();
    OUTLINED_FUNCTION_133(v126, 1, v12);
    if (v78)
    {
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v127, v128, v129);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v130, v131, v132);
      v217 = 0;
      v123 = 0;
    }

    else
    {
      v204 = v120;
      OUTLINED_FUNCTION_59_23();
      v133(v17, v126, v12);
      v134 = *(v125 + *(v124 + 20));
      v135 = sub_2177517A8();
      v136 = [v134 stringFromDate_];

      v217 = sub_217751F48();
      v137 = v60;
      v123 = v138;

      v120 = v204;
      (*(v17 + 8))(v17, v12);
      sub_2171F0738(v137, &qword_27CB241C0, &qword_217759480);
    }

    LOBYTE(v59) = BYTE4(v206);
  }

  else
  {
    v217 = 0;
    v123 = 0;
  }

  if (qword_280BE66F8 != -1)
  {
    swift_once();
  }

  v139 = sub_2172A46D8();
  v141 = v140;
  if (qword_280BE6720 != -1)
  {
    swift_once();
  }

  if (v122)
  {
    v120 = 0;
  }

  v142 = sub_2172A46D8();
  v144 = v143;
  v145 = v219;
  memcpy(v219, v231, 0x1B8uLL);
  v145[55] = v215;
  *(v145 + 448) = v59 & 1;
  v146 = v213;
  v145[57] = v214;
  v145[58] = v146;
  v147 = v211;
  v145[59] = v212;
  v145[60] = v147;
  v148 = v220;
  sub_2172E21DC();
  v149 = v145 + v148[9];
  v150 = v216;
  *v149 = v218;
  *(v149 + 1) = v150;
  v149[16] = v210;
  v151 = (v145 + v148[10]);
  v152 = v208;
  *v151 = v209;
  v151[1] = v152;
  v153 = v145 + v148[11];
  *v153 = v120;
  v153[8] = 0;
  v154 = (v145 + v148[12]);
  *v154 = v217;
  v154[1] = v123;
  v155 = (v145 + v148[13]);
  *v155 = v139;
  v155[1] = v141;
  v156 = (v145 + v148[14]);
  *v156 = v142;
  v156[1] = v144;
  v158 = *v2;
  v157 = v2[1];
  v159 = v221;
  OUTLINED_FUNCTION_32_42();
  v223 = v160;
  v161 = v224;
  sub_217683E38();
  *v161 = v158;
  v161[1] = v157;
  *(v161 + v159[6]) = 1;
  *(v161 + v159[7]) = 1;
  *(v161 + v159[8]) = 1;
  v162 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v163 = *(v162 + 24);
  sub_217751DE8();
  v164 = OUTLINED_FUNCTION_16_0();
  v163(v164);
  nullsub_1();
  memcpy(v229, v226, 0x161uLL);
  v165 = v222;
  sub_217683E38();
  OUTLINED_FUNCTION_19_43();
  v166 = OUTLINED_FUNCTION_40_34();
  v167(v166);
  __swift_project_boxed_opaque_existential_1(v230, v230[3]);
  v168 = OUTLINED_FUNCTION_997();
  v169(v168);
  __swift_destroy_boxed_opaque_existential_1(v230);
  v220 = v227[1];
  v221 = v227[0];
  LODWORD(v218) = LOBYTE(v227[2]);
  OUTLINED_FUNCTION_19_43();
  v170 = OUTLINED_FUNCTION_40_34();
  v171(v170);
  __swift_project_boxed_opaque_existential_1(v230, v230[3]);
  OUTLINED_FUNCTION_26_1();
  v172 = OUTLINED_FUNCTION_997();
  v174 = v173(v172);
  v216 = v175;
  v217 = v174;
  __swift_destroy_boxed_opaque_existential_1(v230);
  memcpy(v230, v229, 0x168uLL);
  memset(&v230[45], 0, 24);
  nullsub_1();
  OUTLINED_FUNCTION_19_43();
  v176 = OUTLINED_FUNCTION_40_34();
  v177(v176);
  __swift_project_boxed_opaque_existential_1(v225, v225[3]);
  OUTLINED_FUNCTION_26_1();
  v178 = OUTLINED_FUNCTION_997();
  v215 = v179(v178);
  __swift_destroy_boxed_opaque_existential_1(v225);
  OUTLINED_FUNCTION_19_43();
  v180 = OUTLINED_FUNCTION_40_34();
  v181(v180);
  __swift_project_boxed_opaque_existential_1(v225, v225[3]);
  OUTLINED_FUNCTION_26_1();
  v182 = OUTLINED_FUNCTION_997();
  v184 = v183(v182);
  __swift_destroy_boxed_opaque_existential_1(v225);
  v185 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v186 = OUTLINED_FUNCTION_1024();
  v187(v186, v185);
  __swift_project_boxed_opaque_existential_1(v225, v225[3]);
  OUTLINED_FUNCTION_26_1();
  v188 = OUTLINED_FUNCTION_1024();
  v190 = v189(v188);
  __swift_destroy_boxed_opaque_existential_1(v225);
  v191 = v2[5];
  v192 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v191);
  (*(v192 + 96))(v225, v191, v192);
  v193 = v225[3];
  __swift_project_boxed_opaque_existential_1(v225, v225[3]);
  OUTLINED_FUNCTION_26_1();
  v195 = (*(v194 + 88))(v193);
  sub_217683E90(v224, type metadata accessor for LegacyModelCodablePlaylistEntry);
  sub_217683E90(v145, v223);
  __swift_destroy_boxed_opaque_existential_1(v225);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v197 = v165 + v196[9];
  v198 = v220;
  *v197 = v221;
  *(v197 + 8) = v198;
  *(v197 + 16) = v218;
  v199 = (v165 + v196[10]);
  v200 = v216;
  *v199 = v217;
  v199[1] = v200;
  memcpy((v165 + v196[11]), v230, 0x180uLL);
  *(v165 + v196[12]) = v215;
  *(v165 + v196[13]) = v184;
  *(v165 + v196[14]) = v190;
  *(v165 + v196[15]) = v195;
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217683A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25650, &unk_21778F830);
    sub_217680340(&qword_27CB2C020, type metadata accessor for LegacyModelCodablePlaylistEntryItem, &protocol conformance descriptor for LegacyModelCodablePlaylistEntryItem);
    sub_217680340(&qword_27CB2C028, type metadata accessor for LegacyModelCodablePlaylistEntryItem, &protocol conformance descriptor for LegacyModelCodablePlaylistEntryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217683B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C048;
  if (!qword_27CB2C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C048);
  }

  return result;
}

unint64_t sub_217683BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C058;
  if (!qword_27CB2C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C058);
  }

  return result;
}

unint64_t sub_217683C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C068;
  if (!qword_27CB2C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C068);
  }

  return result;
}

unint64_t sub_217683C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C078;
  if (!qword_27CB2C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C078);
  }

  return result;
}

uint64_t sub_217683CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217683D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C090;
  if (!qword_27CB2C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C090);
  }

  return result;
}

unint64_t sub_217683D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C098;
  if (!qword_27CB2C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C098);
  }

  return result;
}

unint64_t sub_217683DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C0A0;
  if (!qword_27CB2C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0A0);
  }

  return result;
}

uint64_t sub_217683E38()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_217683E90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_217683F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C0B0;
  if (!qword_27CB2C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0B0);
  }

  return result;
}

unint64_t sub_217683F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C0B8;
  if (!qword_27CB2C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0B8);
  }

  return result;
}

unint64_t sub_217683FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C0C0;
  if (!qword_27CB2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0C0);
  }

  return result;
}

uint64_t sub_217684038(uint64_t a1)
{
  result = sub_217680340(&qword_27CB2C0C8, type metadata accessor for LegacyModelCodablePlaylistEntry, &protocol conformance descriptor for LegacyModelCodablePlaylistEntry);
  *(a1 + 8) = result;
  return result;
}

void sub_2176841F0(uint64_t a1)
{
  type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE2FC0, &type metadata for LegacyModelCodablePlaylistEntry.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, qword_280BE2FC8, &type metadata for LegacyModelCodablePlaylistEntry.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE2FB8, &type metadata for LegacyModelCodablePlaylistEntry.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21768430C(uint64_t a1)
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2172E2E08(319, &qword_280BE4348, &qword_27CB25650);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E58(319, &qword_280BE49B8, &type metadata for ResourceType);
        if (v10 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2172E2E58(319, &qword_280BE5928, &type metadata for MusicItemID);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *sub_2176844B8(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LegacyModelCodablePlaylistEntry.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217684750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2C0E0;
  if (!qword_27CB2C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2C0E0);
  }

  return result;
}