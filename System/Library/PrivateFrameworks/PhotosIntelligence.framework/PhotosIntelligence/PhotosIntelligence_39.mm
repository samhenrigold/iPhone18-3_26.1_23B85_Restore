BOOL static PersonalTrait.LabelType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_22;
      }

      if (v2 != v5 || v3 != v6)
      {
        OUTLINED_FUNCTION_90();
        v17 = sub_1C7551DBC();
        v31 = OUTLINED_FUNCTION_64();
        sub_1C7244FF8(v31, v32, 1u);
        v33 = OUTLINED_FUNCTION_1_86();
        sub_1C7244FF8(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_1_86();
        sub_1C7080C10(v36, v37, v38);
        v24 = OUTLINED_FUNCTION_64();
        v26 = 1;
        goto LABEL_21;
      }

      v29 = 1;
      v52 = OUTLINED_FUNCTION_1_86();
      sub_1C7244FF8(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_1_86();
      sub_1C7244FF8(v55, v56, v57);
      v58 = OUTLINED_FUNCTION_1_86();
      sub_1C7080C10(v58, v59, v60);
      v61 = OUTLINED_FUNCTION_1_86();
      sub_1C7080C10(v61, v62, v63);
      return v29;
    case 2u:
      if (v7 != 2)
      {
LABEL_22:
        sub_1C75504FC();
LABEL_23:
        v40 = OUTLINED_FUNCTION_64();
        sub_1C7244FF8(v40, v41, v7);
        v42 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v42, v43, v4);
        v44 = OUTLINED_FUNCTION_64();
        sub_1C7080C10(v44, v45, v7);
        return 0;
      }

      v15 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_1C7244FF8(v15, v3, 2u);
        v46 = OUTLINED_FUNCTION_90();
        sub_1C7244FF8(v46, v47, 2u);
        v48 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v48, v49, 2u);
        v50 = OUTLINED_FUNCTION_90();
        sub_1C7080C10(v50, v51, 2u);
        return 1;
      }

      v17 = sub_1C7551DBC();
      v18 = OUTLINED_FUNCTION_64();
      sub_1C7244FF8(v18, v19, 2u);
      v20 = OUTLINED_FUNCTION_90();
      sub_1C7244FF8(v20, v21, 2u);
      v22 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v22, v23, 2u);
      v24 = OUTLINED_FUNCTION_64();
      v26 = 2;
LABEL_21:
      sub_1C7080C10(v24, v25, v26);
      return v17 & 1;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_23;
      }

      v27 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v27, v28, 3u);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 3;
      goto LABEL_14;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_23;
      }

      v13 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v13, v14, 4u);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 4;
      goto LABEL_14;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_23;
      }

      v8 = OUTLINED_FUNCTION_90();
      sub_1C7080C10(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_64();
      v12 = 0;
LABEL_14:
      sub_1C7080C10(v10, v11, v12);
      return v2 == v5;
  }
}

uint64_t sub_1C7242AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62614C656E656373 && a2 == 0xEA00000000006C65;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C75A6250 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001C75A6270 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000001C75A6290 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000002CLL && 0x80000001C75A62C0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

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

unint64_t sub_1C7242C78(char a1)
{
  result = 0x62614C656E656373;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7242D28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4B796164696C6F68 && a2 == 0xEA00000000007965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242DDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242E54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4B676E696E61656DLL && a2 == 0xEA00000000007965)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242EF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656449656E656373 && a2 == 0xEF7265696669746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7242F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7242FC4(uint64_t a1)
{
  v2 = sub_1C7245014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243000(uint64_t a1)
{
  v2 = sub_1C7245014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242D28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C724306C(uint64_t a1)
{
  v2 = sub_1C7245110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72430A8(uint64_t a1)
{
  v2 = sub_1C7245110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72430E8(uint64_t a1)
{
  v2 = sub_1C72450BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243124(uint64_t a1)
{
  v2 = sub_1C72450BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243160(uint64_t a1)
{
  v2 = sub_1C7245068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C724319C(uint64_t a1)
{
  v2 = sub_1C7245068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72431DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242E54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C7243208(uint64_t a1)
{
  v2 = sub_1C7245164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7243244(uint64_t a1)
{
  v2 = sub_1C7245164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7243284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7242EF0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C72432B0(uint64_t a1)
{
  v2 = sub_1C72451B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72432EC(uint64_t a1)
{
  v2 = sub_1C72451B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTrait.LabelType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v28;
  a26 = v29;
  v83 = v27;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199C0, &qword_1C757AA10);
  OUTLINED_FUNCTION_3_0();
  v77 = v33;
  v78 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36();
  v76 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199C8, &qword_1C757AA18);
  OUTLINED_FUNCTION_3_0();
  v74 = v37;
  v75 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_36();
  v73 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199D0, &qword_1C757AA20);
  OUTLINED_FUNCTION_3_0();
  v71 = v41;
  v72 = v40;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_36();
  v70 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199D8, &qword_1C757AA28);
  OUTLINED_FUNCTION_3_0();
  v68 = v45;
  v69 = v44;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v67 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199E0, &qword_1C757AA30);
  OUTLINED_FUNCTION_3_0();
  v67[1] = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v67 - v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2199E8, &qword_1C757AA38);
  OUTLINED_FUNCTION_3_0();
  v81 = v55;
  v82 = v54;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v67 - v57;
  v59 = *v26;
  v79 = v26[1];
  v80 = v59;
  v60 = *(v26 + 16);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1C7245014();
  sub_1C755200C();
  switch(v60)
  {
    case 1:
      a13 = 1;
      sub_1C7245164();
      OUTLINED_FUNCTION_6_60(&type metadata for PersonalTrait.LabelType.MeaningInferenceCodingKeys, &a13);
      v66 = v69;
      sub_1C7551CCC();
      (*(v68 + 8))(v48, v66);
      goto LABEL_8;
    case 2:
      a14 = 2;
      sub_1C7245110();
      v63 = v70;
      OUTLINED_FUNCTION_6_60(&type metadata for PersonalTrait.LabelType.HolidayInferenceCodingKeys, &a14);
      v64 = v72;
      sub_1C7551CCC();
      v65 = v71;
      goto LABEL_6;
    case 3:
      a15 = 3;
      sub_1C72450BC();
      v63 = v73;
      OUTLINED_FUNCTION_6_60(&type metadata for PersonalTrait.LabelType.LibraryUnderstandingGenerativeThemeCodingKeys, &a15);
      v64 = v75;
      sub_1C7551D0C();
      v65 = v74;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_183();
      sub_1C7245068();
      v63 = v76;
      OUTLINED_FUNCTION_6_60(&type metadata for PersonalTrait.LabelType.LibraryUnderstandingOvernightGenerativeThemeCodingKeys, &a16);
      v64 = v78;
      sub_1C7551D0C();
      v65 = v77;
LABEL_6:
      (*(v65 + 8))(v63, v64);
LABEL_8:
      (*(v81 + 8))(v58, v49);
      break;
    default:
      sub_1C72451B8();
      v61 = v82;
      sub_1C7551C6C();
      sub_1C7551D5C();
      OUTLINED_FUNCTION_7_51();
      v62(v53, v49);
      (*(v81 + 8))(v58, v61);
      break;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t PersonalTrait.LabelType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      v5 = 1;
      goto LABEL_9;
    case 2:
      v5 = 2;
LABEL_9:
      MEMORY[0x1CCA5E460](v5);

      return sub_1C75505AC();
    case 3:
      v4 = 3;
      goto LABEL_6;
    case 4:
      v4 = 4;
LABEL_6:
      MEMORY[0x1CCA5E460](v4);
      result = MEMORY[0x1CCA5E460](v2);
      break;
    default:
      MEMORY[0x1CCA5E460](0);
      result = MEMORY[0x1CCA5E4A0](v2);
      break;
  }

  return result;
}

uint64_t PersonalTrait.LabelType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1C7551F3C();
  switch(v2)
  {
    case 1:
      v4 = 1;
      goto LABEL_8;
    case 2:
      v4 = 2;
LABEL_8:
      MEMORY[0x1CCA5E460](v4);
      sub_1C75505AC();
      return sub_1C7551FAC();
    case 3:
      v3 = 3;
      goto LABEL_6;
    case 4:
      v3 = 4;
LABEL_6:
      MEMORY[0x1CCA5E460](v3);
      MEMORY[0x1CCA5E460](v1);
      break;
    default:
      MEMORY[0x1CCA5E460](0);
      MEMORY[0x1CCA5E4A0](v1);
      break;
  }

  return sub_1C7551FAC();
}

void PersonalTrait.LabelType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_124();
  v117 = v24;
  v26 = v25;
  v115 = v27;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A08, &qword_1C757AA40);
  OUTLINED_FUNCTION_3_0();
  v111 = v28;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_36();
  v114 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A10, &qword_1C757AA48);
  OUTLINED_FUNCTION_3_0();
  v109 = v32;
  v110 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v113 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A18, &qword_1C757AA50);
  OUTLINED_FUNCTION_3_0();
  v106 = v36;
  v107 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_36();
  v112 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A20, &qword_1C757AA58);
  OUTLINED_FUNCTION_3_0();
  v104 = v40;
  v105 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v97 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A28, &qword_1C757AA60);
  OUTLINED_FUNCTION_3_0();
  v103 = v45;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v97 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A30, &unk_1C757AA68);
  OUTLINED_FUNCTION_3_0();
  v51 = v50;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v97 - v53;
  v55 = v26[3];
  v116 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v55);
  sub_1C7245014();
  v56 = v117;
  sub_1C7551FFC();
  if (v56)
  {
    goto LABEL_9;
  }

  v99 = v44;
  v100 = v48;
  v101 = v43;
  v102 = v51;
  v57 = v115;
  v117 = v54;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  if (v59 == v60 >> 1)
  {
LABEL_8:
    v70 = sub_1C75518EC();
    swift_allocError();
    v72 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v72 = &type metadata for PersonalTrait.LabelType;
    v73 = v117;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_51();
    v74(v73, v49);
LABEL_9:
    v61 = v116;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v61);
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v59 < (v60 >> 1))
  {
    v61 = v49;
    v98 = *(v58 + v59);
    sub_1C6FD80C8();
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      v66 = v61;
      v67 = v57;
      switch(v98)
      {
        case 1:
          sub_1C7245164();
          v78 = v117;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          v81 = sub_1C7551BBC();
          OUTLINED_FUNCTION_18_31(v81);
          v83 = v92;
          swift_unknownObjectRelease();
          v93 = OUTLINED_FUNCTION_19_42();
          v94(v93);
          OUTLINED_FUNCTION_7_51();
          v95(v78, v61);
          goto LABEL_17;
        case 2:
          sub_1C7245110();
          OUTLINED_FUNCTION_15_48();
          v77 = v117;
          sub_1C7551B4C();
          v79 = sub_1C7551BBC();
          OUTLINED_FUNCTION_18_31(v79);
          v83 = v82;
          swift_unknownObjectRelease();
          v84 = OUTLINED_FUNCTION_20_41();
          v85(v84);
          OUTLINED_FUNCTION_7_51();
          v86(v77, v66);
          v61 = v116;
          goto LABEL_17;
        case 3:
          sub_1C72450BC();
          OUTLINED_FUNCTION_15_48();
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v80 = sub_1C7551BFC();
          OUTLINED_FUNCTION_18_31(v80);
          v76 = v102;
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 4:
          OUTLINED_FUNCTION_183();
          sub_1C7245068();
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v75 = sub_1C7551BFC();
          OUTLINED_FUNCTION_18_31(v75);
          v76 = v102;
          swift_unknownObjectRelease();
LABEL_15:
          v87 = OUTLINED_FUNCTION_11_44();
          v88(v87);
          (*(v76 + 8))(v117, v61);
          goto LABEL_16;
        default:
          sub_1C72451B8();
          OUTLINED_FUNCTION_15_48();
          v68 = v117;
          sub_1C7551B4C();
          OUTLINED_FUNCTION_21_39();
          OUTLINED_FUNCTION_17_46();
          v69 = sub_1C7551C4C();
          OUTLINED_FUNCTION_18_31(v69);
          swift_unknownObjectRelease();
          v89 = OUTLINED_FUNCTION_11_44();
          v90(v89);
          OUTLINED_FUNCTION_7_51();
          v91(v68, v61);
LABEL_16:
          v83 = 0;
LABEL_17:
          v96 = v98;
          *v67 = v97;
          *(v67 + 8) = v83;
          *(v67 + 16) = v96;
          break;
      }

      goto LABEL_10;
    }

    v49 = v61;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C7244270(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1C7551F3C();
  PersonalTrait.LabelType.hash(into:)(v4);
  return sub_1C7551FAC();
}

uint64_t PersonalTrait.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersonalTrait(0) + 24);
  v4 = sub_1C754DFFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersonalTrait.labelType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonalTrait(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1C7244FF8(v4, v5, v6);
}

uint64_t PersonalTrait.associatedPersonUUIDs.getter()
{
  type metadata accessor for PersonalTrait(0);

  return sub_1C75504FC();
}

uint64_t PersonalTrait.init(title:assetUUIDs:source:labelType:score:associatedPersonUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>)
{
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 16);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v15 = type metadata accessor for PersonalTrait(0);
  *(a7 + v15[7]) = v11;
  v16 = a7 + v15[8];
  *v16 = v12;
  *(v16 + 1) = v13;
  v16[16] = v14;
  *(a7 + v15[9]) = a8;
  *(a7 + v15[10]) = a6;
  return sub_1C754DFEC();
}

PhotosIntelligence::PersonalTrait::CodingKeys_optional __swiftcall PersonalTrait.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::PersonalTrait::CodingKeys_optional __swiftcall PersonalTrait.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = PersonalTrait.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1C7244558()
{
  result = 0x656C746974;
  switch(*v0)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    case 4:
      result = 0x7079546C6562616CLL;
      break;
    case 5:
      result = 0x4955557465737361;
      break;
    case 6:
      result = 0x756F437465737361;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7244660@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalTrait.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7244694(uint64_t a1)
{
  v2 = sub_1C724520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72446D0(uint64_t a1)
{
  v2 = sub_1C724520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PersonalTrait.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A38, &unk_1C757AA78);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C724520C();
  sub_1C755200C();
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_442();
  sub_1C7551CCC();
  if (!v1)
  {
    v11 = type metadata accessor for PersonalTrait(0);
    LOBYTE(v23) = 1;
    sub_1C754DFFC();
    OUTLINED_FUNCTION_5_57();
    sub_1C724571C(v12, v13, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    LOBYTE(v23) = *(v2 + v11[7]);
    sub_1C7245260();
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    LOBYTE(v23) = 3;
    OUTLINED_FUNCTION_442();
    sub_1C7551CEC();
    v14 = v2 + v11[8];
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v23 = *v14;
    v24 = v15;
    v25 = v16;
    OUTLINED_FUNCTION_183();
    sub_1C7244FF8(v17, v18, v19);
    sub_1C72452B4();
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
    sub_1C7080C10(v23, v24, v25);
    v20 = *(v2 + 16);
    LOBYTE(v23) = 6;
    OUTLINED_FUNCTION_442();
    sub_1C7551D0C();
    v23 = v20;
    sub_1C75504FC();
    sub_1C70401E8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_8_52();
    v22 = v21;
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();

    v23 = *(v2 + v11[10]);
    OUTLINED_FUNCTION_8_52();
    OUTLINED_FUNCTION_442();
    sub_1C7551D2C();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_125();
}

void PersonalTrait.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v23 = v3;
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219A40, &qword_1C757AA88);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v26 = type metadata accessor for PersonalTrait(0);
  MEMORY[0x1EEE9AC00](v26);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v2[3];
  v27 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v11);
  sub_1C724520C();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_13_50();
    *v10 = sub_1C7551BBC();
    v10[1] = v12;
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_5_57();
    sub_1C724571C(v13, v14, MEMORY[0x1E69695D0]);
    v15 = v25;
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v16 = v26;
    (*(v24 + 32))(v10 + *(v26 + 24), v7, v15);
    sub_1C7245308();
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    *(v10 + v16[7]) = v28;
    LOBYTE(v28) = 3;
    OUTLINED_FUNCTION_13_50();
    sub_1C7551BDC();
    *(v10 + v16[9]) = v17;
    OUTLINED_FUNCTION_183();
    sub_1C724535C();
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v18 = v29;
    v19 = v10 + v16[8];
    *v19 = v28;
    v19[16] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v10[2] = v28;
    OUTLINED_FUNCTION_23_31();
    OUTLINED_FUNCTION_13_50();
    sub_1C7551C1C();
    v20 = OUTLINED_FUNCTION_10_53();
    v21(v20);
    *(v10 + *(v26 + 40)) = v28;
    sub_1C72453B0(v10, v23);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_1C7245414(v10);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t type metadata accessor for PersonalTrait(uint64_t a1)
{
  result = qword_1EDD0F528;
  if (!qword_1EDD0F528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7244FF8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return sub_1C75504FC();
  }

  return result;
}

unint64_t sub_1C7245014()
{
  result = qword_1EDD0F578;
  if (!qword_1EDD0F578)
  {
    result = swift_getWitnessTable(aQ_14, &type metadata for PersonalTrait.LabelType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F578);
  }

  return result;
}

unint64_t sub_1C7245068()
{
  result = qword_1EC2199F0;
  if (!qword_1EC2199F0)
  {
    result = swift_getWitnessTable(byte_1C757B618, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingOvernightGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2199F0);
  }

  return result;
}

unint64_t sub_1C72450BC()
{
  result = qword_1EC2199F8;
  if (!qword_1EC2199F8)
  {
    result = swift_getWitnessTable(byte_1C757B5C8, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC2199F8);
  }

  return result;
}

unint64_t sub_1C7245110()
{
  result = qword_1EC219A00;
  if (!qword_1EC219A00)
  {
    result = swift_getWitnessTable(aA_6, &type metadata for PersonalTrait.LabelType.HolidayInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A00);
  }

  return result;
}

unint64_t sub_1C7245164()
{
  result = qword_1EDD0F550;
  if (!qword_1EDD0F550)
  {
    result = swift_getWitnessTable(byte_1C757B528, &type metadata for PersonalTrait.LabelType.MeaningInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F550);
  }

  return result;
}

unint64_t sub_1C72451B8()
{
  result = qword_1EDD0F590;
  if (!qword_1EDD0F590)
  {
    result = swift_getWitnessTable(byte_1C757B4D8, &type metadata for PersonalTrait.LabelType.SceneLabelCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F590);
  }

  return result;
}

unint64_t sub_1C724520C()
{
  result = qword_1EDD0F5B8;
  if (!qword_1EDD0F5B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.CodingKeys, &type metadata for PersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F5B8);
  }

  return result;
}

unint64_t sub_1C7245260()
{
  result = qword_1EDD0F5A0;
  if (!qword_1EDD0F5A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.Source, &type metadata for PersonalTrait.Source, v0, v1);
    atomic_store(result, &qword_1EDD0F5A0);
  }

  return result;
}

unint64_t sub_1C72452B4()
{
  result = qword_1EDD0F538;
  if (!qword_1EDD0F538)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.LabelType, &type metadata for PersonalTrait.LabelType, v0, v1);
    atomic_store(result, &qword_1EDD0F538);
  }

  return result;
}

unint64_t sub_1C7245308()
{
  result = qword_1EDD0C0A0;
  if (!qword_1EDD0C0A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.Source, &type metadata for PersonalTrait.Source, v0, v1);
    atomic_store(result, &qword_1EDD0C0A0);
  }

  return result;
}

unint64_t sub_1C724535C()
{
  result = qword_1EDD0C090;
  if (!qword_1EDD0C090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.LabelType, &type metadata for PersonalTrait.LabelType, v0, v1);
    atomic_store(result, &qword_1EDD0C090);
  }

  return result;
}

