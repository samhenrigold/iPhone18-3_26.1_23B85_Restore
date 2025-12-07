void PairedHostInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C8, &qword_26203CD58);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_37();
  v33 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_42_0(v33, v34);
  v35 = sub_261F8E01C();
  OUTLINED_FUNCTION_64_0(&type metadata for PairedHostInfo.CodingKeys, v36, v35);
  OUTLINED_FUNCTION_30_2();
  sub_26203AAFC();
  if (!v27)
  {
    type metadata accessor for PairedHostInfo(0);
    OUTLINED_FUNCTION_32_0();
    sub_26203965C();
    OUTLINED_FUNCTION_1_5();
    sub_261F8E070(v37, v38, MEMORY[0x277CC95F8]);
    OUTLINED_FUNCTION_10_0();
    sub_26203AB3C();
    OUTLINED_FUNCTION_10_0();
    sub_26203AB3C();
    sub_2620395EC();
    OUTLINED_FUNCTION_25_0();
    sub_261F8E070(v39, v40, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_10_0();
    sub_26203AADC();
    OUTLINED_FUNCTION_10_0();
    sub_26203AADC();
    OUTLINED_FUNCTION_30_2();
    sub_26203AB0C();
    OUTLINED_FUNCTION_30_2();
    sub_26203AAAC();
    OUTLINED_FUNCTION_30_2();
    sub_26203AAAC();
  }

  (*(v31 + 8))(v28, v29);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261F8E01C()
{
  result = qword_27FEF91D0;
  if (!qword_27FEF91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF91D0);
  }

  return result;
}

uint64_t sub_261F8E070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PairedHostInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_39();
  v91 = v27;
  v29 = v28;
  v86 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  v32 = OUTLINED_FUNCTION_40(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_54();
  v87 = v33 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v83 - v36;
  v94 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v90 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_54();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v83 - v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91E8, &qword_26203CD60);
  OUTLINED_FUNCTION_0();
  v88 = v46;
  v89 = v47;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_37();
  v93 = type metadata accessor for PairedHostInfo(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_74();
  v52 = (v51 - v50);
  v53 = v29[3];
  v92 = v29;
  OUTLINED_FUNCTION_42_0(v29, v53);
  sub_261F8E01C();
  v54 = v91;
  sub_26203AE3C();
  if (v54)
  {
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v91 = v37;
    *v52 = sub_26203A9EC();
    v52[1] = v59;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_1_5();
    sub_261F8E070(v60, v61, MEMORY[0x277CC9618]);
    v62 = v45;
    v63 = v94;
    OUTLINED_FUNCTION_68_0();
    sub_26203AA2C();
    v64 = v93;
    v65 = *(v93 + 20);
    v85 = 0;
    v84 = *(v90 + 32);
    v84(v52 + v65, v62, v63);
    OUTLINED_FUNCTION_68_0();
    v66 = v85;
    sub_26203AA2C();
    if (!v66)
    {
      v84(v52 + v64[6], v42, v63);
      sub_2620395EC();
      OUTLINED_FUNCTION_25_0();
      sub_261F8E070(v69, v70, MEMORY[0x277CC95A0]);
      v71 = v91;
      OUTLINED_FUNCTION_57_0();
      sub_26203A9CC();
      sub_261F8D76C(v71, v52 + v64[7]);
      v72 = v87;
      OUTLINED_FUNCTION_57_0();
      sub_26203A9CC();
      LODWORD(v91) = 1;
      sub_261F8D76C(v72, v52 + v64[8]);
      *(v52 + v64[9]) = sub_26203A9FC() & 1;
      v73 = sub_26203A99C();
      v74 = (v52 + v64[10]);
      *v74 = v73;
      v74[1] = v75;
      v76 = sub_26203A99C();
      v78 = v77;
      v79 = OUTLINED_FUNCTION_28();
      v80(v79);
      v81 = (v52 + v64[11]);
      *v81 = v76;
      v81[1] = v78;
      OUTLINED_FUNCTION_27_1();
      sub_261F8F158(v52, v86);
      __swift_destroy_boxed_opaque_existential_0Tm(v92);
      OUTLINED_FUNCTION_8_0();
      sub_261F96634(v52, v82);
      goto LABEL_10;
    }

    v67 = OUTLINED_FUNCTION_16_1();
    v68(v67);
    v55 = 1;
    v56 = 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v92);
  v57 = v94;
  if (v55)
  {
    v58 = 0;

    if ((v56 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v58 = 0;
  if (v56)
  {
LABEL_6:
    LODWORD(v94) = 0;
    (*(v90 + 8))(v52 + *(v93 + 20), v57);
    v58 = v94;
  }

LABEL_8:
  if (v58)
  {
  }

LABEL_10:
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261F8E788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000026204D020 == a2;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F48656C676E6973 && a2 == 0xEA00000000007473)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_261F8E8B0(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6F48656C676E6973;
}

uint64_t sub_261F8E908(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261F8E9F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F8E774();
  *a1 = result & 1;
  return result;
}

uint64_t sub_261F8EA20(uint64_t a1)
{
  v2 = sub_261F8F258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8EA5C(uint64_t a1)
{
  v2 = sub_261F8F258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F8EAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F8E788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F8EAC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F8E8A8();
  *a1 = result;
  return result;
}

uint64_t sub_261F8EAF0(uint64_t a1)
{
  v2 = sub_261F8F104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8EB2C(uint64_t a1)
{
  v2 = sub_261F8F104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F8EB68(uint64_t a1)
{
  v2 = sub_261F8F204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8EBA4(uint64_t a1)
{
  v2 = sub_261F8F204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F8EBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F8E908(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261F8EC14(uint64_t a1)
{
  v2 = sub_261F8F1B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8EC50(uint64_t a1)
{
  v2 = sub_261F8F1B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void HostDeletionTarget.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v28;
  a24 = v29;
  v77 = v24;
  v31 = v30;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9200, &qword_26203CD68);
  OUTLINED_FUNCTION_0();
  v71 = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v76 = v34;
  sub_26203965C();
  OUTLINED_FUNCTION_0();
  v72 = v36;
  v73 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v75 = v38 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9208, &qword_26203CD70);
  OUTLINED_FUNCTION_0();
  v69 = v40;
  v70 = v39;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9210, &qword_26203CD78);
  OUTLINED_FUNCTION_0();
  v67 = v43;
  v68 = v42;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_0();
  v45 = type metadata accessor for HostDeletionTarget(0);
  v46 = OUTLINED_FUNCTION_40(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_74();
  v49 = v48 - v47;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9218, &qword_26203CD80);
  OUTLINED_FUNCTION_0();
  v52 = v51;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_42_0(v31, v31[3]);
  sub_261F8F104();
  sub_26203AE5C();
  OUTLINED_FUNCTION_2_2();
  sub_261F8F158(v77, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 2, v54);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      a12 = 0;
      v56 = sub_261F8F258();
      OUTLINED_FUNCTION_63_1(&type metadata for HostDeletionTarget.AllCodingKeys, &a12, v57, v58, v56);
      (*(v67 + 8))(v26, v68);
    }

    else
    {
      OUTLINED_FUNCTION_32_0();
      v64 = sub_261F8F204();
      OUTLINED_FUNCTION_63_1(&type metadata for HostDeletionTarget.NonAutomationHostsCodingKeys, &a13, v65, v66, v64);
      (*(v69 + 8))(v25, v70);
    }

    (*(v52 + 8))(v27, v50);
  }

  else
  {
    (*(v72 + 32))(v75, v49, v73);
    a14 = 2;
    v59 = sub_261F8F1B0();
    OUTLINED_FUNCTION_63_1(&type metadata for HostDeletionTarget.SingleHostCodingKeys, &a14, v60, v61, v59);
    OUTLINED_FUNCTION_1_5();
    sub_261F8E070(v62, v63, MEMORY[0x277CC95F8]);
    sub_26203AB3C();
    (*(v71 + 8))(v76, v74);
    (*(v72 + 8))(v75, v73);
    (*(v52 + 8))(v27, v50);
  }

  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261F8F104()
{
  result = qword_27FEF9220;
  if (!qword_27FEF9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9220);
  }

  return result;
}

uint64_t sub_261F8F158(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

unint64_t sub_261F8F1B0()
{
  result = qword_27FEF9230;
  if (!qword_27FEF9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9230);
  }

  return result;
}

unint64_t sub_261F8F204()
{
  result = qword_27FEF9238;
  if (!qword_27FEF9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9238);
  }

  return result;
}

unint64_t sub_261F8F258()
{
  result = qword_27FEF9240;
  if (!qword_27FEF9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9240);
  }

  return result;
}

void HostDeletionTarget.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  v110 = v24;
  v26 = v25;
  v107 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9248, &qword_26203CD90);
  OUTLINED_FUNCTION_0();
  v102 = v29;
  v103 = v28;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_36_0(v31, v95);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9250, &qword_26203CD98);
  OUTLINED_FUNCTION_0();
  v101 = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v105 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9258, &qword_26203CDA0);
  OUTLINED_FUNCTION_0();
  v99 = v36;
  v100 = v35;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44();
  v104 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9260, &qword_26203CDA8);
  OUTLINED_FUNCTION_0();
  v108 = v39;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14();
  v41 = type metadata accessor for HostDeletionTarget(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_54();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v95 - v47;
  OUTLINED_FUNCTION_42_0(v26, v26[3]);
  sub_261F8F104();
  v49 = v110;
  sub_26203AE3C();
  if (!v49)
  {
    v97 = v48;
    v98 = v41;
    v96 = v45;
    v50 = v109;
    v110 = v26;
    v51 = sub_26203AA7C();
    sub_261F96224(v51, 0);
    v53 = v52;
    if (v55 != v54 >> 1)
    {
      OUTLINED_FUNCTION_56_1();
      if (v60 == v61)
      {
        __break(1u);
        return;
      }

      v62 = *(v59 + v57);
      v63 = sub_261F98B50(v57 + 1, v56, v53, v59, v57, v58);
      v65 = v64;
      v67 = v66;
      swift_unknownObjectRelease();
      if (v65 == v67 >> 1)
      {
        if (v62)
        {
          v68 = v50;
          if (v62 == 1)
          {
            OUTLINED_FUNCTION_32_0();
            sub_261F8F204();
            v69 = v105;
            OUTLINED_FUNCTION_50_0();
            sub_26203A97C();
            v70 = v107;
            swift_unknownObjectRelease();
            (*(v101 + 8))(v69, v68);
            v79 = OUTLINED_FUNCTION_41_0();
            v80(v79);
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
            v82 = v97;
            __swift_storeEnumTagSinglePayload(v97, 2, 2, v81);
          }

          else
          {
            sub_261F8F1B0();
            OUTLINED_FUNCTION_50_0();
            sub_26203A97C();
            v70 = v107;
            v109 = v63;
            sub_26203965C();
            OUTLINED_FUNCTION_1_5();
            sub_261F8E070(v86, v87, MEMORY[0x277CC9618]);
            v88 = v96;
            v89 = v103;
            v90 = v106;
            sub_26203AA2C();
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_70_1();
            v91(v90, v89);
            v92 = OUTLINED_FUNCTION_41_0();
            v93(v92);
            v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
            __swift_storeEnumTagSinglePayload(v88, 0, 2, v94);
            OUTLINED_FUNCTION_7_0();
            v82 = v97;
            sub_261F962D4(v88, v97);
          }
        }

        else
        {
          sub_261F8F258();
          v78 = v104;
          OUTLINED_FUNCTION_50_0();
          sub_26203A97C();
          swift_unknownObjectRelease();
          (*(v99 + 8))(v78, v100);
          v83 = OUTLINED_FUNCTION_34_0();
          v84(v83);
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
          v82 = v97;
          __swift_storeEnumTagSinglePayload(v97, 1, 2, v85);
          v70 = v107;
        }

        OUTLINED_FUNCTION_7_0();
        sub_261F962D4(v82, v70);
        v77 = v110;
        goto LABEL_11;
      }
    }

    v71 = sub_26203A81C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v73 = v98;
    v74 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v74);
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D84160], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = OUTLINED_FUNCTION_34_0();
    v76(v75);
    v26 = v110;
  }

  v77 = v26;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  OUTLINED_FUNCTION_38_0();
}

