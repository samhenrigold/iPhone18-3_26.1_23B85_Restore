unint64_t sub_2176E63EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFC0;
  if (!qword_27CB2CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFC0);
  }

  return result;
}

unint64_t sub_2176E6444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFC8;
  if (!qword_27CB2CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFC8);
  }

  return result;
}

unint64_t sub_2176E649C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFD0;
  if (!qword_27CB2CFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFD0);
  }

  return result;
}

unint64_t sub_2176E64F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFD8;
  if (!qword_27CB2CFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFD8);
  }

  return result;
}

unint64_t sub_2176E654C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFE0;
  if (!qword_27CB2CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFE0);
  }

  return result;
}

unint64_t sub_2176E65A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFE8;
  if (!qword_27CB2CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFE8);
  }

  return result;
}

unint64_t sub_2176E65FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFF0;
  if (!qword_27CB2CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFF0);
  }

  return result;
}

unint64_t sub_2176E6650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2CFF8;
  if (!qword_27CB2CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2CFF8);
  }

  return result;
}

unint64_t sub_2176E66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D000;
  if (!qword_27CB2D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D000);
  }

  return result;
}

unint64_t sub_2176E66F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D008;
  if (!qword_27CB2D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D008);
  }

  return result;
}

uint64_t sub_2176E674C()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2176E67A4()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2176E67FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(v9 + 104);

  return CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v10, v13, v9 + 288, a5, v11, a7, a8, v9 + 160, a9);
}

uint64_t OUTLINED_FUNCTION_47_33(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_57_27()
{
  result = 0.0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_67_23()
{

  return sub_2174BFD48();
}

uint64_t OUTLINED_FUNCTION_68_27()
{

  return sub_2176E674C();
}

void *OUTLINED_FUNCTION_81_18()
{

  return memcpy((v0 + 464), (v0 + 160), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_83_19()
{

  return sub_217284868();
}

void OUTLINED_FUNCTION_94_17()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_96_16()
{

  return sub_2176E67A4();
}

uint64_t OUTLINED_FUNCTION_97_14()
{

  return sub_217284868();
}

uint64_t static CloudSocialProfile.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_217753058()) && (v5 = type metadata accessor for CloudSocialProfile(0), static CloudSocialProfile.Attributes.== infix(_:_:)(a1 + v5[5])) && *(a1 + v5[6]) == *(a2 + v5[6]) && *(a1 + v5[7]) == *(a2 + v5[7]))
  {
    v6 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void CloudSocialProfile.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  v57 = v26;
  type metadata accessor for CloudSocialProfile.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D028, &qword_217798EE0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_111();
  v32 = type metadata accessor for CloudSocialProfile(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v36 = (v35 - v34);
  v58 = v25;
  v37 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2176E7A40(v37, v38, v39);
  v40 = sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_2172E1C68(v40, v41, v42);
    sub_217752EA8();
    *v36 = v59;
    v36[1] = v60;
    OUTLINED_FUNCTION_10_70();
    sub_2176E7C4C(v43, v44, &protocol conformance descriptor for CloudSocialProfile.Attributes);
    sub_217752EA8();
    v45 = sub_2176E7A94(v30, v36 + v32[5]);
    sub_2176E7AF8(v45, v46, v47);
    OUTLINED_FUNCTION_5_62();
    v48 = sub_217752E58();
    *(v36 + v32[6]) = 1;
    sub_2176E7B4C(v48, v49, v50);
    OUTLINED_FUNCTION_5_62();
    v51 = sub_217752E58();
    *(v36 + v32[7]) = 1;
    sub_2176E7BA0(v51, v52, v53);
    OUTLINED_FUNCTION_5_62();
    sub_217752E58();
    v54 = OUTLINED_FUNCTION_10_0();
    v55(v54);
    *(v36 + v32[8]) = 1;
    OUTLINED_FUNCTION_8_86();
    sub_2176E9174(v36, v57, v56);
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_2176E7BF4(v36, type metadata accessor for CloudSocialProfile);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t CloudSocialProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D030, &qword_217798EE8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2176E7A40(v11, v12, v13);
  v14 = sub_2177532F8();
  v15 = v3[1];
  v33 = *v3;
  v34 = v15;
  v32 = 0;
  sub_2172E1B18(v14, v16, v17);
  OUTLINED_FUNCTION_4_111();
  sub_217752F88();
  if (!v2)
  {
    v18 = type metadata accessor for CloudSocialProfile(0);
    LOBYTE(v33) = 1;
    type metadata accessor for CloudSocialProfile.Attributes(0);
    OUTLINED_FUNCTION_10_70();
    sub_2176E7C4C(v19, v20, &protocol conformance descriptor for CloudSocialProfile.Attributes);
    v21 = sub_217752F88();
    LOBYTE(v33) = *(v3 + v18[6]);
    v32 = 2;
    sub_2174D7CC4(v21, v22, v23);
    OUTLINED_FUNCTION_4_111();
    v24 = sub_217752F38();
    LOBYTE(v33) = *(v3 + v18[7]);
    v32 = 3;
    sub_2174D7C70(v24, v25, v26);
    OUTLINED_FUNCTION_4_111();
    v27 = sub_217752F38();
    LOBYTE(v33) = *(v3 + v18[8]);
    v32 = 4;
    sub_2174D7C1C(v27, v28, v29);
    OUTLINED_FUNCTION_4_111();
    sub_217752F38();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t CloudSocialProfile.init(id:attributes:relationships:views:meta:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v9 = *a4;
  v10 = *a5;
  v11 = *a6;
  *a7 = a1;
  a7[1] = a2;
  v12 = type metadata accessor for CloudSocialProfile(0);
  result = sub_2176E7A94(a3, a7 + v12[5]);
  *(a7 + v12[6]) = v9;
  *(a7 + v12[7]) = v10;
  *(a7 + v12[8]) = v11;
  return result;
}

uint64_t CloudSocialProfile.Attributes.init(artwork:handle:isPrivate:isVerified:name:url:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x1B8uLL);
  *(a9 + 440) = a2;
  *(a9 + 448) = a3;
  *(a9 + 456) = a4;
  *(a9 + 457) = a5;
  *(a9 + 464) = a6;
  *(a9 + 472) = a7;
  v17 = a9 + *(type metadata accessor for CloudSocialProfile.Attributes(0) + 36);

  return sub_21751AF10(a8, v17);
}

uint64_t CloudSocialProfile.Attributes.artwork.getter()
{
  memcpy(__dst, v0, 0x1B8uLL);
  v1 = OUTLINED_FUNCTION_93();
  memcpy(v1, v2, 0x1B8uLL);
  return sub_21738C4B0(__dst, v4, &qword_27CB25000, &unk_21776EA00);
}

uint64_t CloudSocialProfile.Attributes.url.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = type metadata accessor for CloudSocialProfile.Attributes(v2);
  return sub_21738C4B0(v1 + *(v3 + 36), v0, &unk_27CB277C0, &qword_217758DC0);
}

BOOL static CloudSocialProfile.Attributes.== infix(_:_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_111();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  memcpy(v56, v5, sizeof(v56));
  OUTLINED_FUNCTION_11_3();
  memcpy(v18, v19, v20);
  memcpy(v54, v5, 0x1B8uLL);
  OUTLINED_FUNCTION_11_3();
  memcpy(v21, v22, v23);
  memcpy(v58, v5, 0x1B8uLL);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v58) == 1)
  {
    OUTLINED_FUNCTION_25_2(v53);
    if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v53) == 1)
    {
      v48 = v8;
      v49 = v6;
      memcpy(v55, v54, sizeof(v55));
      sub_21738C4B0(v56, v52, &qword_27CB25000, &unk_21776EA00);
      sub_21738C4B0(v57, v52, &qword_27CB25000, &unk_21776EA00);
      sub_2171F0738(v55, &qword_27CB25000, &unk_21776EA00);
      goto LABEL_10;
    }

LABEL_5:
    memcpy(v53, v54, sizeof(v53));
    sub_21738C4B0(v56, v55, &qword_27CB25000, &unk_21776EA00);
    sub_21738C4B0(v57, v55, &qword_27CB25000, &unk_21776EA00);
    v24 = &unk_27CB25008;
    v25 = &unk_21778F850;
    v26 = v53;
LABEL_6:
    sub_2171F0738(v26, v24, v25);
    return 0;
  }

  OUTLINED_FUNCTION_25_2(v52);
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v52) == 1)
  {
    goto LABEL_5;
  }

  v48 = v8;
  v49 = v6;
  OUTLINED_FUNCTION_25_2(v50);
  OUTLINED_FUNCTION_25_2(v53);
  memcpy(v55, v54, sizeof(v55));
  sub_21738C4B0(v56, v51, &qword_27CB25000, &unk_21776EA00);
  sub_21738C4B0(v57, v51, &qword_27CB25000, &unk_21776EA00);
  sub_2172A92BC();
  v29 = v28;
  sub_2171F0738(v50, &qword_27CB25000, &unk_21776EA00);
  memcpy(v51, v54, sizeof(v51));
  sub_2171F0738(v51, &qword_27CB25000, &unk_21776EA00);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v30 = *(v5 + 448);
  v31 = *(v3 + 448);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    v32 = *(v5 + 440) == *(v3 + 440) && v30 == v31;
    if (!v32 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v33 = *(v5 + 456);
  v34 = *(v3 + 456);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 2 || ((v34 ^ v33) & 1) != 0)
    {
      return result;
    }
  }

  v35 = *(v5 + 457);
  v36 = *(v3 + 457);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }

    goto LABEL_29;
  }

  result = 0;
  if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
  {
LABEL_29:
    v37 = *(v5 + 472);
    v38 = *(v3 + 472);
    if (v37)
    {
      if (!v38)
      {
        return 0;
      }

      v39 = *(v5 + 464) == *(v3 + 464) && v37 == v38;
      if (!v39 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v38)
    {
      return 0;
    }

    v40 = *(type metadata accessor for CloudSocialProfile.Attributes(0) + 36);
    v41 = *(v14 + 48);
    sub_21738C4B0(v5 + v40, v17, &unk_27CB277C0, &qword_217758DC0);
    sub_21738C4B0(v3 + v40, &v17[v41], &unk_27CB277C0, &qword_217758DC0);
    v42 = v49;
    if (__swift_getEnumTagSinglePayload(v17, 1, v49) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v17[v41], 1, v42) == 1)
      {
        sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
        return 1;
      }
    }

    else
    {
      sub_21738C4B0(v17, v1, &unk_27CB277C0, &qword_217758DC0);
      if (__swift_getEnumTagSinglePayload(&v17[v41], 1, v42) != 1)
      {
        v43 = v48;
        (*(v48 + 32))(v12, &v17[v41], v42);
        OUTLINED_FUNCTION_0_146();
        sub_2176E7C4C(v44, v45, MEMORY[0x277CC9278]);
        v46 = sub_217751F08();
        v47 = *(v43 + 8);
        v47(v12, v42);
        v47(v1, v42);
        sub_2171F0738(v17, &unk_27CB277C0, &qword_217758DC0);
        return (v46 & 1) != 0;
      }

      (*(v48 + 8))(v1, v42);
    }

    v24 = &qword_27CB24840;
    v25 = &unk_217758DD0;
    v26 = v17;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_2176E7A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3BA8;
  if (!qword_280BE3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BA8);
  }

  return result;
}

uint64_t sub_2176E7A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSocialProfile.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2176E7AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B78;
  if (!qword_280BE3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B78);
  }

  return result;
}

unint64_t sub_2176E7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B90;
  if (!qword_280BE3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B90);
  }

  return result;
}

unint64_t sub_2176E7BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B70;
  if (!qword_280BE3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B70);
  }

  return result;
}

uint64_t sub_2176E7BF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2176E7C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2176E7C94(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0x7461766972507369;
      break;
    case 3:
      result = 0x6966697265567369;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2176E7D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E80A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E7D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E80A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudSocialProfile.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D038, &unk_217798EF0);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_111();
  v8 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2176E80A4(v8, v9, v10);
  sub_2177532F8();
  OUTLINED_FUNCTION_11_3();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_11_3();
  memcpy(v14, v15, v16);
  sub_21738C4B0(&v21, v19, &qword_27CB25000, &unk_21776EA00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_21751AE98(&qword_280BE42D8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  OUTLINED_FUNCTION_13_42();
  sub_217752F38();
  if (v0)
  {
    memcpy(v19, v20, sizeof(v19));
    sub_2171F0738(v19, &qword_27CB25000, &unk_21776EA00);
  }

  else
  {
    memcpy(v19, v20, sizeof(v19));
    sub_2171F0738(v19, &qword_27CB25000, &unk_21776EA00);
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    OUTLINED_FUNCTION_13_42();
    sub_217752F08();
    OUTLINED_FUNCTION_13_42();
    sub_217752EF8();
    type metadata accessor for CloudSocialProfile.Attributes(0);
    sub_2177516D8();
    OUTLINED_FUNCTION_0_146();
    sub_2176E7C4C(v17, v18, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_13_42();
    sub_217752F38();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176E80A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3BC8[0];
  if (!qword_280BE3BC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3BC8);
  }

  return result;
}

uint64_t CloudSocialProfile.Attributes.hash(into:)(const void *a1)
{
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_128();
  memcpy(v18, v1, sizeof(v18));
  v12 = *(v1 + 432);
  memcpy(v19, v1, sizeof(v19));
  v20 = v12;
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v19) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v17, v18, sizeof(v17));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(a1);
    sub_217751DE8();
    sub_217265A08(a1, v12);
  }

  if (*(v1 + 448))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v1 + 456) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 457) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  if (*(v1 + 472))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = type metadata accessor for CloudSocialProfile.Attributes(0);
  sub_21738C4B0(v1 + *(v13 + 36), v2, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    return OUTLINED_FUNCTION_120();
  }

  (*(v6 + 32))(v10, v2, v4);
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_0_146();
  sub_2176E7C4C(v15, v16, MEMORY[0x277CC9270]);
  sub_217751EB8();
  return (*(v6 + 8))(v10, v4);
}

void CloudSocialProfile.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v55 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D040, &qword_217798F00);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  v32 = type metadata accessor for CloudSocialProfile.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v56 = v35 - v34;
  v57 = v28;
  v36 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_2176E80A4(v36, v37, v38);
  sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    a13 = 0;
    v40 = sub_21751AE98(&qword_280BE42D0, &protocol conformance descriptor for <A> CloudAttribute<A>);
    OUTLINED_FUNCTION_24_2(v39, &a13, v41, v42, v40);
    memcpy(v56, v58, 0x1B8uLL);
    OUTLINED_FUNCTION_2_85(1);
    *(v56 + 440) = sub_217752E18();
    *(v56 + 448) = v43;
    OUTLINED_FUNCTION_2_85(2);
    *(v56 + 456) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(3);
    *(v56 + 457) = sub_217752E28();
    OUTLINED_FUNCTION_2_85(4);
    *(v56 + 464) = sub_217752E18();
    *(v56 + 472) = v44;
    v45 = sub_2177516D8();
    a12 = 5;
    OUTLINED_FUNCTION_0_146();
    v48 = sub_2176E7C4C(v46, v47, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_24_2(v45, &a12, v49, v50, v48);
    v51 = OUTLINED_FUNCTION_11_5();
    v52(v51);
    sub_21751AF10(v24, v56 + *(v32 + 36));
    OUTLINED_FUNCTION_7_86();
    sub_2176E9174(v56, v55, v53);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_9_87();
    sub_2176E7BF4(v56, v54);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176E87FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E91D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E8838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E91D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176E88D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9224(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E8914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9224(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2176E8A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9278(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E8A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9278(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2176E8AD0()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_2177532F8();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudSocialProfile.attributes.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  type metadata accessor for CloudSocialProfile(v2);
  OUTLINED_FUNCTION_7_86();
  return sub_2176E9174(v1 + v3, v0, v4);
}

uint64_t CloudSocialProfile.relationships.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t CloudSocialProfile.views.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudSocialProfile.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  result = type metadata accessor for CloudSocialProfile(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_2176E8D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE4B60 != -1)
  {
    swift_once();
  }

  v1 = qword_280BE4B70;
  v2 = byte_280BE4B78;
  *(v0 + 32) = qword_280BE4B68;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  qword_280BE3B88 = v0;

  return sub_217751DE8();
}

uint64_t sub_2176E8E18(char a1)
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

uint64_t sub_2176E8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2176E8F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E7A40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E8F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E7A40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudSocialProfile.hash(into:)(const void *a1)
{
  sub_217751FF8();
  type metadata accessor for CloudSocialProfile(0);
  CloudSocialProfile.Attributes.hash(into:)(a1);
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t sub_2176E9020(uint64_t (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2176E90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t CloudSocialProfile.convertToCloudRawCurator()()
{
  OUTLINED_FUNCTION_8_86();
  sub_2176E9174(v1, v3, v2);
  type metadata accessor for CloudRawCurator(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2176E9174(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

unint64_t sub_2176E91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D050;
  if (!qword_27CB2D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D050);
  }

  return result;
}

unint64_t sub_2176E9224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D060;
  if (!qword_27CB2D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D060);
  }

  return result;
}

unint64_t sub_2176E9278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D070;
  if (!qword_27CB2D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D070);
  }

  return result;
}

unint64_t sub_2176E9318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D080;
  if (!qword_27CB2D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D080);
  }

  return result;
}

unint64_t sub_2176E9370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D088;
  if (!qword_27CB2D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D088);
  }

  return result;
}

unint64_t sub_2176E93C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D090;
  if (!qword_27CB2D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D090);
  }

  return result;
}

void sub_2176E9534(uint64_t a1)
{
  type metadata accessor for CloudSocialProfile.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7C00, &type metadata for CloudSocialProfile.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE7C08, &type metadata for CloudSocialProfile.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE7BF8, &type metadata for CloudSocialProfile.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

_BYTE *sub_2176E9670(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSocialProfile.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CloudSocialProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176E9908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0A0;
  if (!qword_27CB2D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0A0);
  }

  return result;
}

unint64_t sub_2176E9960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0A8;
  if (!qword_27CB2D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0A8);
  }

  return result;
}

unint64_t sub_2176E99B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0B0;
  if (!qword_27CB2D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0B0);
  }

  return result;
}

unint64_t sub_2176E9A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0B8;
  if (!qword_27CB2D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0B8);
  }

  return result;
}

unint64_t sub_2176E9A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0C0;
  if (!qword_27CB2D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0C0);
  }

  return result;
}

unint64_t sub_2176E9AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0C8;
  if (!qword_27CB2D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0C8);
  }

  return result;
}

unint64_t sub_2176E9B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0D0;
  if (!qword_27CB2D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0D0);
  }

  return result;
}

unint64_t sub_2176E9B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0D8;
  if (!qword_27CB2D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0D8);
  }

  return result;
}

unint64_t sub_2176E9BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3BB8;
  if (!qword_280BE3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BB8);
  }

  return result;
}

unint64_t sub_2176E9C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3BC0;
  if (!qword_280BE3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BC0);
  }

  return result;
}

unint64_t sub_2176E9C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B98;
  if (!qword_280BE3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B98);
  }

  return result;
}

unint64_t sub_2176E9CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3BA0;
  if (!qword_280BE3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3BA0);
  }

  return result;
}

uint64_t sub_2176E9D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9E40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E9DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9E40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176E9E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0E8;
  if (!qword_27CB2D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0E8);
  }

  return result;
}

uint64_t sub_2176E9F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9FD0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176E9F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176E9FD0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176E9FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D0F8;
  if (!qword_27CB2D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D0F8);
  }

  return result;
}

uint64_t sub_2176EA044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EA100(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176EA080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EA100(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2176EA100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D108;
  if (!qword_27CB2D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D108);
  }

  return result;
}

uint64_t sub_2176EA174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EA32C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176EA1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EA32C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2176EA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = OUTLINED_FUNCTION_45_4();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v23();
  sub_2177532F8();
  (*(v28 + 8))(v31, v26);
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2176EA32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D118;
  if (!qword_27CB2D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D118);
  }

  return result;
}

uint64_t CloudPersonalRecommendation.Item.id.getter()
{
  v2 = type metadata accessor for CloudStation(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v4 = type metadata accessor for CloudPlaylist(0);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = type metadata accessor for CloudAlbum(0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2176EDF8C(v1, v0);
      sub_217751DE8();
      v19 = v0;
      v20 = type metadata accessor for CloudStation;
      goto LABEL_7;
    }

    v18 = type metadata accessor for CloudPlaylist;
    sub_2176EDF8C(v1, v8);
    sub_217751DE8();
    v19 = v8;
  }

  else
  {
    v18 = type metadata accessor for CloudAlbum;
    sub_2176EDF8C(v1, v13);
    sub_217751DE8();
    v19 = v13;
  }

  v20 = v18;
LABEL_7:
  sub_2176EAA28(v19, v20);
  return OUTLINED_FUNCTION_1_5();
}