uint64_t sub_1C72453B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7245414(uint64_t a1)
{
  v2 = type metadata accessor for PersonalTrait(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7245474()
{
  result = qword_1EC219A48;
  if (!qword_1EC219A48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.Source, &type metadata for PersonalTrait.Source, v0, v1);
    atomic_store(result, &qword_1EC219A48);
  }

  return result;
}

unint64_t sub_1C72454CC()
{
  result = qword_1EDD0C098;
  if (!qword_1EDD0C098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.LabelType, &type metadata for PersonalTrait.LabelType, v0, v1);
    atomic_store(result, &qword_1EDD0C098);
  }

  return result;
}

unint64_t sub_1C7245524()
{
  result = qword_1EC219A50;
  if (!qword_1EC219A50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.CodingKeys, &type metadata for PersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A50);
  }

  return result;
}

unint64_t sub_1C724557C()
{
  result = qword_1EDD0F5A8;
  if (!qword_1EDD0F5A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.CodingKeys, &type metadata for PersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F5A8);
  }

  return result;
}

unint64_t sub_1C72455D4()
{
  result = qword_1EDD0F5B0;
  if (!qword_1EDD0F5B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.CodingKeys, &type metadata for PersonalTrait.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F5B0);
  }

  return result;
}

uint64_t sub_1C7245628(void *a1)
{
  a1[1] = sub_1C724571C(&qword_1EDD0C080, type metadata accessor for PersonalTrait, protocol conformance descriptor for PersonalTrait);
  a1[2] = sub_1C724571C(&qword_1EDD0C088, type metadata accessor for PersonalTrait, protocol conformance descriptor for PersonalTrait);
  result = sub_1C724571C(&qword_1EDD0C078, type metadata accessor for PersonalTrait, protocol conformance descriptor for PersonalTrait);
  a1[3] = result;
  return result;
}

uint64_t sub_1C724571C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C724578C(uint64_t a1)
{
  sub_1C704303C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1C754DFFC();
    if (v5 > 0x3F)
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

_BYTE *storeEnumTagSinglePayload for PersonalTrait.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C7245940(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1C7245980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalTrait.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalTrait.LabelType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7245BCC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7245C7C()
{
  result = qword_1EC219A58;
  if (!qword_1EC219A58)
  {
    result = swift_getWitnessTable("1ݑ'tr\a", &type metadata for PersonalTrait.LabelType.LibraryUnderstandingOvernightGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A58);
  }

  return result;
}

unint64_t sub_1C7245CD4()
{
  result = qword_1EC219A60;
  if (!qword_1EC219A60)
  {
    result = swift_getWitnessTable(aY_8, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A60);
  }

  return result;
}

unint64_t sub_1C7245D2C()
{
  result = qword_1EC219A68;
  if (!qword_1EC219A68)
  {
    result = swift_getWitnessTable(byte_1C757B288, &type metadata for PersonalTrait.LabelType.HolidayInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A68);
  }

  return result;
}

unint64_t sub_1C7245D84()
{
  result = qword_1EC219A70;
  if (!qword_1EC219A70)
  {
    result = swift_getWitnessTable(asc_1C757B340, &type metadata for PersonalTrait.LabelType.MeaningInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A70);
  }

  return result;
}

unint64_t sub_1C7245DDC()
{
  result = qword_1EC219A78;
  if (!qword_1EC219A78)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for PersonalTrait.LabelType.SceneLabelCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A78);
  }

  return result;
}

unint64_t sub_1C7245E34()
{
  result = qword_1EC219A80;
  if (!qword_1EC219A80)
  {
    result = swift_getWitnessTable(byte_1C757B4B0, &type metadata for PersonalTrait.LabelType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A80);
  }

  return result;
}

unint64_t sub_1C7245E8C()
{
  result = qword_1EDD0F580;
  if (!qword_1EDD0F580)
  {
    result = swift_getWitnessTable(byte_1C757B368, &type metadata for PersonalTrait.LabelType.SceneLabelCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F580);
  }

  return result;
}

unint64_t sub_1C7245EE4()
{
  result = qword_1EDD0F588;
  if (!qword_1EDD0F588)
  {
    result = swift_getWitnessTable(byte_1C757B390, &type metadata for PersonalTrait.LabelType.SceneLabelCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F588);
  }

  return result;
}

unint64_t sub_1C7245F3C()
{
  result = qword_1EDD0F540;
  if (!qword_1EDD0F540)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for PersonalTrait.LabelType.MeaningInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F540);
  }

  return result;
}

unint64_t sub_1C7245F94()
{
  result = qword_1EDD0F548;
  if (!qword_1EDD0F548)
  {
    result = swift_getWitnessTable(aY_9, &type metadata for PersonalTrait.LabelType.MeaningInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F548);
  }

  return result;
}

unint64_t sub_1C7245FEC()
{
  result = qword_1EDD0F558;
  if (!qword_1EDD0F558)
  {
    result = swift_getWitnessTable(byte_1C757B1F8, &type metadata for PersonalTrait.LabelType.HolidayInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F558);
  }

  return result;
}

unint64_t sub_1C7246044()
{
  result = qword_1EDD0F560;
  if (!qword_1EDD0F560)
  {
    result = swift_getWitnessTable(byte_1C757B220, &type metadata for PersonalTrait.LabelType.HolidayInferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F560);
  }

  return result;
}

unint64_t sub_1C724609C()
{
  result = qword_1EC219A88;
  if (!qword_1EC219A88)
  {
    result = swift_getWitnessTable(byte_1C757B140, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A88);
  }

  return result;
}

unint64_t sub_1C72460F4()
{
  result = qword_1EC219A90;
  if (!qword_1EC219A90)
  {
    result = swift_getWitnessTable(byte_1C757B168, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A90);
  }

  return result;
}

unint64_t sub_1C724614C()
{
  result = qword_1EC219A98;
  if (!qword_1EC219A98)
  {
    result = swift_getWitnessTable(aI_13, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingOvernightGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219A98);
  }

  return result;
}

unint64_t sub_1C72461A4()
{
  result = qword_1EC219AA0;
  if (!qword_1EC219AA0)
  {
    result = swift_getWitnessTable(byte_1C757B0B0, &type metadata for PersonalTrait.LabelType.LibraryUnderstandingOvernightGenerativeThemeCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219AA0);
  }

  return result;
}

unint64_t sub_1C72461FC()
{
  result = qword_1EDD0F568;
  if (!qword_1EDD0F568)
  {
    result = swift_getWitnessTable(byte_1C757B420, &type metadata for PersonalTrait.LabelType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F568);
  }

  return result;
}

unint64_t sub_1C7246254()
{
  result = qword_1EDD0F570;
  if (!qword_1EDD0F570)
  {
    result = swift_getWitnessTable(byte_1C757B448, &type metadata for PersonalTrait.LabelType.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0F570);
  }

  return result;
}

unint64_t sub_1C72462A8()
{
  result = qword_1EDD0F598;
  if (!qword_1EDD0F598)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PersonalTrait.Source, &type metadata for PersonalTrait.Source, v0, v1);
    atomic_store(result, &qword_1EDD0F598);
  }

  return result;
}

void sub_1C7246318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v16[2] = MEMORY[0x1E69E7CC0];
  v10 = sub_1C6FB6304();
  v11 = 0;
  v15 = v10;
  while (1)
  {
    if (v10 == v11)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1CCA5DDD0](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v16[0] = v12;
    v14 = sub_1C724D104(v16, a2, a3, a4);
    if (v5)
    {

      return;
    }

    if (v14)
    {
      sub_1C755192C();
      sub_1C755196C();
      v10 = v15;
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v11;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C72464D4(uint64_t a1, id *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C6FB6304();
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_addingKeyAssetForObject_toAssets_options_;
  v35 = v4;
  v36 = a1;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v34 = a1 & 0xC000000000000001;
  v37 = a2;
  while (1)
  {
    if (v4 == v5)
    {

      return v42;
    }

    if (v6)
    {
      v9 = MEMORY[0x1CCA5DDD0](v5, a1);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_26;
      }

      v9 = *(a1 + 8 * v5 + 32);
    }

    v10 = v9;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v41 = 0;
    if (![v9 v8[486]])
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      a2 = v37;
      goto LABEL_22;
    }

    v11 = v41;
    v12 = sub_1C70CAC04(v10);
    if (!v13)
    {
      goto LABEL_29;
    }

    v14 = v12;
    v15 = v13;
    v38 = v10;
    if (v11)
    {
      v39 = sub_1C755068C();
      v40 = v16;
    }

    else
    {
      v39 = 0x6E776F6E6B6E75;
      v40 = 0xE700000000000000;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v17 = a2;
    v41 = *a2;
    v18 = v41;
    v19 = sub_1C6F78124(v14, v15);
    if (__OFADD__(v18[2], (v20 & 1) == 0))
    {
      goto LABEL_27;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328, &unk_1C758DBC0);
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_17:
    v25 = v41;
    if (v22)
    {
      v26 = (*(v41 + 7) + 16 * v21);
      *v26 = v39;
      v26[1] = v40;
    }

    else
    {
      *(v41 + (v21 >> 6) + 8) |= 1 << v21;
      v27 = (v25[6] + 16 * v21);
      *v27 = v14;
      v27[1] = v15;
      v28 = (v25[7] + 16 * v21);
      *v28 = v39;
      v28[1] = v40;
      v29 = v25[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_28;
      }

      v25[2] = v31;
      sub_1C75504FC();
    }

    a2 = v17;
    *v17 = v25;

    v4 = v35;
    a1 = v36;
    v7 = v33;
    v6 = v34;
    v8 = &selRef_addingKeyAssetForObject_toAssets_options_;
LABEL_22:
    ++v5;
  }

  v23 = sub_1C6F78124(v14, v15);
  if ((v22 & 1) == (v24 & 1))
  {
    v21 = v23;
    goto LABEL_17;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void *sub_1C7246808(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a4;
  v7 = a2;
  v8 = result;
  v9 = 0;
  v10 = result[2];
  v11 = MEMORY[0x1E69E7CC0];
  for (i = 4; ; i += 10)
  {
    if (v10 == v9)
    {

LABEL_15:

      return v11;
    }

    if (v9 >= v8[2])
    {
      break;
    }

    memcpy(__dst, &v8[i], sizeof(__dst));
    memcpy(__src, &v8[i], 0x50uLL);
    sub_1C7251350(__dst, v18);
    v13 = sub_1C724CE64(__src, v7, a3, v5);
    if (v4)
    {
      memcpy(v18, __src, sizeof(v18));
      sub_1C72513AC(v18);

      goto LABEL_15;
    }

    if (v13)
    {
      memcpy(v18, __src, sizeof(v18));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716E9B0();
        v11 = v21;
      }

      v15 = *(v11 + 16);
      if (v15 >= *(v11 + 24) >> 1)
      {
        sub_1C716E9B0();
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      result = memcpy((v11 + 80 * v15 + 32), v18, 0x50uLL);
      v5 = a4;
      v7 = a2;
    }

    else
    {
      memcpy(v18, __src, sizeof(v18));
      result = sub_1C72513AC(v18);
    }

    ++v9;
  }

  __break(1u);
  return result;
}

void *sub_1C72469D8(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = result;
  v5 = 0;
  v6 = result[2];
  v7 = result + 4;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = result;
  while (1)
  {
    if (v5 == v6)
    {

      return v26;
    }

    if (v5 >= v4[2])
    {
      break;
    }

    result = memcpy(__dst, &v7[10 * v5++], 0x50uLL);
    if (*(v3 + 16))
    {
      v8 = __dst[1];
      v9 = __dst[2];
      sub_1C7251350(__dst, v30);
      v10 = sub_1C6F78124(v8, v9);
      if (v11)
      {
        v12 = (*(v3 + 56) + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
        v15 = *a3;
        if (*(*a3 + 16))
        {
          v16 = v6;
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75505AC();
          v17 = sub_1C7551FAC();
          v18 = ~(-1 << *(v15 + 32));
          while (1)
          {
            v19 = v17 & v18;
            if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {
              break;
            }

            v20 = (*(v15 + 48) + 16 * v19);
            if (*v20 != v14 || v20[1] != v13)
            {
              v22 = sub_1C7551DBC();
              v17 = v19 + 1;
              if ((v22 & 1) == 0)
              {
                continue;
              }
            }

            v6 = v16;
            v4 = v27;
            v3 = a2;
            goto LABEL_15;
          }

          v6 = v16;
          v4 = v27;
        }

        else
        {
          sub_1C75504FC();
        }

        sub_1C70F082C(v30, v14, v13);

        v23 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C716E9B0();
          v23 = v32;
        }

        v3 = a2;
        v25 = *(v23 + 16);
        if (v25 >= *(v23 + 24) >> 1)
        {
          sub_1C716E9B0();
          v23 = v32;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23;
        result = memcpy((v23 + 80 * v25 + 32), __dst, 0x50uLL);
      }

      else
      {
LABEL_15:
        result = sub_1C72513AC(__dst);
      }
    }
  }

  __break(1u);
  return result;
}

void __swiftcall FreeformStoryKeyAssetElector.Configuration.init(minimumNumberOfAssetsInChapterForKeyAssetGeneration:curationScoreRandomizationWeight:curationScoreQuantum:aestheticScoreRandomizationWeight:aestheticScoreQuantum:personScoreRandomizationWeight:personScoreQuantum:)(PhotosIntelligence::FreeformStoryKeyAssetElector::Configuration *__return_ptr retstr, Swift::Int minimumNumberOfAssetsInChapterForKeyAssetGeneration, Swift::Double curationScoreRandomizationWeight, Swift::Double curationScoreQuantum, Swift::Double aestheticScoreRandomizationWeight, Swift::Double aestheticScoreQuantum, Swift::Double personScoreRandomizationWeight, Swift::Double personScoreQuantum)
{
  retstr->minimumNumberOfAssetsInChapterForKeyAssetGeneration = minimumNumberOfAssetsInChapterForKeyAssetGeneration;
  retstr->curationScoreRandomizationWeight = curationScoreRandomizationWeight;
  retstr->curationScoreQuantum = curationScoreQuantum;
  retstr->aestheticScoreRandomizationWeight = aestheticScoreRandomizationWeight;
  retstr->aestheticScoreQuantum = aestheticScoreQuantum;
  retstr->personScoreRandomizationWeight = personScoreRandomizationWeight;
  retstr->personScoreQuantum = personScoreQuantum;
}

uint64_t FreeformStoryKeyAssetElector.__allocating_init(configuration:storyPhotoLibraryContext:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)(a1, a2);
  return v4;
}

void *sub_1C7246CB8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v180 = a1;
  v181 = a3;
  v178 = a6;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v184 = v10;
  v185 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v183 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v169 - v13;
  v15 = type metadata accessor for StoryGenerationSession(0);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v179 = v17 - v16;
  v188 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  v23 = v22 - v21;
  memcpy(v196, a2, 0x130uLL);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  v24 = v187;
  sub_1C754F2CC();
  if (v24)
  {
    OUTLINED_FUNCTION_70(a4, a4[3]);
    OUTLINED_FUNCTION_505();
    sub_1C754F1AC();
    (*(v19 + 8))(v23, v188);
    return (v184[1])(a5, v185);
  }

  v186 = 0;
  v187 = v14;
  v171 = v15;
  v182 = a5;
  v26 = a4[3];
  v173 = a4;
  OUTLINED_FUNCTION_70(a4, v26);
  sub_1C754F15C();
  v27 = v181;
  v28 = *(v180 + 16);
  v29 = (v180 + 32);
  v30 = v28;
  v31 = (v180 + 32);
  v180 = v19;
  v32 = v179;
  if (v28)
  {
    while (1)
    {
      memcpy(v191, v31, 0x68uLL);
      memcpy(v192, v31, 0x68uLL);
      if (!LOBYTE(v191[2]))
      {
        break;
      }

      v31 += 104;
      if (!--v30)
      {
        goto LABEL_6;
      }
    }

    sub_1C6FC061C(v191, v193);
    memcpy(v194, v192, sizeof(v194));
  }

  else
  {
LABEL_6:
    memset(v194, 0, sizeof(v194));
  }

  memcpy(v192, v196, sizeof(v192));
  v33 = sub_1C724A82C(v192, v195);
  memcpy(v192, v196, sizeof(v192));
  sub_1C72505C8(v27, v32);
  type metadata accessor for FreeformStoryKeyAssetElector.Context();
  v34 = swift_allocObject();
  sub_1C6FDE884(v196, v191);
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(v192, v32);
  v35 = v194[1];
  v36 = &unk_1EDD28000;
  v179 = v34;
  v174 = v23;
  if (v194[1])
  {
    v177 = v28;
    v37 = v194[0];
    v193[0] = v194[0];
    v193[1] = v194[1];
    memcpy(&v193[2], &v194[2], 0x58uLL);
    memcpy(v191, v194, 0x68uLL);
    sub_1C6FC061C(v191, v190);
    v38 = v187;
    sub_1C754F2BC();
    v39 = v186;
    sub_1C724AF58(v193, v33, v34, v195, v38, v40, v41, v42, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
    v186 = v39;
    if (v39)
    {
      OUTLINED_FUNCTION_362();
      sub_1C6FB5FC8(v43, v44, v45);

      __swift_destroy_boxed_opaque_existential_1(v195);
      OUTLINED_FUNCTION_362();
      sub_1C6FB5FC8(v46, v47, v48);
      OUTLINED_FUNCTION_70(v173, v173[3]);
      v49 = v174;
      sub_1C754F1AC();
      (*(v180 + 8))(v49, v188);
      return (v184[1])(v182, v185);
    }

    v50 = &unk_1C755E000;
    v51 = &qword_1C7569000;
    v175 = v37;
    v176 = v33;
    v83 = v189[0];
    if (v189[0])
    {
      v84 = v189[2];

      v85 = v83;
      sub_1C75504FC();
      v86 = sub_1C754FEEC();
      v87 = sub_1C75511BC();
      v88 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v88, v89))
      {
        v197 = v84;
        OUTLINED_FUNCTION_13_3();
        v90 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v184 = swift_slowAlloc();
        v193[0] = v184;
        v185 = v90;
        *v90 = 136315138;
        v187 = v85;
        v91 = sub_1C70CAC04(v85);
        if (!v92)
        {
          result = sub_1C7250680(v83);
          __break(1u);
          return result;
        }

        v93 = v91;
        v94 = v92;
        v84 = v197;
        sub_1C7250680(v83);
        v95 = sub_1C6F765A4(v93, v94, v193);

        v96 = v185;
        *(v185 + 1) = v95;
        _os_log_impl(&dword_1C6F5C000, v86, v87, "Key asset from key chapter: '%s'", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v184);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v85 = v187;
      }

      else
      {

        OUTLINED_FUNCTION_95_1();
        sub_1C7250680(v141);
      }

      v107 = v85;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);
      v117 = v84;
      sub_1C7250680(v83);
      LODWORD(v187) = 0;
      v63 = v188;
      v140 = v186;
      v23 = v174;
      goto LABEL_73;
    }

    sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);
    v23 = v174;
    v28 = v177;
    v36 = &unk_1EDD28000;
  }

  else
  {
    v50 = &unk_1C755E000;
    v51 = &qword_1C7569000;
    v176 = v33;
  }

  v177 = v36[327];
  v52 = sub_1C754FEEC();
  sub_1C75511BC();
  v53 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_96_0();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v55, v56, "No key asset from key chapter, trying other chapters in order");
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v58 = v194[1];
  if (!v194[1])
  {
    v59 = 0;
    v58 = 0xE000000000000000;
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_37:

    v63 = v188;
    v65 = v179;
LABEL_38:
    v97 = sub_1C754FEEC();
    sub_1C75511BC();
    v98 = OUTLINED_FUNCTION_72();
    v100 = os_log_type_enabled(v98, v99);
    v101 = v176;
    if (v100)
    {
      OUTLINED_FUNCTION_96_0();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v102, v103, "Couldn't find a key asset from any chapter, attempting to find a key asset from retrievedAssets or storytellingAssets");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v104 = sub_1C75504FC();
    v105 = sub_1C71CD85C(v104);
    *&v191[3] = 0;
    BYTE8(v191[3]) = 6;
    memset(&v191[4], 0, 40);
    strcpy(v191, "EligibleAssets");
    HIBYTE(v191[0]) = -18;
    *&v191[1] = 45;
    *(&v191[1] + 1) = 0xE100000000000000;
    v191[2] = v105;
    v106 = sub_1C71CD85C(v101);
    FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v106, v65, 1, v191);

    v107 = v193[0];
    v108 = v193[2];
    if (v193[0])
    {
      v109 = v193[0];
      sub_1C75504FC();
      v110 = sub_1C754FEEC();
      v111 = sub_1C75511BC();
      v112 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v112, v113))
      {
        OUTLINED_FUNCTION_96_0();
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1C6F5C000, v110, v111, "Found key asset from eligibleAssets.", v114, 2u);
        v63 = v188;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v115 = v109;
      sub_1C75504FC();
      OUTLINED_FUNCTION_95_1();
      sub_1C7250680(v116);
      LODWORD(v187) = 2;
      v117 = v108;
    }

    else
    {
      v117 = 0;
      LODWORD(v187) = 0;
    }

    v118 = *(v181 + *(v171 + 24));
    if (v118)
    {
      sub_1C716A8EC();
    }

    OUTLINED_FUNCTION_95_1();
    sub_1C7250680(v119);
    memcpy(v193, v191, sizeof(v193));
    v120 = sub_1C7250650(v193);
    if (v107)
    {
      v175 = 0;
      goto LABEL_58;
    }

    v121 = OUTLINED_FUNCTION_19_43(v120);
    v122 = sub_1C755119C();
    v123 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v123, v124))
    {
      OUTLINED_FUNCTION_96_0();
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_1C6F5C000, v121, v122, "Failed to elect a key asset, choosing from safe storytelling assets as last resort", v125, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C703FD7C();
    v190[5] = 0;
    v190[6] = 0;
    LOBYTE(v190[7]) = 6;
    memset(&v190[8], 0, 40);
    v190[0] = 0xD000000000000012;
    v190[1] = 0x80000001C75A6620;
    v190[2] = 45;
    v190[3] = 0xE100000000000000;
    v190[4] = v126;
    v127 = sub_1C75504FC();
    v128 = sub_1C71CD85C(v127);
    FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v128, v179, 1, v190);

    v107 = v189[0];
    v129 = v189[2];
    if (v189[0])
    {
      v183 = v189[0];
      sub_1C75504FC();
      v130 = sub_1C754FEEC();
      v131 = sub_1C75511BC();
      v132 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v132, v133))
      {
        OUTLINED_FUNCTION_96_0();
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_1C6F5C000, v130, v131, "Found key asset from storytellingAssets.", v134, 2u);
        v63 = v188;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FE0E14(0, v117, 0, 0, v187);

      v135 = v183;
      sub_1C75504FC();
      OUTLINED_FUNCTION_95_1();
      sub_1C7250680(v136);
      LODWORD(v187) = 2;
      v137 = 1;
      v117 = v129;
      v23 = v174;
      if (!v118)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v137 = 0;
      if (!v118)
      {
        goto LABEL_56;
      }
    }

    sub_1C716A8EC();
