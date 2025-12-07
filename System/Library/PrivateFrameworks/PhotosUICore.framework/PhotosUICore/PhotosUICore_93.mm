uint64_t sub_1A48162E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A481AD3C(0, &qword_1EB142FE8, sub_1A4818DBC, &type metadata for OneUpSharePlayStreamingVideoItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OneUpSharePlayStreamingVideoItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818DBC();
  v12 = v20;
  sub_1A524ED14();
  if (!v12)
  {
    v13 = v18;
    sub_1A4818B64(&qword_1EB142FF0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, &unk_1A5365DF8);
    v14 = v19;
    sub_1A524E8E4();
    (*(v13 + 8))(v8, v6);
    sub_1A4818E10(v14, v11, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format);
    sub_1A4818E10(v11, v17, type metadata accessor for OneUpSharePlayStreamingVideoItem);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A481659C@<X0>(uint64_t a3@<X8>)
{
  v10[1] = a3;
  v3 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A4818C00(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  sub_1A4818B64(&qword_1EB142FB8, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365E80);
  sub_1A4818B64(&qword_1EB142FC0, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365EA8);
  sub_1A5241CD4();
  sub_1A5240454();
  sub_1A5240424();
  sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
  sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
  sub_1A5241D34();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A481681C(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB142FD8, sub_1A4818DBC, &type metadata for OneUpSharePlayStreamingVideoItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818DBC();
  sub_1A524ED34();
  type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  sub_1A4818B64(&qword_1EB142FE0, type metadata accessor for OneUpSharePlayStreamingVideoItem.Format, &unk_1A5365E20);
  sub_1A524E9D4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A48169C8()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 1635017060;
  }
}

void sub_1A4816A00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53ED260 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A4816AE4(uint64_t a1)
{
  v2 = sub_1A4818E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816B20(uint64_t a1)
{
  v2 = sub_1A4818E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4816B5C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[2] = a5;
  v15[1] = a4;
  sub_1A481AD3C(0, &qword_1EB142FF8, sub_1A4818E78, &type metadata for OneUpSharePlayLivePhotoItem.LivePhotoResource.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4818E78();
  sub_1A524ED34();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_1A3D602A8(a2, a3);
  sub_1A3DC4204();
  v13 = v15[3];
  sub_1A524E9D4();
  sub_1A3C59280(v16, v17);
  if (!v13)
  {
    LOBYTE(v16) = 1;
    sub_1A524E954();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4816D30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A4818FF0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1A4816D80()
{
  if (*v0)
  {
    return 0x7365526F65646976;
  }

  else
  {
    return 0x7365526F746F6870;
  }
}

void sub_1A4816DC0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365526F746F6870 && a2 == 0xED0000656372756FLL;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7365526F65646976 && a2 == 0xED0000656372756FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A4816EA4(uint64_t a1)
{
  v2 = sub_1A4819414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4816EE0(uint64_t a1)
{
  v2 = sub_1A4819414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4816F1C(void *a1)
{
  v3 = v1;
  sub_1A481AD3C(0, &qword_1EB143018, sub_1A4819414, &type metadata for OneUpSharePlayLivePhotoItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4819414();
  sub_1A524ED34();
  v10 = v3[1];
  v19[0] = *v3;
  v19[1] = v10;
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v20 = 0;
  sub_1A4819468(v19, v15);
  sub_1A48194A0();
  sub_1A524E9D4();
  if (!v2)
  {
    sub_1A3C59280(v16, *(&v16 + 1));

    v12 = v3[3];
    v18[0] = v3[2];
    v18[1] = v12;
    v13 = v3[3];
    v16 = v3[2];
    v17 = v13;
    v20 = 1;
    sub_1A4819468(v18, v15);
    sub_1A524E9D4();
  }

  sub_1A3C59280(v16, *(&v16 + 1));

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A4817134@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_1A4817148@<X0>(uint64_t a3@<X8>)
{
  v10[1] = a3;
  v3 = sub_1A5246D14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A4819248(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246C74();
  sub_1A481936C();
  sub_1A48193C0();
  sub_1A5241CD4();
  sub_1A5240454();
  sub_1A5240424();
  sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
  sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
  sub_1A5241D34();
  return (*(v6 + 8))(v8, v5);
}

double sub_1A481735C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1A48194F4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1A48173B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xEE006F6564695667 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F68506576696CLL && a2 == 0xE90000000000006FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A48174DC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1A481AD3C(0, &qword_1EB143080, sub_1A48141EC, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.LivePhotoCodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v3;
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v32 - v4;
  sub_1A481AD3C(0, &qword_1EB143088, sub_1A4814240, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.StreamingVideoCodingKeys, v2);
  v36 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v32 - v6;
  sub_1A481AD3C(0, &qword_1EB143090, sub_1A4814294, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.ImageCodingKeys, v2);
  v8 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  sub_1A481AD3C(0, &qword_1EB143098, sub_1A48142E8, &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent.CodingKeys, v2);
  v12 = v11;
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1A48142E8();
  v15 = v41;
  sub_1A524ED14();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v8;
  v17 = v38;
  v16 = v39;
  v41 = a1;
  v18 = sub_1A524E924();
  v19 = *(v18 + 16);
  if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
  {
    v22 = sub_1A524E4C4();
    swift_allocError();
    v24 = v23;
    sub_1A3FA0828(0);
    *v24 = &type metadata for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v40 + 8))(v14, v12);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return a1;
  }

  if (*(v18 + 32))
  {
    if (v20 == 1)
    {
      v46 = 1;
      sub_1A4814240();
      sub_1A524E844();
      v25 = v40;
      (*(v33 + 8))(v17, v36);
      (*(v25 + 8))(v14, v12);
      swift_unknownObjectRelease();
      a1 = 2;
    }

    else
    {
      v47 = 2;
      sub_1A48141EC();
      sub_1A524E844();
      v27 = v40;
      (*(v35 + 8))(v16, v37);
      (*(v27 + 8))(v14, v12);
      swift_unknownObjectRelease();
      a1 = 3;
    }
  }

  else
  {
    v45 = 0;
    sub_1A4814294();
    sub_1A524E844();
    sub_1A481ADA4();
    v26 = v32;
    sub_1A524E8E4();
    (*(v34 + 8))(v10, v26);
    (*(v40 + 8))(v14, v12);
    swift_unknownObjectRelease();
    if (v43)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29 | v42;
    if (v44)
    {
      v31 = 0x10000;
    }

    else
    {
      v31 = 0;
    }

    a1 = v30 | v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  return a1;
}

uint64_t sub_1A4817B90(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB143078, sub_1A4817DB4, &type metadata for OneUpSharePlayAttachmentAssetMetadata.ImageContentMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817DB4();
  sub_1A524ED14();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v8 = sub_1A524E8B4();
  v16 = 1;
  v9 = sub_1A524E8B4();
  v15 = 2;
  v11 = sub_1A524E874();
  (*(v5 + 8))(v7, v4);
  if (v11 == 2)
  {
    v11 = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v11)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 0xFFFFFFFE | v8 & 1 | v12;
}

unint64_t sub_1A4817DB4()
{
  result = qword_1EB1D6230;
  if (!qword_1EB1D6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6230);
  }

  return result;
}

unint64_t sub_1A4817E08()
{
  result = qword_1EB1D6238;
  if (!qword_1EB1D6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6238);
  }

  return result;
}

unint64_t sub_1A4817E5C()
{
  result = qword_1EB142F40;
  if (!qword_1EB142F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F40);
  }

  return result;
}

uint64_t sub_1A4817EB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A53ED220 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53ED240 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169746170537369 && a2 == 0xEF6F65726574536CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A524EAB4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A4817FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A53ED260 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1A4818108(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_1A481AD3C(0, &qword_1EB143068, sub_1A4817E08, &type metadata for OneUpSharePlayAttachmentAssetMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4817E08();
  sub_1A524ED14();
  if (!v2)
  {
    v18 = 0;
    v13 = sub_1A524E8A4();
    v16 = 1;
    sub_1A481ACE8();
    sub_1A524E8E4();
    LODWORD(v12) = v17;
    v15 = 2;
    v9 = sub_1A524E864();
    v10 = *(v6 + 8);
    v12 = v9;
    v10(v8, v5);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A48183C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A481844C()
{
  result = qword_1EB1D6240;
  if (!qword_1EB1D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6240);
  }

  return result;
}

uint64_t sub_1A48184FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001A53ED280 == a2;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72507265676E6966 && a2 == 0xEB00000000746E69 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A53ED2A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x745373776F6C6C61 && a2 == 0xEF676E696D616572)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1A481867C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1A481AD3C(0, &qword_1EB143060, sub_1A481844C, &type metadata for OneUpSharePlayStreamingVideoItem.Format.MediaItemParameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A481844C();
  sub_1A524ED14();
  if (!v2)
  {
    v18 = 0;
    sub_1A3DC4310();
    sub_1A524E8E4();
    v9 = v16;
    v14 = v17;
    LOBYTE(v16) = 1;
    v10 = sub_1A524E864();
    v13[3] = v11;
    v13[1] = v10;
    LOBYTE(v16) = 2;
    v13[0] = sub_1A524E864();
    v13[2] = v12;
    LOBYTE(v16) = 3;
    sub_1A524E8B4();
    (*(v6 + 8))(v8, v5);
    sub_1A3D602A8(v9, v14);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1A48189C0()
{
  result = qword_1EB1D6248;
  if (!qword_1EB1D6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6248);
  }

  return result;
}

unint64_t sub_1A4818A14()
{
  result = qword_1EB1D6250;
  if (!qword_1EB1D6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6250);
  }

  return result;
}

unint64_t sub_1A4818A68()
{
  result = qword_1EB1D6258;
  if (!qword_1EB1D6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6258);
  }

  return result;
}

unint64_t sub_1A4818ABC()
{
  result = qword_1EB1D6260;
  if (!qword_1EB1D6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6260);
  }

  return result;
}

unint64_t sub_1A4818B10()
{
  result = qword_1EB142F78;
  if (!qword_1EB142F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142F78);
  }

  return result;
}

uint64_t sub_1A4818B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4818BAC()
{
  result = qword_1EB142FA8;
  if (!qword_1EB142FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB142FA8);
  }

  return result;
}

void sub_1A4818C00(uint64_t a1)
{
  if (!qword_1EB142FB0)
  {
    type metadata accessor for OneUpSharePlayStreamingVideoItem(255);
    sub_1A5240454();
    sub_1A5240424();
    sub_1A4818B64(&unk_1EB1391C0, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365E48);
    sub_1A4818B64(&qword_1EB142FB8, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365E80);
    sub_1A4818B64(&qword_1EB142FC0, type metadata accessor for OneUpSharePlayStreamingVideoItem, &unk_1A5365EA8);
    sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
    sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
    v1 = sub_1A5241CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB142FB0);
    }
  }
}

unint64_t sub_1A4818DBC()
{
  result = qword_1EB1D6268;
  if (!qword_1EB1D6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6268);
  }

  return result;
}

uint64_t sub_1A4818E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4818E78()
{
  result = qword_1EB1D6270;
  if (!qword_1EB1D6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D6270);
  }

  return result;
}

uint64_t sub_1A4818ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449616964656DLL && a2 == 0xE90000000000006DLL;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A4818FF0(void *a1)
{
  sub_1A481AD3C(0, &qword_1EB143058, sub_1A4818E78, &type metadata for OneUpSharePlayLivePhotoItem.LivePhotoResource.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1A4818E78();
  sub_1A524ED14();
  if (!v1)
  {
    v13 = 0;
    sub_1A3DC4310();
    sub_1A524E8E4();
    v10 = v12[0];
    v11 = v12[1];
    LOBYTE(v12[0]) = 1;
    sub_1A524E864();
    (*(v5 + 8))(v7, v4);
    sub_1A3D602A8(v10, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

void sub_1A4819248(uint64_t a1)
{
  if (!qword_1EB143000)
  {
    sub_1A5240454();
    sub_1A5240424();
    sub_1A435CB54();
    sub_1A481936C();
    sub_1A48193C0();
    sub_1A4818B64(&qword_1EB142FC8, MEMORY[0x1E6968010], MEMORY[0x1E6967FF0]);
    sub_1A4818B64(&qword_1EB142FD0, MEMORY[0x1E6967F70], MEMORY[0x1E6967F50]);
    v1 = sub_1A5241CE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143000);
    }
  }
}

unint64_t sub_1A481936C()
{
  result = qword_1EB143008;
  if (!qword_1EB143008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143008);
  }

  return result;
}

unint64_t sub_1A48193C0()
{
  result = qword_1EB143010;
  if (!qword_1EB143010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143010);
  }

  return result;
}

unint64_t sub_1A4819414()
{
  result = qword_1EB1D6278[0];
  if (!qword_1EB1D6278[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D6278);
  }

  return result;
}

unint64_t sub_1A48194A0()
{
  result = qword_1EB143020;
  if (!qword_1EB143020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143020);
  }

  return result;
}

uint64_t sub_1A48194F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  sub_1A481AD3C(0, &qword_1EB143048, sub_1A4819414, &type metadata for OneUpSharePlayLivePhotoItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4819414();
  sub_1A524ED14();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  LOBYTE(v23) = 0;
  sub_1A481AC5C();
  sub_1A524E8E4();
  v11 = v27;
  v10 = v28;
  v21 = v29;
  v35 = 1;
  sub_1A524E8E4();
  (*(v9 + 8))(v8, v5);
  v12 = *(&v33 + 1);
  v20 = v33;
  v13 = v34;
  *&v23 = v11;
  *(&v23 + 1) = v10;
  v14 = v21;
  v24 = v21;
  v25 = v33;
  v26 = v34;
  sub_1A481ACB0(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v27 = v11;
  v28 = v10;
  v29 = v14;
  v30 = v20;
  v31 = v12;
  v32 = v13;
  result = sub_1A435CBA8(&v27);
  v16 = v24;
  v17 = v22;
  *v22 = v23;
  v17[1] = v16;
  v18 = v26;
  v17[2] = v25;
  v17[3] = v18;
  return result;
}

uint64_t getEnumTagSinglePayload for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = (a2 + 16776963) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776963) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776963;
        }
      }
    }
  }

  v6 = *a1;
  if (*a1 >= 2u && (v7 = (v6 & 0xFE) + 2147483646, (v7 & 0x7FFFFFFE) != 0))
  {
    return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OneUpSharePlayAttachmentAssetMetadata.AttachmentContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776963) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776963) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v4)
    {
      v5 = ((a2 - 253) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1A481995C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A48199A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A48199FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1A4819A80(uint64_t a1)
{
  result = type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4819AEC(uint64_t a1)
{
  result = sub_1A5240E64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4819B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A4819C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819C84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1A4819CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4819D54(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A4819DB8(uint64_t a1)
{
  if (!qword_1EB143030)
  {
    sub_1A435C204();
    v1 = sub_1A5241C84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143030);
    }
  }
}

unint64_t sub_1A4819EF8()
{
  result = qword_1EB1D6F20[0];
  if (!qword_1EB1D6F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D6F20);
  }

  return result;
}

unint64_t sub_1A4819F50()
{
  result = qword_1EB1D7130[0];
  if (!qword_1EB1D7130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7130);
  }

  return result;
}

unint64_t sub_1A4819FA8()
{
  result = qword_1EB1D7340[0];
  if (!qword_1EB1D7340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7340);
  }

  return result;
}