unint64_t RPUSBConnectedHostTrustState.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x64657473757274;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000011;
      break;
    case 1:
      result = 0x7375727420746F6ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      return result;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_261F8FAD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261F8FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F8FAD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261F8FB90(uint64_t a1)
{
  v2 = sub_261F96260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8FBCC(uint64_t a1)
{
  v2 = sub_261F96260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DeletePairedHostRecordRequest.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9270, &qword_26203CDB8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_42_0(v1, v2);
  v3 = sub_261F96260();
  OUTLINED_FUNCTION_64_0(&type metadata for DeletePairedHostRecordRequest.CodingKeys, v4, v3);
  type metadata accessor for HostDeletionTarget(0);
  OUTLINED_FUNCTION_24_0();
  sub_261F8E070(v5, v6, &protocol conformance descriptor for HostDeletionTarget);
  sub_26203AB3C();
  v7 = OUTLINED_FUNCTION_59_0();
  return v8(v7);
}

void DeletePairedHostRecordRequest.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v20 = v3;
  type metadata accessor for HostDeletionTarget(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  v22 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9288, &qword_26203CDC0);
  OUTLINED_FUNCTION_0();
  v21 = v8;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for DeletePairedHostRecordRequest(0);
  v13 = OUTLINED_FUNCTION_40(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_74();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_261F96260();
  sub_26203AE3C();
  if (!v0)
  {
    v17 = v20;
    OUTLINED_FUNCTION_24_0();
    sub_261F8E070(v18, v19, &protocol conformance descriptor for HostDeletionTarget);
    sub_26203AA2C();
    (*(v21 + 8))(v11, v7);
    OUTLINED_FUNCTION_7_0();
    sub_261F962D4(v22, v16);
    sub_261F962D4(v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261F8FF84(uint64_t a1)
{
  v2 = sub_261F9632C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F8FFC0(uint64_t a1)
{
  v2 = sub_261F9632C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F90060(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374736F68 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261F900EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F90060(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261F90118(uint64_t a1)
{
  v2 = sub_261F96380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F90154(uint64_t a1)
{
  v2 = sub_261F96380();

  return MEMORY[0x2821FE720](a1, v2);
}

void ListPairedHostRecordResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF92A8, &qword_26203CDD0);
  OUTLINED_FUNCTION_0();
  v25 = v24;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_42_0(v22, v22[3]);
  sub_261F96380();

  sub_26203AE5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF92B8, &qword_26203CDD8);
  sub_261F963D4(&qword_27FEF92C0, &qword_27FEF92C8, &protocol conformance descriptor for PairedHostInfo, MEMORY[0x277D83948]);
  sub_26203AB3C();

  (*(v25 + 8))(v20, v23);
  OUTLINED_FUNCTION_38_0();
}

void ListPairedHostRecordResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF92D0, &qword_26203CDE0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v14 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_42_0(v14, v15);
  v16 = sub_261F96380();
  OUTLINED_FUNCTION_31(&type metadata for ListPairedHostRecordResponse.CodingKeys, v17, v16);
  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF92B8, &qword_26203CDD8);
    sub_261F963D4(&qword_27FEF92D8, &qword_27FEF92E0, &protocol conformance descriptor for PairedHostInfo, MEMORY[0x277D83978]);
    sub_26203AA2C();
    v18 = OUTLINED_FUNCTION_20_0();
    v19(v18);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261F904A0(uint64_t a1)
{
  v2 = sub_261F96470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F904DC(uint64_t a1)
{
  v2 = sub_261F96470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F905A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000026204D040 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26203AC0C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_261F90624()
{
  sub_26203ADDC();
  MEMORY[0x266723290](0);
  return sub_26203AE0C();
}

uint64_t sub_261F90684()
{
  sub_26203ADDC();
  MEMORY[0x266723290](0);
  return sub_26203AE0C();
}

uint64_t sub_261F906C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F905A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_261F906F4(uint64_t a1)
{
  v2 = sub_261F964C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F90730(uint64_t a1)
{
  v2 = sub_261F964C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FetchNetworkPairingSessionIDResponse.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF92F8, &qword_26203CDF0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42_0(v2, v2[3]);
  sub_261F964C4();
  sub_26203AE5C();
  OUTLINED_FUNCTION_48_0();
  sub_26203AAFC();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_38_0();
}

void FetchNetworkPairingSessionIDResponse.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9308, &qword_26203CDF8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_42_0(v4, v5);
  v6 = sub_261F964C4();
  OUTLINED_FUNCTION_31(&type metadata for FetchNetworkPairingSessionIDResponse.CodingKeys, v7, v6);
  if (!v1)
  {
    OUTLINED_FUNCTION_52_0();
    v8 = sub_26203A9EC();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_20_0();
    v12(v11);
    *v2 = v8;
    v2[1] = v10;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261F909B0(uint64_t a1)
{
  v2 = sub_261F96518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F909EC(uint64_t a1)
{
  v2 = sub_261F96518();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_261F90A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_0Tm(v25, v25[3]);
  v23();
  sub_26203AE5C();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_38_0();
}

uint64_t AllowPromptlessPairingWithHostRequest.associatedHostBUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

RemotePairingDevice::AllowPromptlessPairingWithHostRequest __swiftcall AllowPromptlessPairingWithHostRequest.init(pairingShouldBeMarkedForAutomation:associatedHostBUID:)(Swift::Bool pairingShouldBeMarkedForAutomation, Swift::String associatedHostBUID)
{
  *v2 = pairingShouldBeMarkedForAutomation;
  *(v2 + 8) = associatedHostBUID;
  result.associatedHostBUID = associatedHostBUID;
  result.pairingShouldBeMarkedForAutomation = pairingShouldBeMarkedForAutomation;
  return result;
}

uint64_t sub_261F90C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000022 && 0x800000026204D060 == a2;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026204D090 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

unint64_t sub_261F90D20(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000022;
  }
}

uint64_t sub_261F90D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F90C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F90D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261F90D18();
  *a1 = result;
  return result;
}

uint64_t sub_261F90DB0(uint64_t a1)
{
  v2 = sub_261F9656C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F90DEC(uint64_t a1)
{
  v2 = sub_261F9656C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AllowPromptlessPairingWithHostRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9320, &qword_26203CE08);
  OUTLINED_FUNCTION_0();
  v28 = v27;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_42_0(v25, v25[3]);
  sub_261F9656C();
  sub_26203AE5C();
  OUTLINED_FUNCTION_30_2();
  sub_26203AB0C();
  if (!v22)
  {
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_30_2();
    sub_26203AAFC();
  }

  (*(v28 + 8))(v23, v26);
  OUTLINED_FUNCTION_38_0();
}

void AllowPromptlessPairingWithHostRequest.init(from:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_55_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9330, &qword_26203CE10);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_42_0(v4, v5);
  v6 = sub_261F9656C();
  OUTLINED_FUNCTION_31(&type metadata for AllowPromptlessPairingWithHostRequest.CodingKeys, v7, v6);
  if (!v1)
  {
    OUTLINED_FUNCTION_52_0();
    v8 = sub_26203A9FC();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_52_0();
    v9 = sub_26203A9EC();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_20_0();
    v13(v12);
    *v2 = v8 & 1;
    *(v2 + 8) = v9;
    *(v2 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_0();
}

uint64_t (*CreateWirelessPairingSessionRequest.endpoint.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26203986C();
  return sub_261F9115C;
}

void sub_261F9115C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CreateWirelessPairingSessionRequest.requestCustomPinHandler.setter(char a1)
{
  result = type metadata accessor for CreateWirelessPairingSessionRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_261F91244(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026204D0B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_261F91314(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_261F91358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F91244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F91380(uint64_t a1)
{
  v2 = sub_261F965E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F913BC(uint64_t a1)
{
  v2 = sub_261F965E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreateWirelessPairingSessionRequest.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9338, &qword_26203CE18);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  v6 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_42_0(v6, v7);
  v8 = sub_261F965E0();
  OUTLINED_FUNCTION_64_0(&type metadata for CreateWirelessPairingSessionRequest.CodingKeys, v9, v8);
  sub_26203989C();
  OUTLINED_FUNCTION_23_0();
  sub_261F8E070(v10, v11, MEMORY[0x277D28148]);
  sub_26203AB3C();
  if (!v0)
  {
    type metadata accessor for CreateWirelessPairingSessionRequest(0);
    OUTLINED_FUNCTION_32_0();
    sub_26203AB0C();
  }

  return (*(v4 + 8))(v1, v2);
}

void CreateWirelessPairingSessionRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_39();
  v24 = v23;
  v47 = v25;
  v49 = sub_26203989C();
  OUTLINED_FUNCTION_0();
  v48 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_74();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9350, &qword_26203CE20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_53_0();
  WirelessPairingSessionRequest = type metadata accessor for CreateWirelessPairingSessionRequest(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_74();
  v36 = v35 - v34;
  v37 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_42_0(v37, v38);
  sub_261F965E0();
  sub_26203AE3C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
  }

  else
  {
    v46 = v36;
    OUTLINED_FUNCTION_23_0();
    sub_261F8E070(v39, v40, MEMORY[0x277D28150]);
    sub_26203AA2C();
    (*(v48 + 32))(v36, v30, v49);
    OUTLINED_FUNCTION_32_0();
    v41 = sub_26203A9FC();
    v42 = *(WirelessPairingSessionRequest + 20);
    v43 = OUTLINED_FUNCTION_35_0();
    v44(v43);
    *(v46 + v42) = v41 & 1;
    sub_261F8F158(v46, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    OUTLINED_FUNCTION_29_2();
    sub_261F96634(v46, v45);
  }

  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_261F9183C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 2003789939 && a2 == 0xE400000000000000;
    if (v6 || (sub_26203AC0C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701079400 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26203AC0C();

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

uint64_t sub_261F91950(unsigned __int8 a1)
{
  sub_26203ADDC();
  MEMORY[0x266723290](a1);
  return sub_26203AE0C();
}

uint64_t sub_261F91998(char a1)
{
  if (!a1)
  {
    return 0x7974706D65;
  }

  if (a1 == 1)
  {
    return 2003789939;
  }

  return 1701079400;
}

uint64_t sub_261F919DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235952 && a2 == 0xE300000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48676E69646E6573 && a2 == 0xEB0000000074736FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_261F91AA8(char a1)
{
  sub_26203ADDC();
  MEMORY[0x266723290](a1 & 1);
  return sub_26203AE0C();
}

uint64_t sub_261F91AF0(char a1)
{
  if (a1)
  {
    return 0x48676E69646E6573;
  }

  else
  {
    return 7235952;
  }
}

uint64_t sub_261F91B58()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

uint64_t sub_261F91BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F9183C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F91BCC(uint64_t a1)
{
  v2 = sub_261F9668C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F91C08(uint64_t a1)
{
  v2 = sub_261F9668C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F91C44(uint64_t a1)
{
  v2 = sub_261F96788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F91C80(uint64_t a1)
{
  v2 = sub_261F96788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F91CBC(uint64_t a1)
{
  v2 = sub_261F966E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F91CF8(uint64_t a1)
{
  v2 = sub_261F966E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261F91D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F919DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F91D64(uint64_t a1)
{
  v2 = sub_261F96734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F91DA0(uint64_t a1)
{
  v2 = sub_261F96734();

  return MEMORY[0x2821FE720](a1, v2);
}

void PinNotificationEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39();
  v66 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9360, &qword_26203CE28);
  OUTLINED_FUNCTION_0();
  v60 = v32;
  v61 = v31;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_44();
  v59 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9368, &qword_26203CE30);
  OUTLINED_FUNCTION_0();
  v63 = v36;
  v64 = v35;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_0(v38, v58[0]);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9370, &qword_26203CE38);
  OUTLINED_FUNCTION_0();
  v58[3] = v40;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v41);
  v43 = v58 - v42;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9378, &qword_26203CE40);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_0();
  v47 = *v26;
  v48 = v26[1];
  v49 = v26[3];
  v58[1] = v26[2];
  v58[2] = v47;
  v58[0] = v49;
  OUTLINED_FUNCTION_42_0(v30, v30[3]);
  sub_261F9668C();
  sub_26203AE5C();
  if (v48)
  {
    if (v48 == 1)
    {
      sub_261F966E0();
      v50 = v59;
      v51 = v65;
      sub_26203AA9C();
      (*(v60 + 8))(v50, v61);
      (*(v45 + 8))(v28, v51);
    }

    else
    {
      sub_261F96734();
      v54 = v62;
      v55 = v65;
      sub_26203AA9C();
      v56 = v64;
      v57 = v66;
      sub_26203AAFC();
      if (!v57)
      {
        sub_26203AAAC();
      }

      (*(v63 + 8))(v54, v56);
      (*(v45 + 8))(v28, v55);
    }
  }

  else
  {
    sub_261F96788();
    v52 = v65;
    sub_26203AA9C();
    OUTLINED_FUNCTION_70_1();
    v53(v43, v39);
    (*(v45 + 8))(v28, v52);
  }

  OUTLINED_FUNCTION_38_0();
}

void PinNotificationEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39();
  v104 = v26;
  v30 = v29;
  v101 = v31;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF93A0, &qword_26203CE48);
  OUTLINED_FUNCTION_0();
  v98 = v32;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36_0(v34, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF93A8, &qword_26203CE50);
  OUTLINED_FUNCTION_0();
  v99 = v36;
  v100 = v35;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_53_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF93B0, &qword_26203CE58);
  OUTLINED_FUNCTION_0();
  v97 = v39;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF93B8, &unk_26203CE60);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_0();
  v103 = v30;
  v47 = OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_42_0(v47, v48);
  sub_261F9668C();
  v49 = v104;
  sub_26203AE3C();
  if (!v49)
  {
    v94 = v38;
    v95 = v42;
    v96 = v45;
    v104 = v27;
    v50 = sub_26203AA7C();
    sub_261F96224(v50, 0);
    v52 = v51;
    if (v54 != v53 >> 1)
    {
      OUTLINED_FUNCTION_56_1();
      if (v59 == v60)
      {
        __break(1u);
        return;
      }

      v61 = *(v58 + v56);
      v62 = sub_261F98B50(v56 + 1, v55, v52, v58, v56, v57);
      v64 = v63;
      v66 = v65;
      swift_unknownObjectRelease();
      v67 = v62;
      if (v64 == v66 >> 1)
      {
        v68 = v43;
        if (v61)
        {
          if (v61 != 1)
          {
            sub_261F966E0();
            sub_26203A97C();
            v77 = v101;
            swift_unknownObjectRelease();
            v81 = OUTLINED_FUNCTION_59_0();
            v82(v81);
            v83 = OUTLINED_FUNCTION_33_1();
            v84(v83);
            v85 = 0;
            v91 = 0;
            v93 = 0;
            v87 = 1;
LABEL_15:
            *v77 = v85;
            v77[1] = v87;
            v77[2] = v91;
            v77[3] = v93;
            __swift_destroy_boxed_opaque_existential_0Tm(v103);
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_32_0();
          sub_261F96734();
          sub_26203A97C();
          v69 = v96;
          v85 = sub_26203A9EC();
          v87 = v86;
          v102 = v67;
          v88 = sub_26203A99C();
          v89 = v28;
          v90 = (v99 + 8);
          v91 = v88;
          v93 = v92;
          swift_unknownObjectRelease();
          (*v90)(v89, v100);
          (*(v69 + 8))(v104, v68);
        }

        else
        {
          sub_261F96788();
          v76 = v95;
          sub_26203A97C();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_70_1();
          v78(v76, v94);
          v79 = OUTLINED_FUNCTION_45_0();
          v80(v79);
          v85 = 0;
          v87 = 0;
          v91 = 0;
          v93 = 0;
        }

        v77 = v101;
        goto LABEL_15;
      }
    }

    v70 = sub_26203A81C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0);
    *v72 = &type metadata for PinNotificationEvent;
    v73 = sub_26203A98C();
    OUTLINED_FUNCTION_73_0(v73);
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v74 = OUTLINED_FUNCTION_33_1();
    v75(v74);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v103);
LABEL_11:
  OUTLINED_FUNCTION_67_0();
  OUTLINED_FUNCTION_38_0();
}

id RemotePairingDevicePairingServiceConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePairingDevicePairingServiceConnection.init()()
{
  ObjectType = swift_getObjectType();
  sub_2620398EC();
  sub_2620398CC();
  OUTLINED_FUNCTION_43_1();
  sub_26203990C();
  OUTLINED_FUNCTION_72_0();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_261F92948(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_261F92948(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC19RemotePairingDevice43RemotePairingDevicePairingServiceConnection_connection] = a1;

  sub_26203975C();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:)()
{
  type metadata accessor for DeletePairedHostRecordRequest(0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_74();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_2_2();
  v4 = OUTLINED_FUNCTION_59_0();
  sub_261F8F158(v4, v5);
  sub_261F8E070(&qword_27FEF93C8, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  sub_261F8E070(&unk_27FEF93D0, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  sub_261F967DC();
  sub_261F96830();
  sub_261F96884();
  sub_26203976C();
  OUTLINED_FUNCTION_26_2();
  return sub_261F96634(v3, v6);
}

uint64_t sub_261F92B6C(uint64_t a1)
{
  v2 = type metadata accessor for HostDeletionTarget(0);
  v3 = OUTLINED_FUNCTION_40(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  __swift_storeEnumTagSinglePayload(v6, a1, 2, v7);
  RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:)();
  OUTLINED_FUNCTION_3_1();
  return sub_261F96634(v6, v8);
}

uint64_t sub_261F92C34(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t RemotePairingDevicePairingServiceConnection.deletePairingRecord(forHostWithIdentifier:)(uint64_t a1)
{
  v2 = type metadata accessor for HostDeletionTarget(0);
  v3 = OUTLINED_FUNCTION_40(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  (*(v7 + 16))(v6, a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  __swift_storeEnumTagSinglePayload(v6, 0, 2, v8);
  RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:)();
  OUTLINED_FUNCTION_3_1();
  return sub_261F96634(v6, v9);
}

uint64_t RemotePairingDevicePairingServiceConnection.deletePairingRecord(uuid:queue:completion:)()
{
  v1 = OUTLINED_FUNCTION_61_0();
  v2 = type metadata accessor for HostDeletionTarget(v1);
  v3 = OUTLINED_FUNCTION_40(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v6 = v5 - v4;
  sub_26203965C();
  OUTLINED_FUNCTION_6_1();
  (*(v7 + 16))(v6, v0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  __swift_storeEnumTagSinglePayload(v6, 0, 2, v8);
  OUTLINED_FUNCTION_59_0();
  RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:invokingCompletionHandlerOn:completion:)();
  OUTLINED_FUNCTION_3_1();
  return sub_261F96634(v6, v9);
}

uint64_t RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:invokingCompletionHandlerOn:completion:)()
{
  v3 = OUTLINED_FUNCTION_61_0();
  v4 = type metadata accessor for DeletePairedHostRecordRequest(v3);
  v5 = OUTLINED_FUNCTION_40(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_2_2();
  sub_261F8F158(v2, v8);
  OUTLINED_FUNCTION_46();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v0;

  v10 = OUTLINED_FUNCTION_59_0();
  sub_261F93350(v10, v11, v12, v9);

  OUTLINED_FUNCTION_26_2();
  return sub_261F96634(v8, v13);
}

uint64_t RemotePairingDevicePairingServiceConnection.deleteAllPairingRecords(invokingCompletionHandlerOn:completion:)()
{
  v0 = type metadata accessor for HostDeletionTarget(0);
  v1 = OUTLINED_FUNCTION_40(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_74();
  v4 = v3 - v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9228, &qword_26203CD88);
  __swift_storeEnumTagSinglePayload(v4, 1, 2, v5);
  RemotePairingDevicePairingServiceConnection.deletePairingRecords(matching:invokingCompletionHandlerOn:completion:)();
  OUTLINED_FUNCTION_3_1();
  return sub_261F96634(v4, v6);
}

uint64_t sub_261F93350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DeletePairedHostRecordRequest(0);
  sub_261F8E070(&qword_27FEF93C8, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  sub_261F8E070(&unk_27FEF93D0, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  sub_261F967DC();
  sub_261F96830();
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F9355C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261F968E8();
  sub_261F9693C();
  sub_261F96990();
  sub_261F969E4();
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F936FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261F96D34();
  sub_261F96D88();
  sub_261F96E08();
  sub_261F96E5C();
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F9389C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_261F96F44();
  sub_261F96F98();
  sub_261F967DC();
  sub_261F96830();
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F93A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CreateWirelessPairingSessionRequest(0);
  sub_261F8E070(&qword_27FEF9440, type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);
  sub_261F8E070(&unk_27FEF9448, type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);
  sub_261F967DC();
  sub_261F96830();
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F93C68()
{
  OUTLINED_FUNCTION_15_0();
  v1 = sub_261F98C74();
  v2 = sub_261F98CC8();
  v3 = sub_261F967DC();
  v28 = sub_261F96830();
  v29 = sub_261F96884();
  result = OUTLINED_FUNCTION_12_0(v29, v4, &type metadata for RemotePairingErrorCodingWrapper, v5, v6, &type metadata for HostCheckInRequest, &type metadata for EmptyResponse);
  if (v0)
  {

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_11_2();
    v8 = OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_19_1(v30, v9, v8, v10, v11, v12, v13, v14, v1, v2, v3, v28, v29);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_19_1(v15, v16, &type metadata for HostCheckInRequest, v17, v18, v19, v20, v21, v26, v27);
    OUTLINED_FUNCTION_9_0();
    result = OUTLINED_FUNCTION_18_1("Fatal error", v22, v23, v24, v25, "RemotePairingDevice/XPCConnection+sendMessage.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_261F93D60()
{
  OUTLINED_FUNCTION_15_0();
  type metadata accessor for PairableHostInfo(0);
  sub_261F98E6C();
  sub_261F98EC0();
  sub_261F8E070(&qword_27FEF9670, type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  sub_261F8E070(&unk_27FEF9678, type metadata accessor for PairableHostInfo, &protocol conformance descriptor for PairableHostInfo);
  sub_261F96884();
  return sub_26203972C();
}

uint64_t sub_261F93ED4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = a1;
  v36 = a2;
  v6 = sub_261F98DC4();
  v7 = sub_261F98E18();
  v8 = sub_261F967DC();
  v32 = sub_261F96830();
  v33 = sub_261F96884();
  result = OUTLINED_FUNCTION_12_0(&v35, v9, &type metadata for RemotePairingErrorCodingWrapper, v10, v11, &type metadata for AttemptPairingPinCommand, &type metadata for EmptyResponse);
  if (a4)
  {

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_11_2();
    v34[0] = v4;
    v13 = sub_26203978C();
    OUTLINED_FUNCTION_19_1(v34, v14, v13, v15, v16, v17, v18, v19, v6, v7, v8, v32, v33);
    OUTLINED_FUNCTION_4_0();
    v34[0] = v35;
    v34[1] = v36;
    OUTLINED_FUNCTION_19_1(v34, v20, &type metadata for AttemptPairingPinCommand, v21, v22, v23, v24, v25, v30, v31);
    OUTLINED_FUNCTION_9_0();
    result = OUTLINED_FUNCTION_18_1("Fatal error", v26, v27, v28, v29, "RemotePairingDevice/XPCConnection+sendMessage.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_261F93FF4()
{
  OUTLINED_FUNCTION_15_0();
  v1 = sub_261F98D1C();
  v2 = sub_261F98D70();
  v3 = sub_261F967DC();
  v28 = sub_261F96830();
  v29 = sub_261F96884();
  result = OUTLINED_FUNCTION_12_0(v29, v4, &type metadata for RemotePairingErrorCodingWrapper, v5, v6, &type metadata for CancelPairingCommand, &type metadata for EmptyResponse);
  if (v0)
  {

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_11_2();
    v8 = OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_19_1(v30, v9, v8, v10, v11, v12, v13, v14, v1, v2, v3, v28, v29);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_19_1(v15, v16, &type metadata for CancelPairingCommand, v17, v18, v19, v20, v21, v26, v27);
    OUTLINED_FUNCTION_9_0();
    result = OUTLINED_FUNCTION_18_1("Fatal error", v22, v23, v24, v25, "RemotePairingDevice/XPCConnection+sendMessage.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_261F940EC()
{
  OUTLINED_FUNCTION_15_0();
  v1 = sub_261F98BCC();
  v2 = sub_261F98C20();
  v3 = sub_261F967DC();
  v28 = sub_261F96830();
  v29 = sub_261F96884();
  result = OUTLINED_FUNCTION_12_0(v29, v4, &type metadata for RemotePairingErrorCodingWrapper, v5, v6, &type metadata for BrowseForPairableHostRequest, &type metadata for EmptyResponse);
  if (v0)
  {

    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_11_2();
    v8 = OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_19_1(v30, v9, v8, v10, v11, v12, v13, v14, v1, v2, v3, v28, v29);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_19_1(v15, v16, &type metadata for BrowseForPairableHostRequest, v17, v18, v19, v20, v21, v26, v27);
    OUTLINED_FUNCTION_9_0();
    result = OUTLINED_FUNCTION_18_1("Fatal error", v22, v23, v24, v25, "RemotePairingDevice/XPCConnection+sendMessage.swift");
    __break(1u);
  }

  return result;
}

void sub_261F94218(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_261F98FEC(*a1, v4);
  a2(v3, v4);

  sub_261F79EA0(v3, v4);
}

uint64_t sub_261F942B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_46();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  a6(a1, a5, v11);
}

void sub_261F9434C(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = a1[1];
  }

  sub_261F98FCC(*a1, v4, v5);
  a2(v3, v6, v5);

  sub_261F98FDC(v3, v4, v5);
}

uint64_t RemotePairingDevicePairingServiceConnection.listHostPairingRecords()()
{
  sub_261F968E8();
  sub_261F9693C();
  sub_261F96990();
  sub_261F969E4();
  sub_261F96884();
  result = sub_26203976C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void RemotePairingDevicePairingServiceConnection.trustedHostInfo()()
{
  OUTLINED_FUNCTION_39();
  v1 = type metadata accessor for PairedHostInfo(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_74();
  v5 = (v4 - v3);
  v6 = RemotePairingDevicePairingServiceConnection.listHostPairingRecords()();
  if (v0)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

LABEL_10:
    OUTLINED_FUNCTION_67_0();
    OUTLINED_FUNCTION_38_0();
    return;
  }

  v19 = MEMORY[0x277D84F90];
  sub_261F959AC(0, v8, 0);
  v9 = 0;
  v17 = v5;
  while (v9 < *(v7 + 16))
  {
    v10 = v2;
    OUTLINED_FUNCTION_27_1();
    sub_261F8F158(v11, v5);
    sub_261F9465C(v5, &v18);
    OUTLINED_FUNCTION_8_0();
    sub_261F96634(v5, v12);
    v13 = v18;
    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_261F959AC((v14 > 1), v15 + 1, 1);
    }

    ++v9;
    *(v19 + 16) = v15 + 1;
    *(v19 + 8 * v15 + 32) = v13;
    v2 = v10;
    v5 = v17;
    if (v8 == v9)
    {

      goto LABEL_10;
    }
  }

  __break(1u);
  OUTLINED_FUNCTION_8_0();
  sub_261F96634(v5, v16);

  __break(1u);
}

void sub_261F9465C(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v35 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9690, &qword_26203E648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203CD30;
  v39 = @"identifier";
  *(inited + 32) = @"identifier";
  v6 = type metadata accessor for PairedHostInfo(0);
  v7 = *(v6 + 20);
  v8 = v6;
  v9 = sub_26203965C();
  *(inited + 64) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, &a1[v7], v9);
  v36 = @"name";
  *(inited + 72) = @"name";
  v11 = MEMORY[0x277D837D0];
  v12 = *(a1 + 1);
  *(inited + 80) = *a1;
  *(inited + 88) = v12;
  *(inited + 104) = v11;
  *(inited + 112) = @"model";
  v37 = v8;
  v38 = a1;
  v13 = &a1[*(v8 + 40)];
  v14 = a1;
  v16 = *v13;
  v15 = *(v13 + 1);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  *(inited + 120) = v16;
  *(inited + 128) = v15;
  *(inited + 144) = v17;
  *(inited + 152) = @"serialNumber";
  v18 = &v14[*(v8 + 44)];
  v19 = *v18;
  v20 = *(v18 + 1);
  *(inited + 184) = v17;
  *(inited + 160) = v19;
  *(inited + 168) = v20;
  type metadata accessor for RPTrustedHostInfoKey(0);
  sub_261F8E070(&unk_27FEF96A0, type metadata accessor for RPTrustedHostInfoKey, &unk_26203C864);
  v21 = v39;
  v22 = v36;

  v23 = @"model";
  v24 = v40;

  v25 = @"serialNumber";

  v26 = sub_26203A0FC();
  sub_261F8D618(&v38[*(v37 + 28)], v24);
  v27 = sub_2620395EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v27) == 1)
  {
    v28 = @"lastUsed";
    sub_261F66E60(v24, &qword_27FEF91C0, &qword_26203CD50);
    v29 = sub_261FA3880(v28);
    if (v30)
    {
      v31 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      *&v42[0] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF96B0, &qword_26203E660);
      sub_26203A8EC();
      v26 = *&v42[0];

      sub_261F8D184((*(v26 + 56) + 32 * v31), &v43);
      sub_26203A90C();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    sub_261F66E60(&v43, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    *(&v44 + 1) = v27;
    v32 = __swift_allocate_boxed_opaque_existential_0(&v43);
    (*(*(v27 - 8) + 32))(v32, v24, v27);
    sub_261F8D184(&v43, v42);
    v33 = @"lastUsed";
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v26;
    sub_261FA3F44(v42, v33, isUniquelyReferenced_nonNull_native);

    v26 = v45;
  }

  *v41 = v26;
}

uint64_t RemotePairingDevicePairingServiceConnection.getUSBConectedHostTrustState()()
{
  type metadata accessor for RPUSBConnectedHostTrustState(0);
  sub_261F96A38();
  sub_261F96A8C();
  sub_261F8E070(&qword_28108B290, type metadata accessor for RPUSBConnectedHostTrustState, &protocol conformance descriptor for RPUSBConnectedHostTrustState);
  sub_261F8E070(&unk_28108B298, type metadata accessor for RPUSBConnectedHostTrustState, &protocol conformance descriptor for RPUSBConnectedHostTrustState);
  sub_261F96884();
  result = sub_26203976C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t RemotePairingDevicePairingServiceConnection.allowPromptlessPairingForHost(pairingShouldBeMarkedForAutomation:forBUID:withQueue:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  sub_261F9389C(a1, a2, a3, a4, sub_261F96AE0, v12);
}

void sub_261F94D90(uint64_t a1, uint64_t (*a2)(id))
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    v4 = *a1;
    a2(v3);

    sub_261F98F1C(v3, 1);
  }

  else
  {
    a2(0);
  }
}

uint64_t RemotePairingDevicePairingServiceConnection.initiateWirelessPairingSession(withQueue:completionHandler:customPinHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WirelessPairingSessionRequest = type metadata accessor for CreateWirelessPairingSessionRequest(0);
  v11 = WirelessPairingSessionRequest - 8;
  MEMORY[0x28223BE20](WirelessPairingSessionRequest);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  sub_26203992C();
  v16 = a1;

  sub_2620398DC();
  OUTLINED_FUNCTION_72_0();
  v17 = swift_dynamicCastClassUnconditional();
  type metadata accessor for InProgressWirelessPairingSession();
  swift_allocObject();

  sub_261F7D45C(a4, a5);
  v18 = sub_261F999AC(v17, sub_261F96AFC, v15, a4, a5);
  sub_26203975C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9400, &qword_26203CE70);
  sub_26203971C();
  swift_unknownObjectRetain();
  sub_26203985C();
  *(v14 + *(v11 + 28)) = a4 != 0;

  v19 = OUTLINED_FUNCTION_48_0();
  sub_261F93A5C(v19, v20, v21, v18);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_29_2();
  return sub_261F96634(v14, v22);
}

{
  OUTLINED_FUNCTION_46();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  if (a4)
  {
    OUTLINED_FUNCTION_46();
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v12 = sub_261F96B58;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  sub_261F7D45C(a4, a5);
  RemotePairingDevicePairingServiceConnection.initiateWirelessPairingSession(withQueue:completionHandler:customPinHandler:)(a1, sub_261F96B14, v10, v12, v11);

  return sub_261F665E4(v12, v11);
}

uint64_t sub_261F95120(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a3;
  v9 = sub_262039FAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_262039FEC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2 & 1;
  aBlock[4] = sub_261F98F28;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  sub_261F98F5C(a1);
  sub_262039FCC();
  v20[1] = MEMORY[0x277D84F90];
  sub_261F8E070(&qword_28108B370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
}

xpc_endpoint_t sub_261F953E4@<X0>(_xpc_connection_s *a1@<X0>, xpc_endpoint_t *a2@<X8>)
{
  result = xpc_endpoint_create(a1);
  *a2 = result;
  return result;
}

void sub_261F95414(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = *result;
    MEMORY[0x28223BE20](result);
    v2 = v1;
    sub_261F998C4();
    sub_261F98F1C(v1, 1);
  }
}

uint64_t *sub_261F955A8(uint64_t *result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = result[1];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0;
      v3 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = result[2];
      v6 = result[3];
      v4 = *result;
    }

    return a2(v4, v3, v5, v6);
  }

  return result;
}

void sub_261F95708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2620393EC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_261F95778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_26203A18C();
    if (a4)
    {
LABEL_3:
      v8 = sub_26203A18C();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

id RemotePairingDevicePairingServiceConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_261F959AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261F95B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261F95AA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261F95D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261F95AC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261F95FE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261F95B2C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9688, &qword_26203E640);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_261FBA53C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95E0, &unk_26203E600);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_261F95C3C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_51_0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_66();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9648, &qword_26203E620);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_261F95D38(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF95F0, &unk_2620402A0);
  v10 = *(sub_262039B3C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_262039B3C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_261FBA57C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_261F95EEC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_51_0();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A40, &qword_26203E5F8);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 48);
      if (a1)
      {
LABEL_12:
        sub_261FBA66C((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_261F95FE4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9A30, &qword_26203E5E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_261FBA694((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_261F960FC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_51_0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_66();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_261F961E8(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_261F96224(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_17_0();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_261F96260()
{
  result = qword_27FEF9278;
  if (!qword_27FEF9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9278);
  }

  return result;
}

uint64_t sub_261F962D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v4(v3);
  OUTLINED_FUNCTION_6_1();
  v5 = OUTLINED_FUNCTION_47();
  v6(v5);
  return a2;
}

unint64_t sub_261F9632C()
{
  result = qword_27FEF92A0;
  if (!qword_27FEF92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF92A0);
  }

  return result;
}

unint64_t sub_261F96380()
{
  result = qword_27FEF92B0;
  if (!qword_27FEF92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF92B0);
  }

  return result;
}

uint64_t sub_261F963D4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF92B8, &qword_26203CDD8);
    sub_261F8E070(a2, type metadata accessor for PairedHostInfo, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261F96470()
{
  result = qword_27FEF92F0;
  if (!qword_27FEF92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF92F0);
  }

  return result;
}

unint64_t sub_261F964C4()
{
  result = qword_27FEF9300;
  if (!qword_27FEF9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9300);
  }

  return result;
}

unint64_t sub_261F96518()
{
  result = qword_28108B678;
  if (!qword_28108B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B678);
  }

  return result;
}

unint64_t sub_261F9656C()
{
  result = qword_27FEF9328;
  if (!qword_27FEF9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9328);
  }

  return result;
}

unint64_t sub_261F965E0()
{
  result = qword_27FEF9340;
  if (!qword_27FEF9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9340);
  }

  return result;
}

uint64_t sub_261F96634(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_1();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_261F9668C()
{
  result = qword_27FEF9380;
  if (!qword_27FEF9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9380);
  }

  return result;
}

unint64_t sub_261F966E0()
{
  result = qword_27FEF9388;
  if (!qword_27FEF9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9388);
  }

  return result;
}

unint64_t sub_261F96734()
{
  result = qword_27FEF9390;
  if (!qword_27FEF9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9390);
  }

  return result;
}

unint64_t sub_261F96788()
{
  result = qword_27FEF9398;
  if (!qword_27FEF9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9398);
  }

  return result;
}

unint64_t sub_261F967DC()
{
  result = qword_28108CA68;
  if (!qword_28108CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA68);
  }

  return result;
}

unint64_t sub_261F96830()
{
  result = qword_28108CA70;
  if (!qword_28108CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA70);
  }

  return result;
}

unint64_t sub_261F96884()
{
  result = qword_28108CCD8;
  if (!qword_28108CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCD8);
  }

  return result;
}

unint64_t sub_261F968E8()
{
  result = qword_27FEF93E0;
  if (!qword_27FEF93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF93E0);
  }

  return result;
}

unint64_t sub_261F9693C()
{
  result = qword_27FEF93E8;
  if (!qword_27FEF93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF93E8);
  }

  return result;
}

unint64_t sub_261F96990()
{
  result = qword_27FEF93F0;
  if (!qword_27FEF93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF93F0);
  }

  return result;
}

unint64_t sub_261F969E4()
{
  result = qword_27FEF93F8;
  if (!qword_27FEF93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF93F8);
  }

  return result;
}

unint64_t sub_261F96A38()
{
  result = qword_28108B650;
  if (!qword_28108B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B650);
  }

  return result;
}

unint64_t sub_261F96A8C()
{
  result = qword_28108B658;
  if (!qword_28108B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B658);
  }

  return result;
}

uint64_t sub_261F96B14(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = 0;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(a1, v4);
}

uint64_t sub_261F96B60(uint64_t a1)
{
  *(a1 + 8) = sub_261F8E070(&qword_27FEF92E0, type metadata accessor for PairedHostInfo, &protocol conformance descriptor for PairedHostInfo);
  result = sub_261F8E070(&qword_27FEF92C8, type metadata accessor for PairedHostInfo, &protocol conformance descriptor for PairedHostInfo);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_261F96C2C(uint64_t a1)
{
  *(a1 + 8) = sub_261F8E070(&qword_27FEF93C8, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  result = sub_261F8E070(&unk_27FEF93D0, type metadata accessor for DeletePairedHostRecordRequest, &protocol conformance descriptor for DeletePairedHostRecordRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261F96D34()
{
  result = qword_27FEF9410;
  if (!qword_27FEF9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9410);
  }

  return result;
}

unint64_t sub_261F96D88()
{
  result = qword_27FEF9418;
  if (!qword_27FEF9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9418);
  }

  return result;
}

unint64_t sub_261F96E08()
{
  result = qword_27FEF9420;
  if (!qword_27FEF9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9420);
  }

  return result;
}

unint64_t sub_261F96E5C()
{
  result = qword_27FEF9428;
  if (!qword_27FEF9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9428);
  }

  return result;
}

uint64_t sub_261F96F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261F96F44()
{
  result = qword_27FEF9430;
  if (!qword_27FEF9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9430);
  }

  return result;
}

unint64_t sub_261F96F98()
{
  result = qword_27FEF9438;
  if (!qword_27FEF9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9438);
  }

  return result;
}

uint64_t sub_261F96FEC(uint64_t a1)
{
  *(a1 + 8) = sub_261F8E070(&qword_27FEF9440, type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);
  result = sub_261F8E070(&unk_27FEF9448, type metadata accessor for CreateWirelessPairingSessionRequest, &protocol conformance descriptor for CreateWirelessPairingSessionRequest);
  *(a1 + 16) = result;
  return result;
}

void sub_261F97098(uint64_t a1)
{
  sub_26203965C();
  if (v1 <= 0x3F)
  {
    sub_261F97154(319);
    if (v2 <= 0x3F)
    {
      sub_261F971AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_261F97154(uint64_t a1)
{
  if (!qword_27FEF9468)
  {
    sub_2620395EC();
    v1 = sub_26203A6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27FEF9468);
    }
  }
}

void sub_261F971AC()
{
  if (!qword_27FEF9470)
  {
    v0 = sub_26203A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEF9470);
    }
  }
}

uint64_t sub_261F97224(uint64_t a1)
{
  sub_261F9727C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_261F9727C()
{
  if (!qword_28108CF48)
  {
    v0 = sub_26203965C();
    if (!v1)
    {
      atomic_store(v0, &qword_28108CF48);
    }
  }
}

uint64_t sub_261F972EC(uint64_t a1)
{
  result = type metadata accessor for HostDeletionTarget(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_261F97374(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261F973B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261F97410(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261F97450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_261F974C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_261F97500(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261F97578(uint64_t a1)
{
  result = sub_26203989C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice20PinNotificationEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_261F97610(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F97664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_261F976C4(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_BYTE *sub_261F97784(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_62(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_261F978C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_62(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_261F979BC(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_86(a1);
}

_BYTE *sub_261F97A08(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PairedHostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PairedHostInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261F97C1C()
{
  result = qword_27FEF9478;
  if (!qword_27FEF9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9478);
  }

  return result;
}

unint64_t sub_261F97C74()
{
  result = qword_27FEF9480;
  if (!qword_27FEF9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9480);
  }

  return result;
}

unint64_t sub_261F97CCC()
{
  result = qword_27FEF9488;
  if (!qword_27FEF9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9488);
  }

  return result;
}

unint64_t sub_261F97D24()
{
  result = qword_27FEF9490;
  if (!qword_27FEF9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9490);
  }

  return result;
}

unint64_t sub_261F97D7C()
{
  result = qword_27FEF9498;
  if (!qword_27FEF9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9498);
  }

  return result;
}

unint64_t sub_261F97DD4()
{
  result = qword_27FEF94A0;
  if (!qword_27FEF94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94A0);
  }

  return result;
}

unint64_t sub_261F97E2C()
{
  result = qword_27FEF94A8;
  if (!qword_27FEF94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94A8);
  }

  return result;
}

unint64_t sub_261F97E84()
{
  result = qword_27FEF94B0;
  if (!qword_27FEF94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94B0);
  }

  return result;
}

unint64_t sub_261F97EDC()
{
  result = qword_27FEF94B8;
  if (!qword_27FEF94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94B8);
  }

  return result;
}

unint64_t sub_261F97F34()
{
  result = qword_27FEF94C0;
  if (!qword_27FEF94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94C0);
  }

  return result;
}

unint64_t sub_261F97F8C()
{
  result = qword_27FEF94C8;
  if (!qword_27FEF94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94C8);
  }

  return result;
}

unint64_t sub_261F97FE4()
{
  result = qword_27FEF94D0;
  if (!qword_27FEF94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94D0);
  }

  return result;
}

unint64_t sub_261F9803C()
{
  result = qword_27FEF94D8;
  if (!qword_27FEF94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94D8);
  }

  return result;
}

unint64_t sub_261F98094()
{
  result = qword_27FEF94E0;
  if (!qword_27FEF94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94E0);
  }

  return result;
}

unint64_t sub_261F980EC()
{
  result = qword_27FEF94E8;
  if (!qword_27FEF94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94E8);
  }

  return result;
}

unint64_t sub_261F98144()
{
  result = qword_27FEF94F0;
  if (!qword_27FEF94F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94F0);
  }

  return result;
}

