uint64_t sub_2173CA8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_217753058();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void ArtworkCatalog.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    v3 = a1;
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    v3 = a1;
    MEMORY[0x21CEA3550](0);
  }

  OUTLINED_FUNCTION_138(v2 + 32, v15);
  v4 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 32), v4);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_2_48(v8);
  v10(v9);
  v11 = OUTLINED_FUNCTION_8_32();
  v12(v11);
  v14 = v13;
  (*(v6 + 8))(v3, v4);
  sub_217753208();
  if (v14)
  {
    sub_217751FF8();
  }
}

uint64_t sub_2173CAA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x21CEA3550](0, a2);
  }

  MEMORY[0x21CEA3550](1);

  return sub_217751FF8();
}

uint64_t sub_2173CAAE4(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  if (a2)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  return sub_217753238();
}

uint64_t sub_2173CAB7C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_2177531E8();
  sub_2173CAA74(v5, v2, v3);
  return sub_217753238();
}

uint64_t static ArtworkCatalog.Parameters.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_217753058() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t ArtworkCatalog.Parameters.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    MEMORY[0x21CEA3550](0);
  }

  OUTLINED_FUNCTION_6_32();

  return sub_217751FF8();
}

uint64_t ArtworkCatalog.Parameters.hashValue.getter()
{
  v1 = *(v0 + 8);
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

  OUTLINED_FUNCTION_6_32();
  sub_217751FF8();
  return sub_217753238();
}

uint64_t sub_2173CAD8C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_2177531E8();
  ArtworkCatalog.Parameters.hash(into:)(v5);
  return sub_217753238();
}

uint64_t ArtworkCatalog.hashValue.getter()
{
  sub_2177531E8();
  ArtworkCatalog.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173CAE88(uint64_t a1)
{
  sub_2177531E8();
  ArtworkCatalog.hash(into:)(v2);
  return sub_217753238();
}

uint64_t Artwork.ColorAnalysis.init(backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id Artwork.ColorAnalysis.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *Artwork.ColorAnalysis.primaryTextColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *Artwork.ColorAnalysis.secondaryTextColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *Artwork.ColorAnalysis.tertiaryTextColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_2173CAF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = v10;
  v22[4] = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v7 + 32))(boxed_opaque_existential_0, a1, a3);
  sub_2171FF30C(v22, &v16);
  sub_2173C9A78(&v16, 0, 0, &v19);
  v16 = v19;
  v17 = v20;
  v18 = v21;
  v13 = swift_allocObject();
  (*(v7 + 16))(v9, boxed_opaque_existential_0, a3);
  v14 = sub_2173CB844(v9, &v16, v13, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v14;
}

unint64_t sub_2173CB0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27078;
  if (!qword_27CB27078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27078);
  }

  return result;
}

uint64_t sub_2173CB1CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2173CB20C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173CB258(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2173CB2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of UnderlyingArtworkCatalog.requestImageData()()
{
  OUTLINED_FUNCTION_209();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_7_30(v1);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_2173CB4DC;

  return v8(v4, v2);
}

uint64_t sub_2173CB4DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t dispatch thunk of UnderlyingArtworkCatalog.requestColorAnalysis()()
{
  OUTLINED_FUNCTION_209();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = (*(v1 + 96) + **(v1 + 96));
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_2172AC7B0;

  return v9(v6, v4, v2);
}

uint64_t sub_2173CB71C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173CB76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2173CB7C0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2173CB7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27088;
  if (!qword_27CB27088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27088);
  }

  return result;
}

uint64_t sub_2173CB844(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  if (qword_280BE9F10 != -1)
  {
    v15 = *a2;
    swift_once();
    v10 = v15;
  }

  *(a3 + 16) = v10;

  sub_2171FF30C(v16, a3 + 32);
  v11 = *(a3 + 24);
  if (v11)
  {
    v12 = *(a3 + 16);
    v13 = qword_280BE8888;
    sub_217751DE8();
    if (v13 != -1)
    {
      swift_once();
    }

    sub_217577290(a3, v12, v11);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return a3;
}

uint64_t sub_2173CB988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBA44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173CB9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBA44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2173CBA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27098;
  if (!qword_27CB27098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27098);
  }

  return result;
}

uint64_t sub_2173CBB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBBCC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173CBB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBBCC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2173CBBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB270A8;
  if (!qword_27CB270A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270A8);
  }

  return result;
}

uint64_t sub_2173CBC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBCFC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173CBC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBCFC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

unint64_t sub_2173CBCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB270B8;
  if (!qword_27CB270B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270B8);
  }

  return result;
}

uint64_t sub_2173CBD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBF28(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173CBDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173CBF28(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_2173CBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

unint64_t sub_2173CBF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB270C8;
  if (!qword_27CB270C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270C8);
  }

  return result;
}

void CatalogSearchRawResponse.TopResult.id.getter()
{
  OUTLINED_FUNCTION_12();
  v7 = type metadata accessor for CloudStation(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v56 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  v55 = v13;
  v14 = OUTLINED_FUNCTION_206();
  v15 = type metadata accessor for CloudRecordLabel(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v17 = OUTLINED_FUNCTION_91_8();
  v18 = type metadata accessor for CloudRadioShow(v17);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v20 = OUTLINED_FUNCTION_69();
  v21 = type metadata accessor for CloudPlaylist(v20);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v23 = OUTLINED_FUNCTION_71_0();
  v24 = type metadata accessor for CloudMusicVideo(v23);
  v25 = OUTLINED_FUNCTION_45_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v26 = OUTLINED_FUNCTION_37_10();
  v27 = type metadata accessor for CloudGenre(v26);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v29 = OUTLINED_FUNCTION_31_12();
  v30 = type metadata accessor for CloudCurator(v29);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v32 = OUTLINED_FUNCTION_61_6();
  v33 = type metadata accessor for CloudArtist(v32);
  v34 = OUTLINED_FUNCTION_45_0(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = type metadata accessor for CloudAlbum(0);
  v39 = OUTLINED_FUNCTION_45_0(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v46 = (v45 - v44);
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v46);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v46, v37);
      sub_217751DE8();
      OUTLINED_FUNCTION_12_22();
      v49 = v37;
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v46, v6);
      sub_217751DE8();
      OUTLINED_FUNCTION_16_28();
      v49 = v6;
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v46, v5);
      sub_217751DE8();
      OUTLINED_FUNCTION_17_17();
      v49 = v5;
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v46, v4);
      sub_217751DE8();
      OUTLINED_FUNCTION_13_26();
      v49 = v4;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v46, v3);
      sub_217751DE8();
      OUTLINED_FUNCTION_14_23();
      v49 = v3;
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v50 = OUTLINED_FUNCTION_47_2();
      sub_2173D77EC(v50, v51);
      sub_217751DE8();
      OUTLINED_FUNCTION_21_20();
      v49 = v2;
      goto LABEL_15;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      sub_2173D77EC(v46, v1);
      sub_217751DE8();
      OUTLINED_FUNCTION_36_15();
      v49 = v1;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v42 = v55;
      sub_2173D77EC(v46, v55);
      sub_217751DE8();
      v47 = type metadata accessor for CloudSong;
      goto LABEL_14;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v42 = v56;
      sub_2173D77EC(v46, v56);
      sub_217751DE8();
      v47 = type metadata accessor for CloudStation;
      goto LABEL_14;
    case 0xAu:
      v52 = v46[1];
      v62 = *v46;
      *v63 = v52;
      *&v63[9] = *(v46 + 25);
      sub_21738C4B0(&v62, v60, &qword_27CB25890, &unk_21775D928);
      if (v61)
      {
        sub_2171F3F0C(v60, v57);
        v53 = v58;
        v54 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        (*(*(v54 + 8) + 8))(v53);
        __swift_destroy_boxed_opaque_existential_1(v57);
      }

      sub_2171F0738(&v62, &qword_27CB25890, &unk_21775D928);
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v46, v42);
      sub_217751DE8();
      v47 = type metadata accessor for CloudAlbum;
LABEL_14:
      v48 = v47;
      v49 = v42;
LABEL_15:
      sub_2173D7844(v49, v48);
LABEL_16:
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t type metadata accessor for CatalogSearchRawResponse.TopResult(uint64_t a1)
{
  result = qword_27CB27190;
  if (!qword_27CB27190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CatalogSearchRawResponse.TopResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  v133 = v0;
  v134 = v1;
  v2 = type metadata accessor for CloudStation(0);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_81();
  v127 = v4;
  v5 = OUTLINED_FUNCTION_206();
  v6 = type metadata accessor for CloudSong(v5);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v126 = v8;
  v9 = OUTLINED_FUNCTION_206();
  v10 = type metadata accessor for CloudRecordLabel(v9);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_81();
  v125 = v12;
  v13 = OUTLINED_FUNCTION_206();
  v14 = type metadata accessor for CloudRadioShow(v13);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_81();
  v124 = v16;
  v17 = OUTLINED_FUNCTION_206();
  v18 = type metadata accessor for CloudPlaylist(v17);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v123 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v22 = type metadata accessor for CloudMusicVideo(v21);
  v23 = OUTLINED_FUNCTION_45_0(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_81();
  v122 = v24;
  v25 = OUTLINED_FUNCTION_206();
  v26 = type metadata accessor for CloudGenre(v25);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_81();
  v121 = v28;
  v29 = OUTLINED_FUNCTION_206();
  v30 = type metadata accessor for CloudCurator(v29);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_81();
  v33 = OUTLINED_FUNCTION_44_11(v32);
  v34 = type metadata accessor for CloudArtist(v33);
  v35 = OUTLINED_FUNCTION_45_0(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  v37 = OUTLINED_FUNCTION_44_11(v36);
  v38 = type metadata accessor for CloudAlbum(v37);
  v39 = OUTLINED_FUNCTION_45_0(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_81();
  v41 = OUTLINED_FUNCTION_44_11(v40);
  type metadata accessor for CatalogSearchRawResponse.TopResult(v41);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_31();
  v132 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_99();
  v131 = v45;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_99();
  v130 = v47;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_99();
  v129 = v49;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_99();
  v128 = v51;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v52);
  v54 = &v117 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = (&v117 - v56);
  MEMORY[0x28223BE20](v58);
  v60 = &v117 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v117 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v117 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v117 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270D0, &qword_217768EF0);
  OUTLINED_FUNCTION_45_0(v70);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v71);
  v73 = &v117 - v72;
  v75 = &v117 + *(v74 + 56) - v72;
  sub_2173D789C(v133, &v117 - v72);
  v76 = v134;
  v134 = v75;
  sub_2173D789C(v76, v75);
  OUTLINED_FUNCTION_161_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_52();
      v97 = OUTLINED_FUNCTION_153();
      sub_2173D789C(v97, v98);
      if (OUTLINED_FUNCTION_72_9() == 1)
      {
        OUTLINED_FUNCTION_4_49();
        v99 = v119;
        sub_2173D77EC(v57, v119);
        static CloudArtist.== infix(_:_:)(v66);
        v93 = type metadata accessor for CloudArtist;
        sub_2173D7844(v99, type metadata accessor for CloudArtist);
        v94 = v66;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_12_22();
      v80 = v66;
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_0_52();
      v88 = OUTLINED_FUNCTION_154();
      sub_2173D789C(v88, v89);
      if (OUTLINED_FUNCTION_72_9() == 2)
      {
        OUTLINED_FUNCTION_7_31();
        v86 = v120;
        sub_2173D77EC(v57, v120);
        v90 = OUTLINED_FUNCTION_240();
        static CloudCurator.== infix(_:_:)(v90, v91);
        v87 = type metadata accessor for CloudCurator;
        goto LABEL_25;
      }

      v115 = type metadata accessor for CloudCurator;
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_0_52();
      sub_2173D789C(v73, v60);
      if (OUTLINED_FUNCTION_72_9() == 3)
      {
        OUTLINED_FUNCTION_6_33();
        v92 = v121;
        sub_2173D77EC(v57, v121);
        static CloudGenre.== infix(_:_:)(v60, v92);
        v93 = type metadata accessor for CloudGenre;
        sub_2173D7844(v92, type metadata accessor for CloudGenre);
        v94 = v60;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_17_17();
      v80 = v60;
      goto LABEL_39;
    case 4u:
      OUTLINED_FUNCTION_0_52();
      sub_2173D789C(v73, v57);
      v81 = v134;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_9_26();
        v82 = v122;
        sub_2173D77EC(v81, v122);
        static CloudMusicVideo.== infix(_:_:)();
        v83 = v73;
        sub_2173D7844(v82, type metadata accessor for CloudMusicVideo);
        v84 = OUTLINED_FUNCTION_93();
        sub_2173D7844(v84, v85);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_13_26();
      v80 = v57;
      goto LABEL_39;
    case 5u:
      OUTLINED_FUNCTION_0_52();
      v100 = OUTLINED_FUNCTION_1_5();
      sub_2173D789C(v100, v101);
      if (OUTLINED_FUNCTION_72_9() == 5)
      {
        OUTLINED_FUNCTION_3_46();
        v102 = v123;
        sub_2173D77EC(v57, v123);
        static CloudPlaylist.== infix(_:_:)();
        v93 = type metadata accessor for CloudPlaylist;
        sub_2173D7844(v102, type metadata accessor for CloudPlaylist);
        v94 = v54;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_14_23();
      v80 = v54;
      goto LABEL_39;
    case 6u:
      OUTLINED_FUNCTION_0_52();
      v103 = v128;
      sub_2173D789C(v73, v128);
      if (OUTLINED_FUNCTION_72_9() == 6)
      {
        OUTLINED_FUNCTION_2_49();
        v104 = v124;
        sub_2173D77EC(v57, v124);
        static CloudRadioShow.== infix(_:_:)(v103, v104);
        v93 = type metadata accessor for CloudRadioShow;
        sub_2173D7844(v104, type metadata accessor for CloudRadioShow);
        v94 = v103;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_21_20();
      v80 = v103;
      goto LABEL_39;
    case 7u:
      OUTLINED_FUNCTION_0_52();
      v63 = v129;
      sub_2173D789C(v73, v129);
      if (OUTLINED_FUNCTION_72_9() == 7)
      {
        OUTLINED_FUNCTION_5_38();
        v86 = v125;
        sub_2173D77EC(v57, v125);
        v95 = OUTLINED_FUNCTION_240();
        static CloudRecordLabel.== infix(_:_:)(v95, v96);
        v87 = type metadata accessor for CloudRecordLabel;
        goto LABEL_25;
      }

      v115 = type metadata accessor for CloudRecordLabel;
      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_0_52();
      v63 = v130;
      sub_2173D789C(v73, v130);
      if (OUTLINED_FUNCTION_72_9() == 8)
      {
        OUTLINED_FUNCTION_1_46();
        v86 = v126;
        sub_2173D77EC(v57, v126);
        OUTLINED_FUNCTION_240();
        static CloudSong.== infix(_:_:)();
        v87 = type metadata accessor for CloudSong;
        goto LABEL_25;
      }

      v115 = type metadata accessor for CloudSong;
      goto LABEL_38;
    case 9u:
      OUTLINED_FUNCTION_0_52();
      v63 = v131;
      sub_2173D789C(v73, v131);
      if (OUTLINED_FUNCTION_72_9() == 9)
      {
        OUTLINED_FUNCTION_8_33();
        v86 = v127;
        sub_2173D77EC(v57, v127);
        OUTLINED_FUNCTION_240();
        static CloudStation.== infix(_:_:)();
        v87 = type metadata accessor for CloudStation;
LABEL_25:
        v93 = v87;
        sub_2173D7844(v86, v87);
        v94 = v63;
        goto LABEL_26;
      }

      v115 = type metadata accessor for CloudStation;
LABEL_38:
      v79 = v115;
      v80 = v63;
      goto LABEL_39;
    case 0xAu:
      OUTLINED_FUNCTION_0_52();
      v105 = v132;
      sub_2173D789C(v73, v132);
      if (OUTLINED_FUNCTION_72_9() != 10)
      {
        sub_2171F0738(v105, &qword_27CB25890, &unk_21775D928);
        goto LABEL_40;
      }

      v106 = v57[1];
      v135 = *v57;
      *v136 = v106;
      *&v136[9] = *(v57 + 25);
      sub_2173CCF8C(v105, &v135);
      v83 = v73;
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v107, v108, v109);
      OUTLINED_FUNCTION_58_3();
      sub_2171F0738(v110, v111, v112);
LABEL_22:
      OUTLINED_FUNCTION_15_26();
      v114 = v83;
      goto LABEL_27;
    default:
      OUTLINED_FUNCTION_0_52();
      v77 = OUTLINED_FUNCTION_150_0();
      sub_2173D789C(v77, v78);
      if (OUTLINED_FUNCTION_72_9())
      {
        OUTLINED_FUNCTION_10_24();
        v80 = v69;
LABEL_39:
        sub_2173D7844(v80, v79);
LABEL_40:
        sub_2171F0738(v73, &qword_27CB270D0, &qword_217768EF0);
      }

      else
      {
        OUTLINED_FUNCTION_11_31();
        v116 = v118;
        sub_2173D77EC(v57, v118);
        static CloudAlbum.== infix(_:_:)();
        v93 = type metadata accessor for CloudAlbum;
        sub_2173D7844(v116, type metadata accessor for CloudAlbum);
        v94 = v69;
LABEL_26:
        sub_2173D7844(v94, v93);
        OUTLINED_FUNCTION_15_26();
        v114 = v73;
LABEL_27:
        sub_2173D7844(v114, v113);
      }

      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t sub_2173CCF8C(uint64_t a1, uint64_t a2)
{
  sub_21738C4B0(a1, v16, &qword_27CB25890, &unk_21775D928);
  sub_21738C4B0(a2, v18, &qword_27CB25890, &unk_21775D928);
  if (v17)
  {
    if (v19)
    {
      sub_2171F3F0C(v16, v13);
      sub_2171F3F0C(v18, v12);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = *(v4 + 32);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27220, &qword_217786D40);
      v7 = v5(v12, v6, v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v13);
      return v7 & 1;
    }

    sub_2171F3F0C(v16, v13);
    v12[0] = v18[0];
LABEL_7:
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v9 + 32))(v12, &type metadata for CatalogSearchRawResponse.TopResult.Placeholder, v8, v9);

    goto LABEL_8;
  }

  if (v19)
  {
    v12[0] = v16[0];
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if (*&v16[0] == *&v18[0] && *(&v16[0] + 1) == *(&v18[0] + 1))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_217753058();
  }

  return v7 & 1;
}

uint64_t sub_2173CD150(uint64_t a1, uint64_t a2)
{
  sub_21738C4B0(a1, __src, &qword_27CB256E8, &qword_21775D830);
  sub_21738C4B0(a2, v18, &qword_27CB256E8, &qword_21775D830);
  if ((v17 & 1) == 0)
  {
    if ((v19 & 1) == 0)
    {
      memcpy(v13, __src, sizeof(v13));
      memcpy(v12, v18, sizeof(v12));
      v7 = static CloudPlaylistEntry.Placeholder.== infix(_:_:)(v13, v12);
      memcpy(__dst, v12, sizeof(__dst));
      sub_21733BC90(__dst);
      memcpy(v15, v13, sizeof(v15));
      sub_21733BC90(v15);
      return v7 & 1;
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_2171F3F0C(v18, v13);
    goto LABEL_7;
  }

  if ((v19 & 1) == 0)
  {
    sub_2171F3F0C(__src, v13);
    memcpy(__dst, v18, sizeof(__dst));
LABEL_7:
    v9 = v13[3];
    v10 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = (*(v10 + 32))(__dst, &type metadata for CloudPlaylistEntry.Placeholder, v9, v10);
    memcpy(v15, __dst, sizeof(v15));
    sub_21733BC90(v15);
    v8 = v13;
    goto LABEL_8;
  }

  sub_2171F3F0C(__src, v15);
  sub_2171F3F0C(v18, __dst);
  v3 = v15[3];
  v4 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  OUTLINED_FUNCTION_98();
  v5 = *&__src[32];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27220, &qword_217786D40);
  v7 = v5(__dst, v6, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v8 = v15;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v7 & 1;
}

void CatalogSearchRawResponse.TopResult.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v189 = v4;
  type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v184 = v6;
  v7 = OUTLINED_FUNCTION_206();
  v186 = type metadata accessor for CloudSong(v7);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v187 = v9;
  v10 = OUTLINED_FUNCTION_206();
  v185 = type metadata accessor for CloudRecordLabel(v10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_81();
  v12 = OUTLINED_FUNCTION_206();
  v188 = type metadata accessor for CloudRadioShow(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v15 = OUTLINED_FUNCTION_55_9(v14);
  type metadata accessor for CloudPlaylist(v15);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v180 = type metadata accessor for CloudMusicVideo(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v21 = OUTLINED_FUNCTION_91_8();
  v179 = type metadata accessor for CloudGenre(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v182 = v23;
  v24 = OUTLINED_FUNCTION_206();
  v181 = type metadata accessor for CloudCurator(v24);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_81();
  v183 = v26;
  v27 = OUTLINED_FUNCTION_206();
  v28 = type metadata accessor for CloudArtist(v27);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v30 = OUTLINED_FUNCTION_31_12();
  v31 = type metadata accessor for CloudAlbum(v30);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = OUTLINED_FUNCTION_60_0();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v33);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v0);
  OUTLINED_FUNCTION_153();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v45 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v45, v46);
      OUTLINED_FUNCTION_137_5();
      sub_217751FF8();
      CloudArtist.Attributes.hash(into:)();
      sub_217264ADC(v1);
      sub_21738C4B0(v3 + *(v28 + 28), &v194, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v149 = OUTLINED_FUNCTION_100_8();
        memcpy(v149, v150, 0x580uLL);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_168_4();
        CloudArtist.Associations.hash(into:)();
        sub_21728463C(v192);
      }

      v151 = *(v3 + *(v28 + 32));
      if (v151 == 1 || (OUTLINED_FUNCTION_89(), !v151))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        v152 = OUTLINED_FUNCTION_240();
        sub_21727DDE0(v152, v153, v154, v155, v156, v157, v158);
      }

      OUTLINED_FUNCTION_12_22();
      v42 = v3;
      goto LABEL_69;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v2 = v183;
      sub_2173D77EC(v0, v183);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      OUTLINED_FUNCTION_109_7();
      CloudCurator.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB24498, &unk_217758960, *(v181 + 24));
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v72 = OUTLINED_FUNCTION_100_8();
        memcpy(v72, v73, 0x80uLL);
        OUTLINED_FUNCTION_89();
        sub_21738C4B0(v192, v191, &qword_27CB242C0, &unk_21775D650);
        if (v191[2])
        {
          memcpy(v190, v191, sizeof(v190));
          OUTLINED_FUNCTION_89();
          sub_2172DE724(v1);
          sub_2171F0738(v190, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_97_6();
        }

        sub_2172831A8(v192);
      }

      OUTLINED_FUNCTION_81_9();
      OUTLINED_FUNCTION_136_7();
      if (v38 || (OUTLINED_FUNCTION_89(), !v181))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        v165 = OUTLINED_FUNCTION_240();
        sub_21727DDE0(v165, v166, v167, v168, v169, v170, v171);
      }

      v91 = type metadata accessor for CloudCurator;
      goto LABEL_68;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v2 = v182;
      sub_2173D77EC(v0, v182);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      OUTLINED_FUNCTION_109_7();
      CloudGenre.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB24AA0, &qword_21775D8F0, *(v179 + 24));
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v74 = OUTLINED_FUNCTION_100_8();
        memcpy(v74, v75, 0x80uLL);
        OUTLINED_FUNCTION_89();
        v76 = OUTLINED_FUNCTION_168_4();
        sub_21726473C(v76, v77, v78, v79, v80, v81, v82, v83);
        sub_217284594(v192);
      }

      OUTLINED_FUNCTION_81_9();
      OUTLINED_FUNCTION_136_7();
      if (v38 || (OUTLINED_FUNCTION_89(), !v179))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        v84 = OUTLINED_FUNCTION_240();
        sub_21727DDE0(v84, v85, v86, v87, v88, v89, v90);
      }

      v91 = type metadata accessor for CloudGenre;
      goto LABEL_68;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v39 = OUTLINED_FUNCTION_154();
      sub_2173D77EC(v39, v40);
      MEMORY[0x21CEA3550](4);
      sub_217751FF8();
      CloudMusicVideo.Attributes.hash(into:)();
      sub_217264574(v189);
      sub_21738C4B0(v1 + *(v180 + 28), &v194, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        sub_217753208();
      }

      else
      {
        v55 = OUTLINED_FUNCTION_100_8();
        memcpy(v55, v56, 0x100uLL);
        sub_217753208();
        sub_217264414(v189, v57, v58, v59, v60, v61, v62, v63);
        sub_217264414(v189, v64, v65, v66, v67, v68, v69, v70);
        sub_2172844EC(v192);
      }

      sub_217264490(v189, *(v1 + *(v180 + 32)), *(v1 + *(v180 + 32) + 8), *(v1 + *(v180 + 32) + 16), *(v1 + *(v180 + 32) + 24));
      v71 = type metadata accessor for CloudMusicVideo;
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v0, v19);
      OUTLINED_FUNCTION_137_5();
      sub_217751FF8();
      OUTLINED_FUNCTION_170_3();
      CloudPlaylist.Attributes.hash(into:)();
      v47 = OUTLINED_FUNCTION_170_3();
      sub_217264C3C(v47);
      v48 = OUTLINED_FUNCTION_170_3();
      sub_21726492C(v48);
      v49 = OUTLINED_FUNCTION_170_3();
      sub_2172647B8(v49);
      OUTLINED_FUNCTION_14_23();
      v42 = v19;
      goto LABEL_69;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v50 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v50, v51);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      OUTLINED_FUNCTION_109_7();
      CloudRadioShow.Attributes.hash(into:)();
      OUTLINED_FUNCTION_158_4(&qword_27CB25640, &qword_217764750, *(v188 + 24));
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v159 = OUTLINED_FUNCTION_100_8();
        memcpy(v159, v160, 0x80uLL);
        OUTLINED_FUNCTION_89();
        sub_21738C4B0(v192, v191, &qword_27CB242C0, &unk_21775D650);
        if (v191[2])
        {
          memcpy(v190, v191, sizeof(v190));
          OUTLINED_FUNCTION_89();
          sub_2172DE724(v1);
          sub_2171F0738(v190, &qword_27CB242C8, &unk_217758970);
        }

        else
        {
          OUTLINED_FUNCTION_97_6();
        }

        sub_21733BB04(v192);
      }

      OUTLINED_FUNCTION_81_9();
      OUTLINED_FUNCTION_136_7();
      if (v38 || (OUTLINED_FUNCTION_89(), !v188))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        v172 = OUTLINED_FUNCTION_240();
        sub_21727DDE0(v172, v173, v174, v175, v176, v177, v178);
      }

      v91 = type metadata accessor for CloudRadioShow;
      goto LABEL_68;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v43 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v43, v44);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      OUTLINED_FUNCTION_109_7();
      CloudRecordLabel.Attributes.hash(into:)();
      OUTLINED_FUNCTION_81_9();
      OUTLINED_FUNCTION_158_4(&qword_27CB24A98, &unk_217759060, *(v185 + 28));
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v92 = OUTLINED_FUNCTION_100_8();
        memcpy(v92, v93, 0x100uLL);
        OUTLINED_FUNCTION_89();
        v94 = OUTLINED_FUNCTION_168_4();
        sub_2172640D4(v94, v95, v96, v97, v98, v99, v100, v101);
        sub_2172640D4(v1, v102, v103, v104, v105, v106, v107, v108);
        sub_217284540(v192);
      }

      v109 = *(v2 + *(v185 + 32));
      if (v109 == 1 || (OUTLINED_FUNCTION_89(), !v109))
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        OUTLINED_FUNCTION_89();
        v110 = OUTLINED_FUNCTION_240();
        sub_21727DDE0(v110, v111, v112, v113, v114, v115, v116);
      }

      v91 = type metadata accessor for CloudRecordLabel;
      goto LABEL_68;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v1 = v187;
      sub_2173D77EC(v0, v187);
      MEMORY[0x21CEA3550](8);
      sub_217751FF8();
      CloudSong.Attributes.hash(into:)();
      sub_21738C4B0(v187 + *(v186 + 24), &v194, &qword_27CB24A78, &qword_217759040);
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        sub_217753208();
      }

      else
      {
        v161 = OUTLINED_FUNCTION_100_8();
        memcpy(v161, v162, 0x600uLL);
        sub_217753208();
        CloudSong.Relationships.hash(into:)();
        sub_217284234(v192);
      }

      sub_217753208();
      v163 = v187 + *(v186 + 32);
      v164 = *(v163 + 16);
      v194 = *v163;
      v195[0] = v164;
      *&v195[1] = *(v163 + 32);
      sub_217263F54();
      v71 = type metadata accessor for CloudSong;
