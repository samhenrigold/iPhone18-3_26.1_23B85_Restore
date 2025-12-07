uint64_t sub_2172D2ABC(uint64_t a1)
{
  sub_2177531E8();
  CloudAlbum.Attributes.hash(into:)();
  return sub_217753238();
}

MusicKit::CloudAlbum::Relationships::CodingKeys_optional __swiftcall CloudAlbum.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_177_1();
  v2 = sub_217752DC8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

MusicKit::CloudAlbum::Relationships::CodingKeys_optional __swiftcall CloudAlbum.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudAlbum.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t CloudAlbum.Relationships.CodingKeys.stringValue.getter()
{
  result = 0x73747369747261;
  switch(*v0)
  {
    case 1:
      result = 0x676F6C61746163;
      break;
    case 2:
      result = 0x7365726E6567;
      break;
    case 3:
      result = 0x736B63617274;
      break;
    case 4:
      result = 0x7972617262696CLL;
      break;
    case 5:
      result = 0x6C2D64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172D2C78@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAlbum.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2172D2CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172DFB1C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D2CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172DFB1C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudAlbum.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v138)
  {
    if (!v139)
    {
      sub_2171F0738(v137, &qword_27CB24280, &unk_21775D680);
      goto LABEL_7;
    }

LABEL_12:
    v46 = &qword_27CB25068;
    v47 = &qword_21775B528;
LABEL_35:
    sub_2171F0738(v137, v46, v47);
    return 0;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v139)
  {
    sub_2171F0738(v136, &qword_27CB24288, &qword_217758F80);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v135[0]);
  v16 = OUTLINED_FUNCTION_79_5(v8, v9, v10, v11, v12, v13, v14, v15, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v17, v18, v19);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v20, v21, v22);
  sub_2171F0738(v137, &qword_27CB24280, &unk_21775D680);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v138)
  {
    v23 = OUTLINED_FUNCTION_159_1();
    if (!v139)
    {
LABEL_33:
      sub_2171F0738(v136, &qword_27CB24278, &unk_217759070);
      goto LABEL_34;
    }

    v31 = OUTLINED_FUNCTION_75(v23, v24, v25, v26, v27, v28, v29, v30, v135[0]);
    v39 = OUTLINED_FUNCTION_29_10(v31, v32, v33, v34, v35, v36, v37, v38, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v40, v41, v42);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v43, v44, v45);
    sub_2171F0738(v137, &qword_27CB24270, &unk_21775D640);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v139)
    {
LABEL_34:
      v46 = &qword_27CB25070;
      v47 = &unk_21777EF10;
      goto LABEL_35;
    }

    sub_2171F0738(v137, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v138)
  {
    if (!v139)
    {
      sub_2171F0738(v137, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v48 = OUTLINED_FUNCTION_159_1();
  if (!v139)
  {
    sub_2171F0738(v136, &qword_27CB243B8, &qword_2177586B0);
LABEL_26:
    v46 = &unk_27CB25078;
    v47 = &unk_21775B530;
    goto LABEL_35;
  }

  v56 = OUTLINED_FUNCTION_75(v48, v49, v50, v51, v52, v53, v54, v55, v135[0]);
  v64 = OUTLINED_FUNCTION_79_5(v56, v57, v58, v59, v60, v61, v62, v63, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v65, v66, v67);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v68, v69, v70);
  sub_2171F0738(v137, &qword_27CB243B0, &unk_21775D670);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v138)
  {
    if (!v139)
    {
      sub_2171F0738(v137, &qword_27CB24240, &qword_217758668);
      goto LABEL_29;
    }

LABEL_39:
    v46 = &unk_27CB25080;
    v47 = &unk_21775B538;
    goto LABEL_35;
  }

  v71 = OUTLINED_FUNCTION_159_1();
  if (!v139)
  {
    sub_2171F0738(v136, &qword_27CB24248, &qword_217758670);
    goto LABEL_39;
  }

  v79 = OUTLINED_FUNCTION_75(v71, v72, v73, v74, v75, v76, v77, v78, v135[0]);
  v87 = OUTLINED_FUNCTION_79_5(v79, v80, v81, v82, v83, v84, v85, v86, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v88, v89, v90);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v91, v92, v93);
  sub_2171F0738(v137, &qword_27CB24240, &qword_217758668);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v138)
  {
    if (!v139)
    {
      sub_2171F0738(v137, &qword_27CB24270, &unk_21775D640);
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v94 = OUTLINED_FUNCTION_159_1();
  if (!v139)
  {
    goto LABEL_33;
  }

  v102 = OUTLINED_FUNCTION_75(v94, v95, v96, v97, v98, v99, v100, v101, v135[0]);
  v110 = OUTLINED_FUNCTION_29_10(v102, v103, v104, v105, v106, v107, v108, v109, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v111, v112, v113);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v114, v115, v116);
  sub_2171F0738(v137, &qword_27CB24270, &unk_21775D640);
  if ((v110 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v138)
  {
    if (!v139)
    {
      sub_2171F0738(v137, &qword_27CB242D0, &unk_21775D660);
      return 1;
    }

    goto LABEL_50;
  }

  v118 = OUTLINED_FUNCTION_159_1();
  if (!v139)
  {
    sub_2171F0738(v136, &qword_27CB242D8, &unk_21777EEB0);
LABEL_50:
    v46 = &unk_27CB25088;
    v47 = &unk_21777EF40;
    goto LABEL_35;
  }

  v126 = OUTLINED_FUNCTION_75(v118, v119, v120, v121, v122, v123, v124, v125, v135[0]);
  v134 = OUTLINED_FUNCTION_79_5(v126, v127, v128, v129, v130, v131, v132, v133, v135[0], v135[1], v135[2], v135[3], v135[4], v135[5], v135[6], v135[7], v135[8], v135[9], v135[10], v135[11], v135[12], v135[13], v135[14], v135[15]);
  OUTLINED_FUNCTION_169_1(v135);
  OUTLINED_FUNCTION_169_1(v136);
  sub_2171F0738(v137, &qword_27CB242D0, &unk_21775D660);
  return (v134 & 1) != 0;
}

void CloudAlbum.Relationships.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25090, &qword_21775B540);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_2172DFB1C(v2, v3, v4);
  OUTLINED_FUNCTION_105(&type metadata for CloudAlbum.Relationships.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
  sub_2172DFB70();
  OUTLINED_FUNCTION_28_8();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172DFCDC();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_72();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    sub_2172E000C();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_72();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E0178();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
  }

  v7 = OUTLINED_FUNCTION_113_3();
  v8(v7);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.Relationships.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_74_4();
    sub_2171F0738(&v55, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v8 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_7_13();
    v16 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4E4(v16, v17);
    sub_2171F0738(&v55, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_74_4();
    sub_2171F0738(&v55, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v26 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v26, v27, v28, v29, v30, v31, v32, v33, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_26_12();
    v34 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4E4(v34, v35);
    sub_2171F0738(&v55, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v71)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_7_13();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4E4(v44, v45);
    sub_2171F0738(&v55, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v46 = sub_2172E3D54();
  if (!v71)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_74_4();
  return sub_2171F0738(&v55, &qword_27CB242D8, &unk_21777EEB0);
}

uint64_t CloudAlbum.Relationships.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v56, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v8 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v8, v9, v10, v11, v12, v13, v14, v15, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_155_1(v16, v17);
    sub_2171F0738(v56, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v56, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v26 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v26, v27, v28, v29, v30, v31, v32, v33, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_155_1(v34, v35);
    sub_2171F0738(v56, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_155_1(v44, v45);
    sub_2171F0738(v56, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v46 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_180(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v56, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudAlbum.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25140, &qword_21775B548);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2172DFB1C(v6, v7, v8);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_187_1();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    OUTLINED_FUNCTION_213_2();
    sub_2172E02E4();
    OUTLINED_FUNCTION_46_8();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    OUTLINED_FUNCTION_212_1();
    sub_2172E0450();
    OUTLINED_FUNCTION_102_5();
    OUTLINED_FUNCTION_179_1(v9, v10);
    OUTLINED_FUNCTION_168_2(&v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    OUTLINED_FUNCTION_210_1();
    sub_2172E05BC();
    OUTLINED_FUNCTION_36_6();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    OUTLINED_FUNCTION_207_1();
    sub_2172E0728();
    OUTLINED_FUNCTION_36_6();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v18);
    OUTLINED_FUNCTION_102_5();
    OUTLINED_FUNCTION_179_1(v11, v12);
    OUTLINED_FUNCTION_168_2(&v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E0894();
    OUTLINED_FUNCTION_36_6();
    sub_217752E58();
    v13 = OUTLINED_FUNCTION_82();
    v14(v13);
    OUTLINED_FUNCTION_168_2(&v20);
    sub_2172E0A00(v15, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A4EC(v15);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D3E60(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727ECA4);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E3A0);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E758);
    sub_2171F0738(__dst, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727DD7C);
    sub_2171F0738(__dst, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E3A0);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E0EC);
    sub_2171F0738(__dst, &qword_27CB242D8, &unk_21777EEB0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

MusicKit::CloudAlbum::Associations::CodingKeys_optional __swiftcall CloudAlbum.Associations.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  OUTLINED_FUNCTION_177_1();
  v2 = sub_217752DC8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t CloudAlbum.Associations.CodingKeys.stringValue.getter()
{
  result = 0x2D73726165707061;
  switch(*v0)
  {
    case 1:
      result = 0x65762D726568746FLL;
      break;
    case 2:
    case 3:
      result = 0x2D646574616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172D4300@<X0>(uint64_t *a1@<X8>)
{
  result = CloudAlbum.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2172D4344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E0A38(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E0A38(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudAlbum.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v92)
  {
    if (!v93)
    {
      sub_2171F0738(v91, &qword_27CB242C0, &unk_21775D650);
      goto LABEL_7;
    }

LABEL_12:
    v46 = &qword_27CB25198;
    v47 = &qword_21775B550;
LABEL_22:
    sub_2171F0738(v91, v46, v47);
    return 0;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v93)
  {
    sub_2171F0738(v90, &qword_27CB242C8, &unk_217758970);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v89[0]);
  v16 = OUTLINED_FUNCTION_79_5(v8, v9, v10, v11, v12, v13, v14, v15, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12], v89[13], v89[14], v89[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v17, v18, v19);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v20, v21, v22);
  sub_2171F0738(v91, &qword_27CB242C0, &unk_21775D650);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v92)
  {
    v23 = OUTLINED_FUNCTION_159_1();
    if (!v93)
    {
LABEL_19:
      sub_2171F0738(v90, &qword_27CB24278, &unk_217759070);
      goto LABEL_21;
    }

    v31 = OUTLINED_FUNCTION_75(v23, v24, v25, v26, v27, v28, v29, v30, v89[0]);
    v39 = OUTLINED_FUNCTION_29_10(v31, v32, v33, v34, v35, v36, v37, v38, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12], v89[13], v89[14], v89[15]);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v40, v41, v42);
    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v43, v44, v45);
    sub_2171F0738(v91, &qword_27CB24270, &unk_21775D640);
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v93)
    {
LABEL_21:
      v46 = &qword_27CB25070;
      v47 = &unk_21777EF10;
      goto LABEL_22;
    }

    sub_2171F0738(v91, &qword_27CB24270, &unk_21775D640);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v92)
  {
    if (!v93)
    {
      sub_2171F0738(v91, &qword_27CB24270, &unk_21775D640);
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v48 = OUTLINED_FUNCTION_159_1();
  if (!v93)
  {
    goto LABEL_19;
  }

  v56 = OUTLINED_FUNCTION_75(v48, v49, v50, v51, v52, v53, v54, v55, v89[0]);
  v64 = OUTLINED_FUNCTION_29_10(v56, v57, v58, v59, v60, v61, v62, v63, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12], v89[13], v89[14], v89[15]);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v65, v66, v67);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v68, v69, v70);
  sub_2171F0738(v91, &qword_27CB24270, &unk_21775D640);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v92)
  {
    if (!v93)
    {
      sub_2171F0738(v91, &qword_27CB242B0, &unk_21775D630);
      return 1;
    }

    goto LABEL_34;
  }

  v72 = OUTLINED_FUNCTION_159_1();
  if (!v93)
  {
    sub_2171F0738(v90, &qword_27CB242B8, &unk_21777EEA0);
LABEL_34:
    v46 = &qword_27CB251A0;
    v47 = &unk_21777EF30;
    goto LABEL_22;
  }

  v80 = OUTLINED_FUNCTION_75(v72, v73, v74, v75, v76, v77, v78, v79, v89[0]);
  v88 = OUTLINED_FUNCTION_79_5(v80, v81, v82, v83, v84, v85, v86, v87, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v89[6], v89[7], v89[8], v89[9], v89[10], v89[11], v89[12], v89[13], v89[14], v89[15]);
  OUTLINED_FUNCTION_169_1(v89);
  OUTLINED_FUNCTION_169_1(v90);
  sub_2171F0738(v91, &qword_27CB242B0, &unk_21775D630);
  return (v88 & 1) != 0;
}

void CloudAlbum.Associations.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB251A8, &qword_21775B558);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_2172E0A38(v2, v3, v4);
  OUTLINED_FUNCTION_105(&type metadata for CloudAlbum.Associations.CodingKeys, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
  sub_2172E0A8C();
  OUTLINED_FUNCTION_28_8();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172DFCDC();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_72();
    sub_217752F38();
    OUTLINED_FUNCTION_106();
    OUTLINED_FUNCTION_72();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
  }

  v7 = OUTLINED_FUNCTION_113_3();
  v8(v7);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_74_4();
    sub_2171F0738(&v37, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v8 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_7_13();
    v16 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4E4(v16, v17);
    sub_2171F0738(&v37, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v53)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_7_13();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE4E4(v26, v27);
    sub_2171F0738(&v37, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v28 = sub_2172E3D54();
  if (!v53)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_74_4();
  return sub_2171F0738(&v37, &qword_27CB242B8, &unk_21777EEA0);
}

uint64_t CloudAlbum.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v38, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v8 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v8, v9, v10, v11, v12, v13, v14, v15, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_155_1(v16, v17);
    sub_2171F0738(v38, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_155_1(v26, v27);
    sub_2171F0738(v38, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v28 = sub_2172E3D54();
  if (v54)
  {
    OUTLINED_FUNCTION_180(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38[0], v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v38, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudAlbum.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB251F8, &qword_21775B560);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_2();
  v6 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2172E0A38(v6, v7, v8);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_187_1();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242C8, &unk_217758970);
    OUTLINED_FUNCTION_213_2();
    sub_2172E0D64();
    OUTLINED_FUNCTION_46_8();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    OUTLINED_FUNCTION_212_1();
    sub_2172E0450();
    OUTLINED_FUNCTION_102_5();
    OUTLINED_FUNCTION_181_2();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v12);
    OUTLINED_FUNCTION_210_1();
    OUTLINED_FUNCTION_102_5();
    OUTLINED_FUNCTION_181_2();
    sub_217752E58();
    OUTLINED_FUNCTION_168_2(&v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    OUTLINED_FUNCTION_207_1();
    sub_2172E0ED0();
    OUTLINED_FUNCTION_36_6();
    sub_217752E58();
    v9 = OUTLINED_FUNCTION_88();
    v10(v9);
    OUTLINED_FUNCTION_168_2(&v14);
    sub_2172E103C(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2172845E8(v11);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D4FE4(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E990);
    sub_2171F0738(__dst, &qword_27CB242C8, &unk_217758970);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E3A0);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E3A0);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727E570);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void *CloudAlbum.Metadata.init(pivot:reason:snippets:associations:)@<X0>(void *__src@<X3>, _OWORD *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 16);
  v6 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v6;
  *(a5 + 32) = *a3;
  *(a5 + 48) = v5;
  *(a5 + 56) = a4;
  return memcpy((a5 + 64), __src, 0x100uLL);
}

void CloudAlbum.Metadata.pivot.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2172838F8(v2, v3, v4, v5);
}

uint64_t CloudAlbum.Metadata.reason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2172E1074(v2, v3, v4);
}

void sub_2172D5330(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_177_1();
  v3 = sub_217752DC8();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *v2 = v4;
}