unint64_t sub_261F9819C()
{
  result = qword_27FEF94F8;
  if (!qword_27FEF94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF94F8);
  }

  return result;
}

unint64_t sub_261F981F4()
{
  result = qword_27FEF9500;
  if (!qword_27FEF9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9500);
  }

  return result;
}

unint64_t sub_261F9824C()
{
  result = qword_27FEF9508;
  if (!qword_27FEF9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9508);
  }

  return result;
}

unint64_t sub_261F982A4()
{
  result = qword_27FEF9510;
  if (!qword_27FEF9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9510);
  }

  return result;
}

unint64_t sub_261F982FC()
{
  result = qword_27FEF9518;
  if (!qword_27FEF9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9518);
  }

  return result;
}

unint64_t sub_261F98354()
{
  result = qword_27FEF9520;
  if (!qword_27FEF9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9520);
  }

  return result;
}

unint64_t sub_261F983AC()
{
  result = qword_28108B668;
  if (!qword_28108B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B668);
  }

  return result;
}

unint64_t sub_261F98404()
{
  result = qword_28108B670;
  if (!qword_28108B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B670);
  }

  return result;
}

unint64_t sub_261F9845C()
{
  result = qword_27FEF9528;
  if (!qword_27FEF9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9528);
  }

  return result;
}