LABEL_56:
    OUTLINED_FUNCTION_95_1();
    sub_1C7250680(v138);
    memcpy(v189, v190, sizeof(v189));
    v139 = sub_1C7250650(v189);
    if (!v107)
    {
      v142 = v137;
      v143 = OUTLINED_FUNCTION_19_43(v139);
      sub_1C755119C();
      v144 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v144, v145))
      {
        OUTLINED_FUNCTION_96_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_32(&dword_1C6F5C000, v146, v147, "Failed to elect a key asset using storytelling assets last resort!");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        sub_1C6FE0E14(0, v117, v142, 0, v187);
        sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);
      }

      else
      {

        sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);
      }

      v164 = v180;
      v165 = v173;
      v166 = v178;
      v168 = v184;
      v167 = v185;
      __swift_destroy_boxed_opaque_existential_1(v195);
      *(v166 + 32) = 0;
      *v166 = 0u;
      *(v166 + 1) = 0u;
      OUTLINED_FUNCTION_70(v165, v165[3]);
      OUTLINED_FUNCTION_505();
      sub_1C754F1AC();
      (*(v164 + 8))(v23, v63);
      return (v168[1])(v182, v167);
    }

    v175 = v137;
LABEL_58:
    v35 = 0;
    v140 = v186;
    goto LABEL_73;
  }

  v59 = v194[0];
  sub_1C75504FC();
  if (!v28)
  {
    goto LABEL_37;
  }

LABEL_17:
  v187 = v59;
  v60 = v28 - 1;
  v61 = v50[346];
  v62 = *(v51 + 166);
  *&v57 = 136315138;
  v169 = v57;
  v63 = v188;
  v65 = v179;
  v64 = v180;
  v172 = v58;
  while (1)
  {
    memcpy(v191, v29, 0x68uLL);
    v35 = *(&v191[0] + 1);
    v66 = *&v191[0];
    v67 = *&v191[0] == v187 && *(&v191[0] + 1) == v58;
    if (v67 || (sub_1C7551DBC() & 1) != 0)
    {
      v68 = v61;
      if (!v60)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v69 = v63;
    v175 = v66;
    v68 = (v61 + v62) * 0.5;
    memcpy(v193, v191, sizeof(v193));
    sub_1C6FC061C(v191, v190);
    v70 = v183;
    sub_1C754F2BC();
    v71 = v186;
    sub_1C724AF58(v193, v176, v65, v195, v70, v72, v73, v74, v169, *(&v169 + 1), v170, v171, v172, v173, v174, v175, v176, v177, v178, v179);
    v186 = v71;
    if (v71)
    {
      __swift_destroy_boxed_opaque_existential_1(v195);

      sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);

      sub_1C70552E0(v191);
      OUTLINED_FUNCTION_70(v173, v173[3]);
      v148 = v174;
      sub_1C754F1AC();
      (*(v64 + 8))(v148, v69);
      return (v184[1])(v182, v185);
    }

    v75 = v191[1];
    v76 = v189[0];
    if (v189[0])
    {
      break;
    }

    v77 = sub_1C6FC061C(v191, v193);
    v78 = OUTLINED_FUNCTION_19_43(v77);
    v79 = sub_1C75511BC();
    sub_1C70552E0(v191);
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_13_3();
      v80 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v81 = swift_slowAlloc();
      v193[0] = v81;
      *v80 = v169;
      sub_1C75504FC();
      v82 = sub_1C6F765A4(v75, *(&v75 + 1), v193);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_1C6F5C000, v78, v79, "No key asset from chapter '%s'", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70552E0(v191);
    v63 = v188;
    v65 = v179;
    v64 = v180;
    v58 = v172;
    if (!v60)
    {
LABEL_35:

      v23 = v174;
      goto LABEL_38;
    }

LABEL_30:
    --v60;
    v29 += 104;
    v61 = v68;
  }

  v185 = *&v191[1];
  v149 = v189[1];
  v150 = v189[2];

  sub_1C6FC061C(v191, v193);
  OUTLINED_FUNCTION_95_1();
  v152 = sub_1C72512CC(v151);
  v153 = OUTLINED_FUNCTION_19_43(v152);
  v154 = sub_1C75511BC();
  sub_1C70552E0(v191);
  v187 = v149;
  OUTLINED_FUNCTION_95_1();
  sub_1C7250680(v155);
  if (os_log_type_enabled(v153, v154))
  {
    OUTLINED_FUNCTION_11_3();
    v156 = swift_slowAlloc();
    OUTLINED_FUNCTION_40_25();
    v193[0] = swift_slowAlloc();
    *v156 = 136315394;
    sub_1C75504FC();
    v157 = sub_1C6F765A4(v185, *(&v75 + 1), v193);
    v197 = v150;
    v158 = v157;

    *(v156 + 4) = v158;
    *(v156 + 12) = 2080;
    v159 = sub_1C70CAC04(v76);
    if (v160)
    {
      v161 = v160;
    }

    else
    {
      v159 = 1701736302;
      v161 = 0xE400000000000000;
    }

    v162 = sub_1C6F765A4(v159, v161, v193);
    v150 = v197;

    *(v156 + 14) = v162;
    _os_log_impl(&dword_1C6F5C000, v153, v154, "Key asset from chapter '%s': '%s'", v156, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v140 = v186;
  v23 = v174;
  v107 = v76;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70552E0(v191);
  v117 = v150;
  sub_1C7250680(v76);

  LODWORD(v187) = 1;
  v63 = v188;
LABEL_73:
  sub_1C754F2EC();
  if (v140)
  {
    sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);

    sub_1C6FE0E78(v175, v35, v187);
    __swift_destroy_boxed_opaque_existential_1(v195);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v195);
    sub_1C6FB5FC8(v194, &qword_1EC217EF8, &qword_1C756FD40);

    v163 = v178;
    *v178 = v107;
    v163[1] = v117;
    v163[2] = v175;
    v163[3] = v35;
    *(v163 + 32) = v187;
  }

  OUTLINED_FUNCTION_70(v173, v173[3]);
  OUTLINED_FUNCTION_505();
  sub_1C754F1AC();
  return (*(v180 + 8))(v23, v63);
}

uint64_t FreeformStoryKeyAssetElector.Context.__allocating_init(from:storySession:)(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_31();
  v4 = swift_allocObject();
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(a1, a2);
  return v4;
}

void FreeformStoryKeyAssetElector.Context.init(from:storySession:)(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x130uLL);
  *(v2 + 56) = 0;
  *(v2 + 64) = MEMORY[0x1E69E7CC8];
  v4 = type metadata accessor for StoryGenerationSession(0);
  v5 = *(a2 + *(v4 + 20));
  *(v2 + 16) = v5;
  v69 = a2;
  v68 = v2;
  *(v2 + 24) = *(a2 + *(v4 + 24));
  v6 = __dst[27];
  v7 = __dst[28];
  v71 = __dst[35];
  v8 = *(__dst[27] + 16);
  v9 = v5;

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v10 = sub_1C75504FC();
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v19 = 72 * v17 + 32;
  while (v8 != v17)
  {
    if (v17 >= *(v6 + 16))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v10 = memcpy(__srca, (v6 + v19), 0x41uLL);
    if ((__srca[3] & 1) == 0 && !__srca[2])
    {
      sub_1C7025F3C(__srca, v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_21_40();
        sub_1C716D97C();
        v18 = v74;
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_20_42(v21);
        sub_1C716D97C();
        v18 = v74;
      }

      ++v17;
      v18[2] = v22 + 1;
      v10 = memcpy(&v18[9 * v22 + 4], __srca, 0x41uLL);
      goto LABEL_2;
    }

    v19 += 72;
    ++v17;
  }

  v23 = v18[2];
  v70 = v7;
  if (v23)
  {
    OUTLINED_FUNCTION_35_17(v10, v11, v12, v13, v14, v15, v16);
    v24 = __srca[0];
    v25 = v18 + 9;
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      __srca[0] = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      sub_1C75504FC();
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v30, v31, v32, v33);
        v24 = __srca[0];
      }

      *(v24 + 16) = v29 + 1;
      v34 = v24 + 16 * v29;
      *(v34 + 32) = v26;
      *(v34 + 40) = v27;
      v25 += 9;
      --v23;
    }

    while (v23);

    v7 = v70;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v42 = 0;
  v43 = *(v7 + 16);
  v44 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v45 = 72 * v42 + 32;
  while (v43 != v42)
  {
    if (v42 >= *(v7 + 16))
    {
      goto LABEL_41;
    }

    v35 = memcpy(__srca, (v7 + v45), 0x42uLL);
    if ((__srca[3] & 1) == 0 && !__srca[2])
    {
      sub_1C7025FF8(__srca, v72);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v44;
      if ((v46 & 1) == 0)
      {
        OUTLINED_FUNCTION_21_40();
        sub_1C716D940();
        v44 = v74;
      }

      v48 = v44[2];
      v47 = v44[3];
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_20_42(v47);
        sub_1C716D940();
        v44 = v74;
      }

      ++v42;
      v44[2] = v48 + 1;
      v35 = memcpy(&v44[9 * v48 + 4], __srca, 0x42uLL);
      goto LABEL_21;
    }

    v45 += 72;
    ++v42;
  }

  v49 = v44[2];
  if (v49)
  {
    OUTLINED_FUNCTION_35_17(v35, v36, v37, v38, v39, v40, v41);
    v50 = __srca[0];
    v51 = v44 + 9;
    do
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      __srca[0] = v50;
      v55 = *(v50 + 16);
      v54 = *(v50 + 24);
      sub_1C75504FC();
      if (v55 >= v54 >> 1)
      {
        sub_1C6F7ED9C(v54 > 1, v55 + 1, 1, v56, v57, v58, v59);
        v50 = __srca[0];
      }

      *(v50 + 16) = v55 + 1;
      v60 = v50 + 16 * v55;
      *(v60 + 32) = v53;
      *(v60 + 40) = v52;
      v51 += 9;
      --v49;
    }

    while (v49);

    v61 = v68;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
    v61 = v68;
  }

  __srca[0] = v24;
  sub_1C6FD2568(v50);
  sub_1C706D154();
  v63 = v62;
  sub_1C724E958(v69);
  v64 = __dst[13];
  v65 = __dst[14];
  v66 = BYTE1(__dst[14]);
  *(v61 + 32) = v63;
  *(v61 + 40) = v64;
  *(v61 + 48) = v65;
  *(v61 + 49) = v66;
  sub_1C75504FC();
  sub_1C6FE0DC0(__dst);
  v67 = *(v71 + 16);

  *(v61 + 50) = v67 != 0;
}

uint64_t FreeformStoryKeyAssetElector.Context.__allocating_init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = a5;
  OUTLINED_FUNCTION_26_31();
  v10 = swift_allocObject();
  FreeformStoryKeyAssetElector.Context.init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t FreeformStoryKeyAssetElector.Context.init(curationContext:diagnosticContext:queryCharacterUUIDs:sensitiveFlags:isTrip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 9);
  *(v5 + 56) = 0;
  *(v5 + 64) = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 49) = v8;
  *(v5 + 50) = a5;
  return v5;
}

uint64_t sub_1C7248430(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((v3 + 56));
  sub_1C7248498(&v8, a1, (v3 + 64), a2, a3);
  os_unfair_lock_unlock((v3 + 56));
  return v8;
}