LABEL_53:
      v41 = v71;
      v42 = v1;
      goto LABEL_69;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      sub_2173D77EC(v0, v184);
      OUTLINED_FUNCTION_137_5();
      sub_217751FF8();
      CloudStation.Attributes.hash(into:)();
      sub_217753208();
      sub_217753208();
      sub_217263DE0(v1);
      OUTLINED_FUNCTION_37_14();
      v42 = v184;
      goto LABEL_69;
    case 0xAu:
      v52 = v0[1];
      v194 = *v0;
      v195[0] = v52;
      *(v195 + 9) = *(v0 + 25);
      MEMORY[0x21CEA3550](10);
      sub_21738C4B0(&v194, v192, &qword_27CB25890, &unk_21775D928);
      if (v193)
      {
        sub_2171F3F0C(v192, v191);
        v53 = v191[3];
        v54 = v191[4];
        __swift_project_boxed_opaque_existential_1(v191, v191[3]);
        (*(v54 + 40))(v189, v53, v54);
        sub_2171F0738(&v194, &qword_27CB25890, &unk_21775D928);
        __swift_destroy_boxed_opaque_existential_1(v191);
      }

      else
      {
        sub_217751DE8();
        sub_217751FF8();
        swift_bridgeObjectRelease_n();
        sub_2171F0738(&v194, &qword_27CB25890, &unk_21775D928);
      }

      goto LABEL_70;
    default:
      OUTLINED_FUNCTION_11_31();
      v35 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v35, v36);
      OUTLINED_FUNCTION_137_5();
      OUTLINED_FUNCTION_159_6();
      OUTLINED_FUNCTION_109_7();
      CloudAlbum.Attributes.hash(into:)();
      v37 = OUTLINED_FUNCTION_109_7();
      sub_21726504C(v37);
      OUTLINED_FUNCTION_158_4(&qword_27CB24AA8, &qword_217759080, *(v31 + 28));
      OUTLINED_FUNCTION_95_9();
      if (v38)
      {
        OUTLINED_FUNCTION_97_6();
      }

      else
      {
        v117 = OUTLINED_FUNCTION_100_8();
        memcpy(v117, v118, 0x200uLL);
        OUTLINED_FUNCTION_89();
        v119 = OUTLINED_FUNCTION_168_4();
        sub_21726473C(v119, v120, v121, v122, v123, v124, v125, v126);
        sub_2172640D4(v1, v127, v128, v129, v130, v131, v132, v133);
        sub_2172640D4(v1, v134, v135, v136, v137, v138, v139, v140);
        sub_217264414(v1, v141, v142, v143, v144, v145, v146, v147);
        sub_2172845E8(v192);
      }

      v148 = OUTLINED_FUNCTION_109_7();
      sub_217264150(v148);
      v91 = type metadata accessor for CloudAlbum;
LABEL_68:
      v41 = v91;
      v42 = v2;
LABEL_69:
      sub_2173D7844(v42, v41);
LABEL_70:
      OUTLINED_FUNCTION_13();
      return;
  }
}

uint64_t CatalogSearchRawResponse.TopResult.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2173CDF88(uint64_t a1)
{
  sub_2177531E8();
  CatalogSearchRawResponse.TopResult.hash(into:)();
  return sub_217753238();
}