unint64_t sub_261F984B4()
{
  result = qword_27FEF9530;
  if (!qword_27FEF9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9530);
  }

  return result;
}

unint64_t sub_261F9850C()
{
  result = qword_27FEF9538;
  if (!qword_27FEF9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9538);
  }

  return result;
}

unint64_t sub_261F98564()
{
  result = qword_27FEF9540;
  if (!qword_27FEF9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9540);
  }

  return result;
}

unint64_t sub_261F985BC()
{
  result = qword_27FEF9548;
  if (!qword_27FEF9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9548);
  }

  return result;
}

unint64_t sub_261F98614()
{
  result = qword_27FEF9550;
  if (!qword_27FEF9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9550);
  }

  return result;
}

unint64_t sub_261F9866C()
{
  result = qword_27FEF9558;
  if (!qword_27FEF9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9558);
  }

  return result;
}

unint64_t sub_261F986C4()
{
  result = qword_27FEF9560;
  if (!qword_27FEF9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9560);
  }

  return result;
}

unint64_t sub_261F9871C()
{
  result = qword_27FEF9568;
  if (!qword_27FEF9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9568);
  }

  return result;
}

unint64_t sub_261F98774()
{
  result = qword_27FEF9570;
  if (!qword_27FEF9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9570);
  }

  return result;
}

unint64_t sub_261F987CC()
{
  result = qword_27FEF9578;
  if (!qword_27FEF9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9578);
  }

  return result;
}

unint64_t sub_261F98824()
{
  result = qword_27FEF9580;
  if (!qword_27FEF9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9580);
  }

  return result;
}

unint64_t sub_261F9887C()
{
  result = qword_27FEF9588;
  if (!qword_27FEF9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9588);
  }

  return result;
}

unint64_t sub_261F988D4()
{
  result = qword_27FEF9590;
  if (!qword_27FEF9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9590);
  }

  return result;
}

unint64_t sub_261F9892C()
{
  result = qword_27FEF9598;
  if (!qword_27FEF9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9598);
  }

  return result;
}

unint64_t sub_261F98984()
{
  result = qword_27FEF95A0;
  if (!qword_27FEF95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF95A0);
  }

  return result;
}

unint64_t sub_261F989DC()
{
  result = qword_27FEF95A8;
  if (!qword_27FEF95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF95A8);
  }

  return result;
}

unint64_t sub_261F98A34()
{
  result = qword_27FEF95B0;
  if (!qword_27FEF95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF95B0);
  }

  return result;
}

unint64_t sub_261F98A8C()
{
  result = qword_27FEF95B8;
  if (!qword_27FEF95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF95B8);
  }

  return result;
}

unint64_t sub_261F98AE4()
{
  result = qword_27FEF95C0;
  if (!qword_27FEF95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF95C0);
  }

  return result;
}

uint64_t sub_261F98B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_261F98BCC()
{
  result = qword_27FEF9600;
  if (!qword_27FEF9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9600);
  }

  return result;
}

unint64_t sub_261F98C20()
{
  result = qword_27FEF9608;
  if (!qword_27FEF9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9608);
  }

  return result;
}