uint64_t *sub_1C7248498@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t *a3@<X0>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = &selRef_mergedPersonIdentifiers;
  result = sub_1C6FE1434([a2 version], *a3);
  if (result)
  {
    v11 = result;
LABEL_29:
    *a1 = v11;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C755BAB0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  sub_1C75504FC();
  v13 = sub_1C7550B3C();

  v14 = [a2 confidenceThresholdBySceneIdentifierForSceneNames:v13 withThresholdType:1];

  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  sub_1C7080178(&qword_1EDD0CD00, &qword_1EDD108E0, 0x1E696AD98);
  v15 = sub_1C75504AC();

  v45 = a1;
  v44 = a3;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = sub_1C7551A7C() | 0x8000000000000000;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v17 = ~v20;
    v16 = v15 + 64;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v15 + 64);
    v19 = v15;
  }

  sub_1C75504FC();
  v23 = 0;
  v24 = (v17 + 64) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  v47 = v19;
  v48 = v16;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v25 = v23;
  v26 = v18;
  v27 = v23;
  if (v18)
  {
LABEL_14:
    v49 = (v26 - 1) & v26;
    v28 = (v27 << 9) | (8 * __clz(__rbit64(v26)));
    v29 = *(*(v19 + 56) + v28);
    v30 = *(*(v19 + 48) + v28);
    v31 = v29;
    if (!v30)
    {
LABEL_28:
      sub_1C6F61E88(v19);

      [a2 v9[439]];
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v51 = *v44;
      result = sub_1C6FC93A0();
      *v44 = v51;
      a1 = v45;
      goto LABEL_29;
    }

    while (1)
    {
      v32 = [v30 unsignedIntegerValue];
      [v31 doubleValue];
      v34 = v33;
      swift_isUniquelyReferenced_nonNull_native();
      v50 = v11;
      v35 = sub_1C6FCABD0(v32);
      if (__OFADD__(v11[2], (v36 & 1) == 0))
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B80, &unk_1C757C250);
      if (sub_1C7551A2C())
      {
        v39 = sub_1C6FCABD0(v32);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_33;
        }

        v37 = v39;
      }

      if (v38)
      {
        *(v11[7] + 8 * v37) = v34;
      }

      else
      {
        v11[(v37 >> 6) + 8] |= 1 << v37;
        *(v11[6] + 8 * v37) = v32;
        *(v11[7] + 8 * v37) = v34;

        v41 = v11[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_32;
        }

        v11[2] = v43;
      }

      v23 = v27;
      v16 = v48;
      v18 = v49;
      v9 = &selRef_mergedPersonIdentifiers;
      v24 = (v17 + 64) >> 6;
      v19 = v47;
      if ((v47 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      if (sub_1C7551A9C())
      {
        swift_dynamicCast();
        v30 = v50;
        swift_dynamicCast();
        v31 = v50;
        v27 = v23;
        v49 = v18;
        if (v50)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        goto LABEL_28;
      }

      v26 = *(v16 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t FreeformStoryKeyAssetElector.Context.deinit()
{

  sub_1C6FB5FC8(v0 + 64, &qword_1EC219AA8, &qword_1C757B6E0);
  return v0;
}

uint64_t FreeformStoryKeyAssetElector.Context.__deallocating_deinit()
{
  FreeformStoryKeyAssetElector.Context.deinit();
  OUTLINED_FUNCTION_26_31();

  return swift_deallocClassInstance();
}

unint64_t FreeformStoryKeyAssetElector.AssessedResult.Assessment.description.getter()
{
  result = 0x74636566726550;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x706F724320776F4CLL;
      break;
    case 5:
      result = 0x736552207473614CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7248A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74636566726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A6520 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F73726550776F6CLL && a2 == 0xEE0065726F63536ELL;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696E6F6349776F6CLL && a2 == 0xEE0065726F635363;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x53706F7243776F6CLL && a2 == 0xEC00000065726F63;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F7365527473616CLL && a2 == 0xEA00000000007472)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

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

unint64_t sub_1C7248C94(char a1)
{
  result = 0x74636566726570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x6F73726550776F6CLL;
      break;
    case 3:
      result = 0x696E6F6349776F6CLL;
      break;
    case 4:
      result = 0x53706F7243776F6CLL;
      break;
    case 5:
      result = 0x6F7365527473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7248D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7248A88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7248DA4(uint64_t a1)
{
  v2 = sub_1C724E9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248DE0(uint64_t a1)
{
  v2 = sub_1C724E9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248E1C(uint64_t a1)
{
  v2 = sub_1C724EA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248E58(uint64_t a1)
{
  v2 = sub_1C724EA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248E94(uint64_t a1)
{
  v2 = sub_1C724EA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248ED0(uint64_t a1)
{
  v2 = sub_1C724EA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248F0C(uint64_t a1)
{
  v2 = sub_1C724EAB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248F48(uint64_t a1)
{
  v2 = sub_1C724EAB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248F84(uint64_t a1)
{
  v2 = sub_1C724EB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7248FC0(uint64_t a1)
{
  v2 = sub_1C724EB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7248FFC(uint64_t a1)
{
  v2 = sub_1C724EB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7249038(uint64_t a1)
{
  v2 = sub_1C724EB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7249074(uint64_t a1)
{
  v2 = sub_1C724EBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72490B0(uint64_t a1)
{
  v2 = sub_1C724EBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryKeyAssetElector.AssessedResult.Assessment.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AB0, &qword_1C757B6E8);
  OUTLINED_FUNCTION_3_0();
  v79 = v32;
  v80 = v31;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v78 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AB8, &qword_1C757B6F0);
  OUTLINED_FUNCTION_3_0();
  v76 = v36;
  v77 = v35;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_36();
  v75 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AC0, &qword_1C757B6F8);
  OUTLINED_FUNCTION_3_0();
  v73 = v40;
  v74 = v39;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_36();
  v72 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AC8, &qword_1C757B700);
  OUTLINED_FUNCTION_3_0();
  v70 = v44;
  v71 = v43;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_36();
  v69 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AD0, &qword_1C757B708);
  OUTLINED_FUNCTION_3_0();
  v67 = v48;
  v68 = v47;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v65 - v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AD8, &qword_1C757B710);
  OUTLINED_FUNCTION_3_0();
  v65 = v53;
  v66 = v52;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v65 - v55;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219AE0, &qword_1C757B718);
  OUTLINED_FUNCTION_3_0();
  v58 = v57;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v65 - v60;
  v62 = *v26;
  OUTLINED_FUNCTION_70(v30, v30[3]);
  sub_1C724E9B4();
  sub_1C755200C();
  switch(v62)
  {
    case 1:
      a12 = 1;
      sub_1C724EB58();
      v62 = v81;
      sub_1C7551C6C();
      (*(v67 + 8))(v51, v68);
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_1C724EB04();
      v56 = v69;
      OUTLINED_FUNCTION_9_0(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowPersonScoreCodingKeys, &a13);
      v64 = v70;
      v63 = v71;
      goto LABEL_8;
    case 3:
      a14 = 3;
      sub_1C724EAB0();
      v56 = v72;
      OUTLINED_FUNCTION_9_0(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowIconicScoreCodingKeys, &a14);
      v64 = v73;
      v63 = v74;
      goto LABEL_8;
    case 4:
      a15 = 4;
      sub_1C724EA5C();
      v56 = v75;
      OUTLINED_FUNCTION_9_0(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowCropScoreCodingKeys, &a15);
      v64 = v76;
      v63 = v77;
      goto LABEL_8;
    case 5:
      a16 = 5;
      sub_1C724EA08();
      v56 = v78;
      OUTLINED_FUNCTION_9_0(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LastResortCodingKeys, &a16);
      v64 = v79;
      v63 = v80;
      goto LABEL_8;
    default:
      a11 = 0;
      sub_1C724EBAC();
      OUTLINED_FUNCTION_9_0(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.PerfectCodingKeys, &a11);
      v64 = v65;
      v63 = v66;
LABEL_8:
      (*(v64 + 8))(v56, v63);
LABEL_9:
      (*(v58 + 8))(v61, v62);
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t FreeformStoryKeyAssetElector.AssessedResult.Assessment.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void FreeformStoryKeyAssetElector.AssessedResult.Assessment.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_124();
  a25 = v27;
  a26 = v28;
  v111 = v26;
  v30 = v29;
  v107 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B08, &qword_1C757B720);
  OUTLINED_FUNCTION_3_0();
  v103 = v32;
  v104 = v33;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_36();
  v105 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B10, &qword_1C757B728);
  OUTLINED_FUNCTION_3_0();
  v101 = v36;
  v102 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_36();
  v110 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B18, &qword_1C757B730);
  OUTLINED_FUNCTION_3_0();
  v99 = v41;
  v100 = v40;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_36();
  v106 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B20, &qword_1C757B738);
  OUTLINED_FUNCTION_3_0();
  v97 = v45;
  v98 = v44;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_36();
  v109 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B28, &qword_1C757B740);
  OUTLINED_FUNCTION_3_0();
  v95 = v49;
  v96 = v48;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v89 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B30, &qword_1C757B748);
  OUTLINED_FUNCTION_3_0();
  v94 = v54;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v89 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B38, &unk_1C757B750);
  OUTLINED_FUNCTION_3_0();
  v108 = v59;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v89 - v61;
  OUTLINED_FUNCTION_70(v30, v30[3]);
  sub_1C724E9B4();
  v63 = v111;
  sub_1C7551FFC();
  v111 = v63;
  if (v63)
  {
LABEL_12:
    v85 = v30;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_125();
    return;
  }

  v90 = v57;
  v89 = v53;
  v91 = v52;
  v92 = v30;
  v64 = v109;
  v65 = v110;
  v66 = v108;
  v93 = v62;
  sub_1C7551C5C();
  sub_1C6FD80E0();
  v70 = v58;
  if (v68 == v69 >> 1)
  {
    v71 = v66;
LABEL_10:
    v80 = sub_1C75518EC();
    v81 = swift_allocError();
    v83 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v83 = &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment;
    v84 = v93;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v80 - 8) + 104))(v83, *MEMORY[0x1E69E6AF8], v80);
    v111 = v81;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v84, v70);
LABEL_11:
    v30 = v92;
    goto LABEL_12;
  }

  if (v68 < (v69 >> 1))
  {
    v72 = *(v67 + v68);
    sub_1C6FD80C8();
    v74 = v73;
    v76 = v75;
    swift_unknownObjectRelease();
    if (v74 == v76 >> 1)
    {
      v77 = v107;
      v78 = v93;
      switch(v72)
      {
        case 1:
          a12 = 1;
          sub_1C724EB58();
          v64 = v91;
          OUTLINED_FUNCTION_16_28(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.NotEnoughCompetitionCodingKeys, &a12);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v95;
          v87 = v96;
          goto LABEL_25;
        case 2:
          a13 = 2;
          sub_1C724EB04();
          OUTLINED_FUNCTION_16_28(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowPersonScoreCodingKeys, &a13);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v97;
          v87 = v98;
          goto LABEL_25;
        case 3:
          a14 = 3;
          sub_1C724EAB0();
          v64 = v106;
          OUTLINED_FUNCTION_16_28(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowIconicScoreCodingKeys, &a14);
          v111 = 0;
          swift_unknownObjectRelease();
          v88 = v99;
          v87 = v100;
          goto LABEL_25;
        case 4:
          a15 = 4;
          sub_1C724EA5C();
          v86 = v111;
          sub_1C7551B4C();
          v111 = v86;
          if (v86)
          {
            (*(v66 + 8))(v78, v58);
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v102 + 8))(v65, v101);
LABEL_26:
          (*(v66 + 8))(v78, v58);
          *v77 = v72;
          v85 = v92;
          break;
        case 5:
          a16 = 5;
          sub_1C724EA08();
          v64 = v105;
          OUTLINED_FUNCTION_16_28(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LastResortCodingKeys, &a16);
          v111 = 0;
          swift_unknownObjectRelease();
          v87 = v103;
          v88 = v104;
LABEL_25:
          (*(v88 + 8))(v64, v87);
          goto LABEL_26;
        default:
          a11 = 0;
          sub_1C724EBAC();
          v79 = v90;
          OUTLINED_FUNCTION_16_28(&type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.PerfectCodingKeys, &a11);
          v111 = 0;
          swift_unknownObjectRelease();
          (*(v94 + 8))(v79, v89);
          goto LABEL_26;
      }

      goto LABEL_13;
    }

    v71 = v66;
    v70 = v58;
    goto LABEL_10;
  }

  __break(1u);
}

double FreeformStoryKeyAssetElector.Diagnostics.init(chapterTitle:similarityScoreRange:assetUUIDs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 56) = 6;
  result = 0.0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1C7249DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472657470616863 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001C75A6540 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4955557465737361 && a2 == 0xEA00000000007344;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746573734179656BLL && a2 == 0xEC00000044495555;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C75A6560 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C75A6580 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x80000001C75A3400 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001C75A65A0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x80000001C75A65C0 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD00000000000001ELL && 0x80000001C75A65E0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C7551DBC();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C724A0FC(char a1)
{
  result = 0x5472657470616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x4955557465737361;
      break;
    case 3:
      result = 0x746573734179656BLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C724A264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7249DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C724A28C(uint64_t a1)
{
  v2 = sub_1C7250448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C724A2C8(uint64_t a1)
{
  v2 = sub_1C7250448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryKeyAssetElector.Diagnostics.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  v46 = v21;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B40, &unk_1C757B760);
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v39 - v27;
  v29 = *(v20 + 16);
  v44 = *(v20 + 24);
  v45 = v29;
  v30 = *(v20 + 32);
  v42 = *(v20 + 40);
  v43 = v30;
  v41 = *(v20 + 48);
  v40 = *(v20 + 56);
  v31 = *(v20 + 64);
  v39[2] = *(v20 + 72);
  v39[3] = v31;
  v32 = *(v20 + 80);
  v39[0] = *(v20 + 88);
  v39[1] = v32;
  v33 = *(v20 + 96);
  v34 = v23[3];
  v35 = v23;
  v37 = v36;
  OUTLINED_FUNCTION_70(v35, v34);
  sub_1C7250448();
  sub_1C755200C();
  v38 = v46;
  sub_1C7551CCC();
  if (!v38)
  {
    v46 = v33;
    sub_1C7551CCC();
    v47 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C6FC18BC();
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551D2C();
    sub_1C7551C7C();
    v47 = 4;
    sub_1C725049C();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v47 = 5;
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551CBC();
    v47 = 6;
    OUTLINED_FUNCTION_5_49();
    OUTLINED_FUNCTION_25_27();
    sub_1C7551CBC();
    v47 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B48, &qword_1C757B770);
    sub_1C72504F0();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v47 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C6FB5CAC();
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
    v47 = 9;
    OUTLINED_FUNCTION_5_49();
    sub_1C7551CBC();
  }

  (*(v25 + 8))(v28, v37);
  OUTLINED_FUNCTION_125();
}

__n128 FreeformStoryKeyAssetElector.Result.init(keyAsset:alternateKeyAssets:keyAssetSource:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1C724A698()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28A20);
  __swift_project_value_buffer(v0, qword_1EDD28A20);
  return sub_1C754FEFC();
}

uint64_t FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v15 = *(a1 + 3);
  v16 = *(a1 + 1);
  v4 = a1[5];
  v5 = a1[6];
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = a2[2];
  v9 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  if (qword_1EDD08988 != -1)
  {
    OUTLINED_FUNCTION_9_56(&qword_1EDD08988);
  }

  v10 = sub_1C754FF1C();
  v11 = __swift_project_value_buffer(v10, qword_1EDD28A20);
  (*(*(v10 - 8) + 16))(v2 + v9, v11, v10);
  v12 = v2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration;
  *v12 = v3;
  *(v12 + 24) = v15;
  *(v12 + 8) = v16;
  *(v12 + 40) = v4;
  *(v12 + 48) = v5;
  v13 = v2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext;
  *v13 = v6;
  *(v13 + 8) = v7;
  *(v13 + 16) = v8;
  return v2;
}

unint64_t sub_1C724A82C(void *a1, void *a2)
{
  v4 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = a1[21];
  v105 = a1[24];
  v12 = a1[26];
  v13 = a2[3];
  v109 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v108 = v10;
  sub_1C754F1CC();
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v15 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v15);
  *(&v102 - 2) = v16;
  sub_1C75504FC();
  v17 = 0;
  v18 = sub_1C706CC1C(sub_1C7055510, (&v102 - 4), v12);
  v19 = *(v18 + 2);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v106 = v6;
    v107 = v11;
    v104 = v4;
    v112[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v19, 0);
    v21 = v112[0];
    v17 = v18;
    v22 = (v18 + 136);
    v23 = v19;
    do
    {
      v25 = *v22;
      v22 += 15;
      v24 = v25;
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = v20;
      }

      v112[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      sub_1C75504FC();
      if (v28 >= v27 >> 1)
      {
        sub_1C716D5B0(v27 > 1, v28 + 1, 1);
        v21 = v112[0];
      }

      *(v21 + 16) = v28 + 1;
      *(v21 + 8 * v28 + 32) = v26;
      --v23;
    }

    while (v23);
    v4 = v104;
    v6 = v106;
    v11 = v107;
    v18 = v17;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1C7027A88(v21);

  if (!v29)
  {
    v56 = *(v11 + 16);

    if (v56)
    {
      v57 = swift_bridgeObjectRetain_n();
      v58 = OUTLINED_FUNCTION_45_21(v57);
      v59 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v59))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v11 = v105;
      v80 = swift_bridgeObjectRetain_n();
      v58 = OUTLINED_FUNCTION_45_21(v80);
      v81 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_7_0(v81))
      {
LABEL_38:
        OUTLINED_FUNCTION_13_3();
        v82 = swift_slowAlloc();
        OUTLINED_FUNCTION_43_22(v82, 3.852e-34);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v83, v84, v85, v86, v87, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  v106 = v18;
  v30 = sub_1C754FEEC();
  v31 = sub_1C75511BC();
  v32 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_96_0();
    v34 = swift_slowAlloc();
    v17 = v11;
    *v34 = 0;
    _os_log_impl(&dword_1C6F5C000, v30, v31, "Explicit location(s) from the prompt, restricting eligible assets to these locations", v34, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (*(v11 + 16))
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v11 = v35;

    v36 = sub_1C75504FC();
    v37 = OUTLINED_FUNCTION_45_21(v36);
    v38 = sub_1C75511BC();

    if (os_log_type_enabled(v37, v38))
    {
      LODWORD(v110) = v38;
      OUTLINED_FUNCTION_11_3();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v104 = swift_slowAlloc();
      v112[0] = v104;
      v40 = OUTLINED_FUNCTION_44_20(3.8521e-34);
      v105 = v39;
      *(v39 + 12) = 2080;
      if (v19)
      {
        OUTLINED_FUNCTION_17_47(v40, v41, v42, v43, v44, v45, v46);
        v47 = v111;
        do
        {
          v48 = OUTLINED_FUNCTION_32_23();
          if (v11 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_33_23(v48, v49, v50, v51, v52, v53, v54);
            v47 = v111;
          }

          OUTLINED_FUNCTION_28_24();
        }

        while (!v55);

        v6 = v17;
        v11 = v107;
        v37 = v103;
      }

      else
      {

        v47 = MEMORY[0x1E69E7CC0];
      }

      v111 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v88 = sub_1C703328C();
      v89 = OUTLINED_FUNCTION_37_23(v88);
      v91 = v90;

      v92 = sub_1C6F765A4(v89, v91, v112);

      v93 = v105;
      *(v105 + 14) = v92;
      v94 = "Trying to find a key asset in %ld retrieved assets restricted to %s";
LABEL_44:
      _os_log_impl(&dword_1C6F5C000, v37, v110, v94, v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v104);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      goto LABEL_45;
    }
  }

  else
  {
    v60 = v105;
    sub_1C75504FC();
    sub_1C7069A44();
    v11 = v61;

    sub_1C75504FC();

    v37 = OUTLINED_FUNCTION_45_21(v62);
    v63 = sub_1C75511BC();

    if (os_log_type_enabled(v37, v63))
    {
      LODWORD(v110) = v63;
      OUTLINED_FUNCTION_11_3();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v104 = swift_slowAlloc();
      v112[0] = v104;
      v65 = OUTLINED_FUNCTION_44_20(3.8521e-34);
      v105 = v64;
      *(v64 + 12) = 2080;
      if (v19)
      {
        OUTLINED_FUNCTION_17_47(v65, v66, v67, v68, v69, v70, v71);
        v72 = v111;
        do
        {
          v73 = OUTLINED_FUNCTION_32_23();
          if (v11 >= v60 >> 1)
          {
            OUTLINED_FUNCTION_33_23(v73, v74, v75, v76, v77, v78, v79);
            v72 = v111;
          }

          OUTLINED_FUNCTION_28_24();
        }

        while (!v55);

        v6 = v17;
        v11 = v107;
        v37 = v103;
      }

      else
      {

        v72 = MEMORY[0x1E69E7CC0];
      }

      v111 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v95 = sub_1C703328C();
      v96 = OUTLINED_FUNCTION_37_23(v95);
      v98 = v97;

      v99 = sub_1C6F765A4(v96, v98, v112);

      v93 = v105;
      *(v105 + 14) = v99;
      v94 = "No retrieved assets, trying to find a key asset in %ld storytelling assets restricted to %s";
      goto LABEL_44;
    }
  }

LABEL_45:
  __swift_project_boxed_opaque_existential_1(v109, v109[3]);
  v100 = v108;
  sub_1C754F1AC();
  (*(v6 + 1))(v100, v4);
  return v11;
}

void sub_1C724AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v49 = v27;
  v48 = v28;
  v30 = v29;
  v52 = v31;
  v32 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_0();
  v38 = v37 - v36;
  v47 = *(v30 + 2);
  v46 = *(v30 + 3);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v20)
  {
    OUTLINED_FUNCTION_70(v26, v26[3]);
    OUTLINED_FUNCTION_16_38();
    sub_1C754F1AC();
    (*(v34 + 8))(v38, v32);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v39 + 8))(v24);
  }

  else
  {
    v45 = v34;
    v40 = *(v49 + 24);
    v41 = MEMORY[0x1E69E7CC0];
    if (!v40)
    {
      v41 = 0;
    }

    a10 = v41;
    v53 = *v30;
    v54 = v47;
    v55 = v46;
    memcpy(v56, v30 + 2, sizeof(v56));
    sub_1C724B37C(&v53, v48, v49, &a10, &v57);
    v42 = v57;
    v50 = v58;
    v51 = v59;
    *&v53 = v47;
    *(&v53 + 1) = v46;
    v57 = 32;
    v58 = 0xE100000000000000;
    sub_1C6FB5E8C();
    v43 = sub_1C755155C();
    if (v40)
    {
      *&v53 = 0x746573734179654BLL;
      *(&v53 + 1) = 0xE90000000000002DLL;
      MEMORY[0x1CCA5CD70](v43, v44);

      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
      sub_1C7161E8C(v53, *(&v53 + 1), v40, &a10);
    }

    sub_1C754F2EC();
    *v52 = v42;
    v52[1] = v50;
    v52[2] = v51;

    OUTLINED_FUNCTION_70(v26, v26[3]);
    OUTLINED_FUNCTION_16_38();
    sub_1C754F1AC();
    (*(v45 + 8))(v38, v32);
  }

  OUTLINED_FUNCTION_125();
}

void FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *v4;
  v8 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_362();
  sub_1C724BE20(v9, v10, v11, a4, a3, v7, v12);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1C724B37C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  v63 = a1[3];
  v64 = a1[2];
  v12 = a1[5];
  v61 = *(*(a3 + 32) + 16);
  v68 = v12;
  v69 = *(v12 + 16);
  v13 = (v12 + 64);
  v14 = MEMORY[0x1E69E7CC8];
  while (v69 != v10)
  {
    if (v10 >= *(v68 + 16))
    {
      __break(1u);
LABEL_31:
      v40 = 0xEE0065726F635320;
      v41 = 0x706F724320776F4CLL;
      goto LABEL_36;
    }

    ++v10;
    v5 = *(v13 - 1);
    v7 = *v13;
    v6 = v14;
    v15 = *(v13 - 2);
    sub_1C75504FC();
    sub_1C75504FC();
    v16 = v15;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v17 = sub_1C724FD38(v5, a2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = v6;
    sub_1C72501A4(v17, sub_1C725130C, 0, isUniquelyReferenced_nonNull_native, __dst);

    v14 = __dst[0];
    v13 += 5;
  }

  if (v14[2].isa < *(v67 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration))
  {

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return result;
  }

  v20 = &unk_1F469E2C8;
  if (v61)
  {
    v20 = &unk_1F469E288;
  }

  v21 = *v20;
  if (!v21)
  {
    goto LABEL_21;
  }

  if (v61)
  {
    v22 = &unk_1F469E298;
  }

  else
  {
    v22 = &unk_1F469E2D8;
  }

  v23 = v21 & ~(v21 >> 63);
  v24 = v21 - 1;
  v25 = 100000.0;
  if (!v23)
  {
LABEL_20:
    __break(1u);
LABEL_21:

LABEL_22:

LABEL_23:
    v7 = 0;
    v31 = 0;
    v5 = 0;
LABEL_24:
    *a5 = v7;
    a5[1] = v31;
    a5[2] = v5;
    return result;
  }

  while (1)
  {
    v8 = *v22;
    if (*v22 > v25)
    {
      __break(1u);
      goto LABEL_57;
    }

    sub_1C724BAA4(v71, __src, v14, v64, v63, *v22, v25, a3);
    v7 = v71[0];
    v70 = v71[1];
    v26 = v71[2];
    memcpy(__dst, __src, 0x68uLL);
    if (*a4)
    {
      sub_1C716A0C0(__dst, __src);
      sub_1C6FB089C();
      v27 = v14;
      v28 = *(*a4 + 16);
      sub_1C6FB1128();
      v29 = *a4;
      *(v29 + 16) = v28 + 1;
      v30 = v29 + 104 * v28;
      v14 = v27;
      memcpy((v30 + 32), __dst, 0x68uLL);
      *a4 = v29;
    }

    if (v7)
    {
      break;
    }

    sub_1C7250650(__dst);
    if (!v24)
    {
      goto LABEL_21;
    }

    --v23;
    --v24;
    ++v22;
    v25 = v8;
    if (!v23)
    {
      goto LABEL_20;
    }
  }

  v68 = v14;
  LOBYTE(v13) = v70;
  v5 = v26;
  sub_1C72512CC(v7);
  v6 = v7;
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  LOBYTE(v10) = sub_1C75511BC();
  v14 = v32;
  if (!os_log_type_enabled(v32, v10))
  {

    v42 = OUTLINED_FUNCTION_505();
    sub_1C7250680(v42);
    v43 = OUTLINED_FUNCTION_505();
    sub_1C7250680(v43);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_98();
  v11 = swift_slowAlloc();
  OUTLINED_FUNCTION_40_25();
  __src[0] = swift_slowAlloc();
  *v11 = 134218498;
  *(v11 + 4) = v8;
  *(v11 + 12) = 2080;
  v33 = sub_1C70CAC04(v6);
  if (!v34)
  {
    goto LABEL_58;
  }

  v35 = v33;
  v36 = v34;
  OUTLINED_FUNCTION_16_38();
  sub_1C7250680(v37);
  OUTLINED_FUNCTION_16_38();
  sub_1C7250680(v38);
  v39 = sub_1C6F765A4(v35, v36, __src);

  *(v11 + 14) = v39;
  *(v11 + 22) = 2080;
  v40 = 0xE700000000000000;
  v41 = 0x74636566726550;
  LOBYTE(v13) = v70;
  switch(v70)
  {
    case 1:
      v40 = 0x80000001C75A63E0;
      v41 = 0xD000000000000016;
      break;
    case 2:
      v41 = 0xD000000000000010;
      v44 = "Low Person Score";
      goto LABEL_34;
    case 3:
      v41 = 0xD000000000000010;
      v44 = "Low Iconic Score";
LABEL_34:
      v40 = (v44 - 32) | 0x8000000000000000;
      break;
    case 4:
      goto LABEL_31;
    case 5:
      v40 = 0xEB0000000074726FLL;
      v41 = 0x736552207473614CLL;
      break;
    default:
      break;
  }

LABEL_36:
  v45 = sub_1C6F765A4(v41, v40, __src);

  *(v11 + 24) = v45;
  _os_log_impl(&dword_1C6F5C000, v14, v10, "Found a matching key asset for threshold %f: %s with assessment %s", v11, 0x20u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();

LABEL_37:
  if (v13 - 1 >= 4)
  {
    if (!v13)
    {

      sub_1C7250650(__dst);

      v31 = 0;
      goto LABEL_24;
    }

    goto LABEL_44;
  }

  if (v8 <= 0.0)
  {
LABEL_44:

    sub_1C7250650(__dst);
    v53 = OUTLINED_FUNCTION_505();
    result = sub_1C7250680(v53);
    goto LABEL_23;
  }

  result = sub_1C70CAC04(v6);
  if (v46)
  {
    v47 = result;
    v48 = v46;

    sub_1C7250650(__dst);
    v49 = COERCE_DOUBLE(sub_1C6FE0FE8(v47, v48, v68));
    v51 = v50;

    if (v51)
    {
      v52 = OUTLINED_FUNCTION_505();
      sub_1C7250680(v52);
      goto LABEL_22;
    }

    if (v8 + -0.05 <= v49 + 0.0001)
    {
      sub_1C724BAA4(v72, v71, v68, v64, v63, v8 + -0.05, v49 + 0.0001, a3);

      v54 = v72[0];
      v55 = v72[1];
      v56 = v72[2];
      memcpy(__src, v71, sizeof(__src));
      if (*a4)
      {
        sub_1C6FB089C();
        v57 = *(*a4 + 16);
        sub_1C6FB1128();
        sub_1C7250680(v7);
        v58 = *a4;
        *(v58 + 16) = v57 + 1;
        result = memcpy((v58 + 104 * v57 + 32), __src, 0x68uLL);
        *a4 = v58;
      }

      else
      {
        sub_1C7250650(__src);
        result = sub_1C7250680(v7);
      }

      if (v54)
      {
        v31 = v55;
      }

      else
      {
        v31 = 0;
      }

      if (v54)
      {
        v5 = v56;
      }

      else
      {
        v5 = 0;
      }

      v7 = v54;
      goto LABEL_24;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    OUTLINED_FUNCTION_16_38();
    sub_1C7250680(v59);
    OUTLINED_FUNCTION_16_38();
    result = sub_1C7250680(v60);
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C724BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, uint64_t a8)
{
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  sub_1C75504FC();
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v17)
  {
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(a3 + 56) + 8 * v23);
    if (v24 >= a6 && v24 < a7)
    {
      v25 = (*(a3 + 48) + 16 * v23);
      v44 = *v25;
      v45 = v25[1];
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v20 = v29;
      }

      v26 = *(v20 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v20 + 24) >> 1)
      {
        v43 = v26 + 1;
        v30 = *(v20 + 16);
        sub_1C6FB1814();
        v27 = v43;
        v26 = v30;
        v20 = v31;
      }

      *(v20 + 16) = v27;
      v28 = v20 + 16 * v26;
      *(v28 + 32) = v44;
      *(v28 + 40) = v45;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v40 = sub_1C731938C(a6, a7, v32, v33, v34, v35, v36, v37, v38, v39);
      v42 = v41;
      *&v48 = v20;
      sub_1C75504FC();
      sub_1C70401E8();
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 6;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      *a2 = a4;
      *(a2 + 8) = a5;
      *(a2 + 16) = v40;
      *(a2 + 24) = v42;
      *(a2 + 32) = v20;
      sub_1C75504FC();
      FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v20, a8, 0, a2);

      *a1 = v48;
      *(a1 + 16) = v49;
      return;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C724BCE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C757B6D0;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C755068C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1C755068C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1C755068C();
  *(v0 + 120) = v6;
  result = sub_1C755068C();
  *(v0 + 128) = result;
  *(v0 + 136) = v8;
  qword_1EDD08A48 = v0;
  return result;
}

uint64_t static FreeformStoryKeyAssetElector.fetchPropertySetsForKeyAsset.getter()
{
  if (qword_1EDD08A40 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

void sub_1C724BE20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v8 = v7;
  LODWORD(v173) = a5;
  v15 = sub_1C754DFFC();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v176 = a4;
    v175 = a7;
    v174 = a2;
    v18 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext + 8);
    v19 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext + 16);
    v20 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext);

    v21 = [v20 librarySpecificFetchOptions];
    [v21 setSharingFilter_];
    v172 = v19;

    if (qword_1EDD08A40 != -1)
    {
      goto LABEL_97;
    }

LABEL_3:
    v22 = sub_1C7550B3C();
    [v21 setFetchPropertySets_];

    v23 = objc_opt_self();
    v24 = v21;
    v25 = sub_1C6FCA158(a1, v21, v23);

    if (v25)
    {
      v168 = v24;
      v26 = *(a3 + 16);
      v171 = v25;
      v27 = [v23 clsAllAssetsFromFetchResult:v25 prefetchOptions:31 curationContext:v26];
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v28 = sub_1C7550B5C();

      v182 = MEMORY[0x1E69E7CC8];
      v29 = sub_1C724CD28(v28, a3, &v182);

      v30 = sub_1C75504FC();
      v170 = v29;
      v31 = sub_1C72464D4(v30, &v182);
      sub_1C754DFEC();
      v181[3] = &type metadata for Random.Arc4Random;
      v181[4] = sub_1C7054F1C();
      Random.Arc4Random.init(seed:)(v17, v181);
      v32 = FreeformStoryKeyAssetElector.stochatizedAssets(from:in:randomizer:)(v31, a3, v181);

      v165 = *(a3 + 32);
      v167 = *(v165 + 16);
      v33 = v167 != 0;
      v17 = *(a3 + 50);
      __dst[0] = v32;
      sub_1C75504FC();
      v166 = v17;
      sub_1C724E8CC(__dst, v33, v17, a6);
      v169 = v8;
      if (v8)
      {

        __break(1u);
      }

      else
      {

        v34 = 0;
        a6 = __dst[0];
        v180 = MEMORY[0x1E69E7CD0];
        a3 = *(__dst[0] + 16);
        v21 = (__dst[0] + 48);
        a1 = MEMORY[0x1E69E7CC0];
        while (a3 != v34)
        {
          if (v34 >= *(a6 + 16))
          {
            __break(1u);
LABEL_97:
            swift_once();
            goto LABEL_3;
          }

          v35 = *(v21 - 1);
          v8 = *v21;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            a1 = v37;
          }

          v17 = *(a1 + 16);
          v23 = (v17 + 1);
          if (v17 >= *(a1 + 24) >> 1)
          {
            sub_1C6FB1814();
            a1 = v38;
          }

          *(a1 + 16) = v23;
          v36 = a1 + 16 * v17;
          *(v36 + 32) = v35;
          *(v36 + 40) = v8;
          v21 += 10;
          ++v34;
        }

        sub_1C706D154();
        StoryGenerationCache.momentUUIDByAssetUUID(for:)();
        v40 = v39;

        sub_1C75504FC();

        v42 = v169;
        v43 = sub_1C7246808(v41, v40, &v180, &v182);
        v44 = v176;
        *(v176 + 80) = a6;

        *(v44 + 88) = v40;
        sub_1C75504FC();

        v45 = v182;
        *(v44 + 96) = v182;
        sub_1C75504FC();

        if (v43[2])
        {

          if (v43[2])
          {
            memcpy(__dst, v43 + 4, sizeof(__dst));
            v172 = v42;
            if (v167 && (LOBYTE(__dst[7]) != 1 || *&__dst[5] <= (*(v165 + 16) - 1)))
            {
              LODWORD(v23) = 2;
            }

            else
            {
              v46 = v166;
              if (__dst[6] >= 1)
              {
                v46 = 0;
              }

              if (v46)
              {
                LODWORD(v23) = 3;
              }

              else
              {
                LODWORD(v23) = *(a6 + 16) < *(v174 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_configuration);
              }
            }

            v174 = v45;
            sub_1C7251350(__dst, v178);
            sub_1C70CE540(1, v43);
            v58 = v57;
            v60 = v59;
            if ((v59 & 1) == 0)
            {
LABEL_31:
              sub_1C739CD40();
              v62 = v61;
              goto LABEL_38;
            }

            sub_1C7551DEC();
            swift_unknownObjectRetain_n();
            v63 = swift_dynamicCastClass();
            if (!v63)
            {
              swift_unknownObjectRelease();
              v63 = MEMORY[0x1E69E7CC0];
            }

            v64 = *(v63 + 16);

            if (!__OFSUB__(v60 >> 1, v58))
            {
              if (v64 == (v60 >> 1) - v58)
              {
                v62 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v62)
                {
                  v62 = MEMORY[0x1E69E7CC0];
LABEL_38:
                  swift_unknownObjectRelease();
                }

                v65 = __dst[2];
                *(v44 + 40) = __dst[1];
                *(v44 + 48) = v65;
                sub_1C75504FC();

                *(v44 + 56) = v23;
                v70 = *(v62 + 16);
                v71 = MEMORY[0x1E69E7CC0];
                LODWORD(v173) = v23;
                v170 = v62;
                if (v70)
                {
                  v178[0] = MEMORY[0x1E69E7CC0];
                  sub_1C6F7ED9C(0, v70, 0, v66, v67, v68, v69);
                  v72 = v178[0];
                  v73 = (v62 + 48);
                  v74 = v70;
                  do
                  {
                    v76 = *(v73 - 1);
                    v75 = *v73;
                    v178[0] = v72;
                    v78 = *(v72 + 16);
                    v77 = *(v72 + 24);
                    sub_1C75504FC();
                    if (v78 >= v77 >> 1)
                    {
                      sub_1C6F7ED9C(v77 > 1, v78 + 1, 1, v79, v80, v81, v82);
                      v72 = v178[0];
                    }

                    *(v72 + 16) = v78 + 1;
                    v83 = v72 + 16 * v78;
                    *(v83 + 32) = v76;
                    *(v83 + 40) = v75;
                    v73 += 10;
                    --v74;
                  }

                  while (v74);
                  v44 = v176;
                  LODWORD(v23) = v173;
                  v71 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  v72 = MEMORY[0x1E69E7CC0];
                }

                *(v44 + 64) = v72;

                v88 = *(a6 + 16);
                if (v88)
                {
                  v178[0] = v71;
                  sub_1C6F7ED9C(0, v88, 0, v84, v85, v86, v87);
                  v89 = v178[0];
                  v90 = (a6 + 48);
                  do
                  {
                    v92 = *(v90 - 1);
                    v91 = *v90;
                    v178[0] = v89;
                    v94 = *(v89 + 16);
                    v93 = *(v89 + 24);
                    sub_1C75504FC();
                    if (v94 >= v93 >> 1)
                    {
                      sub_1C6F7ED9C(v93 > 1, v94 + 1, 1, v95, v96, v97, v98);
                      v89 = v178[0];
                    }

                    *(v89 + 16) = v94 + 1;
                    v99 = v89 + 16 * v94;
                    *(v99 + 32) = v92;
                    *(v99 + 40) = v91;
                    v90 += 10;
                    --v88;
                  }

                  while (v88);

                  LODWORD(v23) = v173;
                  v71 = MEMORY[0x1E69E7CC0];
                }

                else
                {

                  v89 = MEMORY[0x1E69E7CC0];
                }

                v100 = __dst[0];
                *(v176 + 72) = v89;

                v101 = v168;
                v102 = v170;
                if (v70)
                {
                  v178[0] = v71;
                  v103 = v100;
                  sub_1C755195C();
                  v104 = 32;
                  do
                  {
                    v105 = *(v102 + v104);
                    sub_1C755192C();
                    sub_1C755196C();
                    sub_1C755197C();
                    sub_1C755193C();
                    v104 += 80;
                    --v70;
                  }

                  while (v70);

                  sub_1C72513AC(__dst);
                  v106 = v178[0];
                }

                else
                {
                  v107 = v100;

                  sub_1C72513AC(__dst);
                  v106 = MEMORY[0x1E69E7CC0];
                }

                v108 = v175;
                *v175 = v100;
                v108[1] = v23;
                v108[2] = v106;
LABEL_95:

                __swift_destroy_boxed_opaque_existential_1(v181);

                return;
              }

LABEL_100:
              swift_unknownObjectRelease();
              goto LABEL_31;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_100;
        }

        v177 = MEMORY[0x1E69E7CD0];

        v49 = sub_1C72469D8(v48, v40, &v177);
        v50 = v175;
        if (v49[2])
        {
          v172 = v42;

          if (v49[2])
          {
            v174 = v45;
            memcpy(__dst, v49 + 4, sizeof(__dst));
            sub_1C7251350(__dst, v178);
            sub_1C70CE540(1, v49);
            v52 = v51;
            v54 = v53;
            if ((v53 & 1) == 0)
            {
              goto LABEL_27;
            }

            sub_1C7551DEC();
            swift_unknownObjectRetain_n();
            v119 = swift_dynamicCastClass();
            if (!v119)
            {
              swift_unknownObjectRelease();
              v119 = MEMORY[0x1E69E7CC0];
            }

            v120 = *(v119 + 16);

            if (!__OFSUB__(v54 >> 1, v52))
            {
              if (v120 == (v54 >> 1) - v52)
              {
                v56 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                if (!v56)
                {
                  v56 = MEMORY[0x1E69E7CC0];
                  goto LABEL_72;
                }

                goto LABEL_73;
              }

LABEL_103:
              swift_unknownObjectRelease();
LABEL_27:
              sub_1C739CD40();
              v56 = v55;
LABEL_72:
              swift_unknownObjectRelease();
LABEL_73:
              v121 = __dst[2];
              *(v44 + 40) = __dst[1];
              *(v44 + 48) = v121;
              sub_1C75504FC();

              *(v44 + 56) = 4;
              v126 = *(v56 + 16);
              v127 = MEMORY[0x1E69E7CC0];
              v173 = v56;
              if (v126)
              {
                v178[0] = MEMORY[0x1E69E7CC0];
                sub_1C6F7ED9C(0, v126, 0, v122, v123, v124, v125);
                v128 = v178[0];
                v129 = (v56 + 48);
                v130 = v126;
                do
                {
                  v132 = *(v129 - 1);
                  v131 = *v129;
                  v178[0] = v128;
                  v134 = *(v128 + 16);
                  v133 = *(v128 + 24);
                  sub_1C75504FC();
                  if (v134 >= v133 >> 1)
                  {
                    sub_1C6F7ED9C(v133 > 1, v134 + 1, 1, v135, v136, v137, v138);
                    v128 = v178[0];
                  }

                  *(v128 + 16) = v134 + 1;
                  v139 = v128 + 16 * v134;
                  *(v139 + 32) = v132;
                  *(v139 + 40) = v131;
                  v129 += 10;
                  --v130;
                }

                while (v130);
                v44 = v176;
                v127 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                v128 = MEMORY[0x1E69E7CC0];
              }

              *(v44 + 64) = v128;

              v144 = *(a6 + 16);
              if (v144)
              {
                v178[0] = v127;
                sub_1C6F7ED9C(0, v144, 0, v140, v141, v142, v143);
                v145 = v178[0];
                v146 = (a6 + 48);
                do
                {
                  v148 = *(v146 - 1);
                  v147 = *v146;
                  v178[0] = v145;
                  v150 = *(v145 + 16);
                  v149 = *(v145 + 24);
                  sub_1C75504FC();
                  if (v150 >= v149 >> 1)
                  {
                    sub_1C6F7ED9C(v149 > 1, v150 + 1, 1, v151, v152, v153, v154);
                    v145 = v178[0];
                  }

                  *(v145 + 16) = v150 + 1;
                  v155 = v145 + 16 * v150;
                  *(v155 + 32) = v148;
                  *(v155 + 40) = v147;
                  v146 += 10;
                  --v144;
                }

                while (v144);

                v127 = MEMORY[0x1E69E7CC0];
              }

              else
              {

                v145 = MEMORY[0x1E69E7CC0];
              }

              v156 = __dst[0];
              *(v176 + 72) = v145;

              v157 = v168;
              v158 = v173;
              if (v126)
              {
                v178[0] = v127;
                v159 = v156;
                sub_1C755195C();
                v160 = 32;
                do
                {
                  v161 = *(v158 + v160);
                  sub_1C755192C();
                  sub_1C755196C();
                  sub_1C755197C();
                  sub_1C755193C();
                  v160 += 80;
                  --v126;
                }

                while (v126);

                sub_1C72513AC(__dst);
                v162 = v178[0];
              }

              else
              {
                v163 = v156;

                sub_1C72513AC(__dst);
                v162 = MEMORY[0x1E69E7CC0];
              }

              v164 = v175;
              *v175 = v156;
              v164[1] = 4;
              v164[2] = v162;

              goto LABEL_95;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_103;
        }

        *(v44 + 96) = v45;
        sub_1C75504FC();

        v109 = v171;
        v110 = v170;
        if ((v173 & 1) != 0 && sub_1C6FB6304())
        {
          sub_1C6FB6330();
          v111 = v168;
          if ((v110 & 0xC000000000000001) != 0)
          {
            v112 = MEMORY[0x1CCA5DDD0](0, v110);
          }

          else
          {
            v112 = *(v110 + 32);
          }

          v113 = v112;

          v114 = v113;
          *(v44 + 40) = sub_1C6FCA214(v114);
          *(v44 + 48) = v115;

          *(v44 + 56) = 5;
          v116 = sub_1C754FEEC();
          v117 = sub_1C75511BC();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            *v118 = 0;
            _os_log_impl(&dword_1C6F5C000, v116, v117, "Last resort case - returning top candidate key asset that is safe, might not meet other key asset criteria!", v118, 2u);
            MEMORY[0x1CCA5F8E0](v118, -1, -1);
          }

          *v50 = v114;
          v50[1] = 5;
          v50[2] = MEMORY[0x1E69E7CC0];

          __swift_destroy_boxed_opaque_existential_1(v181);
        }

        else
        {

          *v50 = 0;
          v50[1] = 0;
          v50[2] = 0;

          __swift_destroy_boxed_opaque_existential_1(v181);
        }
      }
    }

    else
    {

      v47 = v175;
      *v175 = 0;
      v47[1] = 0;
      v47[2] = 0;
    }
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }
}