unint64_t sub_1A481A000()
{
  result = qword_1EB1D7550[0];
  if (!qword_1EB1D7550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7550);
  }

  return result;
}

unint64_t sub_1A481A058()
{
  result = qword_1EB1D7760[0];
  if (!qword_1EB1D7760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7760);
  }

  return result;
}

unint64_t sub_1A481A0B0()
{
  result = qword_1EB1D7A70[0];
  if (!qword_1EB1D7A70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7A70);
  }

  return result;
}

unint64_t sub_1A481A108()
{
  result = qword_1EB1D7C80[0];
  if (!qword_1EB1D7C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7C80);
  }

  return result;
}

unint64_t sub_1A481A160()
{
  result = qword_1EB1D7E90[0];
  if (!qword_1EB1D7E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D7E90);
  }

  return result;
}

unint64_t sub_1A481A1B8()
{
  result = qword_1EB1D80A0[0];
  if (!qword_1EB1D80A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D80A0);
  }

  return result;
}

unint64_t sub_1A481A210()
{
  result = qword_1EB1D82B0[0];
  if (!qword_1EB1D82B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D82B0);
  }

  return result;
}

unint64_t sub_1A481A268()
{
  result = qword_1EB1D84C0[0];
  if (!qword_1EB1D84C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D84C0);
  }

  return result;
}

unint64_t sub_1A481A2C0()
{
  result = qword_1EB1D85D0;
  if (!qword_1EB1D85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D85D0);
  }

  return result;
}

unint64_t sub_1A481A318()
{
  result = qword_1EB1D85D8[0];
  if (!qword_1EB1D85D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D85D8);
  }

  return result;
}

unint64_t sub_1A481A370()
{
  result = qword_1EB1D8660;
  if (!qword_1EB1D8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8660);
  }

  return result;
}

unint64_t sub_1A481A3C8()
{
  result = qword_1EB1D8668[0];
  if (!qword_1EB1D8668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8668);
  }

  return result;
}

unint64_t sub_1A481A420()
{
  result = qword_1EB1D86F0;
  if (!qword_1EB1D86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D86F0);
  }

  return result;
}

unint64_t sub_1A481A478()
{
  result = qword_1EB1D86F8[0];
  if (!qword_1EB1D86F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D86F8);
  }

  return result;
}

unint64_t sub_1A481A4D0()
{
  result = qword_1EB1D8780;
  if (!qword_1EB1D8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8780);
  }

  return result;
}

unint64_t sub_1A481A528()
{
  result = qword_1EB1D8788[0];
  if (!qword_1EB1D8788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8788);
  }

  return result;
}

unint64_t sub_1A481A580()
{
  result = qword_1EB1D8810;
  if (!qword_1EB1D8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8810);
  }

  return result;
}

unint64_t sub_1A481A5D8()
{
  result = qword_1EB1D8818[0];
  if (!qword_1EB1D8818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8818);
  }

  return result;
}

unint64_t sub_1A481A630()
{
  result = qword_1EB1D88A0;
  if (!qword_1EB1D88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D88A0);
  }

  return result;
}

unint64_t sub_1A481A688()
{
  result = qword_1EB1D88A8[0];
  if (!qword_1EB1D88A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D88A8);
  }

  return result;
}

unint64_t sub_1A481A6E0()
{
  result = qword_1EB1D8930;
  if (!qword_1EB1D8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8930);
  }

  return result;
}

unint64_t sub_1A481A738()
{
  result = qword_1EB1D8938[0];
  if (!qword_1EB1D8938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8938);
  }

  return result;
}

unint64_t sub_1A481A790()
{
  result = qword_1EB1D89C0;
  if (!qword_1EB1D89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D89C0);
  }

  return result;
}

unint64_t sub_1A481A7E8()
{
  result = qword_1EB1D89C8[0];
  if (!qword_1EB1D89C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D89C8);
  }

  return result;
}

unint64_t sub_1A481A840()
{
  result = qword_1EB1D8A50;
  if (!qword_1EB1D8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8A50);
  }

  return result;
}

unint64_t sub_1A481A898()
{
  result = qword_1EB1D8A58[0];
  if (!qword_1EB1D8A58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8A58);
  }

  return result;
}

unint64_t sub_1A481A8F0()
{
  result = qword_1EB1D8AE0;
  if (!qword_1EB1D8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8AE0);
  }

  return result;
}

unint64_t sub_1A481A948()
{
  result = qword_1EB1D8AE8[0];
  if (!qword_1EB1D8AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8AE8);
  }

  return result;
}

unint64_t sub_1A481A9A0()
{
  result = qword_1EB1D8B70;
  if (!qword_1EB1D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8B70);
  }

  return result;
}

unint64_t sub_1A481A9F8()
{
  result = qword_1EB1D8B78;
  if (!qword_1EB1D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8B78);
  }

  return result;
}

unint64_t sub_1A481AA50()
{
  result = qword_1EB1D8C00;
  if (!qword_1EB1D8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8C00);
  }

  return result;
}

unint64_t sub_1A481AAA8()
{
  result = qword_1EB1D8C08[0];
  if (!qword_1EB1D8C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8C08);
  }

  return result;
}

unint64_t sub_1A481AB00()
{
  result = qword_1EB1D8C90;
  if (!qword_1EB1D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8C90);
  }

  return result;
}

unint64_t sub_1A481AB58()
{
  result = qword_1EB1D8C98[0];
  if (!qword_1EB1D8C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8C98);
  }

  return result;
}

unint64_t sub_1A481ABB0()
{
  result = qword_1EB1D8D20;
  if (!qword_1EB1D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D8D20);
  }

  return result;
}

unint64_t sub_1A481AC08()
{
  result = qword_1EB1D8D28[0];
  if (!qword_1EB1D8D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1D8D28);
  }

  return result;
}

unint64_t sub_1A481AC5C()
{
  result = qword_1EB143050;
  if (!qword_1EB143050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143050);
  }

  return result;
}

unint64_t sub_1A481ACE8()
{
  result = qword_1EB143070;
  if (!qword_1EB143070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143070);
  }

  return result;
}

void sub_1A481AD3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A481ADA4()
{
  result = qword_1EB1430A0;
  if (!qword_1EB1430A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1430A0);
  }

  return result;
}

void sub_1A481AE10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = v8;
  v18 = objc_allocWithZone(v9);
  sub_1A481D2B4(a1, a2, a3 & 1, a4, a5 & 1, a6, a7, a8);
}

uint64_t sub_1A481B060@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A481B184(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1A524DF24();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A481B2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1A3D96DF8();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t sub_1A481B320(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1A524EEA4();
}

uint64_t sub_1A481B380(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t sub_1A481B3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t sub_1A481B450(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t sub_1A481B4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A481B524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t sub_1A481B58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t sub_1A481B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1A3D96DF8();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t sub_1A481B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A481B748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6A108](a1, a2, WitnessTable);
}

void sub_1A481B980()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v10 = 1;
  v4 = *((v2 & v1) + 0xA0);
  v7 = *(v3 + 96);
  v8 = *(v3 + 80);
  swift_beginAccess();
  v9[0] = v8;
  v9[1] = v7;
  v5 = type metadata accessor for HighlightsBodyLayout.PreInvalidatableEntities(0, v9);
  WitnessTable = swift_getWitnessTable();
  PXGLayout.invalidate<A>(updateFlags:with:)(v0 + v4, &v10, v5, WitnessTable);
}

void sub_1A481BA6C()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1A524DF24();
  v18[10] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v25 = v18 - v5;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v6);
  v18[15] = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v18[14] = v18 - v9;
  v30 = v3;
  v18[5] = *(*((v2 & v3) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = v18 - v11;
  v29 = sub_1A52413E4();
  v21 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4(0);
  v23 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v27 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A52414C4();
  v18[8] = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v22 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18[7] = v18 - v17;
  sub_1A5245E94();
}

id sub_1A481C9B4()
{
  v1 = v0;
  do
  {
    v2 = v1;
    v1 = [v1 superlayout];

    if (!v1)
    {
      break;
    }

    objc_opt_self();
  }

  while (!swift_dynamicCastObjCClass());
  return v1;
}

double sub_1A481CA2C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a1;
  v9 = sub_1A481D7D4(a2);

  return v9;
}

void sub_1A481CAA0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1A481D834(a4);
}