unint64_t CloudAlbum.Metadata.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_2172D540C@<X0>(unint64_t *a1@<X8>)
{
  result = CloudAlbum.Metadata.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2172D5450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E10B8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E10B8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL static CloudAlbum.Metadata.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v46)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (v47)
    {
      v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v43[0]);
      v16 = OUTLINED_FUNCTION_79_5(v8, v9, v10, v11, v12, v13, v14, v15, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15]);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v17, v18, v19);
      OUTLINED_FUNCTION_171_1();
      sub_2171F0738(v20, v21, v22);
      sub_2171F0738(v45, &qword_27CB24230, &unk_21775E9D0);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F0738(v44, &qword_27CB24238, &unk_21775EA00);
LABEL_12:
    v40 = &unk_27CB25220;
    v41 = &unk_21775ED30;
    goto LABEL_18;
  }

  if (v47)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v45, &qword_27CB24230, &unk_21775E9D0);
LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v46)
  {
    v23 = OUTLINED_FUNCTION_159_1();
    if (v47)
    {
      v31 = OUTLINED_FUNCTION_75(v23, v24, v25, v26, v27, v28, v29, v30, v43[0]);
      v39 = OUTLINED_FUNCTION_79_5(v31, v32, v33, v34, v35, v36, v37, v38, v43[0], v43[1], v43[2], v43[3], v43[4], v43[5], v43[6], v43[7], v43[8], v43[9], v43[10], v43[11], v43[12], v43[13], v43[14], v43[15]);
      OUTLINED_FUNCTION_169_1(v43);
      OUTLINED_FUNCTION_169_1(v44);
      sub_2171F0738(v45, &qword_27CB24240, &qword_217758668);
      return (v39 & 1) != 0;
    }

    sub_2171F0738(v44, &qword_27CB24248, &qword_217758670);
  }

  else if (!v47)
  {
    sub_2171F0738(v45, &qword_27CB24240, &qword_217758668);
    return 1;
  }

  v40 = &unk_27CB25080;
  v41 = &unk_21775B538;
LABEL_18:
  sub_2171F0738(v45, v40, v41);
  return 0;
}

void CloudAlbum.Metadata.Associations.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25228, &qword_21775B568);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = OUTLINED_FUNCTION_68();
  sub_2172E10B8(v8, v9, v10);
  OUTLINED_FUNCTION_106();
  sub_2177532F8();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
  v11 = sub_2172E110C();
  OUTLINED_FUNCTION_223_0(v0, &v19, v12, v13, v11);
  if (!v1)
  {
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    v14 = sub_2172E000C();
    OUTLINED_FUNCTION_223_0(v0 + 128, &v18, v15, v16, v14);
  }

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.Metadata.Associations.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v0 = sub_2172E3D54();
  if (v35)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_74_4();
    sub_2171F0738(&v19, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v8 = sub_2172E3D54();
  if (!v35)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_26_12();
  v16 = OUTLINED_FUNCTION_11_7();
  sub_2172DE4E4(v16, v17);
  return sub_2171F0738(&v19, &qword_27CB24248, &qword_217758670);
}