uint64_t sub_1C724CD28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *v3;
  v6 = *(a2 + 40);
  if (*(v6 + 16))
  {
    v9 = v5;
    sub_1C75504FC();

    v10 = sub_1C75504FC();
    sub_1C7246318(v10, v6, a2, a3, v9);
    return v11;
  }

  else
  {
    sub_1C75504FC();
  }

  return a1;
}

uint64_t sub_1C724CDE0(void *__src, const void *a2, char a3, char a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, a2, sizeof(v8));
  return static FreeformStoryKeyAssetElector.compare(_:to:hasQueryCharacters:prioritizeIconic:)(__dst, v8, a3, a4) & 1;
}

uint64_t sub_1C724CE64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 72);
  if (v5 < 0.5 || *(a1 + 64) < 0.5)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1C755180C();
    if (v5 >= 0.5)
    {
      MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A6680);
    }

    else
    {
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A66A0);
    }

    sub_1C7550F5C();
    goto LABEL_13;
  }

  v8 = sub_1C6FE0F8C(*(a1 + 8), *(a1 + 16), a2);
  if (!v9)
  {
LABEL_13:
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *a4;
    sub_1C6FC80A4();
    result = 0;
    *a4 = v19;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v12 = *a3;
  sub_1C75504FC();
  v13 = sub_1C7009C30(v10, v11, v12);

  if (v13)
  {
    sub_1C755180C();

    v19 = 0x20746E656D6F6DLL;
    v20 = 0xE700000000000000;
    v14 = sub_1C7033D84(8, v10, v11);
    v15 = MEMORY[0x1CCA5CC40](v14);
    v17 = v16;

    MEMORY[0x1CCA5CD70](v15, v17);

    MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A66F0);
    goto LABEL_13;
  }

  sub_1C70F082C(&v19, v10, v11);

  return 1;
}

uint64_t sub_1C724D104(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a1;
  v8 = (a2 + 40);
  v9 = *(a2 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 2;
    v11 = *(v8 - 1);
    v12 = *v8;
    sub_1C75504FC();
    v13 = sub_1C724D294(v7, a3, v11, v12);

    v8 = v10;
    if (v13)
    {
      return v9 != 0;
    }
  }

  result = sub_1C70CAC04(v7);
  if (v15)
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A6710);
    v16 = MEMORY[0x1CCA5D090](a2, MEMORY[0x1E69E6158]);
    MEMORY[0x1CCA5CD70](v16);

    MEMORY[0x1CCA5CD70](0x6572702065726120, 0xEC000000746E6573);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *a4;
    sub_1C6FC80A4();
    *a4 = v17;

    return v9 != 0;
  }

  __break(1u);
  return result;
}

BOOL sub_1C724D294(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 curationModel];
  v8 = [v7 sceneModel];

  if (!v8)
  {
    if (qword_1EDD08988 == -1)
    {
LABEL_5:
      v22 = sub_1C754FF1C();
      __swift_project_value_buffer(v22, qword_1EDD28A20);
      v23 = sub_1C754FEEC();
      v24 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v24))
      {
        OUTLINED_FUNCTION_96_0();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v30, v31);
      }

      return 0;
    }