uint64_t type metadata accessor for CloudPersonalRecommendation.Item(uint64_t a1)
{
  result = qword_27CB2D1A0;
  if (!qword_27CB2D1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudPersonalRecommendation.Item.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v38 = v3;
  v4 = OUTLINED_FUNCTION_101();
  v5 = type metadata accessor for CloudStation(v4);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  v37 = v7;
  v8 = OUTLINED_FUNCTION_206();
  v9 = type metadata accessor for CloudPlaylist(v8);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = type metadata accessor for CloudAlbum(0);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_2();
  type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D120, &qword_2177997B0);
  OUTLINED_FUNCTION_45_0(v26);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_70_0();
  v29 = *(v28 + 56);
  OUTLINED_FUNCTION_26_44();
  sub_2176EDFE8(v1, v0);
  sub_2176EDFE8(v38, v0 + v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_1_133();
      sub_2176EDFE8(v0, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_14_66();
        sub_2176EDF8C(v0 + v29, v13);
        static CloudPlaylist.== infix(_:_:)();
        sub_2176EAA28(v13, v1);
        v31 = v22;
LABEL_13:
        v35 = v1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_3_121();
      v33 = v22;
    }

    else
    {
      OUTLINED_FUNCTION_1_133();
      sub_2176EDFE8(v0, v19);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = v37;
        sub_2176EDF8C(v0 + v29, v37);
        static CloudStation.== infix(_:_:)();
        sub_2176EAA28(v34, type metadata accessor for CloudStation);
        v31 = v19;
        v35 = type metadata accessor for CloudStation;
LABEL_14:
        sub_2176EAA28(v31, v35);
        OUTLINED_FUNCTION_13_71();
        sub_2176EAA28(v0, v36);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_2_132();
      v33 = v19;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_133();
    sub_2176EDFE8(v0, v25);
    if (!swift_getEnumCaseMultiPayload())
    {
      v1 = type metadata accessor for CloudAlbum;
      sub_2176EDF8C(v0 + v29, v2);
      static CloudAlbum.== infix(_:_:)();
      sub_2176EAA28(v2, type metadata accessor for CloudAlbum);
      v31 = v25;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_147();
    v33 = v25;
  }

  sub_2176EAA28(v33, v32);
  sub_2171F0738(v0, &qword_27CB2D120, &qword_2177997B0);
LABEL_15:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176EAA28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

void CloudPersonalRecommendation.Item.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_31_12();
  v10 = type metadata accessor for CloudAlbum(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_2();
  v12 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_24_50();
      sub_2176EDF8C(v16, v3);
      MEMORY[0x21CEA3550](1);
      sub_217751FF8();
      OUTLINED_FUNCTION_57_12();
      CloudPlaylist.Attributes.hash(into:)();
      v18 = OUTLINED_FUNCTION_57_12();
      sub_217264C3C(v18);
      v19 = OUTLINED_FUNCTION_57_12();
      sub_21726492C(v19);
      v20 = OUTLINED_FUNCTION_57_12();
      sub_2172647B8(v20);
      v21 = v3;
    }

    else
    {
      v12 = type metadata accessor for CloudStation;
      sub_2176EDF8C(v16, v2);
      MEMORY[0x21CEA3550](2);
      sub_217751FF8();
      CloudStation.Attributes.hash(into:)();
      sub_217753208();
      sub_217753208();
      sub_217263DE0(v5);
      v21 = v2;
    }

    v22 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v16, v1);
    MEMORY[0x21CEA3550](0);
    sub_217751FF8();
    CloudAlbum.Attributes.hash(into:)();
    sub_21726504C(v5);
    sub_2171F5110(v1 + *(v10 + 28), v52, &qword_27CB24AA8, &qword_217759080);
    if (v52[2] == 1)
    {
      sub_217753208();
    }

    else
    {
      memcpy(v51, v52, sizeof(v51));
      sub_217753208();
      sub_21726473C(v5, v23, v24, v25, v26, v27, v28, v29);
      sub_2172640D4(v5, v30, v31, v32, v33, v34, v35, v36);
      sub_2172640D4(v5, v37, v38, v39, v40, v41, v42, v43);
      sub_217264414(v5, v44, v45, v46, v47, v48, v49, v50);
      sub_2172845E8(v51);
    }

    sub_217264150(v5);
    OUTLINED_FUNCTION_0_147();
    v21 = v1;
  }

  sub_2176EAA28(v21, v22);
  OUTLINED_FUNCTION_13();
}