void CatalogSearchRawResponse.TopResult.decodeRawAttributes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v27;
  a20 = v28;
  a10 = v21;
  v144 = v29;
  v30 = type metadata accessor for CloudStation.Attributes(0);
  v31 = OUTLINED_FUNCTION_45_0(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_81();
  v142 = v32;
  v33 = OUTLINED_FUNCTION_206();
  v141 = type metadata accessor for CloudStation(v33);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_81();
  v143 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v37 = type metadata accessor for CloudSong.Attributes(v36);
  v38 = OUTLINED_FUNCTION_45_0(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_81();
  v139 = v39;
  v40 = OUTLINED_FUNCTION_206();
  v138 = type metadata accessor for CloudSong(v40);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_81();
  v140 = v42;
  v43 = OUTLINED_FUNCTION_206();
  v44 = type metadata accessor for CloudRecordLabel.Attributes(v43);
  v45 = OUTLINED_FUNCTION_45_0(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_81();
  v136 = v46;
  v47 = OUTLINED_FUNCTION_206();
  v135 = type metadata accessor for CloudRecordLabel(v47);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_81();
  v137 = v49;
  v50 = OUTLINED_FUNCTION_206();
  v51 = type metadata accessor for CloudRadioShow.Attributes(v50);
  v52 = OUTLINED_FUNCTION_45_0(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_81();
  v133 = v53;
  v54 = OUTLINED_FUNCTION_206();
  v132 = type metadata accessor for CloudRadioShow(v54);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_81();
  v134 = v56;
  v57 = OUTLINED_FUNCTION_206();
  v58 = type metadata accessor for CloudPlaylist.Attributes(v57);
  v59 = OUTLINED_FUNCTION_45_0(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_81();
  v61 = OUTLINED_FUNCTION_44_11(v60);
  v62 = type metadata accessor for CloudPlaylist(v61);
  v63 = OUTLINED_FUNCTION_27_22(v62, &a16);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_81();
  v65 = OUTLINED_FUNCTION_44_11(v64);
  v66 = type metadata accessor for CloudMusicVideo.Attributes(v65);
  v67 = OUTLINED_FUNCTION_45_0(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_81();
  v69 = OUTLINED_FUNCTION_44_11(v68);
  v70 = type metadata accessor for CloudMusicVideo(v69);
  v71 = OUTLINED_FUNCTION_27_22(v70, &a13);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_81();
  v73 = OUTLINED_FUNCTION_44_11(v72);
  v74 = type metadata accessor for CloudGenre.Attributes(v73);
  v75 = OUTLINED_FUNCTION_45_0(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_81();
  v77 = OUTLINED_FUNCTION_44_11(v76);
  v78 = type metadata accessor for CloudGenre(v77);
  v79 = OUTLINED_FUNCTION_27_22(v78, &a10);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_81();
  v81 = OUTLINED_FUNCTION_44_11(v80);
  v82 = type metadata accessor for CloudCurator.Attributes(v81);
  v83 = OUTLINED_FUNCTION_45_0(v82);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_81();
  v85 = OUTLINED_FUNCTION_44_11(v84);
  v86 = type metadata accessor for CloudCurator(v85);
  v87 = OUTLINED_FUNCTION_27_22(v86, &v146);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_1();
  v88 = OUTLINED_FUNCTION_37_10();
  v89 = type metadata accessor for CloudArtist.Attributes(v88);
  v90 = OUTLINED_FUNCTION_45_0(v89);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_1();
  v91 = OUTLINED_FUNCTION_71_0();
  v92 = type metadata accessor for CloudArtist(v91);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_1();
  v94 = OUTLINED_FUNCTION_91_8();
  v95 = type metadata accessor for CloudAlbum.Attributes(v94);
  v96 = OUTLINED_FUNCTION_45_0(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_1();
  v97 = OUTLINED_FUNCTION_69();
  v98 = type metadata accessor for CloudAlbum(v97);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_1();
  v100 = OUTLINED_FUNCTION_60_0();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v100);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v20, v20);
  OUTLINED_FUNCTION_150_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v120 = OUTLINED_FUNCTION_154();
      sub_2173D77EC(v120, v121);
      OUTLINED_FUNCTION_129_6();
      v122 = OUTLINED_FUNCTION_97_8(*(v92 + 20));
      sub_2173D789C(v122, v25);
      sub_217385F04();
      OUTLINED_FUNCTION_41_13();
      goto LABEL_9;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v111 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v111, v112);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6();
      OUTLINED_FUNCTION_175_4(v26 + v113, &a9);
      v114 = OUTLINED_FUNCTION_54_11();
      sub_2173859E0(v114);
      OUTLINED_FUNCTION_16_28();
      v105 = v26;
      goto LABEL_10;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v22 = v129;
      sub_2173D77EC(v20, v129);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6();
      v116 = OUTLINED_FUNCTION_97_8(v115);
      OUTLINED_FUNCTION_175_4(v116, &a12);
      v117 = OUTLINED_FUNCTION_54_11();
      sub_217385A68(v117);
      OUTLINED_FUNCTION_40_15();
LABEL_9:
      v104 = v118;
      v105 = v22;
      goto LABEL_10;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v106 = v130;
      sub_2173D77EC(v20, v130);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6();
      v108 = OUTLINED_FUNCTION_97_8(v107);
      OUTLINED_FUNCTION_175_4(v108, &a14);
      OUTLINED_FUNCTION_54_11();
      sub_21738598C();
      v109 = type metadata accessor for CloudMusicVideo;
      goto LABEL_15;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v106 = v131;
      sub_2173D77EC(v20, v131);
      OUTLINED_FUNCTION_129_6();
      OUTLINED_FUNCTION_78_6();
      v124 = OUTLINED_FUNCTION_97_8(v123);
      OUTLINED_FUNCTION_175_4(v124, &a17);
      v125 = OUTLINED_FUNCTION_54_11();
      sub_217385674(v125);
      v109 = type metadata accessor for CloudPlaylist;
      goto LABEL_15;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v106 = v134;
      sub_2173D77EC(v20, v134);
      OUTLINED_FUNCTION_129_6();
      v126 = OUTLINED_FUNCTION_97_8(*(v132 + 20));
      sub_2173D789C(v126, v133);
      v127 = OUTLINED_FUNCTION_54_11();
      sub_217385A24(v127);
      v109 = type metadata accessor for CloudRadioShow;
      goto LABEL_15;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v106 = v137;
      sub_2173D77EC(v20, v137);
      OUTLINED_FUNCTION_129_6();
      v119 = OUTLINED_FUNCTION_97_8(*(v135 + 20));
      sub_2173D789C(v119, v136);
      OUTLINED_FUNCTION_54_11();
      sub_217385F58();
      v109 = type metadata accessor for CloudRecordLabel;
      goto LABEL_15;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v106 = v140;
      sub_2173D77EC(v20, v140);
      OUTLINED_FUNCTION_129_6();
      v128 = OUTLINED_FUNCTION_97_8(*(v138 + 20));
      sub_2173D789C(v128, v139);
      OUTLINED_FUNCTION_54_11();
      sub_217385938();
      v109 = type metadata accessor for CloudSong;
      goto LABEL_15;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v106 = v143;
      sub_2173D77EC(v20, v143);
      OUTLINED_FUNCTION_129_6();
      v110 = OUTLINED_FUNCTION_97_8(*(v141 + 20));
      sub_2173D789C(v110, v142);
      OUTLINED_FUNCTION_54_11();
      sub_2173858E4();
      v109 = type metadata accessor for CloudStation;
LABEL_15:
      sub_2173D7844(v106, v109);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_169_5();
      sub_2173CE93C(v144);
      sub_2171F0738(v145, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v102 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v102, v103);
      OUTLINED_FUNCTION_129_6();
      sub_2173D789C(v23 + *(v98 + 20), v24);
      sub_217385620(v145);
      OUTLINED_FUNCTION_10_24();
      v105 = v23;
LABEL_10:
      sub_2173D7844(v105, v104);
      break;
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173CE93C(uint64_t a1)
{
  v2 = v1;
  sub_21738C4B0(v2, v14, &qword_27CB25890, &unk_21775D928);
  if (v15)
  {
    sub_2171F3F0C(v14, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(*(v5 + 8) + 16))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v7 = sub_2171FF30C(a1, v11);
    sub_21733AD70(v7, v8, v9);
    v6 = sub_217751E58();
    sub_2171F0738(v14, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173CEA64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21738C4B0(v2, v22, &qword_27CB256E8, &qword_21775D830);
  if (v23)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19[0], v19[1], v19[2], v20, v21, v22[0]);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_133_8();
    v12 = OUTLINED_FUNCTION_87_10();
    v13(v12);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = sub_2171FF30C(a1, v19);
    sub_21733AD70(v14, v15, v16);
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v22, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v174 = OUTLINED_FUNCTION_173_6(v14);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_81();
  v177 = v16;
  v17 = OUTLINED_FUNCTION_206();
  v171 = type metadata accessor for CloudSong(v17);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_81();
  v20 = OUTLINED_FUNCTION_55_9(v19);
  v169 = type metadata accessor for CloudRecordLabel(v20);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_81();
  v175 = v22;
  v23 = OUTLINED_FUNCTION_206();
  v168 = type metadata accessor for CloudRadioShow(v23);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_81();
  v173 = v25;
  v26 = OUTLINED_FUNCTION_206();
  v166 = type metadata accessor for CloudPlaylist(v26);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_81();
  v172 = v28;
  v29 = OUTLINED_FUNCTION_206();
  *(&v164 + 1) = type metadata accessor for CloudMusicVideo(v29);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_81();
  v170 = v31;
  v32 = OUTLINED_FUNCTION_206();
  v33 = type metadata accessor for CloudGenre(v32);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_81();
  v167 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v37 = type metadata accessor for CloudCurator(v36);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_81();
  v165 = v39;
  v40 = OUTLINED_FUNCTION_206();
  v41 = type metadata accessor for CloudArtist(v40);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v43 = OUTLINED_FUNCTION_60_0();
  v44 = type metadata accessor for CloudAlbum(v43);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v46 = OUTLINED_FUNCTION_69();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v46);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_28_19();
  v179 = sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v58 = OUTLINED_FUNCTION_1_5();
      sub_2173D77EC(v58, v59);
      OUTLINED_FUNCTION_119_8(&qword_27CB24328, &unk_21775D440, *(v41 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v48)
      {

        sub_2171F0738(v181, &qword_27CB24328, &unk_21775D440);
        OUTLINED_FUNCTION_114_5();
        sub_2173839CC(&unk_28295B7B0);
        v132 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v132, v133, v134, v135, v136, v137, v138);
        OUTLINED_FUNCTION_41_13();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v12, v60);
      v50 = &qword_27CB24328;
      v51 = &unk_21775D440;
      goto LABEL_32;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v12 = v165;
      sub_2173D77EC(v10, v165);
      OUTLINED_FUNCTION_119_8(&qword_27CB24498, &unk_217758960, *(v37 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v48)
      {

        sub_2171F0738(v181, &qword_27CB24498, &unk_217758960);
        OUTLINED_FUNCTION_114_5();
        sub_217383864();
        v92 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v92, v93, v94, v95, v96, v97, v98);
        OUTLINED_FUNCTION_39_10();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v165, v54);
      v50 = &qword_27CB24498;
      v51 = &unk_217758960;
      goto LABEL_32;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v12 = v167;
      sub_2173D77EC(v10, v167);
      OUTLINED_FUNCTION_119_8(&qword_27CB24AA0, &qword_21775D8F0, *(v33 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v48)
      {

        sub_2171F0738(v181, &qword_27CB24AA0, &qword_21775D8F0);
        OUTLINED_FUNCTION_114_5();
        sub_2173838A4(&unk_28295EEB8, v99, v100);
        v101 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v101, v102, v103, v104, v105, v106, v107);
        OUTLINED_FUNCTION_40_15();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_17_17();
      sub_2173D7844(v167, v55);
      v50 = &qword_27CB24AA0;
      v51 = &qword_21775D8F0;
      goto LABEL_32;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v12 = v170;
      sub_2173D77EC(v10, v170);
      OUTLINED_FUNCTION_119_8(&qword_27CB243A8, &unk_217777720, *(*(&v164 + 1) + 24));
      OUTLINED_FUNCTION_65_11();
      if (v48)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v170, v52);
        v50 = &qword_27CB243A8;
        v51 = &unk_217777720;
        goto LABEL_32;
      }

      sub_2171F0738(v181, &qword_27CB243A8, &unk_217777720);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v67 = OUTLINED_FUNCTION_177_4();
      sub_217383844(v67);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6(v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_75_7();
      v75 = type metadata accessor for CloudMusicVideo;
LABEL_41:
      v130 = v75;
      v131 = v12;
      goto LABEL_42;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v12 = v172;
      sub_2173D77EC(v10, v172);
      OUTLINED_FUNCTION_119_8(&qword_27CB24358, &unk_21775D510, *(v166 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v48)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v172, v61);
        v50 = &qword_27CB24358;
        v51 = &unk_21775D510;
        goto LABEL_32;
      }

      sub_2171F0738(v181, &qword_27CB24358, &unk_21775D510);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v139 = OUTLINED_FUNCTION_177_4();
      sub_217383728(v139);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6(v140, v141, v142, v143, v144, v145, v146);
      if (v11)
      {
        v91 = type metadata accessor for CloudPlaylist;
      }

      else
      {
        OUTLINED_FUNCTION_47_11();
      }

      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v12 = v173;
      sub_2173D77EC(v10, v173);
      OUTLINED_FUNCTION_119_8(&qword_27CB25640, &qword_217764750, *(v168 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v48)
      {
        OUTLINED_FUNCTION_21_20();
        sub_2173D7844(v173, v62);
        v50 = &qword_27CB25640;
        v51 = &qword_217764750;
        goto LABEL_32;
      }

      sub_2171F0738(v181, &qword_27CB25640, &qword_217764750);
      OUTLINED_FUNCTION_114_5();
      sub_217383884(&unk_28295EF58, v147, v148);
      v149 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v149, v150, v151, v152, v153, v154, v155);
      if (v180)
      {
        v91 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        OUTLINED_FUNCTION_46_16();
      }

      goto LABEL_49;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v56 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v56, v57);
      if (*(v12 + *(v169 + 24)))
      {
        v53 = type metadata accessor for CloudRecordLabel;
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_114_5();
      v115 = v180;
      if (qword_27CB23D88 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2B198, v108, v109, v110, v111, v112, v113, v114, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
      v116 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v116, v117, v118, v119, v120, v121, v122);
      if (v115)
      {
        v91 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_49;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v64 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v64, v65);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A78, &qword_217759040, *(v171 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v48)
      {
        OUTLINED_FUNCTION_48_12();
        sub_2173D7844(v12, v66);
        v50 = &qword_27CB24A78;
        v51 = &qword_217759040;
        goto LABEL_32;
      }

      sub_2171F0738(v181, &qword_27CB24A78, &qword_217759040);
      OUTLINED_FUNCTION_114_5();
      OUTLINED_FUNCTION_84();
      v156 = OUTLINED_FUNCTION_177_4();
      sub_217383824(v156);
      OUTLINED_FUNCTION_174_4();
      OUTLINED_FUNCTION_127_6(v157, v158, v159, v160, v161, v162, v163);
      if (v11)
      {
        v91 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_49;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v12 = v177;
      sub_2173D77EC(v10, v177);
      if (*(v177 + *(v174 + 24)))
      {
        v53 = type metadata accessor for CloudStation;
LABEL_18:
        sub_2173D7844(v12, v53);
      }

      else
      {

        OUTLINED_FUNCTION_114_5();
        if (qword_280BE4D60 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_84();
        v76 = OUTLINED_FUNCTION_177_4();
        sub_217383748(v76, v77, v78, v79, v80, v81, v82, v83, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
        OUTLINED_FUNCTION_174_4();
        OUTLINED_FUNCTION_127_6(v84, v85, v86, v87, v88, v89, v90);
        if (v11)
        {
          v91 = type metadata accessor for CloudStation;
        }

        else
        {
          OUTLINED_FUNCTION_34_16();
        }

LABEL_49:
        sub_2173D7844(v12, v91);
      }

LABEL_50:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
    case 0xAu:

      v63 = OUTLINED_FUNCTION_113_8();
      sub_2173CF590(v63);
      sub_2171F0738(v181, &qword_27CB25890, &unk_21775D928);
      goto LABEL_50;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v10, v13);
      sub_21738C4B0(v13 + *(v44 + 24), v181, &qword_27CB243C8, &unk_21775D390);
      OUTLINED_FUNCTION_65_11();
      if (v48)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v13, v49);
        v50 = &qword_27CB243C8;
        v51 = &unk_21775D390;
LABEL_32:
        sub_2171F0738(v181, v50, v51);
      }

      else
      {

        sub_2171F0738(v181, &qword_27CB243C8, &unk_21775D390);
        OUTLINED_FUNCTION_114_5();
        sub_217383708(&unk_28295E588);
        v123 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v123, v124, v125, v126, v127, v128, v129);
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v131 = v13;
LABEL_42:
        sub_2173D7844(v131, v130);
      }

      goto LABEL_50;
  }
}

uint64_t sub_2173CF590(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  sub_21738C4B0(v2, v14, &qword_27CB25890, &unk_21775D928);
  if (v15)
  {
    sub_2171F3F0C(v14, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(*(v5 + 8) + 24))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v7 = sub_2171FF30C(a1, v11);
    sub_21733AD70(v7, v8, v9);
    v6 = sub_217751E58();
    sub_2171F0738(v14, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173CF6E0(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  v4 = sub_21738C4B0(v2, v22, &qword_27CB256E8, &qword_21775D830);
  if (v23)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19[0], v19[1], v19[2], v20, v21, v22[0]);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_133_8();
    v12 = OUTLINED_FUNCTION_87_10();
    v13(v12);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = sub_2171FF30C(a1, v19);
    sub_21733AD70(v14, v15, v16);
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v22, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v191 = OUTLINED_FUNCTION_173_6(v13);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v194 = v15;
  v16 = OUTLINED_FUNCTION_206();
  v189 = type metadata accessor for CloudSong(v16);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v19 = OUTLINED_FUNCTION_55_9(v18);
  v187 = type metadata accessor for CloudRecordLabel(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  v192 = v21;
  v22 = OUTLINED_FUNCTION_206();
  v185 = type metadata accessor for CloudRadioShow(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_81();
  v190 = v24;
  v25 = OUTLINED_FUNCTION_206();
  v183 = type metadata accessor for CloudPlaylist(v25);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_81();
  v188 = v27;
  v28 = OUTLINED_FUNCTION_206();
  *(&v181 + 1) = type metadata accessor for CloudMusicVideo(v28);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_81();
  v186 = v30;
  v31 = OUTLINED_FUNCTION_206();
  v32 = type metadata accessor for CloudGenre(v31);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_81();
  v184 = v34;
  v35 = OUTLINED_FUNCTION_206();
  v36 = type metadata accessor for CloudCurator(v35);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  v182 = v38;
  v39 = OUTLINED_FUNCTION_206();
  v40 = type metadata accessor for CloudArtist(v39);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v42 = OUTLINED_FUNCTION_69();
  v43 = type metadata accessor for CloudAlbum(v42);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v45 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v45);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_28_19();
  v196 = sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v10, v11);
      sub_21738C4B0(v11 + *(v40 + 28), v198, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_65_11();
      if (!v49)
      {

        sub_2171F0738(v198, &qword_27CB24AB0, &qword_217759088);
        OUTLINED_FUNCTION_114_5();
        sub_217383A4C(&unk_28295B7D8);
        v136 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v136, v137, v138, v139, v140, v141, v142);
        OUTLINED_FUNCTION_41_13();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v11, v61);
      v51 = &qword_27CB24AB0;
      v52 = &qword_217759088;
      goto LABEL_23;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v32 = v182;
      sub_2173D77EC(v10, v182);
      if (*(v182 + *(v36 + 28)))
      {
        v55 = type metadata accessor for CloudCurator;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      if (qword_27CB23D28 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2A830, v92, v93, v94, v95, v96, v97, v98, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      v99 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v99, v100, v101, v102, v103, v104, v105);
      OUTLINED_FUNCTION_39_10();
      goto LABEL_38;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v11 = v184;
      sub_2173D77EC(v10, v184);
      if (*(v184 + *(v32 + 28)))
      {
        OUTLINED_FUNCTION_17_17();
        v57 = v184;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_114_5();
      if (qword_27CB23D60 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2AA78, v106, v107, v108, v109, v110, v111, v112, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      v113 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v113, v114, v115, v116, v117, v118, v119);
      OUTLINED_FUNCTION_40_15();
LABEL_44:
      v134 = v143;
      v135 = v11;
      goto LABEL_45;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v32 = v186;
      sub_2173D77EC(v10, v186);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A90, &unk_21775D5B0, *(*(&v181 + 1) + 28));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v186, v53);
        v51 = &qword_27CB24A90;
        v52 = &unk_21775D5B0;
        goto LABEL_23;
      }

      sub_2171F0738(v198, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_114_5();
      sub_217383A2C(&unk_28295F000);
      v68 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v68, v69, v70, v71, v72, v73, v74);
      OUTLINED_FUNCTION_75_7();
      v75 = type metadata accessor for CloudMusicVideo;
LABEL_38:
      v134 = v75;
      v135 = v32;
      goto LABEL_45;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v32 = v188;
      sub_2173D77EC(v10, v188);
      OUTLINED_FUNCTION_119_8(&qword_27CB24350, &unk_21776A5D0, *(v183 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v188, v62);
        v51 = &qword_27CB24350;
        v52 = &unk_21776A5D0;
        goto LABEL_23;
      }

      sub_2171F0738(v198, &qword_27CB24350, &unk_21776A5D0);
      OUTLINED_FUNCTION_114_5();
      sub_217383A0C(&unk_28295F028);
      v144 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v144, v145, v146, v147, v148, v149, v150);
      if (v197)
      {
        v91 = type metadata accessor for CloudPlaylist;
      }

      else
      {
        OUTLINED_FUNCTION_47_11();
      }

      goto LABEL_56;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v32 = v190;
      sub_2173D77EC(v10, v190);
      OUTLINED_FUNCTION_126_8();
      if (v63)
      {
        v55 = type metadata accessor for CloudRadioShow;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      v158 = v197;
      if (qword_27CB23D50 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2A978, v151, v152, v153, v154, v155, v156, v157, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      v159 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v159, v160, v161, v162, v163, v164, v165);
      if (v158)
      {
        v91 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        OUTLINED_FUNCTION_46_16();
      }

      goto LABEL_56;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v58 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v58, v59);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A98, &unk_217759060, *(v187 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_36_15();
        sub_2173D7844(v32, v60);
        v51 = &qword_27CB24A98;
        v52 = &unk_217759060;
        goto LABEL_23;
      }

      sub_2171F0738(v198, &qword_27CB24A98, &unk_217759060);
      OUTLINED_FUNCTION_114_5();
      sub_217383A6C(&unk_28295F050);
      v120 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v120, v121, v122, v123, v124, v125, v126);
      if (v197)
      {
        v91 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_56;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v65 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v65, v66);
      OUTLINED_FUNCTION_126_8();
      if (v67)
      {
        v55 = type metadata accessor for CloudSong;
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_114_5();
      v173 = v197;
      if (qword_27CB23E08 != -1)
      {
        swift_once();
      }

      sub_217383748(qword_27CB2C158, v166, v167, v168, v169, v170, v171, v172, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
      v174 = OUTLINED_FUNCTION_68_10();
      Dictionary<>.init(from:skippingValuesFor:)(v174, v175, v176, v177, v178, v179, v180);
      if (v173)
      {
        v91 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_56;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v32 = v194;
      sub_2173D77EC(v10, v194);
      OUTLINED_FUNCTION_126_8();
      if (v54)
      {
        v55 = type metadata accessor for CloudStation;
LABEL_29:
        v56 = v55;
        v57 = v32;
LABEL_30:
        sub_2173D7844(v57, v56);
      }

      else
      {

        OUTLINED_FUNCTION_114_5();
        v83 = v197;
        if (qword_27CB23E58 != -1)
        {
          swift_once();
        }

        sub_217383748(qword_27CB2C988, v76, v77, v78, v79, v80, v81, v82, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
        v84 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v84, v85, v86, v87, v88, v89, v90);
        if (v83)
        {
          v91 = type metadata accessor for CloudStation;
        }

        else
        {
          OUTLINED_FUNCTION_34_16();
        }

LABEL_56:
        sub_2173D7844(v32, v91);
      }

LABEL_57:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
    case 0xAu:

      v64 = OUTLINED_FUNCTION_113_8();
      sub_2173D0218(v64);
      sub_2171F0738(v198, &qword_27CB25890, &unk_21775D928);
      goto LABEL_57;
    default:
      OUTLINED_FUNCTION_11_31();
      v47 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v47, v48);
      sub_21738C4B0(v12 + *(v43 + 28), v198, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v12, v50);
        v51 = &qword_27CB24AA8;
        v52 = &qword_217759080;
LABEL_23:
        sub_2171F0738(v198, v51, v52);
      }

      else
      {

        sub_2171F0738(v198, &qword_27CB24AA8, &qword_217759080);
        OUTLINED_FUNCTION_114_5();
        sub_2173839EC(&unk_28295E650);
        v127 = OUTLINED_FUNCTION_68_10();
        Dictionary<>.init(from:skippingValuesFor:)(v127, v128, v129, v130, v131, v132, v133);
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v135 = v12;
LABEL_45:
        sub_2173D7844(v135, v134);
      }

      goto LABEL_57;
  }
}

uint64_t sub_2173D0218(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  sub_21738C4B0(v2, v14, &qword_27CB25890, &unk_21775D928);
  if (v15)
  {
    sub_2171F3F0C(v14, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = (*(*(v5 + 8) + 32))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v7 = sub_2171FF30C(a1, v11);
    sub_21733AD70(v7, v8, v9);
    v6 = sub_217751E58();
    sub_2171F0738(v14, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D0368(uint64_t a1)
{
  v2 = v1;
  sub_217751DC8();

  v4 = sub_21738C4B0(v2, v22, &qword_27CB256E8, &qword_21775D830);
  if (v23)
  {
    OUTLINED_FUNCTION_147_4(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19[0], v19[1], v19[2], v20, v21, v22[0]);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    OUTLINED_FUNCTION_133_8();
    v12 = OUTLINED_FUNCTION_87_10();
    v13(v12);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = sub_2171FF30C(a1, v19);
    sub_21733AD70(v14, v15, v16);
    sub_217751E58();
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v22, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.decodeRawMetadata(from:skippingValuesFor:)()
{
  OUTLINED_FUNCTION_171();
  v108 = v0;
  v100 = v5;
  v101 = v6;
  v96 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81();
  v99 = v8;
  v9 = OUTLINED_FUNCTION_206();
  v93 = type metadata accessor for CloudSong(v9);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_81();
  v12 = OUTLINED_FUNCTION_55_9(v11);
  type metadata accessor for CloudRecordLabel(v12);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v97 = v14;
  v15 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudRadioShow(v15);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v95 = v17;
  v18 = OUTLINED_FUNCTION_206();
  v91 = type metadata accessor for CloudPlaylist(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v94 = v20;
  v21 = OUTLINED_FUNCTION_206();
  v89 = type metadata accessor for CloudMusicVideo(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v92 = v23;
  v24 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudGenre(v24);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_81();
  v90 = v26;
  v27 = OUTLINED_FUNCTION_206();
  v28 = type metadata accessor for CloudCurator(v27);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1();
  v30 = OUTLINED_FUNCTION_71_0();
  v31 = type metadata accessor for CloudArtist(v30);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = OUTLINED_FUNCTION_60_0();
  v34 = type metadata accessor for CloudAlbum(v33);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v36 = OUTLINED_FUNCTION_61_6();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v36);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v40 = (v39 - v38);
  sub_217751DC8();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v108, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v40, v2);
      v54 = *(v31 + 32);
      if (*(v2 + v54) == 1)
      {
        v53 = type metadata accessor for CloudArtist;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v54);
      OUTLINED_FUNCTION_51_12();
      sub_2173880FC();
      OUTLINED_FUNCTION_41_13();
      goto LABEL_37;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v40, v3);
      v51 = *(v28 + 32);
      if (*(v3 + v51) == 1)
      {
        OUTLINED_FUNCTION_16_28();
        v47 = v3;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_148_4();
      v69 = *(v3 + v51);
      sub_217751DE8();
      sub_217221020(v69);
      v70 = OUTLINED_FUNCTION_51_12();
      sub_217387B08(v70);
      OUTLINED_FUNCTION_75_7();
      OUTLINED_FUNCTION_16_28();
      v64 = v3;
      goto LABEL_53;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v2 = v90;
      sub_2173D77EC(v40, v90);
      OUTLINED_FUNCTION_135_5();
      if (v52)
      {
        v53 = type metadata accessor for CloudGenre;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v31);
      OUTLINED_FUNCTION_51_12();
      sub_217387D1C();
      OUTLINED_FUNCTION_40_15();
LABEL_37:
      v63 = v71;
      v64 = v2;
      goto LABEL_53;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v40, v92);
      v45 = v92 + *(v89 + 32);
      if (*(v45 + 24) == 1)
      {
        OUTLINED_FUNCTION_13_26();
        v47 = v92;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_148_4();
      v59 = *(v45 + 16);
      v60 = *(v45 + 24);
      sub_217751DE8();
      v61 = OUTLINED_FUNCTION_154();
      sub_21733C3CC(v61, v62, v59, v60);
      OUTLINED_FUNCTION_51_12();
      sub_2173878F0();
      OUTLINED_FUNCTION_13_26();
      v64 = v92;
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v48 = v94;
      sub_2173D77EC(v40, v94);
      v55 = *(v91 + 32);
      sub_21738C4B0(v94 + v55, &v103, &qword_27CB24348, &unk_21775D520);
      if (v105 == 1)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v94, v56);
        v43 = &qword_27CB24348;
        v44 = &unk_21775D520;
        goto LABEL_20;
      }

      v79 = OUTLINED_FUNCTION_51_12();
      sub_2171F0738(v79, v80, v81);
      sub_2171FF30C(v100, v102);
      OUTLINED_FUNCTION_153_5(v94 + v55);
      sub_217751DE8();
      v82 = OUTLINED_FUNCTION_90_9();
      sub_217387380(v82, v83, v84);
      if (v101)
      {
        v68 = type metadata accessor for CloudPlaylist;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_47_11();
      goto LABEL_49;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v2 = v95;
      sub_2173D77EC(v40, v95);
      OUTLINED_FUNCTION_135_5();
      if (v52)
      {
        v53 = type metadata accessor for CloudRadioShow;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v31);
      v85 = OUTLINED_FUNCTION_51_12();
      sub_217387B30(v85);
      if (v1)
      {
        v72 = type metadata accessor for CloudRadioShow;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_46_16();
      goto LABEL_52;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v2 = v97;
      sub_2173D77EC(v40, v97);
      OUTLINED_FUNCTION_135_5();
      if (v52)
      {
        v53 = type metadata accessor for CloudRecordLabel;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_148_4();
      OUTLINED_FUNCTION_122_4();
      sub_217221020(v31);
      OUTLINED_FUNCTION_51_12();
      sub_217388124();
      if (v1)
      {
        v72 = type metadata accessor for CloudRecordLabel;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_16();
      goto LABEL_52;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v2 = v98;
      sub_2173D77EC(v40, v98);
      v58 = v98 + *(v93 + 32);
      if (*(v58 + 24) == 1)
      {
        v53 = type metadata accessor for CloudSong;
LABEL_27:
        v46 = v53;
        v47 = v2;
LABEL_28:
        sub_2173D7844(v47, v46);
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_148_4();
      v86 = *(v58 + 16);
      v106[0] = *v58;
      v106[1] = v86;
      v107 = *(v58 + 32);
      sub_217751DE8();
      sub_21738C4B0(v106, v102, &qword_27CB25748, &qword_21775D870);
      sub_217387700();
      if (v1)
      {
        v72 = type metadata accessor for CloudSong;
LABEL_45:
        v63 = v72;
        v64 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
LABEL_52:
        v63 = v88;
        v64 = v2;
      }

      goto LABEL_53;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v48 = v99;
      sub_2173D77EC(v40, v99);
      v49 = *(v96 + 32);
      sub_21738C4B0(v99 + v49, &v103, &qword_27CB24340, &unk_2177650B0);
      if (v105 == 1)
      {
        OUTLINED_FUNCTION_37_14();
        sub_2173D7844(v99, v50);
        v43 = &qword_27CB24340;
        v44 = &unk_2177650B0;
        goto LABEL_20;
      }

      v65 = OUTLINED_FUNCTION_51_12();
      sub_2171F0738(v65, v66, v67);
      sub_2171FF30C(v100, v102);
      OUTLINED_FUNCTION_153_5(v99 + v49);
      sub_217751DE8();
      OUTLINED_FUNCTION_90_9();
      sub_2173876D0();
      if (v101)
      {
        v68 = type metadata accessor for CloudStation;
LABEL_40:
        v63 = v68;
        v64 = v48;
      }

      else
      {
        OUTLINED_FUNCTION_34_16();
LABEL_49:
        v63 = v87;
        v64 = v48;
      }

      goto LABEL_53;
    case 0xAu:

      v57 = v40[1];
      v103 = *v40;
      v104[0] = v57;
      *(v104 + 9) = *(v40 + 25);
      sub_2173D0E38(v100, v101);
      sub_2171F0738(&v103, &qword_27CB25890, &unk_21775D928);
      goto LABEL_54;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v40, v4);
      v41 = *(v34 + 32);
      sub_21738C4B0(v4 + v41, &v103, &qword_27CB243C0, &unk_21775D3A0);
      if (v105 == 1)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v4, v42);
        v43 = &qword_27CB243C0;
        v44 = &unk_21775D3A0;
LABEL_20:
        sub_2171F0738(&v103, v43, v44);
      }

      else
      {

        v73 = OUTLINED_FUNCTION_51_12();
        sub_2171F0738(v73, v74, v75);
        sub_2171FF30C(v100, v102);
        OUTLINED_FUNCTION_153_5(v4 + v41);
        sub_217751DE8();
        v76 = OUTLINED_FUNCTION_90_9();
        sub_217387350(v76, v77, v78);
        OUTLINED_FUNCTION_75_7();
        OUTLINED_FUNCTION_10_24();
        v64 = v4;
LABEL_53:
        sub_2173D7844(v64, v63);
      }

LABEL_54:
      OUTLINED_FUNCTION_131();
      OUTLINED_FUNCTION_170();
      return;
  }
}

void *sub_2173D0E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_217751DC8();

  sub_21738C4B0(v3, v18, &qword_27CB25890, &unk_21775D928);
  if (v19)
  {
    sub_2171F3F0C(v18, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v8 = (*(*(v7 + 8) + 40))(a1, a2, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_2171FF30C(a1, v15);
    sub_217751DE8();
    v8 = Dictionary<>.init(from:skippingValuesFor:)(v15, a2, v9, v10, v11, v12, v13);
    sub_2171F0738(v18, &qword_27CB25890, &unk_21775D928);
  }

  return v8;
}

uint64_t sub_2173D0F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_217751DC8();

  v6 = sub_21738C4B0(v3, v26, &qword_27CB256E8, &qword_21775D830);
  if (v27)
  {
    OUTLINED_FUNCTION_147_4(v6, v7, v8, v9, v10, v11, v12, v13, v22, v23[0], v23[1], v23[2], v24, v25, v26[0]);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(*(v15 + 8) + 40))(a1, a2, v14);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_2171FF30C(a1, v23);
    sub_217751DE8();
    Dictionary<>.init(from:skippingValuesFor:)(v23, a2, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_68_2();
    sub_2171F0738(v26, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeAttributes(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_171();
  a19 = v26;
  a20 = v27;
  a10 = v21;
  v106 = v28;
  v107 = v29;
  v30 = type metadata accessor for CloudStation(0);
  v31 = OUTLINED_FUNCTION_27_22(v30, &a17);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_81();
  v33 = OUTLINED_FUNCTION_44_11(v32);
  v34 = type metadata accessor for CloudSong(v33);
  v35 = OUTLINED_FUNCTION_27_22(v34, &a15);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_81();
  v37 = OUTLINED_FUNCTION_44_11(v36);
  v38 = type metadata accessor for CloudRecordLabel(v37);
  v39 = OUTLINED_FUNCTION_27_22(v38, &a13);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_81();
  v41 = OUTLINED_FUNCTION_44_11(v40);
  v42 = type metadata accessor for CloudRadioShow(v41);
  v43 = OUTLINED_FUNCTION_27_22(v42, &a11);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_81();
  v45 = OUTLINED_FUNCTION_44_11(v44);
  v46 = type metadata accessor for CloudPlaylist(v45);
  v47 = OUTLINED_FUNCTION_27_22(v46, &a9);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_81();
  v49 = OUTLINED_FUNCTION_44_11(v48);
  v50 = type metadata accessor for CloudMusicVideo(v49);
  v51 = OUTLINED_FUNCTION_27_22(v50, &v115);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_81();
  v53 = OUTLINED_FUNCTION_44_11(v52);
  v54 = type metadata accessor for CloudGenre(v53);
  v55 = OUTLINED_FUNCTION_27_22(v54, &v114);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1();
  v56 = OUTLINED_FUNCTION_71_0();
  type metadata accessor for CloudCurator(v56);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1();
  v58 = OUTLINED_FUNCTION_61_6();
  type metadata accessor for CloudArtist(v58);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1();
  v60 = OUTLINED_FUNCTION_37_10();
  type metadata accessor for CloudAlbum(v60);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1();
  v62 = OUTLINED_FUNCTION_31_12();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v62);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_28_19();
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v20, v20);
  OUTLINED_FUNCTION_154();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v86 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v86, v87);
      OUTLINED_FUNCTION_50_10();
      sub_2173887C0(v88, v89, v90);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_12_22();
      v70 = v23;
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v79 = OUTLINED_FUNCTION_161_5();
      sub_2173D77EC(v79, v80);
      OUTLINED_FUNCTION_50_10();
      sub_2173886F4(v81);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_16_28();
      v70 = v25;
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v20, v22);
      OUTLINED_FUNCTION_78_6();
      OUTLINED_FUNCTION_50_10();
      sub_21738877C(v82);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_17_17();
      v70 = v22;
      goto LABEL_14;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      OUTLINED_FUNCTION_152_7(v20, &v116);
      v71 = OUTLINED_FUNCTION_32_18(&v115);
      sub_2173886A0(v71, v72, v73);
      OUTLINED_FUNCTION_45_1();
      v74 = type metadata accessor for CloudMusicVideo;
      goto LABEL_13;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      OUTLINED_FUNCTION_152_7(v20, &a10);
      v91 = OUTLINED_FUNCTION_32_18(&a9);
      sub_2173884CC(v91, v92, v93);
      OUTLINED_FUNCTION_45_1();
      v74 = type metadata accessor for CloudPlaylist;
      goto LABEL_13;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_152_7(v20, &a12);
      v94 = OUTLINED_FUNCTION_32_18(&a11);
      sub_217388738(v94);
      OUTLINED_FUNCTION_45_1();
      v74 = type metadata accessor for CloudRadioShow;
LABEL_13:
      v69 = v74;
      v70 = v20;
      goto LABEL_14;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_152_7(v20, &a14);
      v83 = OUTLINED_FUNCTION_32_18(&a13);
      sub_217388814(v83, v84, v85);
      if (v21)
      {
        v78 = type metadata accessor for CloudRecordLabel;
      }

      else
      {
        OUTLINED_FUNCTION_33_16();
      }

      goto LABEL_19;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      OUTLINED_FUNCTION_152_7(v20, &a16);
      v97 = OUTLINED_FUNCTION_32_18(&a15);
      sub_21738864C(v97, v98, v99);
      if (v21)
      {
        v78 = type metadata accessor for CloudSong;
      }

      else
      {
        OUTLINED_FUNCTION_35_13();
      }

      goto LABEL_19;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_152_7(v20, &a18);
      v75 = OUTLINED_FUNCTION_32_18(&a17);
      sub_2173885F8(v75, v76, v77);
      if (v21)
      {
        v78 = type metadata accessor for CloudStation;
      }

      else
      {
        OUTLINED_FUNCTION_34_16();
      }

LABEL_19:
      sub_2173D7844(v20, v78);
      break;
    case 0xAu:
      OUTLINED_FUNCTION_169_5();
      sub_21738C4B0(v113, v111, &qword_27CB25890, &unk_21775D928);
      if (v112)
      {
        sub_2171F3F0C(v111, v108);
        v95 = v109;
        v96 = v110;
        __swift_project_boxed_opaque_existential_1(v108, v109);
        (*(*(v96 + 8) + 48))(v107, v106, v95);
        sub_2171F0738(v113, &qword_27CB25890, &unk_21775D928);
        __swift_destroy_boxed_opaque_existential_1(v108);
      }

      else
      {
        OUTLINED_FUNCTION_58_3();
        sub_2171F0738(v100, v101, v102);
        sub_217751DE8();
        OUTLINED_FUNCTION_58_3();
        sub_2171F0738(v103, v104, v105);
      }

      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v64 = OUTLINED_FUNCTION_150_0();
      sub_2173D77EC(v64, v65);
      OUTLINED_FUNCTION_50_10();
      sub_217388478(v66, v67, v68);
      OUTLINED_FUNCTION_45_1();
      OUTLINED_FUNCTION_10_24();
      v70 = v24;
LABEL_14:
      sub_2173D7844(v70, v69);
      break;
  }

  OUTLINED_FUNCTION_170();
}

void CatalogSearchRawResponse.TopResult.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v13, v14);
  v16 = v15;
  v116 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v19 = OUTLINED_FUNCTION_55_9(v18);
  v114 = type metadata accessor for CloudSong(v19);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  v119 = v21;
  v22 = OUTLINED_FUNCTION_206();
  v112 = type metadata accessor for CloudRecordLabel(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_81();
  v118 = v24;
  v25 = OUTLINED_FUNCTION_206();
  v110 = type metadata accessor for CloudRadioShow(v25);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_81();
  v117 = v27;
  v28 = OUTLINED_FUNCTION_206();
  v109 = type metadata accessor for CloudPlaylist(v28);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_81();
  v115 = v30;
  v31 = OUTLINED_FUNCTION_206();
  v107 = type metadata accessor for CloudMusicVideo(v31);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_81();
  v113 = v33;
  v34 = OUTLINED_FUNCTION_206();
  v35 = type metadata accessor for CloudGenre(v34);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_81();
  v111 = v37;
  v38 = OUTLINED_FUNCTION_206();
  v39 = type metadata accessor for CloudCurator(v38);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_81();
  v108 = v41;
  v42 = OUTLINED_FUNCTION_206();
  v43 = type metadata accessor for CloudArtist(v42);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1();
  v45 = OUTLINED_FUNCTION_37_10();
  v46 = type metadata accessor for CloudAlbum(v45);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_28_19();
  type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v16 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v11, v12);
      sub_21738C4B0(v12 + *(v43 + 24), v123, &qword_27CB24328, &unk_21775D440);
      OUTLINED_FUNCTION_65_11();
      if (!v49)
      {

        v82 = OUTLINED_FUNCTION_94_6();
        memcpy(v82, v83, 0x380uLL);
        v84 = OUTLINED_FUNCTION_53_12();
        sub_217388B68(v84, v85, v86);
        OUTLINED_FUNCTION_77_7();
        sub_21726A204(&v124);
        OUTLINED_FUNCTION_12_22();
        v88 = v12;
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v12, v60);
      v51 = &qword_27CB24328;
      v52 = &unk_21775D440;
      goto LABEL_33;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v10 = v108;
      sub_2173D77EC(v11, v108);
      OUTLINED_FUNCTION_128_8(&qword_27CB24498, &unk_217758960, *(v39 + 24));
      OUTLINED_FUNCTION_65_11();
      if (!v49)
      {

        v72 = OUTLINED_FUNCTION_94_6();
        memcpy(v72, v73, 0x80uLL);
        OUTLINED_FUNCTION_53_12();
        sub_2173889F8();
        OUTLINED_FUNCTION_77_7();
        sub_2172831A8(&v124);
        v81 = type metadata accessor for CloudCurator;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v108, v57);
      v51 = &qword_27CB24498;
      v52 = &unk_217758960;
      goto LABEL_33;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v53 = v111;
      sub_2173D77EC(v11, v111);
      OUTLINED_FUNCTION_128_8(&qword_27CB24AA0, &qword_21775D8F0, *(v35 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_17_17();
        sub_2173D7844(v111, v58);
        v51 = &qword_27CB24AA0;
        v52 = &qword_21775D8F0;
        goto LABEL_33;
      }

      v74 = OUTLINED_FUNCTION_94_6();
      memcpy(v74, v75, 0x80uLL);
      OUTLINED_FUNCTION_53_12();
      sub_217388AB8();
      if (v16)
      {
        sub_217284594(&v124);
        v70 = type metadata accessor for CloudGenre;
        goto LABEL_50;
      }

      v102 = OUTLINED_FUNCTION_143_6();
      sub_217284594(v102);
      v99 = type metadata accessor for CloudGenre;
      goto LABEL_61;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v53 = v113;
      sub_2173D77EC(v11, v113);
      OUTLINED_FUNCTION_128_8(&qword_27CB243A8, &unk_217777720, *(v107 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_13_26();
        sub_2173D7844(v113, v54);
        v51 = &qword_27CB243A8;
        v52 = &unk_217777720;
        goto LABEL_33;
      }

      v65 = OUTLINED_FUNCTION_94_6();
      memcpy(v65, v66, 0x300uLL);
      v67 = OUTLINED_FUNCTION_53_12();
      sub_217388950(v67, v68, v69);
      if (v16)
      {
        sub_21726A3FC(&v124);
        v70 = type metadata accessor for CloudMusicVideo;
        goto LABEL_50;
      }

      v98 = OUTLINED_FUNCTION_143_6();
      sub_21726A3FC(v98);
      v99 = type metadata accessor for CloudMusicVideo;
      goto LABEL_61;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v53 = v115;
      sub_2173D77EC(v11, v115);
      OUTLINED_FUNCTION_128_8(&qword_27CB24358, &unk_21775D510, *(v109 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v115, v61);
        v51 = &qword_27CB24358;
        v52 = &unk_21775D510;
        goto LABEL_33;
      }

      v89 = OUTLINED_FUNCTION_94_6();
      memcpy(v89, v90, 0x380uLL);
      v91 = OUTLINED_FUNCTION_53_12();
      sub_2173888A8(v91, v92, v93);
      if (v16)
      {
        sub_21726A354(&v124);
        v70 = type metadata accessor for CloudPlaylist;
        goto LABEL_50;
      }

      v104 = OUTLINED_FUNCTION_143_6();
      sub_21726A354(v104);
      v99 = type metadata accessor for CloudPlaylist;
      goto LABEL_61;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v53 = v117;
      sub_2173D77EC(v11, v117);
      OUTLINED_FUNCTION_128_8(&qword_27CB25640, &qword_217764750, *(v110 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_21_20();
        sub_2173D7844(v117, v62);
        v51 = &qword_27CB25640;
        v52 = &qword_217764750;
        goto LABEL_33;
      }

      v94 = OUTLINED_FUNCTION_94_6();
      memcpy(v94, v95, 0x80uLL);
      OUTLINED_FUNCTION_53_12();
      sub_217388A28();
      if (v16)
      {
        sub_21733BB04(&v124);
        v70 = type metadata accessor for CloudRadioShow;
        goto LABEL_50;
      }

      v105 = OUTLINED_FUNCTION_143_6();
      sub_21733BB04(v105);
      v99 = type metadata accessor for CloudRadioShow;
      goto LABEL_61;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v59 = v11;
      v56 = v118;
      sub_2173D77EC(v59, v118);
      if (*(v118 + *(v112 + 24)))
      {
        goto LABEL_56;
      }

      sub_2171FF30C(v121, &v124);
      sub_2174D5248(&v124);
      if (v122)
      {
        v71 = type metadata accessor for CloudRecordLabel;
        goto LABEL_42;
      }

      v103 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v103);
      OUTLINED_FUNCTION_77_7();
LABEL_56:
      v101 = type metadata accessor for CloudRecordLabel;
      goto LABEL_57;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v53 = v119;
      sub_2173D77EC(v11, v119);
      OUTLINED_FUNCTION_128_8(&qword_27CB24A78, &qword_217759040, *(v114 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_48_12();
        sub_2173D7844(v119, v64);
        v51 = &qword_27CB24A78;
        v52 = &qword_217759040;
        goto LABEL_33;
      }

      v96 = OUTLINED_FUNCTION_94_6();
      memcpy(v96, v97, 0x600uLL);
      OUTLINED_FUNCTION_53_12();
      sub_2173888E8();
      if (v16)
      {
        sub_217284234(&v124);
        v70 = type metadata accessor for CloudSong;
LABEL_50:
        v87 = v70;
        v88 = v53;
      }

      else
      {
        v106 = OUTLINED_FUNCTION_143_6();
        sub_217284234(v106);
        v99 = type metadata accessor for CloudSong;
LABEL_61:
        v87 = v99;
        v88 = v53;
      }

      goto LABEL_62;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v55 = v11;
      v56 = v120;
      sub_2173D77EC(v55, v120);
      if (*(v120 + *(v116 + 24)))
      {
        goto LABEL_53;
      }

      sub_2171FF30C(v121, &v124);
      sub_2174D4AA8(&v124);
      if (v122)
      {
        v71 = type metadata accessor for CloudStation;
LABEL_42:
        v87 = v71;
        v88 = v56;
      }

      else
      {
        v100 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v100);
        OUTLINED_FUNCTION_77_7();
LABEL_53:
        v101 = type metadata accessor for CloudStation;
LABEL_57:
        v87 = v101;
        v88 = v56;
      }

      goto LABEL_62;
    case 0xAu:

      v63 = v11[1];
      v124 = *v11;
      v125[0] = v63;
      *(v125 + 9) = *(v11 + 25);
      sub_2173D20A8(v16, v121);
      sub_2171F0738(&v124, &qword_27CB25890, &unk_21775D928);
      goto LABEL_63;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v11, v10);
      OUTLINED_FUNCTION_128_8(&qword_27CB243C8, &unk_21775D390, *(v46 + 24));
      OUTLINED_FUNCTION_65_11();
      if (v49)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v50);
        v51 = &qword_27CB243C8;
        v52 = &unk_21775D390;
LABEL_33:
        sub_2171F0738(v123, v51, v52);
      }

      else
      {

        v76 = OUTLINED_FUNCTION_94_6();
        memcpy(v76, v77, 0x300uLL);
        v78 = OUTLINED_FUNCTION_53_12();
        sub_217388868(v78, v79, v80);
        OUTLINED_FUNCTION_77_7();
        sub_21726A4EC(&v124);
        v81 = type metadata accessor for CloudAlbum;
LABEL_43:
        v87 = v81;
        v88 = v10;
LABEL_62:
        sub_2173D7844(v88, v87);
      }

LABEL_63:
      OUTLINED_FUNCTION_141();
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t sub_2173D20A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 56))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D21B4()
{
  OUTLINED_FUNCTION_74_8();
  if (v1)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v0, &v17, &qword_27CB256E8, &qword_21775D830);
  if (v18)
  {

    OUTLINED_FUNCTION_147_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0], v14[1], v14[2], v15, v16, v17);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_132_7();
    v10 = OUTLINED_FUNCTION_92_8();
    v11(v10);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_2171F0738(&v17, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v13, v14);
  v15 = OUTLINED_FUNCTION_101();
  type metadata accessor for CloudStation(v15);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v18 = OUTLINED_FUNCTION_55_9(v17);
  type metadata accessor for CloudSong(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v20 = OUTLINED_FUNCTION_206();
  v105 = type metadata accessor for CloudRecordLabel(v20);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_81();
  v109 = v22;
  v23 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudRadioShow(v23);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_81();
  v108 = v25;
  v26 = OUTLINED_FUNCTION_206();
  v103 = type metadata accessor for CloudPlaylist(v26);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_81();
  v107 = v28;
  v29 = OUTLINED_FUNCTION_206();
  v101 = type metadata accessor for CloudMusicVideo(v29);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_81();
  v106 = v31;
  v32 = OUTLINED_FUNCTION_206();
  v33 = type metadata accessor for CloudGenre(v32);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_81();
  v104 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v37 = type metadata accessor for CloudCurator(v36);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_81();
  v102 = v39;
  v40 = OUTLINED_FUNCTION_206();
  v41 = type metadata accessor for CloudArtist(v40);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v43 = OUTLINED_FUNCTION_37_10();
  v44 = type metadata accessor for CloudAlbum(v43);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v46 = OUTLINED_FUNCTION_61_6();
  v47 = type metadata accessor for CatalogSearchRawResponse.TopResult(v46);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_28_19();
  if (*(v10 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v10);
  OUTLINED_FUNCTION_1_5();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v60 = OUTLINED_FUNCTION_153();
      sub_2173D77EC(v60, v61);
      sub_21738C4B0(v11 + *(v41 + 28), v111, &qword_27CB24AB0, &qword_217759088);
      OUTLINED_FUNCTION_65_11();
      if (!v51)
      {

        v87 = OUTLINED_FUNCTION_144_5();
        memcpy(v87, v88, 0x580uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388DA0();
        OUTLINED_FUNCTION_98();
        sub_21728463C(&v112);
        OUTLINED_FUNCTION_12_22();
        v86 = v11;
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v11, v62);
      v53 = &qword_27CB24AB0;
      v54 = &qword_217759088;
      goto LABEL_25;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v47 = v102;
      sub_2173D77EC(v10, v102);
      if (*(v102 + *(v37 + 28)))
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_160_5();
      v76 = OUTLINED_FUNCTION_145_3();
      sub_2174D5830(v76);
      if (v10)
      {
        v74 = type metadata accessor for CloudCurator;
      }

      else
      {
        v97 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v97);
        OUTLINED_FUNCTION_98();
LABEL_45:
        v74 = type metadata accessor for CloudCurator;
      }

      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v47 = v104;
      sub_2173D77EC(v10, v104);
      if (*(v104 + *(v33 + 28)))
      {
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_160_5();
      v77 = OUTLINED_FUNCTION_145_3();
      sub_2174D57C8(v77);
      if (v10)
      {
        v74 = type metadata accessor for CloudGenre;
      }

      else
      {
        v98 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v98);
        OUTLINED_FUNCTION_98();
LABEL_47:
        v74 = type metadata accessor for CloudGenre;
      }

      goto LABEL_52;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      v47 = v106;
      sub_2173D77EC(v10, v106);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A90, &unk_21775D5B0, *(v101 + 28));
      OUTLINED_FUNCTION_65_11();
      if (!v51)
      {

        v69 = OUTLINED_FUNCTION_144_5();
        memcpy(v69, v70, 0x100uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388CF8(v71, v72, v73);
        sub_2172844EC(&v112);
        v74 = type metadata accessor for CloudMusicVideo;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_13_26();
      sub_2173D7844(v106, v55);
      v53 = &qword_27CB24A90;
      v54 = &unk_21775D5B0;
      goto LABEL_25;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v47 = v107;
      sub_2173D77EC(v10, v107);
      OUTLINED_FUNCTION_119_8(&qword_27CB24350, &unk_21776A5D0, *(v103 + 28));
      OUTLINED_FUNCTION_65_11();
      if (!v51)
      {

        v89 = OUTLINED_FUNCTION_144_5();
        memcpy(v89, v90, 0x200uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388C50(v91, v92, v93);
        sub_21726A300(&v112);
        v74 = type metadata accessor for CloudPlaylist;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_14_23();
      sub_2173D7844(v107, v63);
      v53 = &qword_27CB24350;
      v54 = &unk_21776A5D0;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v47 = v108;
      sub_2173D77EC(v10, v108);
      OUTLINED_FUNCTION_126_8();
      if (v64)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_160_5();
      v94 = OUTLINED_FUNCTION_145_3();
      sub_2174D57FC(v94);
      if (v10)
      {
        v74 = type metadata accessor for CloudRadioShow;
      }

      else
      {
        v99 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v99);
        OUTLINED_FUNCTION_98();
LABEL_49:
        v74 = type metadata accessor for CloudRadioShow;
      }

      goto LABEL_52;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v47 = v109;
      sub_2173D77EC(v10, v109);
      OUTLINED_FUNCTION_119_8(&qword_27CB24A98, &unk_217759060, *(v105 + 28));
      OUTLINED_FUNCTION_65_11();
      if (v51)
      {
        OUTLINED_FUNCTION_36_15();
        sub_2173D7844(v109, v59);
        v53 = &qword_27CB24A98;
        v54 = &unk_217759060;
        goto LABEL_25;
      }

      v78 = OUTLINED_FUNCTION_144_5();
      memcpy(v78, v79, 0x100uLL);
      OUTLINED_FUNCTION_67_10();
      sub_217388E08();
      sub_217284540(&v112);
      v74 = type metadata accessor for CloudRecordLabel;
LABEL_52:
      sub_2173D7844(v47, v74);
      break;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v66 = OUTLINED_FUNCTION_86_6();
      sub_2173D77EC(v66, v67);
      OUTLINED_FUNCTION_126_8();
      if (v68)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_160_5();
      v95 = OUTLINED_FUNCTION_145_3();
      sub_2174D5760(v95);
      if (v10)
      {
        v74 = type metadata accessor for CloudSong;
      }

      else
      {
        v100 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v100);
        OUTLINED_FUNCTION_98();
LABEL_51:
        v74 = type metadata accessor for CloudSong;
      }

      goto LABEL_52;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v56 = OUTLINED_FUNCTION_85_8();
      sub_2173D77EC(v56, v57);
      OUTLINED_FUNCTION_126_8();
      if (v58)
      {
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_160_5();
      v75 = OUTLINED_FUNCTION_145_3();
      sub_2174D53F4(v75);
      if (v10)
      {
        v74 = type metadata accessor for CloudStation;
      }

      else
      {
        v96 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v96);
        OUTLINED_FUNCTION_98();
LABEL_43:
        v74 = type metadata accessor for CloudStation;
      }

      goto LABEL_52;
    case 0xAu:

      v65 = *(v10 + 16);
      v112 = *v10;
      v113[0] = v65;
      *(v113 + 9) = *(v10 + 25);
      sub_2173D2BB8(v10, v110);
      sub_2171F0738(&v112, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      v49 = OUTLINED_FUNCTION_161_5();
      sub_2173D77EC(v49, v50);
      sub_21738C4B0(v12 + *(v44 + 28), v111, &qword_27CB24AA8, &qword_217759080);
      OUTLINED_FUNCTION_65_11();
      if (v51)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v12, v52);
        v53 = &qword_27CB24AA8;
        v54 = &qword_217759080;
LABEL_25:
        sub_2171F0738(v111, v53, v54);
      }

      else
      {

        v80 = OUTLINED_FUNCTION_144_5();
        memcpy(v80, v81, 0x200uLL);
        OUTLINED_FUNCTION_67_10();
        sub_217388C10(v82, v83, v84);
        OUTLINED_FUNCTION_98();
        sub_2172845E8(&v112);
        OUTLINED_FUNCTION_10_24();
        v86 = v12;
LABEL_37:
        sub_2173D7844(v86, v85);
      }

      break;
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D2BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 64))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D2CC4()
{
  OUTLINED_FUNCTION_74_8();
  if (v1)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v0, &v17, &qword_27CB256E8, &qword_21775D830);
  if (v18)
  {

    OUTLINED_FUNCTION_147_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0], v14[1], v14[2], v15, v16, v17);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_132_7();
    v10 = OUTLINED_FUNCTION_92_8();
    v11(v10);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_2171F0738(&v17, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

void CatalogSearchRawResponse.TopResult.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_130_7(v12, v13);
  v15 = v14;
  v109 = type metadata accessor for CloudStation(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v112 = v17;
  v18 = OUTLINED_FUNCTION_206();
  v106 = type metadata accessor for CloudSong(v18);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v21 = OUTLINED_FUNCTION_55_9(v20);
  type metadata accessor for CloudRecordLabel(v21);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v111 = v23;
  v24 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudRadioShow(v24);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_81();
  v110 = v26;
  v27 = OUTLINED_FUNCTION_206();
  v103 = type metadata accessor for CloudPlaylist(v27);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_81();
  v107 = v29;
  v30 = OUTLINED_FUNCTION_206();
  v102 = type metadata accessor for CloudMusicVideo(v30);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_81();
  v108 = v32;
  v33 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudGenre(v33);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_81();
  v105 = v35;
  v36 = OUTLINED_FUNCTION_206();
  type metadata accessor for CloudCurator(v36);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  v104 = v38;
  v39 = OUTLINED_FUNCTION_206();
  v40 = type metadata accessor for CloudArtist(v39);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1();
  v42 = OUTLINED_FUNCTION_61_6();
  v43 = type metadata accessor for CloudAlbum(v42);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_28_19();
  v45 = v15;
  type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  if (*(v15 + 16))
  {
    sub_217751DE8();
  }

  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(a10, v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v59 = OUTLINED_FUNCTION_140_1();
      sub_2173D77EC(v59, v60);
      if (*(v11 + *(v40 + 32)) != 1)
      {
        sub_217751DE8();

        OUTLINED_FUNCTION_149_5();
        v84 = OUTLINED_FUNCTION_70_8();
        sub_2174D63C0(v84, v85);
        if (!v15)
        {
          v99 = OUTLINED_FUNCTION_117_10();
          OUTLINED_FUNCTION_116_10(v99);
          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_12_22();
      v71 = v11;
      goto LABEL_67;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      v54 = v15;
      v55 = v104;
      sub_2173D77EC(v54, v104);
      OUTLINED_FUNCTION_167_6();
      if (v56)
      {
        goto LABEL_55;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v73 = OUTLINED_FUNCTION_70_8();
      sub_2174D6198(v73, v74);
      if (v45)
      {
        v75 = type metadata accessor for CloudCurator;
        goto LABEL_52;
      }

      v95 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v95);
      OUTLINED_FUNCTION_77_7();
LABEL_55:
      v96 = type metadata accessor for CloudCurator;
      goto LABEL_66;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      v57 = v15;
      v55 = v105;
      sub_2173D77EC(v57, v105);
      OUTLINED_FUNCTION_167_6();
      if (v56)
      {
        goto LABEL_57;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v76 = OUTLINED_FUNCTION_70_8();
      sub_2174D5F94(v76, v77);
      if (v45)
      {
        v75 = type metadata accessor for CloudGenre;
        goto LABEL_52;
      }

      v97 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v97);
      OUTLINED_FUNCTION_77_7();
LABEL_57:
      v96 = type metadata accessor for CloudGenre;
      goto LABEL_66;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v15, v108);
      v50 = v108 + *(v102 + 32);
      v51 = *(v50 + 24);
      if (v51 != 1)
      {
        v67 = *(v50 + 16);
        v69 = *v50;
        v68 = *(v50 + 8);
        sub_217221020(*v50);
        sub_217751DE8();

        OUTLINED_FUNCTION_149_5();
        v116[0] = v67 & 1;
        sub_2174D5C54(v69, v68, v67 & 1, v51, &v118);
        if (!v115)
        {
          v93 = OUTLINED_FUNCTION_117_10();
          OUTLINED_FUNCTION_116_10(v93);
          OUTLINED_FUNCTION_77_7();
        }
      }

      OUTLINED_FUNCTION_13_26();
      v71 = v108;
      goto LABEL_67;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      v52 = v107;
      sub_2173D77EC(v15, v107);
      OUTLINED_FUNCTION_128_8(&qword_27CB24348, &unk_21775D520, *(v103 + 32));
      if (v117 == 1)
      {
        OUTLINED_FUNCTION_14_23();
        sub_2173D7844(v107, v61);
        v48 = &qword_27CB24348;
        v49 = &unk_21775D520;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_154_5();
      OUTLINED_FUNCTION_67_10();
      sub_217388E88(v86, v87, v88);
      if (v15)
      {
        sub_21726A2AC(&v118);
        v72 = type metadata accessor for CloudPlaylist;
        goto LABEL_47;
      }

      sub_21726A2AC(&v118);
      v94 = type metadata accessor for CloudPlaylist;
      goto LABEL_61;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      v62 = v15;
      v55 = v110;
      sub_2173D77EC(v62, v110);
      OUTLINED_FUNCTION_167_6();
      if (v56)
      {
        goto LABEL_63;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v89 = OUTLINED_FUNCTION_70_8();
      sub_2174D5FC8(v89, v90);
      if (v45)
      {
        v75 = type metadata accessor for CloudRadioShow;
        goto LABEL_52;
      }

      v100 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v100);
      OUTLINED_FUNCTION_77_7();
LABEL_63:
      v96 = type metadata accessor for CloudRadioShow;
      goto LABEL_66;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v58 = v15;
      v55 = v111;
      sub_2173D77EC(v58, v111);
      OUTLINED_FUNCTION_167_6();
      if (v56)
      {
        goto LABEL_59;
      }

      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      v78 = OUTLINED_FUNCTION_70_8();
      sub_2174D638C(v78, v79);
      if (v45)
      {
        v75 = type metadata accessor for CloudRecordLabel;
        goto LABEL_52;
      }

      v98 = OUTLINED_FUNCTION_117_10();
      OUTLINED_FUNCTION_116_10(v98);
      OUTLINED_FUNCTION_77_7();
LABEL_59:
      v96 = type metadata accessor for CloudRecordLabel;
      goto LABEL_66;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v64 = v15;
      v55 = v113;
      sub_2173D77EC(v64, v113);
      v65 = v113 + *(v106 + 32);
      v66 = *(v65 + 24);
      if (v66 == 1)
      {
        goto LABEL_65;
      }

      v91 = *(v65 + 32);
      v92 = *(v65 + 16);
      v120 = *v65;
      v121 = v92 & 1;
      v122 = v66;
      v123 = v91;
      sub_217221020(v120);
      sub_217751DE8();
      sub_217751DE8();

      OUTLINED_FUNCTION_149_5();
      sub_2174D5DD4(&v120);
      if (v115)
      {
        v75 = type metadata accessor for CloudSong;
LABEL_52:
        v70 = v75;
        v71 = v55;
      }

      else
      {
        v101 = OUTLINED_FUNCTION_117_10();
        OUTLINED_FUNCTION_116_10(v101);
        OUTLINED_FUNCTION_77_7();
LABEL_65:
        v96 = type metadata accessor for CloudSong;
LABEL_66:
        v70 = v96;
        v71 = v55;
      }

      goto LABEL_67;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v52 = v112;
      sub_2173D77EC(v15, v112);
      OUTLINED_FUNCTION_128_8(&qword_27CB24340, &unk_2177650B0, *(v109 + 32));
      if (v117 == 1)
      {
        OUTLINED_FUNCTION_37_14();
        sub_2173D7844(v112, v53);
        v48 = &qword_27CB24340;
        v49 = &unk_2177650B0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_154_5();
      OUTLINED_FUNCTION_67_10();
      sub_217388F30();
      if (v15)
      {
        sub_21726A258(&v118);
        v72 = type metadata accessor for CloudStation;
LABEL_47:
        v70 = v72;
        v71 = v52;
      }

      else
      {
        sub_21726A258(&v118);
        v94 = type metadata accessor for CloudStation;
LABEL_61:
        v70 = v94;
        v71 = v52;
      }

LABEL_67:
      sub_2173D7844(v71, v70);
      break;
    case 0xAu:

      v63 = *(v15 + 16);
      v118 = *v15;
      v119[0] = v63;
      *(v119 + 9) = *(v15 + 25);
      sub_2173D371C(v15, v114);
      sub_2171F0738(&v118, &qword_27CB25890, &unk_21775D928);
      break;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v15, v10);
      OUTLINED_FUNCTION_128_8(&qword_27CB243C0, &unk_21775D3A0, *(v43 + 32));
      if (v117 == 1)
      {
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v47);
        v48 = &qword_27CB243C0;
        v49 = &unk_21775D3A0;
LABEL_23:
        sub_2171F0738(v116, v48, v49);
      }

      else
      {

        OUTLINED_FUNCTION_154_5();
        OUTLINED_FUNCTION_67_10();
        sub_217388E48(v80, v81, v82);
        OUTLINED_FUNCTION_77_7();
        sub_21726A498(&v118);
        OUTLINED_FUNCTION_10_24();
        sub_2173D7844(v10, v83);
      }

      break;
  }

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D371C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 16))
  {
    sub_217751DE8();
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  sub_21738C4B0(v3, v13, &qword_27CB25890, &unk_21775D928);
  if (v14)
  {

    sub_2171F3F0C(v13, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(*(v8 + 8) + 72))(a1, a2, v7);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2171F0738(v13, &qword_27CB25890, &unk_21775D928);
  }

  return v6;
}

uint64_t sub_2173D3828()
{
  OUTLINED_FUNCTION_74_8();
  if (v1)
  {
    sub_217751DE8();
  }

  sub_21738C4B0(v0, &v17, &qword_27CB256E8, &qword_21775D830);
  if (v18)
  {

    OUTLINED_FUNCTION_147_4(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0], v14[1], v14[2], v15, v16, v17);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_132_7();
    v10 = OUTLINED_FUNCTION_92_8();
    v11(v10);
    OUTLINED_FUNCTION_68_2();
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_2171F0738(&v17, &qword_27CB256E8, &qword_21775D830);
  }

  return OUTLINED_FUNCTION_58_11();
}