uint64_t CloudAlbum.Metadata.Associations.hashValue.getter()
{
  OUTLINED_FUNCTION_192_1();
  v0 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_73_6();
    sub_2171F0738(v20, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v8 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_180(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_26_12();
    OUTLINED_FUNCTION_155_1(v16, v17);
    sub_2171F0738(v20, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudAlbum.Metadata.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25258, &qword_21775B570);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_2();
  v5 = OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_2172E10B8(v5, v6, v7);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_187_1();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24238, &unk_21775EA00);
    OUTLINED_FUNCTION_213_2();
    sub_2172E1278();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    memcpy(v12, v11, sizeof(v12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24248, &qword_217758670);
    OUTLINED_FUNCTION_212_1();
    sub_2172E0728();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    v8 = OUTLINED_FUNCTION_86();
    v9(v8);
    memcpy(v13, v11, sizeof(v13));
    sub_2172E13E4(v12, v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A540(v12);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D5C84(uint64_t a1)
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727DDA4);
    sub_2171F0738(__dst, &qword_27CB24238, &unk_21775EA00);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE4E4(v4, sub_21727DD7C);
    sub_2171F0738(__dst, &qword_27CB24248, &qword_217758670);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void static CloudAlbum.Metadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_169();
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  if (v3 == 1)
  {
    v11 = OUTLINED_FUNCTION_216_1();
    sub_2172838F8(v11, v12, v13, v14);
    if (v8 == 1)
    {
      OUTLINED_FUNCTION_184_1();
      sub_2172838F8(v15, v16, v17, v18);
      v19 = OUTLINED_FUNCTION_216_1();
      sub_217283940(v19, v20, v21, v22);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_184_1();
    sub_2172838F8(v35, v36, v37, v38);
LABEL_7:
    v39 = OUTLINED_FUNCTION_47_0();
    sub_217283940(v39, v40, v41, v42);
    OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_184_1();
    sub_217283940(v43, v44, v45, v46);
    goto LABEL_15;
  }

  v95[0] = *v2;
  v95[1] = v3;
  v96 = v5;
  v97 = v4;
  if (v8 == 1)
  {
    v23 = OUTLINED_FUNCTION_47_0();
    sub_2172838F8(v23, v24, v25, v26);
    OUTLINED_FUNCTION_184_1();
    sub_2172838F8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_47_0();
    sub_2172838F8(v31, v32, v33, v34);

    goto LABEL_7;
  }

  v94[0] = v7;
  v94[1] = v8;
  v94[2] = v10;
  v94[3] = v9;
  v92 = static CloudPivotMetadata.== infix(_:_:)(v95, v94);
  v47 = OUTLINED_FUNCTION_47_0();
  sub_2172838F8(v47, v48, v49, v50);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_184_1();
  sub_2172838F8(v51, v52, v53, v54);
  v55 = OUTLINED_FUNCTION_47_0();
  sub_2172838F8(v55, v56, v57, v58);

  v59 = OUTLINED_FUNCTION_47_0();
  sub_217283940(v59, v60, v61, v62);
  if ((v92 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v64 = v1[4];
  v63 = v1[5];
  v65 = *(v0 + 48);
  if (v1[6])
  {
    if (v65)
    {
      v66 = OUTLINED_FUNCTION_83_1();
      sub_2172E1074(v66, v67, v68);
      v69 = OUTLINED_FUNCTION_25_0();
      sub_2172E1074(v69, v70, v65);
      OUTLINED_FUNCTION_83_1();
      v71 = sub_2172AA364();
      v72 = OUTLINED_FUNCTION_25_0();
      sub_2172E141C(v72, v73, v65);
      v74 = OUTLINED_FUNCTION_83_1();
      sub_2172E141C(v74, v75, v76);
      if ((v71 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

LABEL_14:
    v77 = OUTLINED_FUNCTION_83_1();
    sub_2172E1074(v77, v78, v79);
    v80 = OUTLINED_FUNCTION_25_0();
    sub_2172E1074(v80, v81, v65);
    v82 = OUTLINED_FUNCTION_83_1();
    sub_2172E141C(v82, v83, v84);
    v85 = OUTLINED_FUNCTION_25_0();
    sub_2172E141C(v85, v86, v65);
    goto LABEL_15;
  }

  if (v65)
  {
    goto LABEL_14;
  }

  sub_2172E1074(v1[4], v1[5], 0);
  v87 = OUTLINED_FUNCTION_25_0();
  sub_2172E1074(v87, v88, 0);
  sub_2172E141C(v64, v63, 0);
LABEL_17:
  v89 = *(v0 + 56);
  if (v1[7])
  {
    if (v89)
    {
      sub_217751DE8();
      sub_21726F358();
      v91 = v90;

      if (v91)
      {
LABEL_22:
        OUTLINED_FUNCTION_39_0();
        sub_2172E3D54();
        OUTLINED_FUNCTION_39_0();
        sub_2172E3D54();
        if (v96 == 1)
        {
          if (v98[2] == 1)
          {
            sub_2171F0738(v95, &qword_27CB243D0, &unk_21775D3C0);
            goto LABEL_15;
          }
        }

        else
        {
          sub_2172E3D54();
          if (v98[2] != 1)
          {
            memcpy(__dst, v98, sizeof(__dst));
            static CloudAlbum.Metadata.Associations.== infix(_:_:)();
            sub_21726A540(__dst);
            sub_21726A540(v94);
            sub_2171F0738(v95, &qword_27CB243D0, &unk_21775D3C0);
            goto LABEL_15;
          }

          sub_21726A540(v94);
        }

        sub_2171F0738(v95, &qword_27CB25270, &qword_21775B578);
      }
    }
  }

  else if (!v89)
  {
    goto LABEL_22;
  }

LABEL_15:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172D6134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746F766970 && a2 == 0xE500000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7374657070696E73 && a2 == 0xE800000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746169636F737361 && a2 == 0xEC000000736E6F69)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

uint64_t sub_2172D6290(char a1)
{
  result = 0x746F766970;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616572;
      break;
    case 2:
      result = 0x7374657070696E73;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172D631C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172D6134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172D6344@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172D6288();
  *a1 = result;
  return result;
}

uint64_t sub_2172D636C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E1460(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D63A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E1460(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAlbum.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25278, &qword_21775B580);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_87_2();
  v3 = OUTLINED_FUNCTION_68();
  v6 = sub_2172E1460(v3, v4, v5);
  OUTLINED_FUNCTION_105(&type metadata for CloudAlbum.Metadata.CodingKeys, v7, v6);
  v16 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v22 = v1[3];
  sub_2172838F8(*v1, v18, v20, v22);
  sub_2172E14B4(v8, v9, v10);
  OUTLINED_FUNCTION_67_0();
  sub_217752F38();
  sub_217283940(v16, v18, v20, v22);
  if (!v0)
  {
    v17 = v1[4];
    v19 = v1[5];
    v21 = v1[6];
    sub_2172E1074(v17, v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    sub_2172E1508();
    OUTLINED_FUNCTION_28_8();
    sub_217752F38();
    sub_2172E141C(v17, v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E163C();
    OUTLINED_FUNCTION_28_8();
    v11 = sub_217752F38();
    sub_2172E17F4(v11, v12, v13);
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  v14 = OUTLINED_FUNCTION_113_3();
  v15(v14);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.Metadata.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  v3 = *(v1 + 8);
  if (v3 != 1)
  {
    v4 = v2[3];
    OUTLINED_FUNCTION_24();
    if (v3)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
      if (v4)
      {
LABEL_4:
        OUTLINED_FUNCTION_24();
        OUTLINED_FUNCTION_171_1();
        sub_217751FF8();
        goto LABEL_7;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_7:
  v5 = v2[6];
  if (v5)
  {
    v6 = v2[5];
    OUTLINED_FUNCTION_24();
    if (v6)
    {
      OUTLINED_FUNCTION_24();
      sub_217751FF8();
    }

    else
    {
      OUTLINED_FUNCTION_25();
    }

    sub_217751DE8();
    sub_217265A08(v0, v5);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v7 = v2[7];
  if (v7)
  {
    OUTLINED_FUNCTION_24();
    sub_21727DDE0(v0, v7, v8, v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  return sub_21726429C();
}

uint64_t CloudAlbum.Metadata.hashValue.getter()
{
  sub_2177531E8();
  CloudAlbum.Metadata.hash(into:)();
  return sub_217753238();
}

void CloudAlbum.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB252B8, &qword_21775B598);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_2();
  v31 = OUTLINED_FUNCTION_160(v27, v27[3]);
  sub_2172E1460(v31, v32, v33);
  OUTLINED_FUNCTION_182_1();
  OUTLINED_FUNCTION_187_1();
  v34 = sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    a13 = 0;
    v37 = sub_2172E1848(v34, v35, v36);
    OUTLINED_FUNCTION_220_1(&type metadata for CloudPivotMetadata, &a13, v38, v39, v37);
    v49[0] = v48[0];
    v49[1] = v48[1];
    v49[2] = v48[2];
    v49[3] = v48[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25288, &qword_21775B588);
    OUTLINED_FUNCTION_212_1();
    sub_2172E189C();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    v49[4] = v48[0];
    v49[5] = v48[1];
    v49[6] = v48[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    OUTLINED_FUNCTION_210_1();
    sub_2172E1928();
    OUTLINED_FUNCTION_55_0();
    sub_217752E58();
    v49[7] = v48[0];
    OUTLINED_FUNCTION_207_1();
    v43 = sub_2172E1A38(v40, v41, v42);
    OUTLINED_FUNCTION_220_1(&type metadata for CloudAlbum.Metadata.Associations, &a13, v44, v45, v43);
    v46 = OUTLINED_FUNCTION_86();
    v47(v46);
    memcpy(v50, v48, sizeof(v50));
    sub_2172E1A8C(v49, v29);
    __swift_destroy_boxed_opaque_existential_1(v27);
    sub_21726A498(v49);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D6A2C(uint64_t a1)
{
  sub_2177531E8();
  CloudAlbum.Metadata.hash(into:)();
  return sub_217753238();
}

uint64_t CloudAlbum.attributes.getter()
{
  OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_217(v0);
  return sub_2172E1E1C();
}

uint64_t CloudAlbum.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_217(*(v0 + 24));
  return sub_2172E3D54();
}

uint64_t CloudAlbum.views.getter()
{
  v0 = OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_217(*(v0 + 28));
  return sub_2172E3D54();
}

uint64_t CloudAlbum.meta.getter()
{
  v0 = OUTLINED_FUNCTION_228_1();
  OUTLINED_FUNCTION_217(*(v0 + 32));
  return sub_2172E3D54();
}

uint64_t sub_2172D6C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8A88 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BE8A90 + 1);
  v2 = byte_280BE8AA0;
  *(v0 + 32) = xmmword_280BE8A90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE7F10 = v0;

  return sub_217751DE8();
}

uint64_t static CloudAlbum.catalogTypes.getter()
{
  if (qword_280BE7F08 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_2172D6D28()
{
  if (qword_280BE8AE8 != -1)
  {
    swift_once();
  }

  qword_280BE5748 = qword_280BE8AF0;
  unk_280BE5750 = *algn_280BE8AF8;
  byte_280BE5758 = byte_280BE8B00;

  return sub_217751DE8();
}

uint64_t static CloudAlbum.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE5740 != -1)
  {
    swift_once();
  }

  v2 = unk_280BE5750;
  v3 = byte_280BE5758;
  *a1 = qword_280BE5748;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

BOOL static CloudAlbum.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAlbum(0);
  static CloudAlbum.Attributes.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  if (v15 == 1)
  {
    if (*&v17[464] == 1)
    {
      sub_2171F0738(v14, &qword_27CB243C8, &unk_21775D390);
      goto LABEL_14;
    }

LABEL_12:
    v5 = &unk_27CB252C0;
    v6 = &unk_21775B5A0;
LABEL_27:
    sub_2171F0738(v14, v5, v6);
    return 0;
  }

  sub_2172E3D54();
  if (*&v17[464] == 1)
  {
    sub_21726A4EC(v13);
    goto LABEL_12;
  }

  memcpy(v12, &v17[448], sizeof(v12));
  v7 = static CloudAlbum.Relationships.== infix(_:_:)();
  sub_21726A4EC(v12);
  sub_21726A4EC(v13);
  sub_2171F0738(v14, &qword_27CB243C8, &unk_21775D390);
  if (!v7)
  {
    return 0;
  }

LABEL_14:
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_170_0();
  sub_2172E3D54();
  if (v15 != 1)
  {
    sub_2172E3D54();
    if (*&v17[208] != 1)
    {
      memcpy(v12, &v17[192], 0x200uLL);
      v8 = static CloudAlbum.Associations.== infix(_:_:)();
      sub_2172845E8(v12);
      sub_2172845E8(v13);
      sub_2171F0738(v14, &qword_27CB24AA8, &qword_217759080);
      if (!v8)
      {
        return 0;
      }

      goto LABEL_21;
    }

    sub_2172845E8(v13);
    goto LABEL_19;
  }

  if (*&v17[208] != 1)
  {
LABEL_19:
    v5 = &unk_27CB252C8;
    v6 = &unk_21775B5A8;
    goto LABEL_27;
  }

  sub_2171F0738(v14, &qword_27CB24AA8, &qword_217759080);
LABEL_21:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v16 == 1)
  {
    if (*&v17[48] == 1)
    {
      sub_2171F0738(v14, &qword_27CB243C0, &unk_21775D3A0);
      return 1;
    }

    goto LABEL_26;
  }

  sub_2172E3D54();
  if (*&v17[48] == 1)
  {
    sub_21726A498(v13);
LABEL_26:
    v5 = &unk_27CB252D0;
    v6 = &unk_21775B5B0;
    goto LABEL_27;
  }

  memcpy(v12, v17, 0x140uLL);
  static CloudAlbum.Metadata.== infix(_:_:)();
  v11 = v10;
  sub_21726A498(v12);
  sub_21726A498(v13);
  sub_2171F0738(v14, &qword_27CB243C0, &unk_21775D3A0);
  return (v11 & 1) != 0;
}

uint64_t sub_2172D719C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7377656976 && a2 == 0xE500000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 1635018093 && a2 == 0xE400000000000000)
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

uint64_t sub_2172D7348(char a1)
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

uint64_t sub_2172D73DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_2172D7430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172D719C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172D7458@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172D7340();
  *a1 = result;
  return result;
}

uint64_t sub_2172D7480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E1AC4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172D74BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172E1AC4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CloudAlbum.encode(to:)()
{
  OUTLINED_FUNCTION_108_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB252D8, &qword_21775B5B8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_87_2();
  v2 = OUTLINED_FUNCTION_68();
  v5 = sub_2172E1AC4(v2, v3, v4);
  v7 = OUTLINED_FUNCTION_105(&type metadata for CloudAlbum.CodingKeys, v6, v5);
  sub_2172E1B18(v7, v8, v9);
  OUTLINED_FUNCTION_67_0();
  sub_217752F88();
  if (!v0)
  {
    type metadata accessor for CloudAlbum(0);
    type metadata accessor for CloudAlbum.Attributes(0);
    OUTLINED_FUNCTION_95_4();
    sub_2172DEFE8(v10);
    OUTLINED_FUNCTION_28_8();
    v11 = sub_217752F88();
    sub_2172E1B6C(v11, v12, v13);
    OUTLINED_FUNCTION_67_0();
    v14 = sub_217752F38();
    sub_2172E1BC0(v14, v15, v16);
    OUTLINED_FUNCTION_67_0();
    v17 = sub_217752F38();
    sub_2172E1C14(v17, v18, v19);
    OUTLINED_FUNCTION_67_0();
    sub_217752F38();
  }

  v20 = OUTLINED_FUNCTION_113_3();
  v21(v20);
  OUTLINED_FUNCTION_180_2();
}

uint64_t CloudAlbum.hash(into:)()
{
  OUTLINED_FUNCTION_150_1();
  sub_217751FF8();
  type metadata accessor for CloudAlbum(0);
  CloudAlbum.Attributes.hash(into:)();
  sub_21726504C(v0);
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v31, __src, sizeof(v31));
    OUTLINED_FUNCTION_24();
    v1 = OUTLINED_FUNCTION_11_7();
    sub_21726473C(v1, v2, v3, v4, v5, v6, v7, v8);
    sub_2172640D4(v0, v9, v10, v11, v12, v13, v14, v15);
    sub_2172640D4(v0, v16, v17, v18, v19, v20, v21, v22);
    sub_217264414(v0, v23, v24, v25, v26, v27, v28, v29);
    sub_2172845E8(v31);
  }

  return sub_217264150(v0);
}

uint64_t CloudAlbum.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  type metadata accessor for CloudAlbum(0);
  CloudAlbum.Attributes.hash(into:)();
  sub_21726504C(v31);
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_21726473C(v31, v0, v1, v2, v3, v4, v5, v6);
    sub_2172640D4(v31, v7, v8, v9, v10, v11, v12, v13);
    sub_2172640D4(v31, v14, v15, v16, v17, v18, v19, v20);
    sub_217264414(v31, v21, v22, v23, v24, v25, v26, v27);
    sub_2172845E8(__dst);
  }

  sub_217264150(v31);
  return sub_217753238();
}

void CloudAlbum.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v25 = v24;
  type metadata accessor for CloudAlbum.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25300, &qword_21775B5C0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_2();
  v31 = type metadata accessor for CloudAlbum(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  v37 = v34 - v33 + *(v36 + 32);
  *(v37 + 16) = 0u;
  *(v37 + 32) = 0u;
  *v37 = 0u;
  *(v37 + 48) = 1;
  v59 = v37;
  bzero((v37 + 56), 0x108uLL);
  v38 = OUTLINED_FUNCTION_160(v25, v25[3]);
  sub_2172E1AC4(v38, v39, v40);
  OUTLINED_FUNCTION_182_1();
  v41 = sub_2177532C8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_2171F0738(v59, &qword_27CB243C0, &unk_21775D3A0);
  }

  else
  {
    sub_2172E1C68(v41, v42, v43);
    sub_217752EA8();
    v44 = v60[1];
    *v35 = v60[0];
    v35[1] = v44;
    LOBYTE(v60[0]) = 1;
    OUTLINED_FUNCTION_95_4();
    sub_2172DEFE8(v45);
    sub_217752EA8();
    sub_2172E1CBC(v29, v35 + v31[5]);
    OUTLINED_FUNCTION_210_1();
    sub_2172E1D20(v46, v47, v48);
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    memcpy(v35 + v31[6], v60, 0x300uLL);
    OUTLINED_FUNCTION_207_1();
    sub_2172E1D74(v49, v50, v51);
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    v52 = memcpy(v35 + v31[7], v60, 0x200uLL);
    sub_2172E1DC8(v52, v53, v54);
    OUTLINED_FUNCTION_81_3();
    sub_217752E58();
    v55 = OUTLINED_FUNCTION_62_6();
    v56(v55);
    sub_2172E1F3C();
    sub_2172E1E1C();
    __swift_destroy_boxed_opaque_existential_1(v25);
    v57 = OUTLINED_FUNCTION_173();
    sub_2172E1E74(v57, v58);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2172D7E28(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  sub_217751FF8();
  CloudAlbum.Attributes.hash(into:)();
  sub_21726504C(v33);
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    sub_217753208();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_21726473C(v33, v2, v3, v4, v5, v6, v7, v8);
    sub_2172640D4(v33, v9, v10, v11, v12, v13, v14, v15);
    sub_2172640D4(v33, v16, v17, v18, v19, v20, v21, v22);
    sub_217264414(v33, v23, v24, v25, v26, v27, v28, v29);
    sub_2172845E8(__dst);
  }

  sub_217264150(v33);
  return sub_217753238();
}

void Album.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v498 = v1;
  v493 = v2;
  v494 = v3;
  v490 = v5;
  v491 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_1();
  v475 = v10 - v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v476 = &v455 - v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  v477 = &v455 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v472 = &v455 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  OUTLINED_FUNCTION_45_0(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v466 = &v455 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  v457 = &v455 - v24;
  v499 = type metadata accessor for CloudAlbum(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_1();
  v456 = v26 - v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  v501 = (&v455 - v29);
  v458 = 0;
  v30 = type metadata accessor for AlbumPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v34 = (v33 - v32);
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  memset(v515, 0, sizeof(v515));
  sub_2172DB454();
  memcpy(v517, v514, sizeof(v517));
  v465 = v514[35];
  memcpy(v516, &v514[36], sizeof(v516));
  v35 = v22[10];
  v36 = v7 + v22[9];
  v37 = *(v36 + 8);
  v479 = *v36;
  v500 = v37;
  LODWORD(v464) = *(v36 + 16);
  v38 = v7 + v35;
  v39 = *(v7 + v35);
  v40 = *(v38 + 8);
  v462 = v22;
  v463 = v39;
  v41 = *(v7 + v22[12]);
  v42 = *(v7 + v22[13]);
  v43 = v22[15];
  v44 = *(v7 + v22[14]);
  v495 = v7;
  v45 = *(v7 + v43);
  v460 = v40;
  v461 = v45;
  sub_2172A497C(v518);
  memcpy(v34, v518, 0x221uLL);
  v46 = v30[6];
  v47 = sub_2177516D8();
  v496 = v46;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v47);
  v51 = v30[8];
  v497 = v51;
  v52 = OUTLINED_FUNCTION_64_6(v51);
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v47);
  OUTLINED_FUNCTION_84_3(v30[9]);
  OUTLINED_FUNCTION_84_3(v30[10]);
  v55 = v30[11];
  v503 = v30;
  v459 = v55;
  OUTLINED_FUNCTION_183_1(v55);
  v56 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_224_0(v57, v58, v59);
  OUTLINED_FUNCTION_84_3(*(v60 + 56));
  v61 = &v34[v503[16]];
  v489 = xmmword_2177586D0;
  *v61 = xmmword_2177586D0;
  *(v61 + 1) = 0u;
  *(v61 + 2) = 0u;
  *(v61 + 3) = 0u;
  v467 = v61;
  v62 = OUTLINED_FUNCTION_64_6(v503[18]);
  OUTLINED_FUNCTION_224_0(v62, v63, v64);
  v34[*(v65 + 76)] = 3;
  OUTLINED_FUNCTION_183_1(v503[25]);
  OUTLINED_FUNCTION_183_1(*(v66 + 108));
  OUTLINED_FUNCTION_183_1(*(v67 + 120));
  v34[*(v68 + 124)] = 5;
  v34[v503[32]] = 7;
  OUTLINED_FUNCTION_84_3(v503[33]);
  v69 = OUTLINED_FUNCTION_64_6(v503[34]);
  OUTLINED_FUNCTION_224_0(v69, v70, v71);
  v73 = OUTLINED_FUNCTION_64_6(*(v72 + 140));
  OUTLINED_FUNCTION_224_0(v73, v74, v75);
  memcpy(&v34[*(v76 + 144)], v518, 0x221uLL);
  v468 = v503[38];
  memcpy(&v34[v468], v515, 0x78uLL);
  v77 = v503[40];
  v470 = v77;
  v78 = OUTLINED_FUNCTION_64_6(v77);
  v492 = v56;
  v79 = v56;
  v80 = v42;
  v81 = v41;
  __swift_storeEnumTagSinglePayload(v78, v82, v83, v79);
  OUTLINED_FUNCTION_84_3(v503[41]);
  OUTLINED_FUNCTION_183_1(v503[42]);
  v34[*(v84 + 172)] = 2;
  v85 = v503;
  v86 = &v34[v503[44]];
  *v86 = 0;
  *(v86 + 1) = 0;
  v87 = v85[48];
  v471 = v87;
  v88 = OUTLINED_FUNCTION_64_6(v87);
  v469 = v47;
  v89 = v460;
  __swift_storeEnumTagSinglePayload(v88, v90, v91, v47);
  v92 = &v34[v85[50]];
  *(v92 + 12) = 0;
  *(v92 + 4) = 0u;
  *(v92 + 5) = 0u;
  *(v92 + 2) = 0u;
  *(v92 + 3) = 0u;
  *v92 = 0u;
  *(v92 + 1) = 0u;
  v473 = v92;
  OUTLINED_FUNCTION_18_13(v85[51], 0);
  v474 = v93;
  OUTLINED_FUNCTION_18_13(v85[52], v94);
  v478 = v95;
  OUTLINED_FUNCTION_18_13(v85[53], v96);
  v480 = v97;
  OUTLINED_FUNCTION_18_13(v85[54], v98);
  v481 = v99;
  OUTLINED_FUNCTION_18_13(v85[55], v100);
  v482 = v101;
  OUTLINED_FUNCTION_18_13(v85[56], v102);
  OUTLINED_FUNCTION_18_13(v85[57], v103);
  v483 = v104;
  OUTLINED_FUNCTION_18_13(v85[58], v105);
  v484 = v106;
  OUTLINED_FUNCTION_18_13(v85[59], v107);
  v485 = v108;
  OUTLINED_FUNCTION_18_13(v85[60], v109);
  v486 = v110;
  *&v34[v85[61]] = 0;
  v111 = &v34[v85[62]];
  *v111 = v489;
  v111[2] = 0;
  v111[3] = 0;
  v487 = v111;
  v112 = &v34[v85[65]];
  v112[6] = v113;
  v112[7] = v113;
  v112[4] = v113;
  v112[5] = v113;
  v112[2] = v113;
  v112[3] = v113;
  *v112 = v113;
  v112[1] = v113;
  v488 = v112;
  v114 = v85[66];
  v502 = v34;
  OUTLINED_FUNCTION_18_13(v114, v113);
  *&v489 = v115;
  v116 = qword_280BE88A0;
  sub_217751DE8();
  v117 = v89;
  sub_217751DE8();
  v118 = v81;
  sub_217751DE8();
  v119 = v80;
  sub_217751DE8();
  sub_217751DE8();
  v120 = v461;
  sub_217751DE8();
  if (v116 != -1)
  {
    swift_once();
  }

  v121 = qword_280C025A8;
  if (qword_280C025A8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    OUTLINED_FUNCTION_173();
    v444 = sub_217752D28();

    v121 = v444;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v122 = v502;
  *(v502 + v85[67]) = v121;
  v123 = (v122 + v85[70]);
  *v123 = 0;
  v123[1] = 0;
  v124 = v122 + v503[68];
  memcpy(v124, v517, 0x118uLL);
  *(v124 + 280) = v465;
  memcpy((v124 + 288), v516, 0x41uLL);
  v125 = v122 + v503[69];
  v126 = v500;
  *v125 = v479;
  *(v125 + 8) = v126;
  *(v125 + 16) = v464;
  *v123 = v463;
  v123[1] = v117;
  v127 = v503;
  *(v122 + v503[71]) = v118;
  *(v122 + v127[72]) = v119;
  *(v122 + v127[73]) = v44;
  *(v122 + v127[74]) = v120;
  OUTLINED_FUNCTION_44_6();
  v128 = v501;
  sub_2172E1E1C();
  v479 = v499[6];
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    sub_2171F0738(v514, &qword_27CB243C8, &unk_21775D390);
    v130 = v497;
    v131 = v466;
    v132 = v462;
LABEL_20:
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v146, v147, v148, v132);
    v133 = v502;
    goto LABEL_21;
  }

  sub_2172E3D54();
  sub_21726A4EC(v514);
  v130 = v497;
  v131 = v466;
  v132 = v462;
  if (!v511[2])
  {
    sub_2171F0738(v511, &qword_27CB24270, &unk_21775D640);
    goto LABEL_20;
  }

  sub_217751DE8();
  sub_2171F0738(v511, &qword_27CB24278, &unk_217759070);
  sub_2172CE724();

  OUTLINED_FUNCTION_133(v131, 1, v132);
  v133 = v502;
  if (v129)
  {
LABEL_21:
    sub_2171F0738(v131, &qword_27CB25308, &unk_21775D5D0);
    v140 = v496;
    goto LABEL_22;
  }

  v134 = v457;
  sub_2172E21DC();
  v136 = *v134;
  v135 = v134[1];
  sub_217751DE8();

  *(v124 + 16) = v136;
  *(v124 + 24) = v135;
  *(v124 + 32) = 0;
  v514[1] = 0;
  v514[0] = 0;
  MEMORY[0x28223BE20](v137);
  *(&v455 - 2) = v514;
  v138 = v458;
  v139 = sub_2173DDA80();
  v458 = v138;
  v140 = v496;
  if (!v139)
  {
    v141 = *(v124 + 280);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v124 + 280) = v141;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_161_2();
      sub_2172B1F4C(v445, v446, v447, v448);
      v141 = v449;
      *(v124 + 280) = v449;
    }

    v143 = *(v141 + 16);
    if (v143 >= *(v141 + 24) >> 1)
    {
      OUTLINED_FUNCTION_161_2();
      sub_2172B1F4C(v450, v451, v452, v453);
      v141 = v454;
    }

    *(v141 + 16) = v143 + 1;
    v144 = v141 + 16 * v143;
    *(v144 + 32) = 0;
    *(v144 + 40) = 0;
    *(v124 + 280) = v141;
  }

  OUTLINED_FUNCTION_44_6();
  v145 = v456;
  sub_2172E1E1C();
  sub_2171F0738(v134, &qword_27CB247F0, &qword_21775D360);
  v128 = v501;
  sub_2172E225C(v145, v501);
  v133 = v502;
LABEL_22:
  v149 = v128 + v499[5];
  memcpy(v512, v149, sizeof(v512));
  memcpy(v513, v149, sizeof(v513));
  OUTLINED_FUNCTION_127_3(v513);
  if (v129)
  {
    v153 = v518;
  }

  else
  {
    memcpy(v514, v513, 0x1B8uLL);
    memcpy(v504, v512, sizeof(v504));
    OUTLINED_FUNCTION_170_0();
    sub_2172E3D54();
    CloudAttribute<A>.convertToArtwork()(v510);
    memcpy(v505, v514, 0x1B8uLL);
    OUTLINED_FUNCTION_171_1();
    v133 = v502;
    sub_2171F0738(v150, v151, v152);
    memcpy(v514, v510, 0x221uLL);
    nullsub_1();
    v153 = v514;
  }

  memcpy(v511, v153, 0x221uLL);
  v154 = v127[7];
  memcpy(v510, v133, 0x221uLL);
  sub_2171F0738(v510, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v133, v511, 0x221uLL);
  v155 = *(v149 + 448);
  v133[69] = *(v149 + 440);
  v133[70] = v155;
  v156 = type metadata accessor for CloudAlbum.Attributes(0);
  v157 = v156[6];
  sub_217751DE8();
  sub_2172E1ECC(v149 + v157, v140 + v502);
  swift_getKeyPath("HV=e");
  swift_getKeyPath("0V=e");
  OUTLINED_FUNCTION_171_1();
  v161 = sub_2172DB89C(v158, v159, v160);

  v162 = v502;

  *(v162 + v154) = v161;
  v466 = v156[9];
  sub_2172E1ECC(v149 + v466, v162 + v130);
  if (*(v149 + v156[10] + 8))
  {
    v163 = sub_217752DC8();
    if (v163 == 1)
    {
      v164 = 1;
    }

    else
    {
      v164 = 2;
    }

    if (!v163)
    {
      v164 = 0;
    }

    *(v162 + v459) = v164;
  }

  v165 = (v162 + v127[12]);
  v166 = v127[15];
  v167 = (v149 + v156[11]);
  v168 = v167[1];
  *v165 = *v167;
  v165[1] = v168;
  *(v162 + v166) = *(v149 + v156[12]);
  v169 = v156[13];
  v496 = v156;
  v497 = v149;
  v170 = (v149 + v169);
  if (v170[8])
  {
    v171 = v170[7];
    v500 = v170[6];
    v172 = v170[4];
    v173 = v170[5];
    v174 = v170[3];
    v464 = v170[2];
    v465 = v172;
    v175 = v170[1];
    v463 = *v170;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v463 = 0;
    v464 = 0;
    v174 = 0;
    v465 = 0;
    v173 = 0;
    v500 = 0;
    v171 = 0;
    v175 = 1;
  }

  v176 = v127;
  v177 = v127[17];
  v178 = v176[20];
  v179 = v467;
  v180 = v467[1];
  v509[0] = *v467;
  v509[1] = v180;
  v181 = v467[3];
  v509[2] = v467[2];
  v509[3] = v181;
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v509, &qword_27CB24B70, &unk_217759460);
  v182 = v464;
  *v179 = v463;
  v179[1] = v175;
  v179[2] = v182;
  v179[3] = v174;
  v179[4] = v465;
  v179[5] = v173;
  v179[6] = v500;
  v179[7] = v171;
  v183 = v496;
  v184 = v497;
  v185 = v502;
  *(v502 + v177) = *(v497 + v496[14]);
  *(v185 + v178) = *(v184 + v183[15]);
  KeyPath = swift_getKeyPath("HV=e");
  v187 = swift_getKeyPath("0V=e");
  if (*(v184 + v183[18]) == 2)
  {
    v188 = *(v184 + v183[19]);
  }

  else
  {
    v188 = *(v184 + v183[18]);
  }

  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_103_3();
  v192 = sub_2172DEA44(v189, v190, v191);
  if (v192)
  {
    v464 = v187;
    v465 = KeyPath;
    v193 = *(v192 + 16);
    v467 = v192;
    v194 = (v192 + 32);
    v500 = 0x80000002177AA7E0;
    v195 = (v192 + 32);
    while (2)
    {
      if (v193)
      {
        switch(*v195)
        {
          case 1:
          case 8:
            goto LABEL_49;
          case 2:
            OUTLINED_FUNCTION_120_1();
            goto LABEL_49;
          case 3:
            OUTLINED_FUNCTION_117();
            goto LABEL_49;
          case 4:
            OUTLINED_FUNCTION_116();
            goto LABEL_49;
          case 5:
            OUTLINED_FUNCTION_118();
            goto LABEL_49;
          case 6:
          case 7:
            OUTLINED_FUNCTION_65();
            goto LABEL_49;
          case 9:
            OUTLINED_FUNCTION_175();
            goto LABEL_49;
          case 0xA:
            OUTLINED_FUNCTION_119_3();
LABEL_49:
            OUTLINED_FUNCTION_206_1();
            v196 = sub_217753058();

            ++v195;
            --v193;
            if ((v196 & 1) == 0)
            {
              continue;
            }

            v197 = 1;
LABEL_51:
            v198 = v469;
            break;
          default:

            v197 = 1;
            goto LABEL_51;
        }
      }

      else
      {
        v200 = *(v467 + 2);
        v198 = v469;
        while (2)
        {
          if (v200)
          {
            switch(*v194)
            {
              case 1:
                goto LABEL_64;
              case 2:
                OUTLINED_FUNCTION_120_1();
                goto LABEL_64;
              case 3:
                OUTLINED_FUNCTION_117();
                goto LABEL_64;
              case 4:
                OUTLINED_FUNCTION_116();
                goto LABEL_64;
              case 5:
                OUTLINED_FUNCTION_118();
                goto LABEL_64;
              case 6:
              case 7:
                OUTLINED_FUNCTION_65();
                goto LABEL_64;
              case 8:

                v197 = 1;
                goto LABEL_67;
              case 9:
                OUTLINED_FUNCTION_175();
                goto LABEL_64;
              case 0xA:
                OUTLINED_FUNCTION_119_3();
                goto LABEL_64;
              default:
                OUTLINED_FUNCTION_206_1();
LABEL_64:
                v201 = sub_217753058();

                ++v194;
                --v200;
                if ((v201 & 1) == 0)
                {
                  continue;
                }

                v197 = 1;
                break;
            }
          }

          else
          {

            v197 = 0;
          }

          break;
        }
      }

      break;
    }

LABEL_67:

    v199 = v503;
    if (v188 == 2)
    {
      v188 = v197;
    }

    else
    {
      v188 = (v197 | v188) & 1;
    }
  }

  else
  {

    v199 = v503;
    v198 = v469;
  }

  *(v502 + v199[21]) = v188;
  v202 = v497;
  v203 = v472;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v203, 1, v198);
  if (v129)
  {
    v204 = 0;
  }

  else
  {
    v204 = 1;
  }

  v205 = v199[22];
  v206 = v199[23];
  v207 = v199;
  v208 = v199[24];
  v209 = v199[26];
  v210 = v199[28];
  v211 = v207[29];
  v469 = v207[37];
  v500 = (v502 + v207[39]);
  sub_2171F0738(v203, &unk_27CB277C0, &qword_217758DC0);
  *(v502 + v205) = v204;
  OUTLINED_FUNCTION_204_1();
  *(v213 + v206) = v212;
  OUTLINED_FUNCTION_204_1();
  *(v215 + v208) = v214;
  v217 = (v202 + *(v216 + 96));
  *(v502 + v209) = v217[1] != 0;
  OUTLINED_FUNCTION_204_1();
  *(v219 + v210) = v218;
  OUTLINED_FUNCTION_204_1();
  *(v221 + v211) = v220;
  v223 = v222;
  v224 = v502;
  *(v502 + v469) = *(v202 + *(v222 + 92));
  memcpy(v508, v217, sizeof(v508));
  memcpy(v504, v224 + v468, 0x78uLL);
  memcpy(v224 + v468, v217, 0x78uLL);
  sub_2172E3D54();
  sub_217751DE8();
  sub_2171F0738(v504, &qword_27CB244D0, &unk_21775D620);
  v225 = (v202 + *(v223 + 100));
  v227 = *v225;
  v226 = v225[1];
  v228 = v500;
  *v500 = v227;
  v228[1] = v226;
  v229 = qword_280BE8910;
  sub_217751DE8();
  if (v229 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v230 = type metadata accessor for CloudFormatter(0);
  v231 = __swift_project_value_buffer(v230, qword_280BE8918);
  v232 = *(v202 + *(v223 + 104) + 8);
  v233 = v476;
  OUTLINED_FUNCTION_5_5();
  v234 = v492;
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v492);
  v238 = v493;
  v239 = v475;
  if (v232)
  {
    v240 = *(v231 + *(v230 + 20));
    v241 = sub_217751F18();
    v242 = [v240 dateFromString_];

    if (v242)
    {
      sub_2177517C8();

      v243 = 0;
    }

    else
    {
      v243 = 1;
    }

    v248 = v239;
    v247 = v503;
    v249 = OUTLINED_FUNCTION_1_5();
    sub_2171F0738(v249, v250, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v248, v243, 1, v492);
    OUTLINED_FUNCTION_103_3();
    sub_2172E21DC();
    OUTLINED_FUNCTION_171_1();
    sub_2172E21DC();
    v238 = v493;
  }

  else
  {
    sub_2171F0738(v233, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v244, v245, v246, v234);
    v247 = v503;
  }

  v251 = v502;
  v252 = (v502 + v247[45]);
  v253 = v247;
  v254 = v502 + v247[46];
  v255 = (v502 + v253[47]);
  v256 = (v502 + v253[49]);
  sub_2172E1F3C();
  v258 = v496;
  v257 = v497;
  v259 = (v497 + v496[22]);
  v260 = v259[1];
  *v252 = *v259;
  v252[1] = v260;
  v261 = (v257 + v258[27]);
  v262 = *v261;
  LOBYTE(v261) = *(v261 + 8);
  *v254 = v262;
  v254[8] = v261;
  v263 = (v257 + v258[28]);
  v264 = v263[1];
  *v255 = *v263;
  v255[1] = v264;
  v265 = v258[29];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(v257 + v265, v251 + v471);
  v266 = (v257 + v258[30]);
  v267 = v266[1];
  *v256 = *v266;
  v256[1] = v267;
  v268 = v501;
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    sub_217751DE8();
    v269 = &qword_27CB243C8;
    v270 = &unk_21775D390;
    v271 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_217751DE8();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24288;
      v272 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v272, v273);
      sub_2172E2188(v274, v275, v276);
      OUTLINED_FUNCTION_43_4();
      v277 = v491;
      v278 = OUTLINED_FUNCTION_91();
      v279 = v494;
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v278, v280, v281, v282, v494, v283, v284, v285, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      v286 = v503;
      goto LABEL_88;
    }

    v269 = &qword_27CB24280;
    v270 = &unk_21775D680;
    v271 = v505;
  }

  sub_2171F0738(v271, v269, v270);
  v286 = v503;
  v279 = v494;
  v277 = v491;
  OUTLINED_FUNCTION_8_18();