uint64_t CloudPersonalRecommendation.Item.hashValue.getter()
{
  sub_2177531E8();
  CloudPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2176EAE28(uint64_t a1)
{
  sub_2177531E8();
  CloudPersonalRecommendation.Item.hash(into:)();
  return sub_217753238();
}

void CloudPersonalRecommendation.Item.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_171();
  v31 = v1;
  v32 = v6;
  v7 = type metadata accessor for CloudStation.Attributes(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v30 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v29 = type metadata accessor for CloudStation(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_2();
  v12 = type metadata accessor for CloudPlaylist.Attributes(0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_7_34();
  v15 = type metadata accessor for CloudPlaylist(v14);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v17 = OUTLINED_FUNCTION_31_12();
  v18 = type metadata accessor for CloudAlbum.Attributes(v17);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  v20 = type metadata accessor for CloudAlbum(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v31, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_66();
      sub_2176EDF8C(v3, v5);
      sub_2171FF30C(v32, v33);
      sub_2176EDFE8(v5 + *(v15 + 20), v4);
      sub_217385674(v33);
      OUTLINED_FUNCTION_45_1();
      v27 = v5;
    }

    else
    {
      OUTLINED_FUNCTION_23_56();
      sub_2176EDF8C(v3, v2);
      sub_2171FF30C(v32, v33);
      sub_2176EDFE8(v2 + *(v29 + 20), v30);
      sub_2173858E4();
      OUTLINED_FUNCTION_45_1();
      v27 = v2;
    }

    v28 = v24;
  }

  else
  {
    OUTLINED_FUNCTION_25_58();
    sub_2176EDF8C(v3, v24);
    sub_2171FF30C(v32, v33);
    sub_2176EDFE8(v24 + *(v20 + 20), v0);
    sub_217385620(v33);
    OUTLINED_FUNCTION_45_1();
    v27 = OUTLINED_FUNCTION_1_5();
  }

  sub_2176EAA28(v27, v28);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawRelationships(from:)()
{
  OUTLINED_FUNCTION_171();
  v57 = v3;
  v4 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  *(&v56 + 1) = v6;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_7_34();
  type metadata accessor for CloudPersonalRecommendation.Item(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_2();
  v58 = sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    v21 = OUTLINED_FUNCTION_45_4();
    sub_2176EDF8C(v21, v22);
    sub_2171F5110(v2 + *(v11 + 24), v59, &qword_27CB243C8, &unk_21775D390);
    if (v60 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v23);
      v19 = &qword_27CB243C8;
      v20 = &unk_21775D390;
      goto LABEL_7;
    }

    sub_2171F0738(v59, &qword_27CB243C8, &unk_21775D390);
    sub_2171FF30C(v57, v59);
    v35 = sub_217383708(&unk_28295E588);
    Dictionary<>.init(from:skippingValuesFor:)(v59, v35, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v34 = v2;
LABEL_15:
    sub_2176EAA28(v34, v33);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    v24 = *(&v56 + 1);
    sub_2176EDF8C(v0, *(&v56 + 1));
    if (*(*(&v56 + 1) + *(v4 + 24)))
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(*(&v56 + 1), v25);
      goto LABEL_16;
    }

    sub_2171FF30C(v57, v59);
    if (qword_280BE4D60 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_84();
    v41 = sub_217751DE8();
    sub_217383748(v41, v42, v43, v44, v45, v46, v47, v48, v56, v57, v58, v59[0], v59[1], v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v50 = v49;

    Dictionary<>.init(from:skippingValuesFor:)(v59, v50, v51, v52, v53, v54, v55);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v34 = v24;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  sub_2171F5110(v1 + *(v8 + 24), v59, &qword_27CB24358, &unk_21775D510);
  if (v60 != 1)
  {

    sub_2171F0738(v59, &qword_27CB24358, &unk_21775D510);
    sub_2171FF30C(v57, v59);
    OUTLINED_FUNCTION_84();
    v26 = sub_217751DE8();
    v27 = sub_217383728(v26);

    Dictionary<>.init(from:skippingValuesFor:)(v59, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v34 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v18);
  v19 = &qword_27CB24358;
  v20 = &unk_21775D510;
LABEL_7:
  sub_2171F0738(v59, v19, v20);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawAssociations(from:)()
{
  OUTLINED_FUNCTION_171();
  *(&v54 + 1) = v3;
  v4 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  *&v54 = v6;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_7_34();
  type metadata accessor for CloudPersonalRecommendation.Item(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_2();
  v55 = sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    v21 = OUTLINED_FUNCTION_45_4();
    sub_2176EDF8C(v21, v22);
    sub_2171F5110(v2 + *(v11 + 28), v56, &qword_27CB24AA8, &qword_217759080);
    if (v57 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v23);
      v19 = &qword_27CB24AA8;
      v20 = &qword_217759080;
      goto LABEL_7;
    }

    sub_2171F0738(v56, &qword_27CB24AA8, &qword_217759080);
    sub_2171FF30C(*(&v54 + 1), v56);
    v35 = sub_2173839EC(&unk_28295E650);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v35, v36, v37, v38, v39, v40);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v34 = v2;
LABEL_15:
    sub_2176EAA28(v34, v33);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    v24 = v0;
    v25 = v54;
    sub_2176EDF8C(v24, v54);
    if (*(v54 + *(v4 + 28)))
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v54, v26);
      goto LABEL_16;
    }

    sub_2171FF30C(*(&v54 + 1), v56);
    if (qword_27CB23E58 != -1)
    {
      swift_once();
    }

    sub_217383748(qword_27CB2C988, v41, v42, v43, v44, v45, v46, v47, v54, v55, v56[0], v56[1], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v34 = v25;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  sub_2171F5110(v1 + *(v8 + 28), v56, &qword_27CB24350, &unk_21776A5D0);
  if (v57 != 1)
  {

    sub_2171F0738(v56, &qword_27CB24350, &unk_21776A5D0);
    sub_2171FF30C(*(&v54 + 1), v56);
    v27 = sub_217383A0C(&unk_28295F028);
    Dictionary<>.init(from:skippingValuesFor:)(v56, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v34 = v1;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v18);
  v19 = &qword_27CB24350;
  v20 = &unk_21776A5D0;
LABEL_7:
  sub_2171F0738(v56, v19, v20);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v35 = v3;
  v4 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v34 = v6;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_7_34();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudPersonalRecommendation.Item(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  sub_217751DC8();
  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v0, v2);
    v22 = *(v11 + 32);
    sub_2171F5110(v2 + v22, &v37, &qword_27CB243C0, &unk_21775D3A0);
    if (v38 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v2, v23);
      v20 = &qword_27CB243C0;
      v21 = &unk_21775D3A0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v35, v36);
    OUTLINED_FUNCTION_48_0(v2 + v22);
    sub_217751DE8();
    v31 = OUTLINED_FUNCTION_31_16();
    sub_217387350(v31, v32, v33);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_0_147();
    v30 = v2;
LABEL_13:
    sub_2176EAA28(v30, v29);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    sub_2176EDF8C(v0, v34);
    v24 = *(v4 + 32);
    sub_2171F5110(v34 + v24, &v37, &qword_27CB24340, &unk_2177650B0);
    if (v38 == 1)
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v34, v25);
      v20 = &qword_27CB24340;
      v21 = &unk_2177650B0;
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v35, v36);
    OUTLINED_FUNCTION_48_0(v34 + v24);
    sub_217751DE8();
    OUTLINED_FUNCTION_31_16();
    sub_2173876D0();
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_2_132();
    v30 = v34;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_6_107();
  sub_2176EDF8C(v0, v1);
  v18 = *(v8 + 32);
  sub_2171F5110(v1 + v18, &v37, &qword_27CB24348, &unk_21775D520);
  if (v38 != 1)
  {

    OUTLINED_FUNCTION_46();
    sub_2171FF30C(v35, v36);
    OUTLINED_FUNCTION_48_0(v1 + v18);
    sub_217751DE8();
    v26 = OUTLINED_FUNCTION_31_16();
    sub_217387380(v26, v27, v28);
    OUTLINED_FUNCTION_75_7();
    OUTLINED_FUNCTION_3_121();
    v30 = v1;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v1, v19);
  v20 = &qword_27CB24348;
  v21 = &unk_21775D520;
LABEL_9:
  sub_2171F0738(&v37, v20, v21);
LABEL_14:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v1;
  v21 = v6;
  v22 = v5;
  v7 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v9 = type metadata accessor for CloudPlaylist(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_7_34();
  v12 = type metadata accessor for CloudAlbum(v11);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_1_133();
  sub_2176EDFE8(v4, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_14_66();
      sub_2176EDF8C(v0, v3);
      sub_2173884CC(v3 + *(v9 + 20), v21, v22);
      OUTLINED_FUNCTION_45_1();
      v19 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_23_56();
      sub_2176EDF8C(v0, v2);
      sub_2173885F8(v2 + *(v7 + 20), v21, v22);
      OUTLINED_FUNCTION_45_1();
      v19 = v2;
    }

    v20 = v16;
  }

  else
  {
    OUTLINED_FUNCTION_25_58();
    sub_2176EDF8C(v0, v16);
    sub_217388478(v16 + *(v12 + 20), v21, v22);
    OUTLINED_FUNCTION_45_1();
    v19 = OUTLINED_FUNCTION_1_5();
  }

  sub_2176EAA28(v19, v20);
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v46 = v17;
  v18 = OUTLINED_FUNCTION_206();
  v19 = type metadata accessor for CloudPlaylist(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudAlbum(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v24 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudPersonalRecommendation.Item(v24);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v26 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v26, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v10, v12);
    sub_2171F5110(v12 + *(v22 + 24), v48, &qword_27CB243C8, &unk_21775D390);
    OUTLINED_FUNCTION_54();
    if (!v29)
    {

      memcpy(v49, v48, 0x300uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388868(v39, v40, v41);
      OUTLINED_FUNCTION_98();
      sub_21726A4EC(v49);
      OUTLINED_FUNCTION_0_147();
      v38 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_147();
    sub_2176EAA28(v12, v33);
    v31 = &qword_27CB243C8;
    v32 = &unk_21775D390;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_107();
    sub_2176EDF8C(v10, v11);
    sub_2171F5110(v11 + *(v19 + 24), v48, &qword_27CB24358, &unk_21775D510);
    OUTLINED_FUNCTION_54();
    if (!v29)
    {

      memcpy(v49, v48, 0x380uLL);
      OUTLINED_FUNCTION_52_15();
      sub_2173888A8(v34, v35, v36);
      OUTLINED_FUNCTION_98();
      sub_21726A354(v49);
      OUTLINED_FUNCTION_3_121();
      v38 = v11;
LABEL_14:
      sub_2176EAA28(v38, v37);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_121();
    sub_2176EAA28(v11, v30);
    v31 = &qword_27CB24358;
    v32 = &unk_21775D510;
LABEL_11:
    sub_2171F0738(v48, v31, v32);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_105();
  sub_2176EDF8C(v10, v46);
  if (*(v46 + *(v15 + 24)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v47, v49);
    v42 = sub_2174D4AA8(v49);
    if (!a10)
    {
      v43 = v42;
      v44 = sub_217751DE8();
      sub_2174D37FC(v44, v43);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_132();
  sub_2176EAA28(v46, v45);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_60_1(v13, v14);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v46 = v17;
  v18 = OUTLINED_FUNCTION_206();
  v19 = type metadata accessor for CloudPlaylist(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_7_34();
  v22 = type metadata accessor for CloudAlbum(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v24 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudPersonalRecommendation.Item(v24);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v26 = OUTLINED_FUNCTION_135();
  sub_2176EDFE8(v26, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v10, v12);
    sub_2171F5110(v12 + *(v22 + 28), v48, &qword_27CB24AA8, &qword_217759080);
    OUTLINED_FUNCTION_54();
    if (!v29)
    {

      memcpy(v49, v48, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C10(v39, v40, v41);
      OUTLINED_FUNCTION_98();
      sub_2172845E8(v49);
      OUTLINED_FUNCTION_0_147();
      v38 = v12;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_0_147();
    sub_2176EAA28(v12, v33);
    v31 = &qword_27CB24AA8;
    v32 = &qword_217759080;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_6_107();
    sub_2176EDF8C(v10, v11);
    sub_2171F5110(v11 + *(v19 + 28), v48, &qword_27CB24350, &unk_21776A5D0);
    OUTLINED_FUNCTION_54();
    if (!v29)
    {

      memcpy(v49, v48, 0x200uLL);
      OUTLINED_FUNCTION_52_15();
      sub_217388C50(v34, v35, v36);
      OUTLINED_FUNCTION_98();
      sub_21726A300(v49);
      OUTLINED_FUNCTION_3_121();
      v38 = v11;
LABEL_14:
      sub_2176EAA28(v38, v37);
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_3_121();
    sub_2176EAA28(v11, v30);
    v31 = &qword_27CB24350;
    v32 = &unk_21776A5D0;
LABEL_11:
    sub_2171F0738(v48, v31, v32);
    OUTLINED_FUNCTION_53();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_5_105();
  sub_2176EDF8C(v10, v46);
  if (*(v46 + *(v15 + 28)))
  {
    OUTLINED_FUNCTION_53();
  }

  else
  {

    sub_2171FF30C(v47, v49);
    v42 = sub_2174D53F4(v49);
    if (!a10)
    {
      v43 = v42;
      v44 = sub_217751DE8();
      sub_2174D37FC(v44, v43);
      OUTLINED_FUNCTION_98();
    }
  }

  OUTLINED_FUNCTION_2_132();
  sub_2176EAA28(v46, v45);
LABEL_18:
  OUTLINED_FUNCTION_170();
}

void CloudPersonalRecommendation.Item.mergeMetadata(with:for:)()
{
  OUTLINED_FUNCTION_171();
  v3 = v2;
  v4 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v33 = v6;
  v7 = OUTLINED_FUNCTION_206();
  v8 = type metadata accessor for CloudPlaylist(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_7_34();
  v11 = type metadata accessor for CloudAlbum(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CloudPersonalRecommendation.Item(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_2();
  if (*(v3 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_1_5();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v3, v1);
    sub_2171F5110(v1 + *(v11 + 32), v34, &qword_27CB243C0, &unk_21775D3A0);
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_0_147();
      sub_2176EAA28(v1, v23);
      v21 = &qword_27CB243C0;
      v22 = &unk_21775D3A0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    v30 = OUTLINED_FUNCTION_43_8();
    sub_217388E48(v30, v31, v32);
    OUTLINED_FUNCTION_75_7();
    sub_21726A498(v36);
    OUTLINED_FUNCTION_0_147();
    v29 = v1;
LABEL_15:
    sub_2176EAA28(v29, v28);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_5_105();
    sub_2176EDF8C(v3, v33);
    sub_2171F5110(v33 + *(v4 + 32), v34, &qword_27CB24340, &unk_2177650B0);
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_2_132();
      sub_2176EAA28(v33, v24);
      v21 = &qword_27CB24340;
      v22 = &unk_2177650B0;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_50_11();
    OUTLINED_FUNCTION_43_8();
    sub_217388F30();
    OUTLINED_FUNCTION_75_7();
    sub_21726A258(v36);
    OUTLINED_FUNCTION_2_132();
    v29 = v33;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_6_107();
  v18 = OUTLINED_FUNCTION_45_4();
  sub_2176EDF8C(v18, v19);
  sub_2171F5110(v0 + *(v8 + 32), v34, &qword_27CB24348, &unk_21775D520);
  if (v35 != 1)
  {

    OUTLINED_FUNCTION_50_11();
    v25 = OUTLINED_FUNCTION_43_8();
    sub_217388E88(v25, v26, v27);
    OUTLINED_FUNCTION_75_7();
    sub_21726A2AC(v36);
    OUTLINED_FUNCTION_3_121();
    v29 = v0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_121();
  sub_2176EAA28(v0, v20);
  v21 = &qword_27CB24348;
  v22 = &unk_21775D520;
LABEL_11:
  sub_2171F0738(v34, v21, v22);
LABEL_16:
  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2176EC80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EDF38(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2176EC848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2176EDF38(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudPersonalRecommendation.Item.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v89 = v6;
  v85 = sub_217752B38();
  OUTLINED_FUNCTION_0_0();
  v88 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v87 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudStation(v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  v86 = v13;
  v14 = OUTLINED_FUNCTION_206();
  v15 = type metadata accessor for CloudPlaylist(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = type metadata accessor for CloudAlbum(0);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D128, &qword_2177997B8);
  OUTLINED_FUNCTION_0_0();
  v92 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_167();
  v25 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_4();
  v102 = v5;
  v27 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2176EDF38(v27, v28, v29);
  v30 = sub_2177532C8();
  if (!v0)
  {
    v33 = v1;
    v84 = v19;
    v93 = v3;
    v34 = v92;
    sub_21733BE84(v30, v31, v32);
    sub_217752EA8();
    v35 = v22;
    v37 = v97;
    v36 = v98;
    v38 = v99;
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (static Array<A>.~= infix(_:_:)(off_280BE7F10, &v97))
    {
      goto LABEL_15;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v39 = qword_280BE5748 == v37 && unk_280BE5750 == v36;
    if (v39 || (sub_217753058() & 1) != 0)
    {
LABEL_15:

      OUTLINED_FUNCTION_46_34();
      CloudAlbum.init(from:)(&v97, v40, v41, v42, v43, v44, v45, v46, v79, v80, SWORD2(v80), SBYTE6(v80), SHIBYTE(v80), v82, v84, v85, v86, v87, v88, v89, v92, v93, v97);
      (*(v34 + 8))(v2, v35);
      OUTLINED_FUNCTION_4_128();
      v47 = v33;
      v48 = v94;
      sub_2176EDF8C(v47, v94);
    }

    else
    {
      if (qword_280BE4610 != -1)
      {
        swift_once();
      }

      v97 = v37;
      v98 = v36;
      v99 = v38;
      v81 = v25;
      v83 = v2;
      if (static Array<A>.~= infix(_:_:)(off_280BE4618, &v97))
      {
        goto LABEL_28;
      }

      if (qword_280BE4788 != -1)
      {
        swift_once();
      }

      v50 = qword_280BE4790 == v37 && *algn_280BE4798 == v36;
      if (v50 || (sub_217753058() & 1) != 0)
      {
LABEL_28:

        OUTLINED_FUNCTION_46_34();
        v51 = v84;
        CloudPlaylist.init(from:)(&v97, v52, v53, v54, v55, v56, v57, v58, v79, v81, SWORD2(v81), SBYTE6(v81), SHIBYTE(v81), v2, v84, v85, v86, v87, v88, v89, v92, v93, v97);
        v59 = OUTLINED_FUNCTION_55_27();
        v60(v59);
        OUTLINED_FUNCTION_6_107();
        v48 = v95;
        sub_2176EDF8C(v51, v95);
        v49 = v91;
        goto LABEL_17;
      }

      if (qword_280BE4DA0 != -1)
      {
        swift_once();
      }

      v97 = v37;
      v98 = v36;
      v99 = v38;
      if (!static Array<A>.~= infix(_:_:)(off_280BE4DA8, &v97))
      {
        v71 = v35;
        v72 = v36;
        v36 = v102;
        __swift_project_boxed_opaque_existential_1(v102, v102[3]);
        sub_217753298();
        v97 = 0;
        v98 = 0xE000000000000000;
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177ADC50);
        v100 = 34;
        v101 = 0xE100000000000000;
        MEMORY[0x21CEA23B0](v37, v72);
        MEMORY[0x21CEA23B0](34, 0xE100000000000000);

        MEMORY[0x21CEA23B0](v100, v101, v73);

        MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177B5A30, v74);
        sub_217752B08();
        v75 = sub_217752B48();
        swift_allocError();
        v77 = v76;
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
        *v77 = v25;
        (*(v88 + 16))(v77 + v78, v87, v85);
        (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
        swift_willThrow();
        (*(v88 + 8))(v87, v85);
        (*(v92 + 8))(v83, v71);
        goto LABEL_4;
      }

      OUTLINED_FUNCTION_46_34();
      v61 = v86;
      CloudStation.init(from:)(&v97, v62, v63, v64, v65, v66, v67, v68, v79, v25, SWORD2(v25), SBYTE6(v25), SHIBYTE(v25), v2, v84, v85, v86, v87, v88, v89, v92, v93, v97);
      v69 = OUTLINED_FUNCTION_55_27();
      v70(v69);
      OUTLINED_FUNCTION_5_105();
      v48 = v96;
      sub_2176EDF8C(v61, v96);
    }

    v49 = v90;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_2176EDF8C(v48, v49);
    goto LABEL_4;
  }

  v36 = v102;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v36);
  OUTLINED_FUNCTION_170();
}

uint64_t CloudPersonalRecommendation.Item.encode(to:)()
{
  v3 = OUTLINED_FUNCTION_101();
  v4 = type metadata accessor for CloudStation(v3);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  v9 = type metadata accessor for CloudPlaylist(0);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v11 = type metadata accessor for CloudAlbum(0);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudPersonalRecommendation.Item(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_133();
  v15 = OUTLINED_FUNCTION_45_4();
  sub_2176EDFE8(v15, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2176EDF8C(v2, v8);
      CloudStation.encode(to:)();
      v18 = v8;
      v19 = type metadata accessor for CloudStation;
      return sub_2176EAA28(v18, v19);
    }

    OUTLINED_FUNCTION_24_50();
    sub_2176EDF8C(v2, v0);
    CloudPlaylist.encode(to:)();
    v18 = v0;
  }

  else
  {
    v8 = type metadata accessor for CloudAlbum;
    sub_2176EDF8C(v2, v1);
    CloudAlbum.encode(to:)();
    v18 = v1;
  }

  v19 = v8;
  return sub_2176EAA28(v18, v19);
}

void MusicPersonalRecommendation.Item.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v142 = v0;
  v143 = v1;
  v3 = v2;
  v144 = v4;
  v6 = v5;
  v146 = v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v133 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v134 = &v124 - v12;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudStation(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_81();
  v137 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v131 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v124 - v22;
  v24 = type metadata accessor for CloudPlaylist(0);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_81();
  v136 = v26;
  v145 = v3;
  v141 = *(v3 - 8);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_81();
  v139 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_1();
  v130 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v124 - v34;
  v36 = type metadata accessor for CloudAlbum(0);
  v37 = OUTLINED_FUNCTION_45_0(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  v135 = v38;
  v39 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudPersonalRecommendation.Item(v39);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_1();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v124 - v45;
  OUTLINED_FUNCTION_26_44();
  v138 = v6;
  sub_2176EDFE8(v6, v46);
  v140 = v46;
  sub_2176EDFE8(v46, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_6_107();
      v137 = v48;
      v49 = v136;
      sub_2176EDF8C(v43, v136);
      sub_2176EDFE8(v49, v23);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v51 = v50[10];
      v52 = v23;
      v53 = v138;
      v54 = v138 + v50[9];
      v55 = *v54;
      v133 = *(v54 + 8);
      v56 = v133;
      LODWORD(v127) = *(v54 + 16);
      v57 = v138 + v51;
      v58 = *(v138 + v51);
      v59 = *(v57 + 8);
      v128 = v55;
      v129 = v58;
      v130 = v59;
      v126 = v50[11];
      memcpy(v148, (v138 + v126), 0x180uLL);
      v60 = v50[13];
      v132 = *(v138 + v50[12]);
      v61 = v132;
      v62 = *(v138 + v60);
      v63 = *(v138 + v50[14]);
      v64 = *(v138 + v50[15]);
      v134 = v63;
      v135 = v64;
      v65 = v52 + v17[9];
      *v65 = v128;
      *(v65 + 8) = v56;
      *(v65 + 16) = v127;
      v66 = (v52 + v17[10]);
      *v66 = v129;
      v66[1] = v59;
      memcpy((v52 + v17[11]), (v53 + v126), 0x180uLL);
      *(v52 + v17[12]) = v61;
      *(v52 + v17[13]) = v62;
      *(v52 + v17[14]) = v63;
      *(v52 + v17[15]) = v64;
      sub_2171F5110(v52, v131, &qword_27CB24790, &unk_21775A220);
      v67 = OUTLINED_FUNCTION_44_12();
      v68(v67, v144, v145);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v148, v147, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Playlist.init<A>(_:configuration:sharedRelatedItemStore:)();
      v69 = OUTLINED_FUNCTION_135();
      v70(v69);
      sub_2171F0738(v53, &qword_27CB24948, &unk_21775A210);
      sub_2171F0738(v52, &qword_27CB24790, &unk_21775A220);
      sub_2176EAA28(v136, v137);
      OUTLINED_FUNCTION_13_71();
      sub_2176EAA28(v140, v71);
      OUTLINED_FUNCTION_15_28();
      v73 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_105();
      v136 = v98;
      v99 = v137;
      sub_2176EDF8C(v43, v137);
      v100 = v134;
      sub_2176EDFE8(v99, v134);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      v102 = v101[10];
      v103 = v138;
      v104 = v138 + v101[9];
      v105 = *v104;
      v130 = *(v104 + 8);
      v106 = v130;
      v125 = *(v104 + 16);
      v107 = v138 + v102;
      v108 = *(v138 + v102);
      v109 = *(v107 + 8);
      v126 = v105;
      v127 = v108;
      v128 = v109;
      v124 = v101[11];
      memcpy(v148, (v138 + v124), 0x180uLL);
      v110 = v101[13];
      v129 = *(v138 + v101[12]);
      v111 = v129;
      v112 = *(v138 + v110);
      v113 = v101[15];
      v131 = *(v138 + v101[14]);
      v114 = v131;
      v135 = *(v138 + v113);
      v115 = v135;
      v116 = v132;
      v117 = v100 + *(v132 + 36);
      *v117 = v126;
      *(v117 + 8) = v106;
      *(v117 + 16) = v125;
      v118 = (v100 + v116[10]);
      *v118 = v127;
      v118[1] = v109;
      memcpy((v100 + v116[11]), (v103 + v124), 0x180uLL);
      *(v100 + v116[12]) = v111;
      *(v100 + v116[13]) = v112;
      *(v100 + v116[14]) = v114;
      *(v100 + v116[15]) = v115;
      sub_2171F5110(v100, v133, &qword_27CB24738, &qword_217758CC0);
      v119 = OUTLINED_FUNCTION_44_12();
      v121 = v144;
      v120 = v145;
      v122(v119, v144, v145);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F5110(v148, v147, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Station.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v111 + 8))(v121, v120);
      sub_2171F0738(v103, &qword_27CB24948, &unk_21775A210);
      sub_2171F0738(v100, &qword_27CB24738, &qword_217758CC0);
      sub_2176EAA28(v137, v136);
      OUTLINED_FUNCTION_13_71();
      sub_2176EAA28(v140, v123);
      OUTLINED_FUNCTION_15_28();
      v73 = 2;
    }

    *(v72 + 56) = v73;
  }

  else
  {
    OUTLINED_FUNCTION_4_128();
    v137 = v74;
    v75 = v135;
    sub_2176EDF8C(v43, v135);
    sub_2176EDFE8(v75, v35);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v77 = v76[10];
    v78 = v138;
    v79 = v138 + v76[9];
    v80 = *v79;
    v133 = *(v79 + 8);
    v81 = v133;
    LODWORD(v127) = *(v79 + 16);
    v82 = *(v138 + v77 + 8);
    v131 = *(v138 + v77);
    v128 = v80;
    v129 = v82;
    v83 = v76[11];
    memcpy(v148, (v138 + v83), 0x180uLL);
    v84 = v76[13];
    v132 = *(v138 + v76[12]);
    v85 = v132;
    v86 = *(v138 + v84);
    v87 = v76[15];
    v134 = *(v138 + v76[14]);
    v88 = v134;
    v136 = *(v138 + v87);
    v89 = v136;
    v90 = &v35[v29[9]];
    *v90 = v128;
    *(v90 + 1) = v81;
    v90[16] = v127;
    v91 = &v35[v29[10]];
    v92 = v129;
    *v91 = v131;
    *(v91 + 1) = v92;
    memcpy(&v35[v29[11]], (v78 + v83), 0x180uLL);
    *&v35[v29[12]] = v85;
    *&v35[v29[13]] = v86;
    *&v35[v29[14]] = v88;
    *&v35[v29[15]] = v89;
    sub_2171F5110(v35, v130, &qword_27CB247F0, &qword_21775D360);
    v93 = v141;
    v95 = v144;
    v94 = v145;
    (*(v141 + 16))(v139, v144, v145);
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F5110(v148, v147, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    Album.init<A>(_:configuration:sharedRelatedItemStore:)();
    (*(v93 + 8))(v95, v94);
    sub_2171F0738(v78, &qword_27CB24948, &unk_21775A210);
    sub_2171F0738(v35, &qword_27CB247F0, &qword_21775D360);
    sub_2176EAA28(v135, v137);
    OUTLINED_FUNCTION_13_71();
    sub_2176EAA28(v140, v96);
    OUTLINED_FUNCTION_15_28();
    *(v97 + 56) = 0;
  }

  OUTLINED_FUNCTION_13();
}

void MusicPersonalRecommendation.Item.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  v70 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  sub_217283ECC(v0, &v72);
  if (v73)
  {
    if (v73 == 1)
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Playlist.convertToCloudResource<A>(configuration:)();
      sub_21726B8C4(v71);
      OUTLINED_FUNCTION_6_107();
      sub_2176EDF8C(v11, v3);
      type metadata accessor for CloudPersonalRecommendation.Item(0);
      swift_storeEnumTagMultiPayload();
      v16 = v8[10];
      v17 = &v11[v8[9]];
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = v17[16];
      v21 = *&v11[v8[12]];
      v69 = v8[11];
      v70 = v21;
      v22 = v8[14];
      v68 = *&v11[v8[13]];
      v24 = *&v11[v16];
      v23 = *&v11[v16 + 8];
      v25 = *&v11[v22];
      v26 = *&v11[v8[15]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      OUTLINED_FUNCTION_79_6();
      *v27 = v18;
      *(v27 + 8) = v19;
      *(v27 + 16) = v20;
      v29 = (v3 + *(v28 + 40));
      *v29 = v24;
      v29[1] = v23;
      v30 = OUTLINED_FUNCTION_41_14(v28);
      memcpy(v30, &v11[v31], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v32) = v25;
      *(v3 + *(v0 + 60)) = v26;
    }

    else
    {
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_40_1();
      Station.convertToCloudResource<A>(configuration:)();
      sub_217283DC8(v71);
      OUTLINED_FUNCTION_5_105();
      sub_2176EDF8C(v7, v3);
      type metadata accessor for CloudPersonalRecommendation.Item(0);
      swift_storeEnumTagMultiPayload();
      v50 = v4[10];
      v51 = &v7[v4[9]];
      v52 = *v51;
      v53 = *(v51 + 1);
      v54 = v51[16];
      v55 = *&v7[v4[12]];
      v69 = v4[11];
      v70 = v55;
      v56 = v4[14];
      v68 = *&v7[v4[13]];
      v58 = *&v7[v50];
      v57 = *&v7[v50 + 8];
      v59 = *&v7[v56];
      v60 = *&v7[v4[15]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
      OUTLINED_FUNCTION_79_6();
      *v61 = v52;
      *(v61 + 8) = v53;
      *(v61 + 16) = v54;
      v63 = (v3 + *(v62 + 40));
      *v63 = v58;
      v63[1] = v57;
      v64 = OUTLINED_FUNCTION_41_14(v62);
      memcpy(v64, &v7[v65], 0x180uLL);
      OUTLINED_FUNCTION_18_0();
      *(v3 + v66) = v59;
      *(v3 + *(v0 + 60)) = v60;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_40_1();
    Album.convertToCloudResource<A>(configuration:)();
    sub_21725CE44(v71);
    OUTLINED_FUNCTION_4_128();
    sub_2176EDF8C(v15, v3);
    type metadata accessor for CloudPersonalRecommendation.Item(0);
    swift_storeEnumTagMultiPayload();
    v33 = v12[10];
    v34 = &v15[v12[9]];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = v34[16];
    v38 = *&v15[v12[12]];
    v69 = v12[11];
    v70 = v38;
    v39 = v12[14];
    v68 = *&v15[v12[13]];
    v41 = *&v15[v33];
    v40 = *&v15[v33 + 8];
    v42 = *&v15[v39];
    v43 = *&v15[v12[15]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    OUTLINED_FUNCTION_79_6();
    *v44 = v35;
    *(v44 + 8) = v36;
    *(v44 + 16) = v37;
    v46 = (v3 + *(v45 + 40));
    *v46 = v41;
    v46[1] = v40;
    v47 = OUTLINED_FUNCTION_41_14(v45);
    memcpy(v47, &v15[v48], 0x180uLL);
    OUTLINED_FUNCTION_18_0();
    *(v3 + v49) = v42;
    *(v3 + *(v0 + 60)) = v43;
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_2176EDF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D130;
  if (!qword_27CB2D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D130);
  }

  return result;
}

uint64_t sub_2176EDF8C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2176EDFE8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_2176EE048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D138;
  if (!qword_27CB2D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D138);
  }

  return result;
}

unint64_t sub_2176EE0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D140;
  if (!qword_27CB2D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D140);
  }

  return result;
}

unint64_t sub_2176EE0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D148;
  if (!qword_27CB2D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D148);
  }

  return result;
}

unint64_t sub_2176EE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D150;
  if (!qword_27CB2D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D150);
  }

  return result;
}

unint64_t sub_2176EE1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D158;
  if (!qword_27CB2D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D158);
  }

  return result;
}

unint64_t sub_2176EE200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D160;
  if (!qword_27CB2D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D160);
  }

  return result;
}

unint64_t sub_2176EE258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D168;
  if (!qword_27CB2D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D168);
  }

  return result;
}

unint64_t sub_2176EE2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D170;
  if (!qword_27CB2D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D170);
  }

  return result;
}

unint64_t sub_2176EE30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D178;
  if (!qword_27CB2D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D178);
  }

  return result;
}

unint64_t sub_2176EE364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D180;
  if (!qword_27CB2D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D180);
  }

  return result;
}

unint64_t sub_2176EE3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D188;
  if (!qword_27CB2D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D188);
  }

  return result;
}

uint64_t sub_2176EE478(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudPersonalRecommendation.Item(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_2176EE4FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_2176EE5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1B0;
  if (!qword_27CB2D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1B0);
  }

  return result;
}

unint64_t sub_2176EE644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1B8;
  if (!qword_27CB2D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1B8);
  }

  return result;
}

unint64_t sub_2176EE69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1C0;
  if (!qword_27CB2D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1C0);
  }

  return result;
}

unint64_t sub_2176EE6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1C8;
  if (!qword_27CB2D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1C8);
  }

  return result;
}

unint64_t sub_2176EE74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1D0;
  if (!qword_27CB2D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1D0);
  }

  return result;
}

unint64_t sub_2176EE7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1D8;
  if (!qword_27CB2D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1D8);
  }

  return result;
}

unint64_t sub_2176EE7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1E0;
  if (!qword_27CB2D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1E0);
  }

  return result;
}

unint64_t sub_2176EE854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1E8;
  if (!qword_27CB2D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1E8);
  }

  return result;
}

unint64_t sub_2176EE8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1F0;
  if (!qword_27CB2D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1F0);
  }

  return result;
}

unint64_t sub_2176EE904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D1F8;
  if (!qword_27CB2D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D1F8);
  }

  return result;
}

unint64_t sub_2176EE95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D200;
  if (!qword_27CB2D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D200);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_46_34()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_48_24(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.rawValue.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t sub_2176EEBD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2176EEC10@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudTonic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 3;
  if (v3 < 3)
  {
    v4 = v3;
  }

  *a2 = v4;
}

uint64_t CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.rawValue.getter()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61727475656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

unint64_t sub_2176EEDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D208;
  if (!qword_27CB2D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D208);
  }

  return result;
}

uint64_t sub_2176EEE0C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAudioAnalysis.CloudCompositeAttributeTonality.CloudMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2176EEE38()
{
  result = qword_27CB2D210;
  if (!qword_27CB2D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2D218, &qword_21779A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D210);
  }

  return result;
}

unint64_t sub_2176EEF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D220;
  if (!qword_27CB2D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D220);
  }

  return result;
}

_BYTE *_s9CloudModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2176EF0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D228;
  if (!qword_27CB2D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D228);
  }

  return result;
}

unint64_t sub_2176EF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D230;
  if (!qword_27CB2D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D230);
  }

  return result;
}