LABEL_29:
    OUTLINED_FUNCTION_9_56(&qword_1EDD08988);
    goto LABEL_5;
  }

  v49 = v8;
  v9 = sub_1C7248430(v8, a3, a4);
  v10 = [a1 clsSceneClassifications];
  OUTLINED_FUNCTION_362();
  sub_1C6F65BE8(v11, v12, v13);
  OUTLINED_FUNCTION_362();
  sub_1C7080178(v14, v15, v16);
  v17 = sub_1C7550F8C();

  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v17 = v51;
    v18 = v52;
    v19 = v53;
    v20 = v54;
    v21 = v55;
  }

  else
  {
    v20 = 0;
    v32 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v19 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v21 = v34 & *(v17 + 56);
  }

  v48 = v19;
  v35 = (v19 + 64) >> 6;
  if (v17 < 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v36 = v20;
  v37 = v21;
  v38 = v20;
  if (!v21)
  {
    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_25;
      }

      v37 = *(v18 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_17:
  v39 = (v37 - 1) & v37;
  v40 = *(*(v17 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
  if (!v40)
  {
LABEL_25:
    OUTLINED_FUNCTION_34_23();

    return 0;
  }

  while (1)
  {
    v41 = [v40 extendedSceneIdentifier];
    if (*(v9 + 16))
    {
      v42 = sub_1C6FCABD0(v41);
      if (v43)
      {
        break;
      }
    }

    v20 = v38;
    v21 = v39;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    if (sub_1C75516FC())
    {
      swift_dynamicCast();
      v40 = v50;
      v38 = v20;
      v39 = v21;
      if (v50)
      {
        continue;
      }
    }

    goto LABEL_25;
  }

  v45 = *(*(v9 + 56) + 8 * v42);

  [v40 confidence];
  v47 = v46;

  OUTLINED_FUNCTION_34_23();
  return v45 <= v47;
}

id FreeformStoryKeyAssetElector.keyAssetForLastResort(from:storyElements:storySession:)(unint64_t a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for StoryGenerationSession(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  memcpy(v19, a2, sizeof(v19));
  memcpy(v18, a2, sizeof(v18));
  sub_1C72505C8(a3, v10);
  type metadata accessor for FreeformStoryKeyAssetElector.Context();
  inited = swift_initStackObject();
  sub_1C6FDE884(v19, v17);
  FreeformStoryKeyAssetElector.Context.init(from:storySession:)(v18, v10);
  *&v17[3] = 0;
  BYTE8(v17[3]) = 6;
  memset(&v17[4], 0, 40);
  *&v17[0] = 0x6F7365527473614CLL;
  *(&v17[0] + 1) = 0xEA00000000007472;
  *&v17[1] = 45;
  *(&v17[1] + 1) = 0xE100000000000000;
  v17[2] = a1;
  v12 = sub_1C75504FC();
  FreeformStoryKeyAssetElector.keyAsset(from:context:isLastResortCase:diagnostics:)(v12, inited, 1, v17);
  v13 = v16[0];
  if (*(a3 + *(v7 + 32)))
  {
    sub_1C716A8EC();
  }

  if (v16[0])
  {
    v14 = v16[0];
    sub_1C7250680(v16[0]);
  }

  memcpy(v16, v17, sizeof(v16));
  sub_1C7250650(v16);
  return v13;
}

uint64_t static FreeformStoryKeyAssetElector.Action.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C7551DBC();
}

void sub_1C724D82C()
{
  OUTLINED_FUNCTION_124();
  v59 = v3;
  i = v4;
  v7 = *(v6 + 8);
  v63 = *v6;
  v61 = *(v6 + 24);
  v62 = *(v6 + 16);
  v60 = *(v6 + 32);
  v8 = sub_1C6FB6304();
  v9 = 0;
  v72 = v7 & 0xC000000000000001;
  v69 = v7 & 0xFFFFFFFFFFFFFF8;
  v67 = (v7 + 32);
  v65 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = &selRef_mergedPersonIdentifiers;
  while (v8 != v9)
  {
    if (v72)
    {
      v11 = MEMORY[0x1CCA5DDD0](v9, v7);
    }

    else
    {
      if (v9 >= *(v69 + 16))
      {
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v0 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v2 = v11;
    v12 = [v2 uuid];
    if (v12)
    {
      v13 = v12;
      v14 = v7;
      v15 = sub_1C755068C();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v65 = v20;
      }

      v1 = *(v65 + 16);
      v18 = *(v65 + 24);
      v2 = v1 + 1;
      if (v1 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_41_23(v18);
        sub_1C6FB1814();
        v65 = v21;
      }

      *(v65 + 16) = v2;
      v19 = v65 + 16 * v1;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      v9 = v0;
      v7 = v14;
      goto LABEL_2;
    }

    ++v9;
  }

  v66 = v8;
  v58 = v7;
  v0 = 0;
  v22 = *(i + 16);
  v23 = i + 32;
  v1 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v7 = v23 + (v0 << 7);
  for (i = v0; v22 != i; ++i)
  {
    if (i >= v22)
    {
      goto LABEL_52;
    }

    memcpy(v71, v7, 0x80uLL);
    v0 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_53;
    }

    if ((v71[14] & 1) == 0)
    {
      v9 = v71[13];
      sub_1C6FB7BB8(v71, v70);
      sub_1C6FBC70C(v9);
      v24 = [v9 fetchedObjects];
      if (v24)
      {
        v2 = v24;
        v56 = v23;
        v57 = v1;
        sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        i = sub_1C7550B5C();

        v25 = sub_1C6FB6304();
        v7 = 0;
        v68 = i & 0xC000000000000001;
        v64 = MEMORY[0x1E69E7CC0];
        while (v25 != v7)
        {
          if (v68)
          {
            v26 = MEMORY[0x1CCA5DDD0](v7, i);
          }

          else
          {
            if (v7 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v26 = *(i + 8 * v7 + 32);
          }

          v1 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_54;
          }

          v2 = v26;
          v27 = [v2 v10[434]];
          if (v27)
          {
            v28 = v27;
            v29 = sub_1C755068C();
            v55 = v30;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v64 = v34;
            }

            v32 = *(v64 + 16);
            v31 = *(v64 + 24);
            v2 = v32 + 1;
            if (v32 >= v31 >> 1)
            {
              OUTLINED_FUNCTION_41_23(v31);
              sub_1C6FB1814();
              v64 = v35;
            }

            *(v64 + 16) = v2;
            v33 = v64 + 16 * v32;
            *(v33 + 32) = v29;
            *(v33 + 40) = v55;
            v7 = v1;
            v10 = &selRef_mergedPersonIdentifiers;
          }

          else
          {

            ++v7;
            v10 = &selRef_mergedPersonIdentifiers;
          }
        }

        v2 = v71[1];
        sub_1C706D154();
        swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v57;
        v10 = &selRef_mergedPersonIdentifiers;
        OUTLINED_FUNCTION_16_38();
        sub_1C6FC7D38(v36, v37, v38, v39);
        sub_1C6FBC718(v9);
        sub_1C6FBC664(v71);
        v1 = v70[0];
        v23 = v56;
        goto LABEL_17;
      }

      sub_1C6FBC664(v71);
      sub_1C6FBC718(v9);
    }

    v7 += 128;
  }

  v9 = v63;
  v40 = sub_1C70CAC04(v9);
  if (!v41)
  {
    goto LABEL_56;
  }

  v42 = v40;
  v43 = v41;
  v71[0] = v62;
  v71[1] = v61;
  LOBYTE(v71[2]) = v60;
  sub_1C70CE970(v62, v61, v60);
  i = FreeformStoryKeyAssetElector.finalKeyAsset(from:keyAssetSource:alternateKeyAssetUUIDs:curatedAssetUUIDsByChapterID:)(v70, v42, v43, v71, v65, v1);
  v7 = v44;

  sub_1C6FE0E78(v71[0], v71[1], v71[2]);
  v0 = v70[0];
  v68 = v70[1];
  sub_1C75504FC();
  v45 = sub_1C70CAC04(v9);
  v2 = v46;
  v1 = v66;
  if (v46)
  {
    if (i == v45 && v46 == v7)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v48 = sub_1C7551DBC();

      if ((v48 & 1) == 0)
      {
        v2 = 0;
        goto LABEL_58;
      }
    }
  }

  else
  {

    v10 = v9;
LABEL_57:
    while (1)
    {

LABEL_58:
      if (v2 == v1)
      {
        break;
      }

      if (v72)
      {
        v49 = MEMORY[0x1CCA5DDD0](v2, v58);
      }

      else
      {
        if (v2 >= *(v69 + 16))
        {
          goto LABEL_76;
        }

        v49 = *&v67[8 * v2];
      }

      v10 = v49;
      if (__OFADD__(v2++, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }

      v51 = sub_1C70CAC04(v49);
      if (v52)
      {
        if (v51 == i && v52 == v7)
        {

          goto LABEL_73;
        }

        v54 = sub_1C7551DBC();

        if (v54)
        {

          goto LABEL_73;
        }

        v1 = v66;
      }
    }
  }

LABEL_73:
  *v59 = v0;
  v59[1] = v68;
  OUTLINED_FUNCTION_125();
}

uint64_t FreeformStoryKeyAssetElector.finalKeyAsset(from:keyAssetSource:alternateKeyAssetUUIDs:curatedAssetUUIDsByChapterID:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 16);
  sub_1C710D474();
  if (!v14)
  {
    *a1 = 0;
    a1[1] = 0;
    sub_1C75504FC();
    return OUTLINED_FUNCTION_282();
  }

  v15 = v13;
  v16 = v14;
  v123 = a1;
  v124 = v6;

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (v12 <= 1)
  {
    sub_1C70CE970(v10, v11, v12);
    v18 = sub_1C6FE3768();
    v19 = v10;
    if (v18)
    {
      v20 = v18;
      v122 = v19;

      sub_1C75504FC();
      v16 = v11;
      goto LABEL_8;
    }

    sub_1C6FE0E78(v10, v11, v12);
  }

  v20 = sub_1C724E708(v17);
  sub_1C75504FC();
  v122 = v15;
LABEL_8:
  v21 = OUTLINED_FUNCTION_282();
  v23 = sub_1C7009C30(v21, v22, v20);

  if (v23)
  {

    sub_1C75504FC();
    v24 = sub_1C754FEEC();
    v25 = sub_1C75511BC();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_13_3();
      v26 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v27 = swift_slowAlloc();
      v126[0] = v27;
      *v26 = 136315138;
      v28 = OUTLINED_FUNCTION_282();
      *(v26 + 4) = sub_1C6F765A4(v28, v29, v30);
      OUTLINED_FUNCTION_17();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();

    *v123 = 0;
    v123[1] = 0;
  }

  else
  {
    v120 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    sub_1C75504FC();
    sub_1C706D154();
    sub_1C75504FC();
    sub_1C70739AC();
    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    v38 = v37;

    StoryGenerationCache.momentUUIDByAssetUUID(for:)();
    sub_1C706D87C();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_282();
    v43 = sub_1C6FE0F8C(v41, v42, v38);
    if (v44)
    {
      if (sub_1C7009C30(v43, v44, v40))
      {

        sub_1C75504FC();
        sub_1C75504FC();
        v45 = sub_1C754FEEC();
        v46 = sub_1C75511BC();

        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_11_3();
          v47 = swift_slowAlloc();
          OUTLINED_FUNCTION_40_25();
          v126[0] = swift_slowAlloc();
          *v47 = 136315394;
          *(v47 + 4) = sub_1C6F765A4(a2, a3, v126);
          *(v47 + 12) = 2080;
          v48 = OUTLINED_FUNCTION_505();
          v51 = sub_1C6F765A4(v48, v49, v50);

          *(v47 + 14) = v51;
          v52 = v123;
          _os_log_impl(&dword_1C6F5C000, v45, v46, "Key asset %s is in moment %s, which is represented in relevant curated assets", v47, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {

          v52 = v123;
        }

        sub_1C75504FC();

        *v52 = v122;
        v52[1] = v16;
        return OUTLINED_FUNCTION_282();
      }
    }

    v117 = *(a5 + 16);
    if (v117)
    {
      v53 = 0;
      v54 = a5 + 32;
      v119 = v40 + 56;
      v121 = v40;
      v116 = a5 + 32;
      while (1)
      {
        v55 = (v54 + 16 * v53);
        v57 = *v55;
        v56 = v55[1];
        if (*(v20 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v58 = sub_1C7551FAC();
          v59 = ~(-1 << *(v20 + 32));
          while (1)
          {
            v60 = v58 & v59;
            if (((*(v20 + 56 + (((v58 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v58 & v59)) & 1) == 0)
            {
              break;
            }

            v61 = (*(v20 + 48) + 16 * v60);
            if (*v61 != v57 || v61[1] != v56)
            {
              v63 = sub_1C7551DBC();
              v58 = v60 + 1;
              if ((v63 & 1) == 0)
              {
                continue;
              }
            }

            sub_1C75504FC();
            v73 = sub_1C754FEEC();
            v74 = sub_1C75511BC();

            if (os_log_type_enabled(v73, v74))
            {
              OUTLINED_FUNCTION_13_3();
              v75 = swift_slowAlloc();
              OUTLINED_FUNCTION_98();
              v76 = swift_slowAlloc();
              v126[0] = v76;
              *(v75 + 4) = OUTLINED_FUNCTION_42_23(4.8149e-34, v76, v77, v78, v79, v80, v81, v82, v83, v113, v114, v115, v116, v117, v118, v119, v120, v17, v121, v122, v123, v124, a2);
              OUTLINED_FUNCTION_17();
              _os_log_impl(v84, v85, v86, v87, v88, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v76);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            *v123 = 0;
            v123[1] = 0;
            return OUTLINED_FUNCTION_282();
          }
        }

        else
        {
          sub_1C75504FC();
        }

        if (*(v38 + 16))
        {
          v64 = sub_1C6F78124(v57, v56);
          if (v65)
          {
            if (*(v121 + 16))
            {
              break;
            }
          }
        }

LABEL_40:
        ++v53;

        v54 = v116;
        if (v53 == v117)
        {
          goto LABEL_47;
        }
      }

      v115 = v38;
      v66 = (*(v38 + 56) + 16 * v64);
      v67 = v66[1];
      v114 = *v66;
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v68 = sub_1C7551FAC();
      v118 = ~(-1 << *(v121 + 32));
      do
      {
        v69 = v68 & v118;
        if (((*(v119 + (((v68 & v118) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v68 & v118)) & 1) == 0)
        {

          v38 = v115;
          goto LABEL_40;
        }

        v70 = (*(v121 + 48) + 16 * v69);
        if (*v70 == v114 && v70[1] == v67)
        {
          break;
        }

        v72 = sub_1C7551DBC();
        v68 = v69 + 1;
      }

      while ((v72 & 1) == 0);
      v96 = v114;

      sub_1C75504FC();
      sub_1C75504FC();
      v97 = sub_1C754FEEC();
      v98 = sub_1C75511BC();

      if (os_log_type_enabled(v97, v98))
      {
        OUTLINED_FUNCTION_11_3();
        v99 = swift_slowAlloc();
        OUTLINED_FUNCTION_40_25();
        v126[0] = swift_slowAlloc();
        *(v99 + 4) = OUTLINED_FUNCTION_42_23(4.8151e-34, v126[0], v100, v101, v102, v103, v104, v105, v106, v113, v114, v115, v116, v117, v118, v119, v120, v17, v121, v122, v123, v124, a2);
        *(v99 + 12) = 2080;
        v107 = sub_1C6F765A4(v96, v67, v126);

        *(v99 + 14) = v107;
        OUTLINED_FUNCTION_17();
        _os_log_impl(v108, v109, v110, v111, v112, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      *v123 = v122;
      v123[1] = v120;
    }

    else
    {
LABEL_47:

      v89 = sub_1C724E708(v17);
      v90 = OUTLINED_FUNCTION_282();
      v92 = sub_1C7009C30(v90, v91, v89);

      if (v92)
      {

        v93 = 0;
        v94 = 0;
      }

      else
      {
        v94 = v120;
        v93 = v122;
      }

      sub_1C75504FC();

      *v123 = v93;
      v123[1] = v94;
    }
  }

  return OUTLINED_FUNCTION_282();
}

uint64_t sub_1C724E708(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = sub_1C75504FC();
    v5 = sub_1C71CD938(v4);
    v6 = sub_1C7069D48(v5);

    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }

    swift_beginAccess();
    *v2 = v3;
    sub_1C75504FC();
  }

  sub_1C75504FC();
  return v3;
}

uint64_t FreeformStoryKeyAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext);

  return v0;
}

uint64_t FreeformStoryKeyAssetElector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence28FreeformStoryKeyAssetElector_storyPhotoLibraryContext);

  return swift_deallocClassInstance();
}

char *sub_1C724E8CC(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E64();
    v8 = v9;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  result = sub_1C724EC00(v12, a2 & 1, a3 & 1, a4);
  *a1 = v8;
  return result;
}

uint64_t sub_1C724E958(uint64_t a1)
{
  v2 = type metadata accessor for StoryGenerationSession(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C724E9B4()
{
  result = qword_1EDD08A18;
  if (!qword_1EDD08A18)
  {
    result = swift_getWitnessTable(byte_1C757C1F8, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A18);
  }

  return result;
}

unint64_t sub_1C724EA08()
{
  result = qword_1EC219AE8;
  if (!qword_1EC219AE8)
  {
    result = swift_getWitnessTable(byte_1C757C1A8, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219AE8);
  }

  return result;
}

unint64_t sub_1C724EA5C()
{
  result = qword_1EC219AF0;
  if (!qword_1EC219AF0)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowCropScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219AF0);
  }

  return result;
}

unint64_t sub_1C724EAB0()
{
  result = qword_1EC219AF8;
  if (!qword_1EC219AF8)
  {
    result = swift_getWitnessTable(byte_1C757C108, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowIconicScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219AF8);
  }

  return result;
}

unint64_t sub_1C724EB04()
{
  result = qword_1EC219B00;
  if (!qword_1EC219B00)
  {
    result = swift_getWitnessTable(byte_1C757C0B8, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowPersonScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219B00);
  }

  return result;
}

unint64_t sub_1C724EB58()
{
  result = qword_1EDD089A8;
  if (!qword_1EDD089A8)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.NotEnoughCompetitionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089A8);
  }

  return result;
}

unint64_t sub_1C724EBAC()
{
  result = qword_1EDD08A00;
  if (!qword_1EDD08A00)
  {
    result = swift_getWitnessTable(byte_1C757C018, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.PerfectCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A00);
  }

  return result;
}

char *sub_1C724EC00(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = a1[1];
  result = sub_1C7551D7C();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v12 = sub_1C7550BBC();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;
      sub_1C724EF0C(v13, v14, a1, v10, a2 & 1, a3 & 1, a4);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1C724ED20(0, v8, 1, a1, a2 & 1, a3 & 1);
  }

  return result;
}

char *sub_1C724ED20(char *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, char a6)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = (*a4 + 80 * a3);
    v11 = &result[-a3 + 1];
    while (2)
    {
      v24 = a3;
      v15 = v11;
      v16 = v10;
      while (1)
      {
        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v21, v10, sizeof(v21));
        memcpy(v23, v10 - 80, 0x50uLL);
        memcpy(__src, v10 - 80, sizeof(__src));
        v12 = sub_1C724CDE0(v21, __src, a5 & 1, a6 & 1);
        if (v6)
        {
          memcpy(v18, __src, sizeof(v18));
          sub_1C7251350(__dst, v19);
          sub_1C7251350(v23, v19);
          sub_1C72513AC(v18);
          memcpy(v19, v21, sizeof(v19));
          return sub_1C72513AC(v19);
        }

        v13 = v12;
        memcpy(v18, __src, sizeof(v18));
        sub_1C7251350(__dst, v17);
        sub_1C7251350(v23, v17);
        sub_1C72513AC(v18);
        memcpy(v19, v21, sizeof(v19));
        result = sub_1C72513AC(v19);
        if ((v13 & 1) == 0)
        {
          break;
        }

        if (!v9)
        {
          __break(1u);
          return result;
        }

        memcpy(v17, v10, sizeof(v17));
        memcpy(v10, v10 - 80, 0x50uLL);
        result = memcpy(v10 - 80, v17, 0x50uLL);
        if (!v11)
        {
          break;
        }

        ++v11;
        v10 -= 80;
      }

      a3 = v24 + 1;
      v10 = v16 + 80;
      v11 = v15 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C724EF0C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v8 = v7;
  v114 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = v11;
      v14 = v11 + 1;
      if (v11 + 1 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *a3;
      v97 = v11;
      v16 = v11 + 1;
      memcpy(__dst, (*a3 + 80 * v14), sizeof(__dst));
      memcpy(v111, (v15 + 80 * v14), sizeof(v111));
      memcpy(v113, (v15 + 80 * v13), 0x50uLL);
      memcpy(__src, (v15 + 80 * v13), sizeof(__src));
      v17 = sub_1C724CDE0(v111, __src, a5 & 1, a6 & 1);
      if (v8)
      {
LABEL_97:
        memcpy(v108, __src, sizeof(v108));
        sub_1C7251350(__dst, v109);
        sub_1C7251350(v113, v109);
        sub_1C72513AC(v108);
        memcpy(v109, v111, sizeof(v109));
        sub_1C72513AC(v109);
        goto LABEL_98;
      }

      v18 = v17;
      v94 = v12;
      memcpy(v108, __src, sizeof(v108));
      sub_1C7251350(__dst, v107);
      sub_1C7251350(v113, v107);
      sub_1C72513AC(v108);
      memcpy(v109, v111, sizeof(v109));
      sub_1C72513AC(v109);
      v19 = v15 + 80 * v13;
      v20 = 80 * v13;
      v21 = (v19 + 160);
      v22 = v13 + 2;
      v23 = v16;
      while (1)
      {
        v24 = v23;
        v25 = v22;
        if (v23 + 1 >= v10)
        {
          break;
        }

        memcpy(v106, v21, sizeof(v106));
        memcpy(v105, v21, sizeof(v105));
        memcpy(v107, v21 - 80, sizeof(v107));
        memcpy(v104, v21 - 80, sizeof(v104));
        v26 = sub_1C724CDE0(v105, v104, a5 & 1, a6 & 1);
        memcpy(v102, v104, sizeof(v102));
        sub_1C7251350(v106, v103);
        sub_1C7251350(v107, v103);
        sub_1C72513AC(v102);
        memcpy(v103, v105, sizeof(v103));
        sub_1C72513AC(v103);
        v21 += 80;
        v23 = v24 + 1;
        v22 = v25 + 1;
        if ((v18 ^ v26))
        {
          if (v18)
          {
            goto LABEL_9;
          }

LABEL_22:
          v12 = v94;
          v14 = v23;
LABEL_23:
          v13 = v97;
          goto LABEL_24;
        }
      }

      v23 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_9:
      if (v23 < v97)
      {
        break;
      }

      v14 = v23;
      v27 = v97 <= v24;
      v12 = v94;
      v13 = v97;
      if (v27)
      {
        if (v10 >= v25)
        {
          v28 = v25;
        }

        else
        {
          v28 = v10;
        }

        v29 = 80 * v28 - 80;
        v30 = v97;
        v31 = v23;
        do
        {
          if (v30 != --v31)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            memcpy(v107, (v32 + v20), sizeof(v107));
            memmove((v32 + v20), (v32 + v29), 0x50uLL);
            memcpy((v32 + v29), v107, 0x50uLL);
          }

          ++v30;
          v29 -= 80;
          v20 += 80;
        }

        while (v30 < v31);
        goto LABEL_23;
      }

LABEL_24:
      v33 = a3[1];
      if (v14 < v33)
      {
        if (__OFSUB__(v14, v13))
        {
          goto LABEL_117;
        }

        if (v14 - v13 < a4)
        {
          if (__OFADD__(v13, a4))
          {
            goto LABEL_118;
          }

          if (v13 + a4 >= v33)
          {
            v34 = a3[1];
          }

          else
          {
            v34 = v13 + a4;
          }

          if (v34 < v13)
          {
LABEL_119:
            __break(1u);
            break;
          }

          if (v14 != v34)
          {
            v79 = *a3;
            v80 = *a3 + 80 * v14;
            v99 = v13;
            v81 = v13 - v14 + 1;
            v89 = v34;
            do
            {
              v82 = v14;
              v93 = v81;
              v83 = v80;
              for (i = v80; ; i -= 80)
              {
                memcpy(__dst, i, sizeof(__dst));
                memcpy(v111, i, sizeof(v111));
                memcpy(v113, i - 80, 0x50uLL);
                memcpy(__src, i - 80, sizeof(__src));
                v85 = sub_1C724CDE0(v111, __src, a5 & 1, a6 & 1);
                if (v8)
                {
                  goto LABEL_97;
                }

                v86 = v85;
                memcpy(v108, __src, sizeof(v108));
                sub_1C7251350(__dst, v107);
                sub_1C7251350(v113, v107);
                sub_1C72513AC(v108);
                memcpy(v109, v111, sizeof(v109));
                sub_1C72513AC(v109);
                if ((v86 & 1) == 0)
                {
                  break;
                }

                if (!v79)
                {
                  goto LABEL_122;
                }

                memcpy(v107, i, sizeof(v107));
                memcpy(i, i - 80, 0x50uLL);
                memcpy(i - 80, v107, 0x50uLL);
                if (!v81)
                {
                  break;
                }

                ++v81;
              }

              v14 = v82 + 1;
              v80 = v83 + 80;
              v81 = v93 - 1;
            }

            while (v82 + 1 != v89);
            v14 = v89;
            v13 = v99;
          }
        }
      }

      if (v14 < v13)
      {
        goto LABEL_116;
      }

      v92 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v12[2] + 1, 1, v12);
        v12 = v87;
      }

      v36 = v12[2];
      v35 = v12[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_1C6FB17EC(v35 > 1, v36 + 1, 1, v12);
        v12 = v88;
      }

      v12[2] = v37;
      v38 = v12 + 4;
      v39 = &v12[2 * v36 + 4];
      *v39 = v13;
      v39[1] = v92;
      v114 = v12;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_124;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v12[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v12[4];
            v44 = v12[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_53:
            if (v46)
            {
              goto LABEL_106;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_109;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_112;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_114;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          if (v37 < 2)
          {
            goto LABEL_108;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_68:
          if (v61)
          {
            goto LABEL_111;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_113;
          }

          if (v68 < v60)
          {
            goto LABEL_82;
          }

LABEL_75:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_121;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v98 = v40;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1C724F91C((*a3 + 80 * *v72), (*a3 + 80 * *v74), (*a3 + 80 * v75), v95, a5 & 1, a6 & 1);
          if (v8)
          {
            v114 = v12;
            goto LABEL_98;
          }

          if (v75 < v73)
          {
            goto LABEL_101;
          }

          v76 = a7;
          v77 = v12;
          v78 = v12[2];
          if (v98 > v78)
          {
            goto LABEL_102;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v98 >= v78)
          {
            goto LABEL_103;
          }

          v37 = v78 - 1;
          memmove(v74, v74 + 2, 16 * (v78 - 1 - v98));
          v77[2] = v78 - 1;
          v27 = v78 > 2;
          v12 = v77;
          a7 = v76;
          v8 = 0;
          if (!v27)
          {
LABEL_82:
            v114 = v12;
            goto LABEL_83;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_104;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_105;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_107;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_115;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_53;
      }

LABEL_83:
      v10 = a3[1];
      v11 = v92;
      if (v92 >= v10)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

LABEL_94:
  if (!*result)
  {
LABEL_125:
    __break(1u);
    return;
  }

  sub_1C724F7CC(&v114, *result, a3, a5 & 1, a6 & 1, a7);
LABEL_98:
}

uint64_t sub_1C724F7CC(uint64_t *a1, char *a2, void *a3, char a4, char a5, uint64_t a6)
{
  v7 = a1;
  v20 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v20 = result;
  }

  v15 = v7;
  *v7 = v20;
  v9 = (v20 + 16);
  for (i = *(v20 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v20;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v11 = (v20 + 16 * i);
    v12 = *v11;
    v13 = &v9[2 * i];
    v7 = v13[1];
    sub_1C724F91C((*a3 + 80 * *v11), (*a3 + 80 * *v13), (*a3 + 80 * v7), a2, a4 & 1, a5 & 1);
    if (v6)
    {
      goto LABEL_10;
    }

    if (v7 < v12)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v11 = v12;
    v11[1] = v7;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v13, v13 + 2, 16 * v14);
  }

  *v15 = v20;
  __break(1u);
  return result;
}

uint64_t sub_1C724F91C(char *a1, char *a2, char *a3, char *a4, int a5, int a6)
{
  v43 = a5;
  v44 = a6;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 80;
  v12 = (a3 - a2) / 80;
  if (v11 < v12)
  {
    sub_1C741E45C(a1, (a2 - a1) / 80, a4);
    v13 = &v7[80 * v11];
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_39;
      }

      memcpy(__dst, v9, sizeof(__dst));
      memmove(v40, v9, 0x50uLL);
      memcpy(v42, v7, 0x50uLL);
      memmove(__src, v7, 0x50uLL);
      v15 = sub_1C724CDE0(v40, __src, v43 & 1, v44 & 1);
      if (v6)
      {
        memcpy(v37, __src, sizeof(v37));
        sub_1C7251350(__dst, v36);
        sub_1C7251350(v42, v36);
        sub_1C72513AC(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1C72513AC(v38);
        v28 = (v13 - v7) / 80;
        v29 = v10 < v7 || v10 >= &v7[80 * v28];
        if (v29 || v10 != v7)
        {
          v30 = 80 * v28;
          v31 = v10;
          goto LABEL_53;
        }

        return 1;
      }

      v16 = v15;
      memcpy(v37, __src, sizeof(v37));
      sub_1C7251350(__dst, v38);
      sub_1C7251350(v42, v38);
      sub_1C72513AC(v37);
      memcpy(v38, v40, sizeof(v38));
      sub_1C72513AC(v38);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v9;
      v18 = v10 == v9;
      v9 += 80;
      if (!v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v10 += 80;
    }

    v17 = v7;
    v18 = v10 == v7;
    v7 += 80;
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v10, v17, 0x50uLL);
    goto LABEL_14;
  }

  sub_1C741E45C(a2, (a3 - a2) / 80, a4);
  v13 = &v7[80 * v12];
LABEL_16:
  v35 = v9 - 80;
  v8 -= 80;
  for (i = v13 - v7; ; i -= 80)
  {
    if (v13 <= v7 || v9 <= a1)
    {
LABEL_39:
      v26 = (v13 - v7) / 80;
      v27 = &v7[80 * v26];
      goto LABEL_47;
    }

    memcpy(__dst, v13 - 80, sizeof(__dst));
    memmove(v40, v13 - 80, 0x50uLL);
    memcpy(v42, v35, 0x50uLL);
    memcpy(__src, v35, sizeof(__src));
    v21 = sub_1C724CDE0(v40, __src, v43 & 1, v44 & 1);
    if (v6)
    {
      break;
    }

    v22 = v21;
    memcpy(v37, __src, sizeof(v37));
    sub_1C7251350(__dst, v36);
    sub_1C7251350(v42, v36);
    sub_1C72513AC(v37);
    memcpy(v38, v40, sizeof(v38));
    sub_1C72513AC(v38);
    v23 = v8 + 80;
    if (v22)
    {
      v25 = v23 < v9 || v8 >= v9;
      if (!v25 && v23 == v9)
      {
        v9 -= 80;
      }

      else
      {
        v9 -= 80;
        memmove(v8, v35, 0x50uLL);
      }

      goto LABEL_16;
    }

    v24 = v23 < v13 || v8 >= v13;
    if (v24 || v13 != v23)
    {
      memmove(v8, v13 - 80, 0x50uLL);
    }

    v8 -= 80;
    v13 -= 80;
  }

  memcpy(v37, __src, sizeof(v37));
  sub_1C7251350(__dst, v36);
  sub_1C7251350(v42, v36);
  sub_1C72513AC(v37);
  memcpy(v38, v40, sizeof(v38));
  sub_1C72513AC(v38);
  v26 = i / 80;
  v27 = &v7[80 * (i / 80)];
LABEL_47:
  v32 = v9 < v7 || v9 >= v27;
  if (v32 || v9 != v7)
  {
    v30 = 80 * v26;
    v31 = v9;
LABEL_53:
    memmove(v31, v7, v30);
  }

  return 1;
}

uint64_t sub_1C724FD38(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1C75504FC();
      v4 = sub_1C7250104(v12, v7, v4, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v9);
  sub_1C75504FC();
  v10 = sub_1C724FEFC(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C724FEFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    if (*(a4 + 16))
    {
      v31 = v10;
      v32 = v5;
      v29 = v13 | (v6 << 6);
      v16 = (*(a3 + 48) + 16 * v29);
      v18 = *v16;
      v17 = v16[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(a4 + 32));
      do
      {
        v21 = v19 & v20;
        if (((*(v12 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {

          v5 = v32;
          v10 = v31;
          goto LABEL_5;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 == v18 && v22[1] == v17)
        {
          break;
        }

        v24 = sub_1C7551DBC();
        v19 = v21 + 1;
      }

      while ((v24 & 1) == 0);

      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v32 + 1;
      v10 = v31;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1C7483DE0(v28, a2, v5);
      v26 = v25;

      return v26;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1C7250104(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1C724FEFC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void sub_1C72501A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  sub_1C6F78034(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v35 = v42[5];
  v36 = v42[0];
  v9 = (v42[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v37 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v36 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v36 + 56) + 8 * v12);
      v41[0] = *v13;
      v41[1] = v14;
      v41[2] = v15;
      sub_1C75504FC();
      v35(&v38, v41);

      v16 = v38;
      v17 = v39;
      v18 = v40;
      v19 = *v43;
      v21 = sub_1C6F78124(v38, v39);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v37 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0, &unk_1C7569730);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354094(v24, v37 & 1);
        v26 = sub_1C6F78124(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_27;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v43;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        if (v29 > v18)
        {
          v30 = v29;
        }

        else
        {
          v30 = v18;
        }

        *(v28[7] + 8 * v21) = v30;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v31 = (v28[6] + 16 * v21);
        *v31 = v16;
        v31[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v32 = v28[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_26;
        }

        v28[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v36);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v37 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C7551E4C();
  __break(1u);
}

unint64_t sub_1C7250448()
{
  result = qword_1EDD08A38;
  if (!qword_1EDD08A38)
  {
    result = swift_getWitnessTable(byte_1C757BFC8, &type metadata for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A38);
  }

  return result;
}

unint64_t sub_1C725049C()
{
  result = qword_1EDD08990;
  if (!qword_1EDD08990)
  {
    result = swift_getWitnessTable("Qӑ'dl\a", &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment, v0, v1);
    atomic_store(result, &qword_1EDD08990);
  }

  return result;
}

unint64_t sub_1C72504F0()
{
  result = qword_1EC219B50;
  if (!qword_1EC219B50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219B48, &qword_1C757B770);
    v4[0] = sub_1C7250574();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC219B50);
  }

  return result;
}

unint64_t sub_1C7250574()
{
  result = qword_1EC219B58;
  if (!qword_1EC219B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryKeyAssetElector.StochatizedAsset, &type metadata for FreeformStoryKeyAssetElector.StochatizedAsset, v0, v1);
    atomic_store(result, &qword_1EC219B58);
  }

  return result;
}

uint64_t sub_1C72505C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryGenerationSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C7250680(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C72506C4()
{
  result = qword_1EC219B60;
  if (!qword_1EC219B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryKeyAssetElector.AssessedResult.Assessment, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment, v0, v1);
    atomic_store(result, &qword_1EC219B60);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryKeyAssetElector(uint64_t a1)
{
  result = qword_1EDD088A8;
  if (!qword_1EDD088A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C725076C(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t sub_1C725083C(uint64_t a1, int a2)
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

uint64_t sub_1C725085C(uint64_t result, int a2, int a3)
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

uint64_t sub_1C725090C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C725094C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence28FreeformStoryKeyAssetElectorC6SourceO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C72509E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C7250A20(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C7250B60(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7250CA0()
{
  result = qword_1EC219B70;
  if (!qword_1EC219B70)
  {
    result = swift_getWitnessTable("aϑ'<f\a", &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219B70);
  }

  return result;
}

unint64_t sub_1C7250CF8()
{
  result = qword_1EC219B78;
  if (!qword_1EC219B78)
  {
    result = swift_getWitnessTable(byte_1C757BFA0, &type metadata for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC219B78);
  }

  return result;
}

unint64_t sub_1C7250D50()
{
  result = qword_1EDD08A28;
  if (!qword_1EDD08A28)
  {
    result = swift_getWitnessTable(byte_1C757BF10, &type metadata for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A28);
  }

  return result;
}

unint64_t sub_1C7250DA8()
{
  result = qword_1EDD08A30;
  if (!qword_1EDD08A30)
  {
    result = swift_getWitnessTable(byte_1C757BF38, &type metadata for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A30);
  }

  return result;
}

unint64_t sub_1C7250E00()
{
  result = qword_1EDD089F0;
  if (!qword_1EDD089F0)
  {
    result = swift_getWitnessTable(byte_1C757BE08, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.PerfectCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089F0);
  }

  return result;
}

unint64_t sub_1C7250E58()
{
  result = qword_1EDD089F8;
  if (!qword_1EDD089F8)
  {
    result = swift_getWitnessTable(byte_1C757BE30, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.PerfectCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089F8);
  }

  return result;
}

unint64_t sub_1C7250EB0()
{
  result = qword_1EDD08998;
  if (!qword_1EDD08998)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.NotEnoughCompetitionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08998);
  }

  return result;
}

unint64_t sub_1C7250F08()
{
  result = qword_1EDD089A0;
  if (!qword_1EDD089A0)
  {
    result = swift_getWitnessTable(aQw, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.NotEnoughCompetitionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089A0);
  }

  return result;
}

unint64_t sub_1C7250F60()
{
  result = qword_1EDD089B0;
  if (!qword_1EDD089B0)
  {
    result = swift_getWitnessTable(byte_1C757BD68, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowPersonScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089B0);
  }

  return result;
}

unint64_t sub_1C7250FB8()
{
  result = qword_1EDD089B8;
  if (!qword_1EDD089B8)
  {
    result = swift_getWitnessTable(byte_1C757BD90, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowPersonScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089B8);
  }

  return result;
}

unint64_t sub_1C7251010()
{
  result = qword_1EDD089C0;
  if (!qword_1EDD089C0)
  {
    result = swift_getWitnessTable(byte_1C757BD18, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowIconicScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089C0);
  }

  return result;
}

unint64_t sub_1C7251068()
{
  result = qword_1EDD089C8;
  if (!qword_1EDD089C8)
  {
    result = swift_getWitnessTable(byte_1C757BD40, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowIconicScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089C8);
  }

  return result;
}

unint64_t sub_1C72510C0()
{
  result = qword_1EDD089D0;
  if (!qword_1EDD089D0)
  {
    result = swift_getWitnessTable(aD_4, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowCropScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089D0);
  }

  return result;
}

unint64_t sub_1C7251118()
{
  result = qword_1EDD089D8;
  if (!qword_1EDD089D8)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LowCropScoreCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089D8);
  }

  return result;
}

unint64_t sub_1C7251170()
{
  result = qword_1EDD089E0;
  if (!qword_1EDD089E0)
  {
    result = swift_getWitnessTable(aYd, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089E0);
  }

  return result;
}

unint64_t sub_1C72511C8()
{
  result = qword_1EDD089E8;
  if (!qword_1EDD089E8)
  {
    result = swift_getWitnessTable(byte_1C757BCA0, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.LastResortCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD089E8);
  }

  return result;
}

unint64_t sub_1C7251220()
{
  result = qword_1EDD08A08;
  if (!qword_1EDD08A08)
  {
    result = swift_getWitnessTable(byte_1C757BE58, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A08);
  }

  return result;
}

unint64_t sub_1C7251278()
{
  result = qword_1EDD08A10;
  if (!qword_1EDD08A10)
  {
    result = swift_getWitnessTable(byte_1C757BE80, &type metadata for FreeformStoryKeyAssetElector.AssessedResult.Assessment.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD08A10);
  }

  return result;
}

void *sub_1C72512CC(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_1C75504FC();
  }

  return result;
}

double sub_1C725130C@<D0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C73D9104();
  result = v6;
  *a2 = v3;
  a2[1] = v5;
  *(a2 + 2) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_23()
{
  *(v1 - 104) = v0;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_35_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_42_23(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  *v23 = a1;

  return sub_1C6F765A4(v25, v24, va);
}

uint64_t OUTLINED_FUNCTION_43_22(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t GlobalTrait.description.getter()
{
  v1 = v0;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x54206C61626F6C47, 0xEE00203A74696172);
  MEMORY[0x1CCA5CD70](*v1, v1[1]);
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  type metadata accessor for GlobalTrait(0);
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C759F720);
  MEMORY[0x1CCA5CD70](v1[2], v1[3]);
  MEMORY[0x1CCA5CD70](0x203A65707954202CLL, 0xE800000000000000);
  sub_1C75519EC();
  return 0;
}

uint64_t sub_1C7251628(uint64_t a1)
{
  v2 = sub_1C72588DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7251664(uint64_t a1)
{
  v2 = sub_1C72588DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72516A0(uint64_t a1)
{
  v2 = sub_1C7258984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72516DC(uint64_t a1)
{
  v2 = sub_1C7258984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7251718(uint64_t a1)
{
  v2 = sub_1C7258930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7251754(uint64_t a1)
{
  v2 = sub_1C7258930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTraitType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B88, &qword_1C757C260);
  OUTLINED_FUNCTION_3_0();
  v47 = v27;
  v48 = v26;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v28);
  v46 = &v44 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B90, &qword_1C757C268);
  OUTLINED_FUNCTION_3_0();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B98, &qword_1C757C270);
  OUTLINED_FUNCTION_3_0();
  v37 = v36;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C72588DC();
  sub_1C755200C();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1C7258930();
    v43 = v46;
    sub_1C7551C6C();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1C7258984();
    sub_1C7551C6C();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  OUTLINED_FUNCTION_125();
}

uint64_t GlobalTraitType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void GlobalTraitType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  a22 = v24;
  a23 = v25;
  v69 = v23;
  v27 = v26;
  v66 = v28;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BA8, &qword_1C757C278);
  OUTLINED_FUNCTION_3_0();
  v65 = v29;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BB0, &qword_1C757C280);
  OUTLINED_FUNCTION_3_0();
  v64 = v32;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v61 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BB8, &unk_1C757C288);
  OUTLINED_FUNCTION_3_0();
  v67 = v37;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v61 - v39;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C72588DC();
  v41 = v69;
  sub_1C7551FFC();
  if (v41)
  {
    goto LABEL_10;
  }

  v62 = v31;
  v63 = v35;
  v69 = v27;
  v42 = v68;
  sub_1C7551C5C();
  v43 = sub_1C6FD80E0();
  if (v45 == v46 >> 1)
  {
    v68 = v43;
LABEL_9:
    v58 = sub_1C75518EC();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490, &qword_1C7560600);
    *v60 = &type metadata for GlobalTraitType;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v67 + 8))(v40, v36);
    v27 = v69;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  v61[1] = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    v48 = sub_1C6FD80C8();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      if (v47)
      {
        a13 = 1;
        sub_1C7258930();
        OUTLINED_FUNCTION_5_3(&type metadata for GlobalTraitType.SpeculativeCodingKeys, &a13);
        v53 = v66;
        v54 = v67;
        swift_unknownObjectRelease();
        v55 = OUTLINED_FUNCTION_81_13();
        v57 = v42;
      }

      else
      {
        a12 = 0;
        sub_1C7258984();
        OUTLINED_FUNCTION_5_3(&type metadata for GlobalTraitType.CollectionCodingKeys, &a12);
        v53 = v66;
        v54 = v67;
        swift_unknownObjectRelease();
        v55 = OUTLINED_FUNCTION_81_13();
        v57 = v62;
      }

      v56(v55, v57);
      (*(v54 + 8))(v40, v50);
      *v53 = v47;
      __swift_destroy_boxed_opaque_existential_1(v69);
      goto LABEL_11;
    }

    v68 = v48;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t GlobalTrait.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t GlobalTrait.retrievalQuery.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t GlobalTrait.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GlobalTrait(0) + 24);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GlobalTrait.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GlobalTrait(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t GlobalTrait.assetUUIDs.getter()
{
  type metadata accessor for GlobalTrait(0);

  return sub_1C75504FC();
}

uint64_t GlobalTrait.assetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for GlobalTrait(v2) + 32);

  *(v1 + v3) = v0;
  return result;
}

void (*GlobalTrait.assetUUIDs.modify())()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait(v0);
  return CGRectMake;
}

uint64_t GlobalTrait.titleAssetUUIDs.getter()
{
  type metadata accessor for GlobalTrait(0);

  return sub_1C75504FC();
}

uint64_t GlobalTrait.titleAssetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for GlobalTrait(v2) + 36);

  *(v1 + v3) = v0;
  return result;
}