id sub_1A481CB04()
{
  sub_1A3D9B420(&v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(&v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(&v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A481CC34(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A481DE1C();
}

id sub_1A481CD44()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for HighlightsBodyLayout(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1A481CDBC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);
  (*(*(*((v4 & v3) + 0x60) - 8) + 8))(&a1[*((*v2 & *a1) + 0x88)], *((v4 & v3) + 0x60));

  v5 = *((*v2 & *a1) + 0xA8);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  return swift_unknownObjectRelease();
}

id sub_1A481D060()
{
  v1 = sub_1A481D128();
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_cachedLayoutGenerator;
  v3 = *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_cachedLayoutGenerator];
  if (v3)
  {
    v4 = v3;
    [v4 setMetrics_];
    v5 = v4;
  }

  else
  {
    v6 = [objc_allocWithZone(off_1E7721740) initWithMetrics_];
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  [v5 setItemCount_];

  return v5;
}

id sub_1A481D128()
{
  [v0 referenceSize];
  v2 = (v1 + -20.0 + -20.0 + 10.0) / *&v0[OBJC_IVAR____TtC12PhotosUICoreP33_2FB71D9C7E23262EADDD20DCB32B093624GridSublayoutComposition_numberOfColumns] + -10.0;
  v3 = [objc_allocWithZone(off_1E7721748) init];
  [v0 referenceSize];
  [v3 setReferenceSize_];

  [v3 setAxis_];
  [v3 setContentInsets_];
  [v3 setItemSize_];
  [v3 setInterItemSpacing_];
  return v3;
}

id sub_1A481D270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GridSublayoutComposition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A481D2B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v12 = *v8;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40] & *v8;
  v16 = &v8[*(v15 + 0xA0)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  v17 = *((*v13 & *v8) + 0xA8);
  v24 = a3 & 1;
  v18 = a5 & 1;
  v19 = *(v15 + 96);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(&v8[v17], 1, 1, AssociatedTypeWitness);
  v21 = &v8[*((*v13 & *v8) + 0xB0)];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v8[*((*v13 & *v8) + 0x70)] = a1;
  (*(*(*((v14 & v12) + 0x58) - 8) + 16))(&v8[*((*v13 & *v8) + 0x78)], a2, *((v14 & v12) + 0x58));
  v8[*((*v13 & *v8) + 0x80)] = v24;
  (*(*(v19 - 8) + 16))(&v8[*((*v13 & *v8) + 0x88)], a4, v19);
  v22 = &v8[*((*v13 & *v8) + 0x90)];
  *v22 = v18;
  *(v22 + 1) = a6;
  *(v22 + 2) = a7;
  *(v22 + 3) = a8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A481D834(uint64_t a1)
{
  v16[8] = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v16[4] = *((*MEMORY[0x1E69E7D40] & v2) + 0x68);
  v16[6] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1A524DF24();
  v16[1] = *(v6 - 8);
  v16[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16[7] = v16 - v7;
  v16[5] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v16[3] = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v18 = v16 - v11;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v12);
  v17 = *((v3 & v2) + 0x58);
  v16[9] = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16[0] = v16 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  sub_1A5245904();
}

uint64_t sub_1A481DEEC(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      result = sub_1A524DF24();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A481E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A481E0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A481E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v17 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v18 = *(v17 + 32);
  v19 = *MEMORY[0x1E697E7D0];
  v20 = sub_1A5248714();
  v21 = *(v20 - 8);
  (*(v21 + 104))(&a9[v18], v19, v20);
  v22 = *(v17 + 36);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  result = (*(v21 + 40))(&a9[v18], a11, v20);
  *&a9[v22] = a10;
  return result;
}

uint64_t sub_1A481E278@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697E7D0];
  v3 = sub_1A5248714();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A481E2EC(uint64_t a1, uint64_t a2)
{
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A481E380(uint64_t a1)
{
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A481E40C()
{
  v0 = sub_1A5248714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_1EB1EBF88);
  v5 = __swift_project_value_buffer(v4, qword_1EB1EBF88);
  v6 = *MEMORY[0x1E697E7D0];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v8 = *(v4 + 32);
  v7((v5 + v8), v6, v0);
  v9 = *(v4 + 36);
  *(v5 + v9) = 0x3FF0000000000000;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;

  *(v5 + 48) = 0;
  *(v5 + 56) = 0;

  result = (*(v1 + 40))(v5 + v8, v3, v0);
  *(v5 + v9) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1A481E58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A481E5F0(uint64_t a1)
{
  if (v1[1])
  {
    sub_1A524ECB4();
    sub_1A524C794();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524ECB4();
    if (v1[3])
    {
LABEL_3:
      sub_1A524ECB4();
      sub_1A524C794();
      if (v1[5])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1A524ECB4();
      if (v1[7])
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  sub_1A524ECB4();
  if (!v1[5])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1A524ECB4();
  sub_1A524C794();
  if (v1[7])
  {
LABEL_5:
    sub_1A524ECB4();
    sub_1A524C794();
    goto LABEL_10;
  }

LABEL_9:
  sub_1A524ECB4();
LABEL_10:
  v2 = type metadata accessor for ShareParticipantImageConfiguration(0);
  sub_1A5248714();
  sub_1A4822070(&qword_1EB13EF20, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F0]);
  sub_1A524C4B4();
  v3 = *(v1 + *(v2 + 36));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v3);
}

void sub_1A481E794()
{
  if (!*(v0 + 8))
  {
    if (*(v0 + 40))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A481E80C()
{
  sub_1A524EC94();
  sub_1A481E5F0(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A481E850(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A481E5F0(v2);
  return sub_1A524ECE4();
}

void sub_1A481E890()
{
  sub_1A4821B14(0);
  type metadata accessor for ShareParticipantImageConfiguration(0);
  sub_1A4822070(&qword_1EB143158, type metadata accessor for ShareParticipantImageConfiguration, &unk_1A5367498);
  v0 = sub_1A3DBB130();
  sub_1A3DBB140(sub_1A481E928, 0, v0);
}

uint64_t sub_1A481E92C@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB1D9138 != -1)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a6;
    v12 = a5;
    swift_once();
    a1 = v8;
    a5 = v12;
    a6 = v11;
    a2 = v9;
    a3 = v10;
  }

  result = sub_1A3DBB330(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

void sub_1A481E9C8()
{
  if (qword_1EB1D9138 != -1)
  {
    swift_once();
  }

  sub_1A3DBB71C();
}

void sub_1A481EA30()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A481EAAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

double sub_1A481EB4C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 176))(v4);

    return result;
  }

  v1[2] = 0;

  return result;
}

uint64_t (*sub_1A481EC74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore42ShareParticipantImageConfigurationsFetcher___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4822070(&unk_1EB1430C0, type metadata accessor for ShareParticipantImageConfigurationsFetcher, &unk_1A5367580);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A481EDB0;
}

void sub_1A481EDB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A481EE44(void *a1)
{
  v2 = swift_allocObject();
  sub_1A481EE84(a1);
  return v2;
}

uint64_t sub_1A481EE84(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  sub_1A5241604();
  *(v2 + 24) = a1;
  v10 = qword_1EB1D9148;
  v17 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB1D9150;
  aBlock[4] = sub_1A48217D4;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_280;
  v12 = _Block_copy(aBlock);
  v13 = v11;

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A4822070(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v14 = MEMORY[0x1E69E7F60];
  sub_1A48217D8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AF4C(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v12);
  _Block_release(v12);

  (*(v20 + 8))(v6, v4);
  (*(v18 + 8))(v9, v19);

  return v2;
}

uint64_t sub_1A481F1B8()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4822070(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A48217D8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AF4C(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1D9150 = result;
  return result;
}

void sub_1A481F43C()
{
  v2 = sub_1A524BEE4();
  v244 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v242 = &v233 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1A524BF64();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = &v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48217D8(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v260 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v233 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v261 = &v233 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v259 = &v233 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v264 = &v233 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v233 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v263 = &v233 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v253 = &v233 - v22;
  v267 = sub_1A5248714();
  v256 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v250 = (&v233 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v265 = &v233 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v255 = &v233 - v27;
  v268 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v262 = *(v268 - 8);
  MEMORY[0x1EEE9AC00](v268);
  v29 = &v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v233 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v233 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v254 = &v233 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v266 = &v233 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v237 = &v233 - v41;
  v271 = MEMORY[0x1E69E7CC0];
  v239 = v0;
  v42 = *(v0 + 24);
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v45 = v42;
    v235 = [v44 objectID];
    if (v235)
    {
      v234 = v45;
      v46 = [v44 cloudOwnerEmail];
      if (v46)
      {
        v47 = v46;
        v48 = sub_1A524C674();
        v264 = v49;
        v265 = v48;
      }

      else
      {
        v264 = 0;
        v265 = 0;
      }

      v79 = [v44 cloudOwnerPhone];
      if (v79)
      {
        v80 = v79;
        v263 = sub_1A524C674();
        v261 = v81;
      }

      else
      {
        v263 = 0;
        v261 = 0;
      }

      v236 = v2;
      v82 = [v44 cloudOwnerFirstName];
      if (v82)
      {
        v83 = v82;
        v84 = sub_1A524C674();
        v259 = v85;
        v260 = v84;
      }

      else
      {
        v259 = 0;
        v260 = 0;
      }

      v86 = [v44 cloudOwnerLastName];
      if (v86)
      {
        v87 = v86;
        v258 = sub_1A524C674();
        v257 = v88;
      }

      else
      {
        v258 = 0;
        v257 = 0;
      }

      v1 = *MEMORY[0x1E697E7D0];
      v89 = v256;
      v18 = v256 + 104;
      v90 = *(v256 + 104);
      v91 = v255;
      v92 = v267;
      v90(v255, v1, v267);
      v93 = v268;
      v94 = *(v268 + 32);
      v35 = v237;
      LODWORD(v253) = v1;
      v252 = v18;
      v251 = v90;
      v90(&v237[v94], v1, v92);
      v95 = *(v93 + 36);
      v96 = v264;
      *v35 = v265;
      *(v35 + 1) = v96;
      v98 = v260;
      v97 = v261;
      *(v35 + 2) = v263;
      *(v35 + 3) = v97;
      v99 = v259;
      *(v35 + 4) = v98;
      *(v35 + 5) = v99;
      v100 = v257;
      *(v35 + 6) = v258;
      *(v35 + 7) = v100;
      v101 = *(v89 + 40);
      v256 = v89 + 40;
      v250 = v101;
      v101(&v35[v94], v91, v92);
      *&v35[v95] = 0x3FF0000000000000;
      sub_1A481E58C(v35, v266);
      v102 = MEMORY[0x1E69E7CC0];
      v9 = sub_1A422E4F8(0, 1, 1, MEMORY[0x1E69E7CC0], v103);
      v105 = *(v9 + 16);
      v104 = *(v9 + 24);
      v106 = v105 + 1;
      if (v105 >= v104 >> 1)
      {
        goto LABEL_122;
      }

      while (1)
      {
        v2 = v236;
        *(v9 + 16) = v106;
        v249 = ((*(v262 + 80) + 32) & ~*(v262 + 80));
        v248 = *(v262 + 72);
        sub_1A422EBBC(v266, v249 + v9 + v248 * v105, v60);
        v271 = v9;
        v107 = [v44 photoLibrary];
        v106 = v234;

        if (!v107)
        {
          break;
        }

        v108 = [v107 managedObjectContextForCurrentQueueQoS];

        v59 = v235;
        v233 = v108;
        v109 = PXSharedAlbumsParticipantsForAlbumWithObjectID(v235, 0, v108);
        if (!v109)
        {
          goto LABEL_126;
        }

        v110 = v109;
        sub_1A3C52C70(0, &qword_1EB12C1B0, off_1E771F698);
        v111 = sub_1A524CA34();

        v112 = v111;
        if (v111 >> 62)
        {
          v225 = v111;
          v29 = sub_1A524E2B4();
          v112 = v225;
          if (!v29)
          {
LABEL_124:

            v44 = MEMORY[0x1E69E7CC0];
LABEL_125:
            sub_1A4820E5C(v44);
            v2 = v236;
LABEL_126:

            sub_1A48220B8(v237, type metadata accessor for ShareParticipantImageConfiguration);
            goto LABEL_127;
          }
        }

        else
        {
          v29 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v29)
          {
            goto LABEL_124;
          }
        }

        v9 = v112;
        aBlock[0] = v102;
        v58 = aBlock;
        sub_1A4821174(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          __break(1u);
          goto LABEL_131;
        }

        v102 = 0;
        v44 = aBlock[0];
        v113 = v9;
        v247 = (v9 & 0xC000000000000001);
        v238 = v9 & 0xFFFFFFFFFFFFFF8;
        v246 = v9;
        v245 = v29;
        v104 = &v274;
        v35 = v255;
        v114 = v267;
        while (1)
        {
          v105 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          if (v247)
          {
            v115 = MEMORY[0x1A59097F0](v102, v113);
          }

          else
          {
            v104 = *(v238 + 16);
            if (v102 >= v104)
            {
              goto LABEL_121;
            }

            v115 = v113[v102 + 4];
          }

          v116 = v115;
          v117 = [v115 emailAddressString];
          if (v117)
          {
            v118 = v117;
            v119 = sub_1A524C674();
            v261 = v120;
            v262 = v119;
          }

          else
          {
            v261 = 0;
            v262 = 0;
          }

          v121 = [v116 phoneNumberString];
          if (v121)
          {
            v122 = v121;
            v123 = sub_1A524C674();
            v259 = v124;
            v260 = v123;
          }

          else
          {
            v259 = 0;
            v260 = 0;
          }

          v125 = [v116 firstName];
          if (v125)
          {
            v126 = v125;
            v258 = sub_1A524C674();
            v257 = v127;
          }

          else
          {
            v258 = 0;
            v257 = 0;
          }

          v128 = [v116 lastName];
          v265 = v44;
          v266 = v102;
          v263 = v116;
          v264 = (v102 + 1);
          if (v128)
          {
            v129 = v128;
            v130 = sub_1A524C674();
            v132 = v131;
          }

          else
          {
            v130 = 0;
            v132 = 0;
          }

          v133 = v253;
          v1 = v252;
          v134 = v251;
          v251(v35, v253, v114);
          v135 = v268;
          v18 = *(v268 + 32);
          v136 = v254;
          v134(&v254[v18], v133, v114);
          v137 = *(v135 + 36);
          v138 = v261;
          *v136 = v262;
          *(v136 + 1) = v138;
          v139 = v259;
          *(v136 + 2) = v260;
          *(v136 + 3) = v139;
          v140 = v257;
          *(v136 + 4) = v258;
          *(v136 + 5) = v140;
          *(v136 + 6) = v130;
          *(v136 + 7) = v132;
          v250(&v136[v18], v35, v114);

          *&v136[v137] = 0x3FF0000000000000;
          v44 = v265;
          aBlock[0] = v265;
          v106 = *(v265 + 2);
          v142 = *(v265 + 3);
          v9 = v106 + 1;
          if (v106 >= v142 >> 1)
          {
            sub_1A4821174((v142 > 1), v106 + 1, 1);
            v136 = v254;
            v44 = aBlock[0];
          }

          v44[2] = v9;
          sub_1A422EBBC(v136, v249 + v44 + v106 * v248, v141);
          v102 = v266 + 1;
          v104 = &v270;
          v113 = v246;
          if (v264 == v245)
          {

            v106 = v234;
            v59 = v235;
            goto LABEL_125;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        v9 = sub_1A422E4F8((v104 > 1), v106, 1, v9, v60);
      }

      __break(1u);
      goto LABEL_135;
    }
  }

  v270 = &unk_1F1B0E9A0;
  v50 = swift_dynamicCastObjCProtocolConditional();
  if (!v50)
  {
    sub_1A48217D8(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
    v66 = (*(v262 + 80) + 32) & ~*(v262 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1A52F8E10;
    if (qword_1EB1D9130 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v268, qword_1EB1EBF88);
    swift_beginAccess();
    sub_1A481E58C(v68, v67 + v66);
    v271 = v67;
LABEL_127:
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v226 = sub_1A524D474();
    v227 = v271;
    v228 = swift_allocObject();
    *(v228 + 16) = v239;
    *(v228 + 24) = v227;
    aBlock[4] = sub_1A4821AC0;
    aBlock[5] = v228;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_14_7;
    v229 = _Block_copy(aBlock);

    v230 = v240;
    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A4822070(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v231 = MEMORY[0x1E69E7F60];
    sub_1A48217D8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AF4C(&qword_1EB12B1B0, &qword_1EB12B1C0, v231);
    v232 = v242;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v230, v232, v229);
    _Block_release(v229);

    (*(v244 + 8))(v232, v2);
    (*(v241 + 8))(v230, v243);
    return;
  }

  v51 = v50;
  v248 = v42;
  v52 = [v248 photoLibrary];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 librarySpecificFetchOptions];

    v55 = v54;
    v56 = [objc_opt_self() fetchParticipantsInShare:v51 options:v54];
    v57 = [v56 fetchedObjects];
    if (v57)
    {
      v58 = v57;
      v246 = v56;
      v247 = v55;
      sub_1A3C52C70(0, &qword_1EB1209C8, 0x1E6978AC0);
      v59 = sub_1A524CA34();

      aBlock[0] = MEMORY[0x1E69E7CC0];
      if (v59 >> 62)
      {
        v61 = sub_1A524E2B4();
      }

      else
      {
        v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v257 = v9;
      v266 = v29;
      v255 = v32;
      if (!v61)
      {

        v249 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v18 = MEMORY[0x1E69E7CC0];
        v59 = v261;
        goto LABEL_88;
      }

      v254 = v35;
      v62 = &v273;
      v252 = v18;
      if (v61 >= 1)
      {
        v63 = 0;
        v1 = 0;
        v9 = v59 & 0xC000000000000001;
        v18 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v9)
          {
            v64 = MEMORY[0x1A59097F0](v1, v59);
          }

          else
          {
            v64 = *(v59 + 8 * v1 + 32);
          }

          v58 = v64;
          if ([v64 role] == 1)
          {

            v63 = v58;
          }

          else
          {
            v65 = v58;
            v58 = aBlock;
            MEMORY[0x1A5907D70]();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
              v29 = v266;
            }

            sub_1A524CAE4();

            v18 = aBlock[0];
          }

          ++v1;
        }

        while (v61 != v1);

        if (!v63)
        {
          v249 = 0;
          v35 = MEMORY[0x1E69E7CC0];
          v59 = v261;
          goto LABEL_88;
        }

        v69 = *MEMORY[0x1E697E7D0];
        v70 = *(v256 + 104);
        v71 = v267;
        v70(v265, v69, v267);
        v72 = *(v268 + 32);
        v73 = v254;
        v70(v72 + v254, v69, v71);
        v249 = v63;
        v74 = [v249 emailAddress];
        if (v74)
        {
          v75 = v74;
          v76 = sub_1A524C674();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *v73 = v76;
        v73[1] = v78;
        v143 = [v249 phoneNumber];
        if (v143)
        {
          v144 = v143;
          v145 = sub_1A524C674();
          v147 = v146;
        }

        else
        {
          v145 = 0;
          v147 = 0;
        }

        v73[2] = v145;
        v73[3] = v147;
        v148 = [v249 nameComponents];
        v258 = v18;
        v251 = v72;
        if (v148)
        {
          v149 = v263;
          v150 = v148;
          sub_1A5240A14();

          v151 = 0;
        }

        else
        {
          v151 = 1;
          v149 = v263;
        }

        v152 = sub_1A5240A24();
        v153 = *(v152 - 8);
        v154 = *(v153 + 56);
        v154(v149, v151, 1, v152);
        v155 = v253;
        sub_1A481E2EC(v149, v253);
        v156 = *(v153 + 48);
        if (v156(v155, 1, v152) == 1)
        {
          sub_1A481E380(v155);
          v157 = 0;
          v158 = 0;
        }

        else
        {
          v157 = sub_1A52409D4();
          v158 = v159;
          (*(v153 + 8))(v155, v152);
        }

        v160 = v254;
        *(v254 + 4) = v157;
        *(v160 + 5) = v158;
        v161 = [v249 nameComponents];
        if (v161)
        {
          v162 = v264;
          v163 = v161;
          sub_1A5240A14();

          v164 = 0;
        }

        else
        {
          v164 = 1;
          v162 = v264;
        }

        v154(v162, v164, 1, v152);
        v165 = v252;
        sub_1A481E2EC(v162, v252);
        if (v156(v165, 1, v152) == 1)
        {

          sub_1A481E380(v165);
          v166 = 0;
          v167 = 0;
        }

        else
        {
          v166 = sub_1A52409E4();
          v167 = v168;

          (*(v153 + 8))(v165, v152);
        }

        v59 = v261;
        v169 = v265;
        v29 = v266;
        v18 = v258;
        v1 = v254;
        v170 = v251;
        v171 = v267;
        v172 = *(v268 + 36);
        *(v254 + 6) = v166;
        *(v1 + 56) = v167;
        v173 = (*(v256 + 40))(v170 + v1, v169, v171);
        *(v1 + v172) = 0x3FF0000000000000;
        v35 = sub_1A422E4F8(0, 1, 1, MEMORY[0x1E69E7CC0], v173);
        v9 = *(v35 + 2);
        v62 = *(v35 + 3);
        v58 = (v9 + 1);
        if (v9 < v62 >> 1)
        {
          goto LABEL_87;
        }

        goto LABEL_133;
      }

LABEL_131:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_133:
        v35 = sub_1A422E4F8((v62 > 1), v58, 1, v35, v60);
LABEL_87:

        *(v35 + 2) = v58;
        sub_1A422EBBC(v1, &v35[((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v9], v174);
        v271 = v35;
LABEL_88:
        v236 = v2;
        v175 = v18 >> 62 ? sub_1A524E2B4() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v62 = &v272;
        v2 = v250;
        if (!v175)
        {
          break;
        }

        if (v175 >= 1)
        {
          v176 = 0;
          v253 = v18 & 0xC000000000000001;
          LODWORD(v252) = *MEMORY[0x1E697E7D0];
          v251 = (v256 + 104);
          v256 += 40;
          v258 = v18;
          v254 = v175;
          do
          {
            v264 = v176;
            if (v253)
            {
              v177 = MEMORY[0x1A59097F0](v176, v18);
            }

            else
            {
              v177 = *(v18 + 8 * v176 + 32);
            }

            v178 = v177;
            v265 = v35;
            v179 = *v251;
            v180 = v252;
            v181 = v267;
            (*v251)(v2, v252, v267);
            v263 = *(v268 + 32);
            v179(v29 + v263, v180, v181);
            v182 = v178;
            v183 = [v182 emailAddress];
            if (v183)
            {
              v184 = v183;
              v185 = sub_1A524C674();
              v187 = v186;
            }

            else
            {
              v185 = 0;
              v187 = 0;
            }

            *v29 = v185;
            *(v29 + 8) = v187;
            v188 = [v182 phoneNumber];
            if (v188)
            {
              v189 = v188;
              v190 = sub_1A524C674();
              v192 = v191;
            }

            else
            {
              v190 = 0;
              v192 = 0;
            }

            *(v29 + 16) = v190;
            *(v29 + 24) = v192;
            v193 = [v182 nameComponents];
            if (v193)
            {
              v194 = v193;
              sub_1A5240A14();

              v195 = 0;
            }

            else
            {
              v195 = 1;
            }

            v196 = sub_1A5240A24();
            v197 = *(v196 - 8);
            v198 = *(v197 + 56);
            v198(v59, v195, 1, v196);
            v199 = v259;
            sub_1A481E2EC(v59, v259);
            v200 = *(v197 + 48);
            if (v200(v199, 1, v196) == 1)
            {
              sub_1A481E380(v199);
              v201 = 0;
              v202 = 0;
            }

            else
            {
              v203 = v199;
              v201 = sub_1A52409D4();
              v202 = v204;
              v205 = v203;
              v2 = v250;
              (*(v197 + 8))(v205, v196);
            }

            v206 = v266;
            *(v266 + 32) = v201;
            *(v206 + 40) = v202;
            v207 = [v182 nameComponents];
            if (v207)
            {
              v208 = v260;
              v209 = v207;
              sub_1A5240A14();

              v210 = 0;
            }

            else
            {
              v210 = 1;
              v208 = v260;
            }

            v198(v208, v210, 1, v196);
            v211 = v257;
            sub_1A481E2EC(v208, v257);
            if (v200(v211, 1, v196) == 1)
            {

              sub_1A481E380(v211);
              v212 = 0;
              v213 = 0;
            }

            else
            {
              v212 = sub_1A52409E4();
              v213 = v214;

              (*(v197 + 8))(v211, v196);
            }

            v59 = v261;
            v215 = v255;
            v216 = v263;
            v217 = v267;
            v218 = *(v268 + 36);
            v29 = v266;
            *(v266 + 48) = v212;
            *(v29 + 56) = v213;
            v219 = (*v256)(v29 + v216, v2, v217);
            *(v29 + v218) = 0x3FF0000000000000;
            sub_1A422EBBC(v29, v215, v219);
            v35 = v265;
            v221 = v2;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1A422E4F8(0, *(v35 + 2) + 1, 1, v35, v220);
            }

            v18 = v258;
            v223 = *(v35 + 2);
            v222 = *(v35 + 3);
            if (v223 >= v222 >> 1)
            {
              v35 = sub_1A422E4F8((v222 > 1), v223 + 1, 1, v35, v220);
            }

            v176 = v264 + 1;

            *(v35 + 2) = v223 + 1;
            sub_1A422EBBC(v215, &v35[((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v223], v224);
            v271 = v35;
            v2 = v221;
          }

          while (v254 != v176);
          break;
        }
      }

      v2 = v236;
    }

    else
    {
    }

    goto LABEL_127;
  }

LABEL_135:
  __break(1u);
}

void sub_1A4820E5C(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v13 = v4 + v2;
  }

  else
  {
    v13 = v4;
  }

  v3 = sub_1A422E4F8(isUniquelyReferenced_nonNull_native, v13, 1, v3, v8);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  type metadata accessor for ShareParticipantImageConfiguration(0);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = v3[2];
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    v3[2] = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A48210C8()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore42ShareParticipantImageConfigurationsFetcher___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1A4821174(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4821194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A4821194(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A48217D8(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL sub_1A4821390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v28 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1A481E58C(v13, v10);
      sub_1A481E58C(v14, v6);
      v16 = v10[1];
      v17 = v6[1];
      if (v16)
      {
        if (!v17 || (*v10 != *v6 || v16 != v17) && (sub_1A524EAB4() & 1) == 0)
        {
LABEL_38:
          sub_1A48220B8(v6, type metadata accessor for ShareParticipantImageConfiguration);
          sub_1A48220B8(v10, type metadata accessor for ShareParticipantImageConfiguration);
          return 0;
        }
      }

      else if (v17)
      {
        goto LABEL_38;
      }

      v18 = v10[3];
      v19 = v6[3];
      if (v18)
      {
        if (!v19 || (v10[2] != v6[2] || v18 != v19) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v19)
      {
        goto LABEL_38;
      }

      v20 = v10[5];
      v21 = v6[5];
      if (v20)
      {
        if (!v21 || (v10[4] != v6[4] || v20 != v21) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v21)
      {
        goto LABEL_38;
      }

      v22 = v10[7];
      v23 = v6[7];
      if (v22)
      {
        if (!v23 || (v10[6] != v6[6] || v22 != v23) && (sub_1A524EAB4() & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if (v23)
      {
        goto LABEL_38;
      }

      if ((sub_1A5248704() & 1) == 0)
      {
        goto LABEL_38;
      }

      v24 = *(v4 + 36);
      v25 = *(v10 + v24);
      v26 = *(v6 + v24);
      sub_1A48220B8(v6, type metadata accessor for ShareParticipantImageConfiguration);
      sub_1A48220B8(v10, type metadata accessor for ShareParticipantImageConfiguration);
      result = v25 == v26;
      if (v25 == v26)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

BOOL sub_1A4821660(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (a1[4] != a2[4] || v9 != v10) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = a2[7];
  if (v11)
  {
    if (!v12 || (a1[6] != a2[6] || v11 != v12) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = type metadata accessor for ShareParticipantImageConfiguration(0);
  if (sub_1A5248704())
  {
    return *(a1 + *(v13 + 36)) == *(a2 + *(v13 + 36));
  }

  return 0;
}

void sub_1A48217D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4821888()
{
  result = qword_1EB1430D8;
  if (!qword_1EB1430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1430D8);
  }

  return result;
}

void sub_1A482194C(uint64_t a1)
{
  sub_1A3C39A2C(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5248714();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4821A18(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A4821B14(uint64_t a1)
{
  if (!qword_1EB143150)
  {
    v2 = type metadata accessor for ShareParticipantImageConfiguration(255);
    v3 = sub_1A4822070(&qword_1EB143158, type metadata accessor for ShareParticipantImageConfiguration, &unk_1A5367498);
    v5 = type metadata accessor for PhotosAsyncImageProviderCache(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB143150);
    }
  }
}

void sub_1A4821BA8(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v14 = a2;
  v15 = a3;
  v6 = sub_1A5248714();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  v12[1] = a1[2];
  v12[2] = v10;
  v11 = a1[7];
  v12[3] = a1[6];
  v12[4] = v11;
  type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D8], v6);
  v13 = sub_1A5248704();
  (*(v7 + 8))(v9, v6);
  PXSizeScale();
}

void sub_1A4821E90(void *a1, void *a2, id a3)
{
  v4 = *(v3 + 16);
  if (a1)
  {
    [a1 px_pixelSize];
    sub_1A524D9B4();
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = sub_1A5242584();
    sub_1A4822070(&qword_1EB143160, MEMORY[0x1E69C1EC0], MEMORY[0x1E69C1EC8]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69C1EB0], v6);
    a3 = 0;
  }

  *&v9 = v5;
  v10 = 1;
  v8 = a3;
  v4(&v9);
}

uint64_t sub_1A4822070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A48220B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id StoryAsyncPlayerDiagnosticsService.__allocating_init(itemProviders:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1A3C52C70(0, &qword_1EB143168, off_1E771DB20);
  v3 = sub_1A524CA14();

  v4 = [v2 initWithItemProviders_];

  return v4;
}

id StoryAsyncPlayerDiagnosticsService.init(itemProviders:)(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v4 = 0;
    v5 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](v4, a1, a2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if (v5)
      {
      }

      else
      {
        v8 = v6;
        if ([v6 itemForIdentifier_])
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {

          v14 = 0u;
          v15 = 0u;
        }

        v16[0] = v14;
        v16[1] = v15;
        if (*(&v15 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
          if (swift_dynamicCast())
          {
            v5 = v17;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          sub_1A3C35B00(v16);
          v5 = 0;
        }
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_24;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v6 = *(a1 + 8 * v4 + 32);
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v5 = 0;
LABEL_24:
  *&v12[OBJC_IVAR___PXStoryAsyncPlayerDiagnosticsService_viewController] = v5;
  sub_1A3C52C70(0, &qword_1EB143168, off_1E771DB20);
  v9 = sub_1A524CA14();

  v13.receiver = v12;
  v13.super_class = type metadata accessor for StoryAsyncPlayerDiagnosticsService();
  v10 = objc_msgSendSuper2(&v13, sel_initWithItemProviders_, v9);

  return v10;
}

void sub_1A482246C()
{
  v1 = type metadata accessor for DiagnosticsRootView(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = *(v0 + OBJC_IVAR___PXStoryAsyncPlayerDiagnosticsService_viewController);
  if (v2)
  {
    type metadata accessor for StoryAsyncPlayer(0);
    v3 = v2;
    static StoryAsyncPlayer.alivePlayers.getter();
  }

  v11 = objc_opt_self();
  v20 = sub_1A48228BC;
  v21 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v18 = sub_1A3D35A90;
  v19 = &block_descriptor_281;
  v12 = _Block_copy(&aBlock);

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v14 = isEscapingClosureAtFileLocation;
    if (sub_1A524E2B4())
    {
      *v11 = v14;
      v11[1] = 0;
      sub_1A482292C(0);
      v4 = 0;
      sub_1A524B694();
      *(v11 + 1) = aBlock;
      sub_1A3C52C70(0, &unk_1EB120A90, off_1E77202B0);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v5 includeImagesInVisualDiagnosticsForTTR];

      sub_1A524B694();
      v6 = *(&aBlock + 1);
      *(v11 + 32) = aBlock;
      v11[5] = v6;
      v7 = *(v1 + 32);
      *(v11 + v7) = swift_getKeyPath();
      sub_1A4137EE8(0);
      swift_storeEnumTagMultiPayload();
      sub_1A4823E74(0);
      v9 = objc_allocWithZone(v8);
      v10 = sub_1A5249624();
      [v4 px:v10 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
    }

    else
    {

      v15 = objc_opt_self();
      v20 = sub_1A482284C;
      v21 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v18 = sub_1A3D35A90;
      v19 = &block_descriptor_3_10;
      v16 = _Block_copy(&aBlock);

      _Block_release(v16);
      if (swift_isEscapingClosureAtFileLocation())
      {
        __break(1u);
      }
    }
  }
}

uint64_t type metadata accessor for DiagnosticsRootView(uint64_t a1)
{
  result = qword_1EB1D9480;
  if (!qword_1EB1D9480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A482284C(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];
}

void sub_1A48228BC(void *a1)
{
  v2 = sub_1A524C634();
  [a1 setTitle_];
}

id StoryAsyncPlayerDiagnosticsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryAsyncPlayerDiagnosticsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48229EC(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8[7] = a2;
  sub_1A482437C(0);
  v8[5] = *(v3 - 8);
  v8[6] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v8[4] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A48241F0(0);
  v8[3] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = *(a1 + 1);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  type metadata accessor for StoryAsyncPlayer(0);
  sub_1A482426C(0);
  sub_1A48242CC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4822DB4@<D0>(void *a1@<X8>)
{

  StoryAsyncPlayerView.init(player:)(v2, a1);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A482426C(0);
  v4 = (a1 + *(v3 + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_1A4822E30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  sub_1A4824630(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48245A4(0);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  sub_1A4824524(0, v12);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  v41 = a1;
  sub_1A4824694(0, &qword_1EB130100, MEMORY[0x1E697D6A0]);
  sub_1A3FF7120();
  sub_1A524BA54();
  v40 = a1;
  sub_1A3FF7760(0);
  sub_1A48246F4(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
  sub_1A524BA54();
  v43 = *(a1 + 16);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v23 = v42;
  if (v42)
  {
  }

  v24 = v23 == 0;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  (*(v36 + 32))(v10, v5, v37);
  v27 = &v10[*(v35 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1A3E07024;
  v27[2] = v26;
  sub_1A48248BC(v10, v14, sub_1A48245A4);
  v28 = *(v17 + 16);
  v28(v19, v22, v16);
  v29 = v38;
  sub_1A4824854(v14, v38, sub_1A48245A4);
  v30 = v39;
  v28(v39, v19, v16);
  sub_1A48244A8(0, &qword_1EB1431D0, sub_1A4824524, sub_1A48245A4);
  sub_1A4824854(v29, &v30[*(v31 + 48)], sub_1A48245A4);
  sub_1A48247F8(v14);
  v32 = *(v17 + 8);
  v32(v22, v16);
  sub_1A48247F8(v29);
  return (v32)(v19, v16);
}

void sub_1A48232B8(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000018;
  *(a1 + 8) = 0x80000001A53ED550;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A48232E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DiagnosticsRootView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  sub_1A4824694(0, &qword_1EB127480, MEMORY[0x1E697D670]);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v36 - v18;
  v36 = a1;
  v37 = 0x80000001A53E0E60;
  sub_1A4824854(a1, v9, type metadata accessor for DiagnosticsRootView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1A48248BC(v9, v20 + v19, type metadata accessor for DiagnosticsRootView);
  sub_1A4824854(a1, v6, type metadata accessor for DiagnosticsRootView);
  v21 = (v19 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1A48248BC(v6, v22 + v19, type metadata accessor for DiagnosticsRootView);
  v23 = (v22 + v21);
  *v23 = sub_1A4824924;
  v23[1] = v20;
  v46 = 0xD000000000000012;
  v47 = v37;

  v24 = v38;
  sub_1A524B704();

  sub_1A4824854(v36, v9, type metadata accessor for DiagnosticsRootView);
  v25 = swift_allocObject();
  sub_1A48248BC(v9, v25 + v19, type metadata accessor for DiagnosticsRootView);
  v26 = (v25 + v21);
  *v26 = sub_1A48237A4;
  v26[1] = 0;
  v44 = 0x64615220656C6946;
  v45 = 0xEA00000000007261;
  v27 = v39;
  sub_1A524B704();
  v29 = v40;
  v28 = v41;
  v30 = *(v40 + 16);
  v30(v41, v24, v11);
  v31 = v42;
  v30(v42, v27, v11);
  v32 = v43;
  v30(v43, v28, v11);
  sub_1A3FF7794(0);
  v30(&v32[*(v33 + 48)], v31, v11);
  v34 = *(v29 + 8);
  v34(v27, v11);
  v34(v24, v11);
  v34(v31, v11);
  return (v34)(v28, v11);
}

void sub_1A48237A4(uint64_t a1)
{
  v2 = [objc_allocWithZone(PXRadarConfiguration) init];
  [v2 setComponent_];
  [v2 addDiagnosticProvider_];
  PXFileRadarWithConfiguration(v2);
}

void *sub_1A4823828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_1A524BEE4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A524BF64();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiagnosticsRootView(0);
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = sub_1A524BFC4();
  v9 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = sub_1A5248284();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86EA0(v18);
  sub_1A5248274();
  (*(v16 + 8))(v18, v15);
  aBlock = *(a1 + 16);
  sub_1A4824C5C(0, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  v20 = v48;
  if (v48)
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v31 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v32 = *(v9 + 8);
    v32(v11, v42);
    sub_1A4824854(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiagnosticsRootView);
    v21 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_1A48248BC(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21, type metadata accessor for DiagnosticsRootView);
    v24 = (v23 + v22);
    v25 = v35;
    *v24 = v34;
    v24[1] = v25;
    *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
    v46 = sub_1A4824B0C;
    v47 = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v44 = sub_1A3C2E0D0;
    v45 = &block_descriptor_23_5;
    v26 = _Block_copy(&aBlock);

    v27 = v36;
    sub_1A524BF14();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1A48246F4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A48246F4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    v28 = v38;
    v29 = v41;
    sub_1A524E224();
    v30 = v31;
    MEMORY[0x1A5908790](v14, v27, v28, v26);
    _Block_release(v26);

    (*(v40 + 8))(v28, v29);
    (*(v37 + 8))(v27, v39);
    return (v32)(v14, v42);
  }

  return result;
}

void sub_1A4823E74(uint64_t a1)
{
  if (!qword_1EB143178)
  {
    type metadata accessor for DiagnosticsRootView(255);
    sub_1A4823ED8();
    v1 = sub_1A5249654();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143178);
    }
  }
}

unint64_t sub_1A4823ED8()
{
  result = qword_1EB1D9478;
  if (!qword_1EB1D9478)
  {
    type metadata accessor for DiagnosticsRootView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1D9478);
  }

  return result;
}

void sub_1A4823F58(uint64_t a1)
{
  sub_1A4824C5C(319, &qword_1EB143180, type metadata accessor for StoryAsyncPlayer, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126B10, 0x1E69DD258);
    if (v2 <= 0x3F)
    {
      sub_1A4824C5C(319, &qword_1EB143188, sub_1A482292C, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A3C37510(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A4824C5C(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A4824104(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A482414C(0);
  sub_1A48229EC(v2, (a1 + *(v4 + 44)));
}

void sub_1A482414C(uint64_t a1)
{
  if (!qword_1EB143190)
  {
    sub_1A48241B4(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143190);
    }
  }
}

void sub_1A48241F0(uint64_t a1)
{
  if (!qword_1EB1431A8)
  {
    type metadata accessor for StoryAsyncPlayer(255);
    sub_1A482426C(255);
    sub_1A48242CC();
    v1 = sub_1A5242A04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1431A8);
    }
  }
}

void sub_1A482426C(uint64_t a1)
{
  if (!qword_1EB1431B0)
  {
    type metadata accessor for StoryAsyncPlayerView(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1431B0);
    }
  }
}

unint64_t sub_1A48242CC()
{
  result = qword_1EB1431B8;
  if (!qword_1EB1431B8)
  {
    sub_1A482426C(255);
    sub_1A48246F4(&qword_1EB12A298, type metadata accessor for StoryAsyncPlayerView, &protocol conformance descriptor for StoryAsyncPlayerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1431B8);
  }

  return result;
}

void sub_1A482437C(uint64_t a1)
{
  if (!qword_1EB1431C0)
  {
    sub_1A4824410(255);
    sub_1A48246F4(&qword_1EB1431E8, sub_1A4824410, MEMORY[0x1E6981F48]);
    v1 = sub_1A524A2A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1431C0);
    }
  }
}

void sub_1A482444C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A48244A8(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A48244A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4824524(uint64_t a1, double a2)
{
  if (!qword_1EB1431D8)
  {
    sub_1A4824694(255, &qword_1EB130100, MEMORY[0x1E697D6A0]);
    v2 = sub_1A524BA74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1431D8);
    }
  }
}

void sub_1A48245A4(uint64_t a1)
{
  if (!qword_1EB1431E0)
  {
    sub_1A4824630(255);
    sub_1A3C37510(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1431E0);
    }
  }
}

void sub_1A4824630(uint64_t a1)
{
  if (!qword_1EB121470)
  {
    sub_1A3FF7760(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121470);
    }
  }
}

void sub_1A4824694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A48246F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4824744()
{
  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return sub_1A524B854();
}

uint64_t sub_1A48247F8(uint64_t a1)
{
  sub_1A48245A4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4824854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A48248BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4824924(uint64_t a1)
{
  v3 = *(type metadata accessor for DiagnosticsRootView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = [objc_allocWithZone(off_1E7721970) initWithRootProvider_];
  v6 = sub_1A524C634();
  [v5 setName_];

  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  [v5 setIsPrivateDataAllowed_];
  [objc_opt_self() showVisualDiagnosticsWithConfiguration:v5 fromViewController:*(v4 + 8) completionHandler:0];
}

void *sub_1A4824A7C()
{
  v1 = *(type metadata accessor for DiagnosticsRootView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1A4823828(v0 + v2, v4, v5);
}

uint64_t sub_1A4824B0C()
{
  v1 = *(type metadata accessor for DiagnosticsRootView(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + v2);
  v4 = *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_1A3C52C70(0, &unk_1EB120A90, off_1E77202B0);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A3C37510(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  [v5 setIncludeImagesInVisualDiagnosticsForTTR_];

  return v3(v4);
}

void sub_1A4824C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4824CC0(uint64_t a1)
{
  if (!qword_1EB1431F8)
  {
    sub_1A48241B4(255);
    sub_1A48246F4(&qword_1EB143200, sub_1A48241B4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1431F8);
    }
  }
}

void type metadata accessor for PHAuthorizationStatus()
{
  if (!qword_1EB143220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB143220);
    }
  }
}

uint64_t sub_1A4824DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v42 = a6;
  v49 = a4;
  v37 = a3;
  v41 = a2;
  v39 = a1;
  v48 = a7;
  v10 = sub_1A524CCB4();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4826598(255, &qword_1EB143208, MEMORY[0x1E697F960]);
  v12 = a5;
  v38 = a5;
  sub_1A5249754();
  sub_1A5249754();
  v13 = sub_1A524B514();
  v44 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  sub_1A5248394();
  v16 = sub_1A5248804();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v43 = &v36 - v20;
  v21 = v42;
  v50 = v12;
  v51 = v42;
  v52 = a1;
  v22 = v41;
  v53 = v41;
  v54 = a3;
  v55 = v49;
  v23 = sub_1A4825E10();
  v61 = v21;
  v62 = MEMORY[0x1E6981138];
  WitnessTable = swift_getWitnessTable();
  v59 = v23;
  v60 = WitnessTable;
  v25 = swift_getWitnessTable();
  sub_1A524B504();
  v26 = swift_allocObject();
  v26[2] = v38;
  v26[3] = v21;
  v26[4] = v39;
  v26[5] = v22;
  v27 = v49;
  v26[6] = v37;
  v26[7] = v27;
  v58 = v25;

  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_1A524CC74();
  v30 = v40;
  sub_1A524AF84();

  (*(v46 + 8))(v29, v47);
  (*(v44 + 8))(v15, v13);
  v31 = sub_1A48263E4(&qword_1EB128940, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  v56 = v28;
  v57 = v31;
  swift_getWitnessTable();
  v32 = *(v17 + 16);
  v33 = v43;
  v32(v43, v30, v16);
  v34 = *(v17 + 8);
  v34(v30, v16);
  v32(v48, v33, v16);
  return (v34)(v33, v16);
}

void sub_1A4825290()
{
  if (!qword_1EB143210)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143210);
    }
  }
}

uint64_t sub_1A4825310@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a6;
  v80 = a4;
  v71[1] = a2;
  v72 = a1;
  v87 = a7;
  v9 = sub_1A5249754();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v71 - v10;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71[0] = v71 - v16;
  sub_1A4825290();
  v78 = v17;
  v74 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v73 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4826598(0, &qword_1EB143238, MEMORY[0x1E697F948]);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v71 - v21;
  sub_1A4826598(0, &qword_1EB143208, MEMORY[0x1E697F960]);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v77 = v71 - v25;
  sub_1A411848C();
  v76 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v24;
  v85 = v9;
  v84 = sub_1A5249754();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = v71 - v30;
  v98 = a3;
  v99 = v80;
  sub_1A48264D8(0);
  v31 = sub_1A524B6A4();
  if ((v102 - 1) < 2)
  {
    sub_1A5249434();
    v43 = sub_1A524A444();
    v45 = v44;
    v98 = v43;
    v99 = v44;
    v80 = v20;
    v47 = v46 & 1;
    v100 = v46 & 1;
    v101 = v48;
    sub_1A524A024();
    sub_1A524BC74();
    v49 = v73;
    v50 = MEMORY[0x1E6981148];
    v42 = MEMORY[0x1E6981138];
    sub_1A524AE64();
    sub_1A3E04DF4(v43, v45, v47);

    v51 = v74;
    v52 = v78;
    (*(v74 + 16))(v22, v49, v78);
    swift_storeEnumTagMultiPayload();
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    v98 = v50;
    v99 = v42;
    swift_getOpaqueTypeConformance2();
    v53 = v77;
    sub_1A5249744();
    v54 = sub_1A4825E10();
    v36 = v86;
    v90 = v86;
    v91 = v42;
    v55 = v85;
    WitnessTable = swift_getWitnessTable();
    v41 = v82;
    sub_1A3DF4798(v53, v81, v55, v54, WitnessTable);
    sub_1A3D23160(v53);
    (*(v51 + 8))(v49, v52);
  }

  else if ((v102 - 3) >= 2)
  {
    v41 = v82;
    if (v102)
    {
      sub_1A5249434();
      v98 = sub_1A524A444();
      v99 = v63;
      v100 = v64 & 1;
      v101 = v65;
      sub_1A3E75E68(v98, v63, v64 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A5248074();
    v57 = v27;
    v58 = v76;
    (*(v27 + 16))(v22, v29, v76);
    swift_storeEnumTagMultiPayload();
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    v98 = MEMORY[0x1E6981148];
    v42 = MEMORY[0x1E6981138];
    v99 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    v59 = v77;
    sub_1A5249744();
    v60 = sub_1A4825E10();
    v36 = v86;
    v88 = v86;
    v89 = v42;
    v61 = v85;
    v62 = swift_getWitnessTable();
    sub_1A3DF4798(v59, v81, v61, v60, v62);
    sub_1A3D23160(v59);
    (*(v57 + 8))(v29, v58);
  }

  else
  {
    v72(v31);
    v32 = *(v11 + 16);
    v33 = v71[0];
    v32(v71[0], v14, a5);
    v34 = *(v11 + 8);
    v34(v14, a5);
    v32(v14, v33, a5);
    v35 = v75;
    v36 = v86;
    v37 = MEMORY[0x1E6981138];
    sub_1A3DF4798(v14, a5, MEMORY[0x1E6981148], v86, MEMORY[0x1E6981138]);
    v38 = sub_1A4825E10();
    v92 = v36;
    v93 = v37;
    v39 = v85;
    v40 = swift_getWitnessTable();
    v41 = v82;
    sub_1A3DF4890(v35, v81, v39, v38, v40);
    (*(v79 + 8))(v35, v39);
    v34(v14, a5);
    v34(v33, a5);
    v42 = MEMORY[0x1E6981138];
  }

  v66 = sub_1A4825E10();
  v96 = v36;
  v97 = v42;
  v67 = swift_getWitnessTable();
  v94 = v66;
  v95 = v67;
  v68 = v84;
  swift_getWitnessTable();
  v69 = v83;
  (*(v83 + 16))(v87, v41, v68);
  return (*(v69 + 8))(v41, v68);
}

unint64_t sub_1A4825E10()
{
  result = qword_1EB143218;
  if (!qword_1EB143218)
  {
    sub_1A4826598(255, &qword_1EB143208, MEMORY[0x1E697F960]);
    sub_1A48263E4(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143218);
  }

  return result;
}

uint64_t sub_1A4825F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  sub_1A524CC54();
  v4[22] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4825FA4, v6, v5);
}

uint64_t sub_1A4825FA4(double a1)
{
  v1[10] = v1[20];
  v1[11] = v1[21];
  sub_1A48264D8(0);
  v1[25] = v2;

  sub_1A524B6A4();
  if (v1[18])
  {

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = objc_opt_self();
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_1A4826144;
    v6 = swift_continuation_init();
    sub_1A4826530(0);
    v1[17] = v7;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1A482637C;
    v1[13] = &block_descriptor_282;
    v1[14] = v6;
    [v5 requestAuthorizationForAccessLevel:2 handler:v1 + 10];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }
}

uint64_t sub_1A4826144()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1A482624C, v2, v1);
}

uint64_t sub_1A482624C()
{
  v1 = v0[21];
  v2 = v0[20];

  v3 = v0[18];
  v0[10] = v2;
  v0[11] = v1;
  v0[19] = v3;
  sub_1A524B6B4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48262E4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4825F0C(v4, v5, v2, v3);
}

uint64_t sub_1A482637C(uint64_t a1, uint64_t a2)
{
  sub_1A3F974E4();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v4 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1A48263E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A4826484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A48264D8(uint64_t a1)
{
  if (!qword_1EB143228)
  {
    type metadata accessor for PHAuthorizationStatus();
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143228);
    }
  }
}

void sub_1A4826530(uint64_t a1)
{
  if (!qword_1EB143230)
  {
    type metadata accessor for PHAuthorizationStatus();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143230);
    }
  }
}

void sub_1A4826598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A411848C();
    v7 = v6;
    sub_1A4825290();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4826608()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1D96A8);
  __swift_project_value_buffer(v6, qword_1EB1D96A8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static FavoritePeopleIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1D96A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A48268F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D96A8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A48269B8(uint64_t a1, double a2)
{
  if (qword_1EB1D96A0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D96A8);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static FavoritePeopleIntent.parameterSummary.getter()
{
  sub_1A4829544(0, &qword_1EB143240, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4829544(0, &qword_1EB143250, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4826CA8();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4826D20(0);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4826DA4(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4826CA8()
{
  result = qword_1EB143248;
  if (!qword_1EB143248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143248);
  }

  return result;
}

void sub_1A4826D20(uint64_t a1)
{
  if (!qword_1EB143258)
  {
    sub_1A3FBFFE4(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143258);
    }
  }
}

void sub_1A4826DA4(uint64_t a1)
{
  if (!qword_1EB143260)
  {
    sub_1A4829544(255, &qword_1EB143268, sub_1A4826E3C, &type metadata for FavoritePeopleIntentAction, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143260);
    }
  }
}

unint64_t sub_1A4826E3C()
{
  result = qword_1EB143270;
  if (!qword_1EB143270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143270);
  }

  return result;
}

uint64_t FavoritePeopleIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A48295AC(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3FBFFE4(0);
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12FB40, &qword_1EB12FB10, &type metadata for PersonEntity);
  sub_1A3FC19D8();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A4829544(0, &qword_1EB143268, sub_1A4826E3C, &type metadata for FavoritePeopleIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A48280E4();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t FavoritePeopleIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A48275A8, v4, v3);
}

uint64_t sub_1A48275A8()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A4826CA8();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A53678F0);
}

uint64_t sub_1A4827708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A48277A4, v5, v4);
}

uint64_t sub_1A48277A4()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A4826CA8();
  v3 = AppIntent.px_intentName.getter(&type metadata for FavoritePeopleIntent);
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A48281E4(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A4827940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A48281E4(a1, a2, a3, a4);
}

void (*FavoritePeopleIntent.people.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*FavoritePeopleIntent.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A4827B64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return FavoritePeopleIntent.perform()(a1);
}

uint64_t sub_1A4827C00(uint64_t a1)
{
  v2 = sub_1A4826CA8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static FavoritePeopleIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::FavoritePeopleIntentAction_optional __swiftcall FavoritePeopleIntentAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FavoritePeopleIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x69726F7661666E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

void sub_1A4827FD4(char *a2@<X8>)
{
  v3 = sub_1A524E824();

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

  *a2 = v4;
}

uint64_t sub_1A4828038(uint64_t a1)
{
  v2 = sub_1A48280E4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A4828088(uint64_t a1)
{
  v2 = sub_1A48292B4();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A48280E4()
{
  result = qword_1EB143278;
  if (!qword_1EB143278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143278);
  }

  return result;
}

uint64_t sub_1A4828138(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4827708(a1, v5, v4);
}

uint64_t sub_1A48281E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A48282E0, v7, v6);
}

void sub_1A48282E0()
{
  v1 = v0;
  if (!(sub_1A48999B8(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4828648()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A48287D0;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A4828764;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4828764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A48287D0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A4828844(uint64_t a1)
{
  sub_1A4829610(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A4829678(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A48296E4(v10, v6);
      result = sub_1A40ABF60(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore26FavoritePeopleIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A48295AC(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A48295AC(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A48295AC(0, &qword_1EB143300, sub_1A4829610, MEMORY[0x1E69E6F90]);
  sub_1A4829610(0);
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A4828844(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A4828FD8()
{
  result = qword_1EB143280;
  if (!qword_1EB143280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143280);
  }

  return result;
}

unint64_t sub_1A4829030()
{
  result = qword_1EB143288;
  if (!qword_1EB143288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143288);
  }

  return result;
}

unint64_t sub_1A48290A4()
{
  result = qword_1EB143290;
  if (!qword_1EB143290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143290);
  }

  return result;
}

unint64_t sub_1A48290FC()
{
  result = qword_1EB143298;
  if (!qword_1EB143298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143298);
  }

  return result;
}

unint64_t sub_1A4829154()
{
  result = qword_1EB1432A0;
  if (!qword_1EB1432A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432A0);
  }

  return result;
}

unint64_t sub_1A48291AC()
{
  result = qword_1EB1432A8;
  if (!qword_1EB1432A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432A8);
  }

  return result;
}

unint64_t sub_1A4829204()
{
  result = qword_1EB1432B0;
  if (!qword_1EB1432B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432B0);
  }

  return result;
}

unint64_t sub_1A482925C()
{
  result = qword_1EB1432B8;
  if (!qword_1EB1432B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432B8);
  }

  return result;
}

unint64_t sub_1A48292B4()
{
  result = qword_1EB1432C0;
  if (!qword_1EB1432C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432C0);
  }

  return result;
}

unint64_t sub_1A4829360()
{
  result = qword_1EB1432C8;
  if (!qword_1EB1432C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432C8);
  }

  return result;
}

unint64_t sub_1A48293B8()
{
  result = qword_1EB1432D0;
  if (!qword_1EB1432D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432D0);
  }

  return result;
}

unint64_t sub_1A4829410()
{
  result = qword_1EB1432D8;
  if (!qword_1EB1432D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432D8);
  }

  return result;
}

unint64_t sub_1A48294B4()
{
  result = qword_1EB1432F0;
  if (!qword_1EB1432F0)
  {
    sub_1A4829544(255, &qword_1EB1432F8, sub_1A4826CA8, &type metadata for FavoritePeopleIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1432F0);
  }

  return result;
}

void sub_1A4829544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A48295AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4829610(uint64_t a1)
{
  if (!qword_1EB143308)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143308);
    }
  }
}

void sub_1A4829678(uint64_t a1)
{
  if (!qword_1EB143310)
  {
    sub_1A5240274();
    sub_1A4829410();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143310);
    }
  }
}

uint64_t sub_1A48296E4(uint64_t a1, uint64_t a2)
{
  sub_1A4829610(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4829750(double a1)
{
  v1 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v1, qword_1EB1D9E68);
  __swift_project_value_buffer(v1, qword_1EB1D9E68);
  return sub_1A5240B94();
}

uint64_t static RevealAlbumsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D9E68);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t static RevealAlbumsIntent.title.setter(uint64_t a1, double a2)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D9E68);
  swift_beginAccess();
  v5 = *(v3 - 8);
  (*(v5 + 24))(v4, a1, v3);
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

uint64_t (*static RevealAlbumsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1D9E68);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A48299FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D9E68);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A4829ABC(uint64_t a1, double a2)
{
  if (qword_1EB1D9E60 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1D9E68);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t RevealAlbumsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v18[0] = a1;
  v1 = sub_1A5240334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  sub_1A3DB2E98(0);
  v14 = sub_1A5240BB4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v18[1] = 0;
  v15 = sub_1A523FDB4();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v16(v7, 1, 1, v15);
  (*(v2 + 104))(v4, *MEMORY[0x1E695A500], v1);
  sub_1A3DB3554();
  result = sub_1A523FF94();
  *v18[0] = result;
  return result;
}

void sub_1A4829E28()
{
  if (!qword_1EB12C3A0)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C3A0);
    }
  }
}