void *sub_2176EF170@<X0>(void *a1@<X8>)
{
  v8[3] = &type metadata for Track;
  v8[4] = &protocol witness table for Track;
  v8[0] = swift_allocObject();
  sub_217275710(v1, v8[0] + 16);
  __swift_project_boxed_opaque_existential_1(v8, &type metadata for Track);
  Track.propertyProvider.getter();
  v3 = v7[3];
  v4 = v7[4];
  OUTLINED_FUNCTION_16_55(v7);
  (*(v5 + 24))(__src, v3, v4);
  sub_21729C644(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return memcpy(a1, __src, 0x161uLL);
}

void sub_2176EF244()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  type metadata accessor for MusicPersonalRecommendation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_2();
  sub_2176F2B38(v0, v1, type metadata accessor for MusicPersonalRecommendation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(&v62, v89);
    __swift_project_boxed_opaque_existential_1(v89, v91);
    v5 = OUTLINED_FUNCTION_17_24();
    v6(v5);
    __swift_project_boxed_opaque_existential_1(v88, v88[3]);
    v7 = OUTLINED_FUNCTION_17_24();
    v8(v7);
    sub_21729C644(v88);
    v9 = v62;
    v10 = *(&v63 + 1);
    v58 = v63;
    v59 = *(&v62 + 1);
    v11 = v64;
    v56 = v65;
    v57 = v66;
    v54 = v67;
    v55 = v68;
    v52 = v69;
    v53 = v70;
    v50 = v71;
    v51 = v72;
    v48 = v73;
    v49 = v74;
    v46 = v75;
    v47 = v76;
    v44 = v77;
    v45 = v78;
    v12 = v79;
    v13 = v80;
    v14 = v81;
    v61 = v82;
    v60 = v83;
    v15 = v84;
    v42 = v85;
    v43 = v86;
    v16 = v87;
    __swift_destroy_boxed_opaque_existential_1(v89);
    v18 = v42;
    v17 = v43;
    v20 = v44;
    v19 = v45;
    v22 = v46;
    v21 = v47;
    v24 = v48;
    v23 = v49;
    v25 = v50;
    v26 = v51;
    v28 = v52;
    v27 = v53;
    v30 = v54;
    v29 = v55;
    v31 = v56;
    v32 = v57;
    v33 = v14;
    v34 = v58;
    v35 = v59;
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    sub_2171F0738(&v62, &qword_27CB24B68, &qword_217759430);
    if (qword_27CB23E68 != -1)
    {
      swift_once();
    }

    if (*(off_27CB2CDD0 + 2) == 1)
    {
      v36 = *(off_27CB2CDD0 + 4);
      v37 = *(off_27CB2CDD0 + 48);
      v38 = sub_217751DE8();
    }

    else
    {
      v36 = 0;
      v38 = 0;
      v37 = 0;
    }

    v40 = *v0;
    v39 = v0[1];
    v89[0] = v36;
    v89[1] = v38;
    v90 = v37;
    sub_217751DE8();
    v92.value.rawValue._countAndFlagsBits = v89;
    v41.rawValue._countAndFlagsBits = v40;
    v41.rawValue._object = v39;
    MusicCatalogID.init(value:type:)(v41, v92);
    v35 = *(&v62 + 1);
    v9 = v62;
    v11 = v63;
    if (qword_27CB23C90 != -1)
    {
      swift_once();
    }

    v61 = xmmword_27CB29958;
    v15 = *(&xmmword_27CB29968 + 1);
    v60 = xmmword_27CB29968;
    sub_217751DE8();
    sub_217751DE8();

    v13 = 0;
    v31 = 0uLL;
    v16 = 4;
    v33 = &unk_28295BBE8;
    v32 = 0uLL;
    v30 = 0uLL;
    v29 = 0uLL;
    v28 = 0uLL;
    v27 = 0uLL;
    v12 = MEMORY[0x277D84FA0];
    v25 = 0uLL;
    v34 = v9;
    v26 = 0uLL;
    v10 = v35;
    v24 = 0uLL;
    v23 = 0uLL;
    v22 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
  }

  *v3 = v9;
  *(v3 + 8) = v35;
  *(v3 + 16) = v34;
  *(v3 + 24) = v10;
  *(v3 + 32) = v11;
  *(v3 + 40) = v31;
  *(v3 + 56) = v32;
  *(v3 + 72) = v30;
  *(v3 + 88) = v29;
  *(v3 + 104) = v28;
  *(v3 + 120) = v27;
  *(v3 + 136) = v25;
  *(v3 + 152) = v26;
  *(v3 + 168) = v24;
  *(v3 + 184) = v23;
  *(v3 + 200) = v22;
  *(v3 + 216) = v21;
  *(v3 + 232) = v20;
  *(v3 + 248) = v19;
  *(v3 + 264) = v12;
  *(v3 + 272) = v13;
  *(v3 + 280) = v33;
  *(v3 + 288) = v61;
  *(v3 + 304) = v60;
  *(v3 + 312) = v15;
  *(v3 + 320) = v18;
  *(v3 + 336) = v17;
  *(v3 + 352) = v16;
  OUTLINED_FUNCTION_13();
}

uint64_t Playlist.Entry.item.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
  }

  v26 = qword_280BE66E0;

  return sub_2176CA244(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void Playlist.Entry.init(item:existingEntry:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB29728, &unk_217778720);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_2();
  sub_21729C5E8(v2 + 16, v22);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v13 + 96))(v25, v12, v13);
  sub_21729C644(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_4_14();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    sub_2176F27A4(v9, v0);
    v17 = *(v10 + 40);
    sub_2171F0738(v0 + v17, &qword_27CB27D20, &qword_217758B80);
    sub_21729C79C(v4, v0 + v17);
    v25[3] = v10;
    v25[4] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_9_88(boxed_opaque_existential_0);
    Playlist.Entry.init(propertyProvider:)(v25, v6);
    sub_2172758B4(v2);
    sub_21729C7F8(v4);
    sub_2176F2808(v0);
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v10);
    sub_2171F0738(v9, &qword_27CB29728, &unk_217778720);
    sub_217752D08();
    __break(1u);
  }
}

void *Playlist.Entry.artwork.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
  }

  sub_2176CA244(qword_280BE66E0, a1, a2, a3, a4, a5, a6, a7, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
  if (v34[56] == 255)
  {
    sub_2171F0738(v34, &qword_27CB27D20, &qword_217758B80);
    sub_2172A497C(__dst);
  }

  else
  {
    sub_21729C79C(v34, v32);
    if (v32[56] == 1)
    {
      OUTLINED_FUNCTION_13_72();
      if (qword_280BE9708 != -1)
      {
        swift_once();
      }

      sub_2176CA860(qword_280C02840, v9, v10, v11, v12, v13, v14, v15, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
      sub_217283B58(__dst);
    }

    else
    {
      OUTLINED_FUNCTION_13_72();
      if (qword_280BE6B50 != -1)
      {
        swift_once();
      }

      sub_2176CA83C(qword_280C02258, v23, v24, v25, v26, v27, v28, v29, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
      sub_217283C08(__dst);
    }

    sub_21729C7F8(v34);
    memcpy(v31, __src, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v31) != 1)
    {
      return memcpy(a8, __src, 0x221uLL);
    }

    memcpy(__dst, __src, 0x221uLL);
  }

  if (qword_280BE66C8 != -1)
  {
    swift_once();
  }

  sub_2176CB478(qword_280C02048, v16, v17, v18, v19, v20, v21, v22, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17]);
  return sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
}

void Playlist.Entry.init(track:position:occurrence:)()
{
  OUTLINED_FUNCTION_12();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v5 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11_2();
  sub_217275710(v4, v54);
  v57[0] = v54[0];
  v57[1] = v54[1];
  v57[2] = v54[2];
  v58 = v55;
  v59 = (v56 & 1) == 0;
  if (qword_280BE8AC8 != -1)
  {
    swift_once();
  }

  v7 = *(&xmmword_280BE8AD0 + 1);
  v45 = xmmword_280BE8AD0;
  *v52 = xmmword_280BE8AD0;
  v44 = byte_280BE8AE0;
  v52[16] = byte_280BE8AE0;
  Track.innerItem.getter();
  v8 = v53[3];
  v9 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v10 = *(v9 + 8);
  sub_217751DE8();
  v11 = v10(v8, v9);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(v53);
  v14.rawValue._countAndFlagsBits = v11;
  v14.rawValue._object = v13;
  v15 = ResourceType.hrefForResource(with:)(v14);

  *&v52[24] = &type metadata for Track;
  *&v52[32] = &protocol witness table for Track;
  *v52 = swift_allocObject();
  sub_217275710(v4, *v52 + 16);
  __swift_project_boxed_opaque_existential_1(v52, &type metadata for Track);
  Track.propertyProvider.getter();
  v16 = v51[3];
  v17 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v51[3]);
  (*(v17 + 24))(v53, v16, v17);
  sub_21729C644(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v52);
  memcpy(v51, v53, 0x161uLL);
  sub_217269F50(v51);
  sub_21729C79C(v57, v50);
  v43 = OUTLINED_FUNCTION_10_71();
  v42 = OUTLINED_FUNCTION_10_71();
  v41 = OUTLINED_FUNCTION_10_71();
  v18 = OUTLINED_FUNCTION_10_71();
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_2172A497C(v53);
  memcpy(v0, v53, 0x221uLL);
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  v19 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  v26 = v0 + v5[10];
  *(v26 + 48) = 0;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *v26 = 0u;
  *(v26 + 56) = -1;
  v27 = v0 + v5[11];
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  v28 = v0 + v5[12];
  *(v28 + 112) = 0;
  *(v28 + 80) = 0u;
  *(v28 + 96) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v29 = (v0 + v5[14]);
  *v29 = 0;
  v29[1] = 0;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v19);
  v33 = (v0 + v5[16]);
  *v33 = 0;
  v33[1] = 0;
  v34 = v0 + v5[17];
  *(v34 + 32) = 0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  if (qword_280BE3168 != -1)
  {
    swift_once();
  }

  v35 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v40 = sub_217752D28();

    v35 = v40;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v36 = v0 + v5[13];
  *(v0 + v5[18]) = v35;
  v37 = (v0 + v5[21]);
  memcpy((v0 + v5[19]), v52, 0x161uLL);
  v38 = v0 + v5[20];
  *v38 = v45;
  *(v38 + 8) = v7;
  *(v38 + 16) = v44;
  *v37 = v15;
  *(v0 + v5[22]) = v43;
  *(v0 + v5[23]) = v42;
  *(v0 + v5[24]) = v41;
  *(v0 + v5[25]) = v18;
  sub_2176F2A5C(v50, v26, &qword_27CB27D20, &qword_217758B80);
  *v36 = v46;
  *(v36 + 8) = 0;
  sub_2176F2A5C(v48, v34, &qword_27CB24BA8, &unk_217772FF0);
  v50[3] = v5;
  v50[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_9_88(boxed_opaque_existential_0);
  Playlist.Entry.init(propertyProvider:)(v50, v47);
  sub_21727576C(v4);
  sub_21729C7F8(v57);
  sub_2176F2808(v0);
  OUTLINED_FUNCTION_13();
}

uint64_t Playlist.Entry.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_17_24();
  v5(v4);
  v7 = v13[0];
  v6 = v13[1];
  sub_217751DE8();
  sub_217269F50(v13);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  v10 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v10, v11);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Playlist.Entry.position.getter()
{
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133(&qword_280BE66A8);
  }

  result = sub_2172A3FC8(qword_280C02030);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2176F03A0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_2172A46D8();
}

uint64_t Playlist.Entry.extendedStorage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6710 != -1)
  {
    swift_once();
  }

  v26 = qword_280BE6718;

  return sub_2176CB650(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double Playlist.Entry.playParameters.getter@<D0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  if (qword_280BE6730 != -1)
  {
    swift_once();
  }

  sub_2176CB508(qword_280C02078, a2, a3, a4, a5, a6, a7, a8, v18, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v21, v22, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
  v16 = v23;
  if (v23)
  {
    *a1 = v22;
    *(a1 + 8) = v16;
    memcpy((a1 + 16), v24, 0x68uLL);
  }

  else
  {
    if (qword_280BE66D8 != -1)
    {
      OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
    }

    sub_2176CA244(qword_280BE66E0, v9, v10, v11, v12, v13, v14, v15, v19, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v21, v22, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6]);
    if (v21 == 255)
    {
      sub_2171F0738(v20, &qword_27CB27D20, &qword_217758B80);
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
    }

    else
    {
      Playlist.Entry.Item.playParameters.getter();
      sub_21729C7F8(v20);
    }
  }

  return result;
}

uint64_t static Playlist.Entry.== infix(_:_:)(uint64_t *a1, void *a2)
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

uint64_t Playlist.Entry.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t Playlist.Entry.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2176F0E5C@<X0>(uint64_t *a1@<X8>)
{
  result = Playlist.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2176F0E84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D280, &qword_21779A4F8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F777472615FLL, 0xE800000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02048 = result;
  return result;
}

uint64_t sub_2176F0EF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D278, &qword_21779A4F0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F6974617275645FLL, 0xE90000000000006ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02040 = result;
  return result;
}

uint64_t sub_2176F0F70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D270, &qword_21779A4E8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000012, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02060 = result;
  return result;
}

uint64_t sub_2176F0FE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D270, &qword_21779A4E8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02070 = result;
  return result;
}

uint64_t sub_2176F1058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x616C507473616C5FLL, 0xEF65746144646579, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02080 = result;
  return result;
}

uint64_t sub_2176F10D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000011, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02068 = result;
  return result;
}

uint64_t sub_2176F114C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D268, &qword_21779A4E0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x7079546D6574695FLL, 0xE900000000000065, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02038 = result;
  return result;
}

uint64_t sub_2176F11C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D260, &qword_21779A4D8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x72615079616C705FLL, 0xEF73726574656D61, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02078 = result;
  return result;
}

uint64_t sub_2176F1244()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D258, &qword_21779A4D0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6F697469736F705FLL, 0xE90000000000006ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02030 = result;
  return result;
}

uint64_t sub_2176F12BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D250, &qword_21779A4C8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02058 = result;
  return result;
}

uint64_t sub_2176F1330()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D248, &qword_21779A4C0);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x657361656C65725FLL, 0xEC00000065746144, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02088 = result;
  return result;
}

uint64_t sub_2176F13AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D288, &qword_21779A500);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656C7469745FLL, 0xE600000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02050 = result;
  return result;
}

uint64_t sub_2176F141C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D290, &qword_21779A508);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6D6574695FLL, 0xE500000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280BE66E0 = result;
  return result;
}

uint64_t sub_2176F14B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D240, &qword_21779A4B8);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_3_5();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, v1, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280BE6718 = result;
  return result;
}

uint64_t sub_2176F1548(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t Playlist.Entry.isLibraryAdded.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2176F16D0(a2, a3, a4, a5, a6, a7, a8, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v10;
}

double sub_2176F16D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, a1, a2, a3, a4, a5, a6, a7, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v12, v13, v14, v15, v16, v17, v18, v19, vars0, vars8);
  if (v12 == 255)
  {
    sub_2171F0738(v11, &qword_27CB27D20, &qword_217758B80);
    goto LABEL_7;
  }

  Playlist.Entry.Item.innerItem.getter();
  sub_21729C7F8(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A380, &qword_21779A4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

uint64_t Playlist.Entry.isLibraryAddEligible.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2176F16D0(a2, a3, a4, a5, a6, a7, a8, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v10 = (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v10;
}

uint64_t Playlist.Entry.keepLocalEnabledStatus.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v12);
  if (v12[3])
  {
    OUTLINED_FUNCTION_16_55(v12);
    v9 = OUTLINED_FUNCTION_35_12();
    v10(v9);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    result = sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 5;
  }

  return result;
}

uint64_t Playlist.Entry.keepLocalManagedStatus.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v12);
  if (v12[3])
  {
    OUTLINED_FUNCTION_16_55(v12);
    v9 = OUTLINED_FUNCTION_35_12();
    v10(v9);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    result = sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 7;
  }

  return result;
}

uint64_t Playlist.Entry.keepLocalManagedStatusReasons.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_2176F16D0(a1, a2, a3, a4, a5, a6, a7, v12);
  if (v12[3])
  {
    OUTLINED_FUNCTION_16_55(v12);
    v9 = OUTLINED_FUNCTION_35_12();
    v10(v9);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    result = sub_2171F0738(v12, &qword_27CB2A370, &qword_21777FC80);
    *a8 = 0;
    *(a8 + 8) = 1;
  }

  return result;
}

uint64_t Playlist.Entry.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2175BA6FC(v3);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Playlist.Entry._innerItem.getter@<D0>(uint64_t a1@<X8>)
{
  sub_217275858(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2AD70, &unk_217787190);
  if (swift_dynamicCast())
  {
    sub_2171F3F0C(&v16, &v20);
    OUTLINED_FUNCTION_16_55(&v20);
    v3 = OUTLINED_FUNCTION_35_12();
    v4(v3);
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_2171F0738(&v16, &qword_27CB243F8, &qword_21779C830);
    if (qword_280BE66D8 != -1)
    {
      OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
    }

    sub_2176CA244(qword_280BE66E0, v6, v7, v8, v9, v10, v11, v12, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v16, *(&v16 + 1), v17, *(&v17 + 1), v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1));
    OUTLINED_FUNCTION_8_87();
    if (v13)
    {
      sub_2171F0738(v15, &qword_27CB27D20, &qword_217758B80);
      v20 = 0u;
      v21 = 0u;
      v22 = 0;
    }

    else
    {
      Playlist.Entry.Item.innerItem.getter();
      sub_21729C7F8(v15);
    }

    result = *&v20;
    v14 = v21;
    *a1 = v20;
    *(a1 + 16) = v14;
    *(a1 + 32) = v22;
  }

  return result;
}

uint64_t Playlist.Entry.description.getter()
{
  sub_217752AA8();

  *&v23 = 0xD000000000000014;
  *(&v23 + 1) = 0x80000002177B5A70;
  MEMORY[0x21CEA23B0](*v0, v0[1], v1);
  MEMORY[0x21CEA23B0](0x7469736F70202C22, 0xED0000203A6E6F69);
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133(&qword_280BE66A8);
  }

  v2 = sub_2172A3FC8(qword_280C02030);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  *&v20 = v4;
  v5 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v5);

  v26 = v23;
  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
  }

  sub_2176CA244(qword_280BE66E0, v6, v7, v8, v9, v10, v11, v12, v20, *(&v20 + 1), v21, *(&v21 + 1), *&v22[0], *(&v22[0] + 1), *&v22[1], *(&v22[1] + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), *&v25[0], *(&v25[0] + 1), *&v25[1], *(&v25[1] + 1), v26, *(&v26 + 1));
  OUTLINED_FUNCTION_8_87();
  if (v13)
  {
    v17 = sub_2171F0738(&v20, &qword_27CB27D20, &qword_217758B80);
    *&v23 = 0x3A656C746974202CLL;
    *(&v23 + 1) = 0xEA00000000002220;
    v18 = Playlist.Entry.title.getter(v17);
    MEMORY[0x21CEA23B0](v18);

    OUTLINED_FUNCTION_36_10();
    MEMORY[0x21CEA23B0](v23, *(&v23 + 1));
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v25[0] = v22[0];
    *(v25 + 9) = *(v22 + 9);
    *&v20 = 0x203A6D657469202CLL;
    *(&v20 + 1) = 0xE800000000000000;
    v14 = sub_2175BCAE0();
    MEMORY[0x21CEA23B0](v14);

    MEMORY[0x21CEA23B0](0x203A6D657469202CLL, 0xE800000000000000, v15);

    sub_21729C7F8(&v23);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v16);
  return v26;
}