LABEL_88:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v287 = &qword_27CB243C8;
    v288 = &unk_21775D390;
    v289 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24278;
      v290 = OUTLINED_FUNCTION_16_0();
      v292 = __swift_instantiateConcreteTypeFromMangledNameV2(v290, v291);
      sub_2172E2038(v292, v293, v294);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v295, v296, v297, v298, &type metadata for Album, v299, v300, &protocol witness table for Album, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_95;
    }

    v287 = &qword_27CB24270;
    v288 = &unk_21775D640;
    v289 = v505;
  }

  sub_2171F0738(v289, v287, v288);
  OUTLINED_FUNCTION_8_18();
LABEL_95:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v301 = &qword_27CB243C8;
    v302 = &unk_21775D390;
    v303 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB243B8;
      v304 = OUTLINED_FUNCTION_16_0();
      v306 = __swift_instantiateConcreteTypeFromMangledNameV2(v304, v305);
      sub_2172E2134(v306, v307, v308);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v309, v310, v311, v312, &type metadata for Genre, v313, v314, &protocol witness table for Genre, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_102;
    }

    v301 = &qword_27CB243B0;
    v302 = &unk_21775D670;
    v303 = v505;
  }

  sub_2171F0738(v303, v301, v302);
  OUTLINED_FUNCTION_8_18();
LABEL_102:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v315 = &qword_27CB243C8;
    v316 = &unk_21775D390;
    v317 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24248;
      v318 = OUTLINED_FUNCTION_16_0();
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(v318, v319);
      sub_2172E1F90(v320, v321, v322);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v323, v324, v325, v326, &type metadata for Track, v327, v328, &protocol witness table for Track, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_109;
    }

    v315 = &qword_27CB24240;
    v316 = &qword_217758668;
    v317 = v505;
  }

  sub_2171F0738(v317, v315, v316);
  OUTLINED_FUNCTION_8_18();
LABEL_109:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v329 = &qword_27CB243C8;
    v330 = &unk_21775D390;
    v331 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24278;
      v332 = OUTLINED_FUNCTION_16_0();
      v334 = __swift_instantiateConcreteTypeFromMangledNameV2(v332, v333);
      sub_2172E2038(v334, v335, v336);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v337, v338, v339, v340, &type metadata for Album, v341, v342, &protocol witness table for Album, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_116;
    }

    v329 = &qword_27CB24270;
    v330 = &unk_21775D640;
    v331 = v505;
  }

  sub_2171F0738(v331, v329, v330);
  OUTLINED_FUNCTION_8_18();
LABEL_116:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v343 = &qword_27CB243C8;
    v344 = &unk_21775D390;
    v345 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_21726A4EC(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB242D8;
      v346 = OUTLINED_FUNCTION_16_0();
      v348 = __swift_instantiateConcreteTypeFromMangledNameV2(v346, v347);
      sub_2172E20E0(v348, v349, v350);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v351, v352, v353, v354, &type metadata for RecordLabel, v355, v356, &protocol witness table for RecordLabel, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_123;
    }

    v343 = &qword_27CB242D0;
    v344 = &unk_21775D660;
    v345 = v505;
  }

  sub_2171F0738(v345, v343, v344);
  OUTLINED_FUNCTION_8_18();
LABEL_123:
  sub_2172E1F3C();
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v357 = &qword_27CB24AA8;
    v358 = &qword_217759080;
    v359 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB242C8;
      v360 = OUTLINED_FUNCTION_16_0();
      v362 = __swift_instantiateConcreteTypeFromMangledNameV2(v360, v361);
      sub_2172E208C(v362, v363, v364);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v365, v366, v367, v368, &type metadata for Playlist, v369, v370, &protocol witness table for Playlist, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_130;
    }

    v357 = &qword_27CB242C0;
    v358 = &unk_21775D650;
    v359 = v505;
  }

  sub_2171F0738(v359, v357, v358);
  OUTLINED_FUNCTION_8_18();
LABEL_130:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v371 = &qword_27CB24AA8;
    v372 = &qword_217759080;
    v373 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24278;
      v374 = OUTLINED_FUNCTION_16_0();
      v376 = __swift_instantiateConcreteTypeFromMangledNameV2(v374, v375);
      sub_2172E2038(v376, v377, v378);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v379, v380, v381, v382, &type metadata for Album, v383, v384, &protocol witness table for Album, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_137;
    }

    v371 = &qword_27CB24270;
    v372 = &unk_21775D640;
    v373 = v505;
  }

  sub_2171F0738(v373, v371, v372);
  OUTLINED_FUNCTION_8_18();
LABEL_137:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v385 = &qword_27CB24AA8;
    v386 = &qword_217759080;
    v387 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB24278;
      v388 = OUTLINED_FUNCTION_16_0();
      v390 = __swift_instantiateConcreteTypeFromMangledNameV2(v388, v389);
      sub_2172E2038(v390, v391, v392);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_15(v393, v394, v395, v396, &type metadata for Album, v397, v398, &protocol witness table for Album, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_144;
    }

    v385 = &qword_27CB24270;
    v386 = &unk_21775D640;
    v387 = v505;
  }

  sub_2171F0738(v387, v385, v386);
  OUTLINED_FUNCTION_8_18();
LABEL_144:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    v399 = &qword_27CB24AA8;
    v400 = &qword_217759080;
    v401 = v514;
  }

  else
  {
    sub_2172E3D54();
    sub_2172845E8(v514);
    if (v505[2])
    {
      OUTLINED_FUNCTION_25_11();
      v268 = &qword_27CB242B8;
      v402 = OUTLINED_FUNCTION_16_0();
      v404 = __swift_instantiateConcreteTypeFromMangledNameV2(v402, v403);
      sub_2172E1FE4(v404, v405, v406);
      OUTLINED_FUNCTION_43_4();
      CloudResourceCollection.convertToCollection<A, B>(configuration:sharedRelatedItemStore:incrementalLoader:)(v277, v238, v506, &type metadata for MusicVideo, v279, v407, &protocol witness table for MusicVideo, &v507, v455);
      sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_51_5();
      goto LABEL_151;
    }

    v399 = &qword_27CB242B0;
    v400 = &unk_21775D630;
    v401 = v505;
  }

  sub_2171F0738(v401, v399, v400);
  OUTLINED_FUNCTION_8_18();