uint64_t sub_2173D3904(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173D3A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173D3904(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173D3A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173D7798(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173D3AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173D7798(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CatalogSearchRawResponse.TopResult.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v5 = v4;
  v147 = v6;
  v7 = type metadata accessor for CloudStation(0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_81();
  v10 = OUTLINED_FUNCTION_44_11(v9);
  v11 = type metadata accessor for CloudSong(v10);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  v14 = OUTLINED_FUNCTION_44_11(v13);
  v15 = type metadata accessor for CloudRecordLabel(v14);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_81();
  v139 = v17;
  v18 = OUTLINED_FUNCTION_206();
  v19 = type metadata accessor for CloudPlaylist(v18);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  v141 = v21;
  v22 = OUTLINED_FUNCTION_206();
  v23 = type metadata accessor for CloudMusicVideo(v22);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_81();
  v145 = v25;
  v26 = OUTLINED_FUNCTION_206();
  v27 = type metadata accessor for CloudGenre(v26);
  v28 = OUTLINED_FUNCTION_45_0(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_81();
  v146 = v29;
  v30 = OUTLINED_FUNCTION_206();
  v144 = type metadata accessor for CloudRawCurator(v30);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_31();
  v143 = v32;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_80();
  v148 = v34;
  v35 = OUTLINED_FUNCTION_206();
  v36 = type metadata accessor for CloudArtist(v35);
  v37 = OUTLINED_FUNCTION_45_0(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v38 = OUTLINED_FUNCTION_31_12();
  v39 = type metadata accessor for CloudAlbum(v38);
  v40 = OUTLINED_FUNCTION_45_0(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270D8, &qword_217768EF8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_60_0();
  type metadata accessor for CatalogSearchRawResponse.TopResult(v46);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v152 = v5;
  v48 = OUTLINED_FUNCTION_161_5();
  v50 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2173D7798(v50, v51, v52);
  v53 = sub_2177532C8();
  if (!v0)
  {
    sub_21733BE84(v53, v54, v55);
    sub_217752EA8();
    v135 = v44;
    v5 = *(&v150 + 1);
    if (qword_280BE7F08 != -1)
    {
      swift_once();
    }

    if (OUTLINED_FUNCTION_121_8(off_280BE7F10))
    {
      goto LABEL_14;
    }

    if (qword_280BE5740 != -1)
    {
      swift_once();
    }

    v56 = qword_280BE5748 == v150 && unk_280BE5750 == *(&v150 + 1);
    if (v56 || (sub_217753058() & 1) != 0)
    {
LABEL_14:

      OUTLINED_FUNCTION_104_6();
      CloudAlbum.init(from:)(&v150, v57, v58, v59, v60, v61, v62, v63, v1, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v136, v138, v139, v141, v143, v144, v145, v146, v147, v148);
      v64 = OUTLINED_FUNCTION_25_24();
      v65(v64);
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v43, v2);
      OUTLINED_FUNCTION_108_8();
    }

    else
    {
      if (qword_280BE5220 != -1)
      {
        swift_once();
      }

      if (OUTLINED_FUNCTION_121_8(off_280BE5228))
      {
        goto LABEL_27;
      }

      if (qword_280BE52E8 != -1)
      {
        swift_once();
      }

      v68 = qword_280BE52F0 == v150 && *algn_280BE52F8 == *(&v150 + 1);
      if (v68 || (sub_217753058() & 1) != 0)
      {
LABEL_27:

        OUTLINED_FUNCTION_104_6();
        CloudArtist.init(from:)();
        v69 = OUTLINED_FUNCTION_25_24();
        v70(v69);
        OUTLINED_FUNCTION_4_49();
        sub_2173D77EC(v3, v2);
        OUTLINED_FUNCTION_108_8();
      }

      else
      {
        if (qword_280BE4FB0 != -1)
        {
          swift_once();
        }

        if (OUTLINED_FUNCTION_121_8(off_280BE4FB8))
        {

          OUTLINED_FUNCTION_104_6();
          CloudRawCurator.init(from:)();
          sub_2173D789C(v148, v143);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v148, v93);
              v94 = OUTLINED_FUNCTION_25_24();
              v95(v94);
              OUTLINED_FUNCTION_6_33();
              v96 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v96, v97);
              OUTLINED_FUNCTION_140_1();
              goto LABEL_51;
            case 2u:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v148, v85);
              v86 = OUTLINED_FUNCTION_25_24();
              v87(v86);
              OUTLINED_FUNCTION_2_49();
              v88 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v88, v89);
              OUTLINED_FUNCTION_140_1();
              goto LABEL_51;
            case 3u:
              sub_2171FF30C(*(&v150 + 1), v149);
              sub_2173D4760(v149, &v150);
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v148, v90);
              v91 = OUTLINED_FUNCTION_25_24();
              v92(v91);
              v106 = v151[0];
              *v2 = v150;
              v2[1] = v106;
              *(v2 + 25) = *(v151 + 9);
              OUTLINED_FUNCTION_140_1();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v143, v107);
              goto LABEL_16;
            default:
              OUTLINED_FUNCTION_22_21();
              sub_2173D7844(v148, v71);
              v72 = OUTLINED_FUNCTION_25_24();
              v73(v72);
              OUTLINED_FUNCTION_7_31();
              v74 = OUTLINED_FUNCTION_47_2();
              sub_2173D77EC(v74, v75);
              OUTLINED_FUNCTION_140_1();
LABEL_51:
              swift_storeEnumTagMultiPayload();
              break;
          }

          goto LABEL_16;
        }

        if (qword_280BE5538 != -1)
        {
          swift_once();
        }

        if (OUTLINED_FUNCTION_121_8(off_280BE5540))
        {

          OUTLINED_FUNCTION_104_6();
          CloudGenre.init(from:)();
          v76 = OUTLINED_FUNCTION_25_24();
          v77(v76);
          OUTLINED_FUNCTION_6_33();
          v78 = OUTLINED_FUNCTION_47_2();
          sub_2173D77EC(v78, v79);
          OUTLINED_FUNCTION_162_5();
        }

        else
        {
          if (qword_280BE6EA0 != -1)
          {
            swift_once();
          }

          if (!OUTLINED_FUNCTION_103_8(off_280BE6EA8))
          {
            if (qword_280BE6EC8 != -1)
            {
              swift_once();
            }

            v80 = qword_280BE6ED0 == v150 && *algn_280BE6ED8 == *(&v150 + 1);
            if (!v80 && (OUTLINED_FUNCTION_150_5(qword_280BE6ED0, *algn_280BE6ED8) & 1) == 0)
            {
              if (qword_280BE4610 != -1)
              {
                swift_once();
              }

              if (OUTLINED_FUNCTION_103_8(off_280BE4618))
              {
                goto LABEL_62;
              }

              if (qword_280BE4788 != -1)
              {
                swift_once();
              }

              v98 = qword_280BE4790 == v150 && *algn_280BE4798 == *(&v150 + 1);
              if (v98 || (OUTLINED_FUNCTION_150_5(qword_280BE4790, *algn_280BE4798) & 1) != 0)
              {
LABEL_62:

                OUTLINED_FUNCTION_176_6();
                CloudPlaylist.init(from:)(&v150, v99, v100, v101, v102, v103, v104, v105, v1, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v136, v138, v139, v141, v143, v144, v145, v146, v147, v148);
                OUTLINED_FUNCTION_112_9();
                v108 = OUTLINED_FUNCTION_26_21();
                v109(v108);
                OUTLINED_FUNCTION_3_46();
                sub_2173D77EC(v142, v2);
                OUTLINED_FUNCTION_108_8();
              }

              else
              {
                if (qword_280BE3F50 != -1)
                {
                  swift_once();
                }

                if (OUTLINED_FUNCTION_103_8(off_280BE3F58))
                {

                  OUTLINED_FUNCTION_176_6();
                  CloudRecordLabel.init(from:)(&v150, v110, v111, v112, v113, v114, v115, v116, v1, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v136, v138, v139, v141, v143, v144, v145, v146, v147, v148);
                  OUTLINED_FUNCTION_112_9();
                  v117 = OUTLINED_FUNCTION_26_21();
                  v118(v117);
                  OUTLINED_FUNCTION_5_38();
                  sub_2173D77EC(v140, v2);
                  OUTLINED_FUNCTION_108_8();
                }

                else
                {
                  if (qword_280BE7620 != -1)
                  {
                    swift_once();
                  }

                  if (OUTLINED_FUNCTION_103_8(off_280BE7628))
                  {
                    goto LABEL_78;
                  }

                  if (qword_280BE24E8 != -1)
                  {
                    swift_once();
                  }

                  v119 = qword_280BE24F0 == v150 && *algn_280BE24F8 == *(&v150 + 1);
                  if (v119 || (OUTLINED_FUNCTION_150_5(qword_280BE24F0, *algn_280BE24F8) & 1) != 0)
                  {
LABEL_78:

                    OUTLINED_FUNCTION_176_6();
                    CloudSong.init(from:)();
                    OUTLINED_FUNCTION_112_9();
                    v120 = OUTLINED_FUNCTION_26_21();
                    v121(v120);
                    OUTLINED_FUNCTION_1_46();
                    sub_2173D77EC(v138, v2);
                    OUTLINED_FUNCTION_108_8();
                  }

                  else
                  {
                    if (qword_280BE4DA0 != -1)
                    {
                      swift_once();
                    }

                    v122 = OUTLINED_FUNCTION_103_8(off_280BE4DA8);

                    if (v122)
                    {
                      OUTLINED_FUNCTION_176_6();
                      CloudStation.init(from:)(&v150, v123, v124, v125, v126, v127, v128, v129, v1, v135, SWORD2(v135), SBYTE6(v135), SHIBYTE(v135), v136, v138, v139, v141, v143, v144, v145, v146, v147, v148);
                      OUTLINED_FUNCTION_112_9();
                      v130 = OUTLINED_FUNCTION_26_21();
                      v131(v130);
                      OUTLINED_FUNCTION_8_33();
                      sub_2173D77EC(v137, v2);
                      OUTLINED_FUNCTION_108_8();
                    }

                    else
                    {
                      sub_2171FF30C(v152, v149);
                      sub_2173D4760(v149, &v150);
                      OUTLINED_FUNCTION_112_9();
                      v132 = OUTLINED_FUNCTION_26_21();
                      v133(v132);
                      v134 = v151[0];
                      *v2 = v150;
                      v2[1] = v134;
                      *(v2 + 25) = *(v151 + 9);
                      OUTLINED_FUNCTION_108_8();
                    }
                  }
                }
              }

              swift_storeEnumTagMultiPayload();
              v5 = v152;
              goto LABEL_16;
            }
          }

          OUTLINED_FUNCTION_104_6();
          CloudMusicVideo.init(from:)();
          v81 = OUTLINED_FUNCTION_25_24();
          v82(v81);
          OUTLINED_FUNCTION_9_26();
          v83 = OUTLINED_FUNCTION_47_2();
          sub_2173D77EC(v83, v84);
          OUTLINED_FUNCTION_162_5();
        }
      }
    }

    swift_storeEnumTagMultiPayload();
LABEL_16:
    v66 = OUTLINED_FUNCTION_162_5();
    sub_2173D77EC(v66, v67);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D4760@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270F8, &qword_217768F08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - v7;
  if (dynamic_cast_existential_1_conditional(&type metadata for CatalogSearchRawResponse.TopResult.Placeholder, &type metadata for CatalogSearchRawResponse.TopResult.Placeholder, &protocol descriptor for CloudInternalPolymorphicMusicItemStorageBacked))
  {
    v10 = (*(v9 + 16))();
    v12 = v11;
    sub_2171FF30C(a1, v22);
    v24 = v10;
    v25 = v12;
    __swift_allocate_boxed_opaque_existential_0(v23);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v23);
    }

    sub_2171FF30C(v23, a2);
    *(a2 + 40) = 1;
  }

  else
  {
    sub_2171FF30C(a1, v23);
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_2173D78F4(v14, v15, v16);
    v17 = sub_2177532C8();
    if (!v2)
    {
      sub_2172E1C68(v17, v18, v19);
      sub_217752EA8();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v6 + 8))(v8, v5);
      v20 = v22[0];
      v21 = v22[1];
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      *a2 = v20;
      *(a2 + 8) = v21;
      *(a2 + 40) = 0;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2173D499C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for CloudPlaylistEntry.Placeholder, &type metadata for CloudPlaylistEntry.Placeholder, &protocol descriptor for CloudInternalPolymorphicMusicItemStorageBacked))
  {
    v6 = (*(v5 + 16))();
    v8 = v7;
    sub_2171FF30C(a1, v10);
    v11[3] = v6;
    v11[4] = v8;
    __swift_allocate_boxed_opaque_existential_0(v11);
    sub_217752608();
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_deallocate_boxed_opaque_existential_1(v11);
    }

    else
    {
      sub_2171FF30C(v11, a2);
      a2[504] = 1;
      return __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    sub_2171FF30C(a1, v11);
    CloudPlaylistEntry.Placeholder.init(from:)();
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      result = memcpy(a2, __src, 0x1F8uLL);
      a2[504] = 0;
    }
  }

  return result;
}