void (*GlobalTrait.titleAssetUUIDs.modify())()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait(v0);
  return CGRectMake;
}

uint64_t GlobalTrait.queryAssetUUIDs.getter()
{
  type metadata accessor for GlobalTrait(0);

  return sub_1C75504FC();
}

uint64_t GlobalTrait.queryAssetUUIDs.setter()
{
  v2 = OUTLINED_FUNCTION_300();
  v3 = *(type metadata accessor for GlobalTrait(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

void (*GlobalTrait.queryAssetUUIDs.modify())()
{
  v0 = OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait(v0);
  return CGRectMake;
}

uint64_t GlobalTrait.init(title:retrievalQuery:type:assetUUIDs:titleAssetUUIDs:queryAssetUUIDs:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v18 = *a5;
  v19 = type metadata accessor for GlobalTrait(0);
  v20 = v19[9];
  v21 = v19[10];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  *(a9 + v19[7]) = v18;
  *(a9 + v19[8]) = a6;
  *(a9 + v20) = a7;
  *(a9 + v21) = a8;
  v22 = v19[6];
  sub_1C754DFFC();
  OUTLINED_FUNCTION_12();
  v24 = *(v23 + 32);

  return v24(a9 + v22, a10);
}

PhotosIntelligence::GlobalTrait::CodingKeys_optional __swiftcall GlobalTrait.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::GlobalTrait::CodingKeys_optional __swiftcall GlobalTrait.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = GlobalTrait.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1C72523B0()
{
  result = 0x656C746974;
  switch(*v0)
  {
    case 1:
      result = 0x6176656972746572;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    case 5:
      result = 0x756F437465737361;
      break;
    case 6:
      v2 = 0x41656C746974;
      goto LABEL_9;
    case 7:
      v2 = 0x417972657571;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72524C4@<X0>(uint64_t *a1@<X8>)
{
  result = GlobalTrait.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72524F8(uint64_t a1)
{
  v2 = sub_1C72589D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7252534(uint64_t a1)
{
  v2 = sub_1C72589D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTrait.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BC0, &qword_1C757C298);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C72589D8();
  sub_1C755200C();
  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v11 = type metadata accessor for GlobalTrait(0);
    LOBYTE(v18) = 2;
    sub_1C754DFFC();
    OUTLINED_FUNCTION_4_63();
    sub_1C725954C(v12, v13, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_30_27();
    sub_1C7551D2C();
    LOBYTE(v18) = *(v2 + v11[7]);
    sub_1C7258A2C();
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v14 = *(v2 + v11[8]);
    LOBYTE(v18) = 5;
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    v18 = v14;
    sub_1C75504FC();
    sub_1C70401E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();

    if (*(v2 + v11[9]))
    {
      v18 = *(v2 + v11[9]);
      sub_1C75504FC();
      sub_1C70401E8();
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538, &qword_1C7586ED0);
    sub_1C7139F74();
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();

    if (*(v2 + v11[10]))
    {
      v18 = *(v2 + v11[10]);
      sub_1C75504FC();
      sub_1C70401E8();
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_125();
}

void GlobalTrait.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_124();
  v25 = v24;
  v46 = v26;
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v47 = v28;
  v48 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_0();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BC8, &qword_1C757C2A0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v32);
  v49 = type metadata accessor for GlobalTrait(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_0();
  v36 = (v35 - v34);
  v37 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v37, v38);
  sub_1C72589D8();
  sub_1C7551FFC();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    OUTLINED_FUNCTION_40_26();
    *v36 = sub_1C7551BBC();
    v36[1] = v39;
    OUTLINED_FUNCTION_40_26();
    v36[2] = sub_1C7551BBC();
    v36[3] = v40;
    LOBYTE(v50) = 2;
    OUTLINED_FUNCTION_4_63();
    sub_1C725954C(v41, v42, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    (*(v47 + 32))(v36 + v49[6], v31, v48);
    sub_1C7258A80();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    *(v36 + v49[7]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    *(v36 + v49[8]) = v50;
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551BAC();
    *(v36 + v49[9]) = v50;
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551BAC();
    v43 = v49[10];
    v44 = OUTLINED_FUNCTION_10_54();
    v45(v44);
    *(v36 + v43) = v50;
    sub_1C7258AD4(v36, v46);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_1C7258BDC();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t static GlobalTrait.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for GlobalTrait(0);
  if ((sub_1C754DFAC() & 1) == 0 || *(a1 + v6[7]) != *(a2 + v6[7]) || (sub_1C70020D4(*(a1 + v6[8]), *(a2 + v6[8])) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    if (!v9 || (sub_1C70020D4(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v6[10];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (v12 && (sub_1C70020D4(v11, v12) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

void GlobalTrait.hash(into:)(uint64_t a1)
{
  sub_1C75505AC();
  sub_1C75505AC();
  v2 = type metadata accessor for GlobalTrait(0);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_4_63();
  sub_1C725954C(v3, v4, MEMORY[0x1E69695B8]);
  sub_1C755059C();
  MEMORY[0x1CCA5E460](*(v1 + v2[7]));
  sub_1C70418D0();
  if (*(v1 + v2[9]))
  {
    sub_1C7551F5C();
    sub_1C70418D0();
  }

  else
  {
    sub_1C7551F5C();
  }

  if (*(v1 + v2[10]))
  {
    sub_1C7551F5C();
    OUTLINED_FUNCTION_57_0();

    sub_1C70418D0();
  }

  else
  {
    sub_1C7551F5C();
  }
}

uint64_t GlobalTrait.hashValue.getter()
{
  sub_1C7551F3C();
  GlobalTrait.hash(into:)(v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72530E0(uint64_t a1)
{
  sub_1C7551F3C();
  GlobalTrait.hash(into:)(v2);
  return sub_1C7551FAC();
}

PhotosIntelligence::GlobalTraitCompletion __swiftcall GlobalTraitCompletion.init(collectionTraits:speculativeTraitQueryByTitle:)(Swift::OpaquePointer collectionTraits, Swift::OpaquePointer speculativeTraitQueryByTitle)
{
  v2->_rawValue = collectionTraits._rawValue;
  v2[1]._rawValue = speculativeTraitQueryByTitle._rawValue;
  result.speculativeTraitQueryByTitle = speculativeTraitQueryByTitle;
  result.collectionTraits = collectionTraits;
  return result;
}

uint64_t GlobalTraitCompletion.description.getter()
{
  v1 = *v0;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A6740);
  v2 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD00000000000002CLL, 0x80000001C75A6760);
  v3 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v3);

  return 0;
}

Swift::Int __swiftcall GlobalTraitCompletion.numberOfTraits()()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7253278()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07CB0);
  __swift_project_value_buffer(v0, qword_1EDD07CB0);
  return sub_1C754FEFC();
}

uint64_t sub_1C7253320()
{
  if (qword_1EC213F10 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B738);
  v0 = qword_1EC25B740;
  if (!qword_1EC25B740)
  {
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
    }

    v3[1] = byte_1EC218F88;
    static LLMWrapperUtils.globalTraitsModelType(for:)(v3);
    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B740 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B738);
  return v0;
}

uint64_t sub_1C72533FC()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EDD289F0);
  __swift_project_value_buffer(v0, qword_1EDD289F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20, &qword_1C755BD80);
  v1 = sub_1C754FDCC();
  OUTLINED_FUNCTION_18(v1);
  *(swift_allocObject() + 16) = xmmword_1C75604F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_5_58();
  sub_1C6FF60E4(v2, v3, v4);
  OUTLINED_FUNCTION_30_2();
  sub_1C754FDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  sub_1C7259428();
  OUTLINED_FUNCTION_27_30();
  OUTLINED_FUNCTION_55_20();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t sub_1C7253570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_5_58();
  sub_1C6FF60E4(v3, v4, v5);
  OUTLINED_FUNCTION_30_2();
  sub_1C754FD3C();
  sub_1C754FD4C();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(a1);
  return v2;
}

uint64_t sub_1C72536DC(uint64_t a1, uint64_t a2)
{
  v6 = a1 == OUTLINED_FUNCTION_30_2() && v4 == v5;
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_55_20();
    if (a1 == OUTLINED_FUNCTION_27_30() && a2 == v8)
    {

      return 1;
    }

    else
    {
      v10 = sub_1C7551DBC();

      if (v10)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

void sub_1C7253790()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219C08, &qword_1C757CA68);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72594A4();
  sub_1C755200C();
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  OUTLINED_FUNCTION_9(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
  OUTLINED_FUNCTION_30_27();
  sub_1C7551D2C();
  if (!v0)
  {
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C703195C(&qword_1EDD06C70, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_30_27();
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}