uint64_t sub_1A4829E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v23 = a1;
  v2 = sub_1A5240334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4120C34(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_1A4120C34(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  sub_1A3DB2E98(0);
  v15 = sub_1A5240BB4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v24 = 0;
  v16 = sub_1A523FDB4();
  v17 = *(*(v16 - 8) + 56);
  v17(v11, 1, 1, v16);
  v17(v8, 1, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A500], v2);
  sub_1A3DB3554();
  v18 = sub_1A523FF94();
  v19 = v23;
  *v22 = v18;
  v24 = v19;
  return sub_1A523FF54();
}

uint64_t RevealAlbumsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A482A1C0, v5, v4);
}

uint64_t sub_1A482A1C0()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A4392DB4();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A5367D08);
}

uint64_t sub_1A482A2AC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_1A524CC54();
  v2[10] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A482A344, v4, v3);
}

void sub_1A482A344()
{
  sub_1A523FF44();
  v1 = *(*(v0 + 48) + 16);

  if (v1 == 1)
  {
    sub_1A523FF44();
    v2 = *(v0 + 56);
    if (*(v2 + 16))
    {
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      v5 = *(v2 + 56);
      v6 = *(v2 + 32);

      *(v0 + 16) = v6;
      *(v0 + 24) = v3;
      *(v0 + 32) = v4;
      *(v0 + 40) = v5;
      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_1A482A4E0;

      sub_1A3DB64C8((v0 + 16));
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_1A482A6D4;

    sub_1A494D63C(5);
  }
}

uint64_t sub_1A482A4E0()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1A482A810;
  }

  else
  {
    v5 = sub_1A482A664;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A482A664()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A6D4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1A482A874;
  }

  else
  {
    v5 = sub_1A482ACE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A482A810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A482A8D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A482A2AC(a1, v1);
}