unint64_t sub_261F98C74()
{
  result = qword_27FEF9610;
  if (!qword_27FEF9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9610);
  }

  return result;
}

unint64_t sub_261F98CC8()
{
  result = qword_27FEF9618;
  if (!qword_27FEF9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9618);
  }

  return result;
}

unint64_t sub_261F98D1C()
{
  result = qword_27FEF9620;
  if (!qword_27FEF9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9620);
  }

  return result;
}

unint64_t sub_261F98D70()
{
  result = qword_27FEF9628;
  if (!qword_27FEF9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9628);
  }

  return result;
}

unint64_t sub_261F98DC4()
{
  result = qword_27FEF9630;
  if (!qword_27FEF9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9630);
  }

  return result;
}

unint64_t sub_261F98E18()
{
  result = qword_27FEF9638;
  if (!qword_27FEF9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9638);
  }

  return result;
}

unint64_t sub_261F98E6C()
{
  result = qword_27FEF9660;
  if (!qword_27FEF9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9660);
  }

  return result;
}

unint64_t sub_261F98EC0()
{
  result = qword_27FEF9668;
  if (!qword_27FEF9668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9668);
  }

  return result;
}

void sub_261F98F1C(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_261F98F68()
{
  result = qword_28108B330;
  if (!qword_28108B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEFA0B0, &unk_262040690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B330);
  }

  return result;
}

id sub_261F98FCC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_261F98FDC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_261F98FEC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_63_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26203AA9C();
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{

  return sub_26203A80C();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return sub_26203978C();
}

RemotePairingDevice::BonjourService_optional __swiftcall BonjourService.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26203A96C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BonjourService.rawValue.getter()
{
  result = 0x6E6E75742D70725FLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
    case 3:
      return result;
    case 4:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

unint64_t sub_261F99410()
{
  result = qword_27FEF96C0;
  if (!qword_27FEF96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF96C0);
  }

  return result;
}

unint64_t sub_261F99488@<X0>(unint64_t *a1@<X8>)
{
  result = BonjourService.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_261F994BC(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BonjourService(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BonjourService(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice0B7OutcomeOIegn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261F99720(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 41))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 4)
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

uint64_t sub_261F99760(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_261F997B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_26203AC0C();
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  sub_261F7D45C(v2, v3);

  return sub_261F81D84(v1, v0);
}

uint64_t sub_261F99848()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF96D0 = result;
  return result;
}

uint64_t sub_261F998C4()
{
  sub_261F9B6D0(0, &qword_27FEF96E0, 0x277CCAAF8);
  OUTLINED_FUNCTION_1_7();
  return sub_26203A6AC();
}

uint64_t sub_261F99940(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 16);
  return swift_endAccess();
}

uint64_t sub_261F999AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 72) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  swift_unknownObjectWeakInit();
  v14 = 0;
  v15 = a4;
  v16 = a5;
  sub_261F9B720(v13, v6 + 16);

  sub_261F9904C(a4, a5);

  sub_26203991C();

  sub_26203975C();
  sub_261F665E4(a4, a5);

  return v6;
}

uint64_t sub_261F99AAC(uint64_t a1)
{
  v2 = sub_262039A2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v28[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9710, &unk_26203EB60);
  MEMORY[0x28223BE20](v12);
  v14 = &v28[-v13];
  sub_261F9B760(a1, &v28[-v13]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v11, v14, v2);
    v15 = sub_26203A48C();
    if (qword_27FEF85E0 != -1)
    {
      swift_once();
    }

    v16 = qword_27FEF96D0;
    v17 = *(v3 + 16);
    v17(v9, v11, v2);
    if (os_log_type_enabled(v16, v15))
    {
      v18 = swift_slowAlloc();
      v29 = v15;
      v19 = v18;
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      v17(v6, v9, v2);
      v21 = sub_26203A20C();
      v23 = v22;
      v24 = *(v3 + 8);
      v24(v9, v2);
      v25 = sub_261F67FE4(v21, v23, &v30);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_261F5B000, v16, v29, "Recieved error from side channel listener: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x266724180](v20, -1, -1);
      MEMORY[0x266724180](v19, -1, -1);
      return (v24)(v11, v2);
    }

    else
    {
      v27 = *(v3 + 8);
      v27(v9, v2);
      return (v27)(v11, v2);
    }
  }

  else
  {
    sub_261F99DFC(*v14, *(v14 + 1));
  }
}

void sub_261F99DFC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_26203A47C();
  if (qword_27FEF85E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_27FEF85E0);
  }

  sub_26203969C(v3, &dword_261F5B000, qword_27FEF96D0, "Received peer connection from service for wireless pairing session", 66, 2, MEMORY[0x277D84F90]);
  swift_allocObject();
  swift_weakInit();
  sub_261F9B4DC();
  sub_261F9B530();
  sub_26203984C();

  sub_26203975C();
  objc_allocWithZone(type metadata accessor for WirelessPairingSession());

  v5 = sub_261F9A61C(v4, a2);
  MEMORY[0x28223BE20](v5);
  sub_261F998C4();
}

uint64_t sub_261F99F90(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (v6)
    {
      v9 = sub_26203A48C();
      if (qword_27FEF85E0 != -1)
      {
        swift_once();
      }

      v10 = qword_27FEF96D0;
      v11 = os_log_type_enabled(qword_27FEF96D0, v9);
      if (v11)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30 = v13;
        *v12 = 136315138;
        v34[0] = v3;
        v14 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v15 = sub_26203A20C();
        v17 = sub_261F67FE4(v15, v16, &v30);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_261F5B000, v10, v9, "Recieved error from side channel peer: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x266724180](v13, -1, -1);
        v11 = MEMORY[0x266724180](v12, -1, -1);
      }

      MEMORY[0x28223BE20](v11);
      sub_261F998C4();
    }

    else
    {
      v18 = sub_26203A47C();
      if (qword_27FEF85E0 != -1)
      {
        swift_once();
      }

      v19 = qword_27FEF96D0;
      if (os_log_type_enabled(qword_27FEF96D0, v18))
      {
        v20 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v3;
        v33 = v5;
        v34[0] = v29;
        *v20 = 136315138;
        v31 = v2;
        v32 = v4;
        sub_261F9B58C(v3, v2, v4, v5);
        v21 = sub_26203A20C();
        v23 = v18;
        v24 = v19;
        v25 = sub_261F67FE4(v21, v22, v34);

        *(v20 + 4) = v25;
        v19 = v24;
        _os_log_impl(&dword_261F5B000, v24, v23, "Recieved message from side channel peer: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x266724180](v29, -1, -1);
        MEMORY[0x266724180](v20, -1, -1);
      }

      swift_beginAccess();
      v26 = *(v8 + 56);
      if (v26)
      {
        v27 = *(v8 + 64);
        v30 = v3;
        v31 = v2;
        v32 = v4;
        v33 = v5;

        v26(&v30);
        sub_261F665E4(v26, v27);
      }

      else
      {
        v28 = sub_26203A48C();
        sub_26203969C(v28, &dword_261F5B000, v19, "Received pin notification event without registering for a pin handler", 69, 2, MEMORY[0x277D84F90]);
      }
    }
  }

  return result;
}

uint64_t sub_261F9A318(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakAssign();
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  *(a1 + 32) = 1;
  if (v5)
  {
    v7 = *(a1 + 16);
    v5(a2, 0);
    result = sub_261F665E4(v5, v7);
  }

  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_261F9A384(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_26203974C();
  }

  *a1 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_261F9ACA0();
  }

  else if ((a1[4] & 1) == 0)
  {
    v6 = a1[1];
    if (v6)
    {
      v7 = a1[2];

      v6(a2, 1);
      sub_261F665E4(v6, v7);
    }
  }

  result = sub_261F665E4(a1[1], a1[2]);
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

uint64_t sub_261F9A42C()
{
  sub_261F9B5F4(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id sub_261F9A4F8@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___RPWirelessPairingSession_Internal__state);
  *a1 = v2;
  return sub_261F9B710(v2);
}

BOOL sub_261F9A568()
{
  sub_261F9B6D0(0, &qword_27FEF96E0, 0x277CCAAF8);
  sub_26203A6AC();
  if (v1 != 1)
  {
    sub_261F9A60C(v1);
  }

  return v1 != 1;
}

void sub_261F9A60C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_261F9A61C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___RPWirelessPairingSession_Internal__lock;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&v2[OBJC_IVAR___RPWirelessPairingSession_Internal__invalidationHandlers] = MEMORY[0x277D84F90];
  v6 = &v2[OBJC_IVAR___RPWirelessPairingSession_Internal__connection];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v2[OBJC_IVAR___RPWirelessPairingSession_Internal__state] = 1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for WirelessPairingSession();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_261F9A6C4(uint64_t a1)
{
  v1 = sub_26203A4AC();
  if (qword_27FEF85E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_27FEF85E0);
  }

  sub_26203969C(v1, &dword_261F5B000, qword_27FEF96D0, "Wireless pairing session explicitly ended by client", 51, 2, MEMORY[0x277D84F90]);

  return sub_261F9ACA0();
}

uint64_t sub_261F9A794(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_261F9B6D0(0, &qword_27FEF96E0, 0x277CCAAF8);
  v7 = a1;

  OUTLINED_FUNCTION_1_7();
  sub_26203A6AC();
}

uint64_t sub_261F9A874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262039FEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_262039FCC();
  v19[1] = MEMORY[0x277D84F90];
  sub_261F9B65C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

void sub_261F9AAF8(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR___RPWirelessPairingSession_Internal__state);
  if (v5 == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = OBJC_IVAR___RPWirelessPairingSession_Internal__invalidationHandlers;
    swift_beginAccess();

    sub_262001C5C();
    v9 = *(*(a1 + v8) + 16);
    sub_262001D18(v9);
    v10 = *(a1 + v8);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = sub_261F9B624;
    *(v11 + 40) = v7;
    *(a1 + v8) = v10;
    swift_endAccess();
  }

  else
  {
    v12 = v5;
    a2(v5);
    sub_261F9A60C(v5);
  }
}

uint64_t sub_261F9ACA0()
{
  sub_261F9B6D0(0, &qword_27FEF96E0, 0x277CCAAF8);
  OUTLINED_FUNCTION_1_7();
  return sub_26203A6AC();
}

uint64_t sub_261F9AD4C(uint64_t result, id a2)
{
  v2 = OBJC_IVAR___RPWirelessPairingSession_Internal__state;
  if (*(result + OBJC_IVAR___RPWirelessPairingSession_Internal__state) == 1)
  {
    v4 = result;
    if (a2)
    {
      v5 = a2;
      v6 = sub_26203A4AC();
      if (qword_27FEF85E0 != -1)
      {
        swift_once();
      }

      v7 = qword_27FEF96D0;
      if (os_log_type_enabled(qword_27FEF96D0, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v22[0] = v9;
        *v8 = 136315138;
        v23 = a2;
        v10 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v11 = sub_26203A20C();
        v13 = sub_261F67FE4(v11, v12, v22);

        *(v8 + 4) = v13;
        _os_log_impl(&dword_261F5B000, v7, v6, "Wireless pairing session invalidated with error: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
        MEMORY[0x266724180](v9, -1, -1);
        MEMORY[0x266724180](v8, -1, -1);
      }
    }

    else
    {
      v14 = sub_26203A4AC();
      if (qword_27FEF85E0 != -1)
      {
        swift_once();
      }

      sub_26203969C(v14, &dword_261F5B000, qword_27FEF96D0, "Wireless pairing session invalidated", 36, 2, MEMORY[0x277D84F90]);
    }

    v15 = *(v4 + v2);
    *(v4 + v2) = a2;
    v16 = a2;
    sub_261F9A60C(v15);
    sub_26203974C();
    v17 = OBJC_IVAR___RPWirelessPairingSession_Internal__invalidationHandlers;
    swift_beginAccess();
    v18 = *(v4 + v17);
    v19 = *(v18 + 16);
    if (v19)
    {

      v20 = v18 + 40;
      do
      {
        v21 = *(v20 - 8);
        v23 = a2;

        v21(&v23);

        v20 += 16;
        --v19;
      }

      while (v19);
    }

    *(v4 + v17) = MEMORY[0x277D84F90];
  }

  return result;
}

id WirelessPairingSession.__deallocating_deinit()
{
  sub_261F9ACA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1E0, &qword_26203E9F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26203E9E0;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x800000026204D2E0;
  sub_26203ADBC();

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WirelessPairingSession();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id WirelessPairingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice08WirelessB7SessionC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261F9B318(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261F9B374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_261F9B3D0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_261F9B410(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261F9B464(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_261F9B4DC()
{
  result = qword_27FEF9700;
  if (!qword_27FEF9700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9700);
  }

  return result;
}

unint64_t sub_261F9B530()
{
  result = qword_27FEF9708;
  if (!qword_27FEF9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9708);
  }

  return result;
}

void sub_261F9B58C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

unint64_t sub_261F9B65C()
{
  result = qword_28108B370;
  if (!qword_28108B370)
  {
    sub_262039FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B370);
  }

  return result;
}

uint64_t sub_261F9B6D0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_261F9B710(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_261F9B760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9710, &unk_26203EB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

RemotePairingDevice::RemotePairingError __swiftcall RemotePairingError.init(code:userInfo:)(Swift::Int32 code, Swift::OpaquePointer userInfo)
{
  v2->_rawValue = code;
  v2[1]._rawValue = userInfo._rawValue;
  result.errorUserInfo = userInfo;
  LODWORD(result.errorCode) = code;
  return result;
}

uint64_t sub_261F9B848(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185EE8](a1, a2, v4);
}

uint64_t sub_261F9B8C4(uint64_t a1)
{
  v2 = sub_261F9D6AC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261F9B900(uint64_t a1)
{
  v2 = sub_261F9D6AC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261F9B944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_261F9BCE0();

  return MEMORY[0x282185F10](a1, a2, a3, v8, a4);
}

uint64_t sub_261F9BA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185ED8](a1, a2, v4);
}

uint64_t sub_261F9BAA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185ED0](a1, a2, v4);
}

uint64_t sub_261F9BAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185EE0](a1, a2, v4);
}

uint64_t sub_261F9BB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185EC8](a1, a2, v4);
}

uint64_t sub_261F9BB88(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F9BCE0();

  return MEMORY[0x282185EC0](a1, a2, v4);
}

uint64_t sub_261F9BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_261F9BCE0();

  return MEMORY[0x282185EB0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_261F9BC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261F9BCE0();

  return MEMORY[0x282185EB8](a1, a2, a3, v6);
}

uint64_t static RemotePairingError.deviceNotFound.getter(uint64_t a1)
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1000, 35, v1, v2);
}

unint64_t sub_261F9BCE0()
{
  result = qword_28108CCC0;
  if (!qword_28108CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCC0);
  }

  return result;
}

uint64_t static RemotePairingError.connectionFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1001, 44, v0, v1);
}

uint64_t static RemotePairingError.pairingFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1002, 43, v0, v1);
}