LABEL_151:
  v408 = v277;
  sub_2172E1F3C();
  v409 = (v268 + v499[8]);
  v410 = v286;
  if (v409[6] == 1)
  {
    v411 = 0;
    v412 = 0;
    v413 = 0;
    v414 = 1;
  }

  else
  {
    v411 = *v409;
    v414 = v409[1];
    v412 = v409[2];
    v413 = v409[3];
    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_39_0();
    sub_2172838F8(v415, v416, v417, v418);
  }

  v419 = v487;
  sub_217283940(*v487, v487[1], v487[2], v487[3]);
  *v419 = v411;
  v419[1] = v414;
  v419[2] = v412;
  v419[3] = v413;
  v420 = v409[6];
  if (v420)
  {
    v421 = v501;
    v422 = v410;
    if (v420 == 1)
    {
      v423 = v502;
      v424 = (v502 + *(v410 + 252));
      *v424 = 0;
      v424[1] = 0;
      *(v423 + *(v410 + 256)) = 0;
      v425 = v408;
      goto LABEL_162;
    }

    v420 = v409[4];
    v426 = sub_217751DE8();
  }

  else
  {
    v426 = 0;
    v421 = v501;
    v422 = v410;
  }

  v425 = v408;
  v427 = v502;
  v428 = (v502 + *(v422 + 252));
  *v428 = v420;
  v428[1] = v426;
  *(v427 + *(v422 + 256)) = v409[7];
  sub_217751DE8();
  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (!v129)
  {
    sub_2172E3D54();
    sub_21726A540(v514);
    v429 = v494;
    goto LABEL_163;
  }

  sub_2171F0738(v514, &qword_27CB243D0, &unk_21775D3C0);
LABEL_162:
  v429 = v494;
  memset(v505, 0, 128);
LABEL_163:
  sub_2172E1F3C();
  if (v409[6] == 1)
  {
LABEL_167:
    v430 = v490;
    goto LABEL_168;
  }

  sub_2172E3D54();
  OUTLINED_FUNCTION_90_3();
  if (v129)
  {
    sub_2171F0738(v514, &qword_27CB243D0, &unk_21775D3C0);
    goto LABEL_167;
  }

  sub_2172E3D54();
  sub_21726A540(v514);
  v430 = v490;
  if (v505[2])
  {
    OUTLINED_FUNCTION_25_11();
    v421 = &qword_27CB24248;
    v433 = OUTLINED_FUNCTION_16_0();
    v435 = __swift_instantiateConcreteTypeFromMangledNameV2(v433, v434);
    sub_2172E1F90(v435, v436, v437);
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_23_15(v438, v439, v440, v441, &type metadata for Track, v442, v443, &protocol witness table for Track, v455);
    sub_2171F0738(v506, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_51_5();
    goto LABEL_169;
  }

  sub_2171F0738(v505, &qword_27CB24240, &qword_217758668);
LABEL_168:
  OUTLINED_FUNCTION_8_18();
LABEL_169:
  sub_2172E1F3C();
  v514[3] = v422;
  v514[4] = &protocol witness table for AlbumPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v514);
  sub_2172E1E1C();
  Album.init(propertyProvider:)(v514, v430);

  (*(*(v429 - 8) + 8))(v425, v429);
  sub_2171F0738(v495, &qword_27CB247F0, &qword_21775D360);
  sub_2172E1E74(v421, type metadata accessor for CloudAlbum);
  v431 = OUTLINED_FUNCTION_173();
  sub_2172E1E74(v431, v432);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA110()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA334()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA558()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA77C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DA9A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DABC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DADE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB00C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB230()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB454()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

void sub_2172DB678()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_35_5(v4);
  OUTLINED_FUNCTION_172_0(v150);
  if (v5 || (OUTLINED_FUNCTION_53_5(), OUTLINED_FUNCTION_127_3(v149), v5))
  {
    OUTLINED_FUNCTION_24_13();
    if (v8)
    {
      OUTLINED_FUNCTION_70_5();
      swift_bridgeObjectRetain_n();
      sub_217751DE8();

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_41_7();
    }

    else
    {
      if (OUTLINED_FUNCTION_140_3(v6, v7, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
      {
        OUTLINED_FUNCTION_40();
        v9();
      }

      OUTLINED_FUNCTION_137_1();
      OUTLINED_FUNCTION_164();
      if ((v2 & 1) != 0 && *(v3 + 8))
      {
        OUTLINED_FUNCTION_70_5();
        sub_217751DE8();
      }

      else
      {
        OUTLINED_FUNCTION_20_14();
        v33 = sub_217751DE8();
        OUTLINED_FUNCTION_52_7(v33, v34, v35, v36, v37, v38);
        OUTLINED_FUNCTION_39_4();
      }

      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_16_16();
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_42_6();
    }

    OUTLINED_FUNCTION_15_17();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    if (v2)
    {
      v78 = __PAIR64__(v13, v12);
      if (v0)
      {
        v14 = OUTLINED_FUNCTION_30_9();
        v17 = memcpy(v14, v15, v16);
        v25 = OUTLINED_FUNCTION_138_1(v17, v18, v19, v20, v21, v22, v23, v24, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      }

      else
      {
        if (OUTLINED_FUNCTION_140_3(v10, v11, &protocol descriptor for MusicDetailedIdentifierKindsProviding))
        {
          OUTLINED_FUNCTION_27_12();
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
          v67 = OUTLINED_FUNCTION_94_2();
          v68(v67);
        }

        else
        {
          OUTLINED_FUNCTION_139_2();
          sub_217751DE8();
        }

        OUTLINED_FUNCTION_137_1();
        OUTLINED_FUNCTION_165_2();
        if (v1)
        {
          OUTLINED_FUNCTION_80_2();
          OUTLINED_FUNCTION_97_3();
        }

        else
        {
        }
      }

      v40 = OUTLINED_FUNCTION_3_25(v25, v26, v27, v28, v29, v30, v31, v32, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142);
    }

    else
    {
      v48 = OUTLINED_FUNCTION_30_9();
      v51 = OUTLINED_FUNCTION_167_3(v48, v49, v50);
      v59 = OUTLINED_FUNCTION_138_1(v51, v52, v53, v54, v55, v56, v57, v58, v69, v71, v73, v75, v77, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, *(&v142 + 1), v144, v145, v146, v147, v148);
      v40 = OUTLINED_FUNCTION_2_25(v59, v60, v61, v62, v63, v64, v65, v66, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143);
    }
  }

  OUTLINED_FUNCTION_1_18(v39, v40, v41, v42, v43, v44, v45, v46, v47);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172DB89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2172DEA44(a1, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = sub_21771564C(v3, v4, v5);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = (v7 + 32);
      v6 = MEMORY[0x277D84F90];
      do
      {
        v10 = *v9++;
        v11 = 0;
        switch(v10)
        {
          case 1:
          case 9:
            goto LABEL_10;
          case 2:
          case 10:
            v11 = 1;
            goto LABEL_10;
          case 3:
            v11 = 2;
            goto LABEL_10;
          case 4:
            v11 = 3;
            goto LABEL_10;
          case 5:
            v11 = 4;
            goto LABEL_10;
          case 6:
            v11 = 5;
LABEL_10:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2172B1F24(0, *(v6 + 16) + 1, 1, v6);
              v6 = v14;
            }

            v13 = *(v6 + 16);
            v12 = *(v6 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_2172B1F24(v12 > 1, v13 + 1, 1, v6);
              v6 = v15;
            }

            *(v6 + 16) = v13 + 1;
            *(v6 + v13 + 32) = v11;
            break;
          default:
            break;
        }

        --v8;
      }

      while (v8);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }
  }

  return v6;
}