void CatalogSearchRawResponse.TopResult.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v55 = v7;
  v8 = type metadata accessor for CloudStation(0);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_81();
  v54 = v10;
  v11 = OUTLINED_FUNCTION_206();
  v12 = type metadata accessor for CloudSong(v11);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v53 = v14;
  v15 = OUTLINED_FUNCTION_206();
  v16 = type metadata accessor for CloudRecordLabel(v15);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_81();
  v52 = v18;
  v19 = OUTLINED_FUNCTION_206();
  v20 = type metadata accessor for CloudRadioShow(v19);
  v21 = OUTLINED_FUNCTION_45_0(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v22 = OUTLINED_FUNCTION_37_10();
  v23 = type metadata accessor for CloudPlaylist(v22);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v25 = OUTLINED_FUNCTION_31_12();
  v26 = type metadata accessor for CloudMusicVideo(v25);
  v27 = OUTLINED_FUNCTION_45_0(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v28 = OUTLINED_FUNCTION_61_6();
  v29 = type metadata accessor for CloudGenre(v28);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v31 = OUTLINED_FUNCTION_69();
  v32 = type metadata accessor for CloudCurator(v31);
  v33 = OUTLINED_FUNCTION_45_0(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v34 = OUTLINED_FUNCTION_91_8();
  v35 = type metadata accessor for CloudArtist(v34);
  v36 = OUTLINED_FUNCTION_45_0(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v37 = OUTLINED_FUNCTION_60_0();
  v38 = type metadata accessor for CloudAlbum(v37);
  v39 = OUTLINED_FUNCTION_45_0(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_28_19();
  type metadata accessor for CatalogSearchRawResponse.TopResult(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = (v42 - v41);
  OUTLINED_FUNCTION_0_52();
  sub_2173D789C(v0, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      sub_2173D77EC(v43, v2);
      CloudArtist.encode(to:)(v55);
      OUTLINED_FUNCTION_12_22();
      v48 = v2;
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v43, v1);
      CloudCurator.encode(to:)(v55);
      OUTLINED_FUNCTION_16_28();
      v48 = v1;
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v43, v3);
      CloudGenre.encode(to:)(v55);
      OUTLINED_FUNCTION_17_17();
      v48 = v3;
      goto LABEL_14;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v43, v6);
      CloudMusicVideo.encode(to:)();
      OUTLINED_FUNCTION_13_26();
      v48 = v6;
      goto LABEL_14;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v43, v5);
      CloudPlaylist.encode(to:)();
      OUTLINED_FUNCTION_14_23();
      v48 = v5;
      goto LABEL_14;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      sub_2173D77EC(v43, v4);
      CloudRadioShow.encode(to:)(v55);
      OUTLINED_FUNCTION_21_20();
      v48 = v4;
      goto LABEL_14;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      v0 = v52;
      sub_2173D77EC(v43, v52);
      v49 = OUTLINED_FUNCTION_146_5();
      CloudRecordLabel.encode(to:)(v49);
      v46 = type metadata accessor for CloudRecordLabel;
      goto LABEL_13;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      v0 = v53;
      sub_2173D77EC(v43, v53);
      OUTLINED_FUNCTION_146_5();
      CloudSong.encode(to:)();
      v46 = type metadata accessor for CloudSong;
      goto LABEL_13;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      v0 = v54;
      sub_2173D77EC(v43, v54);
      OUTLINED_FUNCTION_146_5();
      CloudStation.encode(to:)();
      v46 = type metadata accessor for CloudStation;
      goto LABEL_13;
    case 0xAu:
      v50 = v43[1];
      v56 = *v43;
      *v57 = v50;
      *&v57[9] = *(v43 + 25);
      v51 = OUTLINED_FUNCTION_146_5();
      sub_2173D5084(v51);
      sub_2171F0738(&v56, &qword_27CB25890, &unk_21775D928);
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_11_31();
      v44 = OUTLINED_FUNCTION_93();
      sub_2173D77EC(v44, v45);
      OUTLINED_FUNCTION_146_5();
      CloudAlbum.encode(to:)();
      v46 = type metadata accessor for CloudAlbum;
LABEL_13:
      v47 = v46;
      v48 = v0;
LABEL_14:
      sub_2173D7844(v48, v47);
LABEL_15:
      OUTLINED_FUNCTION_170();
      return;
  }
}

uint64_t sub_2173D4F98(uint64_t a1)
{
  sub_21738C4B0(v1, __src, &qword_27CB256E8, &qword_21775D830);
  if (v14)
  {
    sub_2171F3F0C(__src, __dst);
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    CloudPlaylistEntry.Placeholder.encode(to:)(a1, v4, v5, v6, v7, v8, v9, v10, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
    memcpy(v11, __dst, sizeof(v11));
    return sub_21733BC90(v11);
  }
}

uint64_t sub_2173D5084(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270E8, &qword_217768F00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  sub_21738C4B0(v2, v19, &qword_27CB25890, &unk_21775D928);
  if (v20)
  {
    sub_2171F3F0C(v19, &v17);
    __swift_project_boxed_opaque_existential_1(&v17, v18);
    sub_217751E88();
    return __swift_destroy_boxed_opaque_existential_1(&v17);
  }

  else
  {
    v9 = v19[0];
    v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2173D78F4(v10, v11, v12);
    sub_217751DE8();
    v13 = sub_2177532F8();
    v17 = v9;
    sub_2172E1B18(v13, v14, v15);
    sub_217752F88();
    (*(v5 + 8))(v7, v4);
    return swift_bridgeObjectRelease_n();
  }
}

void MusicCatalogSearchResponse.TopResult.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  v324 = v1;
  v325 = v2;
  v4 = v3;
  v326 = v5;
  v328 = v7;
  v329 = v6;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_31();
  v311 = v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_80();
  v312 = v11;
  v12 = OUTLINED_FUNCTION_206();
  v13 = type metadata accessor for CloudStation(v12);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_81();
  v320 = v15;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31();
  v308 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_80();
  v310 = v19;
  v20 = OUTLINED_FUNCTION_206();
  v21 = type metadata accessor for CloudSong(v20);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_81();
  v319 = v23;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_31();
  v305 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_80();
  v307 = v27;
  v28 = OUTLINED_FUNCTION_206();
  v29 = type metadata accessor for CloudRecordLabel(v28);
  v30 = OUTLINED_FUNCTION_45_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_81();
  v318 = v31;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_31();
  v302 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_80();
  v304 = v35;
  v36 = OUTLINED_FUNCTION_206();
  v37 = type metadata accessor for CloudRadioShow(v36);
  v38 = OUTLINED_FUNCTION_45_0(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_81();
  v317 = v39;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_31();
  v299 = v41;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_80();
  v44 = OUTLINED_FUNCTION_55_9(v43);
  v45 = type metadata accessor for CloudPlaylist(v44);
  v46 = OUTLINED_FUNCTION_45_0(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_81();
  v316 = v47;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_31();
  v296 = v49;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_80();
  v298 = v51;
  v52 = OUTLINED_FUNCTION_206();
  v53 = type metadata accessor for CloudMusicVideo(v52);
  v54 = OUTLINED_FUNCTION_45_0(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_81();
  v315 = v55;
  v56 = OUTLINED_FUNCTION_206();
  v289[1] = type metadata accessor for CloudGenre(v56);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_81();
  v289[0] = v58;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_31();
  v293 = v60;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_80();
  v294 = v62;
  v63 = OUTLINED_FUNCTION_206();
  v64 = type metadata accessor for CloudCurator(v63);
  v65 = OUTLINED_FUNCTION_45_0(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_81();
  v314 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_31();
  v291 = v69;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v70);
  v72 = v289 - v71;
  v73 = type metadata accessor for CloudArtist(0);
  v74 = OUTLINED_FUNCTION_45_0(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_81();
  v313 = v75;
  v327 = v4;
  v322 = *(v4 - 8);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_81();
  v321 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_31();
  v290 = v80;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v81);
  v83 = v289 - v82;
  v84 = type metadata accessor for CloudAlbum(0);
  v85 = OUTLINED_FUNCTION_45_0(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_1();
  v86 = OUTLINED_FUNCTION_71_0();
  v87 = type metadata accessor for CatalogSearchRawResponse.TopResult(v86);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v88);
  v90 = (v289 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v91);
  v93 = v289 - v92;
  sub_2173D789C(v329, v289 - v92);
  v323 = v93;
  sub_2173D789C(v93, v90);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_49();
      v166 = v313;
      sub_2173D77EC(v90, v313);
      sub_2173D789C(v166, v72);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v168 = v167[10];
      v169 = v329;
      v170 = v329 + v167[9];
      v171 = *v170;
      v318 = *(v170 + 8);
      v172 = v318;
      LODWORD(v312) = *(v170 + 16);
      v173 = *(v329 + v168 + 8);
      v316 = *(v329 + v168);
      v314 = v171;
      v315 = v173;
      v174 = v167[11];
      memcpy(v332, (v329 + v174), sizeof(v332));
      v175 = v167[13];
      v317 = *(v329 + v167[12]);
      v176 = v317;
      v177 = *(v329 + v175);
      v178 = *(v329 + v167[14]);
      v179 = *(v329 + v167[15]);
      v319 = v178;
      v320 = v179;
      v180 = &v72[v67[9]];
      *v180 = v314;
      *(v180 + 1) = v172;
      v180[16] = v312;
      v181 = &v72[v67[10]];
      v182 = v315;
      *v181 = v316;
      *(v181 + 1) = v182;
      memcpy(&v72[v67[11]], (v169 + v174), 0x180uLL);
      *&v72[v67[12]] = v176;
      *&v72[v67[13]] = v177;
      *&v72[v67[14]] = v178;
      *&v72[v67[15]] = v179;
      sub_21738C4B0(v72, v291, &qword_27CB24728, &qword_217758CB0);
      v183 = v322;
      v184 = v326;
      v185 = v327;
      (*(v322 + 16))(v321, v326, v327);
      sub_217751DE8();
      sub_217751DE8();
      v186 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v186, v187, v188, v189);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Artist.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v183 + 8))(v184, v185);
      sub_2171F0738(v169, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v72, &qword_27CB24728, &qword_217758CB0);
      OUTLINED_FUNCTION_12_22();
      sub_2173D7844(v313, v190);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v191);
      OUTLINED_FUNCTION_20_25();
      v149 = 1;
      goto LABEL_11;
    case 2u:
      OUTLINED_FUNCTION_7_31();
      sub_2173D77EC(v90, v314);
      v120 = OUTLINED_FUNCTION_57_11();
      v121 = v294;
      sub_2173D789C(v120, v294);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v123 = v122[10];
      v124 = v329;
      v125 = v329 + v122[9];
      v126 = *(v125 + 8);
      v313 = *v125;
      v318 = v126;
      LODWORD(v312) = *(v125 + 16);
      v127 = v329 + v123;
      v128 = *(v329 + v123);
      v315 = *(v127 + 8);
      v316 = v128;
      v129 = v122[11];
      memcpy(v332, (v329 + v129), sizeof(v332));
      v130 = v122[13];
      v317 = *(v329 + v122[12]);
      v131 = v317;
      v132 = *(v329 + v130);
      v134 = *(v329 + v122[15]);
      v319 = *(v329 + v122[14]);
      v133 = v319;
      v320 = v134;
      v135 = v292;
      v136 = v121 + *(v292 + 36);
      *v136 = v313;
      *(v136 + 8) = v126;
      *(v136 + 16) = v312;
      v137 = (v121 + v135[10]);
      v138 = v315;
      *v137 = v316;
      v137[1] = v138;
      memcpy((v121 + v135[11]), (v124 + v129), 0x180uLL);
      *(v121 + v135[12]) = v131;
      *(v121 + v135[13]) = v132;
      *(v121 + v135[14]) = v133;
      *(v121 + v135[15]) = v134;
      sub_21738C4B0(v121, v293, &qword_27CB24490, &qword_21775A250);
      v139 = v322;
      v141 = v326;
      v140 = v327;
      (*(v322 + 16))(v321, v326, v327);
      sub_217751DE8();
      sub_217751DE8();
      v142 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v142, v143, v144, v145);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Curator.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v139 + 8))(v141, v140);
      sub_2171F0738(v124, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v121, &qword_27CB24490, &qword_21775A250);
      OUTLINED_FUNCTION_16_28();
      sub_2173D7844(v314, v146);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v147);
      OUTLINED_FUNCTION_20_25();
      v149 = 2;
      goto LABEL_11;
    case 3u:
      OUTLINED_FUNCTION_6_33();
      sub_2173D77EC(v90, v289[0]);
      *&v332[0] = 0;
      *(&v332[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      OUTLINED_FUNCTION_172_5();
      MEMORY[0x21CEA23B0](0xD000000000000012);
      sub_217752C78();
      v286 = OUTLINED_FUNCTION_171_5();
      MEMORY[0x21CEA23B0](v286);
      goto LABEL_15;
    case 4u:
      OUTLINED_FUNCTION_9_26();
      sub_2173D77EC(v90, v315);
      v266 = OUTLINED_FUNCTION_57_11();
      v267 = v298;
      sub_2173D789C(v266, v298);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v318 = v90;
      LODWORD(v312) = *(v268 + 16);
      v270 = v87 + v269;
      v271 = *(v87 + v269);
      v272 = *(v270 + 8);
      v313 = v273;
      v314 = v271;
      v316 = v272;
      v311 = *(v274 + 44);
      OUTLINED_FUNCTION_80_8(v311);
      v317 = *(v87 + *(v93 + 12));
      OUTLINED_FUNCTION_52_14();
      v319 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v320 = v67;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v267, v275, &qword_27CB24808);
      v276 = OUTLINED_FUNCTION_29_19();
      v277(v276);
      sub_217751DE8();
      sub_217751DE8();
      v278 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v278, v279, v280, v281);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)();
      v282 = OUTLINED_FUNCTION_64_13();
      v283(v282);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v267, &qword_27CB24808, &qword_217758D90);
      OUTLINED_FUNCTION_13_26();
      sub_2173D7844(v315, v284);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v285);
      OUTLINED_FUNCTION_20_25();
      v149 = 3;
      goto LABEL_11;
    case 5u:
      OUTLINED_FUNCTION_3_46();
      sub_2173D77EC(v90, v316);
      v251 = OUTLINED_FUNCTION_57_11();
      v252 = v301;
      sub_2173D789C(v251, v301);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v318 = v90;
      OUTLINED_FUNCTION_45_14(v253, v254);
      v317 = *(v87 + *(v93 + 12));
      OUTLINED_FUNCTION_52_14();
      v319 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v320 = v67;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v252, v255, &qword_27CB24790);
      v256 = OUTLINED_FUNCTION_29_19();
      v257(v256);
      sub_217751DE8();
      sub_217751DE8();
      v258 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v258, v259, v260, v261);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Playlist.init<A>(_:configuration:sharedRelatedItemStore:)();
      v262 = OUTLINED_FUNCTION_64_13();
      v263(v262);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v252, &qword_27CB24790, &unk_21775A220);
      OUTLINED_FUNCTION_14_23();
      sub_2173D7844(v316, v264);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v265);
      OUTLINED_FUNCTION_20_25();
      v149 = 4;
      goto LABEL_11;
    case 6u:
      OUTLINED_FUNCTION_2_49();
      sub_2173D77EC(v90, v317);
      v192 = OUTLINED_FUNCTION_57_11();
      v193 = v304;
      sub_2173D789C(v192, v304);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v318 = v90;
      OUTLINED_FUNCTION_45_14(v194, v195);
      OUTLINED_FUNCTION_49_13();
      v197 = *(v87 + v196);
      v319 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v320 = v197;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v193, v198, &qword_27CB247C0);
      v199 = OUTLINED_FUNCTION_29_19();
      v200(v199);
      sub_217751DE8();
      sub_217751DE8();
      v201 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v201, v202, v203, v204);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      RadioShow.init<A>(_:configuration:sharedRelatedItemStore:)();
      v205 = OUTLINED_FUNCTION_64_13();
      v206(v205);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v193, &qword_27CB247C0, &unk_21779AA10);
      OUTLINED_FUNCTION_21_20();
      sub_2173D7844(v317, v207);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v208);
      OUTLINED_FUNCTION_20_25();
      v149 = 5;
      goto LABEL_11;
    case 7u:
      OUTLINED_FUNCTION_5_38();
      sub_2173D77EC(v90, v318);
      v209 = OUTLINED_FUNCTION_57_11();
      v210 = v307;
      sub_2173D789C(v209, v307);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v317 = v90;
      OUTLINED_FUNCTION_45_14(v211, v212);
      OUTLINED_FUNCTION_49_13();
      v214 = *(v87 + v213);
      v319 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v320 = v214;
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v210, v215, &qword_27CB24778);
      v216 = OUTLINED_FUNCTION_29_19();
      v217(v216);
      sub_217751DE8();
      sub_217751DE8();
      v218 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v218, v219, v220, v221);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      RecordLabel.init<A>(_:configuration:sharedRelatedItemStore:)();
      v222 = OUTLINED_FUNCTION_64_13();
      v223(v222);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v210, &qword_27CB24778, &unk_217758D00);
      OUTLINED_FUNCTION_36_15();
      sub_2173D7844(v318, v224);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v225);
      OUTLINED_FUNCTION_20_25();
      v149 = 6;
      goto LABEL_11;
    case 8u:
      OUTLINED_FUNCTION_1_46();
      sub_2173D77EC(v90, v319);
      v150 = OUTLINED_FUNCTION_57_11();
      v151 = v310;
      sub_2173D789C(v150, v310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v317 = v90;
      OUTLINED_FUNCTION_45_14(v152, v153);
      OUTLINED_FUNCTION_49_13();
      v318 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v320 = *(v87 + v154);
      OUTLINED_FUNCTION_24_19();
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v151, v155, &qword_27CB24748);
      v156 = OUTLINED_FUNCTION_29_19();
      v157(v156);
      sub_217751DE8();
      sub_217751DE8();
      v158 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v158, v159, v160, v161);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Song.init<A>(_:configuration:sharedRelatedItemStore:)();
      v162 = OUTLINED_FUNCTION_64_13();
      v163(v162);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v151, &qword_27CB24748, &unk_217758CD0);
      OUTLINED_FUNCTION_48_12();
      sub_2173D7844(v319, v164);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v165);
      OUTLINED_FUNCTION_20_25();
      v149 = 7;
      goto LABEL_11;
    case 9u:
      OUTLINED_FUNCTION_8_33();
      sub_2173D77EC(v90, v320);
      v226 = OUTLINED_FUNCTION_57_11();
      v227 = v312;
      sub_2173D789C(v226, v312);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      OUTLINED_FUNCTION_42_13();
      v317 = v90;
      LODWORD(v310) = *(v228 + 16);
      v230 = v87 + v229;
      v231 = *(v87 + v229);
      v232 = *(v230 + 8);
      v313 = v233;
      v314 = v231;
      v315 = v232;
      v308 = *(v234 + 44);
      OUTLINED_FUNCTION_80_8(v308);
      OUTLINED_FUNCTION_49_13();
      v236 = *(v87 + v235);
      v318 = type metadata accessor for CatalogSearchRawResponse.TopResult;
      v319 = v236;
      v237 = v309;
      v238 = v227 + *(v309 + 36);
      *v238 = v313;
      *(v238 + 8) = v90;
      *(v238 + 16) = v310;
      v239 = (v227 + *(v237 + 40));
      *v239 = v314;
      v239[1] = v232;
      memcpy((v227 + *(v237 + 44)), (v87 + v308), 0x180uLL);
      OUTLINED_FUNCTION_23_23();
      OUTLINED_FUNCTION_151_4(v227, v240, &qword_27CB24738);
      v241 = OUTLINED_FUNCTION_29_19();
      v242(v241);
      sub_217751DE8();
      sub_217751DE8();
      v243 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v243, v244, v245, v246);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      OUTLINED_FUNCTION_43_7();
      Station.init<A>(_:configuration:sharedRelatedItemStore:)();
      v247 = OUTLINED_FUNCTION_64_13();
      v248(v247);
      sub_2171F0738(v87, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v227, &qword_27CB24738, &qword_217758CC0);
      OUTLINED_FUNCTION_37_14();
      sub_2173D7844(v320, v249);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v250);
      OUTLINED_FUNCTION_20_25();
      v149 = 8;