unint64_t sub_1A482A978()
{
  result = qword_1EB143318;
  if (!qword_1EB143318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143318);
  }

  return result;
}

unint64_t sub_1A482A9D0()
{
  result = qword_1EB143320;
  if (!qword_1EB143320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143320);
  }

  return result;
}

uint64_t sub_1A482AA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A482AB14, v7, v6);
}

uint64_t sub_1A482AB14()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A5367E38);
}

uint64_t sub_1A482ABF8(uint64_t a1)
{
  v2 = sub_1A4392DB4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A482AC44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A482A2AC(a1, v1);
}

id sub_1A482ACE4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A482EFF4(a1);

  return v4;
}

void sub_1A482AD5C()
{
  sub_1A482C470();

  sub_1A482CFF4();
}

void sub_1A482ADD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();
    v3 = [v2 navigationController];

    if (!v3)
    {
      v3 = swift_unknownObjectUnownedLoadStrong();
    }

    sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
    v4 = sub_1A524DBF4();

    if (v4)
    {

      sub_1A482D220();
    }
  }
}

uint64_t sub_1A482AF48()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482AFF8(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectUnownedLoadStrong();
      v10 = [v9 navigationController];

      if (!v10)
      {
        v10 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v11 = sub_1A524DBF4();

      if (v11)
      {
        sub_1A482CAA0();
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_unknownObjectUnownedLoadStrong();
      v15 = [v14 navigationController];

      if (!v15)
      {
        v15 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v16 = sub_1A524DBF4();

      if (v16)
      {
        sub_1A482D220();
      }
    }
  }
}

void sub_1A482B18C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_unknownObjectUnownedLoadStrong();
      v8 = [v7 navigationController];

      if (!v8)
      {
        v8 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v9 = sub_1A524DBF4();

      if (v9)
      {
        sub_1A482CAA0();
      }
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = [v12 navigationController];

      if (!v13)
      {
        v13 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v14 = sub_1A524DBF4();

      if (v14)
      {
        sub_1A482D220();
      }
    }
  }
}