void Album.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  v483 = v4;
  *&v484 = v5;
  v7 = v6;
  v487 = v8;
  v485 = type metadata accessor for CloudAlbum(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v486 = (v11 - v10);
  v12 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v452 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v450 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v18 = OUTLINED_FUNCTION_45_0(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v478 = v19 - v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v449 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_1();
  *&v488 = v26 - v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_174_2();
  v29 = type metadata accessor for CloudAlbum.Attributes(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v489 = (v39 - v38);
  if (qword_280BE9428 != -1)
  {
    swift_once();
  }

  sub_2176CA9A8(qword_280C026F8, v31, v32, v33, v34, v35, v36, v37, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466);
  memcpy(v521, v520, 0x221uLL);
  OUTLINED_FUNCTION_127_3(v521);
  if (v40)
  {
    sub_2172E22C0(v519);
  }

  else
  {
    memcpy(v490, v521, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v491);
    v41 = OUTLINED_FUNCTION_142_1();
    memcpy(v41, v490, 0x221uLL);
    v42 = OUTLINED_FUNCTION_142_1();
    sub_217284084(v42);
    memcpy(v490, v491, 0x1B8uLL);
    nullsub_1();
    memcpy(v519, v490, sizeof(v519));
  }

  if (qword_280BE9680 != -1)
  {
    swift_once();
  }

  v482 = v7;
  v43 = sub_2172A4380();
  if (v44)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  v46 = 0xE000000000000000;
  if (v44)
  {
    v46 = v44;
  }

  v479 = v46;
  v480 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25370, &unk_21775D3B0);
  swift_allocObject();
  v47 = sub_217220A00();
  sub_2176CA7D0(v47, v48, v49, v50, v51, v52, v53, v54, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));

  if (qword_280BE9600 != -1)
  {
    swift_once();
  }

  v481 = v1;
  v55 = qword_280BE9608;
  v56 = sub_2172A44B0(qword_280BE9608);
  v64 = v56;
  if (qword_280BE9508 != -1)
  {
    v56 = swift_once();
  }

  OUTLINED_FUNCTION_227_1(v56, v57, v58, v59, v60, v61, v62, v63, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  v477 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v64, v65, 0);

  v66 = sub_2172A44B0(v55);
  OUTLINED_FUNCTION_227_1(v66, v67, v68, v69, v70, v71, v72, v73, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  v476 = static CloudAudioTrait.traits(for:isAppleDigitalMaster:forPublicRealm:)(v66, v74, 1);

  if (qword_280BE8228 != -1)
  {
    swift_once();
  }

  sub_2176CA7D0(qword_280C024E0, v75, v76, v77, v78, v79, v80, v81, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE95E8 != -1)
  {
    swift_once();
  }

  sub_2176CA81C(qword_280C027D8, v82, v83, v84, v85, v86, v87, v88, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v89 = v23;
  if (v512 == 2)
  {
    v474 = 0;
    v475 = 0;
  }

  else
  {
    if (v512)
    {
      v90 = 0x746963696C707865;
    }

    else
    {
      v90 = 0x6E61656C63;
    }

    v91 = 0xE500000000000000;
    if (v512)
    {
      v91 = 0xE800000000000000;
    }

    v474 = v91;
    v475 = v90;
  }

  if (qword_280BE93E0 != -1)
  {
    swift_once();
  }

  v92 = sub_2172A4380();
  v472 = v93;
  v473 = v92;
  if (qword_280BE9528 != -1)
  {
    swift_once();
  }

  v471 = sub_2172A4914(qword_280C02778);
  if (qword_280BE9580 != -1)
  {
    swift_once();
  }

  sub_2176CA810(qword_280C027C0, v94, v95, v96, v97, v98, v99, v100, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466);
  v515 = v512;
  v516 = v513[0];
  v517 = v513[1];
  v518 = v513[2];
  v101 = *(&v512 + 1);
  if (*(&v512 + 1) == 1)
  {
    v464 = 0;
    v465 = 0;
    v101 = 0;
    v466 = 0;
    v467 = 0;
    v468 = 0;
    v469 = 0uLL;
    v463 = 0;
  }

  else
  {
    v469 = v518;
    v102 = *(&v517 + 1);
    v467 = v517;
    v103 = *(&v516 + 1);
    v464 = v515;
    v465 = v516;
    sub_217751DE8();
    sub_217751DE8();
    v466 = v103;
    sub_217751DE8();
    v468 = v102;
    sub_217751DE8();
    v463 = sub_217751DC8();
    sub_2171F0738(&v515, &qword_27CB24B70, &unk_217759460);
  }

  v470 = v101;
  if (qword_280BE94B8 != -1)
  {
    swift_once();
  }

  v451 = sub_2172A48F8(qword_280C02738);
  if (qword_280BE9670 != -1)
  {
    swift_once();
  }

  v462 = sub_2172A43B4(qword_280C02810);
  if (qword_280BE95D8 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C027D0, v104, v105, v106, v107, v108, v109, v110, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  HIDWORD(v461) = v118;
  if (qword_280BE9660 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02808, v111, v112, v113, v114, v115, v116, v117, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  LODWORD(v461) = v119;
  OUTLINED_FUNCTION_227_1(v119, v120, v121, v122, v123, v124, v125, v126, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  v128 = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v127, 1u);
  HIDWORD(v460) = v128;
  OUTLINED_FUNCTION_227_1(v128, v129, v130, v131, v132, v133, v134, v135, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  LODWORD(v460) = static CloudAudioTrait.isAppleDigitalMaster(value:forPublicRealm:)(v136, 0);
  if (qword_280BE9658 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C02800, v137, v138, v139, v140, v141, v142, v143, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  HIDWORD(v459) = v151;
  if (qword_280BE9400 != -1)
  {
    swift_once();
  }

  sub_2172A43A8(qword_280C026F0, v144, v145, v146, v147, v148, v149, v150, v449, v450, v451, v452, v453, v454, SWORD2(v454), SBYTE6(v454), HIBYTE(v454), v455, v456, v457, v458, v459, v460, v461, v462);
  LODWORD(v459) = v152;
  if (qword_280BE9470 != -1)
  {
    swift_once();
  }

  v153 = sub_2172A4380();
  if (v154)
  {
    v155 = v153;
  }

  else
  {
    v155 = 0;
  }

  v156 = 0xE000000000000000;
  if (v154)
  {
    v156 = v154;
  }

  v457 = v156;
  v458 = v155;
  if (qword_280BE81C0 != -1)
  {
    swift_once();
  }

  v456 = sub_2172A48DC(qword_280C02498);
  if (qword_280BE9568 != -1)
  {
    swift_once();
  }

  sub_2176CAFA0(qword_280C027A8, v157, v158, v159, v160, v161, v162, v163, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466);
  if (qword_280BE9540 != -1)
  {
    swift_once();
  }

  v164 = sub_2172A4380();
  v454 = v165;
  v455 = v164;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v166 = type metadata accessor for CloudFormatter(0);
  v174 = __swift_project_value_buffer(v166, qword_280BE8918);
  if (qword_280BE9628 != -1)
  {
    swift_once();
  }

  sub_2176CA7F0(qword_280C027E8, v167, v168, v169, v170, v171, v172, v173, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  v175 = v478;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v175, 1, v12);
  if (v40)
  {
    v176 = OUTLINED_FUNCTION_173();
    sub_2171F0738(v176, v177, &qword_217759480);
    OUTLINED_FUNCTION_169_1(v175);
    v478 = 0;
    v453 = 0;
  }

  else
  {
    v178 = v89;
    v179 = v452;
    v180 = v450;
    (*(v452 + 32))(v450, v175, v12);
    v181 = *(v174 + *(v166 + 20));
    v182 = sub_2177517A8();
    v183 = [v181 stringFromDate_];

    v478 = sub_217751F48();
    v453 = v184;

    (*(v179 + 8))(v180, v12);
    sub_2171F0738(v178, &qword_27CB241C0, &qword_217759480);
  }

  v185 = v489;
  if (qword_280BE9648 != -1)
  {
    swift_once();
  }

  v186 = sub_2172A4394();
  if (v187)
  {
    v188 = 0;
  }

  else
  {
    v188 = v186;
  }

  v452 = v188;
  if (qword_280BE9480 != -1)
  {
    swift_once();
  }

  v196 = sub_2172A4380();
  v197 = v189;
  if (qword_280BE9478 != -1)
  {
    swift_once();
  }

  v198 = MEMORY[0x277D84F90];
  sub_2176CA7D0(qword_280C02708, v189, v190, v191, v192, v193, v194, v195, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE8230 != -1)
  {
    swift_once();
  }

  v199 = sub_2172A4380();
  v201 = v200;
  memcpy(v185, v519, 0x1B8uLL);
  v202 = v479;
  v185[55] = v480;
  v185[56] = v202;
  sub_2172E21DC();
  v203 = v476;
  *(v489 + v29[7]) = v477;
  *(v489 + v29[8]) = v203;
  v204 = v489;
  sub_2172E21DC();
  v205 = (v204 + v29[10]);
  v206 = v474;
  *v205 = v475;
  v205[1] = v206;
  v207 = (v204 + v29[11]);
  v208 = v472;
  *v207 = v473;
  v207[1] = v208;
  *(v204 + v29[12]) = v471;
  v209 = (v204 + v29[13]);
  v210 = v470;
  *v209 = v464;
  v209[1] = v210;
  v211 = v466;
  v209[2] = v465;
  v209[3] = v211;
  v212 = v468;
  v209[4] = v467;
  v209[5] = v212;
  v213 = *(&v469 + 1);
  v209[6] = v469;
  v209[7] = v213;
  v209[8] = v463;
  *(v204 + v29[14]) = v451;
  v214 = v462;
  if (!v462)
  {
    v214 = v198;
  }

  *(v204 + v29[15]) = v214;
  v215 = v461;
  *(v204 + v29[16]) = BYTE4(v461);
  *(v204 + v29[17]) = v215;
  v216 = v460;
  *(v204 + v29[18]) = BYTE4(v460);
  *(v204 + v29[19]) = v216;
  v217 = v459;
  *(v204 + v29[20]) = BYTE4(v459);
  *(v204 + v29[21]) = v217;
  v218 = (v204 + v29[22]);
  v219 = v457;
  *v218 = v458;
  v218[1] = v219;
  *(v204 + v29[23]) = v456;
  memcpy((v204 + v29[24]), v514, 0x78uLL);
  v220 = (v204 + v29[25]);
  v221 = v454;
  *v220 = v455;
  v220[1] = v221;
  v222 = (v204 + v29[26]);
  v223 = v452;
  v224 = v453;
  *v222 = v478;
  v222[1] = v224;
  v225 = v204 + v29[27];
  *v225 = v223;
  *(v225 + 8) = 0;
  v226 = (v204 + v29[28]);
  *v226 = v196;
  v226[1] = v197;
  v227 = (v204 + v29[30]);
  *v227 = v199;
  v227[1] = v201;
  v512 = 0uLL;
  *&v513[0] = 1;
  bzero(v513 + 8, 0x2E8uLL);
  if (qword_280BE9430 != -1)
  {
    swift_once();
  }

  sub_2176CA7B4(qword_280BE9438, v228, v229, v230, v231, v232, v233, v234, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE95F8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280C027E0, v235, v236, v237, v238, v239, v240, v241, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE9460 != -1)
  {
    swift_once();
  }

  sub_2176CA3F4(qword_280BE9468, v242, v243, v244, v245, v246, v247, v248, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE9448 != -1)
  {
    swift_once();
  }

  sub_2176CA3D8(qword_280BE9450, v249, v250, v251, v252, v253, v254, v255, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE9410 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE9418, v256, v257, v258, v259, v260, v261, v262, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE9618 != -1)
  {
    swift_once();
  }

  sub_2176CA3BC(qword_280BE9620, v263, v264, v265, v266, v267, v268, v269, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (v511[11] || v510[24] || v510[11] || v509[11] || v508[24] || v508[11])
  {
    v270 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E2188(v270, v271, v272);
      v499[0] = 0;
      v273 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5(v273, v499, v273);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v490, &qword_27CB25310, &unk_21775D3D0);
      memset(v491, 0, 128);
    }

    v274 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E2038(v274, v275, v276);
      v498[0] = 0;
      v277 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5(v277, v498, v277);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v490, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_122_1();
    }

    v278 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E2134(v278, v279, v280);
      LOBYTE(v501[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      OUTLINED_FUNCTION_54_5(v281, v282, v283);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v490, &qword_27CB25320, &unk_21776E020);
      OUTLINED_FUNCTION_50_5();
    }

    v284 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E1F90(v284, v285, v286);
      LOBYTE(v505[0]) = 0;
      v287 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5(v287, v505, v287);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v490, &unk_27CB28A60, &qword_217770B60);
      OUTLINED_FUNCTION_123_3();
    }

    v288 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E2038(v288, v289, v290);
      LOBYTE(v500[0]) = 0;
      v291 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5(v291, v500, v291);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      sub_2171F0738(v490, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_124_3();
    }

    v292 = sub_2172E3D54();
    if (v490[11])
    {
      sub_2172E20E0(v292, v293, v294);
      v503[0] = 0;
      v295 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_54_5(v295, v503, v295);
      v296 = OUTLINED_FUNCTION_142_1();
      sub_2171F0738(v296, v297, v298);
      OUTLINED_FUNCTION_112_4();
    }

    else
    {
      v299 = OUTLINED_FUNCTION_142_1();
      sub_2171F0738(v299, v300, v301);
      sub_2171F0738(v490, &qword_27CB25328, &unk_21775D3F0);
      memset(v500, 0, 128);
    }

    memcpy(v490, v491, 0x80uLL);
    memcpy(&v490[16], v499, 0x80uLL);
    memcpy(&v490[32], v498, 0x80uLL);
    memcpy(&v490[48], v501, 0x80uLL);
    memcpy(&v490[64], v505, 0x80uLL);
    memcpy(&v490[80], v500, 0x80uLL);
    v302 = OUTLINED_FUNCTION_142_1();
    memcpy(v302, v490, 0x300uLL);
  }

  v490[0] = 0;
  v490[1] = 0;
  v490[2] = 1;
  bzero(&v490[3], 0x1E8uLL);
  if (qword_280BE93E8 != -1)
  {
    swift_once();
  }

  sub_2176CAFC8(qword_280BE93F0, v303, v304, v305, v306, v307, v308, v309, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE95C0 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95C8, v310, v311, v312, v313, v314, v315, v316, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE95A8 != -1)
  {
    swift_once();
  }

  sub_2176CAFAC(qword_280BE95B0, v317, v318, v319, v320, v321, v322, v323, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE9590 != -1)
  {
    swift_once();
  }

  v331 = v3;
  sub_2176CAFE4(qword_280BE9598, v324, v325, v326, v327, v328, v329, v330, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (v507[11] || v506[37] || v506[24] || v506[11])
  {
    v332 = sub_2172E3D54();
    if (*(&v491[5] + 1))
    {
      sub_2172E208C(v332, v333, v334);
      v498[0] = 0;
      v335 = OUTLINED_FUNCTION_166_1();
      v331 = v491;
      OUTLINED_FUNCTION_54_5(v335, v498, v335);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v491, &qword_27CB25330, &unk_21775E9B0);
      OUTLINED_FUNCTION_122_1();
    }

    v336 = sub_2172E3D54();
    if (*(&v491[5] + 1))
    {
      sub_2172E2038(v336, v337, v338);
      LOBYTE(v501[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      v331 = v491;
      OUTLINED_FUNCTION_54_5(v339, v340, v341);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v491, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_50_5();
    }

    v342 = sub_2172E3D54();
    if (*(&v491[5] + 1))
    {
      sub_2172E2038(v342, v343, v344);
      LOBYTE(v505[0]) = 0;
      v345 = OUTLINED_FUNCTION_166_1();
      v331 = v491;
      OUTLINED_FUNCTION_54_5(v345, v505, v345);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v491, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_123_3();
    }

    v346 = sub_2172E3D54();
    if (*(&v491[5] + 1))
    {
      sub_2172E1FE4(v346, v347, v348);
      LOBYTE(v500[0]) = 0;
      v349 = OUTLINED_FUNCTION_166_1();
      v331 = v491;
      OUTLINED_FUNCTION_54_5(v349, v500, v349);
      sub_2171F0738(v490, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v490, &qword_27CB24AA8, &qword_217759080);
      sub_2171F0738(v491, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_124_3();
    }

    OUTLINED_FUNCTION_222_0();
    memcpy(v331 + 8, v498, 0x80uLL);
    memcpy(v331 + 16, v501, 0x80uLL);
    memcpy(v331 + 24, v505, 0x80uLL);
    memcpy(v490, v491, 0x200uLL);
  }

  v505[1] = 0;
  v505[0] = 0;
  v505[2] = 1;
  bzero(&v505[3], 0xE8uLL);
  if (qword_280BE9518 != -1)
  {
    swift_once();
  }

  sub_2176CB000(qword_280C02770, v350, v351, v352, v353, v354, v355, v356, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (qword_280BE81E0 != -1)
  {
    swift_once();
  }

  v364 = v3;
  sub_2176CA3D8(qword_280C024B0, v357, v358, v359, v360, v361, v362, v363, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469, *(&v469 + 1));
  if (v504 | v502[11])
  {
    sub_2172E3D54();
    v365 = sub_2172E3D54();
    if (*(&v491[5] + 1))
    {
      sub_2172E1F90(v365, v366, v367);
      LOBYTE(v501[0]) = 0;
      OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_176_3();
      v364 = v491;
      OUTLINED_FUNCTION_54_5(v368, v369, v370);
      sub_2171F0738(v505, &qword_27CB243D0, &unk_21775D3C0);
      OUTLINED_FUNCTION_131_4();
    }

    else
    {
      sub_2171F0738(v505, &qword_27CB243D0, &unk_21775D3C0);
      sub_2171F0738(v491, &unk_27CB28A60, &qword_217770B60);
      OUTLINED_FUNCTION_50_5();
    }

    OUTLINED_FUNCTION_222_0();
    memcpy(v364 + 8, v498, 0x80uLL);
    memcpy(v505, v491, 0x100uLL);
  }

  memset(v501, 0, 48);
  v501[6] = 1;
  bzero(&v501[7], 0x108uLL);
  if (qword_280BE8218 != -1)
  {
    swift_once();
  }

  sub_2176CB01C(qword_280C024D8, v371, v372, v373, v374, v375, v376, v377, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468);
  v484 = v491[1];
  v488 = v491[0];
  if (qword_280BE94F0 != -1)
  {
    swift_once();
  }

  v378 = sub_2172A4380();
  v380 = v379;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25378, &qword_21775B608);
  swift_allocObject();
  OUTLINED_FUNCTION_163_0();
  v381 = sub_217220A5C();
  v382 = sub_2172A486C(v381);

  sub_2172E3D54();
  if (*(&v488 + 1) != 1 || v380 || v382 || v500[2] != 1)
  {
    if (v380)
    {
      v383 = sub_217751DC8();
      sub_2171F0738(v501, &qword_27CB243C0, &unk_21775D3A0);
    }

    else
    {
      sub_2171F0738(v501, &qword_27CB243C0, &unk_21775D3A0);
      v378 = 0;
      v383 = 0;
    }

    sub_2172E3D54();
    v491[1] = v484;
    v491[0] = v488;
    *&v491[2] = v378;
    *(&v491[2] + 1) = v380;
    *&v491[3] = v383;
    *(&v491[3] + 1) = v382;
    memcpy(v501, v491, 0x140uLL);
  }

  v385 = *v3;
  v384 = v3[1];
  v386 = v486;
  OUTLINED_FUNCTION_98_5();
  *&v488 = v387;
  sub_2172E1E1C();
  OUTLINED_FUNCTION_142_1();
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172E3D54();
  *v386 = v385;
  v386[1] = v384;
  v388 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v389 = *(v388 + 24);
  sub_217751DE8();
  v390 = OUTLINED_FUNCTION_16_0();
  v389(v390);
  nullsub_1();
  memcpy(v499, v498, 0x161uLL);
  OUTLINED_FUNCTION_44_6();
  v482 = v391;
  v392 = v487;
  sub_2172E1E1C();
  OUTLINED_FUNCTION_146();
  v393 = OUTLINED_FUNCTION_16_0();
  v394(v393);
  __swift_project_boxed_opaque_existential_1(v491, *(&v491[1] + 1));
  v395 = OUTLINED_FUNCTION_5_4();
  v396(v395);
  __swift_destroy_boxed_opaque_existential_1(v491);
  v485 = v495;
  *&v484 = v496;
  LODWORD(v483) = v497;
  OUTLINED_FUNCTION_146();
  v397 = OUTLINED_FUNCTION_16_0();
  v398(v397);
  __swift_project_boxed_opaque_existential_1(v491, *(&v491[1] + 1));
  v399 = OUTLINED_FUNCTION_5_4();
  v401 = v400(v399);
  v480 = v402;
  v481 = v401;
  __swift_destroy_boxed_opaque_existential_1(v491);
  memcpy(v491, v499, 0x168uLL);
  *(&v491[22] + 1) = 0;
  v491[23] = 0uLL;
  nullsub_1();
  OUTLINED_FUNCTION_146();
  v403 = OUTLINED_FUNCTION_16_0();
  v404(v403);
  OUTLINED_FUNCTION_107_3();
  v405 = OUTLINED_FUNCTION_5_4();
  v407 = v406(v405);
  __swift_destroy_boxed_opaque_existential_1(v492);
  v408 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v409 = OUTLINED_FUNCTION_5_4();
  v410(v409, v408);
  OUTLINED_FUNCTION_107_3();
  v411 = OUTLINED_FUNCTION_5_4();
  v413 = v412(v411);
  __swift_destroy_boxed_opaque_existential_1(v492);
  v414 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v415 = OUTLINED_FUNCTION_5_4();
  v416(v415, v414);
  OUTLINED_FUNCTION_107_3();
  v417 = OUTLINED_FUNCTION_5_4();
  v419 = v418(v417);
  __swift_destroy_boxed_opaque_existential_1(v492);
  v420 = v3[5];
  v421 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v420);
  (*(v421 + 96))(v492, v420, v421);
  v422 = v493;
  v423 = v494;
  __swift_project_boxed_opaque_existential_1(v492, v493);
  v424 = (*(*(v423 + 8) + 88))(v422);
  sub_2172E1E74(v386, v482);
  sub_2171F0738(v501, &qword_27CB243C0, &unk_21775D3A0);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v425, v426, v427);
  sub_2171F0738(v490, &qword_27CB24AA8, &qword_217759080);
  v428 = OUTLINED_FUNCTION_142_1();
  sub_2171F0738(v428, &qword_27CB243C8, &unk_21775D390);
  sub_2172E1E74(v489, v488);
  __swift_destroy_boxed_opaque_existential_1(v492);
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v430 = v392 + v429[9];
  v431 = v484;
  *v430 = v485;
  *(v430 + 8) = v431;
  *(v430 + 16) = v483;
  v432 = (v392 + v429[10]);
  v433 = v480;
  *v432 = v481;
  v432[1] = v433;
  memcpy((v392 + v429[11]), v491, 0x180uLL);
  *(v392 + v429[12]) = v407;
  *(v392 + v429[13]) = v413;
  *(v392 + v429[14]) = v419;
  *(v392 + v429[15]) = v424;
  sub_2171F0738(v503, &qword_27CB24230, &unk_21775E9D0);
  sub_2171F0738(v507, &qword_27CB25330, &unk_21775E9B0);
  sub_2171F0738(v511, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v434, v435, v436);
  OUTLINED_FUNCTION_169_1(v502);
  sub_2171F0738(v506, &qword_27CB25338, &unk_21775D3E0);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v437, v438, v439);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v440, v441, v442);
  sub_2171F0738(v508, &qword_27CB25328, &unk_21775D3F0);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v443, v444, v445);
  OUTLINED_FUNCTION_169_1(v509);
  sub_2171F0738(v510, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_171_1();
  sub_2171F0738(v446, v447, v448);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2172DDCD0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_163_0();
  a3(v6);
  v7 = a4();

  return v7;
}

uint64_t sub_2172DDD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  OUTLINED_FUNCTION_189_3();
  if (v10)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    if (v6)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v13 = *v4 == *v3 && v6 == v7;
      if (!v13 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      goto LABEL_14;
    }
  }

  if ((a3(v4[2], v3[2]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = v4[4];
  v9 = v3[4];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = v4[3] == v3[3] && v8 == v9;
    if (!v10 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v9)
  {
    goto LABEL_14;
  }

  v14 = v4[6];
  v15 = v3[6];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v4[5] == v3[5] && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  v17 = v4[8];
  v18 = v3[8];
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v4[7] == v3[7] && v17 == v18;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v18)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_173_1();
  if (v33)
  {
    sub_2172E3D54();
    if (*(&v35 + 1))
    {
      v29[0] = v34;
      v29[1] = v35;
      v30 = v36;
      v20 = v31[4];
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v21 = *(v20 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_170_0();
      v27 = v21(v22, v23, v24, v25, v26);
      sub_217283154(v29);
      sub_217283154(v31);
      sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    sub_217283154(v31);
LABEL_54:
    sub_2171F0738(v32, &qword_27CB24928, &unk_21775E020);
    goto LABEL_14;
  }

  if (*(&v35 + 1))
  {
    goto LABEL_54;
  }

  sub_2171F0738(v32, &qword_27CB24188, &dword_217758930);
LABEL_51:
  sub_217261FB0(v4[14], v3[14]);
  if (v28)
  {
    sub_217261FB0(v4[15], v3[15]);
    return v11 & 1;
  }

LABEL_14:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2172DE220()
{
  OUTLINED_FUNCTION_189_3();
  if (v7)
  {
    if (v3 != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v3 == 1)
    {
      goto LABEL_14;
    }

    if (v2)
    {
      if (!v3)
      {
        goto LABEL_14;
      }

      v10 = *v1 == *v0 && v2 == v3;
      if (!v10 && (sub_217753058() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v3)
    {
      goto LABEL_14;
    }
  }

  sub_217275264(v1[2], v0[2]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = v1[4];
  v6 = v0[4];
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v1[3] == v0[3] && v5 == v6;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v6)
  {
    goto LABEL_14;
  }

  v11 = v1[6];
  v12 = v0[6];
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v1[5] == v0[5] && v11 == v12;
    if (!v13 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v12)
  {
    goto LABEL_14;
  }

  v14 = v1[8];
  v15 = v0[8];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v1[7] == v0[7] && v14 == v15;
    if (!v16 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_173_1();
  OUTLINED_FUNCTION_173_1();
  if (v30)
  {
    sub_2172E3D54();
    if (*(&v32 + 1))
    {
      v26[0] = v31;
      v26[1] = v32;
      v27 = v33;
      v17 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v18 = *(v17 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      OUTLINED_FUNCTION_170_0();
      v24 = v18(v19, v20, v21, v22, v23);
      sub_217283154(v26);
      sub_217283154(v28);
      sub_2171F0738(v29, &qword_27CB24188, &dword_217758930);
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    sub_217283154(v28);
LABEL_54:
    sub_2171F0738(v29, &qword_27CB24928, &unk_21775E020);
    goto LABEL_14;
  }

  if (*(&v32 + 1))
  {
    goto LABEL_54;
  }

  sub_2171F0738(v29, &qword_27CB24188, &dword_217758930);
LABEL_51:
  sub_217261FB0(v1[14], v0[14]);
  if (v25)
  {
    sub_217261FB0(v1[15], v0[15]);
    return v8 & 1;
  }

LABEL_14:
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_2172DE4E4(uint64_t a1, void (*a2)(const void *, uint64_t))
{
  OUTLINED_FUNCTION_150_1();
  v6 = *(v3 + 8);
  if (v6 == 1 || (OUTLINED_FUNCTION_24(), !v6))
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  a2(v2, v4[2]);
  if (v4[4])
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v4[6])
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v4[8])
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29_5();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_2172E3D54();
  if (*(&v15 + 1))
  {
    v12[0] = v14;
    v12[1] = v15;
    v13 = v16;
    OUTLINED_FUNCTION_24();
    __swift_project_boxed_opaque_existential_1(v12, *(&v15 + 1));
    OUTLINED_FUNCTION_171_1();
    v10(v7, v8, v9);
    sub_217283154(v12);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  sub_217265A08(v2, v4[14]);
  return sub_217265A08(v2, v4[15]);
}

double sub_2172DE88C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_215_1();
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217751DE8();
  sub_217265A08(a1, a4);
}

double sub_2172DE90C(const void *a1)
{
  memcpy(v5, v1, sizeof(v5));
  CloudArtwork.hash(into:)(a1);
  v3 = v1[54];
  sub_217751DE8();
  sub_217265A08(a1, v3);
}

double sub_2172DE988(const void *a1)
{
  v2 = v1;
  v4 = v2[3];
  if (v2[1])
  {
    sub_217753208();
    sub_217751FF8();
    if (v4)
    {
LABEL_3:
      sub_217753208();
      sub_217751FF8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_217753208();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_217753208();
LABEL_6:
  v5 = v2[4];
  sub_217751DE8();
  sub_217265A08(a1, v5);
}

uint64_t sub_2172DEA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  v4 = v31;
  if (a3)
  {

    swift_getAtKeyPath();

    if (v31)
    {
      v5 = sub_217751DE8();
      sub_2175436F4(v5);
      v30 = *(v31 + 16);
      if (v30)
      {
        v6 = 0;
        v4 = MEMORY[0x277D84F90];
        do
        {
          v7 = *(v31 + 32 + v6++);
          v8 = *(v4 + 16);
          v9 = (v4 + 32);
          while (v8)
          {
            v10 = 0xEB00000000736F6DLL;
            v11 = 0x74612D79626C6F64;
            switch(*v9)
            {
              case 1:
                break;
              case 2:
                v11 = OUTLINED_FUNCTION_120_1();
                v10 = 0xEB000000006F6964;
                break;
              case 3:
                v10 = 0xE800000000000000;
                v11 = OUTLINED_FUNCTION_117();
                break;
              case 4:
                v11 = OUTLINED_FUNCTION_116();
                v10 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v11 = OUTLINED_FUNCTION_118();
                v10 = 0xEC0000006F657265;
                break;
              case 6:
                v11 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x2D6C000000000000;
                v10 = 0xED00006F69647561;
                break;
              case 7:
                v10 = 0xE700000000000000;
                v11 = OUTLINED_FUNCTION_65() & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
                break;
              case 8:
                v11 = 0xD000000000000013;
                v10 = 0x80000002177AA7E0;
                break;
              case 9:
                v10 = 0xE500000000000000;
                v11 = OUTLINED_FUNCTION_175();
                break;
              case 0xA:
                v10 = 0xE800000000000000;
                v11 = OUTLINED_FUNCTION_119_3();
                break;
              default:
                OUTLINED_FUNCTION_206_1();
                v11 = v12 + 1;
                v10 = 0x80000002177AA770;
                break;
            }

            v13 = 0x74612D79626C6F64;
            v14 = 0xEB00000000736F6DLL;
            switch(v7)
            {
              case 1:
                break;
              case 2:
                v13 = 0x75612D79626C6F64;
                v14 = 0xEB000000006F6964;
                break;
              case 3:
                v14 = 0xE800000000000000;
                v13 = 0x7373656C73736F6CLL;
                break;
              case 4:
                v13 = 0x6C2D7365722D6968;
                v14 = 0xEF7373656C73736FLL;
                break;
              case 5:
                v13 = 0x74732D7973736F6CLL;
                v14 = 0xEC0000006F657265;
                break;
              case 6:
                v13 = 0x2D6C616974617073;
                v14 = 0xED00006F69647561;
                break;
              case 7:
                v14 = 0xE700000000000000;
                v13 = 0x6C616974617073;
                break;
              case 8:
                v13 = 0xD000000000000013;
                v14 = 0x80000002177AA7E0;
                break;
              case 9:
                v14 = 0xE500000000000000;
                v13 = 0x736F6D7461;
                break;
              case 10:
                v14 = 0xE800000000000000;
                v13 = 0x646E756F72727573;
                break;
              default:
                OUTLINED_FUNCTION_206_1();
                v13 = v15 + 1;
                v14 = 0x80000002177AA770;
                break;
            }

            if (v11 == v13 && v10 == v14)
            {

              goto LABEL_41;
            }

            v17 = sub_217753058();

            ++v9;
            --v8;
            if (v17)
            {
              goto LABEL_41;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_161_2();
            sub_2172B1EFC(v19, v20, v21, v22);
            v4 = v23;
          }

          v18 = *(v4 + 16);
          if (v18 >= *(v4 + 24) >> 1)
          {
            OUTLINED_FUNCTION_161_2();
            sub_2172B1EFC(v24, v25, v26, v27);
            v4 = v28;
          }

          *(v4 + 16) = v18 + 1;
          *(v4 + v18 + 32) = v7;
LABEL_41:
          ;
        }

        while (v6 != v30);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_2172DEE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5888[0];
  if (!qword_280BE5888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5888);
  }

  return result;
}

unint64_t sub_2172DEEB4()
{
  result = qword_280BE42D8;
  if (!qword_280BE42D8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v6 = sub_2172DEF40(v1, v2, v3);
    sub_2172DEF94(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42D8);
  }

  return result;
}

unint64_t sub_2172DEF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50B0;
  if (!qword_280BE50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50B0);
  }

  return result;
}

unint64_t sub_2172DEF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50B8;
  if (!qword_280BE50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50B8);
  }

  return result;
}

unint64_t sub_2172DEFE8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF02C()
{
  result = qword_27CB25030;
  if (!qword_27CB25030)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF0B0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25030);
  }

  return result;
}

unint64_t sub_2172DF0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25038;
  if (!qword_27CB25038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25038);
  }

  return result;
}

unint64_t sub_2172DF104()
{
  result = qword_280BE4318;
  if (!qword_280BE4318)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25040, &qword_21775B518);
    v6 = sub_2172DF190(v1, v2, v3);
    sub_2172DF1E4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4318);
  }

  return result;
}

unint64_t sub_2172DF190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B48;
  if (!qword_280BE3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B48);
  }

  return result;
}