LABEL_11:
      *(v148 + 56) = v149;
      goto LABEL_12;
    case 0xAu:
      v287 = *(v90 + 1);
      v332[0] = *v90;
      v332[1] = v287;
      *(&v332[1] + 9) = *(v90 + 25);
      v330 = 0;
      v331 = 0xE000000000000000;
      sub_217752AA8();
      OUTLINED_FUNCTION_172_5();
      MEMORY[0x21CEA23B0](0xD000000000000012);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25890, &unk_21775D928);
      OUTLINED_FUNCTION_83_8();
      sub_217752C78();
      v288 = OUTLINED_FUNCTION_171_5();
      MEMORY[0x21CEA23B0](v288);
LABEL_15:
      sub_217752D08();
      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_11_31();
      sub_2173D77EC(v90, v0);
      sub_2173D789C(v0, v83);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v95 = v94[10];
      v96 = v329;
      v97 = v329 + v94[9];
      v98 = *v97;
      v99 = *(v97 + 8);
      LODWORD(v313) = *(v97 + 16);
      v100 = v329 + v95;
      v101 = *(v329 + v95);
      v102 = *(v100 + 8);
      v314 = v98;
      v315 = v101;
      v316 = v102;
      v317 = v99;
      v312 = v94[11];
      OUTLINED_FUNCTION_80_8(v312);
      v103 = *(v96 + v94[12]);
      v318 = *(v96 + v94[13]);
      v104 = v318;
      v105 = v94[15];
      v106 = *(v96 + v94[14]);
      v319 = v106;
      v320 = v103;
      v107 = *(v96 + v105);
      v108 = &v83[v78[9]];
      *v108 = v314;
      *(v108 + 1) = v99;
      v108[16] = v313;
      v109 = &v83[v78[10]];
      *v109 = v315;
      *(v109 + 1) = v102;
      memcpy(&v83[v78[11]], (v96 + v312), 0x180uLL);
      *&v83[v78[12]] = v320;
      *&v83[v78[13]] = v104;
      *&v83[v78[14]] = v106;
      *&v83[v78[15]] = v107;
      sub_21738C4B0(v83, v290, &qword_27CB247F0, &qword_21775D360);
      v110 = v322;
      v112 = v326;
      v111 = v327;
      (*(v322 + 16))(v321, v326, v327);
      sub_217751DE8();
      sub_217751DE8();
      v113 = OUTLINED_FUNCTION_83_8();
      sub_21738C4B0(v113, v114, v115, v116);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      Album.init<A>(_:configuration:sharedRelatedItemStore:)();
      (*(v110 + 8))(v112, v111);
      sub_2171F0738(v96, &qword_27CB24708, &unk_217758C90);
      sub_2171F0738(v83, &qword_27CB247F0, &qword_21775D360);
      OUTLINED_FUNCTION_10_24();
      sub_2173D7844(v0, v117);
      OUTLINED_FUNCTION_15_26();
      sub_2173D7844(v323, v118);
      OUTLINED_FUNCTION_20_25();
      *(v119 + 56) = 0;