void (*sub_1A482B318(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B3AC;
}

void sub_1A482B3AC(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1A482B18C(v5);

  free(v1);
}

uint64_t sub_1A482B43C()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482B4D4(char a1)
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A482B5CC()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482B664(char a1)
{
  v3 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void (*sub_1A482B6B4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B748;
}

void sub_1A482B748(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32)) = *(v1 + 40);
  free(v1);
}

uint64_t sub_1A482B7A4()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A482B83C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectUnownedLoadStrong();
      v9 = [v8 navigationController];

      if (!v9)
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
      }

      sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
      v10 = sub_1A524DBF4();

      if (v10)
      {
        sub_1A482D220();
      }
    }
  }
}

void (*sub_1A482B944(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A482B9D8;
}

void sub_1A482B9D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }
  }

  v8 = Strong;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 navigationController];

  if (!v10)
  {
    v10 = swift_unknownObjectUnownedLoadStrong();
  }

  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v11 = sub_1A524DBF4();

  if (v11)
  {
    sub_1A482D220();
  }

LABEL_11:

  free(v2);
}

uint64_t sub_1A482BB74(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A482BBE0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

id sub_1A482BC80()
{
  v1 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy;
  v2 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy);
  }

  else
  {
    v4 = type metadata accessor for Proxy();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectUnownedInit();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1A482BD1C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E9420];
  sub_1A3C56AB0(0, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___logger;
  swift_beginAccess();
  sub_1A4830078(v1 + v10, v9, &qword_1EB128BF8, v3);
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1A482F4B4(v9, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  sub_1A5246F14();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1A42D3CC0(v6, v1 + v10);
  return swift_endAccess();
}

id sub_1A482BF58()
{
  v1 = v0;
  sub_1A3C56AB0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = *&v0[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber];
  if (v5)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1A524CC54();
    v7 = v5;
    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1A3D4D930(0, 0, v4, &unk_1A5367E48, v9);
  }

  v11 = type metadata accessor for ViewControllerDismissalInteractionController(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_1A482C0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A482C15C, v6, v5);
}

uint64_t sub_1A482C15C()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_1A4830108;
  v0[7] = v3;
  v4 = MEMORY[0x1E69E9820];
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_140_0;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_1A4830104;
  v0[7] = v7;
  v0[2] = v4;
  v0[3] = 1107296256;
  v0[4] = sub_1A3E01E70;
  v0[5] = &block_descriptor_147_2;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;

  [v2 animateWithDuration:v5 animations:v8 completion:0.2];
  _Block_release(v8);
  _Block_release(v5);
  v10 = v0[1];

  return v10();
}

void sub_1A482C470()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = [v4 navigationController];

  if (!v5)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
  }

  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = swift_unknownObjectUnownedLoadStrong();
    v36 = [v7 navigationController];

    v8 = v36;
    if (!v36)
    {
      v8 = swift_unknownObjectUnownedLoadStrong();
    }

    v37 = v8;
    swift_unknownObjectWeakAssign();
    v9 = [v37 view];
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = v9;
    v11 = objc_allocWithZone(MEMORY[0x1E69DCD28]);
    v12 = v1;
    v13 = [v11 initWithTarget:v12 action:sel_handleSwipeUp_];
    v14 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer;
    v15 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer);
    *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer) = v13;
    v16 = v13;

    [v16 setAllowedScrollTypesMask_];
    v17 = *(v12 + v14);
    if (v17)
    {
      v18 = v17;
      v19 = sub_1A482BC80();
      [v18 setDelegate_];

      if (*(v12 + v14))
      {
        [v10 addGestureRecognizer_];
        v20 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
        v21 = OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer;
        v22 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
        *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer) = v20;
        v23 = v20;

        v24 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy;
        [v23 setDelegate_];

        if (*(v12 + v21))
        {
          v25 = [v10 addGestureRecognizer_];
          if ((*((*MEMORY[0x1E69E7D40] & *v12) + 0x140))(v25))
          {
            v26 = [objc_allocWithZone(MEMORY[0x1E69DCEB8]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
            if ([v10 px_hasRightToLeftLayoutDirection])
            {
              v27 = 8;
            }

            else
            {
              v27 = 2;
            }

            [v26 setEdges_];
            [v26 setDelegate_];
            [v10 addGestureRecognizer_];
            v28 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer);
            *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer) = v26;
          }

          v29 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) initWithTarget:v12 action:sel_handleSwipeDownOrEdgeSwipe_];
          v30 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer);
          *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer) = v29;
          v31 = v29;

          [v31 setDelegate_];
          v32 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v12 action:sel_handleTapOnGrabAffordance_];

          v33 = *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
          *(v12 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer) = v32;
          v34 = v32;

          [v34 setDelegate_];
          sub_1A482CAA0();
          sub_1A482D220();
          if ([v37 transitioningDelegate])
          {

            swift_unknownObjectRelease();
          }

          else
          {
            v35 = *(v12 + v24);
            [v37 setTransitioningDelegate_];
          }

          return;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A482C970(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  sub_1A482F510();
  if (swift_dynamicCast())
  {
    sub_1A3C34460(&v5, a1);
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
    v3 = swift_unknownObjectUnownedLoadStrong();
    v4 = [v3 parentViewController];

    if (!v4 || (swift_dynamicCast() & 1) == 0)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    if (*(&v6 + 1))
    {
      sub_1A482F4B4(&v5, &qword_1EB129500, sub_1A482F510);
    }
  }
}

void sub_1A482CAA0()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = Strong;
  v7 = [Strong view];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v7 superview];
  if (!v8 || (v9 = v8, v33 = [v8 superview], v9, !v33))
  {

LABEL_11:
    sub_1A482BD1C(v4);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D254();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v14, v15, "failed to install grabber", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return;
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  v11 = OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber;
  v12 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
  if (v10)
  {
    if (v12)
    {

      v13 = v33;

      return;
    }

    v24 = [objc_allocWithZone(type metadata accessor for GrabAffordanceView()) init];
    v25 = *(v0 + v11);
    *(v0 + v11) = v24;
    v26 = v24;

    [v26 setAlpha_];
    [v33 addSubview_];
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v38 = sub_1A467BF38;
    v39 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3C2E0D0;
    v37 = &block_descriptor_167_1;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    [v27 animateWithDuration:v29 animations:0.3];
    _Block_release(v29);
    if (*(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer))
    {
      [v30 addGestureRecognizer_];
      if (*(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer))
      {
        [v30 addGestureRecognizer_];

        return;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v12)
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    v38 = sub_1A4830108;
    v39 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3C2E0D0;
    v37 = &block_descriptor_154_3;
    v19 = _Block_copy(&aBlock);
    v20 = v12;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v38 = sub_1A4830104;
    v39 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A3E01E70;
    v37 = &block_descriptor_161_0;
    v22 = _Block_copy(&aBlock);
    v23 = v20;

    [v17 animateWithDuration:v19 animations:v22 completion:0.0];

    _Block_release(v22);
    _Block_release(v19);
  }

  else
  {
  }

  v31 = *(v0 + v11);
  *(v0 + v11) = 0;
}

void sub_1A482CFF4()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 superview];
    if (v7)
    {
      v16 = v7;
      [v7 frame];
      MidX = CGRectGetMidX(v18);
      [v16 frame];
      MinY = CGRectGetMinY(v19);
      [v16 safeAreaInsets];
      [v6 setCenter_];
      sub_1A482D220();

      v11 = v16;
    }

    else
    {
      sub_1A482BD1C(v4);
      v12 = sub_1A5246F04();
      v13 = sub_1A524D254();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1A3C1C000, v12, v13, "couldn't layout grabber", v14, 2u);
        MEMORY[0x1A590EEC0](v14, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v4, v1);
    }
  }
}