unint64_t sub_2172DF1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3B50;
  if (!qword_280BE3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3B50);
  }

  return result;
}

unint64_t sub_2172DF238(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_215_1();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    v2();
    OUTLINED_FUNCTION_1_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF2B0()
{
  result = qword_280BE4328;
  if (!qword_280BE4328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243D8, &qword_217788BC0);
    sub_2172DEFE8(&unk_280BE3CA8);
    sub_2172DEFE8(&unk_280BE3CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4328);
  }

  return result;
}

unint64_t sub_2172DF398()
{
  result = qword_27CB25048;
  if (!qword_27CB25048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DF41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25048);
  }

  return result;
}

unint64_t sub_2172DF41C()
{
  result = qword_27CB25050;
  if (!qword_27CB25050)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24AB8, &unk_217759090);
    v6 = sub_2172DF4A8(v1, v2, v3);
    sub_2172DF4FC(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25050);
  }

  return result;
}

unint64_t sub_2172DF4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5460;
  if (!qword_280BE5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5460);
  }

  return result;
}

unint64_t sub_2172DF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5468[0];
  if (!qword_280BE5468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5468);
  }

  return result;
}

unint64_t sub_2172DF550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25058;
  if (!qword_27CB25058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25058);
  }

  return result;
}

unint64_t sub_2172DF600()
{
  result = qword_280BE42D0;
  if (!qword_280BE42D0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243F0, &qword_21775D690);
    v6 = sub_2172DEF40(v1, v2, v3);
    sub_2172DEF94(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42D0);
  }

  return result;
}

unint64_t sub_2172DF68C()
{
  result = qword_280BE2350;
  if (!qword_280BE2350)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25028, &qword_21775B510);
    sub_2172DF710(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2350);
  }

  return result;
}

unint64_t sub_2172DF710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE40F0;
  if (!qword_280BE40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE40F0);
  }

  return result;
}

unint64_t sub_2172DF764(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_215_1();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE8, &qword_2177595F0);
    v2();
    OUTLINED_FUNCTION_1_5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF7DC()
{
  result = qword_280BE4310;
  if (!qword_280BE4310)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25040, &qword_21775B518);
    v6 = sub_2172DF190(v1, v2, v3);
    sub_2172DF1E4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4310);
  }

  return result;
}

unint64_t sub_2172DF868()
{
  result = qword_280BE4320;
  if (!qword_280BE4320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243D8, &qword_217788BC0);
    sub_2172DEFE8(&unk_280BE3CA8);
    sub_2172DEFE8(&unk_280BE3CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4320);
  }

  return result;
}

unint64_t sub_2172DF950(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172DF9B8()
{
  result = qword_280BE2360;
  if (!qword_280BE2360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DFA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2360);
  }

  return result;
}

unint64_t sub_2172DFA3C()
{
  result = qword_280BE42E8;
  if (!qword_280BE42E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24AB8, &unk_217759090);
    v6 = sub_2172DF4A8(v1, v2, v3);
    sub_2172DF4FC(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42E8);
  }

  return result;
}

unint64_t sub_2172DFAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7DD8;
  if (!qword_280BE7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7DD8);
  }

  return result;
}

unint64_t sub_2172DFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25098;
  if (!qword_27CB25098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25098);
  }

  return result;
}

unint64_t sub_2172DFB70()
{
  result = qword_27CB250A0;
  if (!qword_27CB250A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250A0);
  }

  return result;
}

unint64_t sub_2172DFBF4()
{
  result = qword_27CB250A8;
  if (!qword_27CB250A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2172DEFE8(&unk_27CB250B0);
    sub_2172DEFE8(&unk_27CB250B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250A8);
  }

  return result;
}

unint64_t sub_2172DFCDC()
{
  result = qword_27CB250C0;
  if (!qword_27CB250C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_2172DFD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250C0);
  }

  return result;
}

unint64_t sub_2172DFD60()
{
  result = qword_27CB250C8;
  if (!qword_27CB250C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_2172DEFE8(&unk_27CB250D0);
    sub_2172DEFE8(&unk_27CB250D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250C8);
  }

  return result;
}

uint64_t sub_2172DFE68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2172DFEA0()
{
  result = qword_27CB250E0;
  if (!qword_27CB250E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250E0);
  }

  return result;
}

unint64_t sub_2172DFF24()
{
  result = qword_27CB250E8;
  if (!qword_27CB250E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24768, &qword_217758CF0);
    sub_2172DEFE8(&unk_27CB250F0);
    sub_2172DEFE8(&unk_27CB250F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB250E8);
  }

  return result;
}

unint64_t sub_2172E000C()
{
  result = qword_27CB25100;
  if (!qword_27CB25100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24248, &qword_217758670);
    sub_2172E0090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25100);
  }

  return result;
}

unint64_t sub_2172E0090()
{
  result = qword_27CB25108;
  if (!qword_27CB25108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24820, &unk_2177650E0);
    sub_2172DEFE8(&unk_27CB25110);
    sub_2172DEFE8(&unk_27CB25118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25108);
  }

  return result;
}

unint64_t sub_2172E0178()
{
  result = qword_27CB25120;
  if (!qword_27CB25120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E01FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25120);
  }

  return result;
}

unint64_t sub_2172E01FC()
{
  result = qword_27CB25128;
  if (!qword_27CB25128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24778, &unk_217758D00);
    sub_2172DEFE8(&unk_27CB25130);
    sub_2172DEFE8(&unk_27CB25138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25128);
  }

  return result;
}

unint64_t sub_2172E02E4()
{
  result = qword_27CB25148;
  if (!qword_27CB25148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24288, &qword_217758F80);
    sub_2172E0368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25148);
  }

  return result;
}

unint64_t sub_2172E0368()
{
  result = qword_27CB25150;
  if (!qword_27CB25150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24728, &qword_217758CB0);
    sub_2172DEFE8(&unk_27CB250B0);
    sub_2172DEFE8(&unk_27CB250B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25150);
  }

  return result;
}

unint64_t sub_2172E0450()
{
  result = qword_27CB25158;
  if (!qword_27CB25158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24278, &unk_217759070);
    sub_2172E04D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25158);
  }

  return result;
}

unint64_t sub_2172E04D4()
{
  result = qword_27CB25160;
  if (!qword_27CB25160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB247F0, &qword_21775D360);
    sub_2172DEFE8(&unk_27CB250D0);
    sub_2172DEFE8(&unk_27CB250D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25160);
  }

  return result;
}

unint64_t sub_2172E05BC()
{
  result = qword_27CB25168;
  if (!qword_27CB25168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172E0640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25168);
  }

  return result;
}

unint64_t sub_2172E0640()
{
  result = qword_27CB25170;
  if (!qword_27CB25170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24768, &qword_217758CF0);
    sub_2172DEFE8(&unk_27CB250F0);
    sub_2172DEFE8(&unk_27CB250F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25170);
  }

  return result;
}

unint64_t sub_2172E0728()
{
  result = qword_27CB25178;
  if (!qword_27CB25178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24248, &qword_217758670);
    sub_2172E07AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25178);
  }

  return result;
}

unint64_t sub_2172E07AC()
{
  result = qword_27CB25180;
  if (!qword_27CB25180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24820, &unk_2177650E0);
    sub_2172DEFE8(&unk_27CB25110);
    sub_2172DEFE8(&unk_27CB25118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25180);
  }

  return result;
}