void Playlist.Entry.debugDescription.getter()
{
  OUTLINED_FUNCTION_12();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v3);
  v5 = &v93 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v93 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v93 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - v13;
  v15 = sub_2177517D8();
  v98 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v16);
  v97 = &v93 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v93 - v23;
  v105 = 0x7473696C79616C50;
  v106 = 0xEF287972746E452ELL;
  *&v102 = 0x22203A646920200ALL;
  *(&v102 + 1) = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1], v22);
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_21_50();

  OUTLINED_FUNCTION_17_62();
  sub_217752AA8();

  strcpy(&v102, ",\n  position: ");
  HIBYTE(v102) = -18;
  if (qword_280BE66A8 != -1)
  {
    OUTLINED_FUNCTION_2_133(&qword_280BE66A8);
  }

  v25 = sub_2172A3FC8(qword_280C02030);
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  *&v99 = v27;
  v28 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v28);

  OUTLINED_FUNCTION_21_50();

  if (qword_280BE66D8 != -1)
  {
    OUTLINED_FUNCTION_0_149(&qword_280BE66D8);
  }

  sub_2176CA244(qword_280BE66E0, v29, v30, v31, v32, v33, v34, v35, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), *v101, *&v101[8], *&v101[16], *&v101[24], v102, *(&v102 + 1), v103, *(&v103 + 1));
  if (v101[24] == 255)
  {
    v38 = sub_2171F0738(&v99, &qword_27CB27D20, &qword_217758B80);
    strcpy(&v102, ",\n  title: ");
    BYTE13(v102) = 0;
    HIWORD(v102) = -5120;
    v39 = Playlist.Entry.title.getter(v38);
    MEMORY[0x21CEA23B0](v39);

    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_21_50();

    if (qword_280BE6738 != -1)
    {
      swift_once();
    }

    sub_2176CA2EC(qword_280C02080, v40, v41, v42, v43, v44, v45, v46, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), *v101, *&v101[8], *&v101[16], *&v101[24], v102, *(&v102 + 1), v103, *(&v103 + 1), *v104, *&v104[8], *&v104[16], *&v104[24]);
    if (OUTLINED_FUNCTION_32_50(v14) == 1)
    {
      sub_2171F0738(v14, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      v93 = *(v98 + 32);
      v93(v24, v14, v15);
      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24(&qword_280BE8910);
      }

      v54 = type metadata accessor for CloudFormatter(0);
      v55 = __swift_project_value_buffer(v54, qword_280BE8918);
      (*(v98 + 16))(v11, v24, v15);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v15);
      sub_2172610A0(v11, v8);
      if (OUTLINED_FUNCTION_32_50(v8) == 1)
      {
        sub_2171F0738(v11, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v8, &qword_27CB241C0, &qword_217759480);
        v59 = OUTLINED_FUNCTION_30_1();
        v60(v59);
      }

      else
      {
        v93(v20, v8, v15);
        v61 = *(v55 + *(v54 + 20));
        v62 = sub_2177517A8();
        v63 = [v61 stringFromDate_];

        v93 = sub_217751F48();
        v65 = v64;

        v66 = *(v98 + 8);
        v66(v20, v15);
        sub_2171F0738(v11, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_17_62();
        sub_217752AA8();

        OUTLINED_FUNCTION_11_9();
        *&v102 = v68;
        *(&v102 + 1) = v67;
        MEMORY[0x21CEA23B0](v93, v65);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](v102, *(&v102 + 1));

        v69 = OUTLINED_FUNCTION_30_1();
        (v66)(v69);
      }
    }

    v70 = v97;
    v71 = v96;
    if (qword_280BE6700 != -1)
    {
      swift_once();
    }

    sub_2176CA2EC(qword_280C02068, v47, v48, v49, v50, v51, v52, v53, v93, v94, v95, v96, v97, v98, v99, *(&v99 + 1), v100, *(&v100 + 1), *v101, *&v101[8], *&v101[16], *&v101[24], v102, *(&v102 + 1), v103, *(&v103 + 1), *v104, *&v104[8], *&v104[16], *&v104[24]);
    if (OUTLINED_FUNCTION_32_50(v5) == 1)
    {
      sub_2171F0738(v5, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      v72 = v98;
      v73 = *(v98 + 32);
      v73(v70, v5, v15);
      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24(&qword_280BE8910);
      }

      v74 = type metadata accessor for CloudFormatter(0);
      v75 = __swift_project_value_buffer(v74, qword_280BE8918);
      v76 = v95;
      (*(v72 + 16))(v95, v70, v15);
      OUTLINED_FUNCTION_4_14();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v15);
      sub_2172610A0(v76, v71);
      if (OUTLINED_FUNCTION_32_50(v71) == 1)
      {
        sub_2171F0738(v76, &qword_27CB241C0, &qword_217759480);
        sub_2171F0738(v71, &qword_27CB241C0, &qword_217759480);
        v80 = OUTLINED_FUNCTION_30_1();
        v81(v80);
      }

      else
      {
        v82 = v94;
        v73(v94, v71, v15);
        v83 = *(v75 + *(v74 + 20));
        v84 = sub_2177517A8();
        v85 = [v83 stringFromDate_];

        v86 = sub_217751F48();
        v88 = v87;

        v89 = *(v72 + 8);
        v89(v82, v15);
        sub_2171F0738(v76, &qword_27CB241C0, &qword_217759480);
        OUTLINED_FUNCTION_17_62();
        sub_217752AA8();

        OUTLINED_FUNCTION_11_9();
        *&v102 = v91 | 2;
        *(&v102 + 1) = v90;
        MEMORY[0x21CEA23B0](v86, v88);

        OUTLINED_FUNCTION_36_10();
        MEMORY[0x21CEA23B0](v102, *(&v102 + 1));

        v92 = OUTLINED_FUNCTION_30_1();
        (v89)(v92);
      }
    }
  }

  else
  {
    v102 = v99;
    v103 = v100;
    *v104 = *v101;
    *&v104[9] = *&v101[9];
    *&v99 = 0x6D65746920200A2CLL;
    *(&v99 + 1) = 0xEA0000000000203ALL;
    v36 = sub_2175BCAE0();
    MEMORY[0x21CEA23B0](v36);

    MEMORY[0x21CEA23B0](v99, *(&v99 + 1), v37);

    sub_21729C7F8(&v102);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2176F27A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2176F2808(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_2176F2864()
{
  if (qword_280BEB7A0 != -1)
  {
    swift_once();
  }

  v0 = off_280BEB7A8;
  os_unfair_lock_lock(*(off_280BEB7A8 + 2));
  sub_21770FA7C(0x7473696C79616C50, 0xEE007972746E452ELL, &type metadata for Playlist.Entry, &protocol witness table for Playlist.Entry, &v2);
  os_unfair_lock_unlock(v0[2]);
  result = *&v2;
  xmmword_280BE8510 = v2;
  qword_280BE8520 = v3;
  unk_280BE8528 = v4;
  return result;
}

uint64_t static Playlist.Entry.typeValue.getter()
{
  if (qword_280BE8508 != -1)
  {
    OUTLINED_FUNCTION_11_80(&qword_280BE8508);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE8510);

  return sub_217751DE8();
}

uint64_t sub_2176F298C()
{
  if (qword_280BE8508 != -1)
  {
    OUTLINED_FUNCTION_11_80(&qword_280BE8508);
  }

  xmmword_280BE90D8 = xmmword_280BE8510;
  qword_280BE90E8 = qword_280BE8520;
  unk_280BE90F0 = unk_280BE8528;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.playlistEntry.getter()
{
  if (qword_280BE90D0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE90D8);

  return sub_217751DE8();
}

uint64_t sub_2176F2A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_2176F2ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D238;
  if (!qword_27CB2D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D238);
  }

  return result;
}

uint64_t sub_2176F2B38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_93();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_80(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_21_50()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_61(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21729C7F8(&a9);
}

uint64_t MusicFeatureFlag.isEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 40);
  v12[3] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  v12[4] = sub_2171FEF88(a1, a2, a3);
  v10 = swift_allocObject();
  v12[0] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  LOBYTE(v4) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4 & 1;
}

uint64_t MusicFeatureFlag.init(domain:feature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t static MusicFeatureFlag.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = sub_217752AB8();
  v4 = v3;
  if (v2 == sub_217752AB8() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_217753058();

    v8 = 0;
    if ((v7 & 1) == 0)
    {
      return v8 & 1;
    }
  }

  v9 = sub_217752AB8();
  v11 = v10;
  if (v9 == sub_217752AB8() && v11 == v12)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_217753058();
  }

  return v8 & 1;
}

double MusicFeatureFlag.hash(into:)(uint64_t a1)
{
  sub_217752AB8();
  sub_217751FF8();

  sub_217752AB8();
  sub_217751FF8();
}

uint64_t MusicFeatureFlag.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_217752AB8();
  OUTLINED_FUNCTION_1_110(v0, v1, v2);

  v3 = sub_217752AB8();
  OUTLINED_FUNCTION_1_110(v3, v4, v5);

  return sub_217753238();
}

uint64_t sub_2176F2F48(uint64_t a1)
{
  sub_2177531E8();
  sub_217752AB8();
  sub_217751FF8();

  sub_217752AB8();
  sub_217751FF8();

  return sub_217753238();
}

void sub_2176F2FFC()
{
  qword_27CB2D298 = "MusicKit";
  unk_27CB2D2A0 = 8;
  byte_27CB2D2A8 = 2;
  qword_27CB2D2B0 = "music_picker_suggested_songs";
  unk_27CB2D2B8 = 28;
  byte_27CB2D2C0 = 2;
}

double static MusicFeatureFlag.musicPickerSuggestedSongs.getter()
{
  if (qword_27CB23E88 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D298).n128_u64[0];
  return result;
}

void sub_2176F3090()
{
  qword_27CB2D2C8 = "MusicKit";
  unk_27CB2D2D0 = 8;
  byte_27CB2D2D8 = 2;
  qword_27CB2D2E0 = "maestro";
  unk_27CB2D2E8 = 7;
  byte_27CB2D2F0 = 2;
}

double static MusicFeatureFlag.maestro.getter()
{
  if (qword_27CB23E90 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D2C8).n128_u64[0];
  return result;
}

void sub_2176F3124()
{
  qword_27CB2D2F8 = "MusicKit";
  unk_27CB2D300 = 8;
  byte_27CB2D308 = 2;
  qword_27CB2D310 = "library_pins";
  unk_27CB2D318 = 12;
  byte_27CB2D320 = 2;
}

double static MusicFeatureFlag.libraryPins.getter()
{
  if (qword_27CB23E98 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D2F8).n128_u64[0];
  return result;
}

void sub_2176F31B8()
{
  qword_27CB2D328 = "MusicKit";
  unk_27CB2D330 = 8;
  byte_27CB2D338 = 2;
  qword_27CB2D340 = "modern_upsell";
  unk_27CB2D348 = 13;
  byte_27CB2D350 = 2;
}

double static MusicFeatureFlag.modernUpsell.getter()
{
  if (qword_27CB23EA8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D328).n128_u64[0];
  return result;
}

void sub_2176F324C()
{
  qword_280BE8048 = "MediaPlayer";
  unk_280BE8050 = 11;
  byte_280BE8058 = 2;
  OUTLINED_FUNCTION_1_135(&qword_280BE8048);
}

double static MusicFeatureFlag.favoriting.getter()
{
  if (qword_280BE8040 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_280BE8048).n128_u64[0];
  return result;
}

void sub_2176F32D4()
{
  qword_27CB2D358 = "MediaPlayer";
  unk_27CB2D360 = 11;
  byte_27CB2D368 = 2;
  qword_27CB2D370 = "UpgradeOnPlay";
  unk_27CB2D378 = 13;
  byte_27CB2D380 = 2;
}

double static MusicFeatureFlag.upgradeOnPlay.getter()
{
  if (qword_27CB23EB8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D358).n128_u64[0];
  return result;
}

void sub_2176F3368()
{
  qword_27CB2D388 = "AppleAccount";
  unk_27CB2D390 = 12;
  byte_27CB2D398 = 2;
  OUTLINED_FUNCTION_1_135(&qword_27CB2D388);
}

double static MusicFeatureFlag.appleAccountRebranding.getter()
{
  if (qword_27CB23EC0 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D388).n128_u64[0];
  return result;
}

void sub_2176F33F0()
{
  qword_27CB2D3B8 = "SwiftUI";
  unk_27CB2D3C0 = 7;
  byte_27CB2D3C8 = 2;
  qword_27CB2D3D0 = "Solarium";
  unk_27CB2D3D8 = 8;
  byte_27CB2D3E0 = 2;
}

double static MusicFeatureFlag.solarium.getter()
{
  if (qword_27CB23EC8 != -1)
  {
    swift_once();
  }

  *&result = OUTLINED_FUNCTION_0_150(&qword_27CB2D3B8).n128_u64[0];
  return result;
}

unint64_t sub_2176F3488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D3E8;
  if (!qword_27CB2D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3E8);
  }

  return result;
}

uint64_t sub_2176F3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem.SharedStorage(v21, v22, v23, v24);

    sub_217751DE8();
    *a7 = sub_2176F3824(a1, a2, a3, a4, a5);
    v25 = OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem(v25, v26, v27, v28);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    a4(a1, a2);
    (*(v15 + 32))(a7, v19, a6);
    v30 = OUTLINED_FUNCTION_2_134();
    type metadata accessor for RelatedItem(v30, v31, v32, v33);
    return swift_storeEnumTagMultiPayload();
  }
}

void sub_2176F36CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v7;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(a1 + 16);
    sub_217751DE8();

    sub_2174E3820(v10, v11, v12, a2);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
  }
}

uint64_t sub_2176F3824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_3_122();
  v10 = swift_allocObject();
  sub_2176F4120(v8, v7, v6, v5, a5);
  return v10;
}

uint64_t sub_2176F3888(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(*v12 + 16);
    sub_217751DE8();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    v14 = (*(*(a1 + 24) + 8))(v2);
    (*(v4 + 8))(v8, v2);
  }

  return v14;
}

uint64_t sub_2176F3A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2176F3888(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2176F3A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51[1] = a5;
  OUTLINED_FUNCTION_0();
  v55 = v8;
  MEMORY[0x28223BE20](v9);
  v53 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = v51 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v51 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v51 - v17;
  v54 = v19;
  v21 = type metadata accessor for RelatedItem(255, v20, v19, v19);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v25 = (v51 - v24);
  v27 = *(v26 + 56);
  v28 = *(*(v21 - 8) + 16);
  v28(v51 - v24, a1, v21, v23);
  (v28)(v25 + v27, a2, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v25;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *(v25 + v27);
      if (*(v29 + 16) == *(v30 + 16) && *(v29 + 24) == *(v30 + 24))
      {
        v32 = 1;
      }

      else
      {
        v32 = sub_217753058();
      }
    }

    else
    {
      v38 = v55;
      v39 = v25 + v27;
      v40 = v53;
      (*(v55 + 32))(v53, v39, a3);
      v41 = *(v29 + 16);
      v42 = *(v29 + 24);
      if (v41 == (*(v54 + 8))(a3) && v42 == v43)
      {
        v32 = 1;
      }

      else
      {
        v32 = sub_217753058();
      }

      (*(v38 + 8))(v40, a3, v49);
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *(v25 + v27);
    v34 = v55;
    v35 = v52;
    (*(v55 + 32))(v52, v25, a3);
    if ((*(v54 + 8))(a3) == *(v33 + 16) && v36 == *(v33 + 24))
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_217753058();
    }

    (*(v34 + 8))(v35, a3, v48);
  }

  else
  {
    v45 = v55;
    v46 = *(v55 + 32);
    v46(v18, v25, a3);
    v46(v15, (v25 + v27), a3);
    v32 = sub_217751F08();
    v47 = *(v45 + 8);
    v47(v15, a3);
    v47(v18, a3);
  }

  return v32 & 1;
}

uint64_t sub_2176F3E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, a2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217751DE8();
    sub_217751FF8();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_217751EB8();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2176F4064(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  sub_2176F3E94(v5, a1, a2);
  return sub_217753238();
}

uint64_t sub_2176F40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  sub_2176F3E94(v6, a2, v4);
  return sub_217753238();
}

void *sub_2176F4120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  OUTLINED_FUNCTION_3_122();
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = v13;
  OUTLINED_FUNCTION_4_129();
  v15 = *(v14 + 80);
  OUTLINED_FUNCTION_4_129();
  v17 = *(v16 + 88);
  sub_217751DE8();

  sub_2174E3B88(v8, v7, v6, a5, v15, v17);

  return v9;
}

uint64_t sub_2176F41D0()
{
  OUTLINED_FUNCTION_4_129();
  OUTLINED_FUNCTION_4_129();

  sub_217751DE8();
  sub_2174E4038();

  return v0;
}

uint64_t sub_2176F4278()
{
  sub_2176F41D0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2176F42C4(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for RelatedItem.SharedStorage(319, v2, *(a1 + 24), v3);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2176F4350(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2176F4474(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

MusicKit::Playlist::Kind_optional __swiftcall Playlist.Kind.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() playlistTypeForRawValue_];
  if ((v3 - 5) >= 4)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0x2040100u >> (8 * (v3 - 5));
  }

  *v2 = v4;
  return v3;
}

Swift::Int __swiftcall Playlist.Kind.convertToLegacyModelRawValue()()
{
  v1 = qword_21779A770[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForPlaylistType_];
}

Swift::Int sub_2176F4758@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t static MusicCatalogSearchRequest.supportedTypeValues.getter()
{
  if (qword_27CB23D78 != -1)
  {
    swift_once();
  }

  v0 = off_27CB2ABA0;
  v1 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchResponse, &type metadata for MusicCatalogSearchResponse, &protocol descriptor for MusicCatalogSearchExtendedResponse);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v2 + 8);
    sub_217751DE8();
    v5(v3, v4);
    v7 = (*(v6 + 40))();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v0;
    sub_2176F7C9C(v7, sub_2176F8828, 0, isUniquelyReferenced_nonNull_native, &v14);
    v0 = v14;
  }

  else
  {
    sub_217751DE8();
  }

  v9 = v0[2];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = sub_2176F77F4();
  sub_2176F865C();
  v12 = v11;
  sub_2172303F0(v14);
  if (v12 != v9)
  {
    __break(1u);
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t MusicCatalogSearchRequest.response()(uint64_t a1)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_217282D8C;

  return (sub_2173B2474)(a1, v1 + 48);
}

void MusicCatalogSearchRequest.init(term:types:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a4;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  OUTLINED_FUNCTION_109(a1, v28);
  v8 = off_280BEBCD0;

  (v8)(&v29, v9);

  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v31);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v10, v11, v7 + 48);
  __swift_destroy_boxed_opaque_existential_1(&v29);
  *v7 = a1;
  *(v7 + 8) = a2;
  v12 = *(a3 + 16);
  if (v12)
  {
    v26 = v7;
    v27 = MEMORY[0x277D84F90];
    sub_217276E20(0, v12, 0);
    v13 = 0;
    v14 = 32;
    v15 = v27;
    while (v13 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v14), *(a3 + v14), &protocol descriptor for MusicItemTypeValueProviding))
      {
        goto LABEL_12;
      }

      (*(v16 + 8))(&v29);
      v17 = v29;
      v19 = v30;
      v18 = v31;
      v21 = *(v27 + 16);
      v20 = *(v27 + 24);
      if (v21 >= v20 >> 1)
      {
        v25 = v29;
        sub_217276E20(v20 > 1, v21 + 1, 1);
        v17 = v25;
      }

      *(v27 + 16) = v21 + 1;
      v22 = v27 + 32 * v21;
      *(v22 + 32) = v17;
      ++v13;
      *(v22 + 48) = v19;
      *(v22 + 56) = v18;
      v14 += 16;
      if (v12 == v13)
      {

        v7 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v23 = sub_217753348();
    MEMORY[0x21CEA23B0](v23);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177ACF10, v24);
    OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 88) = v15;
    *(v7 + 112) = 0;
  }
}