uint64_t static RemotePairingError.deviceRejectedPairing.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1003, 40, v0, v1);
}

uint64_t static RemotePairingError.interactivePairingRequired.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1004, 69, v0, v1);
}

uint64_t static RemotePairingError.invalidOperation.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1005, 74, v0, v1);
}

uint64_t static RemotePairingError.rapportError.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1006, 54, v0, v1);
}

uint64_t static RemotePairingError.tunnelError.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1007, 52, v0, v1);
}

uint64_t static RemotePairingError.managedConfigurationRejectedPairing.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1008, 48, v0, v1);
}

uint64_t static RemotePairingError.findMyRejectedPairing.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1009, 52, v0, v1);
}

uint64_t static RemotePairingError.deviceIsAlreadyPairingWithHost.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1010, 60, v0, v1);
}

uint64_t static RemotePairingError.failedToAuthenticateUser.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1011, 56, v0, v1);
}

uint64_t static RemotePairingError.remotePairingNotSupportedByDevice.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1012, 51, v0, v1);
}

uint64_t static RemotePairingError.pairingRecordRemovalFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1013, 36, v0, v1);
}

uint64_t static RemotePairingError.pairingRecordNotFound.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1014, 43, v0, v1);
}

uint64_t static RemotePairingError.mobileDeviceError.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1015, 54, v0, v1);
}

uint64_t static RemotePairingError.unlockRequired.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1016, 53, v0, v1);
}

uint64_t static RemotePairingError.remoteUnlockFailure.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1017, 49, v0, v1);
}

uint64_t static RemotePairingError.pairingRecordMissingInfo.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1018, 56, v0, v1);
}

uint64_t static RemotePairingError.userRejectedPairing.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1019, 38, v0, v1);
}

uint64_t static RemotePairingError.macAddressUnavailable.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1020, 40, v0, v1);
}

uint64_t static RemotePairingError.networkInterfaceIndexUnavailable.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1021, 52, v0, v1);
}

uint64_t static RemotePairingError.notConnectedOverNetwork.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1022, 47, v0, v1);
}

uint64_t static RemotePairingError.wakeOnLANFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1024, 35, v0, v1);
}

uint64_t static RemotePairingError.wakeOnControlChannelFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1025, 56, v0, v1);
}

uint64_t static RemotePairingError.remoteUnlockKeysUnsupported.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1026, 50, v0, v1);
}

uint64_t static RemotePairingError.managedConfigurationChallengeRequired.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1027, 59, v0, v1);
}

uint64_t static RemotePairingError.pairingAlreadyInProgress.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1028, 52, v0, v1);
}

uint64_t static RemotePairingError.mtuIsLessThanMinSupportedMTU.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1029, 54, v0, v1);
}

uint64_t static RemotePairingError.mtuIsMoreThanMaxSupportedMTU.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1030, 54, v0, v1);
}

uint64_t static RemotePairingError.secKeyIsInvalid.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1031, 21, v0, v1);
}

uint64_t static RemotePairingError.tlsKeyCreationFailed.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1032, 26, v0, v1);
}

uint64_t static RemotePairingError.assertionReleased.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1033, 19, v0, v1);
}

uint64_t static RemotePairingError.bluetoothConnectionExceededTimeLimit.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1034, 72, v0, v1);
}

uint64_t static RemotePairingError.peerRejectedConnection.getter()
{
  sub_261F9BCE0();
  OUTLINED_FUNCTION_1_8();
  return OUTLINED_FUNCTION_3_3(1035, 41, v0, v1);
}

uint64_t static RemotePairingError.managedConfigurationChallengeRequired(with:)(uint64_t a1, unint64_t a2)
{
  sub_261F9BCE0();
  sub_26203AD3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9720, &qword_26203EB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203E9E0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000026204D510;
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_261F6B73C(a1, a2);
  sub_26203A0FC();
  sub_261F9D4D8(MEMORY[0x277D84F90]);
  return sub_26203AD2C();
}

uint64_t ControlChannelConnectionError.normalized<A>(as:)(ValueMetadata *a1)
{
  v2 = v1[1];
  v12 = *v1;
  v13 = v2;
  v3 = v1[3];
  v14 = v1[2];
  v15 = v3;
  if (a1 != &type metadata for RemotePairingError)
  {
    return 0;
  }

  switch(v12)
  {
    case 1:
    case 3:
    case 5:
      sub_261F9BCE0();
      sub_26203AD3C();
      break;
    case 2:
      sub_261F9BCE0();
      OUTLINED_FUNCTION_2_4();
      sub_26203ACEC();
      break;
    case 4:
      sub_261F9BCE0();
      OUTLINED_FUNCTION_2_4();
      sub_26203AD1C();
      break;
    default:
      sub_261F9BCE0();
      OUTLINED_FUNCTION_2_4();
      sub_26203ACDC();
      break;
  }

  v11[8] = v11[10];
  v11[9] = v11[11];
  sub_261F65C5C();
  v5 = swift_allocError();
  v6 = v15;
  v8 = v12;
  v7 = v13;
  v9[2] = v14;
  v9[3] = v6;
  *v9 = v8;
  v9[1] = v7;
  sub_261F9D610();
  v4 = swift_allocError();
  sub_261F65CB0(&v12, v11);
  sub_2620399DC();

  return v4;
}

void sub_261F9CA94()
{
  if (MEMORY[0x277D44148])
  {
    sub_261F9D664();
    sub_26203A1BC();
    sub_261F9BCE0();
    sub_26203A66C();
  }
}

uint64_t sub_261F9CB38(uint64_t a1)
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_261F9D610();
  v1 = swift_allocError();
  sub_2620399DC();

  return v1;
}

uint64_t sub_261F9CBF8()
{
  sub_261F9D664();
  sub_261F9BCE0();
  return sub_26203A66C();
}

uint64_t sub_261F9CC68(void *a1)
{
  v10 = a1;
  sub_261F9D664();
  v2 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  switch(v6)
  {
    case 1:
    case 4:
      sub_261F9BCE0();
      sub_26203AD1C();
      break;
    case 2:
      sub_261F9BCE0();
      sub_26203ACEC();
      break;
    case 3:
      sub_261F9BCE0();
      sub_26203AD3C();
      break;
    case 5:
      sub_261F9BCE0();
      sub_26203ACFC();
      break;
    default:
      sub_261F9BCE0();
      sub_26203ACDC();
      break;
  }

  sub_261F9D610();
  v3 = swift_allocError();
  sub_2620399DC();
  sub_261F6A70C(v5);

  return v3;
}

void static NSError.setRemotePairingNormalizationProviders()()
{
  if (qword_28108B688 != -1)
  {
    swift_once();
  }

  if (qword_28108B590 != -1)
  {

    swift_once();
  }
}

unint64_t sub_261F9CECC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9728, &unk_26203EEF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26203E9E0;
  v1 = sub_261F9D81C();
  result = sub_261F9D870();
  *(v0 + 32) = &type metadata for RemotePairingError;
  *(v0 + 40) = v1;
  *(v0 + 48) = result;
  qword_27FEF9718 = v0;
  return result;
}

uint64_t *sub_261F9CF3C()
{
  if (qword_27FEF85E8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27FEF85E8);
  }

  return &qword_27FEF9718;
}

uint64_t static RemotePairingErrorCodingWrapper.supportedTypes.getter()
{
  if (qword_27FEF85E8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27FEF85E8);
  }

  swift_beginAccess();
}

uint64_t static RemotePairingErrorCodingWrapper.supportedTypes.setter(uint64_t a1)
{
  if (qword_27FEF85E8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27FEF85E8);
  }

  swift_beginAccess();
  qword_27FEF9718 = a1;
}

uint64_t (*static RemotePairingErrorCodingWrapper.supportedTypes.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FEF85E8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_27FEF85E8);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261F9D0D0@<X0>(void *a1@<X8>)
{
  sub_261F9CF3C();
  swift_beginAccess();
  *a1 = qword_27FEF9718;
}

uint64_t sub_261F9D124(uint64_t *a1)
{
  v1 = *a1;

  sub_261F9CF3C();
  swift_beginAccess();
  qword_27FEF9718 = v1;
}

id RemotePairingErrorCodingWrapper.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void sub_261F9D1AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RemotePairingErrorCodingWrapper.wrappedValue.setter(v1);
}

void RemotePairingErrorCodingWrapper.wrappedValue.setter(void *a1)
{
  v2 = v1;

  *v2 = a1;
  swift_getErrorValue();
  sub_261F9BCE0();
  v4 = sub_26203AD5C();

  *v2 = v4;
}

uint64_t (*RemotePairingErrorCodingWrapper.wrappedValue.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  return sub_261F9D2B8;
}

void sub_261F9D2B8(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = v2[4];
    swift_getErrorValue();
    sub_261F9BCE0();
    v4 = sub_26203AD5C();
    v5 = *v3;
    *v3 = v4;
  }

  free(v2);
}

void RemotePairingErrorCodingWrapper.encode(to:)(uint64_t a1)
{
  v1 = sub_2620393EC();
  sub_26203A68C();
}

uint64_t RemotePairingErrorCodingWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_261F9D664();
  sub_261F79740(a1, v7);
  v5 = sub_26203A67C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_261F9D44C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = static RemotePairingErrorCodingWrapper.defaultEncodingValue(forUnencodableValue:)(*a1);
  *a2 = result;
  return result;
}

id sub_261F9D480@<X0>(void *a1@<X8>)
{
  result = RemotePairingErrorCodingWrapper.wrappedValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_261F9D4D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA180, &unk_26203F6F0);
  v2 = sub_26203A94C();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_261F9D93C(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_261F9D8C4(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_261F8D184(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_261F9D610()
{
  result = qword_28108CCB0;
  if (!qword_28108CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCB0);
  }

  return result;
}

unint64_t sub_261F9D664()
{
  result = qword_28108B280;
  if (!qword_28108B280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28108B280);
  }

  return result;
}

unint64_t sub_261F9D6AC()
{
  result = qword_28108CCC8;
  if (!qword_28108CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCC8);
  }

  return result;
}

unint64_t sub_261F9D704()
{
  result = qword_28108CCD0;
  if (!qword_28108CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CCD0);
  }

  return result;
}

unint64_t sub_261F9D760()
{
  result = qword_28108D088;
  if (!qword_28108D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D088);
  }

  return result;
}

unint64_t sub_261F9D7B8()
{
  result = qword_28108D090;
  if (!qword_28108D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108D090);
  }

  return result;
}

unint64_t sub_261F9D81C()
{
  result = qword_27FEF9730;
  if (!qword_27FEF9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9730);
  }

  return result;
}

unint64_t sub_261F9D870()
{
  result = qword_27FEF9738;
  if (!qword_27FEF9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9738);
  }

  return result;
}

unint64_t sub_261F9D8C4(uint64_t a1, uint64_t a2)
{
  sub_26203ADDC();
  sub_26203A23C();
  v4 = sub_26203AE0C();

  return sub_261F7C7D0(a1, a2, v4);
}

uint64_t sub_261F9D93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9910, &unk_26203EF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall IPv4Address.copy_sockaddr_in()(sockaddr_in *__return_ptr retstr)
{
  v1 = sub_262039A8C();
  v3 = v2;
  sub_261F9DA0C(v1, v2);
  sub_261F6BFFC(v1, v3);
}

uint64_t sub_261F9DA0C(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 >= a1)
      {
        v4 = a1;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a1 + 16);