unint64_t sub_2172E0894()
{
  result = qword_27CB25188;
  if (!qword_27CB25188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242D8, &unk_21777EEB0);
    sub_2172E0918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25188);
  }

  return result;
}

unint64_t sub_2172E0918()
{
  result = qword_27CB25190;
  if (!qword_27CB25190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24778, &unk_217758D00);
    sub_2172DEFE8(&unk_27CB25130);
    sub_2172DEFE8(&unk_27CB25138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25190);
  }

  return result;
}

unint64_t sub_2172E0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB251B0;
  if (!qword_27CB251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251B0);
  }

  return result;
}

unint64_t sub_2172E0A8C()
{
  result = qword_27CB251B8;
  if (!qword_27CB251B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251B8);
  }

  return result;
}

unint64_t sub_2172E0B10()
{
  result = qword_27CB251C0;
  if (!qword_27CB251C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2172DEFE8(&unk_27CB251C8);
    sub_2172DEFE8(&unk_27CB251D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251C0);
  }

  return result;
}

unint64_t sub_2172E0BF8()
{
  result = qword_27CB251D8;
  if (!qword_27CB251D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251D8);
  }

  return result;
}

unint64_t sub_2172E0C7C()
{
  result = qword_27CB251E0;
  if (!qword_27CB251E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24808, &qword_217758D90);
    sub_2172DEFE8(&unk_27CB251E8);
    sub_2172DEFE8(&unk_27CB251F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB251E0);
  }

  return result;
}

unint64_t sub_2172E0D64()
{
  result = qword_27CB25200;
  if (!qword_27CB25200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242C8, &unk_217758970);
    sub_2172E0DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25200);
  }

  return result;
}

unint64_t sub_2172E0DE8()
{
  result = qword_27CB25208;
  if (!qword_27CB25208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24790, &unk_21775A220);
    sub_2172DEFE8(&unk_27CB251C8);
    sub_2172DEFE8(&unk_27CB251D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25208);
  }

  return result;
}

unint64_t sub_2172E0ED0()
{
  result = qword_27CB25210;
  if (!qword_27CB25210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25210);
  }

  return result;
}

unint64_t sub_2172E0F54()
{
  result = qword_27CB25218;
  if (!qword_27CB25218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24808, &qword_217758D90);
    sub_2172DEFE8(&unk_27CB251E8);
    sub_2172DEFE8(&unk_27CB251F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25218);
  }

  return result;
}

uint64_t sub_2172E1074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

unint64_t sub_2172E10B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25230;
  if (!qword_27CB25230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25230);
  }

  return result;
}

unint64_t sub_2172E110C()
{
  result = qword_27CB25238;
  if (!qword_27CB25238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E1190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25238);
  }

  return result;
}

unint64_t sub_2172E1190()
{
  result = qword_27CB25240;
  if (!qword_27CB25240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A88, &unk_217759050);
    sub_2172DEFE8(&unk_27CB25248);
    sub_2172DEFE8(&unk_27CB25250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25240);
  }

  return result;
}

unint64_t sub_2172E1278()
{
  result = qword_27CB25260;
  if (!qword_27CB25260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24238, &unk_21775EA00);
    sub_2172E12FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25260);
  }

  return result;
}

unint64_t sub_2172E12FC()
{
  result = qword_27CB25268;
  if (!qword_27CB25268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A88, &unk_217759050);
    sub_2172DEFE8(&unk_27CB25248);
    sub_2172DEFE8(&unk_27CB25250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25268);
  }

  return result;
}

double sub_2172E141C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_2172E1460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5710;
  if (!qword_280BE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5710);
  }

  return result;
}

unint64_t sub_2172E14B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25280;
  if (!qword_27CB25280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25280);
  }

  return result;
}

unint64_t sub_2172E1508()
{
  result = qword_27CB25290;
  if (!qword_27CB25290)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    v6 = sub_2172E1594(v1, v2, v3);
    sub_2172E15E8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25290);
  }

  return result;
}

unint64_t sub_2172E1594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3580;
  if (!qword_280BE3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3580);
  }

  return result;
}

unint64_t sub_2172E15E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3588;
  if (!qword_280BE3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3588);
  }

  return result;
}

unint64_t sub_2172E163C()
{
  result = qword_27CB25298;
  if (!qword_27CB25298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E16C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25298);
  }

  return result;
}

unint64_t sub_2172E16C0()
{
  result = qword_27CB252A0;
  if (!qword_27CB252A0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB252A8, &qword_21775B590);
    v6 = sub_2172E174C(v1, v2, v3);
    sub_2172E17A0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252A0);
  }

  return result;
}

unint64_t sub_2172E174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4EC0;
  if (!qword_280BE4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4EC0);
  }

  return result;
}

unint64_t sub_2172E17A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE4EC8[0];
  if (!qword_280BE4EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE4EC8);
  }

  return result;
}

unint64_t sub_2172E17F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB252B0;
  if (!qword_27CB252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252B0);
  }

  return result;
}

unint64_t sub_2172E1848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3CA0;
  if (!qword_280BE3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3CA0);
  }

  return result;
}

unint64_t sub_2172E189C()
{
  result = qword_280BE42F0;
  if (!qword_280BE42F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25288, &qword_21775B588);
    v6 = sub_2172E1594(v1, v2, v3);
    sub_2172E15E8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42F0);
  }

  return result;
}

unint64_t sub_2172E1928()
{
  result = qword_280BE2358;
  if (!qword_280BE2358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E19AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2358);
  }

  return result;
}

unint64_t sub_2172E19AC()
{
  result = qword_280BE42C8;
  if (!qword_280BE42C8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB252A8, &qword_21775B590);
    v6 = sub_2172E174C(v1, v2, v3);
    sub_2172E17A0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE42C8);
  }

  return result;
}

unint64_t sub_2172E1A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE56F8;
  if (!qword_280BE56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE56F8);
  }

  return result;
}

unint64_t sub_2172E1AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5770[0];
  if (!qword_280BE5770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE5770);
  }

  return result;
}

unint64_t sub_2172E1B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7F30;
  if (!qword_280BE7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F30);
  }

  return result;
}

unint64_t sub_2172E1B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB252E8;
  if (!qword_27CB252E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252E8);
  }

  return result;
}

unint64_t sub_2172E1BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB252F0;
  if (!qword_27CB252F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252F0);
  }

  return result;
}

unint64_t sub_2172E1C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB252F8;
  if (!qword_27CB252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB252F8);
  }

  return result;
}

unint64_t sub_2172E1C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BEA9F8;
  if (!qword_280BEA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BEA9F8);
  }

  return result;
}

uint64_t sub_2172E1CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAlbum.Attributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172E1D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5720;
  if (!qword_280BE5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5720);
  }

  return result;
}

unint64_t sub_2172E1D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5730;
  if (!qword_280BE5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5730);
  }

  return result;
}

unint64_t sub_2172E1DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE56F0;
  if (!qword_280BE56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE56F0);
  }

  return result;
}

uint64_t sub_2172E1E1C()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2172E1E74(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2172E1ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172E1F3C()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return v0;
}

unint64_t sub_2172E1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25340;
  if (!qword_27CB25340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25340);
  }

  return result;
}

unint64_t sub_2172E1FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25348;
  if (!qword_27CB25348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25348);
  }

  return result;
}

unint64_t sub_2172E2038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25350;
  if (!qword_27CB25350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25350);
  }

  return result;
}

unint64_t sub_2172E208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25358;
  if (!qword_27CB25358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25358);
  }

  return result;
}

unint64_t sub_2172E20E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25360;
  if (!qword_27CB25360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25360);
  }

  return result;
}

unint64_t sub_2172E2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25368;
  if (!qword_27CB25368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25368);
  }

  return result;
}

unint64_t sub_2172E2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE29F0;
  if (!qword_280BE29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE29F0);
  }

  return result;
}

uint64_t sub_2172E21DC()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return v0;
}

uint64_t sub_2172E225C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAlbum(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172E2314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253A8;
  if (!qword_27CB253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253A8);
  }

  return result;
}

unint64_t sub_2172E236C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253B0;
  if (!qword_27CB253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253B0);
  }

  return result;
}

unint64_t sub_2172E23C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253B8;
  if (!qword_27CB253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253B8);
  }

  return result;
}

unint64_t sub_2172E244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253D0;
  if (!qword_27CB253D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253D0);
  }

  return result;
}

unint64_t sub_2172E24A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253D8;
  if (!qword_27CB253D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253D8);
  }

  return result;
}

unint64_t sub_2172E24FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253E0;
  if (!qword_27CB253E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253E0);
  }

  return result;
}

unint64_t sub_2172E2554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB253E8;
  if (!qword_27CB253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB253E8);
  }

  return result;
}

unint64_t sub_2172E25DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25400;
  if (!qword_27CB25400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25400);
  }

  return result;
}

unint64_t sub_2172E2634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25408;
  if (!qword_27CB25408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25408);
  }

  return result;
}

unint64_t sub_2172E268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25410;
  if (!qword_27CB25410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25410);
  }

  return result;
}

unint64_t sub_2172E26E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25418;
  if (!qword_27CB25418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25418);
  }

  return result;
}

unint64_t sub_2172E2768(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2172E27BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25430;
  if (!qword_27CB25430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25430);
  }

  return result;
}

unint64_t sub_2172E2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25438;
  if (!qword_27CB25438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25438);
  }

  return result;
}

void sub_2172E29D0(uint64_t a1)
{
  type metadata accessor for CloudAlbum.Attributes(319);
  if (v1 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE5718, &type metadata for CloudAlbum.Relationships);
    if (v2 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE5728, &type metadata for CloudAlbum.Associations);
      if (v3 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE56E8, &type metadata for CloudAlbum.Metadata);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2172E2AEC(uint64_t a1)
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2172E2DB0(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2172E2E08(319, &qword_280BE2348, &qword_27CB25028);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E08(319, &qword_280BE75A8, &qword_27CB24BE8);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E08(319, &qword_280BE4308, &qword_27CB25040);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E08(319, &qword_280BE75B0, &qword_27CB24BE0);
        if (v12 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E08(319, &qword_280BE7548, &qword_27CB24C58);
        if (v13 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
        if (v14 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E08(319, &qword_280BE7558, &qword_27CB24C50);
        if (v15 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
        if (v16 > 0x3F)
        {
          return v8;
        }

        sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
        if (v17 > 0x3F)
        {
          return v8;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2172E2DB0(uint64_t a1)
{
  if (!qword_280BE99F8[0])
  {
    sub_2177516D8();
    v1 = sub_2177528F8();
    if (!v2)
    {
      atomic_store(v1, qword_280BE99F8);
    }
  }
}

void sub_2172E2E08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_200_0(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    v6 = sub_2177528F8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2172E2E58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2177528F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8MusicKit03AnyA31ItemCollectionIncrementalLoaderVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2172E2EC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 768))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2172E2F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 760) = 0;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 768) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 768) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudAlbum.Relationships.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2172E31B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 512))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2172E3204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 504) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 512) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit10CloudAlbumV8MetadataV12AssociationsVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_2172E3328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 320))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_2172E337C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_2172E343C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 256))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2172E3490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 256) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Metadata.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudEndpointKind(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CloudAlbum.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MusicIdentifierKind(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2172E37FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CloudAlbum.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE6)
  {
    if (a2 + 26 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 26) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 27;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v5 = v6 - 27;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudAlbum.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
          *result = a2 + 26;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2172E3A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25450;
  if (!qword_27CB25450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25450);
  }

  return result;
}

unint64_t sub_2172E3A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25458;
  if (!qword_27CB25458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25458);
  }

  return result;
}

unint64_t sub_2172E3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25460;
  if (!qword_27CB25460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25460);
  }

  return result;
}

unint64_t sub_2172E3B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5760;
  if (!qword_280BE5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5760);
  }

  return result;
}

unint64_t sub_2172E3BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5768;
  if (!qword_280BE5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5768);
  }

  return result;
}

unint64_t sub_2172E3BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5700;
  if (!qword_280BE5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5700);
  }

  return result;
}

unint64_t sub_2172E3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5708;
  if (!qword_280BE5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5708);
  }

  return result;
}

unint64_t sub_2172E3CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5878;
  if (!qword_280BE5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5878);
  }

  return result;
}

unint64_t sub_2172E3D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5880;
  if (!qword_280BE5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5880);
  }

  return result;
}

uint64_t sub_2172E3D54()
{
  OUTLINED_FUNCTION_169();
  v4 = OUTLINED_FUNCTION_200_0(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_18_13(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = (v2 + a1);
  v3[6].n128_u64[0] = 0;
  v3[4] = a2;
  v3[5] = a2;
  v3[2] = a2;
  v3[3] = a2;
  *v3 = a2;
  v3[1] = a2;
}

uint64_t OUTLINED_FUNCTION_20_14()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  STACK[0x2B8] = *v0;
  STACK[0x2C0] = v2;
  LOBYTE(STACK[0x2C8]) = v3;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_21_10()
{
  v0[10] = 0;
  v0[12] = 0;
  v0[14] = 0;
}

void OUTLINED_FUNCTION_22_12(int a1@<W8>)
{
  v1[3] = a1;
  *(v2 - 72) = a1;
  v1[4] = a1;
  v1[6] = a1;
  v1[8] = a1;
  v1[10] = a1;
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_2172DDD74(va, &a9, sub_21726FA48);
}

double OUTLINED_FUNCTION_50_5()
{
  result = 0.0;
  v0[107] = 0u;
  v0[108] = 0u;
  v0[109] = 0u;
  v0[110] = 0u;
  v0[111] = 0u;
  v0[112] = 0u;
  v0[113] = 0u;
  v0[114] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return sub_2171F0738(v0 + 848, v1, v2);
}

unint64_t OUTLINED_FUNCTION_52_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = &STACK[0x2B8];
  v10 = v6;
  v11 = v7;

  return MusicCatalogID.init(value:type:)(*&v10, *(&a4 - 1));
}

void *OUTLINED_FUNCTION_53_5()
{

  return memcpy(&STACK[0x420], &STACK[0x598], 0x161uLL);
}

void OUTLINED_FUNCTION_54_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MusicItemCollection<>.convertToRawCollection<A>(configuration:incrementalLoadingEncoding:)();
}

uint64_t OUTLINED_FUNCTION_57_5@<X0>(char a2@<W8>)
{
  *(v2 + 288) = a2;

  return sub_217752F08();
}

double OUTLINED_FUNCTION_71_5@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_73_6()
{

  return sub_2172DE4E4(v1 - 104, v0);
}

uint64_t OUTLINED_FUNCTION_74_4()
{

  return sub_2172DE4E4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t a1)
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_79_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_2172DDD74(va, &a9, v24);
}

uint64_t OUTLINED_FUNCTION_93_4()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_111_3()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_112_4()
{

  return sub_2171F0738(v0 + 368, v1, v2);
}

double OUTLINED_FUNCTION_122_1()
{
  result = 0.0;
  v0[130] = 0u;
  v0[131] = 0u;
  v0[132] = 0u;
  v0[133] = 0u;
  v0[134] = 0u;
  v0[135] = 0u;
  v0[136] = 0u;
  v0[137] = 0u;
  return result;
}

double OUTLINED_FUNCTION_123_3()
{
  result = 0.0;
  v0[169] = 0u;
  v0[170] = 0u;
  v0[171] = 0u;
  v0[172] = 0u;
  v0[173] = 0u;
  v0[174] = 0u;
  v0[175] = 0u;
  v0[176] = 0u;
  return result;
}

double OUTLINED_FUNCTION_124_3()
{
  result = 0.0;
  v0[204] = 0u;
  v0[205] = 0u;
  v0[206] = 0u;
  v0[207] = 0u;
  v0[208] = 0u;
  v0[209] = 0u;
  v0[210] = 0u;
  v0[211] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_131_4()
{

  return sub_2171F0738(v0 + 1136, v1, v2);
}

BOOL OUTLINED_FUNCTION_137_1()
{

  return sub_217696E10(7u, v0);
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{

  return sub_217269EF4(&STACK[0x2B8], &a51);
}

uint64_t OUTLINED_FUNCTION_139_2()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_140_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dynamic_cast_existential_1_conditional(v3, v3, a3);
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t a1, void (*a2)(const void *, uint64_t))
{

  return sub_2172DE4E4(v2 - 104, a2);
}