LABEL_12:
      OUTLINED_FUNCTION_13();
      return;
  }
}

void MusicCatalogSearchResponse.TopResult.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12();
  a19 = v22;
  a20 = v23;
  v154 = v24;
  v155 = v25;
  v153 = v26;
  v156 = v27;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_150();
  v152 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_27_22(v30, &a17);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_150();
  v150 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24778, &unk_217758D00);
  OUTLINED_FUNCTION_27_22(v33, &a15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_150();
  v149 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  OUTLINED_FUNCTION_27_22(v36, &a13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_150();
  v148 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_27_22(v39, &a12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v42 = &v146 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_167();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24490, &qword_21775A250);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v46);
  v48 = &v146 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50);
  v52 = &v146 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  v56 = &v146 - v55;
  sub_217283E1C(v20, v158);
  switch(v158[56])
  {
    case 1:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Artist.convertToCloudResource<A>(configuration:)();
      sub_217284498(v157);
      OUTLINED_FUNCTION_4_49();
      v117 = v156;
      sub_2173D77EC(v52, v156);
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v118 = v49[10];
      v119 = *&v52[v49[12]];
      v154 = v49[11];
      v155 = v119;
      v120 = v49[14];
      v153 = *&v52[v49[13]];
      v122 = *&v52[v118];
      v121 = *&v52[v118 + 8];
      v123 = *&v52[v120];
      v124 = *&v52[v49[15]];
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v126 = OUTLINED_FUNCTION_111_9(v125);
      *v127 = v122;
      v127[1] = v121;
      v128 = OUTLINED_FUNCTION_134_6(v126);
      memcpy(v128, &v52[v129], 0x180uLL);
      OUTLINED_FUNCTION_110_6();
      *(v117 + v130) = v123;
      *(v117 + *(v42 + 15)) = v124;
      break;
    case 2:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Curator.convertToCloudResource<A>(configuration:)();
      sub_2172842E4(v157);
      OUTLINED_FUNCTION_7_31();
      v88 = v156;
      sub_2173D77EC(v48, v156);
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v89 = v45[10];
      v90 = &v48[v45[9]];
      v91 = *v90;
      v92 = *(v90 + 1);
      v93 = v90[16];
      v94 = *&v48[v45[12]];
      v154 = v45[11];
      v155 = v94;
      v153 = *&v48[v45[13]];
      v96 = *&v48[v89];
      v95 = *&v48[v89 + 8];
      v97 = *&v48[v45[15]];
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v99 = v88 + v98[9];
      *v99 = v91;
      *(v99 + 8) = v92;
      *(v99 + 16) = v93;
      v100 = (v88 + v98[10]);
      *v100 = v96;
      v100[1] = v95;
      memcpy((v88 + v98[11]), &v48[v154], 0x180uLL);
      OUTLINED_FUNCTION_89_8();
      *(v88 + v101) = v97;
      break;
    case 3:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      MusicVideo.convertToCloudResource<A>(configuration:)();
      sub_217283C08(v157);
      OUTLINED_FUNCTION_9_26();
      v102 = v156;
      sub_2173D77EC(v21, v156);
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v103 = v43[10];
      v104 = *(v21 + v43[12]);
      v154 = v43[11];
      v155 = v104;
      v105 = v43[14];
      v153 = *(v21 + v43[13]);
      v107 = *(v21 + v103);
      v106 = *(v21 + v103 + 8);
      v108 = *(v21 + v105);
      v109 = *(v21 + v43[15]);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v111 = OUTLINED_FUNCTION_111_9(v110);
      *v112 = v107;
      v112[1] = v106;
      v113 = OUTLINED_FUNCTION_134_6(v111);
      memcpy(v113, (v21 + v114), 0x180uLL);
      OUTLINED_FUNCTION_110_6();
      *(v102 + v115) = v108;
      *(v102 + *(v42 + 15)) = v109;
      break;
    case 4:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Playlist.convertToCloudResource<A>(configuration:)();
      sub_21726B8C4(v157);
      OUTLINED_FUNCTION_3_46();
      v71 = v156;
      sub_2173D77EC(v42, v156);
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v72 = v147[10];
      v73 = &v42[v147[9]];
      v74 = *v73;
      v75 = *(v73 + 1);
      v76 = v73[16];
      v77 = *&v42[v147[12]];
      v154 = v147[11];
      v155 = v77;
      v78 = v147[14];
      v153 = *&v42[v147[13]];
      v79 = *&v42[v72];
      v80 = *&v42[v72 + 8];
      v81 = *&v42[v78];
      v82 = *&v42[v147[15]];
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v84 = v71 + v83[9];
      *v84 = v74;
      *(v84 + 8) = v75;
      *(v84 + 16) = v76;
      v85 = (v71 + v83[10]);
      *v85 = v79;
      v85[1] = v80;
      v86 = OUTLINED_FUNCTION_134_6(v83);
      memcpy(v86, &v42[v87], 0x180uLL);
      *(v71 + v83[12]) = v155;
      *(v71 + v83[13]) = v153;
      *(v71 + v83[14]) = v81;
      *(v71 + v83[15]) = v82;
      break;
    case 5:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9();
      RadioShow.convertToCloudResource<A>(configuration:)();
      sub_217284394(v157);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v116 = &a13;
      goto LABEL_10;
    case 6:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9();
      RecordLabel.convertToCloudResource<A>(configuration:)();
      sub_217283CC4(v157);
      OUTLINED_FUNCTION_5_38();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v116 = &a15;
      goto LABEL_10;
    case 7:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_93_9();
      Song.convertToCloudResource<A>(configuration:)();
      sub_217283B58(v157);
      OUTLINED_FUNCTION_1_46();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v116 = &a17;
LABEL_10:
      v131 = *(v116 - 32);
      goto LABEL_12;
    case 8:
      OUTLINED_FUNCTION_8_2();
      v53 = v152;
      Station.convertToCloudResource<A>(configuration:)();
      sub_217283DC8(v157);
      OUTLINED_FUNCTION_8_33();
      OUTLINED_FUNCTION_123_8();
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      OUTLINED_FUNCTION_164_4();
      swift_storeEnumTagMultiPayload();
      v131 = v151;
LABEL_12:
      v132 = v131[10];
      v133 = v53 + v131[9];
      v134 = *v133;
      v135 = *(v133 + 1);
      v136 = v133[16];
      v137 = *(v53 + v131[12]);
      v154 = v131[11];
      v155 = v137;
      v138 = v131[14];
      v153 = *(v53 + v131[13]);
      v139 = *(v53 + v132);
      v140 = *(v53 + v132 + 8);
      v141 = *(v53 + v138);
      v142 = *(v53 + v131[15]);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v144 = v49 + v143[9];
      *v144 = v134;
      *(v144 + 1) = v135;
      v144[16] = v136;
      v145 = (v49 + v143[10]);
      *v145 = v139;
      v145[1] = v140;
      memcpy(v49 + v143[11], v53 + v154, 0x180uLL);
      *(v49 + v143[12]) = v155;
      *(v49 + v143[13]) = v153;
      *(v49 + v143[14]) = v141;
      *(v49 + v143[15]) = v142;
      break;
    default:
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_96_8();
      Album.convertToCloudResource<A>(configuration:)();
      sub_21725CE44(v157);
      OUTLINED_FUNCTION_11_31();
      v57 = v156;
      sub_2173D77EC(v56, v156);
      type metadata accessor for CatalogSearchRawResponse.TopResult(0);
      swift_storeEnumTagMultiPayload();
      v58 = v53[10];
      v59 = &v56[v53[9]];
      v60 = *v59;
      v61 = *(v59 + 1);
      v62 = v59[16];
      v63 = *&v56[v53[12]];
      v154 = v53[11];
      v155 = v63;
      v153 = *&v56[v53[13]];
      v65 = *&v56[v58];
      v64 = *&v56[v58 + 8];
      v66 = *&v56[v53[15]];
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
      v68 = v57 + v67[9];
      *v68 = v60;
      *(v68 + 8) = v61;
      *(v68 + 16) = v62;
      v69 = (v57 + v67[10]);
      *v69 = v65;
      v69[1] = v64;
      memcpy((v57 + v67[11]), &v56[v154], 0x180uLL);
      OUTLINED_FUNCTION_89_8();
      *(v57 + v70) = v66;
      break;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t static CatalogSearchRawResponse.TopResult.Placeholder.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_140_0();
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t sub_2173D72DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173D734C()
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

uint64_t sub_2173D7398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173D72DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173D73C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173D78F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173D7400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173D78F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void CatalogSearchRawResponse.TopResult.Placeholder.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270E8, &qword_217768F00);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_167();
  v3 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2173D78F4(v3, v4, v5);
  sub_217751DE8();
  v6 = sub_2177532F8();
  sub_2172E1B18(v6, v7, v8);
  sub_217752F88();

  v9 = OUTLINED_FUNCTION_162_5();
  v10(v9);
  OUTLINED_FUNCTION_170();
}

uint64_t CatalogSearchRawResponse.TopResult.Placeholder.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_58_3();
  sub_217751FF8();
  return sub_217753238();
}

void CatalogSearchRawResponse.TopResult.Placeholder.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB270F8, &qword_217768F08);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2173D78F4(v11, v12, v13);
  v14 = sub_2177532C8();
  if (!v0)
  {
    sub_2172E1C68(v14, v15, v16);
    sub_217752EA8();
    (*(v7 + 8))(v10, v5);
    v17 = v18[1];
    *v4 = v18[0];
    v4[1] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2173D774C(uint64_t a1)
{
  sub_2177531E8();
  sub_217751FF8();
  return sub_217753238();
}

unint64_t sub_2173D7798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB270E0;
  if (!qword_27CB270E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270E0);
  }

  return result;
}

uint64_t sub_2173D77EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

uint64_t sub_2173D7844(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2173D789C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_101();
  v4(v3);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return a2;
}

unint64_t sub_2173D78F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB270F0;
  if (!qword_27CB270F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB270F0);
  }

  return result;
}

unint64_t sub_2173D794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27100;
  if (!qword_27CB27100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27100);
  }

  return result;
}

unint64_t sub_2173D79A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27108;
  if (!qword_27CB27108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27108);
  }

  return result;
}

unint64_t sub_2173D79FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27110;
  if (!qword_27CB27110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27110);
  }

  return result;
}

unint64_t sub_2173D7A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27118;
  if (!qword_27CB27118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27118);
  }

  return result;
}

unint64_t sub_2173D7AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27120;
  if (!qword_27CB27120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27120);
  }

  return result;
}

unint64_t sub_2173D7B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27128;
  if (!qword_27CB27128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27128);
  }

  return result;
}

unint64_t sub_2173D7B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27130;
  if (!qword_27CB27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27130);
  }

  return result;
}

unint64_t sub_2173D7BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27138;
  if (!qword_27CB27138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27138);
  }

  return result;
}

unint64_t sub_2173D7C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27140;
  if (!qword_27CB27140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27140);
  }

  return result;
}

unint64_t sub_2173D7C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27148;
  if (!qword_27CB27148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27148);
  }

  return result;
}

unint64_t sub_2173D7CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27150;
  if (!qword_27CB27150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27150);
  }

  return result;
}

unint64_t sub_2173D7D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27158;
  if (!qword_27CB27158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27158);
  }

  return result;
}

uint64_t sub_2173D7DD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CatalogSearchRawResponse.TopResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2173D7E14(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173D7E4C(a1, a2, a3);
  a1[1] = v4;
  v7 = sub_2173D7EA0(v4, v5, v6);
  a1[2] = v7;
  result = sub_2173D7EF4(v7, v8, v9);
  a1[3] = result;
  return result;
}

unint64_t sub_2173D7E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27170;
  if (!qword_27CB27170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27170);
  }

  return result;
}

unint64_t sub_2173D7EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27178;
  if (!qword_27CB27178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27178);
  }

  return result;
}

unint64_t sub_2173D7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27180;
  if (!qword_27CB27180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27180);
  }

  return result;
}

unint64_t sub_2173D7F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27188;
  if (!qword_27CB27188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27188);
  }

  return result;
}

void sub_2173D7FA0(uint64_t a1)
{
  type metadata accessor for CloudAlbum(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CloudArtist(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CloudCurator(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CloudGenre(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CloudMusicVideo(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CloudPlaylist(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CloudRadioShow(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CloudRecordLabel(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CloudSong(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for CloudStation(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2173D80C8(319, v10, v11);
                      if (v12 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_2173D80C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27CB271A0)
  {
    v4 = sub_2173D8124(0, a2, a3);
    v6 = type metadata accessor for CloudInternalPolymorphicMusicItem(a1, &type metadata for CatalogSearchRawResponse.TopResult.Placeholder, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27CB271A0);
    }
  }
}

unint64_t sub_2173D8124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271A8;
  if (!qword_27CB271A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271A8);
  }

  return result;
}

_BYTE *sub_2173D81D8(_BYTE *result, int a2, int a3)
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

unint64_t sub_2173D82C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271B0;
  if (!qword_27CB271B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271B0);
  }

  return result;
}

unint64_t sub_2173D8320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271B8;
  if (!qword_27CB271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271B8);
  }

  return result;
}

unint64_t sub_2173D8378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271C0;
  if (!qword_27CB271C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271C0);
  }

  return result;
}

unint64_t sub_2173D83D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271C8;
  if (!qword_27CB271C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271C8);
  }

  return result;
}

unint64_t sub_2173D8428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271D0;
  if (!qword_27CB271D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271D0);
  }

  return result;
}

unint64_t sub_2173D8480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271D8;
  if (!qword_27CB271D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271D8);
  }

  return result;
}

unint64_t sub_2173D84D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271E0;
  if (!qword_27CB271E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271E0);
  }

  return result;
}

unint64_t sub_2173D8530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271E8;
  if (!qword_27CB271E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271E8);
  }

  return result;
}

unint64_t sub_2173D8588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271F0;
  if (!qword_27CB271F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271F0);
  }

  return result;
}

unint64_t sub_2173D85E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB271F8;
  if (!qword_27CB271F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB271F8);
  }

  return result;
}

unint64_t sub_2173D8638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27200;
  if (!qword_27CB27200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27200);
  }

  return result;
}

unint64_t sub_2173D8690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27208;
  if (!qword_27CB27208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27208);
  }

  return result;
}

unint64_t sub_2173D86E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27210;
  if (!qword_27CB27210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27210);
  }

  return result;
}

unint64_t sub_2173D8740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27218;
  if (!qword_27CB27218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27218);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x21CEA4360);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_20_25()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  *v2 = *(v0 + 336);
  *(v2 + 16) = v1;
  result = *(v0 + 368);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 384);
  return result;
}

void *OUTLINED_FUNCTION_45_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v4 + 192) = *(a2 + 16);
  v7 = v5 + v2;
  v8 = *(v5 + v2);
  v9 = *(v7 + 8);
  *(v4 + 200) = v3;
  *(v4 + 208) = v8;
  *(v4 + 216) = v9;
  v10 = *(a1 + 44);
  *(v4 + 184) = v10;

  return memcpy((v4 + 720), (v5 + v10), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_72_9()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_81_9()
{

  return sub_217753208();
}

BOOL OUTLINED_FUNCTION_103_8(uint64_t a1)
{
  *(v4 - 136) = v3;
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;

  return static Array<A>.~= infix(_:_:)(a1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_104_6()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_111_9(uint64_t result)
{
  v5 = v4 + *(result + 36);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_113_8()
{
  v2 = v1[1];
  *(v0 + 144) = *v1;
  *(v0 + 160) = v2;
  *(v0 + 169) = *(v1 + 25);
  return *(v0 + 120);
}

uint64_t OUTLINED_FUNCTION_114_5()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 144);
}

uint64_t OUTLINED_FUNCTION_116_10(uint64_t a1)
{

  return sub_2174D37FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_117_10()
{

  return sub_217751DE8();
}

BOOL OUTLINED_FUNCTION_121_8(uint64_t a1)
{
  *(v4 - 136) = v1;
  *(v4 - 128) = v2;
  *(v4 - 120) = v3;

  return static Array<A>.~= infix(_:_:)(a1, (v4 - 136));
}

uint64_t OUTLINED_FUNCTION_122_4()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_123_8()
{
  v3 = *(v1 - 216);

  return sub_2173D77EC(v0, v3);
}

void *OUTLINED_FUNCTION_127_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return Dictionary<>.init(from:skippingValuesFor:)((v7 + 144), v8, a3, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_128_8@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21738C4B0(v4 + a3, v3 + 144, a1, a2);
}

uint64_t OUTLINED_FUNCTION_129_6()
{
  v2 = *(v0 - 152);

  return sub_2171FF30C(v2, v0 - 144);
}

void OUTLINED_FUNCTION_130_7(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = v4;
  *(v5 - 72) = v3;
  *(v2 + 120) = a2;
}

void OUTLINED_FUNCTION_137_5()
{

  JUMPOUT(0x21CEA3550);
}

uint64_t OUTLINED_FUNCTION_147_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_2171F3F0C(&a15, &a10);
}

uint64_t OUTLINED_FUNCTION_148_4()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 192);
}

uint64_t OUTLINED_FUNCTION_150_5(uint64_t a1, uint64_t a2)
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_151_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_21738C4B0(a1, v3, a3, v4);
}

uint64_t OUTLINED_FUNCTION_152_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_2173D77EC(a1, v3);
}

uint64_t OUTLINED_FUNCTION_153_5(uint64_t a1)
{

  return sub_21738C4B0(a1, v1 + 192, v2, v3);
}

void *OUTLINED_FUNCTION_154_5()
{

  return memcpy((v0 + 464), (v0 + 144), 0x140uLL);
}

uint64_t OUTLINED_FUNCTION_155_7(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_158_4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21738C4B0(v4 + a3, v3 + 1920, a1, a2);
}

uint64_t OUTLINED_FUNCTION_159_6()
{

  return sub_217751FF8();
}

uint64_t OUTLINED_FUNCTION_160_5()
{
  v2 = *(v0 + 120);

  return sub_2171FF30C(v2, v0 + 1552);
}

__n128 OUTLINED_FUNCTION_169_5()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 25);
  *(v1 - 119) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_173_6(uint64_t a1)
{
  *(v1 + 136) = v3;
  *(v4 - 72) = v2;
  *(v1 + 120) = a1;

  return type metadata accessor for CloudStation(0);
}