LABEL_6:
      result = sub_261F9DA88(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_261F9DA88(uint64_t a1)
{
  v2 = sub_26203937C();
  if (v2)
  {
    v3 = v2;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  result = sub_26203939C();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_261F9DAF4(uint64_t a1)
{
  result = sub_261F9DB1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261F9DB1C()
{
  result = qword_27FEF9740;
  if (!qword_27FEF9740)
  {
    sub_2620398FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9740);
  }

  return result;
}

uint64_t sub_261F9DD00(uint64_t a1)
{
  v2 = sub_261F9DE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F9DD3C(uint64_t a1)
{
  v2 = sub_261F9DE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmptyResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9748, &qword_26203EF70);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261F9DE7C();
  sub_26203AE5C();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_261F9DE7C()
{
  result = qword_28108CA88[0];
  if (!qword_28108CA88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28108CA88);
  }

  return result;
}

unint64_t sub_261F9DEF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A96C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261F9DF44(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0x6572756C696166;
      break;
    case 2:
      result = 0x676E656C6C616863;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_261F9E020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261F9DEF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261F9E050@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261F9DF44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_261F9E12C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26203A96C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261F9E180(char a1)
{
  result = 7823730;
  switch(a1)
  {
    case 1:
      result = 0x726F727265;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x656C74746F726874;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_261F9E22C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261F9E12C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_261F9E25C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261F9E180(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_261F9E290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F9E12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F9E2C4(uint64_t a1)
{
  v2 = sub_261F9E614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F9E300(uint64_t a1)
{
  v2 = sub_261F9E614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PairingOutcome.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9750, &unk_26203EF78);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261F9E614();
  sub_26203AE3C();
  if (!v2)
  {
    sub_261F9E668();
    OUTLINED_FUNCTION_5_1();
    sub_26203AA2C();
    switch(v22)
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        sub_261F67F70(&qword_27FEF9768, &qword_27FEF9750, &unk_26203EF78, MEMORY[0x277D844D0]);
        sub_261F96884();
        OUTLINED_FUNCTION_5_1();
        sub_26203AC6C();
        v18 = OUTLINED_FUNCTION_1_2();
        v19(v18);
        v9 = 0;
        v10 = 0;
        v8 = v21;
        break;
      case 2:
        OUTLINED_FUNCTION_5_1();
        v11 = sub_26203A9FC();
        OUTLINED_FUNCTION_5_1();
        v9 = sub_26203A9BC();
        v13 = v12;
        v14 = OUTLINED_FUNCTION_1_2();
        v15(v14);
        v8 = v11 & 1;
        v10 = v13 & 1 | 0x40;
        break;
      case 3:
        v16 = OUTLINED_FUNCTION_1_2();
        v17(v16);
        v9 = 0;
        v10 = 0x80;
        v8 = 1;
        break;
      default:
        v6 = OUTLINED_FUNCTION_1_2();
        v7(v6);
        v8 = 0;
        v9 = 0;
        v10 = 0x80;
        break;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_261F9E614()
{
  result = qword_27FEF9758;
  if (!qword_27FEF9758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9758);
  }

  return result;
}

unint64_t sub_261F9E668()
{
  result = qword_27FEF9760;
  if (!qword_27FEF9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9760);
  }

  return result;
}

uint64_t PairingOutcome.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9770, &unk_26203EF88);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *v1;
  *&v17 = v1[1];
  *(&v17 + 1) = v10;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261F9E614();
  sub_26203AE5C();
  v12 = v11 >> 6;
  if (v11 >> 6)
  {
    if (v12 == 1)
    {
      v13 = 2;
    }

    else if (v11 == 128 && v17 == 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 1;
  }

  v23 = v13;
  v22 = 0;
  sub_261F9E950();
  OUTLINED_FUNCTION_30_2();
  sub_26203AB3C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v4);
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v21 = 2;
      OUTLINED_FUNCTION_30_2();
      sub_26203AB0C();
      v20 = 3;
      OUTLINED_FUNCTION_30_2();
      sub_26203AACC();
    }

    return (*(v6 + 8))(v9, v4);
  }

  v18 = *(&v17 + 1);
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  sub_261F67F70(&qword_27FEF9780, &qword_27FEF9770, &unk_26203EF88, MEMORY[0x277D84540]);
  sub_261F96884();
  OUTLINED_FUNCTION_30_2();
  sub_26203AC7C();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_261F9E950()
{
  result = qword_27FEF9778;
  if (!qword_27FEF9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF9778);
  }

  return result;
}

uint64_t RSDDeviceInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___RPRSDDeviceInfo_Internal_name);

  return v1;
}

uint64_t RSDDeviceInfo.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___RPRSDDeviceInfo_Internal_uuid;
  v4 = sub_26203965C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id RSDDeviceInfo.init(name:uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR___RPRSDDeviceInfo_Internal_name];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR___RPRSDDeviceInfo_Internal_uuid;
  v7 = sub_26203965C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for RSDDeviceInfo(0);
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

uint64_t type metadata accessor for RSDDeviceInfo(uint64_t a1)
{
  result = qword_27FEF97B0;
  if (!qword_27FEF97B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RSDDeviceInfo.__allocating_init(from:)(uint64_t a1)
{
  v1 = sub_26203965C();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s7Mercury12RemoteDeviceC0b7PairingC0E18endpointIdentifierSSvg_0();
  v6 = v5;
  sub_2620396DC();
  v7 = objc_allocWithZone(type metadata accessor for RSDDeviceInfo(0));
  v8 = RSDDeviceInfo.init(name:uuid:)(v4, v6, v3);

  return v8;
}

uint64_t sub_261F9EE24()
{
  sub_26203AE1C();
  sub_26203A23C();
  sub_26203965C();
  sub_261F9F884(&qword_27FEF9790, MEMORY[0x277CC9600]);
  sub_26203A12C();
  return sub_26203ADFC();
}

uint64_t sub_261F9EEC0(uint64_t a1)
{
  sub_261F9EF94(a1, v6);
  if (!v7)
  {
    sub_261F693A0(v6);
    goto LABEL_10;
  }

  type metadata accessor for RSDDeviceInfo(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___RPRSDDeviceInfo_Internal_name) == *&v5[OBJC_IVAR___RPRSDDeviceInfo_Internal_name] && *(v1 + OBJC_IVAR___RPRSDDeviceInfo_Internal_name + 8) == *&v5[OBJC_IVAR___RPRSDDeviceInfo_Internal_name + 8];
  if (!v2 && (sub_26203AC0C() & 1) == 0)
  {

    goto LABEL_10;
  }

  v3 = sub_26203962C();

  return v3 & 1;
}

uint64_t sub_261F9EF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9870, &qword_26203C960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id RSDDeviceInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_261F9F0F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

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

uint64_t sub_261F9F1C0(char a1)
{
  if (a1)
  {
    return 1684632949;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_261F9F1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261F9F0F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261F9F218(uint64_t a1)
{
  v2 = sub_261F9F4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261F9F254(uint64_t a1)
{
  v2 = sub_261F9F4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

id RSDDeviceInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSDDeviceInfo(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261F9F348(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9798, &qword_26203EF98);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261F9F4E4();
  sub_26203AE5C();
  v10[15] = 0;
  sub_26203AAFC();
  if (!v1)
  {
    v10[14] = 1;
    sub_26203965C();
    sub_261F9F884(&qword_27FEF91D8, MEMORY[0x277CC95F8]);
    sub_26203AB3C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_261F9F4E4()
{
  result = qword_27FEF97A0;
  if (!qword_27FEF97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97A0);
  }

  return result;
}

void *RSDDeviceInfo.init(from:)(void *a1)
{
  v3 = sub_26203965C();
  OUTLINED_FUNCTION_0();
  v20 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF97A8, &qword_26203EFA0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  sub_261F9F4E4();
  sub_26203AE3C();
  if (v1)
  {
    v16 = v22;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for RSDDeviceInfo(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v7;
    v24 = 0;
    v10 = sub_26203A9EC();
    v12 = v22;
    v13 = (v22 + OBJC_IVAR___RPRSDDeviceInfo_Internal_name);
    *v13 = v10;
    v13[1] = v14;
    v19 = v13;
    v24 = 1;
    sub_261F9F884(&qword_27FEF91F0, MEMORY[0x277CC9618]);
    sub_26203AA2C();
    (*(v20 + 32))(v12 + OBJC_IVAR___RPRSDDeviceInfo_Internal_uuid, v9, v3);
    v15 = type metadata accessor for RSDDeviceInfo(0);
    v23.receiver = v12;
    v23.super_class = v15;
    v16 = objc_msgSendSuper2(&v23, sel_init);
    v17 = OUTLINED_FUNCTION_2_5();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v16;
}

uint64_t sub_261F9F884(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26203965C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261F9F8C8(uint64_t a1)
{
  *(a1 + 8) = sub_261F967DC();
  result = sub_261F96830();
  *(a1 + 16) = result;
  return result;
}

void *sub_261F9F8F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RSDDeviceInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EmptyResponse(_BYTE *result, int a2, int a3)
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

uint64_t sub_261F9F9FC(uint64_t a1)
{
  result = sub_26203965C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RSDDeviceInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TunnelMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_261F9FCA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261F9FD98()
{
  result = qword_27FEF97C0;
  if (!qword_27FEF97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97C0);
  }

  return result;
}

unint64_t sub_261F9FDF0()
{
  result = qword_27FEF97C8;
  if (!qword_27FEF97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97C8);
  }

  return result;
}

unint64_t sub_261F9FE48()
{
  result = qword_27FEF97D0;
  if (!qword_27FEF97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97D0);
  }

  return result;
}

unint64_t sub_261F9FEA0()
{
  result = qword_27FEF97D8;
  if (!qword_27FEF97D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97D8);
  }

  return result;
}

unint64_t sub_261F9FEF8()
{
  result = qword_27FEF97E0;
  if (!qword_27FEF97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97E0);
  }

  return result;
}

unint64_t sub_261F9FF50()
{
  result = qword_27FEF97E8;
  if (!qword_27FEF97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97E8);
  }

  return result;
}

unint64_t sub_261F9FFA8()
{
  result = qword_27FEF97F0;
  if (!qword_27FEF97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97F0);
  }

  return result;
}

unint64_t sub_261FA0000()
{
  result = qword_28108CA78;
  if (!qword_28108CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA78);
  }

  return result;
}

unint64_t sub_261FA0058()
{
  result = qword_28108CA80;
  if (!qword_28108CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108CA80);
  }

  return result;
}

unint64_t sub_261FA00AC()
{
  result = qword_27FEF97F8;
  if (!qword_27FEF97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF97F8);
  }

  return result;
}

uint64_t sub_261FA011C()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9800 = result;
  return result;
}

uint64_t PairingChallenge.__allocating_init(lastAttemptIncorrect:throttledBy:handlingPINWith:handlingCancellationWith:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v14 = swift_allocObject();
  PairingChallenge.init(lastAttemptIncorrect:throttledBy:handlingPINWith:handlingCancellationWith:)(v13, a2, a3 & 1, a4, a5, a6, a7);
  return v14;
}

uint64_t PairingChallenge.init(lastAttemptIncorrect:throttledBy:handlingPINWith:handlingCancellationWith:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9808, &qword_26203F520);
  swift_allocObject();
  v15 = sub_261FA0948(0);
  *(v7 + 64) = a7;
  *(v7 + 72) = v15;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3 & 1;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  return v7;
}

uint64_t sub_261FA02DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v6 = *(v5 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v5 + 24);
  *(v5 + 24) = 1;
  os_unfair_lock_unlock(v6);
  if ((v7 & 1) == 0)
  {
    return (*(v2 + 40))(a1, a2);
  }

  result = OUTLINED_FUNCTION_0_9();
  __break(1u);
  return result;
}

uint64_t sub_261FA03A0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2);
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = 1;
  os_unfair_lock_unlock(v2);
  if ((v3 & 1) == 0)
  {
    return (*(v0 + 56))();
  }

  result = OUTLINED_FUNCTION_0_9();
  __break(1u);
  return result;
}

void *PairingChallenge.deinit()
{
  v1 = v0;

  v2 = sub_261FA0534();

  if ((v2 & 1) == 0)
  {
    v3 = sub_26203A4AC();
    if (qword_27FEF85F0 != -1)
    {
      swift_once();
    }

    sub_26203969C(v3, &dword_261F5B000, qword_27FEF9800, "PairingChallenge was destroyed without being completed or cancelled. Automatically cancelling pairing challenge.", 112, 2, MEMORY[0x277D84F90]);
    v4 = *(v1 + 56);

    v4(v5);
  }

  return v1;
}

uint64_t sub_261FA0534()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1);
  swift_beginAccess();
  v2 = *(v0 + 24);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_261FA0588(uint64_t a1@<X8>)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3);
  v4 = *(*v1 + 96);
  swift_beginAccess();
  sub_261FA0B50(v1 + v4, a1);
  os_unfair_lock_unlock(v3);
}

void sub_261FA0600(void *a1@<X8>)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  sub_261FA0B3C(v4);

  os_unfair_lock_unlock(v3);
}

uint64_t PairingChallenge.__deallocating_deinit()
{
  PairingChallenge.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_261FA0730()
{
  if (*(*(v0 + OBJC_IVAR___RPPairingChallenge__underlyingValue) + 32))
  {
    return 0;
  }

  else
  {
    return sub_26203A41C();
  }
}

uint64_t sub_261FA0768(uint64_t a1, uint64_t a2)
{

  sub_261FA02DC(a1, a2);
}

uint64_t sub_261FA0830()
{

  sub_261FA03A0();
}

void __swiftcall RPPairingChallenge.init()(RPPairingChallenge *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

uint64_t sub_261FA0948(char a1)
{
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *v3 = 0;
  *(v1 + 24) = a1;
  return v1;
}

void *sub_261FA0984(uint64_t a1)
{
  v3 = swift_slowAlloc();
  v1[2] = v3;
  *v3 = 0;
  sub_261FA0AD8(a1, v1 + *(*v1 + 96));
  return v1;
}

void *sub_261FA09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_slowAlloc();
  *v7 = 0;
  v3[2] = v7;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_261FA0AD8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_261FA0B3C(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_261FA0B50(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FA0BB4()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEF9820 = result;
  return result;
}

id DeviceKeyValueStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceKeyValueStore.init()()
{
  v1 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9830, &unk_26203F5C0);
  *&v0[v1] = sub_26203A0FC();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DeviceKeyValueStore();
  return objc_msgSendSuper2(&v3, sel_init);
}

char *DeviceKeyValueStore.init(copyingValuesFrom:)(char *a1)
{
  v3 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9830, &unk_26203F5C0);
  *&v1[v3] = sub_26203A0FC();
  v4 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v5 = *&a1[v4];
  swift_beginAccess();
  *&v1[v3] = v5;

  v8.receiver = v1;
  v8.super_class = type metadata accessor for DeviceKeyValueStore();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id static DeviceKeyValueStore.keyValueStoreContainingStandardKeys()()
{
  v0 = [objc_allocWithZone(type metadata accessor for DeviceKeyValueStore()) init];
  OUTLINED_FUNCTION_7_2();
  sub_261FA2574(v1, v2, v3, v4, v5, 0xEA0000000000656DLL, 0);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_7_2();
  sub_261FA2574(v13, v14, v15, v16, v17, v18, 0);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v19, v20, v21, v22, v23, v24, v25);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v26, v27, v28, v29, v30, v31, v32);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v33, v34, v35, v36, v37, v38, v39);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v40, v41, v42, v43, v44, v45, v46);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v47, v48, v49, v50, v51, v52, v53);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v54, v55, v56, v57, v58, v59, v60);
  OUTLINED_FUNCTION_7_2();
  sub_261FA2574(v61, v62, v63, v64, 0xD000000000000013, v65, 0);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v66, v67, v68, v69, v70, v71, v72);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v73, v74, v75, v76, v77, v78, v79);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v80, v81, v82, v83, v84, v85, v86);
  OUTLINED_FUNCTION_2_6();
  sub_261FA26E4(v87, v88, v89, v90, v91, v92, v93, v94, &qword_26203F7D0);
  OUTLINED_FUNCTION_2_6();
  sub_261FA26E4(v95, v96, v97, v98, v99, v100, v101, v102, &unk_26203F710);
  sub_261FA2848(0x6F632D6863746177, 0xEF6E6F696E61706DLL, 0xD000000000000018, 0x800000026204E140, 0xD000000000000018, 0x800000026204E160, 0);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v103, v104, v105, v106, v107, v108, v109);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2848(v110, v111, v112, v113, v114, v115, v116);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2848(v117, v118, v119, v120, v121, v122, v123);
  OUTLINED_FUNCTION_2_6();
  sub_261FA2574(v124, v125, v126, v127, v128, v129, v130);
  sub_261FA2B28(0xD000000000000027, 0x800000026204E1C0, 0xD00000000000001BLL, 0x800000026204E1F0, 0xD000000000000013, 0x800000026204E210, 0);
  v131 = _RPIsDarwinOS();
  v193[3] = MEMORY[0x277D839B0];
  LOBYTE(v193[0]) = v131;
  sub_261FA1698(1280070990, 0xE400000000000000, 0x6E69777261447349, 0xEA0000000000534FLL, v193, 0);
  __swift_destroy_boxed_opaque_existential_0Tm(v193);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2574(v132, v133, v134, v135, v136, v137, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2998(v138, v139, v140, v141, v142, v143, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2574(v144, v145, v146, v147, v148, v149, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2574(v150, v151, v152, v153, v154, v155, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2574(v156, v157, v158, v159, v160, v161, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2574(v162, v163, v164, v165, v166, v167, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2998(v168, v169, v170, v171, v172, v173, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2998(v174, v175, v176, v177, v178, v179, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2998(v180, v181, v182, v183, v184, v185, 1);
  OUTLINED_FUNCTION_3_4();
  sub_261FA2998(v186, v187, v188, v189, v190, v191, 1);
  return v0;
}

uint64_t sub_261FA14E8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_23_1();
    v5 = sub_26203A94C();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_261FA1600()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9830, &unk_26203F5C0);
  v0 = sub_26203A0EC();

  return v0;
}

uint64_t sub_261FA1698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    v11 = 1280070990;
  }

  v12 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v14 = *(v6 + v12);

  OUTLINED_FUNCTION_4_2();
  v16 = sub_261FA1B74(v11, v13, v14, v15);

  if (v16)
  {
  }

  else
  {
    v17 = sub_26203A0FC();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40 = *(v7 + v12);
    sub_261FA4574(v17, v11, v13, isUniquelyReferenced_nonNull_native, &qword_27FEF9840, &qword_26203F5D0);
    *(v7 + v12) = v40;
    swift_endAccess();
  }

  sub_261F681A8(a5, &v44);
  v46 = a6 & 1;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v7 + v12);
  v19 = v43;
  *(v7 + v12) = 0x8000000000000000;
  OUTLINED_FUNCTION_0_10();
  v21 = sub_261F7C720(v11, v13, v20);
  if (__OFADD__(*(v19 + 16), (v22 & 1) == 0))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v21;
  v24 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9840, &qword_26203F5D0);
  if ((sub_26203A8EC() & 1) == 0)
  {
LABEL_14:
    if (v24)
    {
      v28 = v43;
      v29 = *(*(v43 + 56) + 8 * v23);
      if (*(&v45 + 1))
      {
        v40 = v44;
        v41 = v45;
        v42 = v46;

        v30 = swift_isUniquelyReferenced_nonNull_native();
        sub_261FA406C(&v40, a3, a4, v30);

        if (v29)
        {
LABEL_17:

          *(*(v28 + 56) + 8 * v23) = v29;

          v28 = v43;
LABEL_23:
          *(v7 + v12) = v28;
          return swift_endAccess();
        }
      }

      else
      {

        sub_261F66E60(&v44, &qword_27FEF9848, &qword_26203F5D8);
        OUTLINED_FUNCTION_0_10();
        v32 = sub_261F7C720(a3, a4, v31);
        if (v33)
        {
          v34 = v32;
          swift_isUniquelyReferenced_nonNull_native();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9850, &qword_26203F5E0);
          sub_26203A8EC();

          v35 = *(v29 + 56) + 40 * v34;
          v36 = *(v35 + 32);
          v37 = *(v35 + 16);
          v40 = *v35;
          v41 = v37;
          v42 = v36;
          sub_26203A90C();
        }

        else
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
        }

        sub_261F66E60(&v40, &qword_27FEF9848, &qword_26203F5D8);
        if (v29)
        {
          goto LABEL_17;
        }
      }

      sub_261FA41D4(*(v28 + 48) + 16 * v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9830, &unk_26203F5C0);
      sub_26203A90C();
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0_10();
  v26 = sub_261F7C720(v11, v13, v25);
  if ((v24 & 1) == (v27 & 1))
  {
    v23 = v26;
    goto LABEL_14;
  }

LABEL_26:
  result = sub_26203AC9C();
  __break(1u);
  return result;
}

double sub_261FA1AAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_261F7C720(a1, a2, sub_261F7C7D0), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_261FA4228(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_261FA1B2C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_261FA3914(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_26_3(v2);
    }
  }

  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FA1B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_261F7C720(a1, a2, a4);
  if (v4)
  {
  }

  else
  {
    return 0;
  }
}