uint64_t MusicCatalogSearchRequest.term.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t MusicCatalogSearchRequest.types.getter()
{
  v1 = 88;
  if (*(v0 + 112))
  {
    v1 = 104;
  }

  v2 = *(v0 + v1);
  sub_217751DE8();
  v3 = sub_2173C2FA0();
  if (v3)
  {
    v4 = v3;
    v25 = MEMORY[0x277D84F90];
    sub_217276E6C(0, v3 & ~(v3 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v6 = v25;
      v7 = v2 + 56;
      while (v5 < *(v2 + 16))
      {
        v8 = dynamic_cast_existential_1_conditional(*(v7 - 24), *(v7 - 24), &protocol descriptor for MusicCatalogSearchable);
        if (!v8)
        {
          goto LABEL_16;
        }

        v10 = v8;
        v11 = v9;
        v13 = *(v25 + 16);
        v12 = *(v25 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_217276E6C(v12 > 1, v13 + 1, 1);
        }

        *(v25 + 16) = v13 + 1;
        v14 = v25 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        ++v5;
        v7 += 32;
        if (v4 == v5)
        {

          return v6;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
    sub_217751DE8();
    sub_217285954(1);
    v16 = sub_217752918();
    v18 = v17;

    MEMORY[0x21CEA23B0](v16, v18, v19);

    sub_217751DE8();
    v24 = sub_2172857F8(1uLL);
    sub_217285A70(v24, v20, v21);
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v22);

    MEMORY[0x21CEA23B0](0xD00000000000002BLL, 0x80000002177ACF40, v23);
    result = OUTLINED_FUNCTION_4_0("Fatal error");
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MusicCatalogSearchRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t MusicCatalogSearchRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_10();
  v1[347] = v0;
  v1[346] = v2;
  v3 = sub_2177516D8();
  v1[348] = v3;
  OUTLINED_FUNCTION_15_3(v3);
  v1[349] = v4;
  v1[350] = swift_task_alloc();
  v5 = sub_2177512F8();
  v1[351] = v5;
  OUTLINED_FUNCTION_15_3(v5);
  v1[352] = v6;
  v1[353] = swift_task_alloc();
  v1[354] = type metadata accessor for MusicDataRequest(0);
  v1[355] = swift_task_alloc();
  type metadata accessor for MusicAPI.Endpoint(0);
  v1[356] = swift_task_alloc();
  v1[357] = swift_task_alloc();
  v1[358] = swift_task_alloc();
  v1[359] = swift_task_alloc();
  v1[360] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2176F517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v17 = v14[347];
  v18 = *(v17 + 88);
  v14[361] = v18;
  v19 = *(v17 + 96);
  v14[362] = v19;
  v20 = *(v17 + 104);
  v14[363] = v20;
  v21 = *(v17 + 112);
  v22 = OUTLINED_FUNCTION_145_0();
  sub_2176F8860(v22, v23, v20, v21);
  if (v21)
  {
    v24 = v14[347];
    v25 = OUTLINED_FUNCTION_145_0();
    sub_2176F6A4C(v25, v26);
    sub_2172CB2E8(v14[358], v14[360]);
    v33 = OUTLINED_FUNCTION_145_0();
    sub_2176F88A0(v33, v34, v20, 1);
    v35 = OUTLINED_FUNCTION_9_89();
    v59 = v37;
    v61 = v36;
    sub_2172CB230(v35, v18);
    sub_2172CB230(v18, v24);
    v38 = OUTLINED_FUNCTION_314();
    v40.n128_f64[0] = v39(v38);
    OUTLINED_FUNCTION_453(v40);
    OUTLINED_FUNCTION_30_4();
    sub_2176F88E0(v24, v41);
    OUTLINED_FUNCTION_647();
    v42 = OUTLINED_FUNCTION_202();
    v44 = v43(v42);
    v45 = (v15 + *(v59 + 20));
    OUTLINED_FUNCTION_109(v44, (v14 + 339));
    v46 = off_280BEBCD0;

    (v46)(v47);

    OUTLINED_FUNCTION_23_57();
    (*(v16 + 8))(0, v19);
    sub_2176F88E0(v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v14 + 324);
    sub_21725EE54(v61 + 48, v45);
    v60 = OUTLINED_FUNCTION_16_24(v45) + 104;
    OUTLINED_FUNCTION_66_3();
    v62 = v48 + *v48;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v14[366] = v49;
    *v49 = v50;
    OUTLINED_FUNCTION_7_87(v49);
    OUTLINED_FUNCTION_120_0();

    return v55(v51, v52, v53, v54, v55, v56, v57, v58, v60, v62, a11, a12, a13, a14);
  }

  else
  {
    v14[345] = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v14[364] = v27;
    *v27 = v28;
    v27[1] = sub_2176F54A8;
    OUTLINED_FUNCTION_120_0();

    return sub_2176F5D34(v29, v30);
  }
}

uint64_t sub_2176F54A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 2920) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2176F55A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v19 = v14[363];
  v20 = v14[362];
  v21 = v14[361];
  sub_2172CB2E8(v14[359], v14[360]);
  sub_2176F88A0(v21, v20, v19, 0);
  v22 = OUTLINED_FUNCTION_9_89();
  v47 = v24;
  v49 = v23;
  sub_2172CB230(v22, v20);
  sub_2172CB230(v20, v19);
  v25 = OUTLINED_FUNCTION_314();
  v27.n128_f64[0] = v26(v25);
  OUTLINED_FUNCTION_453(v27);
  OUTLINED_FUNCTION_30_4();
  sub_2176F88E0(v19, v28);
  OUTLINED_FUNCTION_647();
  v29 = OUTLINED_FUNCTION_202();
  v31 = v30(v29);
  v32 = (v17 + *(v47 + 20));
  OUTLINED_FUNCTION_109(v31, (v14 + 339));
  v33 = off_280BEBCD0;

  (v33)(v34);

  OUTLINED_FUNCTION_23_57();
  (*(v18 + 8))(v21, v15);
  sub_2176F88E0(v20, v16);
  __swift_destroy_boxed_opaque_existential_1(v14 + 324);
  sub_21725EE54(v49 + 48, v32);
  v48 = OUTLINED_FUNCTION_16_24(v32) + 104;
  OUTLINED_FUNCTION_66_3();
  v50 = v35 + *v35;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v14[366] = v36;
  *v36 = v37;
  OUTLINED_FUNCTION_7_87(v36);
  OUTLINED_FUNCTION_120_0();

  return v42(v38, v39, v40, v41, v42, v43, v44, v45, a9, v48, v50, a12, a13, a14);
}

uint64_t sub_2176F578C()
{
  OUTLINED_FUNCTION_182();
  sub_2176F88A0(v0[361], v0[362], v0[363], 0);
  OUTLINED_FUNCTION_6_108(v0[360]);

  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_2176F5854()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 2936) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2176F594C()
{
  v1 = v0[367];
  v2 = v0[347];
  v3 = v0[344];
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 48, (v0 + 329));
  JSONDecoder.dataRequestConfiguration.setter((v0 + 329));
  type metadata accessor for SharedRelatedItemStore();
  v4 = swift_allocObject();
  SharedRelatedItemStore.init()(v4, v5, v6);
  v7 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v7);
  sub_2176F8940(v8, v9, v10);
  sub_217751308();
  if (v1)
  {
    v11 = v0[360];
    v12 = v0[355];

    v13 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v13, v14);

    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v11, v15);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v12, v16);
    OUTLINED_FUNCTION_6_108(v0[360]);

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v29 = v3;
    v18 = v0[347];
    sub_2175A3334((v0 + 2), (v0 + 163));
    v19 = *(v18 + 88);
    v20 = *(v18 + 96);
    v21 = *(v18 + 104);
    if (*(v18 + 112))
    {
      sub_217751DE8();
      sub_2176F8860(v19, v20, v21, 1);
    }

    else
    {
      sub_217751DE8();
      sub_2176F8860(v19, v20, v21, 0);
    }

    v22 = v0[360];
    v23 = v0[355];
    sub_2172CA838(v0[347] + 48, (v0 + 334));
    sub_2175EB460((v0 + 163));

    v24 = OUTLINED_FUNCTION_145_0();
    sub_217275694(v24, v25);

    sub_2175A336C((v0 + 2));
    OUTLINED_FUNCTION_1_17();
    sub_2176F88E0(v22, v26);
    OUTLINED_FUNCTION_21();
    sub_2176F88E0(v23, v27);

    OUTLINED_FUNCTION_20_0();
  }

  return v17();
}

uint64_t sub_2176F5C64()
{
  OUTLINED_FUNCTION_182();
  v1 = *(v0 + 2840);
  OUTLINED_FUNCTION_1_17();
  sub_2176F88E0(v2, v3);
  OUTLINED_FUNCTION_21();
  sub_2176F88E0(v1, v4);
  OUTLINED_FUNCTION_6_108(*(v0 + 2880));

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2176F5D34(uint64_t a1, uint64_t *a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v5 = sub_217751428();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[24] = v6;
  v3[25] = v7;

  return MEMORY[0x2822009F8](sub_2176F5E44, 0, 0);
}

uint64_t sub_2176F5E44()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  *(v0 + 208) = *(v1 + 72);
  *(v0 + 280) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 216) = v3;
  *(v3 + 16) = xmmword_2177586E0;
  sub_2177513F8();
  OUTLINED_FUNCTION_16_24((v2 + 48));
  OUTLINED_FUNCTION_66_3();
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_25_59(v4);

  return v6(v5);
}

uint64_t sub_2176F5FBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  *v3 = *v1;
  v2[29] = v4;
  v2[30] = v5;
  v2[31] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2176F60C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  v15 = v14;
  if (*(v14 + 240))
  {
    v16 = *(v14 + 216);
    v18 = *(v15 + 184);
    v17 = *(v15 + 192);
    v19 = *(v15 + 128);
    v20 = *(v15 + 136);
    sub_2177513F8();

    (*(v20 + 16))(v18, v17, v19, v21);
    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    v24 = *(v15 + 216);
    if (v23 >= v22 >> 1)
    {
      OUTLINED_FUNCTION_4_130(v22);
      v24 = v91;
    }

    v25 = *(v15 + 208);
    v26 = *(v15 + 184);
    v28 = *(v15 + 128);
    v27 = *(v15 + 136);
    v29 = (*(v15 + 280) + 32) & ~*(v15 + 280);
    (*(v27 + 8))(*(v15 + 192), v28);
    *(v24 + 16) = v23 + 1;
    (*(v27 + 32))(v24 + v29 + v25 * v23, v26, v28);
  }

  else
  {
    v24 = *(v14 + 216);
  }

  v34 = sub_2173B5734(*(v15 + 200));
  v35 = *(v34 + 16);
  if (v35)
  {
    v96 = v24;
    v98 = v15;
    v100 = MEMORY[0x277D84F90];
    sub_217275C90(0, v35, 0, v30, v31, v32, v33);
    v36 = 0;
    v37 = v100;
    v38 = *(v100 + 16);
    v39 = 16 * v38;
    do
    {
      v40 = *(v34 + v36 + 32);
      v41 = *(v34 + v36 + 40);
      a11 = v37;
      v42 = *(v37 + 24);
      v43 = v38 + 1;
      sub_217751DE8();
      if (v38 >= v42 >> 1)
      {
        sub_217275C90(v42 > 1, v43, 1, v44, v45, v46, v47);
      }

      *(v37 + 16) = v43;
      v48 = v37 + v39;
      *(v48 + 32) = v40;
      *(v48 + 40) = v41;
      v39 += 16;
      v36 += 24;
      ++v38;
      --v35;
    }

    while (v35);
    v15 = v98;

    *(v98 + 88) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    v24 = v96;
    OUTLINED_FUNCTION_12_68();
    if (v50)
    {
      OUTLINED_FUNCTION_4_130(v49);
      v24 = v92;
    }

    OUTLINED_FUNCTION_28_54();
    v52 = OUTLINED_FUNCTION_0_151(v51);
    v53(v52);
  }

  else
  {
  }

  v54 = *(v15 + 120);
  if (*(v54 + 41) == 1)
  {
    sub_2177513F8();
    OUTLINED_FUNCTION_12_68();
    if (v50)
    {
      OUTLINED_FUNCTION_4_130(v55);
      v24 = v93;
    }

    OUTLINED_FUNCTION_28_54();
    v57 = OUTLINED_FUNCTION_0_151(v56);
    v58(v57);
    v54 = *(v15 + 120);
  }

  if ((*(v54 + 24) & 1) == 0)
  {
    *(v15 + 104) = *(v54 + 16);
    sub_217752FC8();
    sub_2177513F8();

    OUTLINED_FUNCTION_12_68();
    if (v50)
    {
      OUTLINED_FUNCTION_4_130(v59);
      v24 = v94;
    }

    OUTLINED_FUNCTION_28_54();
    v61 = OUTLINED_FUNCTION_0_151(v60);
    v62(v61);
    v54 = *(v15 + 120);
  }

  if ((*(v54 + 40) & 1) == 0)
  {
    *(v15 + 96) = *(v54 + 32);
    sub_217752FC8();
    sub_2177513F8();

    OUTLINED_FUNCTION_12_68();
    if (v50)
    {
      OUTLINED_FUNCTION_4_130(v63);
      v24 = v95;
    }

    OUTLINED_FUNCTION_28_54();
    v65 = OUTLINED_FUNCTION_0_151(v64);
    v66(v65);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v68 = *(v15 + 136);
  v67 = *(v15 + 144);
  v69 = *(v15 + 128);
  v70 = __swift_project_value_buffer(v69, qword_280BE7428);
  (*(v68 + 16))(v67, v70, v69);
  v72 = *(v24 + 16);
  v71 = *(v24 + 24);
  if (v72 >= v71 >> 1)
  {
    OUTLINED_FUNCTION_4_130(v71);
    v24 = v90;
  }

  *(v15 + 256) = v24;
  OUTLINED_FUNCTION_28_54();
  v74 = *(v15 + 136);
  v73 = *(v15 + 144);
  v76 = *(v15 + 120);
  v75 = *(v15 + 128);
  *(v24 + 16) = v72 + 1;
  (*(v74 + 32))(v24 + ((v77 + 32) & ~v77) + v78 * v72, v73, v75);
  v97 = OUTLINED_FUNCTION_16_24((v76 + 48)) + 16;
  OUTLINED_FUNCTION_66_3();
  v99 = v79 + *v79;
  v80 = swift_task_alloc();
  *(v15 + 264) = v80;
  *v80 = v15;
  OUTLINED_FUNCTION_25_59(v80);
  OUTLINED_FUNCTION_120_0();

  return v83(v81, v82, v83, v84, v85, v86, v87, v88, v97, v99, a11, a12, a13, a14);
}

uint64_t sub_2176F662C()
{
  OUTLINED_FUNCTION_182();

  OUTLINED_FUNCTION_40_37();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2176F66D4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v2[7] = v1;
  v2[8] = v4;
  v2[9] = v5;
  v2[10] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2176F67D4()
{
  v9 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[32];
  v4 = v0[14];
  v5 = v0[15];
  sub_2177188E8(v2, v1);
  strcpy(v8, "/v1/catalog/");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  MEMORY[0x21CEA23B0](0x686372616573, 0xE600000000000000);
  MEMORY[0x21CEA23B0](47, 0xE100000000000000);

  sub_2172CA838(v5 + 48, (v0 + 2));
  sub_217751DE8();
  sub_2173B6DA4(v8[0], v8[1], v3, 1, v0 + 2, v4);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_2176F69A4()
{
  OUTLINED_FUNCTION_182();

  OUTLINED_FUNCTION_40_37();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2176F6A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36[6] = a1;
  v3 = sub_217751908();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_217751928();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_217751428();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for MusicAPI.Endpoint(0);
  MEMORY[0x28223BE20](v12);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  sub_2172CA838(v2 + 48, v36);
  sub_217751DE8();
  sub_217434F08();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2176F8BB0(v11);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v32 + 8))(v6, v4);
    return swift_willThrow();
  }

  else
  {
    sub_2172CB2E8(v11, v19);
    sub_2172CB230(v19, v16);
    v21 = v33;
    v22 = v34;
    if ((*(v2 + 24) & 1) == 0)
    {
      v36[0] = *(v2 + 16);
      sub_217752FC8();
      v23 = v31;
      sub_2177513F8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
      v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2177586E0;
      (*(v21 + 16))(v25 + v24, v23, v22);
      v26 = v30;
      MusicAPI.Endpoint.applying(_:)();
      swift_setDeallocating();
      sub_217275AFC();
      (*(v21 + 8))(v23, v22);
      sub_2176F88E0(v16, type metadata accessor for MusicAPI.Endpoint);
      sub_2172CB2E8(v26, v16);
    }

    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v22, qword_280BE7428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
    v28 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2177586E0;
    (*(v21 + 16))(v29 + v28, v27, v22);
    MusicAPI.Endpoint.applying(_:)();
    swift_setDeallocating();
    sub_217275AFC();
    sub_2176F88E0(v16, type metadata accessor for MusicAPI.Endpoint);
    return sub_2176F88E0(v19, type metadata accessor for MusicAPI.Endpoint);
  }
}

uint64_t sub_2176F6F8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((a2[3] & 1) == 0)
    {
      sub_217270BE0();
      v12 = v13;
      v9 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if ((a2[3] & 1) == 0)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = v2 == v6 && v3 == v7;
  if (v10 || (sub_217753058() & 1) != 0)
  {
    sub_217270BE0();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v9 = 1;
  v5 = 1;
LABEL_14:
  sub_2176F8860(v6, v7, v8, v9);
  sub_2176F8860(v2, v3, v4, v5);
  sub_2176F88A0(v2, v3, v4, v5);
  sub_2176F88A0(v6, v7, v8, v9);
  return v12 & 1;
}

void sub_2176F70AC(uint64_t a1)
{
  if (*(v1 + 24))
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8();
}

uint64_t sub_2176F7134()
{
  v1 = *(v0 + 24);
  sub_2177531E8();
  if (v1)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8();
  return sub_217753238();
}

uint64_t sub_2176F71CC(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2177531E8();
  sub_2176F70AC(v5);
  return sub_217753238();
}

uint64_t sub_2176F7224()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2172849C8;

  return MusicCatalogSearchRequest.catalogResponse()();
}

uint64_t static MusicCatalogSearchRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
LABEL_21:
      v18 = 0;
      return v18 & 1;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_21;
    }
  }

  v6 = *(a2 + 40);
  if (a1[5])
  {
    if (!*(a2 + 40))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 41) != *(a2 + 41))
  {
    goto LABEL_21;
  }

  v7 = a1[9];
  v8 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v7);
  v9 = *(v8 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v9(a2 + 48, v10, v7, v8) & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = a1[12];
  v12 = a1[13];
  v13 = *(a1 + 112);
  v24 = a1[11];
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  sub_2176F8860(v24, v11, v12, v13);
  sub_2176F8860(v14, v15, v16, v17);
  v18 = sub_2176F6F8C(&v24, &v20);
  sub_2176F88A0(v20, v21, v22, v23);
  sub_2176F88A0(v24, v25, v26, v27);
  return v18 & 1;
}

void MusicCatalogSearchRequest.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  if (*(v1 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v3 = *(v1 + 16);
    sub_217753208();
    MEMORY[0x21CEA3550](v3);
  }

  if (*(v1 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v4 = *(v1 + 32);
    sub_217753208();
    MEMORY[0x21CEA3550](v4);
  }

  sub_217753208();
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  __swift_project_boxed_opaque_existential_1((v1 + 48), v5);
  (*(v6 + 120))(a1, v5, v6);
  if (*(v1 + 112))
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  sub_21727D7C8();
}

uint64_t MusicCatalogSearchRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2176F75D8(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchRequest.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2176F7640()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(v1, v2, v3, v4);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v5);
  OUTLINED_FUNCTION_22_62(v6 / 16);
  return v0;
}

uint64_t sub_2176F7698()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24420, &qword_217758700);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 752);
  return v0;
}

uint64_t sub_2176F7758()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 24);
  return v0;
}

uint64_t sub_2176F77F4()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v1);
  OUTLINED_FUNCTION_22_62(v2 / 32);
  return v0;
}

void *sub_2176F78CC()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24858, &qword_217758DE8);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