double OUTLINED_FUNCTION_174_4()
{
}

uint64_t OUTLINED_FUNCTION_175_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_2173D789C(a1, v3);
}

uint64_t OUTLINED_FUNCTION_176_6()
{
  v2 = *(v0 - 72);

  return sub_2171FF30C(v2, v0 - 136);
}

uint64_t OUTLINED_FUNCTION_177_4()
{

  return sub_217751DE8();
}

uint64_t sub_2173D90C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2173DA448;

  return static MusicSubscription.currentForBackgroundUse.getter(a1);
}

uint64_t MusicSubscription.ThrowingUpdates.Iterator.next()()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_2173D920C;

  return (sub_2173D98F0)(v2);
}

uint64_t sub_2173D920C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2173D92F0()
{
  OUTLINED_FUNCTION_10();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30);
  v1[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2173D9380()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(*(v0 + 24) + 16);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_32(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_50(v2);

  return sub_2174E5EEC();
}

uint64_t sub_2173D93F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2173D94D8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[4];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v3 = v0[2];
    *(v0[3] + 24) = -16777216;
    *v3 = -16777216;

    OUTLINED_FUNCTION_0_2();

    return v4();
  }

  else
  {
    sub_2173DA2E4(v1);
    OUTLINED_FUNCTION_1_47();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[7] = v6;
    *v6 = v7;
    v8 = OUTLINED_FUNCTION_11_32(v6);

    return v9(v8);
  }
}

uint64_t sub_2173D9608()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2173D9890;
  }

  else
  {
    v5 = sub_2173D970C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2173D970C()
{
  OUTLINED_FUNCTION_30_0();
  v4 = *(v0 + 24);
  v5 = *(v4 + 24);
  if (HIBYTE(v5) == 255)
  {
    if (*(v0 + 75))
    {
      v6 = 0x1000000;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | *(v0 + 72) | (*(v0 + 74) << 16);
LABEL_14:
    v22 = *(v0 + 16);
    *(v4 + 24) = v7;
    *v22 = v7;

    OUTLINED_FUNCTION_0_2();

    return v23();
  }

  *(v0 + 76) = v5;
  v8 = *(v0 + 72);
  v9 = *(v0 + 74);
  v10 = *(v0 + 75);
  *(v0 + 78) = BYTE2(v5);
  *(v0 + 79) = HIBYTE(v5) & 1;
  *(v0 + 82) = v9;
  *(v0 + 80) = v8;
  *(v0 + 83) = v10;
  v11 = sub_2173DA34C(v1, v2, v3);
  v14 = sub_2173DA3A0(v11, v12, v13);
  sub_2173DA3F4(v14, v15, v16);
  if ((sub_217753288() & 1) == 0)
  {
    if (*(v0 + 75))
    {
      v21 = 0x1000000;
    }

    else
    {
      v21 = 0;
    }

    v7 = v21 | *(v0 + 72) | (*(v0 + 74) << 16);
    v4 = *(v0 + 24);
    goto LABEL_14;
  }

  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_7_32(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_2_50(v18);

  return sub_2174E5EEC();
}

uint64_t sub_2173D9890()
{
  OUTLINED_FUNCTION_10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2173D98F0()
{
  OUTLINED_FUNCTION_10();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30);
  v1[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2173D9980()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 40) = *(*(v0 + 24) + 16);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_7_32(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_47(v2);

  return sub_2174E5EEC();
}

uint64_t sub_2173D99F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_6_34();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2173D9AD8()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0[4];
  updated = _s13UpdateTriggerOMa(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, updated) == 1)
  {
    sub_2173DA2E4(v1);
    v3 = v0[3];
    v4 = v0[2];
    *(v3 + 26) = 0;
    *(v3 + 24) = 2;
    *(v4 + 2) = 0;
    *v4 = 2;

    OUTLINED_FUNCTION_0_2();

    return v5();
  }

  else
  {
    sub_2173DA2E4(v1);
    OUTLINED_FUNCTION_1_47();
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    v0[7] = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_11_32(v7);

    return v10(v9);
  }
}

uint64_t sub_2173D9C10()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_2173D9890;
  }

  else
  {
    v5 = sub_2173D9D14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2173D9D14()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 24);
  v2 = *(v1 + 24);
  v3 = v2 | (*(v1 + 26) << 16);
  if (v2 == 2)
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 73);
    v6 = *(v0 + 74);
    goto LABEL_3;
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 73);
  v6 = *(v0 + 74);
  v14 = v4 ^ v3;
  v15 = (v3 & 0x100) == 0;
  v16 = (v3 & 0x10000) == 0;
  if ((v14 & 1) != 0 || v15 == v5 || ((v16 ^ v6) & 1) == 0)
  {
LABEL_3:
    if (v5)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 16);
    if (v6)
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    v10 = HIWORD(v9);
    *(v1 + 26) = v10;
    v11 = v7 | v4;
    *(v1 + 24) = v11;
    *(v8 + 2) = v10;
    *v8 = v11;

    OUTLINED_FUNCTION_0_2();

    return v12();
  }

  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_7_32(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_3_47(v18);

  return sub_2174E5EEC();
}

uint64_t sub_2173D9E40()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2173DA448;

  return MusicSubscription.ThrowingUpdates.Iterator.next()();
}

uint64_t sub_2173D9ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2173D9F9C;

  return (sub_2174E4D44)(a1, a2, a3);
}

uint64_t sub_2173D9F9C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t MusicSubscription.ThrowingUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  _s14UpdateTriggersV8IteratorCMa(0);
  swift_allocObject();
  result = sub_2174E5548();
  *a1 = &unk_217769930;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 26) = 0;
  *(a1 + 24) = 2;
  return result;
}

unint64_t sub_2173DA138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27228;
  if (!qword_27CB27228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27228);
  }

  return result;
}

_BYTE *_s15ThrowingUpdatesVwst(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_2173DA24C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_2173DA28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173DA2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27230, &qword_217769A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2173DA34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27238;
  if (!qword_27CB27238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27238);
  }

  return result;
}

unint64_t sub_2173DA3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27240;
  if (!qword_27CB27240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27240);
  }

  return result;
}

unint64_t sub_2173DA3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE90F8;
  if (!qword_280BE90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE90F8);
  }

  return result;
}

MusicKit::MusicLyrics_optional __swiftcall MusicLyrics.init(rawStorageDictionary:)(Swift::OpaquePointer rawStorageDictionary)
{
  v2 = v1;
  v3 = sub_21729E890();

  sub_2173ACA8C(2, v3);
  if (v50)
  {
    if (OUTLINED_FUNCTION_0_53(v4, v5, v6, MEMORY[0x277D839B0], v7, v8, v9, v10, v45, v47, v49[0]))
    {
      v11 = v45;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    sub_217380914(v49);
    v11 = 2;
  }

  sub_2173ACA8C(1, v3);
  if (v50)
  {
    v19 = OUTLINED_FUNCTION_0_53(v12, v13, v14, MEMORY[0x277D839B0], v15, v16, v17, v18, v45, v47, v49[0]);
    v20 = 256;
    if (!v45)
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 512;
    }
  }

  else
  {
    sub_217380914(v49);
    v21 = 512;
  }

  sub_2173ACA8C(0, v3);
  if (v50)
  {
    v29 = OUTLINED_FUNCTION_0_53(v22, v23, v24, MEMORY[0x277D839B0], v25, v26, v27, v28, v45, v47, v49[0]);
    v30 = 0x10000;
    if (!v45)
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0x20000;
    }
  }

  else
  {
    sub_217380914(v49);
    v31 = 0x20000;
  }

  sub_2173ACA8C(3, v3);

  if (v50)
  {
    LODWORD(v39) = OUTLINED_FUNCTION_0_53(v32, v33, v34, MEMORY[0x277D837D0], v35, v36, v37, v38, v45, v47, v49[0]);
    v43 = v46;
    v44 = v48;
    if (!v39)
    {
      v43 = 0;
      v44 = 0;
    }
  }

  else
  {
    v39 = sub_217380914(v49);
    v43 = 0;
    v44 = 0;
  }

  *v2 = v21 | v11 | v31;
  v2[1] = v43;
  v2[2] = v44;
  result.value.customLyrics.value._object = v41;
  result.value.customLyrics.value._countAndFlagsBits = v40;
  *&result.value.hasLyrics.value = v39;
  result.value.hasCustomLyrics.value = BYTE2(v39);
  result.is_nil = v42;
  return result;
}

uint64_t MusicLyrics.convertToLegacyModelStorageDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);
  sub_2172A5380(a1, a2, a3);
  v46 = sub_217751DC8();
  if (v4 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v42) = v4 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  sub_21729CDD0(v9, 2, v10, v11, v12, v13, v14, v15, v38, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (v5 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v42) = v5 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  sub_21729CDD0(v16, 1, v17, v18, v19, v20, v21, v22, v39, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (v6 == 2)
  {
    OUTLINED_FUNCTION_1_48();
  }

  else
  {
    LOBYTE(v42) = v6 & 1;
  }

  OUTLINED_FUNCTION_2_51();
  sub_21729CDD0(v23, 0, v24, v25, v26, v27, v28, v29, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (v7)
  {
    v30 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = 0;
    v30 = 0;
    v44 = 0;
  }

  v45 = v30;
  sub_217751DE8();
  sub_21729CDD0(&v42, 3, v31, v32, v33, v34, v35, v36, v41, v8, v7, v44, v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  return v46;
}

void MusicLyrics.LegacyModelLyricsPropertyKey.init(rawValue:)(char *a2@<X8>)
{
  v3 = sub_217752DC8();

  v4 = 4;
  if (v3 < 4)
  {
    v4 = v3;
  }

  *a2 = v4;
}

unint64_t MusicLyrics.LegacyModelLyricsPropertyKey.rawValue.getter()
{
  result = 0xD000000000000025;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2173DA838@<X0>(unint64_t *a1@<X8>)
{
  result = MusicLyrics.LegacyModelLyricsPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2173DA870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7F20;
  if (!qword_280BE7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F20);
  }

  return result;
}

unint64_t sub_2173DA8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A5380(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2173DA8F4(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2173DA8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27248;
  if (!qword_27CB27248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27248);
  }

  return result;
}

unint64_t sub_2173DA968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27250;
  if (!qword_27CB27250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27250);
  }

  return result;
}

_BYTE *_s28LegacyModelLyricsPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MusicDataRequest._Source.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_2173DAB50()
{
  result = qword_27CB27258;
  if (!qword_27CB27258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB27260, &qword_217769B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27258);
  }

  return result;
}

unint64_t sub_2173DABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27268;
  if (!qword_27CB27268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27268);
  }

  return result;
}

_BYTE *_s7_SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2173DACE8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t MusicItemTypeValueCollection.catalogSearchableResourceTypes.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
  swift_getWitnessTable();
  sub_2173DB3EC();
  v1 = sub_2177521B8();
  sub_2173DAE08(v1);
  v3 = v2;

  return v3;
}

void sub_2173DAE08(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = 0;
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  v3 = isUniquelyReferenced_nonNull_native + 48;
  v11 = isUniquelyReferenced_nonNull_native + 48;
  v12 = MEMORY[0x277D84F90];
LABEL_2:
  v4 = (v3 + 24 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v7 = *v4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    sub_217751DE8();
    if (!sub_2173DD9E8())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_17();
        sub_2172B199C();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_1_49(v8);
        sub_2172B199C();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v5;
      *(v10 + 48) = v7;
      ++v1;
      v3 = v11;
      goto LABEL_2;
    }

    ++v1;
    v4 += 24;
  }
}

void sub_2173DAF84(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = 0;
  v2 = *(isUniquelyReferenced_nonNull_native + 16);
  v3 = isUniquelyReferenced_nonNull_native + 40;
  v4 = MEMORY[0x277D84F90];
  v17 = isUniquelyReferenced_nonNull_native + 40;
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v5 - 1);
    v6 = *v5;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    sub_217751DE8();
    if (!sub_2171F8728())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_17();
        sub_2172AFF2C(v11, v12, v13, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v14 = OUTLINED_FUNCTION_1_49(v8);
        sub_2172AFF2C(v14, v15, v16, v4);
        v4 = isUniquelyReferenced_nonNull_native;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      ++v1;
      v3 = v17;
      goto LABEL_2;
    }

    ++v1;
    v5 += 2;
  }
}

void sub_2173DB114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = sub_217751DE8();
  v4 = 0;
  v5 = isUniquelyReferenced_nonNull_native + 56;
  v19 = MEMORY[0x277D84F90];
  v18 = isUniquelyReferenced_nonNull_native + 56;
LABEL_2:
  for (i = (v5 + 32 * v4); ; i += 4)
  {
    if (v2 == v4)
    {

      return;
    }

    if (v4 >= v2)
    {
      break;
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_15;
    }

    v8 = *(i - 1);
    v7 = *i;
    v10 = *(i - 3);
    v9 = *(i - 2);
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    sub_217751DE8();
    if (!sub_2173DDBE4())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_17();
        sub_2172B1AC0(v14, v15, v16, v17);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      v12 = *(v19 + 16);
      v11 = *(v19 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2172B1AC0(v11 > 1, v12 + 1, 1, v19);
        v19 = isUniquelyReferenced_nonNull_native;
      }

      *(v19 + 16) = v12 + 1;
      v13 = (v19 + 32 * v12);
      v13[4] = v10;
      v13[5] = v9;
      v13[6] = v8;
      v13[7] = v7;
      ++v4;
      v5 = v18;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t MusicItemTypeValue.catalogSearchableResourceTypes.getter()
{
  if (dynamic_cast_existential_1_conditional(*v0, *v0, &protocol descriptor for CatalogSearchableTypeProviding))
  {
    return (*(v1 + 8))();
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177AD000);
  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000, v4);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2173DB398@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemTypeValue.catalogSearchableResourceTypes.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2173DB3EC()
{
  result = qword_27CB27270;
  if (!qword_27CB27270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB26F98, qword_217768A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27270);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit24CatalogChartsRawResponseV7ResultsVSg(unint64_t *a1)
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

uint64_t sub_2173DB554(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 48))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173DB5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2173DB620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27278;
  if (!qword_27CB27278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27278);
  }

  return result;
}

unint64_t sub_2173DB674(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2173DB6C4(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x69762D636973756DLL;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x73676E6F73;
      break;
    case 4:
      result = 0x7261684379746963;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173DB784(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_217751DE8();
    v6 = OUTLINED_FUNCTION_240();
    sub_217270D2C(v6, v7);
    OUTLINED_FUNCTION_9_27();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[1];
  v9 = a2[1];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    sub_217751DE8();
    v10 = OUTLINED_FUNCTION_240();
    sub_217270D54(v10, v11);
    OUTLINED_FUNCTION_9_27();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_217751DE8();
    v14 = OUTLINED_FUNCTION_240();
    sub_217270FE0(v14, v15);
    OUTLINED_FUNCTION_9_27();
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    sub_217751DE8();
    v18 = OUTLINED_FUNCTION_240();
    sub_217271008(v18, v19);
    OUTLINED_FUNCTION_9_27();
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v20 = a1[4];
  v21 = a2[4];
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    sub_217751DE8();
    v22 = OUTLINED_FUNCTION_240();
    sub_217270FE0(v22, v23);
    OUTLINED_FUNCTION_9_27();
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v24 = a1[5];
  v25 = a2[5];
  if (v24)
  {
    if (v25)
    {
      sub_217751DE8();
      v26 = sub_217270FE0(v24, v25);

      if (v26)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2173DB8E4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272C8, &qword_217769FC8);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCE58(v11, v12, v13);
  sub_2177532F8();
  v40 = *v3;
  HIBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272D8, &qword_217769FD0);
  sub_2173DCEAC();
  v14 = OUTLINED_FUNCTION_1_50();
  OUTLINED_FUNCTION_7_33(v14, v15, v16, v17, v18);
  if (!v2)
  {
    v40 = v3[1];
    HIBYTE(v39) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272F0, &qword_217769FD8);
    sub_2173DCFB4();
    v19 = OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_7_33(v19, v20, v21, v22, v23);
    v40 = v3[2];
    HIBYTE(v39) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27308, &qword_217769FE0);
    sub_2173DD0BC();
    v24 = OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50(v24, v25, v26);
    v40 = v3[3];
    HIBYTE(v39) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27320, &qword_217769FE8);
    sub_2173DD1C4();
    v27 = OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_7_33(v27, v28, v29, v30, v31);
    v40 = v3[4];
    HIBYTE(v39) = 4;
    v32 = OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50(v32, v33, v34);
    v40 = v3[5];
    HIBYTE(v39) = 5;
    v35 = OUTLINED_FUNCTION_1_50();
    OUTLINED_FUNCTION_4_50(v35, v36, v37);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2173DBB28(uint64_t a1)
{
  v2 = v1;
  if (*v2)
  {
    sub_217753208();
    v4 = OUTLINED_FUNCTION_35();
    sub_217281CC0(v4, v5);
  }

  else
  {
    sub_217753208();
  }

  if (v2[1])
  {
    sub_217753208();
    v6 = OUTLINED_FUNCTION_35();
    sub_217281C98(v6, v7);
  }

  else
  {
    sub_217753208();
  }

  if (v2[2])
  {
    sub_217753208();
    v8 = OUTLINED_FUNCTION_35();
    sub_217281AD8(v8, v9);
  }

  else
  {
    sub_217753208();
  }

  if (v2[3])
  {
    sub_217753208();
    v10 = OUTLINED_FUNCTION_35();
    sub_217281AB0(v10, v11);
  }

  else
  {
    sub_217753208();
  }

  if (v2[4])
  {
    sub_217753208();
    v12 = OUTLINED_FUNCTION_35();
    sub_217281AD8(v12, v13);
  }

  else
  {
    sub_217753208();
  }

  v14 = v2[5];
  if (!v14)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217281AD8(a1, v14);
}

uint64_t sub_2173DBC48()
{
  sub_2177531E8();
  sub_2173DBB28(v1);
  return sub_217753238();
}

void sub_2173DBC88(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27338, &qword_21776A000);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCE58(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272D8, &qword_217769FD0);
    v9 = sub_2173DD2CC();
    OUTLINED_FUNCTION_2_52(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB272F0, &qword_217769FD8);
    v10 = sub_2173DD3D4();
    OUTLINED_FUNCTION_2_52(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27308, &qword_217769FE0);
    sub_2173DD4DC();
    sub_217752E58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27320, &qword_217769FE8);
    v11 = sub_2173DD5E4();
    OUTLINED_FUNCTION_2_52(v11);
    sub_217752E58();
    sub_217752E58();
    v12 = OUTLINED_FUNCTION_1_3();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v14;
    a2[1] = v14;
    a2[2] = v14;
    a2[3] = v14;
    a2[4] = v14;
    a2[5] = v14;
  }
}

BOOL sub_2173DC01C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  if (*a1 == 1)
  {
    if (v10 == 1)
    {
      return 1;
    }

    goto LABEL_5;
  }

  if (v10 == 1)
  {
LABEL_5:
    sub_2173DC9A4(a2, v19);
    sub_2173DC9A4(a1, v19);
    sub_2173DC9DC(v3);
    sub_2173DC9DC(v10);
    return 0;
  }

  v19[0] = *a2;
  v19[1] = v9;
  v19[2] = v12;
  v19[3] = v11;
  v19[4] = v14;
  v19[5] = v13;
  v18[0] = v3;
  v18[1] = v4;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v8;
  v18[5] = v7;
  sub_2173DC9A4(a2, v17);
  sub_2173DC9A4(a1, v17);
  v16 = sub_2173DB784(v18, v19);

  sub_2173DCA60(a1);
  return (v16 & 1) != 0;
}

uint64_t sub_2173DC194(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173DC224(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27280, &qword_217769D98);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCA90(v10, v11, v12);
  v13 = sub_2177532F8();
  v14 = v2[1];
  v18[0] = *v2;
  v18[1] = v14;
  v18[2] = v2[2];
  sub_2173DCAE4(v13, v15, v16);
  sub_217752F38();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_2173DC368(uint64_t a1)
{
  if (*v1 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  return sub_2173DBB28(a1);
}

uint64_t sub_2173DC3E0()
{
  v4 = v0[1];
  v5 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_2177531E8();
  if (v5 == 1)
  {
    sub_217753208();
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = v1;
    v10 = v2;
    sub_217753208();
    sub_2173DBB28(v6);
  }

  return sub_217753238();
}

uint64_t sub_2173DC46C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27298, &qword_217769DA0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173DCA90(v6, v7, v8);
  v9 = sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2173DCB38(v9, v10, v11);
  sub_217752E58();
  v12 = OUTLINED_FUNCTION_1_3();
  v13(v12);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  return result;
}

unint64_t sub_2173DC604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2173DB674(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2173DC634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2173DB6C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2173DC668@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2173DB6C0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2173DC6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173DCE58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173DC6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173DCE58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2173DC724@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2173DBC88(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2173DC78C(uint64_t a1)
{
  sub_2177531E8();
  sub_2173DBB28(v2);
  return sub_217753238();
}

uint64_t sub_2173DC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173DC194(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2173DC7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173DCA90(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173DC834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173DCA90(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_2173DC870@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2173DC46C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

BOOL sub_2173DC8CC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_2173DC01C(v7, v8);
}

uint64_t sub_2173DC91C(uint64_t a1)
{
  v5 = v1[1];
  v6 = *v1;
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  sub_2177531E8();
  if (v6 == 1)
  {
    sub_217753208();
  }

  else
  {
    v8 = v6;
    v9 = v5;
    v10 = v2;
    v11 = v3;
    sub_217753208();
    sub_2173DBB28(v7);
  }

  return sub_217753238();
}

double sub_2173DC9DC(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

unint64_t sub_2173DCA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27288;
  if (!qword_27CB27288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27288);
  }

  return result;
}

unint64_t sub_2173DCAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27290;
  if (!qword_27CB27290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27290);
  }

  return result;
}

unint64_t sub_2173DCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB272A0;
  if (!qword_27CB272A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogChartsRawResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_2173DCC38(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2173DCC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2173DCCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB272A8;
  if (!qword_27CB272A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272A8);
  }

  return result;
}

unint64_t sub_2173DCD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB272B0;
  if (!qword_27CB272B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272B0);
  }

  return result;
}

unint64_t sub_2173DCDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB272B8;
  if (!qword_27CB272B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB272B8);
  }

  return result;
}