double sub_261FA1BC8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (OUTLINED_FUNCTION_0_10(), v7 = sub_261F7C720(v4, v5, v6), (v8 & 1) != 0))
  {
    v9 = *(a1 + 56) + 48 * v7;

    sub_261FA5688(v9, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_261FA1C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    OUTLINED_FUNCTION_0_10();
    v6 = sub_261F7C720(v3, v4, v5);
    if (v7)
    {
      OUTLINED_FUNCTION_26_3(v6);
    }
  }

  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FA1C84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_261FA3958(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    OUTLINED_FUNCTION_6_1();
    sub_261F7B428(v7 + *(v9 + 72) * v6, a2, &qword_27FEF9890, &unk_26203F680);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9890, &unk_26203F680);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

double sub_261FA1D60()
{
  OUTLINED_FUNCTION_17_1();
  v6 = v5 | 0x4C4C0000u;
  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v10 = *(v1 + v9);

  OUTLINED_FUNCTION_4_2();
  v12 = sub_261FA1B74(v7, v8, v10, v11);

  if (v12)
  {
    OUTLINED_FUNCTION_29_3();
    sub_261FA1AAC(v13, v14, v15, v16);

    if (v20)
    {
      sub_261FA4228(v19, v18);
      sub_261F66E60(v19, &qword_27FEF9848, &qword_26203F5D8);
      sub_261F8D184(v18, v0);
      return result;
    }

    sub_261F66E60(v19, &qword_27FEF9848, &qword_26203F5D8);
  }

  return OUTLINED_FUNCTION_25_1();
}

void *sub_261FA1E90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 1280070990;
  }

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v6 = *(v2 + v5);

  OUTLINED_FUNCTION_4_2();
  v8 = sub_261FA1B74(v3, v4, v6, v7);

  if (v8)
  {
    v9 = v8 + 64;
    OUTLINED_FUNCTION_14_3();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;

    v15 = 0;
    v16 = MEMORY[0x277D84F98];
    v39 = v8 + 64;
    v40 = v8;
    if (v12)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v17 >= v14)
      {

        return v16;
      }

      v12 = *(v9 + 8 * v17);
      ++v15;
    }

    while (!v12);
    v15 = v17;
LABEL_13:
    while (1)
    {
      v18 = __clz(__rbit64(v12)) | (v15 << 6);
      v19 = *(v8 + 56);
      v20 = (*(v8 + 48) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      sub_261FA4228(v19 + 40 * v18, &v47);
      v46[0] = v22;
      v46[1] = v21;
      sub_261F7B428(v46, v44, &qword_27FEF9858, &qword_26203F5E8);
      v24 = v44[0];
      v23 = v44[1];
      sub_261F7B428(v46, v41, &qword_27FEF9858, &qword_26203F5E8);

      sub_261F681A8(v42, v43);
      sub_261FA4358(v42);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_0_10();
      v26 = sub_261F7C720(v24, v23, v25);
      if (__OFADD__(v16[2], (v27 & 1) == 0))
      {
        break;
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9860, &qword_26203F5F0);
      if (sub_26203A8EC())
      {
        OUTLINED_FUNCTION_0_10();
        v31 = sub_261F7C720(v24, v23, v30);
        if ((v29 & 1) != (v32 & 1))
        {
          goto LABEL_29;
        }

        v28 = v31;
      }

      if (v29)
      {

        v33 = (v16[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        sub_261F8D184(v43, v33);
        sub_261F66E60(v46, &qword_27FEF9858, &qword_26203F5E8);
      }

      else
      {
        v16[(v28 >> 6) + 8] |= 1 << v28;
        v34 = (v16[6] + 16 * v28);
        *v34 = v24;
        v34[1] = v23;
        sub_261F8D184(v43, (v16[7] + 32 * v28));
        sub_261F66E60(v46, &qword_27FEF9858, &qword_26203F5E8);
        v35 = v16[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_28;
        }

        v16[2] = v37;
      }

      v12 &= v12 - 1;
      sub_261FA4358(&v45);
      v9 = v39;
      v8 = v40;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_26203AC9C();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_261FA229C()
{
  OUTLINED_FUNCTION_17_1();
  v6 = v5 | 0x4C4C0000u;
  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = v4;
  }

  v9 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v10 = *(v1 + v9);

  OUTLINED_FUNCTION_4_2();
  v12 = sub_261FA1B74(v7, v8, v10, v11);

  if (v12)
  {
    OUTLINED_FUNCTION_29_3();
    sub_261FA1AAC(v13, v14, v15, v16);

    if (v21)
    {
      sub_261FA4228(v20, v19);
      sub_261F66E60(v20, &qword_27FEF9848, &qword_26203F5D8);
      v17 = v19[32];
      sub_261FA4358(v19);
      *(v0 + 24) = MEMORY[0x277D839B0];
      *v0 = v17;
      return result;
    }

    sub_261F66E60(v20, &qword_27FEF9848, &qword_26203F5D8);
  }

  return OUTLINED_FUNCTION_25_1();
}

id sub_261FA23DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    sub_26203A1BC();
  }

  sub_26203A1BC();
  v7 = a1;
  v8 = OUTLINED_FUNCTION_75();
  a5(v8);

  v9 = v17;
  if (v17)
  {
    v10 = __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v11 = *(v9 - 8);
    MEMORY[0x28223BE20](v10);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_26203ABFC();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t sub_261FA2574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_26203A18C();
  v14 = MGCopyAnswer();

  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v15 = MEMORY[0x277D837D0];
  result = swift_dynamicCast();
  if (result)
  {
    v20 = a5;
    v17 = v22;
    v18 = v23;
    if (a4)
    {
      v19 = a4;
    }

    else
    {
      a3 = 1280070990;
      v19 = 0xE400000000000000;
    }

    v24 = v15;

    sub_261FA1698(a3, v19, a1, a2, &v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    if (a6)
    {
      v24 = v15;
      v22 = v17;
      v23 = v18;

      sub_261FA1698(a3, v19, v20, a6, &v22, a7 & 1);

      return __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_261FA26E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v12 = sub_26203A18C();
  v13 = MGCopyAnswer();

  v27[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v29;
    v28 = v14;
    v27[0] = v29;

    v17 = OUTLINED_FUNCTION_28_2();
    sub_261FA1698(v17, v18, a1, a2, v19, v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    if (a6)
    {
      v28 = v14;
      v27[0] = v16;

      v21 = OUTLINED_FUNCTION_28_2();
      sub_261FA1698(v21, v22, a5, a6, v23, v24);

      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_261FA2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = sub_26203A18C();
  v15 = MGCopyAnswer();

  v22[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9928, &qword_26203F708);
  v16 = MEMORY[0x277D839B0];
  result = swift_dynamicCast();
  if (result)
  {
    v21 = a5;
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = 1280070990;
    }

    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v23 = v16;
    v20 = v24 & 1;
    LOBYTE(v22[0]) = v24 & 1;

    sub_261FA1698(v18, v19, a1, a2, v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    if (a6)
    {
      v23 = v16;
      LOBYTE(v22[0]) = v20;
      sub_261FA1698(v18, v19, v21, a6, v22, a7 & 1);

      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }
  }

  return result;
}

void sub_261FA2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = sub_26203A18C();
  MGCopyAnswer();

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = 1280070990;
    }

    if (a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    v18 = sub_261F9B6D0(0, &unk_28108B270, 0x277CCABB0);
    v23 = v18;
    v22[0] = v15;
    v19 = v15;

    sub_261FA1698(v16, v17, a1, a2, v22, a7 & 1);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    if (a6)
    {
      v23 = v18;
      v22[0] = v19;
      v20 = v19;
      sub_261FA1698(v16, v17, a5, a6, v22, a7 & 1);

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_261FA2B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v22 = a6;
  HIDWORD(v20) = a7;
  v21 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v11 = sub_2620392DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 8;
  v29 = 0;
  v23 = a2;
  v15 = sub_26203A21C();
  LODWORD(a2) = sysctlbyname((v15 + 32), &v29, &v28, 0, 0);

  if (a2)
  {
    v16 = sub_2620396AC();
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 0;
    }

    else
    {
      LODWORD(v30) = v16;
      sub_261F9D4D8(MEMORY[0x277D84F90]);
      sub_261FA5DCC(&qword_27FEF9920, MEMORY[0x277CC8658]);
      sub_2620393DC();
      v17 = sub_2620392CC();
      (*(v12 + 8))(v14, v11);
    }

    sub_261F9BCE0();
    sub_26203ACEC();
    v24 = v26;
    v25 = v27;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_26203A7CC();

    v30 = 0xD000000000000017;
    v31 = 0x800000026204E380;
    MEMORY[0x266722710](a1, v23);
    sub_26203AD4C();
    v26 = v30;
    v27 = v31;
    sub_261F9D610();
    swift_allocError();
    sub_2620399DC();

    swift_willThrow();
  }

  else
  {
    if (a4)
    {
      v18 = a3;
    }

    else
    {
      v18 = 1280070990;
    }

    if (a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v32 = MEMORY[0x277D84D38];
    v30 = v29;

    sub_261FA1698(v18, v19, v21, v22, &v30, BYTE4(v20) & 1);

    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  }
}

void *sub_261FA2E5C(char a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_261FA2F88(a1);
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9868, qword_26203F5F8);
  v2 = sub_26203A0BC();

  v7[0] = 0;
  v3 = [v1 dataWithPropertyList:v2 format:200 options:0 error:v7];

  v4 = v7[0];
  if (v3)
  {
    v5 = sub_26203954C();
  }

  else
  {
    v5 = v4;
    sub_2620393FC();

    swift_willThrow();
  }

  return v5;
}

void sub_261FA2F88(char a1)
{
  v2 = OBJC_IVAR___RPDeviceKeyValueStore_Internal_kvs;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *(v1 + v2);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v28 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_7:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_261FA3178(v14, v15, v16, a1 & 1);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261FB991C();
        v28 = v26;
      }

      v23 = *(v28 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v28 + 24) >> 1)
      {
        sub_261FB991C();
        v24 = v23 + 1;
        v28 = v27;
      }

      *(v28 + 16) = v24;
      v25 = (v28 + 24 * v23);
      v25[4] = v18;
      v25[5] = v20;
      v25[6] = v22;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      sub_261FA14E8(v28, &qword_27FEF98F0, &qword_26203F6D8, sub_261FA5748);
      return;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_261FA3178(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_261FA4228(*(a3 + 56) + 40 * v13, v29);
    v28[0] = v15;
    v28[1] = v16;
    if ((a4 & 1) != 0 || (v29[32] & 1) == 0)
    {
      *&v25 = v15;
      *(&v25 + 1) = v16;
      sub_261F681A8(v29, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
    }

    v9 &= v9 - 1;

    sub_261F66E60(v28, &qword_27FEF9858, &qword_26203F5E8);
    if (*(&v25 + 1))
    {
      v22 = v25;
      v23 = v26;
      v24 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261FB9A10();
        v21 = v19;
      }

      v17 = *(v21 + 16);
      if (v17 >= *(v21 + 24) >> 1)
      {
        sub_261FB9A10();
        v21 = v20;
      }

      *(v21 + 16) = v17 + 1;
      v18 = (v21 + 48 * v17);
      v18[3] = v23;
      v18[4] = v24;
      v18[2] = v22;
    }

    else
    {
      sub_261F66E60(&v25, &unk_27FEF9900, &qword_26203F6E8);
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      sub_261FA14E8(v21, &qword_27FEFA180, &unk_26203F6F0, sub_261FA5A54);

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_261FA33DC(uint64_t a1)
{
  sub_261F7B428(a1, v4, &qword_27FEF9870, &qword_26203C960);
  if (v5)
  {
    type metadata accessor for DeviceKeyValueStore();
    if (swift_dynamicCast())
    {
      sub_261F9B6D0(0, &unk_27FEF9878, 0x277D82BB8);
      sub_261FA2F88(1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9868, qword_26203F5F8);
      OUTLINED_FUNCTION_29_3();
      v1 = sub_26203A0BC();

      sub_261FA2F88(1);
      OUTLINED_FUNCTION_29_3();
      v2 = sub_26203A0BC();

      sub_26203A69C();
    }
  }

  else
  {
    sub_261F66E60(v4, &qword_27FEF9870, &qword_26203C960);
  }

  OUTLINED_FUNCTION_21_1();
}