void sub_1A482D220()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong traitCollection];

    v4 = [v3 verticalSizeClass];
    v5 = MEMORY[0x1E69E7D40];
    if (v4 == 1)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))() ^ 1;
    }

    v7 = *(v0 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
    if (v7)
    {
      v8 = *((*v5 & *v0) + 0x110);
      v12 = v7;
      if (v8() & 1) != 0 || ((*((*v5 & *v0) + 0x128))())
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
        v10 = [v9 px_containsViewControllerModalInPresentation];

        v11 = v10 | v6;
      }

      else
      {
        v11 = 1;
      }

      [v12 setHidden_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A482D3F0(void *a1, __n128 a2)
{
  v4 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController);
  if (v4)
  {
    v5 = *(*v4 + 104);

    v5(a1);
  }

  else
  {
    sub_1A482C970(&v6);
    if (v7)
    {
      sub_1A3C34460(&v6, v8);
      if ([a1 state] == 1)
      {
        MEMORY[0x1EEE9AC00](1);
        sub_1A482D83C(a1, sub_1A482FF38);
      }

      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      sub_1A482F4B4(&v6, &qword_1EB129500, sub_1A482F510);
    }
  }
}

void sub_1A482D5B4(id a1)
{
  v3 = *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController];
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE8);
    v9 = v3;
    v4(a1);
LABEL_3:

    return;
  }

  if (!*&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition])
  {
    if ([a1 state] != 1)
    {
      return;
    }

    v8 = v1;
    v9 = a1;
    sub_1A482F5D8(v9, v8, v8, v9);

    goto LABEL_3;
  }

  v5 = *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition + 8];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  swift_unknownObjectRetain();
  v7(a1, ObjectType, v5);

  swift_unknownObjectRelease();
}

void *sub_1A482D83C(void *a1, void (*a2)(void))
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [result transitioningDelegate];

    swift_unknownObjectRetain();
    v13 = sub_1A482BC80();

    if (!v12 || (swift_unknownObjectRelease(), v12 != v13))
    {
      sub_1A482BD1C(v9);
      swift_unknownObjectRetain();
      v14 = sub_1A5246F04();
      v15 = sub_1A524D254();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v25 = v7;
        v17 = v16;
        v24 = swift_slowAlloc();
        v27 = v12;
        v28 = v24;
        *v17 = 136315138;
        sub_1A3C56AB0(0, &qword_1EB143430, sub_1A482F574);
        v26 = a1;
        swift_unknownObjectRetain();
        v18 = sub_1A524C714();
        sub_1A3C2EF94(v18, v19, &v28);
      }

      (*(v7 + 8))(v9, v6);
    }

    v20 = OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal;
    *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal) = 1;
    v21 = sub_1A482DB2C(a1);
    v22 = OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind;
    *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind) = v21;
    a2();
    result = swift_unknownObjectRelease();
    *(v3 + v20) = 0;
    *(v3 + v22) = 3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A482DB2C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
  if (v4)
  {
    sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60);
    v5 = v4;
    v6 = a1;
    v7 = sub_1A524DBF4();

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer);
  if (v8)
  {
    sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60);
    v9 = a1;
    v10 = v8;
    v11 = sub_1A524DBF4();

    if (v11)
    {
      return 0;
    }
  }

  v13 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer);
  if (v13)
  {
    sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60);
    v14 = a1;
    v15 = v13;
    v16 = sub_1A524DBF4();

    if (v16)
    {
      return 1;
    }
  }

  v17 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer);
  if (v17 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v18 = a1, v19 = v17, v20 = sub_1A524DBF4(), v19, v18, (v20 & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

id sub_1A482DCD0(void *a1, void *a2)
{
  v3 = v2;
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
  if (v6 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v7 = v6, v8 = a1, v9 = sub_1A524DBF4(), v7, v8, (v9 & 1) != 0) || (v10 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v11 = a1, v12 = v10, v13 = sub_1A524DBF4(), v12, v11, (v13 & 1) != 0) || (v14 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v15 = a1, v16 = v14, v17 = sub_1A524DBF4(), v16, v15, (v17 & 1) != 0) || (v18 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v19 = a1, v20 = v18, v21 = sub_1A524DBF4(), v20, v19, (v21 & 1) != 0))
  {
    v26[0] = 0;
    return [a2 px:v26 isPanGestureRecognizerOfScrollView:?];
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
    if (v23)
    {
      sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60);
      v24 = a1;
      v25 = v23;
      sub_1A524DBF4();
    }

    return 0;
  }
}

id sub_1A482DEFC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  if (v5() & 1) != 0 || ((*((*v4 & *v1) + 0x128))())
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = [Strong px_containsViewControllerModalInPresentation];

    if ((v7 & 1) == 0)
    {
      v8 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer);
      if (v8 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v9 = v8, v10 = a1, v11 = sub_1A524DBF4(), v9, v10, (v11 & 1) != 0) || (v12 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v13 = a1, v14 = v12, v15 = sub_1A524DBF4(), v14, v13, (v15 & 1) != 0) || (v16 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v17 = a1, v18 = v16, v19 = sub_1A524DBF4(), v18, v17, (v19 & 1) != 0) || (v20 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer)) != 0 && (sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60), v21 = a1, v22 = v20, v23 = sub_1A524DBF4(), v22, v21, (v23 & 1) != 0))
      {
        v24 = sub_1A482DB2C(a1);
        if (v24 != 3)
        {
          v25 = v24;
          result = [a1 view];
          if (!result)
          {
            return result;
          }

          v27 = result;
          sub_1A3C52C70(0, &qword_1EB126C18, off_1E771E2D8);
          v28 = [swift_getObjCClassFromMetadata() sharedInstance];
          v29 = v27;
          v30 = [a1 locationInView_];
          v32 = v31;
          v34 = v33;
          if (v25)
          {
            if (v25 == 1)
            {
              if ((*((*v4 & *v2) + 0x128))(v30))
              {
                sub_1A482C970(v65);
                if (v66)
                {
                  sub_1A482F4B4(v65, &qword_1EB129500, sub_1A482F510);
                  if ([v29 px:v32 scrollableAxesAtPoint:v34])
                  {
                    [v28 upGesturesAngularToleranceInDegrees];
                  }

                  else
                  {
                    [v28 uncontestedGesturesAngularToleranceInDegrees];
                  }

LABEL_33:
                  objc_opt_self();
                  [swift_dynamicCastObjCClassUnconditional() velocityInView_];
                  v62 = v61;
                  v64 = v63;

                  MEMORY[0x1A590C810](v64, v62);
                  PXRadiansToDegrees();
                }

                sub_1A482F4B4(v65, &qword_1EB129500, sub_1A482F510);
                return 0;
              }
            }

            else if ((*((*v4 & *v2) + 0x140))(v30))
            {
              [v29 px_hasRightToLeftLayoutDirection];
              [v28 horizontalGesturesAngularToleranceInDegrees];
              goto LABEL_33;
            }
          }

          else if ((v5)(v30))
          {
            [v28 downGesturesAngularToleranceInDegrees];
            goto LABEL_33;
          }
        }
      }

      else
      {
        v35 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer);
        if (v35)
        {
          sub_1A3C52C70(0, &qword_1EB126A00, 0x1E69DCA60);
          v36 = a1;
          v37 = v35;
          v38 = sub_1A524DBF4();

          if (v38)
          {
            v39 = *(v2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber);
            if (v39)
            {
              v40 = v39;
              if (![v40 isHidden])
              {
                [v40 bounds];
                v42 = v41;
                v44 = v43;
                v46 = v45;
                v48 = v47;
                [v40 _touchInsets];
                v51 = UIEdgeInsetsInsetRect(v42, v44, v46, v48, v49, v50);
                v53 = v52;
                v55 = v54;
                v57 = v56;
                [v36 locationInView_];
                v67.x = v58;
                v67.y = v59;
                v68.origin.x = v51;
                v68.origin.y = v53;
                v68.size.width = v55;
                v68.size.height = v57;
                v60 = CGRectContainsPoint(v68, v67);

                return v60;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1A482EDFC()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GrabAffordanceView();
  v2 = objc_msgSendSuper2(&v3, sel_initWithEffect_, v1);

  [v2 setBounds_];
  sub_1A524D1E4();
}

id sub_1A482EFBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A482EFF4(uint64_t a1)
{
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownAllowed] = 1;
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpAllowed] = 1;
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgeSwipeAllowed] = 0;
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsChromeVisible] = 1;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeUpGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_swipeDownGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_screenEdgePanGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberSwipeDownGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabberTapGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___proxy] = 0;
  v2 = OBJC_IVAR___PXViewControllerDismissalInteractionController____lazy_storage___logger;
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal] = 0;
  v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind] = 3;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController] = 0;
  v4 = &v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController] = 0;
  swift_unknownObjectUnownedInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ViewControllerDismissalInteractionController(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for ViewControllerDismissalInteractionController(uint64_t a1)
{
  result = qword_1EB193770;
  if (!qword_1EB193770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A482F1EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A482C0C4(v3, v4, v5, v2);
}

void sub_1A482F288(uint64_t a1)
{
  sub_1A3C56AB0(319, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1A482F3F4()
{
  result = qword_1EB1DA000[0];
  if (!qword_1EB1DA000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DA000);
  }

  return result;
}

void sub_1A482F44C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentInteractiveTransition);
    *v1 = 0;
    v1[1] = 0;
    v2 = Strong;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A482F4B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C56AB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A482F510()
{
  result = qword_1EB129508;
  if (!qword_1EB129508)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB129508);
  }

  return result;
}

unint64_t sub_1A482F574()
{
  result = qword_1EB143438;
  if (!qword_1EB143438)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB143438);
  }

  return result;
}

void *sub_1A482F5D8(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v21[3] = a4;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = [result transitioningDelegate];

    swift_unknownObjectRetain();
    v13 = sub_1A482BC80();

    if (!v12 || (swift_unknownObjectRelease(), v12 != v13))
    {
      v22 = v7;
      sub_1A482BD1C(v9);
      swift_unknownObjectRetain();
      v14 = sub_1A5246F04();
      v15 = sub_1A524D254();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v21[1] = v6;
        v17 = v16;
        v18 = swift_slowAlloc();
        v21[2] = a1;
        v23 = v12;
        aBlock = v18;
        *v17 = 136315138;
        sub_1A3C56AB0(0, &qword_1EB143430, sub_1A482F574);
        swift_unknownObjectRetain();
        v19 = sub_1A524C714();
        sub_1A3C2EF94(v19, v20, &aBlock);
      }

      (*(v22 + 8))(v9, v6);
    }

    *(a2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_wantsInteractiveDismissal) = 1;
    *(a2 + OBJC_IVAR___PXViewControllerDismissalInteractionController_interactiveDismissalGestureKind) = sub_1A482DB2C(a1);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1A524D384();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_1A482FB40(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1A482FC20;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3E01E70;
  v4[3] = &block_descriptor_101_4;
  v3 = _Block_copy(v4);

  [a1 installCompletionHandler_];
  _Block_release(v3);
}

void sub_1A482FC20(char a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a1;
  aBlock[4] = sub_1A482FD30;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_108_3;
  _Block_copy(aBlock);

  px_dispatch_on_main_queue();
}

void sub_1A482FD30()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition);
    *(Strong + OBJC_IVAR___PXViewControllerDismissalInteractionController_viewControllerTransition) = 0;

    v5 = *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController];
    *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeDownDismissalController] = 0;

    if (v1)
    {
      v6 = *&v3[OBJC_IVAR___PXViewControllerDismissalInteractionController_grabber];
      if (v6)
      {
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        v18 = sub_1A4830108;
        v19 = v8;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A3C2E0D0;
        v17 = &block_descriptor_115_0;
        v9 = _Block_copy(&aBlock);
        v10 = v6;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v18 = sub_1A4830104;
        v19 = v11;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A3E01E70;
        v17 = &block_descriptor_122_1;
        v12 = _Block_copy(&aBlock);
        v13 = v10;

        [v7 animateWithDuration:v9 animations:v12 completion:0.2];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

double sub_1A482FF38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  type metadata accessor for ViewControllerSwipeUpDismissalController();
  sub_1A3C341C8(v2, v7);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1A48F8774(v7, sub_1A4830018, v4);
  *(v1 + OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController) = v5;

  (*(*v5 + 104))(v3);

  return result;
}

double sub_1A4830018()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR___PXViewControllerDismissalInteractionController_currentSwipeUpDismissalController] = 0;
  }

  return result;
}

uint64_t sub_1A4830078(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C56AB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *PXSwiftUITungstenView.mediaProvider.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t PXSwiftUITungstenView.tungstenView.getter()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0(0);
  MEMORY[0x1A5906C60](&v3);
  return v3;
}

void sub_1A48301B0(uint64_t a1)
{
  if (!qword_1EB143440)
  {
    sub_1A4830208(255);
    v1 = sub_1A524B974();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143440);
    }
  }
}

void sub_1A4830208(uint64_t a1)
{
  if (!qword_1EB143448)
  {
    sub_1A3C52C70(255, &qword_1EB143450, &off_1E7721708);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143448);
    }
  }
}

void *sub_1A4830270@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v6 = *(a1 + 16);
  v7 = v3;
  sub_1A48301B0(0);
  result = MEMORY[0x1A5906C60](&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1A48302C4(void **a1, uint64_t a2)
{
  v2 = *a1;
  sub_1A48301B0(0);
  v3 = v2;
  return sub_1A524B904();
}

void (*PXSwiftUITungstenView.tungstenView.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[4];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_1A48301B0(0);
  v9 = v8;
  v4[11] = v8;

  v10 = v7;
  MEMORY[0x1A5906C60](v9);
  return sub_1A4830430;
}

void sub_1A4830430(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_1A524B904();
  }

  else
  {
    sub_1A524B904();
  }

  free(v2);
}

uint64_t PXSwiftUITungstenView.$tungstenView.getter()
{
  sub_1A48301B0(0);
  sub_1A524B924();
  return v1;
}

uint64_t PXSwiftUITungstenView.tapAction.getter()
{
  v1 = *(v0 + 40);
  sub_1A3C66EE8(v1, *(v0 + 48));
  return v1;
}

uint64_t PXSwiftUITungstenView.init(rootLayout:mediaProvider:tungstenView:tapAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void sub_1A483058C(char a1)
{
  v28.receiver = v1;
  v28.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  objc_msgSendSuper2(&v28, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [v3 subviews];

  sub_1A3C52C70(0, &qword_1EB12B170, 0x1E69DD250);
  v6 = sub_1A524CA34();
  v7 = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    __break(1u);
    goto LABEL_14;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_13;
  }

LABEL_4:

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v7 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  v8 = MEMORY[0x1A59097F0](0, v7);
LABEL_7:
  v9 = v8;

  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = v9;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v10 setFrame_];
  [v10 setAutoresizingMask_];

  v22 = [v1 navigationController];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 topViewController];

    if (v24)
    {
      v25 = [v10 scrollViewController];
      v26 = [v25 scrollView];

      v27 = v26;
      swift_unknownObjectRelease();
      [v24 setContentScrollView:v27 forEdge:15];
    }
  }
}