uint64_t sub_2176F7A10()
{
  OUTLINED_FUNCTION_19_49();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_30_45(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

size_t sub_2176F7AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(a1, a2, a3, a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_15_3(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      OUTLINED_FUNCTION_22_62((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_2176F7BB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_32_51(a1, a2, a3, a4);
  v7 = a5(0);
  OUTLINED_FUNCTION_15_3(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v9)
  {
    if (result - v11 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_22_62((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F7C9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v72 = a5;
  HIDWORD(v55) = a4;
  sub_217747F44();
  v7 = v66;
  v8 = v68;
  v9 = v69;
  v50 = v70;
  v51 = v65;
  v52 = v71;
  v44 = v67;
  v10 = (v67 + 64) >> 6;
  v46 = a1;
  sub_217751DE8();
  v45 = a3;

  v48 = v10;
  for (i = v66; ; v7 = i)
  {
    v11 = v9;
    v12 = v8;
    if (!v9)
    {
      break;
    }

LABEL_7:
    v14 = __clz(__rbit64(v11)) | (v12 << 6);
    v15 = *(v51 + 48) + 32 * v14;
    v16 = *(*(v51 + 56) + 8 * v14);
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
    v56 = *v15;
    v57 = v18;
    v58 = v17;
    v59 = v16;
    sub_217751DE8();

    v50(&v60, &v56);

    v19 = v60;
    if (!v60)
    {
LABEL_19:
      sub_2172303F0(v51);
    }

    v20 = v61;
    v21 = v63;
    v54 = v64;
    v22 = *v72;
    v53 = v62;
    v30 = sub_217632574();
    v31 = v22[2];
    v32 = (v23 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_21;
    }

    v34 = v23;
    if (v22[3] >= v33)
    {
      if ((v55 & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2D418, &qword_21779AA40);
        sub_217752CC8();
      }
    }

    else
    {
      sub_217746D48(v33, BYTE4(v55) & 1, v24, v25, v26, v27, v28, v29, v44, v45, v46, v47, v48, i, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
      v35 = sub_217632574();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_23;
      }

      v30 = v35;
    }

    v9 = (v11 - 1) & v11;
    v37 = *v72;
    if (v34)
    {
      v38 = *(v37[7] + 8 * v30);

      *(v37[7] + 8 * v30) = v38;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v39 = (v37[6] + 32 * v30);
      *v39 = v19;
      v39[1] = v20;
      v39[2] = v53;
      v39[3] = v21;
      *(v37[7] + 8 * v30) = v54;
      v40 = v37[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_22;
      }

      v37[2] = v42;
    }

    HIDWORD(v55) = 1;
    v8 = v12;
    v10 = v48;
  }

  v13 = v8;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      goto LABEL_19;
    }

    v11 = *(v7 + 8 * v12);
    ++v13;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_217753178();
  __break(1u);
  return result;
}

void *sub_2176F7F7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = *(a4 + 16);
    v10 = a3 - 1;
    while (1)
    {
      if (v9 == v8)
      {
        v6 = v9;
        goto LABEL_12;
      }

      if (v8 >= *(a4 + 16))
      {
        break;
      }

      v11 = *(a4 + 32 + 16 * v8);
      *(a2 + 16 * v8) = v11;
      if (v10 == v8)
      {
        sub_21726B87C(v11, *(&v11 + 1));
        goto LABEL_12;
      }

      result = sub_21726B87C(v11, *(&v11 + 1));
      ++v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F8038(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = a4;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a4 + 32;
    while (1)
    {
      if (v10 == v9)
      {
        a3 = v10;
        goto LABEL_11;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      ++v9;
      result = sub_217275AA0(v11, a2);
      a2 += 752;
      v11 += 752;
      if (a3 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2176F80F0()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_217751428();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = v1 + 56;
  v14 = *(v1 + 56);
  v39 = -1 << *(v1 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!v5)
  {
    v20 = 0;
LABEL_22:
    v32 = ~v39;
    *v7 = v1;
    v7[1] = v15;
    v7[2] = v32;
    v7[3] = v20;
    v7[4] = v17;
    OUTLINED_FUNCTION_13();
    return;
  }

  v18 = v3;
  if (!v3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v34 = v7;
    v35 = v1 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = v18;
    while (v19 < v18)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            v7 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v1;
      v25 = *(v1 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42, v12);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(v5, v31, v27);
      v18 = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        v7 = v34;
        v15 = v35;
        v1 = v24;
        goto LABEL_22;
      }

      v5 += v28;
      v20 = v22;
      v1 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_2176F8378()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v8);
    OUTLINED_FUNCTION_13();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v13 = *(v0 + 48) + 24 * (v12 | (v11 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      LOBYTE(v13) = *(v13 + 16);
      *v1 = v15;
      *(v1 + 8) = v14;
      *(v1 + 16) = v13;
      if (v10 == v7)
      {
        sub_217751DE8();
        v8 = v11;
        goto LABEL_17;
      }

      v1 += 24;
      sub_217751DE8();
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_2176F847C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v8);
    OUTLINED_FUNCTION_13();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      v12 = (*(v0 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v3)))));
      v13 = v12[1];
      v3 &= v3 - 1;
      *v1 = *v12;
      v1[1] = v13;
      if (v10 == v7)
      {
        sub_217751DE8();
        v8 = v11;
        goto LABEL_17;
      }

      v1 += 2;
      sub_217751DE8();
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_2176F8578(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2176F865C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_136();
  if (!v6)
  {
    v8 = 0;
LABEL_17:
    OUTLINED_FUNCTION_8_88(v8);
    OUTLINED_FUNCTION_13();
    return;
  }

  v7 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_5_106();
    while (v9 < v7)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v11 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v2 + 8 * v11);
          ++v8;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v11 = v8;
LABEL_12:
      v12 = *(v0 + 48) + ((v11 << 11) | (32 * __clz(__rbit64(v3))));
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      v3 &= v3 - 1;
      *v1 = *v12;
      *(v1 + 16) = v14;
      *(v1 + 24) = v13;
      if (v10 == v7)
      {
        sub_217751DE8();
        v8 = v11;
        goto LABEL_17;
      }

      v1 += 32;
      sub_217751DE8();
      v9 = v10;
      v8 = v11;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_2176F8760(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(a4 + 16);
    v11 = a3 - 1;
    while (1)
    {
      if (v10 == v9)
      {
        v6 = v10;
        goto LABEL_12;
      }

      if (v9 >= *(a4 + 16))
      {
        break;
      }

      v12 = a2 + v8;
      v14 = *(a4 + v8 + 48);
      v13 = *(a4 + v8 + 56);
      *v12 = *(a4 + v8 + 32);
      *(v12 + 16) = v14;
      *(v12 + 24) = v13;
      if (v11 == v9)
      {
        sub_217751DE8();
        goto LABEL_12;
      }

      result = sub_217751DE8();
      v8 += 32;
      ++v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2176F8828@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_217747944(a2, *a1, a1[1], a1[2], a1[3], a1[4]);
  a2[4] = result;
  return result;
}

uint64_t sub_2176F8860(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_217751DE8();
    v4 = vars8;
  }

  return sub_217751DE8();
}

double sub_2176F88A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_2176F88E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2176F8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D3F0;
  if (!qword_27CB2D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3F0);
  }

  return result;
}

unint64_t sub_2176F89A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D3F8;
  if (!qword_27CB2D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D3F8);
  }

  return result;
}

uint64_t sub_2176F8A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_2176F8A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2176F8AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_2176F8AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_2176F8B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D400;
  if (!qword_27CB2D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D400);
  }

  return result;
}

uint64_t sub_2176F8BB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_40_37()
{
}

Swift::Int __swiftcall LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  if (*v0)
  {
    if ((v1 & 2) != 0)
    {
      v2 = 3;
      if ((v1 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 1;
    if ((v1 & 4) != 0)
    {
LABEL_11:
      v2 |= 4uLL;
    }
  }

  else
  {
    if ((v1 & 2) == 0)
    {
      v2 = 0;
      if ((v1 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v2 = 2;
    if ((v1 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if ((v1 & 8) != 0)
  {
    v2 |= 8uLL;
    if ((v1 & 0x10) == 0)
    {
LABEL_14:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v2 |= 0x10uLL;
  if ((v1 & 0x20) == 0)
  {
LABEL_15:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_22:
  v2 |= 0x20uLL;
  if ((v1 & 0x40) != 0)
  {
LABEL_16:
    v2 |= 0x40uLL;
  }

LABEL_17:
  v3 = objc_opt_self();

  return [v3 rawValueForKeepLocalManagedStatusReasons_];
}

MusicKit::LegacyModelKeepLocalManagedStatusReasons sub_2176F8E08@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LegacyModelKeepLocalManagedStatusReasons.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2176F8E48@<X0>(uint64_t *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatusReasons.rawValue.getter();
  *a1 = result;
  return result;
}

MusicKit::LegacyModelKeepLocalManagedStatusReasons_optional __swiftcall LegacyModelKeepLocalManagedStatusReasons.init(legacyModelRawValue:)(Swift::Int legacyModelRawValue)
{
  v2 = v1;
  v3 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
  *v2 = v3 & 0x7F;
  *(v2 + 8) = 0;
  result.value.rawValue = v3;
  result.is_nil = v4;
  return result;
}

Swift::Int sub_2176F8EC8@<X0>(Swift::Int *a1@<X8>)
{
  result = LegacyModelKeepLocalManagedStatusReasons.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t LegacyModelKeepLocalManagedStatusReasons.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    sub_2172AFF2C(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = v3;
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    if (v5 >= v4 >> 1)
    {
      OUTLINED_FUNCTION_0_152(v4);
      v2 = v32;
    }

    *(v2 + 16) = v5 + 1;
    v6 = v2 + 16 * v5;
    strcpy((v6 + 32), ".lowDiskSpace");
    *(v6 + 46) = -4864;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_137();
      v2 = v33;
    }

    OUTLINED_FUNCTION_3_123();
    if (v8)
    {
      OUTLINED_FUNCTION_0_152(v7);
      v2 = v34;
    }

    OUTLINED_FUNCTION_2_135();
    *(v10 + 32) = 0xD000000000000011;
    *(v10 + 40) = v9;
    if ((v1 & 4) == 0)
    {
LABEL_8:
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v35;
  }

  OUTLINED_FUNCTION_3_123();
  if (v8)
  {
    OUTLINED_FUNCTION_0_152(v11);
    v2 = v36;
  }

  OUTLINED_FUNCTION_2_135();
  *(v13 + 32) = 0xD000000000000010;
  *(v13 + 40) = v12;
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_23:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v37;
  }

  OUTLINED_FUNCTION_3_123();
  if (v8)
  {
    OUTLINED_FUNCTION_0_152(v14);
    v2 = v38;
  }

  OUTLINED_FUNCTION_2_135();
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = v15;
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v39;
  }

  OUTLINED_FUNCTION_3_123();
  if (v8)
  {
    OUTLINED_FUNCTION_0_152(v17);
    v2 = v40;
  }

  OUTLINED_FUNCTION_2_135();
  *(v19 + 32) = 0xD000000000000013;
  *(v19 + 40) = v18;
  if ((v1 & 0x20) == 0)
  {
LABEL_11:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_137();
    v2 = v41;
  }

  OUTLINED_FUNCTION_3_123();
  if (v8)
  {
    OUTLINED_FUNCTION_0_152(v20);
    v2 = v42;
  }

  OUTLINED_FUNCTION_2_135();
  *(v22 + 32) = 0xD000000000000012;
  *(v22 + 40) = v21;
  if ((v1 & 0x40) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_1_137();
      v2 = v43;
    }

    v24 = *(v2 + 16);
    v23 = *(v2 + 24);
    if (v24 >= v23 >> 1)
    {
      OUTLINED_FUNCTION_0_152(v23);
      v2 = v44;
    }

    *(v2 + 16) = v24 + 1;
    v25 = v2 + 16 * v24;
    *(v25 + 32) = 0xD000000000000010;
    *(v25 + 40) = 0x80000002177B5BE0;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2173C2F20();
  v26 = sub_217751ED8();
  v28 = v27;

  MEMORY[0x21CEA23B0](v26, v28, v29);

  MEMORY[0x21CEA23B0](93, 0xE100000000000000, v30);
  return 91;
}

unint64_t sub_2176F9230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D420;
  if (!qword_27CB2D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D420);
  }

  return result;
}

unint64_t sub_2176F9288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2D428;
  if (!qword_27CB2D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2D428);
  }

  return result;
}

unint64_t sub_2176F92DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2B60;
  if (!qword_280BE2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B60);
  }

  return result;
}

unint64_t sub_2176F9334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2B58;
  if (!qword_280BE2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2B58);
  }

  return result;
}

Swift::Void __swiftcall RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(Swift::String label, Swift::Bool forDebugging, Swift::String *to)
{
  OUTLINED_FUNCTION_8_89(label._countAndFlagsBits, label._object, forDebugging, to);
  v7 = OUTLINED_FUNCTION_14_67();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_54(v10, v11, v12, v13, v14, v15, v16, v17, v64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23_58();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_69();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v67 = v25 - v24;
  OUTLINED_FUNCTION_14_67();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_51();
  if (sub_217752698())
  {
    return;
  }

  OUTLINED_FUNCTION_19_50();
  v27(v67);
  OUTLINED_FUNCTION_27_51();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_73(AssociatedConformanceWitness);
  while (1)
  {
    OUTLINED_FUNCTION_28_55();
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
    {
      break;
    }

    v29 = OUTLINED_FUNCTION_11_81();
    v30(v29);
    OUTLINED_FUNCTION_4_6();
    if (v31)
    {
      v3 = &v70;
      v32 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v32);
    }

    OUTLINED_FUNCTION_25_60();
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_3_124();
      (v3)(v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
      if (OUTLINED_FUNCTION_5_107(v35))
      {
        OUTLINED_FUNCTION_0_153();
        sub_217753068();
LABEL_12:
        OUTLINED_FUNCTION_26_45();
        __swift_destroy_boxed_opaque_existential_1(&v68);
        goto LABEL_14;
      }

      v36 = OUTLINED_FUNCTION_4_131();
      sub_2171F06D8(v36, &qword_27CB28B60, &qword_2177711B8);
    }

    v37 = OUTLINED_FUNCTION_3_124();
    (v3)(v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
    if (OUTLINED_FUNCTION_5_107(v38))
    {
      OUTLINED_FUNCTION_0_153();
      sub_217752FC8();
      goto LABEL_12;
    }

    v39 = OUTLINED_FUNCTION_4_131();
    sub_2171F06D8(v39, &qword_27CB28B50, &qword_2177711A8);
    v40 = OUTLINED_FUNCTION_3_124();
    (v3)(v40);
    sub_217751FA8();
    OUTLINED_FUNCTION_26_45();
LABEL_14:
    OUTLINED_FUNCTION_15_67();

    v3 = &v70;
    MEMORY[0x21CEA23B0](v68, v69, v41);

    (*v5)(v6, v7, v42);
  }

  v43 = OUTLINED_FUNCTION_18_58();
  v44(v43);
  OUTLINED_FUNCTION_17_63();
  if (v45)
  {
    OUTLINED_FUNCTION_4_6();
    if (v46)
    {
      v47 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v47);
    }

    OUTLINED_FUNCTION_10_72();
    v48 = MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
    v56 = OUTLINED_FUNCTION_9_90(v48, v49, v50, v51, v52, v53, v54, v55, v65, v66);
    OUTLINED_FUNCTION_7_88(v56, v57, v58, v59, v60, v61, MEMORY[0x277D837D0]);
    v62 = OUTLINED_FUNCTION_29_46();
    MEMORY[0x21CEA23B0](v4, v22, v62);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v63);
    MEMORY[0x21CEA23B0](v68, v69);
  }
}

uint64_t Optional<A>.musicKit_prettyDescription.getter(char a1)
{
  if (a1 == 2)
  {
    return 7104878;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x21CEA23B0](v3, v4);

  return 0;
}

uint64_t sub_2176F98EC(uint64_t result, unint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_217751DE8();
    return a4;
  }

  v8 = result;
  v9 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      v11 = sub_217752008();
      sub_217751DE8();
      if (v11 >= v10)
      {
        v12 = sub_217285954(v8);
        v14 = v13;
        v16 = v15;
        v18 = v17;
        sub_217751DE8();
        v19 = sub_21771EE94(a2, a4, a5);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        a4 = MEMORY[0x21CEA2320](v12, v14, v16, v18);

        MEMORY[0x21CEA23B0](10911970, 0xA300000000000000, v26);
        v27 = MEMORY[0x21CEA2320](v19, v21, v23, v25);
        v29 = v28;

        MEMORY[0x21CEA23B0](v27, v29, v30);
      }

      return a4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall String.musicKit_appendTruncatedDescription(label:prefixLength:suffixLength:forDebugging:to:)(Swift::String label, Swift::Int prefixLength, Swift::Int suffixLength, Swift::Bool forDebugging, Swift::String *to)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v9 = sub_2176F98EC(prefixLength, suffixLength, forDebugging, v5, v6);
  v11 = v10;
  OUTLINED_FUNCTION_4_6();
  if (v12)
  {
    v13 = OUTLINED_FUNCTION_181_0();
    MEMORY[0x21CEA23B0](v13);
  }

  MEMORY[0x21CEA23B0](countAndFlagsBits, object);
  MEMORY[0x21CEA23B0](2236474, 0xE300000000000000);
  MEMORY[0x21CEA23B0](v9, v11);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v14);
  MEMORY[0x21CEA23B0](2105354, 0xE300000000000000);
}

Swift::Void __swiftcall Sequence.musicKit_appendDescription(label:forDebugging:to:)(Swift::String label, Swift::Bool forDebugging, Swift::String *to)
{
  v8 = v3;
  OUTLINED_FUNCTION_8_89(label._countAndFlagsBits, label._object, forDebugging, to);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_54(v12, v13, v14, v15, v16, v17, v18, v19, v67);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_58();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12_69();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v70 = v27 - v26;
  OUTLINED_FUNCTION_14_67();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_24_51();
  if (Sequence<>.isEmpty.getter(v29, v8))
  {
    return;
  }

  OUTLINED_FUNCTION_19_50();
  v30(v70);
  OUTLINED_FUNCTION_27_51();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_13_73(AssociatedConformanceWitness);
  while (1)
  {
    OUTLINED_FUNCTION_28_55();
    if (__swift_getEnumTagSinglePayload(v5, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v32 = OUTLINED_FUNCTION_11_81();
    v33(v32);
    OUTLINED_FUNCTION_4_6();
    if (v34)
    {
      v4 = &v73;
      v35 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v35);
    }

    OUTLINED_FUNCTION_25_60();
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_3_124();
      v4(v37);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B58, &qword_2177711B0);
      if (OUTLINED_FUNCTION_5_107(v38))
      {
        OUTLINED_FUNCTION_0_153();
        sub_217753068();
LABEL_12:
        OUTLINED_FUNCTION_26_45();
        __swift_destroy_boxed_opaque_existential_1(&v71);
        goto LABEL_14;
      }

      v39 = OUTLINED_FUNCTION_4_131();
      sub_2171F06D8(v39, &qword_27CB28B60, &qword_2177711B8);
    }

    v40 = OUTLINED_FUNCTION_3_124();
    v4(v40);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B48, &qword_2177711A0);
    if (OUTLINED_FUNCTION_5_107(v41))
    {
      OUTLINED_FUNCTION_0_153();
      sub_217752FC8();
      goto LABEL_12;
    }

    v42 = OUTLINED_FUNCTION_4_131();
    sub_2171F06D8(v42, &qword_27CB28B50, &qword_2177711A8);
    v43 = OUTLINED_FUNCTION_3_124();
    v4(v43);
    sub_217751FA8();
    OUTLINED_FUNCTION_26_45();
LABEL_14:
    OUTLINED_FUNCTION_15_67();

    v4 = &v73;
    MEMORY[0x21CEA23B0](v71, v72, v44);

    (*v6)(v7, AssociatedTypeWitness, v45);
  }

  v46 = OUTLINED_FUNCTION_18_58();
  v47(v46);
  OUTLINED_FUNCTION_17_63();
  if (v48)
  {
    OUTLINED_FUNCTION_4_6();
    if (v49)
    {
      v50 = OUTLINED_FUNCTION_181_0();
      MEMORY[0x21CEA23B0](v50);
    }

    OUTLINED_FUNCTION_10_72();
    v51 = MEMORY[0x21CEA23B0](5972026, 0xE300000000000000);
    v59 = OUTLINED_FUNCTION_9_90(v51, v52, v53, v54, v55, v56, v57, v58, v68, v69);
    OUTLINED_FUNCTION_7_88(v59, v60, v61, v62, v63, v64, MEMORY[0x277D837D0]);
    v65 = OUTLINED_FUNCTION_29_46();
    MEMORY[0x21CEA23B0](v5, v24, v65);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v66);
    MEMORY[0x21CEA23B0](v71, v72);
  }
}

uint64_t OUTLINED_FUNCTION_14_67()
{

  return swift_getAssociatedTypeWitness();
}