id sub_1A4830994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSwiftUITungstenView.ViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PXSwiftUITungstenView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v18 = *(v0 + 1);
  type metadata accessor for PXSwiftUITungstenView.ViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [objc_allocWithZone(off_1E7721708) init];
  [v4 setRootLayout_];
  [v4 registerAllTextureProvidersWithMediaProvider_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  sub_1A48301B0(0);
  v8 = v6;
  sub_1A524B904();
  sub_1A4830CA0(0);
  sub_1A5249FD4();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_handleTapGestureWithGesture_];

  [v8 addGestureRecognizer_];
  v10 = v3;
  result = [v10 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor_];

    result = [v10 view];
    if (result)
    {
      v14 = result;
      [result addSubview_];

      [v8 setShouldScrollViewContentInsetAlwaysAdjustToAvoidSafeArea_];
      v15 = [v8 scrollViewController];
      v16 = [v15 scrollView];

      v17 = v16;
      swift_unknownObjectRelease();
      [v10 setContentScrollView:v17 forEdge:15];

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A4830CA0(uint64_t a1)
{
  if (!qword_1EB143458)
  {
    sub_1A4830CFC();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143458);
    }
  }
}

unint64_t sub_1A4830CFC()
{
  result = qword_1EB143460;
  if (!qword_1EB143460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143460);
  }

  return result;
}

void PXSwiftUITungstenView.updateUIViewController(_:context:)()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0(0);
  MEMORY[0x1A5906C60](&v3);
  v2 = v3;
  if (v3)
  {
    [v3 setNeedsDisplay];
  }
}

uint64_t PXSwiftUITungstenView.makeCoordinator()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1A48301B0(0);
  sub_1A524B924();
  type metadata accessor for PXSwiftUITungstenView.Coordinator();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  sub_1A3C66EE8(v1, v2);
  return v3;
}

void *sub_1A4830E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *sub_1A4830F0C()
{
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = v1;
  sub_1A48301B0(0);
  result = MEMORY[0x1A5906C60](&v4);
  if (v4)
  {

    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = v3;
    v4 = 0;
    return sub_1A524B904();
  }

  return result;
}

void sub_1A4830F94(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = *(v1 + 32);
    v10 = *(v1 + 16);
    v11 = v4;
    sub_1A48301B0(0);
    v6 = v5;

    MEMORY[0x1A5906C60](&v9, v6);
    v7 = v9;
    if (v9)
    {
      objc_opt_self();
      v8 = [swift_dynamicCastObjCClassUnconditional() locationInView_];
      v2(v8);
    }

    sub_1A3C33378(v2, v3);
  }
}

void *PXSwiftUITungstenView.Coordinator.deinit()
{
  v1 = v0[4];

  sub_1A3C33378(v0[5], v0[6]);
  return v0;
}

uint64_t PXSwiftUITungstenView.Coordinator.__deallocating_deinit()
{
  v1 = v0[4];

  sub_1A3C33378(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

unint64_t sub_1A4831160()
{
  result = qword_1EB143468;
  if (!qword_1EB143468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143468);
  }

  return result;
}

void sub_1A48311B8()
{
  v1 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = v1;
  sub_1A48301B0(0);
  MEMORY[0x1A5906C60](&v3);
  v2 = v3;
  if (v3)
  {
    [v3 setNeedsDisplay];
  }
}

double sub_1A4831260@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_1A48301B0(0);
  sub_1A524B924();
  type metadata accessor for PXSwiftUITungstenView.Coordinator();
  v5 = swift_allocObject();
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  *a1 = v5;
  return sub_1A3C66EE8(v3, v4);
}

uint64_t sub_1A48312F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4830CFC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4831358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4830CFC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A48313BC(uint64_t a1)
{
  sub_1A4830CFC();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_So7CGPointVIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4831424(void *a1)
{
  v2 = swift_allocObject();
  sub_1A4831464(a1);
  return v2;
}

id sub_1A4831464(void *a1)
{
  v2 = v1;
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26[-v5];
  *(v2 + 16) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  v7 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  v8 = sub_1A5240E64();
  v9 = *(*(v8 - 8) + 56);
  v10 = 1;
  v9(v2 + v7, 1, 1, v8);
  v11 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable;
  *(v2 + v11) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5241604();
  *(v2 + 56) = a1;
  v12 = a1;
  v13 = PHCollection.title.getter();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *(v2 + 64) = v15;
  *(v2 + 72) = v16;
  v17 = objc_opt_self();
  *(v2 + 80) = [v17 publicURLEnabledForSharedAlbum_];
  v18 = [v17 publicURLForSharedAlbum_];
  if (v18)
  {
    v19 = v18;
    sub_1A5240DE4();

    v10 = 0;
  }

  v9(v6, v10, 1, v8);
  v20 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A4831980(v6, v2 + v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  swift_endAccess();
  v21 = [v17 notificationsEnabledForSharedAlbum_];
  *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled) = v21;
  v22 = [v17 multipleContributorsEnabledForSharedAlbum_];
  *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]) = v22;
  result = [v12 photoLibrary];
  if (result)
  {
    v24 = result;
    v25 = swift_allocObject();
    swift_weakInit();

    PHPhotoLibrary.registerObserver(_:block:)(0, 0, sub_1A483179C, v25, v27);

    swift_beginAccess();
    sub_1A4831980(v27, v2 + 16, &unk_1EB129F60, sub_1A3C6F5F0);
    swift_endAccess();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A483179C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v2 = Strong;
  v3 = (*(*Strong + 216))();
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v4 = sub_1A524DC34();

  if (!v4)
  {
LABEL_8:

    return result;
  }

  v5 = [v4 objectAfterChanges];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  if (*(v2 + 56) != v5)
  {
    v7 = *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v6;
    aBlock[4] = sub_1A4834244;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3DC72D4;
    aBlock[3] = &block_descriptor_284;
    v10 = _Block_copy(aBlock);
    v6 = v6;

    [v7 performChanges_];
    _Block_release(v10);
  }

  return result;
}

uint64_t sub_1A4831980(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C4D290(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A48319EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

id sub_1A4831A64()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  v1 = v0[7];

  return v1;
}

void sub_1A4831AD8(void *a1)
{
  v2 = v1;
  v4 = v1[7];
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[7];
    v2[7] = a1;
    v10 = a1;

    [*(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 528))(v9);
  }
}

id sub_1A4831C54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
  v4 = v1;

  return [*(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

uint64_t sub_1A4831CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A4831D44()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4831DB8(uint64_t a1, uint64_t a2)
{
  v5 = v2[8] == a1 && v2[9] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[8] = a1;
    v2[9] = a2;

    v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

    [v6 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 528))(v9);
  }

  return result;
}

void sub_1A4831F14()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4831F70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4831FF0()
{
  swift_getKeyPath();
  (*(*v0 + 520))();

  return v0[80];
}

void sub_1A4832054(char a1)
{
  if (v1[80] == (a1 & 1))
  {
    v1[80] = a1 & 1;
    v4 = *&v1[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable];

    [v4 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 528))(v3);
  }
}

uint64_t sub_1A48321D8(uint64_t a1)
{
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A426E444(a1, &v6 - v3);
  return sub_1A4832318(v4);
}

uint64_t sub_1A483227C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 520))();

  v3 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  return sub_1A426E444(v1 + v3, a1);
}

uint64_t sub_1A4832318(uint64_t a1)
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A426E444(v1 + v7, v6);
  v8 = sub_1A48338FC(v6, a1);
  sub_1A3C68A04(v6, &unk_1EB12B250, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 528))(v10);
  }

  else
  {
    sub_1A426E444(a1, v6);
    swift_beginAccess();
    sub_1A4069480(v6, v1 + v7);
    swift_endAccess();
    [*(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
    sub_1A3C68A04(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  return sub_1A3C68A04(a1, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1A4832544(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A426E444(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL;
  swift_beginAccess();
  sub_1A4069480(v7, a1 + v8);
  swift_endAccess();
  [*(a1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
  return sub_1A3C68A04(v7, &unk_1EB12B250, v4);
}

uint64_t sub_1A483264C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A483270C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A48327A0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 520))();

  return *(v2 + *a2);
}

void sub_1A4832838(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;
    v8 = *(v5 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

    [v8 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v5 + 528))(v7);
  }
}

double sub_1A4832958()
{
  v1 = v0;
  v2 = (*(*v0 + 216))();
  v3 = PHCollection.title.getter();
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if ((*(*v1 + 264))() == v6 && v8 == v7)
  {

LABEL_14:

    return result;
  }

  v10 = sub_1A524EAB4();

  if (v10)
  {
    goto LABEL_14;
  }

  return sub_1A4831DB8(v6, v7);
}

void sub_1A4832A90()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 publicURLEnabledForSharedAlbum_];

  if (v3 != ((*(*v0 + 312))() & 1))
  {
    if (v3 == v0[80])
    {
      v0[80] = v3;
      v6 = *&v0[OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable];

      [v6 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v5);
    }
  }
}

uint64_t sub_1A4832C50()
{
  v1 = v0;
  v2 = sub_1A5240E64();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406C37C(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = objc_opt_self();
  v22 = (*(*v0 + 216))();
  v23 = [v21 publicURLForSharedAlbum_];

  if (v23)
  {
    sub_1A5240DE4();

    v24 = v37;
    (*(v37 + 56))(v17, 0, 1, v2);
  }

  else
  {
    v24 = v37;
    (*(v37 + 56))(v17, 1, 1, v2);
  }

  v25 = sub_1A408A03C(v17, v20);
  (*(*v1 + 360))(v25);
  v26 = *(v5 + 48);
  sub_1A426E444(v14, v7);
  sub_1A426E444(v20, &v7[v26]);
  v27 = *(v24 + 48);
  if (v27(v7, 1, v2) != 1)
  {
    v28 = v35;
    sub_1A426E444(v7, v35);
    if (v27(&v7[v26], 1, v2) != 1)
    {
      v31 = v34;
      (*(v24 + 32))(v34, &v7[v26], v2);
      sub_1A4833EBC(&qword_1EB126050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      LODWORD(v37) = sub_1A524C594();
      v32 = *(v24 + 8);
      v32(v31, v2);
      v33 = MEMORY[0x1E6968FB0];
      sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v32(v28, v2);
      sub_1A3C68A04(v7, &unk_1EB12B250, v33);
      if (v37)
      {
        return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      }

      goto LABEL_10;
    }

    sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    (*(v24 + 8))(v28, v2);
LABEL_9:
    sub_1A43975D8(v7);
LABEL_10:
    v29 = v36;
    sub_1A426E444(v20, v36);
    sub_1A4832318(v29);
    return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  sub_1A3C68A04(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if (v27(&v7[v26], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_1A3C68A04(v7, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  return sub_1A3C68A04(v20, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

void sub_1A483318C()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 notificationsEnabledForSharedAlbum_];

  if (v3 != ((*(*v0 + 408))() & 1))
  {
    if (v3 == *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled))
    {
      *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__notificationsEnabled) = v3;
      v6 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

      [v6 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v5);
    }
  }
}

void sub_1A4833354()
{
  v1 = objc_opt_self();
  v2 = (*(*v0 + 216))();
  v3 = [v1 multipleContributorsEnabledForSharedAlbum_];

  if (v3 != ((*(*v0 + 456))() & 1))
  {
    if (v3 == *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]))
    {
      *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__multipleContributorsEnabled[0]) = v3;
      v6 = *(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);

      [v6 signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 528))(v5);
    }
  }
}

uint64_t SharedAlbumObservableModel.deinit()
{
  sub_1A3C68A04(v0 + 16, &unk_1EB129F60, sub_1A3C6F5F0);

  sub_1A3C68A04(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

  v1 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedAlbumObservableModel.__deallocating_deinit()
{
  sub_1A3C68A04(v0 + 16, &unk_1EB129F60, sub_1A3C6F5F0);

  sub_1A3C68A04(v0 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel__publicURL, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

  v1 = OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A4833858@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4833870(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedAlbumObservableModel(0);
  sub_1A4833EBC(&unk_1EB1434B0, type metadata accessor for SharedAlbumObservableModel, &protocol conformance descriptor for SharedAlbumObservableModel);

  sub_1A5245C54();
}

uint64_t sub_1A48338FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D290(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1A406C37C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A426E444(a1, v13);
  sub_1A426E444(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A426E444(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1A4833EBC(&qword_1EB126050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A3C68A04(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A43975D8(v13);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A3C68A04(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v17 = 0;
  return v17 & 1;
}

uint64_t type metadata accessor for SharedAlbumObservableModel(uint64_t a1)
{
  result = qword_1EB1DA6E0;
  if (!qword_1EB1DA6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4833CC0()
{
  result = qword_1EB143478;
  if (!qword_1EB143478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143478);
  }

  return result;
}

unint64_t sub_1A4833D18()
{
  result = qword_1EB143480;
  if (!qword_1EB143480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143480);
  }

  return result;
}

unint64_t sub_1A4833D70()
{
  result = qword_1EB143488;
  if (!qword_1EB143488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143488);
  }

  return result;
}

unint64_t sub_1A4833DC8()
{
  result = qword_1EB143490;
  if (!qword_1EB143490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143490);
  }

  return result;
}

unint64_t sub_1A4833E20()
{
  result = qword_1EB143498;
  if (!qword_1EB143498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143498);
  }

  return result;
}

uint64_t sub_1A4833EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4833F08()
{
  result = qword_1EB1434A8;
  if (!qword_1EB1434A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1434A8);
  }

  return result;
}

void sub_1A4833F64(uint64_t a1)
{
  sub_1A3C4D290(319, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_1A48341A8(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v3 + *a1) = *(v2 + 24);
  return [*(v3 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

id sub_1A48341F8()
{
  v1 = *(v0 + 16);
  *(v1 + 80) = *(v0 + 24);
  return [*(v1 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
}

double sub_1A4834244()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 56);
    *(Strong + 56) = v1;
    v6 = v1;

    [*(v4 + OBJC_IVAR____TtC12PhotosUICore26SharedAlbumObservableModel_observable) signalChange_];
    sub_1A4832958();
    sub_1A4832A90();
    sub_1A4832C50();
    sub_1A483318C();
    sub_1A4833354();
  }

  return result;
}

id sub_1A4834328(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1A483439C()
{
  result = [*(v0 + OBJC_IVAR____TtC12PhotosUICore35OneUpSharePlayVideoPlaybackDelegate_displayAsset) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A48344A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneUpSharePlayVideoPlaybackDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A48344E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524C594() & 1;
}

uint64_t sub_1A4834580(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A3C672D4(v4, a2);
  return sub_1A524ECE4();
}

void sub_1A4834694(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E60(&qword_1EB12A400, v5, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A483498C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E60(&qword_1EB12A400, v5, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}

void sub_1A4834C84(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = AssociatedTypeWitness;
  v7 = type metadata accessor for PlaceholderUIItem(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1A3C50E60(&qword_1EB12A400, v5, type metadata accessor for PlaceholderUIItem, &unk_1A53686EC);
  sub_1A5245A24();
}