void OUTLINED_FUNCTION_15_67()
{
  *(v0 - 176) = 10;
  *(v0 - 168) = 0xE100000000000000;

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_29_46()
{
}

unint64_t Song.LegacyModelSongPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001ALL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000024;
      break;
    case 2:
    case 0x15:
    case 0x17:
      result = 0xD000000000000029;
      break;
    case 3:
      result = 0xD00000000000002ALL;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000020;
      break;
    case 5:
    case 0x1D:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 0xD:
    case 0xE:
    case 0x1F:
    case 0x22:
    case 0x28:
      result = 0xD00000000000001DLL;
      break;
    case 7:
    case 8:
    case 0xA:
    case 0x12:
      result = 0xD00000000000001BLL;
      break;
    case 9:
    case 0x10:
    case 0x1B:
    case 0x27:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000028;
      break;
    case 0xF:
    case 0x1A:
    case 0x24:
      result = 0xD00000000000001FLL;
      break;
    case 0x11:
    case 0x14:
    case 0x26:
      result = 0xD000000000000027;
      break;
    case 0x13:
      result = 0xD000000000000032;
      break;
    case 0x16:
      result = 0xD00000000000002FLL;
      break;
    case 0x18:
      result = 0xD000000000000023;
      break;
    case 0x19:
    case 0x21:
    case 0x25:
      result = 0xD00000000000001CLL;
      break;
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0x1E:
    case 0x29:
      result = 0xD000000000000019;
      break;
    case 0x20:
      result = 0xD000000000000017;
      break;
    case 0x23:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Song.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v270 = a4;
  v274 = a3;
  v268 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_6_1();
  v267 = (v8 - v9);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_99();
  v266 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_99();
  v265 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_99();
  v269 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v271 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  v264 = &v256 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB291C8, &qword_217775A48);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v256 - v21;
  v23 = type metadata accessor for SongPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v256 - v29;
  memcpy(v284, a1, 0x161uLL);
  v275 = a2;
  if (([a2 respondsToSelector_] & 1) != 0 && (v31 = objc_msgSend(v275, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v32 = v31;
    v33 = sub_217751D98();
  }

  else
  {
    v33 = sub_217751DC8();
  }

  v41 = sub_21729F5B4(v33, v34, v35, v36, v37, v38, v39, v40, v256, v257, v258, v259, v260, object, countAndFlagsBits, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, *(&v272 + 1), v273, v274, v275, *v276, *&v276[8], *&v276[16], *&v276[24], *&v276[32], *&v276[40], *&v276[48], *&v276[56], *&v276[64]);

  memcpy(v280, a1, 0x161uLL);
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v278[0] = xmmword_280BEA1D0;
  LOBYTE(v278[1]) = byte_280BEA1E0;
  v42 = qword_280BE8B08;
  sub_217751DE8();
  if (v42 != -1)
  {
    swift_once();
  }

  v277[0] = qword_280BE8B10;
  v277[1] = *algn_280BE8B18;
  LOBYTE(v277[2]) = byte_280BE8B20;
  sub_217751DE8();
  v285.value.rawValue._countAndFlagsBits = v278;
  v285.value.rawValue._object = v277;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v279, v285, v286);

  object = v279[0].id.rawValue._object;
  countAndFlagsBits = v279[0].type.rawValue._countAndFlagsBits;
  v43 = v279[0].type.rawValue._object;
  HIDWORD(v263) = v279[0].type.isLibraryType;
  *&v272 = v279[0].href.value._countAndFlagsBits;
  v44 = v279[0].href.value._object;
  sub_2171F5110(v274, v279, &qword_27CB27590, &qword_21776ADF0);
  if (!v279[0].type.rawValue._object)
  {
    sub_2171F0738(v279, &qword_27CB27590, &qword_21776ADF0);
    memset(v280, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v280, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v280[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v280, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  v45 = v44;
  sub_2171F3F0C(v280, v281);
  v46 = v282;
  v47 = v283;
  __swift_project_boxed_opaque_existential_1(v281, v282);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    sub_21753BA8C(v22, v27);
    sub_2176FDABC(v27, v30);
    memcpy(v280, v284, 0x161uLL);
    v48 = v23[73];
    memcpy(v277, (v27 + v48), 0x161uLL);
    memcpy(v276, (v27 + v48), sizeof(v276));
    sub_217269EF4(v277, v279);
    MusicIdentifierSet.union(_:)();
    memcpy(v278, v276, 0x161uLL);
    sub_217269F50(v278);
    sub_21753BAF0(v27);
    v49 = v23[73];
    memcpy(v280, &v30[v49], 0x161uLL);
    sub_217269F50(v280);
    memcpy(&v30[v49], v279, 0x161uLL);
    v50 = &v30[v23[74]];
    sub_217751DE8();

    *v50 = countAndFlagsBits;
    *(v50 + 1) = v43;
    v50[16] = BYTE4(v263);
    v51 = &v30[v23[75]];

    *v51 = v272;
    *(v51 + 1) = v45;
    __swift_destroy_boxed_opaque_existential_1(v281);
    goto LABEL_20;
  }

  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  sub_2171F0738(v22, &qword_27CB291C8, &qword_217775A48);
  __swift_destroy_boxed_opaque_existential_1(v281);
  v44 = v45;
LABEL_17:
  sub_217269EF4(v284, v280);
  v260 = v44;
  sub_217751DE8();
  sub_217751DE8();
  v259 = OUTLINED_FUNCTION_17_64();
  v258 = OUTLINED_FUNCTION_17_64();
  v257 = OUTLINED_FUNCTION_17_64();
  v256 = OUTLINED_FUNCTION_17_64();
  sub_2172A497C(v280);
  memcpy(v30, v280, 0x221uLL);
  sub_21733B708(v279);
  memcpy(v30 + 552, v279, 0x161uLL);
  *(v30 + 57) = 0u;
  *(v30 + 58) = 0u;
  v52 = v23[8];
  v53 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(&v30[v52], 1, 1, v53);
  *&v30[v23[9]] = 0;
  OUTLINED_FUNCTION_19_19(v23[10]);
  *&v30[v23[11]] = 0;
  v54 = &v30[v23[12]];
  v54[4] = 0;
  *v54 = 512;
  OUTLINED_FUNCTION_19_19(v23[13]);
  v22 = 2;
  v30[v23[14]] = 2;
  OUTLINED_FUNCTION_7_89(v23[15]);
  OUTLINED_FUNCTION_7_89(v23[16]);
  *&v30[v23[17]] = 0;
  v55 = &v30[v23[18]];
  *v55 = xmmword_2177586D0;
  *(v55 + 1) = 0u;
  *(v55 + 2) = 0u;
  *(v55 + 3) = 0u;
  *&v30[v23[19]] = 0;
  *&v30[v23[20]] = 0;
  v30[v23[21]] = 2;
  v30[v23[22]] = 2;
  OUTLINED_FUNCTION_19_19(v23[23]);
  v30[v23[24]] = 2;
  OUTLINED_FUNCTION_19_19(v23[25]);
  *(v56 + 16) = 0;
  OUTLINED_FUNCTION_19_19(v23[26]);
  *(v57 + 16) = 1;
  memcpy(&v30[v23[27]], v280, 0x221uLL);
  OUTLINED_FUNCTION_7_89(v23[28]);
  OUTLINED_FUNCTION_19_19(v23[29]);
  OUTLINED_FUNCTION_7_89(v23[30]);
  *&v30[v23[31]] = 0;
  v58 = &v30[v23[32]];
  *(v58 + 14) = 0;
  *(v58 + 5) = 0u;
  *(v58 + 6) = 0u;
  *(v58 + 3) = 0u;
  *(v58 + 4) = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 2) = 0u;
  *v58 = 0u;
  *&v30[v23[33]] = 0;
  v59 = v23[34];
  v60 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v30[v59], 1, 1, v60);
  OUTLINED_FUNCTION_7_89(v23[35]);
  v30[v23[36]] = 2;
  v61 = v23[37];
  sub_21733B710(v278);
  memcpy(&v30[v61], v278, 0xB0uLL);
  v30[v23[38]] = 2;
  OUTLINED_FUNCTION_19_19(v23[39]);
  OUTLINED_FUNCTION_7_89(v23[40]);
  v62 = OUTLINED_FUNCTION_6_6(v23[41]);
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v53);
  OUTLINED_FUNCTION_19_19(v23[42]);
  v65 = OUTLINED_FUNCTION_6_6(v23[43]);
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v60);
  v30[v23[44]] = 3;
  v30[v23[45]] = 2;
  v30[v23[46]] = 2;
  v30[v23[47]] = 2;
  v30[v23[48]] = 5;
  v30[v23[49]] = 7;
  OUTLINED_FUNCTION_7_89(v23[50]);
  v68 = OUTLINED_FUNCTION_6_6(v23[51]);
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v60);
  v71 = OUTLINED_FUNCTION_6_6(v23[52]);
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v60);
  OUTLINED_FUNCTION_7_89(v23[53]);
  v30[v23[54]] = 2;
  v30[v23[55]] = 10;
  OUTLINED_FUNCTION_7_89(v23[56]);
  v74 = &v30[v23[57]];
  v74[6].n128_u64[0] = 0;
  OUTLINED_FUNCTION_1_0(v74, 0);
  OUTLINED_FUNCTION_0_58(v23[58], v75);
  OUTLINED_FUNCTION_0_58(v23[59], v76);
  v77 = &v30[v23[60]];
  v77[6] = v78;
  v77[7] = v78;
  OUTLINED_FUNCTION_1_0(v77, v78);
  OUTLINED_FUNCTION_0_58(v23[61], v79);
  OUTLINED_FUNCTION_0_58(v23[62], v80);
  v81 = &v30[v23[63]];
  v81[6] = v82;
  v81[7] = v82;
  OUTLINED_FUNCTION_1_0(v81, v82);
  v83 = &v30[v23[64]];
  v83[6] = v84;
  v83[7] = v84;
  OUTLINED_FUNCTION_1_0(v83, v84);
  OUTLINED_FUNCTION_0_58(v23[65], v85);
  OUTLINED_FUNCTION_0_58(v23[66], v86);
  OUTLINED_FUNCTION_0_58(v23[67], v87);
  OUTLINED_FUNCTION_0_58(v23[68], v88);
  *&v30[v23[69]] = 0;
  v89 = &v30[v23[70]];
  *v89 = 0;
  v89[8] = 1;
  *&v30[v23[71]] = 0;
  v90 = sub_217536388();
  if (v90 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    v91 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v91 = v90;
  }

  v92 = v260;

  *&v30[v23[72]] = v91;
  v93 = &v30[v23[75]];
  memcpy(&v30[v23[73]], v284, 0x161uLL);
  v94 = &v30[v23[74]];
  *v94 = countAndFlagsBits;
  *(v94 + 1) = v43;
  v94[16] = BYTE4(v263);
  *v93 = v272;
  *(v93 + 1) = v92;
  v95 = v258;
  *&v30[v23[76]] = v259;
  *&v30[v23[77]] = v95;
  v96 = v256;
  *&v30[v23[78]] = v257;
  *&v30[v23[79]] = v96;
LABEL_20:
  swift_getKeyPath(byte_21779AD00);
  OUTLINED_FUNCTION_76();
  v97 = v30;
  sub_2174AF150(v98, v99, 33);

  v100 = v264;
  if (!*(v30 + 115))
  {
    v101 = sub_2174AAC2C(33, 25, v41);
    if (v102)
    {
      *(v30 + 114) = v101;
      *(v30 + 115) = v102;
    }
  }

  if (!*(v30 + 117))
  {
    v103 = sub_2174AABEC(34, 11, v41);
    if (v104)
    {
      *(v30 + 116) = v103;
      *(v30 + 117) = v104;
    }
  }

  sub_2174AFB84(v275, v276);
  if (*&v276[24])
  {
    sub_2171F3F0C(v276, v277);
    sub_2171FF30C(v277, v280);
    v279[0].id.rawValue._countAndFlagsBits = 1;
    v279[0].id.rawValue._object = 0;
    v279[0].type.rawValue._object = 0;
    v279[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v280, 0, 0, v279, v278);
    memcpy(v279, v278, 0x221uLL);
    nullsub_1();
    memcpy(v280, v30, 0x221uLL);
    sub_2171F0738(v280, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v30, v279, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v277);
  }

  else
  {
    sub_2171F0738(v276, &qword_27CB28308, &qword_21776C430);
  }

  v106 = v23[11];
  if (!*&v30[v106])
  {
    v107 = sub_2172A3AEC(30, v41, v105);
    if ((v108 & 1) == 0)
    {
      v109 = [objc_opt_self() audioTraitsForRawValue_];
      v30[v23[22]] = v109 & 1;
      v110 = sub_217215924(0, &qword_280BE74C8, off_278228CF8);
      v111 = v109;
      v97 = v110;
      *&v30[v106] = sub_217659CB4(v111);
    }
  }

  swift_getKeyPath(byte_21779AD28);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2EC(v112);

  OUTLINED_FUNCTION_54_26();
  if (!v113)
  {
    v114 = sub_2174AABAC(36, 41, v41);
    if (v115)
    {
      *v97 = v114;
      v97[1] = v115;
    }
  }

  OUTLINED_FUNCTION_54_26();
  if (!v116)
  {
    v117 = sub_2172A3B50(1, v41);
    if (v118)
    {
      *v97 = v117;
      v97[1] = v118;
    }
  }

  OUTLINED_FUNCTION_47_34();
  if (v120)
  {
    v121 = sub_2172A3AEC(2, v41, v119);
    if ((v122 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v121);
    }
  }

  OUTLINED_FUNCTION_47_34();
  if (v124)
  {
    v125 = sub_2172A3AEC(3, v41, v123);
    if ((v126 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v125);
    }
  }

  OUTLINED_FUNCTION_54_26();
  if (!v128)
  {
    v129 = sub_2172A3B50(4, v41);
    if (v130)
    {
      *v97 = v129;
      v97[1] = v130;
    }
  }

  v131 = sub_2172A3AEC(5, v41, v127);
  if ((v132 & 1) == 0)
  {
    v133 = [objc_opt_self() cloudStatusForRawValue_];
    if (v133 >= 0xA)
    {
      v134 = 0;
    }

    else
    {
      v134 = v133;
    }

    v30[v23[55]] = v134;
  }

  OUTLINED_FUNCTION_47_34();
  if (v136)
  {
    v137 = sub_2172A3AEC(6, v41, v135);
    if ((v138 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v137);
    }
  }

  OUTLINED_FUNCTION_47_34();
  if (v140)
  {
    v141 = sub_2172A3ACC(7, v41, v139);
    if ((v142 & 1) == 0)
    {
      OUTLINED_FUNCTION_48_25(v141);
    }
  }

  v143 = v23[14];
  if (v30[v143] == 2)
  {
    sub_2172A3B0C(8, v41);
    OUTLINED_FUNCTION_7_1();
    if (!v145)
    {
      v30[v143] = v144 & 1;
    }
  }

  sub_2172A3B24(12, v41, v100);
  *&v272 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v100, 1, v272) != 1)
  {
    OUTLINED_FUNCTION_34_41(v100);
    v146 = v23[43];
    OUTLINED_FUNCTION_53_30();
    sub_217260E5C(v22, &v30[v146]);
  }

  v147 = sub_2171F0738(v100, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    v147 = OUTLINED_FUNCTION_14_3(&qword_280BE8040);
  }

  v150 = qword_280BE8048;
  v151 = unk_280BE8050;
  v152 = byte_280BE8058;
  v153 = qword_280BE8060;
  v154 = unk_280BE8068;
  v155 = byte_280BE8070;
  *(&v280[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v280[2] = sub_2171FEF88(v147, v148, v149);
  v156 = swift_allocObject();
  *&v280[0] = v156;
  *(v156 + 16) = v150;
  *(v156 + 24) = v151;
  *(v156 + 32) = v152;
  *(v156 + 40) = v153;
  *(v156 + 48) = v154;
  *(v156 + 56) = v155;
  LOBYTE(v150) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v280);
  v157 = v265;
  v158 = v269;
  if (v150)
  {
    sub_2172A3B0C(13, v41);
    OUTLINED_FUNCTION_7_1();
    if (!v145)
    {
      v160 = v159;
      sub_2172A3B0C(14, v41);
      OUTLINED_FUNCTION_7_1();
      if (!v145)
      {
        if (v160)
        {
          if (v161)
          {
            v163 = 0;
          }

          else
          {
            v163 = 2;
          }
        }

        else
        {
          v163 = v161 & 1;
        }

        goto LABEL_81;
      }
    }

    sub_2172A3B0C(14, v41);
    OUTLINED_FUNCTION_7_1();
    if (!v145 && (v162 & 1) != 0)
    {
      v163 = 1;
LABEL_81:
      v30[v23[44]] = v163;
      goto LABEL_82;
    }

    sub_2172A3B0C(13, v41);
    OUTLINED_FUNCTION_7_1();
    if (!v145 && (v164 & 1) != 0)
    {
      v163 = 2;
      goto LABEL_81;
    }
  }

LABEL_82:
  sub_2172A3B0C(9, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[54]] = v165;
  }

  swift_getKeyPath(byte_21779AD48);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F0(v166);

  sub_2172A3B0C(15, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[45]] = v167;
  }

  sub_2172A3B0C(16, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[46]] = v168;
  }

  sub_2172A3B0C(18, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[47]] = v169;
  }

  sub_2172A3B0C(19, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[24]] = v170;
  }

  v172 = sub_2172A3AEC(20, v41, v171);
  if ((v173 & 1) == 0)
  {
    v174 = [objc_opt_self() keepLocalEnabledStateForRawValue_];
    if (v174 < 5)
    {
      v30[v23[48]] = v174;
    }
  }

  swift_getKeyPath(byte_21779AD68);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AE510(v175);

  v177 = sub_2172A3AEC(22, v41, v176);
  if ((v178 & 1) == 0)
  {
    v179 = [objc_opt_self() keepLocalManagedStatusReasonsForRawValue_];
    v180 = &v30[v23[50]];
    *v180 = v179 & 0x7F;
    v180[8] = 0;
  }

  sub_2172A3B24(23, v41, v158);
  v181 = v272;
  if (__swift_getEnumTagSinglePayload(v158, 1, v272) != 1)
  {
    OUTLINED_FUNCTION_34_41(v158);
    v182 = v23[51];
    OUTLINED_FUNCTION_53_30();
    v183 = &v30[v182];
    v158 = v269;
    v181 = v272;
    sub_217260E5C(0x278228000, v183);
  }

  sub_2171F0738(v158, &qword_27CB241C0, &qword_217759480);
  swift_getKeyPath(byte_21779AD88);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F4(v184);

  sub_2172A3B24(24, v41, v157);
  if (__swift_getEnumTagSinglePayload(v157, 1, v181) != 1)
  {
    OUTLINED_FUNCTION_34_41(v157);
    v185 = v23[52];
    OUTLINED_FUNCTION_53_30();
    v181 = v272;
    sub_217260E5C(0x278228000, &v30[v185]);
  }

  sub_2171F0738(v157, &qword_27CB241C0, &qword_217759480);
  swift_getKeyPath(byte_21779ADA8);
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_94_8();
  sub_2174AF2F8();

  v187 = sub_2172A3AEC(32, v41, v186);
  if ((v189 & 1) == 0 && v187)
  {
    OUTLINED_FUNCTION_16_2(v187, v23[35]);
  }

  v190 = sub_2172A3AEC(25, v41, v188);
  if ((v191 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v190, v23[53]);
  }

  v192 = v23[34];
  v193 = &qword_27CB241C0;
  v194 = v266;
  sub_2171F5110(&v30[v192], v266, &qword_27CB241C0, &qword_217759480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v194, 1, v181);
  sub_2171F0738(v194, &qword_27CB241C0, &qword_217759480);
  v145 = EnumTagSinglePayload == 1;
  v196 = v270;
  if (v145)
  {
    v193 = v267;
    sub_2172A3B24(26, v41, v267);
    if (__swift_getEnumTagSinglePayload(v193, 1, v181) != 1)
    {
      v197 = v271;
      sub_2171F5110(v267, v271, &qword_27CB241C0, &qword_217759480);
      v193 = v267;
      sub_2171F0738(&v30[v192], &qword_27CB241C0, &qword_217759480);
      sub_217260E5C(v197, &v30[v192]);
    }

    sub_2171F0738(v193, &qword_27CB241C0, &qword_217759480);
  }

  sub_2172A3B0C(27, v41);
  OUTLINED_FUNCTION_7_1();
  if (!v145)
  {
    v30[v23[36]] = v198;
  }

  OUTLINED_FUNCTION_54_26();
  if (!v199)
  {
    v200 = sub_2172A3B50(28, v41);
    if (v201)
    {
      *v193 = v200;
      v193[1] = v201;
    }
  }

  OUTLINED_FUNCTION_47_34();
  if (v203)
  {
    v204 = sub_2172A3AEC(29, v41, v202);
    if ((v205 & 1) == 0)
    {
      if (v204)
      {
        OUTLINED_FUNCTION_48_25(v204);
      }
    }
  }

  v206 = sub_2172A3ACC(31, v41, v202);
  if ((v207 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v206, v23[56]);
  }

  swift_getKeyPath("xF>e");
  sub_2174AEC5C();

  v208 = sub_217269F50(v284);
  if (qword_280BE9738 != -1)
  {
    v208 = OUTLINED_FUNCTION_1_33(&qword_280BE9738);
  }

  *&v280[0] = qword_280BE9740;
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_14_68();
  v210 = sub_2173DDC78(sub_2174A5E68, v209, v196);
  if (v210)
  {
    v210 = sub_2174AF960(v41, 33);
    if (v210)
    {
      v211 = v210;
      if (qword_280BE85B8 != -1)
      {
        swift_once();
      }

      v272 = xmmword_280BE85C0;
      v212 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      OUTLINED_FUNCTION_30_46();
      OUTLINED_FUNCTION_40_38(qword_28295B1E0);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v196, v213, v214, v215, v216);
      OUTLINED_FUNCTION_55_28();
      v217 = OUTLINED_FUNCTION_27_52();
      Album.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v217, v218, v219, v220, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F8, &qword_217758D80);
      v222 = swift_allocObject();
      *(v222 + 16) = xmmword_2177586E0;
      sub_21725CF0C(v279, v222 + 32);
      sub_2174AA1AC(v222);
      v223 = v23[57];
      sub_2171F0738(&v30[v223], &qword_27CB25318, &qword_2177657C0);
      memcpy(&v30[v223], v280, 0x68uLL);
      swift_unknownObjectRelease();
      v210 = sub_21725CE44(v279);
      v196 = v270;
    }
  }

  if (qword_280BE9710 != -1)
  {
    v210 = OUTLINED_FUNCTION_21_51(&qword_280BE9710);
  }

  *&v280[0] = qword_280BE9718;
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_14_68();
  v225 = sub_2173DDC78(sub_2174A6244, v224, v196);
  if (v225)
  {
    v225 = sub_2174AF960(v41, 34);
    if (v225)
    {
      v226 = v225;
      if (qword_280BE2A18 != -1)
      {
        swift_once();
      }

      v272 = xmmword_280BE2A20;
      v227 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      OUTLINED_FUNCTION_30_46();
      OUTLINED_FUNCTION_40_38(qword_28295B220);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v196, v228, v229, v230, v231);
      OUTLINED_FUNCTION_55_28();
      v232 = OUTLINED_FUNCTION_27_52();
      Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v232, v233, v234, v235, v236);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24758, &qword_217758CE0);
      v237 = swift_allocObject();
      *(v237 + 16) = xmmword_2177586E0;
      sub_21725CF68(v279, v237 + 32);
      sub_2174AA180(v237);
      v238 = v23[59];
      sub_2171F0738(&v30[v238], &qword_27CB25310, &unk_21775D3D0);
      memcpy(&v30[v238], v280, 0x68uLL);
      swift_unknownObjectRelease();
      v225 = sub_217284498(v279);
      v196 = v270;
    }
  }

  if (qword_280BE9720 != -1)
  {
    v225 = OUTLINED_FUNCTION_4_39(&qword_280BE9720);
  }

  *&v280[0] = qword_280BE9728;
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_14_68();
  v240 = sub_2173DDC78(sub_2174A6244, v239, v196);

  if (v240)
  {
    v241 = sub_2174AF960(v41, 37);

    if (v241)
    {
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v243 = qword_280BE2A98;
      v242 = unk_280BE2AA0;
      v272 = xmmword_280BE2A88;
      v244 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v279[0].id = v272;
      v279[0].type.rawValue._countAndFlagsBits = v243;
      v279[0].type.rawValue._object = v242;
      OUTLINED_FUNCTION_40_38(qword_28295B260);
      sub_217751DE8();
      OUTLINED_FUNCTION_19_51();
      sub_2172B6904(v244, v245, v246, v247, v248);
      memset(v278, 0, 40);
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_27_52();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v249, v250, v251);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v252 = swift_allocObject();
      *(v252 + 16) = xmmword_2177586E0;
      sub_217284130(v279, v252 + 32);
      sub_2174AA468(v252);
      v253 = v23[65];
      sub_2171F0738(&v30[v253], &qword_27CB25320, &unk_21776E020);
      memcpy(&v30[v253], v280, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v279);
    }
  }

  else
  {
  }

  *(&v280[1] + 1) = v23;
  *&v280[2] = &protocol witness table for SongPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v280);
  sub_2176FDABC(v30, boxed_opaque_existential_0);
  Song.init(propertyProvider:)(v280, v268);
  swift_unknownObjectRelease();
  sub_2171F0738(v274, &qword_27CB27590, &qword_21776ADF0);
  return sub_21753BAF0(v30);
}