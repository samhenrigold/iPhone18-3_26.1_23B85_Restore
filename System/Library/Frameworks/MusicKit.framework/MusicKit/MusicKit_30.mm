void sub_2174AFBCC(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2();
  v5 = sub_217751F18();
  v6 = [a1 musicKit:v5 artworkCatalogForProperty:];

  if (v6)
  {
    swift_getObjectType();
    v7 = sub_217717634();
    swift_unknownObjectRelease();
    v8 = &off_28297F3C8;
    v9 = &type metadata for SoftLinking_ArtworkCatalog;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v7;
  a3[3] = v9;
  a3[4] = v8;
}

uint64_t sub_2174AFCB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_2174AFD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB284D0;
  if (!qword_27CB284D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284D0);
  }

  return result;
}

uint64_t sub_2174AFD5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_101();
  v5(v4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_27()
{
  result = 0;
  *(v0 + 640) = 0;
  *(v0 + 632) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_34_19@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5, __n128 a6, __int128 a7, __int128 a8, uint64_t a9)
{
  result = a6;
  *(a1 + 80) = a9;
  *(a1 + 48) = a7;
  *(a1 + 64) = a8;
  *(a1 + 32) = a6;
  *(a1 + 88) = a5;
  return result;
}

uint64_t OUTLINED_FUNCTION_45_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{

  return swift_readAtKeyPath();
}

void *OUTLINED_FUNCTION_46_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __src, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return memcpy(va, &__src, 0x78uLL);
}

void *OUTLINED_FUNCTION_47_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return memcpy(va, v54, 0x161uLL);
}

__n128 OUTLINED_FUNCTION_50_13@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15, __int128 a16, arg17_2174AFEE4 a17)
{
  result = a15;
  *(a1 + 74) = *&a17.arr[10];
  a1[3] = a16;
  a1[4] = *a17.arr;
  a1[2] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_52_16()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

void *OUTLINED_FUNCTION_54_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return memcpy(&__dst, (v55 - 168), 0x78uLL);
}

void *OUTLINED_FUNCTION_55_11(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);

  return memcpy(va, a2, 0x78uLL);
}

double OUTLINED_FUNCTION_56_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a40 = v42;
  a41 = v41;

  *&result = MusicIdentifierSet.playParameters(for:)(&a40, v43 - 168).n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_59_7()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_62_12(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return memcpy(va, (v39 - 184), 0x78uLL);
}

double OUTLINED_FUNCTION_63_13()
{
  *(v0 + 1008) = 0;
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_12(uint64_t a1, uint64_t a2)
{
  *(v2 - 88) = a2;

  return sub_2177517D8();
}

uint64_t OUTLINED_FUNCTION_79_11()
{

  return swift_getAtKeyPath();
}

void *OUTLINED_FUNCTION_81_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return memcpy(va, (v6 + 16), 0x68uLL);
}

void *OUTLINED_FUNCTION_82_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);

  return memcpy(va, (v39 - 168), 0x78uLL);
}

void OUTLINED_FUNCTION_83_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_21774B5EC(va, v2 - 168);
}

uint64_t OUTLINED_FUNCTION_86_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{

  return sub_2171F50C0(&a55, &a40, a3, a4);
}

uint64_t OUTLINED_FUNCTION_98_12()
{

  return sub_217751568();
}

void *OUTLINED_FUNCTION_99_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char __dst, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{

  return memcpy(&__dst, (v55 - 184), 0x78uLL);
}

double OUTLINED_FUNCTION_100_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a40 = v42;
  a41 = v41;

  *&result = MusicIdentifierSet.playParameters(for:)(&a40, v43 - 184).n128_u64[0];
  return result;
}

uint64_t *OUTLINED_FUNCTION_102_9()
{
  *(v0 + 648) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 624));
}

void *OUTLINED_FUNCTION_103_10(void *a1)
{

  return memcpy(a1, (v1 + 704), 0xE8uLL);
}

id OUTLINED_FUNCTION_104_8()
{

  return [v0 (v1 + 3623)];
}

void RadioShowPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v26 = v0;
  v27 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memcpy(__dst, v13, sizeof(__dst));
  v14 = *v10;
  v15 = v10[1];
  v16 = *(v10 + 16);
  sub_2172A497C(__src);
  memcpy(v12, __src, 0x221uLL);
  *(v12 + 552) = 0u;
  *(v12 + 568) = 1;
  *(v12 + 576) = 0u;
  *(v12 + 592) = 0u;
  *(v12 + 608) = 0u;
  *(v12 + 624) = 0u;
  *(v12 + 640) = 0;
  memcpy((v12 + 648), __src, 0x221uLL);
  v17 = type metadata accessor for RadioShowPropertyProvider(0);
  *(v12 + 1200) = 0u;
  v18 = v17[11];
  v19 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v12 + v18, 1, 1, v19);
  v20 = v12 + v17[12];
  *(v20 + 96) = 0;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v12 + v17[13]) = 0;
  if (qword_280BE3578 != -1)
  {
    swift_once();
  }

  v21 = qword_280C01FB8;
  if (qword_280C01FB8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v24 = sub_217752D28();

    v21 = v24;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v12 + v17[14]) = v21;
  v22 = (v12 + v17[17]);
  memcpy((v12 + v17[15]), __dst, 0x161uLL);
  v23 = v12 + v17[16];
  *v23 = v14;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  *v22 = v8;
  v22[1] = v6;
  *(v12 + v17[18]) = v4;
  *(v12 + v17[19]) = v25;
  *(v12 + v17[20]) = v26;
  *(v12 + v17[21]) = v27;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for RadioShowPropertyProvider(uint64_t a1)
{
  result = qword_280BE3560;
  if (!qword_280BE3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RadioShowPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *RadioShowPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t RadioShowPropertyProvider.editorialNotes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[36];
  v7[0] = v1[35];
  v7[1] = v2;
  v4 = v1[38];
  v8 = v1[37];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_21726A630(v7, &v6, &qword_27CB24B70, &unk_217759460);
}

__n128 RadioShowPropertyProvider.editorialNotes.setter(uint64_t a1)
{
  v3 = v1[36];
  v8[0] = v1[35];
  v8[1] = v3;
  v4 = v1[38];
  v8[2] = v1[37];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(a1 + 16);
  v1[35] = *a1;
  v1[36] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[37] = result;
  v1[38] = v7;
  return result;
}

void RadioShowPropertyProvider.hostName.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 632) = v2;
  *(v1 + 640) = v0;
}

uint64_t RadioShowPropertyProvider.mainUberArtwork.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 648), 0x221uLL);
  memcpy(a1, (v1 + 648), 0x221uLL);
  return sub_21726A630(__dst, v4, &qword_27CB24400, &unk_21775E9A0);
}

void *RadioShowPropertyProvider.mainUberArtwork.setter(const void *a1)
{
  memcpy(v4, (v1 + 648), 0x221uLL);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + 648), a1, 0x221uLL);
}

void RadioShowPropertyProvider.name.setter()
{
  OUTLINED_FUNCTION_143();

  *(v1 + 1200) = v2;
  *(v1 + 1208) = v0;
}

uint64_t RadioShowPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

void RadioShowPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_25_29() + 52);

  *(v1 + v2) = v0;
}

void RadioShowPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284D8, &unk_21776D420);
  if (!swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_52_17();
    sub_217752AA8();
    OUTLINED_FUNCTION_49_16();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AEB00);
    v44[0] = v4;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_55_12();
    goto LABEL_66;
  }

  v9 = qword_280BE6648;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_14_28(&qword_280BE6648);
  }

  if (OUTLINED_FUNCTION_174(qword_280C01FF8))
  {
    memcpy(v44, v2, 0x221uLL);
    memcpy(v45, v2, 0x221uLL);
    OUTLINED_FUNCTION_104(v45);
    if (!v10)
    {
LABEL_36:
      v12 = swift_allocObject();
      memcpy(v43, v44, sizeof(v43));
      sub_217284028(v43, &v42);

      memcpy((v12 + 16), v45, 0x221uLL);
      v11 = &type metadata for Artwork;
      goto LABEL_37;
    }

LABEL_7:

    v11 = 0;
    v12 = 0;
    goto LABEL_37;
  }

  v13 = qword_280BE6680;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_280BE6680);
  }

  OUTLINED_FUNCTION_174(qword_280C02018);
  OUTLINED_FUNCTION_161();
  if (v13)
  {
    v14 = *(v2 + 552);
    if (v14)
    {
      v15 = &qword_27CB24BE8;
      v16 = &qword_2177595F0;
LABEL_13:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      sub_217751DE8();
LABEL_61:

      *v6 = v14;
      v6[1] = 0;
      v6[2] = 0;
      v6[3] = v17;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v18 = qword_280BE6698;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_13_5(&qword_280BE6698);
  }

  OUTLINED_FUNCTION_174(qword_280C02028);
  OUTLINED_FUNCTION_161();
  if (v18)
  {
    v19 = *(v2 + 560);
    v20 = *(v2 + 568);
    v21 = *(v2 + 592);
    *v43 = *(v2 + 576);
    *&v43[16] = v21;
    *&v43[32] = *(v2 + 608);
    if (v20 != 1)
    {
      v12 = swift_allocObject();
      *&v45[0] = v19;
      *(&v45[0] + 1) = v20;
      v22 = *(v2 + 592);
      v45[1] = *(v2 + 576);
      v45[2] = v22;
      v45[3] = *(v2 + 608);
      sub_217350F74(v45, v44);

      *(v12 + 16) = v19;
      *(v12 + 24) = v20;
      v23 = *&v43[16];
      *(v12 + 32) = *v43;
      *(v12 + 48) = v23;
      *(v12 + 64) = *&v43[32];
      v11 = &type metadata for EditorialNotes;
      goto LABEL_37;
    }

    goto LABEL_7;
  }

  v24 = qword_280BE6670;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_1_56(&qword_280BE6670);
  }

  OUTLINED_FUNCTION_174(qword_280C02010);
  OUTLINED_FUNCTION_161();
  if (v24)
  {
    v14 = *(v2 + 624);
    if (v14)
    {
      v15 = &qword_27CB24BE0;
      v16 = &unk_2177657E0;
      goto LABEL_13;
    }

LABEL_60:
    v17 = 0;
    goto LABEL_61;
  }

  v25 = qword_280BE6638;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_12_24(&qword_280BE6638);
  }

  OUTLINED_FUNCTION_174(qword_280C01FF0);
  OUTLINED_FUNCTION_161();
  if (v25)
  {
    v26 = *(v2 + 640);
    if (v26)
    {
      v27 = *(v2 + 632);
LABEL_29:
      sub_217751DE8();
      v28 = MEMORY[0x277D837D0];
LABEL_44:

      *v6 = v27;
      v6[1] = v26;
      v6[2] = 0;
      v6[3] = v28;
      goto LABEL_62;
    }

    goto LABEL_43;
  }

  v29 = qword_280BE6690;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_11_35(&qword_280BE6690);
  }

  OUTLINED_FUNCTION_174(qword_280C02020);
  OUTLINED_FUNCTION_161();
  if (v29)
  {
    memcpy(v44, (v2 + 648), 0x221uLL);
    memcpy(v45, (v2 + 648), 0x221uLL);
    OUTLINED_FUNCTION_104(v45);
    if (!v10)
    {
      goto LABEL_36;
    }

    v12 = 0;
    v11 = 0;
LABEL_37:
    *v6 = v12;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v11;
    goto LABEL_62;
  }

  v30 = qword_280BE6658;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_280BE6658);
  }

  OUTLINED_FUNCTION_174(qword_280C02000);
  OUTLINED_FUNCTION_161();
  if (v30)
  {
    v26 = *(v2 + 1208);
    if (v26)
    {
      v27 = *(v2 + 1200);
      goto LABEL_29;
    }

LABEL_43:
    v27 = 0;
    v28 = 0;
    goto LABEL_44;
  }

  v31 = qword_280BE6660;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_9_31(&qword_280BE6660);
  }

  OUTLINED_FUNCTION_174(qword_280C02008);
  OUTLINED_FUNCTION_161();
  if (v31)
  {
    v32 = type metadata accessor for RadioShowPropertyProvider(0);
    sub_21726A630(v2 + *(v32 + 44), v1, &unk_27CB277C0, &qword_217758DC0);
    v33 = sub_2177516D8();
    if (__swift_getEnumTagSinglePayload(v1, 1, v33) == 1)
    {

      sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
      memset(v45, 0, 32);
    }

    else
    {
      *(&v45[1] + 1) = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
      (*(*(v33 - 8) + 32))(boxed_opaque_existential_0, v1, v33);
    }

    v39 = v45[1];
    *v6 = v45[0];
    *(v6 + 1) = v39;
  }

  else
  {
    v34 = qword_280BE6628;

    if (v34 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280BE6628);
    }

    OUTLINED_FUNCTION_174(qword_280BE6630);
    OUTLINED_FUNCTION_161();
    if ((v34 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
      swift_allocObject();
      v40 = OUTLINED_FUNCTION_54_0();
      v41 = OUTLINED_FUNCTION_174(v40);

      if ((v41 & 1) == 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_52_17();
          sub_217752AA8();
          OUTLINED_FUNCTION_49_16();
          MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
          v44[0] = v4;
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_55_12();
LABEL_66:
          OUTLINED_FUNCTION_17_22("Fatal error");
          __break(1u);
        }
      }

      v14 = *(v2 + *(type metadata accessor for RadioShowPropertyProvider(0) + 52));
      if (v14)
      {
        v15 = &qword_27CB24BD8;
        v16 = &unk_2177595E0;
        goto LABEL_13;
      }

      goto LABEL_60;
    }

    v35 = type metadata accessor for RadioShowPropertyProvider(0);
    sub_21726A630(v2 + *(v35 + 48), v45, &qword_27CB25330, &unk_21775E9B0);
    if (*(&v45[5] + 1))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
      v37 = swift_allocObject();
      memcpy((v37 + 16), v45, 0x68uLL);
    }

    else
    {

      sub_2171F0738(v45, &qword_27CB25330, &unk_21775E9B0);
      v37 = 0;
      v36 = 0;
    }

    *v6 = v37;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v36;
  }

LABEL_62:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174B12CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_21726A630(a1, &v4, &qword_27CB2AD40, &qword_2177583F0);

  return RadioShowPropertyProvider.subscript.setter();
}

uint64_t RadioShowPropertyProvider.subscript.setter()
{
  OUTLINED_FUNCTION_143();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284D8, &unk_21776D420);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AEB00);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_17;
  }

  v1 = qword_280BE6680;
  swift_retain_n();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_280BE6680);
  }

  OUTLINED_FUNCTION_139_7(qword_280C02018);
  OUTLINED_FUNCTION_44_1();

  if (v1)
  {
    OUTLINED_FUNCTION_15_6();
    sub_217351C74(v2, v3);
  }

  else
  {
    v4 = qword_280BE6670;

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_56(&qword_280BE6670);
    }

    OUTLINED_FUNCTION_139_7(qword_280C02010);
    OUTLINED_FUNCTION_44_1();

    if (v4)
    {
      swift_getKeyPath("xe=e");
      OUTLINED_FUNCTION_15_6();
      sub_217351C78(v5, v6);
    }

    else
    {
      v7 = qword_280BE6628;

      if (v7 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280BE6628);
      }

      OUTLINED_FUNCTION_139_7(qword_280BE6630);
      OUTLINED_FUNCTION_44_1();

      if ((v7 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
        swift_initStackObject();
        v10 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_139_7(v10);
        OUTLINED_FUNCTION_44_1();

        while (1)
        {
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
          type metadata accessor for AnyMusicProperty();
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
LABEL_17:
          OUTLINED_FUNCTION_17_22("Fatal error");
          __break(1u);
        }
      }

      swift_getKeyPath(byte_21776D458);
      OUTLINED_FUNCTION_15_6();
      sub_217351CB4(v8, v9);
    }
  }

  return sub_2171F0738(v0, &qword_27CB2AD40, &qword_2177583F0);
}

void (*RadioShowPropertyProvider.subscript.modify())(void **a1, char a2)
{
  OUTLINED_FUNCTION_143();
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *v2 = v3;
  v3[8] = v0;
  v3[9] = v1;
  RadioShowPropertyProvider.subscript.getter();
  return sub_2174B1698;
}

void sub_2174B1698(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    RadioShowPropertyProvider.subscript.setter();
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    RadioShowPropertyProvider.subscript.setter();
  }

  free(v2);
}

void RadioShowPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB284E0, &qword_21776D4B8);
  OUTLINED_FUNCTION_45_0(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  v13 = type metadata accessor for RadioShowPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27EB8, &qword_21776BDA0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AEB30);
    v25[0] = v7;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v8 + 216), v22, v23);
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v24 = 103;
    goto LABEL_27;
  }

  v2 = v15;
  sub_2171FF30C(v5, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_2171F0738(v12, &qword_27CB284E0, &qword_21776D4B8);
    OUTLINED_FUNCTION_28_23();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000032, 0x80000002177AEB60);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_30_22();
    v24 = 106;
    goto LABEL_27;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_2174B362C(v12, v1);
  v16 = qword_280BE6680;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_280BE6680);
  }

  OUTLINED_FUNCTION_174(qword_280C02018);
  OUTLINED_FUNCTION_36_14();

  if (v16)
  {

    v17 = *(v1 + 552);
    sub_217751DE8();
    sub_2174B3690(v1);
    if (!v17)
    {
      v17 = sub_217751DE8();
    }

    *(v3 + 552) = v17;
  }

  else
  {
    v18 = qword_280BE6670;

    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_56(&qword_280BE6670);
    }

    OUTLINED_FUNCTION_174(qword_280C02010);
    OUTLINED_FUNCTION_36_14();

    if (v18)
    {

      v19 = *(v1 + 624);
      sub_217751DE8();
      sub_2174B3690(v1);
      if (!v19)
      {
        v19 = sub_217751DE8();
      }

      *(v3 + 624) = v19;
    }

    else
    {
      v20 = qword_280BE6628;

      if (v20 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_280BE6628);
      }

      OUTLINED_FUNCTION_174(qword_280BE6630);
      OUTLINED_FUNCTION_36_14();

      if ((v20 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
        swift_initStackObject();
        v21 = OUTLINED_FUNCTION_54_0();
        OUTLINED_FUNCTION_174(v21);
        OUTLINED_FUNCTION_36_14();

        while (1)
        {
          OUTLINED_FUNCTION_28_23();
          sub_217752AA8();
          MEMORY[0x21CEA23B0](0xD000000000000026, 0x80000002177AEBA0);
          v25[0] = v2;
          sub_217752C78();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_30_22();
          v24 = 122;
LABEL_27:
          v25[0] = v24;
          OUTLINED_FUNCTION_17_22("Fatal error");
          __break(1u);
        }
      }

      sub_21726A630(v1 + *(v13 + 48), v25, &qword_27CB25330, &unk_21775E9B0);
      sub_2174B3690(v1);
      if (v25[11])
      {
        memcpy(v26, v25, 0x68uLL);
      }

      else
      {
        sub_21726A630(v3 + *(v13 + 48), v26, &qword_27CB25330, &unk_21775E9B0);
        if (v25[11])
        {
          sub_2171F0738(v25, &qword_27CB25330, &unk_21775E9B0);
        }
      }

      sub_21733BBDC(v26, v3 + *(v13 + 48), &qword_27CB25330, &unk_21775E9B0);
    }
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_2174B1CA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217765440;
  if (qword_280BE6648 != -1)
  {
    OUTLINED_FUNCTION_14_28(&qword_280BE6648);
  }

  *(v0 + 32) = qword_280C01FF8;
  v1 = qword_280BE6680;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_2_60(&qword_280BE6680);
  }

  *(v0 + 40) = qword_280C02018;
  v2 = qword_280BE6698;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_13_5(&qword_280BE6698);
  }

  *(v0 + 48) = qword_280C02028;
  v3 = qword_280BE6670;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_1_56(&qword_280BE6670);
  }

  *(v0 + 56) = qword_280C02010;
  v4 = qword_280BE6638;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_12_24(&qword_280BE6638);
  }

  *(v0 + 64) = qword_280C01FF0;
  v5 = qword_280BE6690;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_11_35(&qword_280BE6690);
  }

  *(v0 + 72) = qword_280C02020;
  v6 = qword_280BE6658;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_280BE6658);
  }

  *(v0 + 80) = qword_280C02000;
  v7 = qword_280BE6660;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_9_31(&qword_280BE6660);
  }

  *(v0 + 88) = qword_280C02008;
  v8 = qword_280BE6628;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280BE6628);
  }

  *(v0 + 96) = qword_280BE6630;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25490, &qword_21775D590);
  swift_allocObject();
  *(v0 + 104) = OUTLINED_FUNCTION_54_0();
  qword_280C01FB8 = v0;
}

uint64_t RadioShowPropertyProvider.knownProperties.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_59_8() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *RadioShowPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_25_29() + 60);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t RadioShowPropertyProvider.type.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_59_8() + 64));
  v4 = *v2;
  v3 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v2;

  return sub_217751DE8();
}

void RadioShowPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for RadioShowPropertyProvider(0) + 64);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t RadioShowPropertyProvider.href.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

void RadioShowPropertyProvider.href.setter()
{
  OUTLINED_FUNCTION_143();
  v3 = (v1 + *(type metadata accessor for RadioShowPropertyProvider(0) + 68));

  *v3 = v2;
  v3[1] = v0;
}

uint64_t RadioShowPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t RadioShowPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for RadioShowPropertyProvider(0);

  return sub_217751DE8();
}

void static RadioShowPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v144 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_167();
  v19 = OUTLINED_FUNCTION_37_16();
  memcpy(v19, v5, 0x221uLL);
  v20 = OUTLINED_FUNCTION_38_14();
  memcpy(v20, v3, 0x221uLL);
  v21 = OUTLINED_FUNCTION_8_36();
  memcpy(v21, v5, 0x221uLL);
  memcpy(v171, v3, sizeof(v171));
  memcpy(v172, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v172);
  if (v27)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v158);
    if (!v27)
    {
      v32 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_157(v32, &v159);
      v33 = OUTLINED_FUNCTION_38_14();
      v34 = &v159;
LABEL_10:
      OUTLINED_FUNCTION_157(v33, v34);
      goto LABEL_11;
    }

    v147 = v8;
    v148 = v6;
    v22 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v22);
    v23 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_40_2(v23, v157);
    v24 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_40_2(v24, v157);
    v25 = OUTLINED_FUNCTION_16_31();
    sub_2171F0738(v25, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_4_58(v26);
    OUTLINED_FUNCTION_4_58(v157);
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v158);
    if (v27)
    {
      OUTLINED_FUNCTION_4_58(v154);
      v28 = OUTLINED_FUNCTION_37_16();
      OUTLINED_FUNCTION_21_24(v28);
      v29 = OUTLINED_FUNCTION_38_14();
      OUTLINED_FUNCTION_21_24(v29);
      v30 = OUTLINED_FUNCTION_16_31();
      OUTLINED_FUNCTION_21_24(v30);
      v31 = v154;
LABEL_9:
      sub_217284084(v31);
LABEL_11:
      OUTLINED_FUNCTION_6_38();
      memcpy(v35, v36, 0x449uLL);
      v37 = &unk_27CB25C18;
      v38 = &unk_21775ECE0;
      v39 = v158;
LABEL_12:
      sub_2171F0738(v39, v37, v38);
      goto LABEL_13;
    }

    v147 = v8;
    v148 = v6;
    memcpy(v154, v171, 0x221uLL);
    v40 = OUTLINED_FUNCTION_37_16();
    OUTLINED_FUNCTION_42_15(v40);
    v41 = OUTLINED_FUNCTION_38_14();
    OUTLINED_FUNCTION_42_15(v41);
    v42 = OUTLINED_FUNCTION_16_31();
    OUTLINED_FUNCTION_42_15(v42);
    v43 = static Artwork.== infix(_:_:)(v157, v154);
    memcpy(v152, v154, 0x221uLL);
    sub_217284084(v152);
    memcpy(v153, v157, 0x221uLL);
    sub_217284084(v153);
    OUTLINED_FUNCTION_4_58(v154);
    sub_2171F0738(v154, &qword_27CB24400, &unk_21775E9A0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v44 = *(v3 + 552);
  if (*(v5 + 552))
  {
    if (!v44)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262A00();
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v44)
  {
    goto LABEL_13;
  }

  v47 = *(v5 + 576);
  v155[0] = *(v5 + 560);
  v155[1] = v47;
  v48 = *(v5 + 576);
  v155[2] = *(v5 + 592);
  v49 = *(v5 + 592);
  v155[3] = *(v5 + 608);
  v50 = *(v3 + 576);
  v156[0] = *(v3 + 560);
  v156[1] = v50;
  v51 = *(v3 + 576);
  v156[2] = *(v3 + 592);
  v52 = *(v3 + 592);
  v156[3] = *(v3 + 608);
  v153[0] = v48;
  v153[1] = v49;
  v153[2] = *(v5 + 608);
  v53 = *(&v155[0] + 1);
  v54 = *(&v156[0] + 1);
  v152[0] = v51;
  v152[1] = v52;
  v152[2] = *(v3 + 608);
  if (*(&v155[0] + 1) == 1)
  {
    if (*(&v156[0] + 1) == 1)
    {
      *&v163 = *&v155[0];
      *(&v163 + 1) = 1;
      OUTLINED_FUNCTION_19_20(*(v5 + 576), *(v5 + 592));
      v166 = *(v5 + 608);
      OUTLINED_FUNCTION_40_2(v155, v158);
      OUTLINED_FUNCTION_40_2(v156, v158);
      v55 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v55, &qword_27CB24B70, &unk_217759460);
      goto LABEL_29;
    }

    v57 = *&v156[0];
    v58 = *&v155[0];
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v61, v62, &qword_27CB24B70, &unk_217759460);
    OUTLINED_FUNCTION_6_38();
    sub_21726A630(v63, v64, &qword_27CB24B70, &unk_217759460);
LABEL_26:
    *&v163 = v58;
    *(&v163 + 1) = v53;
    OUTLINED_FUNCTION_19_20(v153[0], v153[1]);
    v166 = v153[2];
    v167 = v57;
    v168 = v54;
    v169 = v152[0];
    v170[0] = v152[1];
    v170[1] = v152[2];
LABEL_27:
    v39 = OUTLINED_FUNCTION_8_36();
    goto LABEL_12;
  }

  v163 = v155[0];
  v56 = *(v5 + 592);
  v164 = *(v5 + 576);
  v165 = v56;
  v166 = *(v5 + 608);
  v158[0] = v155[0];
  v158[1] = v164;
  v158[2] = v56;
  v158[3] = v166;
  if (*(&v156[0] + 1) == 1)
  {
    v57 = *&v156[0];
    v58 = *&v155[0];
    v159 = v163;
    v160 = v164;
    v161 = v165;
    v162 = v166;
    OUTLINED_FUNCTION_43_11(v155);
    OUTLINED_FUNCTION_43_11(v156);
    v59 = OUTLINED_FUNCTION_8_36();
    OUTLINED_FUNCTION_43_11(v59);
    v60 = OUTLINED_FUNCTION_16_31();
    sub_217351248(v60);
    goto LABEL_26;
  }

  v65 = *(v3 + 592);
  v160 = *(v3 + 576);
  v161 = v65;
  v162 = *(v3 + 608);
  v159 = v156[0];
  v145 = *&v155[0];
  LODWORD(v146) = static EditorialNotes.== infix(_:_:)(v158, &v159);
  v154[0] = v159;
  v154[1] = v160;
  v154[2] = v161;
  v154[3] = v162;
  sub_21726A630(v155, v157, &qword_27CB24B70, &unk_217759460);
  sub_21726A630(v156, v157, &qword_27CB24B70, &unk_217759460);
  v66 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v66, v157, &qword_27CB24B70, &unk_217759460);
  sub_217351248(v154);
  v157[0] = v158[0];
  v157[1] = v158[1];
  v157[2] = v158[2];
  v157[3] = v158[3];
  sub_217351248(v157);
  *&v159 = v145;
  *(&v159 + 1) = v53;
  v160 = v153[0];
  v161 = v153[1];
  v162 = v153[2];
  v67 = OUTLINED_FUNCTION_16_31();
  sub_2171F0738(v67, &qword_27CB24B70, &unk_217759460);
  if ((v146 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_29:
  v68 = *(v3 + 624);
  if (*(v5 + 624))
  {
    if (!v68)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_217262CB4();
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v68)
  {
    goto LABEL_13;
  }

  v71 = *(v5 + 640);
  v72 = *(v3 + 640);
  if (v71)
  {
    if (!v72)
    {
      goto LABEL_13;
    }

    v73 = *(v5 + 632) == *(v3 + 632) && v71 == v72;
    if (!v73 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v72)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_47_14(v154);
  memcpy(v157, (v3 + 648), 0x221uLL);
  v74 = OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_47_14(v74);
  memcpy(v171, (v3 + 648), sizeof(v171));
  v75 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_47_14(v75);
  v76 = OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_104(v76);
  if (v27)
  {
    OUTLINED_FUNCTION_23_27();
    OUTLINED_FUNCTION_104(v158);
    if (v27)
    {
      OUTLINED_FUNCTION_4_58(v153);
      OUTLINED_FUNCTION_40_2(v154, v152);
      OUTLINED_FUNCTION_40_2(v157, v152);
      sub_2171F0738(v153, &qword_27CB24400, &unk_21775E9A0);
      goto LABEL_52;
    }

    OUTLINED_FUNCTION_21_24(v154);
    v33 = v157;
    v34 = v153;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_58(v153);
  OUTLINED_FUNCTION_4_58(v152);
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_104(v158);
  if (v77)
  {
    OUTLINED_FUNCTION_4_58(v151);
    OUTLINED_FUNCTION_157(v154, v150);
    OUTLINED_FUNCTION_157(v157, v150);
    OUTLINED_FUNCTION_157(v153, v150);
    v31 = v151;
    goto LABEL_9;
  }

  memcpy(v151, v171, 0x221uLL);
  OUTLINED_FUNCTION_41_16(v154);
  OUTLINED_FUNCTION_41_16(v157);
  OUTLINED_FUNCTION_41_16(v153);
  v78 = static Artwork.== infix(_:_:)(v152, v151);
  memcpy(v149, v151, 0x221uLL);
  sub_217284084(v149);
  memcpy(v150, v152, 0x221uLL);
  sub_217284084(v150);
  OUTLINED_FUNCTION_4_58(v151);
  sub_2171F0738(v151, &qword_27CB24400, &unk_21775E9A0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_52:
  v79 = *(v5 + 1208);
  v80 = *(v3 + 1208);
  if (v79)
  {
    if (!v80)
    {
      goto LABEL_13;
    }

    v81 = *(v5 + 1200) == *(v3 + 1200) && v79 == v80;
    if (!v81 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v80)
  {
    goto LABEL_13;
  }

  v146 = type metadata accessor for RadioShowPropertyProvider(0);
  v82 = v146[11];
  v83 = *(v17 + 48);
  sub_21726A630(v5 + v82, v0, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v3 + v82, v0 + v83, &unk_27CB277C0, &qword_217758DC0);
  v84 = v148;
  if (__swift_getEnumTagSinglePayload(v0, 1, v148) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v0 + v83, 1, v84) == 1)
    {
      sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_68;
    }

LABEL_66:
    v37 = &qword_27CB24840;
    v38 = &unk_217758DD0;
    v39 = v0;
    goto LABEL_12;
  }

  sub_21726A630(v0, v16, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v0 + v83, 1, v84) == 1)
  {
    (*(v147 + 8))(v16, v84);
    goto LABEL_66;
  }

  v85 = v147;
  (*(v147 + 32))(v12, v0 + v83, v84);
  OUTLINED_FUNCTION_7_36();
  sub_2174B3734(v86, v87, MEMORY[0x277CC9278]);
  v88 = sub_217751F08();
  v89 = *(v85 + 8);
  v89(v12, v84);
  v89(v16, v84);
  sub_2171F0738(v0, &unk_27CB277C0, &qword_217758DC0);
  if ((v88 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_68:
  v90 = v146;
  v91 = v146[12];
  OUTLINED_FUNCTION_6_38();
  sub_21726A630(v92, v93, &qword_27CB25330, &unk_21775E9B0);
  sub_21726A630(v3 + v91, v170 + 8, &qword_27CB25330, &unk_21775E9B0);
  if (!*(&v169 + 1))
  {
    if (!*&v170[6])
    {
      v101 = OUTLINED_FUNCTION_8_36();
      sub_2171F0738(v101, v102, v103);
      goto LABEL_74;
    }

    goto LABEL_27;
  }

  v94 = OUTLINED_FUNCTION_8_36();
  sub_21726A630(v94, v158, v95, v96);
  if (!*&v170[6])
  {
    sub_2171F0738(v158, &unk_27CB28230, &unk_21775CD50);
    goto LABEL_27;
  }

  memcpy(v153, v170 + 8, 0x68uLL);
  v97 = sub_21733E390(v158, v153);
  sub_2171F0738(v153, &unk_27CB28230, &unk_21775CD50);
  sub_2171F0738(v158, &unk_27CB28230, &unk_21775CD50);
  v98 = OUTLINED_FUNCTION_8_36();
  sub_2171F0738(v98, v99, v100);
  if ((v97 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_74:
  v104 = v90[13];
  v105 = *(v3 + v104);
  if (*(v5 + v104))
  {
    if (!v105)
    {
      goto LABEL_13;
    }

    sub_217751DE8();
    sub_21726F358();
    v107 = v106;

    if ((v107 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v105)
  {
    goto LABEL_13;
  }

  v108 = OUTLINED_FUNCTION_136(v90[14]);
  sub_217270140(v108, v109, v110, v111, v112, v113, v114, v115, v144, v145, v146, v147);
  if (v116)
  {
    v117 = v146[15];
    memcpy(v152, (v5 + v117), 0x161uLL);
    memcpy(v151, (v5 + v117), 0x161uLL);
    v118 = v146[15];
    memcpy(v153, (v3 + v118), 0x161uLL);
    memcpy(v150, (v3 + v118), 0x161uLL);
    sub_217269EF4(v152, v149);
    sub_217269EF4(v153, v149);
    static MusicIdentifierSet.== infix(_:_:)();
    LOBYTE(v118) = v119;
    memcpy(v158, v150, 0x161uLL);
    sub_217269F50(v158);
    v120 = OUTLINED_FUNCTION_8_36();
    memcpy(v120, v151, 0x161uLL);
    v121 = OUTLINED_FUNCTION_8_36();
    sub_217269F50(v121);
    if (v118)
    {
      v122 = v146[16];
      v123 = *(v5 + v122);
      v124 = *(v5 + v122 + 8);
      v125 = (v3 + v122);
      v126 = v123 == *v125 && v124 == v125[1];
      if (v126 || (sub_217753058() & 1) != 0)
      {
        v127 = v146[17];
        v128 = (v5 + v127);
        v129 = *(v5 + v127 + 8);
        v130 = (v3 + v127);
        v131 = v130[1];
        if (!v129)
        {
          if (v131)
          {
            goto LABEL_13;
          }

          goto LABEL_97;
        }

        if (v131)
        {
          v132 = *v128 == *v130 && v129 == v131;
          if (v132 || (sub_217753058() & 1) != 0)
          {
LABEL_97:
            v133 = OUTLINED_FUNCTION_136(v146[18]);
            sub_217261FB0(v133, v134);
            if (v135)
            {
              v136 = OUTLINED_FUNCTION_136(v146[19]);
              sub_217261FB0(v136, v137);
              if (v138)
              {
                v139 = OUTLINED_FUNCTION_136(v146[20]);
                sub_217261FB0(v139, v140);
                if (v141)
                {
                  v142 = OUTLINED_FUNCTION_136(v146[21]);
                  sub_217261FB0(v142, v143);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_13();
}

void RadioShowPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_167();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v35[-v10 - 8];
  OUTLINED_FUNCTION_225_3(v44);
  OUTLINED_FUNCTION_225_3(v45);
  OUTLINED_FUNCTION_104(v45);
  if (v12)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v37, v44, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v38, v44, 0x221uLL);
    sub_217284028(v38, v39);
    Artwork.hash(into:)(v3);
    memcpy(v39, v37, 0x221uLL);
    sub_217284084(v39);
  }

  if (*(v0 + 552))
  {
    OUTLINED_FUNCTION_119();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v13 = *(v0 + 576);
  v40 = *(v0 + 560);
  v41 = v13;
  v14 = *(v0 + 608);
  v42 = *(v0 + 592);
  v43 = v14;
  sub_217265238();
  if (*(v0 + 624))
  {
    OUTLINED_FUNCTION_119();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 640))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_47_14(v38);
  OUTLINED_FUNCTION_47_14(v39);
  OUTLINED_FUNCTION_104(v39);
  if (v12)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v35, v38, sizeof(v35));
    OUTLINED_FUNCTION_119();
    memcpy(v36, v38, 0x221uLL);
    sub_217284028(v36, v37);
    Artwork.hash(into:)(v3);
    memcpy(v37, v35, 0x221uLL);
    sub_217284084(v37);
  }

  if (*(v0 + 1208))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v15 = type metadata accessor for RadioShowPropertyProvider(0);
  sub_21726A630(v0 + v15[11], v11, &unk_27CB277C0, &qword_217758DC0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    (*(v6 + 32))(v1, v11, v4);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_7_36();
    sub_2174B3734(v16, v17, MEMORY[0x277CC9270]);
    sub_217751EB8();
    (*(v6 + 8))(v1, v4);
  }

  sub_21726A630(v0 + v15[12], v37, &qword_27CB25330, &unk_21775E9B0);
  if (v37[11])
  {
    memcpy(v36, v37, 0x68uLL);
    OUTLINED_FUNCTION_119();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v36, &unk_27CB28230, &unk_21775CD50);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v18 = *(v0 + v15[13]);
  if (v18)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v3, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v24 = OUTLINED_FUNCTION_201();
  sub_217281970(v24, v25);
  memcpy(v37, (v0 + v15[15]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v3);
  sub_217751FF8();
  if (*(v0 + v15[17] + 8))
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v26 = OUTLINED_FUNCTION_201();
  sub_217265A08(v26, v27);
  v28 = OUTLINED_FUNCTION_201();
  sub_217265A08(v28, v29);
  v30 = OUTLINED_FUNCTION_201();
  sub_217265A08(v30, v31);
  v32 = OUTLINED_FUNCTION_201();
  sub_217265A08(v32, v33);
  OUTLINED_FUNCTION_13();
}

uint64_t RadioShowPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  RadioShowPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_2174B352C(void *a1, uint64_t a2))(void **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  RadioShowPropertyProvider.subscript.getter();
  return sub_2174B1698;
}

uint64_t sub_2174B35A8(uint64_t a1)
{
  sub_2177531E8();
  RadioShowPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2174B362C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioShowPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174B3690(uint64_t a1)
{
  v2 = type metadata accessor for RadioShowPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2174B3734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174B37A4(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
      if (v9 > 0x3F)
      {
        return v8;
      }

      else
      {
        sub_2174B3A3C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        v2 = v10;
        if (v11 <= 0x3F)
        {
          sub_217351B44(319, &qword_280BE7F80, &unk_27CB28230, &unk_21775CD50);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
            v2 = v14;
            if (v15 <= 0x3F)
            {
              sub_2174B3A3C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
              v2 = v16;
              if (v17 <= 0x3F)
              {
                sub_217351BFC();
                v2 = v18;
                if (v19 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2174B3A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_28(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_24(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2256, v2, v3);
}

uint64_t OUTLINED_FUNCTION_41_16(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 592, v2, v3);
}

uint64_t OUTLINED_FUNCTION_42_15(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 2256, v2, v3);
}

uint64_t OUTLINED_FUNCTION_43_11(uint64_t a1)
{

  return sub_21726A630(a1, v1 + 3504, v3, v2);
}

void *OUTLINED_FUNCTION_47_14(void *a1)
{

  return memcpy(a1, (v1 + 648), 0x221uLL);
}

void OUTLINED_FUNCTION_49_16()
{
  v1 = *(v0 + 1672);
  *(v0 + 1664) = *(v0 + 1664);
  *(v0 + 1672) = v1;
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return type metadata accessor for RadioShowPropertyProvider(0);
}

void MusicDataRequest.init(musicAPI:method:body:timeoutInterval:)()
{
  OUTLINED_FUNCTION_12();
  v30 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  v8 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for MusicAPI.Endpoint(0);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  v17 = sub_2177512F8();
  OUTLINED_FUNCTION_0_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_2172CB230(v6, v0);
  (*(v10 + 16))(v14, v0, v8);
  sub_2177512B8();
  sub_2174B5658(v0);
  sub_217751268();
  if (v29 >> 60 != 15)
  {
    sub_21727591C(v4, v29);
    sub_2177512D8();
    sub_2177512E8();
  }

  if ((v30 & 1) == 0)
  {
    sub_217751278();
  }

  (*(v19 + 16))(v31, v23, v17);
  v24 = *(type metadata accessor for MusicDataRequest(0) + 20);
  swift_beginAccess();
  v25 = off_280BEBCD0;

  (v25)(v32, v26);

  v27 = v33;
  v28 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v27, v28, v31 + v24);
  sub_217275680(v4, v29);
  sub_2174B5658(v6);
  (*(v19 + 8))(v23, v17);
  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_13();
}

void MusicAPI.Endpoint.init<A>(relativeURLLocation:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v46 = v1;
  v47 = v0;
  v3 = v2;
  v49 = v4;
  v50 = v5;
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v45 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  v48 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v21);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  v24 = v44 - v23;
  v25 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_2177516C8();

  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    (*(v7 + 8))(v49, v3);
    v32 = &unk_27CB277C0;
    v33 = &qword_217758DC0;
    v34 = v24;
LABEL_5:
    sub_2171F06D8(v34, v32, v33);
    v35 = 1;
    v36 = v50;
    goto LABEL_9;
  }

  v47 = v3;
  (*(v27 + 32))(v31, v24, v25);
  sub_217751478();
  if (__swift_getEnumTagSinglePayload(v14, 1, v48) == 1)
  {
    (*(v7 + 8))(v49, v47);
    (*(v27 + 8))(v31, v25);
    v32 = &qword_27CB277B8;
    v33 = &unk_21776B220;
    v34 = v14;
    goto LABEL_5;
  }

  (*(v16 + 32))(v20, v14, v48);
  v37 = sub_2177514A8();
  v44[2] = v38;
  v44[3] = v37;
  v39 = sub_217751448();
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v40 = v39;
  }

  v44[1] = v40;
  v41 = v49;
  v42 = v47;
  (*(v7 + 16))(v45, v49, v47);
  v36 = v50;
  sub_2174B4D4C();
  (*(v7 + 8))(v41, v42);
  (*(v16 + 8))(v20, v48);
  (*(v27 + 8))(v31, v25);
  v35 = 0;
LABEL_9:
  v43 = type metadata accessor for MusicAPI.Endpoint(0);
  __swift_storeEnumTagSinglePayload(v36, v35, 1, v43);
  OUTLINED_FUNCTION_13();
}

void MusicAPI.Endpoint.applying(_:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v71 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v70 = &v60 - v6;
  OUTLINED_FUNCTION_206();
  sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v68 = v8;
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v66 = v10 - v9;
  OUTLINED_FUNCTION_206();
  v67 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v65 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v64 = v14 - v13;
  OUTLINED_FUNCTION_206();
  v15 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v75 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v72 = type metadata accessor for MusicAPI.Endpoint(0);
  v62 = sub_2177514A8();
  v63 = v23;
  v61 = v0;
  v24 = sub_217751448();
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v80 = *(v2 + 16);
  if (v80)
  {
    v26 = 0;
    v28 = *(v17 + 16);
    v27 = v17 + 16;
    v81 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v82 = v28;
    v78 = v15;
    v79 = v2 + v81;
    v29 = *(v27 + 56);
    v73 = (v27 + 16);
    v74 = (v27 + 8);
    v76 = (v27 - 8);
    v77 = v27;
    while (2)
    {
      v30 = v79 + v29 * v26++;
      v82(v22, v30, v15);
      v31 = 0;
      v32 = *(v25 + 16);
      for (i = v81; ; i += v29)
      {
        if (v32 == v31)
        {
          v15 = v78;
          v82(v75, v22, v78);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2172B1A50(0, *(v25 + 16) + 1, 1, v25);
            v25 = v42;
          }

          v40 = *(v25 + 16);
          v39 = *(v25 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_2172B1A50(v39 > 1, v40 + 1, 1, v25);
            v25 = v43;
          }

          *(v25 + 16) = v40 + 1;
          (*v73)(v25 + v81 + v40 * v29, v75, v15);
          goto LABEL_24;
        }

        v34 = sub_217751408();
        v36 = v35;
        if (v34 == sub_217751408() && v36 == v37)
        {
          break;
        }

        v34 = sub_217753058();

        if (v34)
        {
          goto LABEL_20;
        }

        ++v31;
      }

LABEL_20:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2175035C8();
        v25 = v41;
      }

      if (v31 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v15 = v78;
      (*v74)(v25 + i, v22, v78);
LABEL_24:
      (*v76)(v22, v15);
      if (v26 != v80)
      {
        continue;
      }

      break;
    }
  }

  v44 = v72[8];
  v45 = (v61 + v72[7]);
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v61 + v44);
  v49 = *(v61 + v44 + 8);
  sub_217751DE8();
  sub_217751DE8();
  v50 = v64;
  sub_217751508();
  sub_217751DE8();
  sub_2177514D8();
  sub_217751DE8();
  v82 = v48;
  MEMORY[0x21CEA17F0](v48, v49);
  v34 = v63;
  sub_217751DE8();
  v29 = v62;
  MEMORY[0x21CEA1810](v62, v34);
  if (*(v25 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  v26 = v70;
  sub_217751488();
  v51 = v69;
  if (__swift_getEnumTagSinglePayload(v26, 1, v69) == 1)
  {
LABEL_30:
    sub_2171F06D8(v26, &unk_27CB277C0, &qword_217758DC0);
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_17_23();
    MEMORY[0x21CEA23B0](v29, v34);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_16_32("Fatal error");
    __break(1u);
  }

  else
  {
    v52 = v50;

    v54 = *(v68 + 32);
    v55 = v66;
    v54(v66, v26, v51, v53);
    v56 = v71;
    (v54)(v71, v55, v51);
    v57 = v72;
    (*(v65 + 32))(v56 + v72[5], v52, v67);
    *(v56 + v57[6]) = 1;
    v58 = (v56 + v57[7]);
    *v58 = v46;
    v58[1] = v47;
    v59 = (v56 + v57[8]);
    *v59 = v82;
    v59[1] = v49;
    OUTLINED_FUNCTION_13();
  }
}

void static MusicAPI.Endpoint.catalogEndpoint<A>(countryCode:pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x21CEA23B0]();
  v12 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x21CEA23B0](v8, v6);
    MEMORY[0x21CEA23B0](47, 0xE100000000000000);
  }

  (*(v10 + 16))(v0, v4, v2);
  sub_217751DE8();
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

void static MusicAPI.Endpoint.libraryEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v3, v1, v5);
  v6 = OUTLINED_FUNCTION_8_37();
  v7(v6);
  sub_217751DE8();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_13();
}

uint64_t MusicAPI.Endpoint.applying(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  v2 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2177586E0;
  (*(v4 + 16))(v6 + v5, a1, v2);
  MusicAPI.Endpoint.applying(_:)();
  swift_setDeallocating();
  return sub_217275AFC();
}

void static MusicAPI.Endpoint.userEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x21CEA23B0]();
  (*(v6 + 16))(v0, v4, v2);
  sub_217751DE8();
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

void sub_2174B4D4C()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v44 = v7;
  v37 = v8;
  v10 = v9;
  v43 = v11;
  v39 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_45_0(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_8();
  v15 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v40 = v20 - v19;
  OUTLINED_FUNCTION_206();
  sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v41 = v22;
  v42 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = (*(v2 + 24))(v4, v2);
  v28 = v27;
  v38 = v4;
  v29 = (*(v2 + 32))(v4, v2);
  v31 = v30;
  sub_217751508();
  sub_217751DE8();
  sub_2177514D8();
  sub_217751DE8();
  MEMORY[0x21CEA17F0](v29, v31);
  sub_217751DE8();
  MEMORY[0x21CEA1810](v43, v10);
  if (*(v37 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  sub_217751488();
  if (__swift_getEnumTagSinglePayload(v0, 1, v15) == 1)
  {
    sub_2171F06D8(v0, &unk_27CB277C0, &qword_217758DC0);
    OUTLINED_FUNCTION_3_54();
    sub_217752AA8();
    OUTLINED_FUNCTION_17_23();
    MEMORY[0x21CEA23B0](v43, v10);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_15_31();
    OUTLINED_FUNCTION_16_32("Fatal error");
    __break(1u);
  }

  else
  {
    (*(*(v38 - 8) + 8))(v6);

    v33 = *(v17 + 32);
    v33(v40, v0, v15, v32);
    (v33)(v39, v40, v15);
    v34 = type metadata accessor for MusicAPI.Endpoint(0);
    (*(v41 + 32))(v39 + v34[5], v25, v42);
    *(v39 + v34[6]) = v44 & 1;
    v35 = (v39 + v34[7]);
    *v35 = v26;
    v35[1] = v28;
    v36 = (v39 + v34[8]);
    *v36 = v29;
    v36[1] = v31;
    OUTLINED_FUNCTION_13();
  }
}

uint64_t MusicAPI.Endpoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177516D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicAPI.Endpoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_217751698() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MusicAPI.Endpoint(0);
  if ((MEMORY[0x21CEA17C0](a1 + v4[5], a2 + v4[5]) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_32(v4[7]);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_9_32(v4[8]);
  if (v8 && v9 == v10)
  {
    return 1;
  }

  return sub_217753058();
}

uint64_t MusicAPI.Endpoint.hash(into:)(uint64_t a1)
{
  sub_2177516D8();
  sub_2174B57D4(&qword_27CB24320, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_217751EB8();
  type metadata accessor for MusicAPI.Endpoint(0);
  sub_217751518();
  sub_2174B57D4(&qword_27CB284E8, MEMORY[0x277CC8958], MEMORY[0x277CC8960]);
  sub_217751EB8();
  sub_217753208();
  sub_217751FF8();

  return sub_217751FF8();
}

uint64_t MusicAPI.Endpoint.hashValue.getter()
{
  sub_2177531E8();
  MusicAPI.Endpoint.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2174B5378(uint64_t a1)
{
  sub_2177531E8();
  MusicAPI.Endpoint.hash(into:)(v2);
  return sub_217753238();
}

void static MusicAPI.Endpoint.intelligenceEndpoint<A>(pathSuffix:queryItems:configuration:)()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v3, v1, v5);
  v6 = OUTLINED_FUNCTION_8_37();
  v7(v6);
  sub_217751DE8();
  OUTLINED_FUNCTION_4_59();
  OUTLINED_FUNCTION_13();
}

void sub_2174B54B4()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_3_54();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v7, v5, v14);
  (*(v9 + 16))(v13, v3, v1);
  sub_2174B4D4C();
  OUTLINED_FUNCTION_13();
}

uint64_t MusicDataRequest.Method.rawValue.getter()
{
  if (*v0)
  {
    return 1414745936;
  }

  else
  {
    return 5522759;
  }
}

uint64_t type metadata accessor for MusicAPI.Endpoint(uint64_t a1)
{
  result = qword_280BE5938;
  if (!qword_280BE5938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2174B5658(uint64_t a1)
{
  v2 = type metadata accessor for MusicAPI.Endpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void MusicDataRequest.Method.init(rawValue:)(char *a2@<X8>)
{
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

  *a2 = v4;
}

uint64_t sub_2174B5730@<X0>(uint64_t *a1@<X8>)
{
  result = MusicDataRequest.Method.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2174B57D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2174B5820()
{
  result = qword_27CB284F8;
  if (!qword_27CB284F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28500, &qword_21776D680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB284F8);
  }

  return result;
}

unint64_t sub_2174B5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28508;
  if (!qword_27CB28508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28508);
  }

  return result;
}

uint64_t sub_2174B5904(uint64_t a1)
{
  result = sub_2177516D8();
  if (v2 <= 0x3F)
  {
    result = sub_217751518();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s6MethodOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_16_32(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t sub_2174B5AAC(uint64_t a1)
{
  v2 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = *(a1 + 16);
  v31 = v7;
  v32 = a1;
  v30 = v4;
  v28 = MEMORY[0x277D84F90];
  v29 = v6;
  while (v6 != v5)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
    v9 = a1 + ((*(*(v8 - 1) + 80) + 32) & ~*(*(v8 - 1) + 80)) + *(*(v8 - 1) + 72) * v5;
    bzero(v38, 0x300uLL);
    sub_2174B8A10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2174B8A6C(v4, type metadata accessor for CloudPersonalRecommendation.Content);
    }

    else
    {
      sub_2171F0738(v38, &qword_27CB285B8, &unk_21776DB70);
      memcpy(v36, v4, sizeof(v36));
      sub_21733C5F0(v36, v38);
      v10 = v8[10];
      v11 = v9 + v8[9];
      v35 = *v11;
      v39 = v5;
      v12 = *(v11 + 8);
      v34 = *(v11 + 16);
      v13 = *(v9 + v10 + 8);
      v33 = *(v9 + v10);
      v14 = v8[11];
      memcpy(v37, (v9 + v14), 0x180uLL);
      v15 = *(v9 + v8[12]);
      v16 = *(v9 + v8[13]);
      v17 = v8[15];
      v18 = *(v9 + v8[14]);
      v19 = *(v9 + v17);
      v38[39] = v35;
      v38[40] = v12;
      LOBYTE(v38[41]) = v34;
      v38[42] = v33;
      v38[43] = v13;
      v20 = (v9 + v14);
      v4 = v30;
      memcpy(&v38[44], v20, 0x180uLL);
      v38[92] = v15;
      v38[93] = v16;
      v38[94] = v18;
      v38[95] = v19;
      sub_217751DE8();
      v5 = v39;
      sub_217751DE8();
      sub_2174BA6D4();
      v6 = v29;
      sub_217751DE8();
      a1 = v32;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217269D5C(v36);
    }

    if (v38[1])
    {
      memcpy(v37, v38, sizeof(v37));
      v21 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2118();
        v28 = v24;
      }

      v22 = *(v28 + 16);
      if (v22 >= *(v28 + 24) >> 1)
      {
        sub_2172B2118();
        v28 = v25;
      }

      ++v5;
      v23 = v28;
      *(v28 + 16) = v22 + 1;
      memcpy((v23 + 768 * v22 + 32), v37, 0x300uLL);
      v6 = v21;
    }

    else
    {
      sub_2171F0738(v38, &qword_27CB285B8, &unk_21776DB70);
      ++v5;
    }
  }

  return v28;
}

uint64_t sub_2174B5E4C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7[0] = 0x2F656D2F31762FLL;
  v7[1] = 0xE700000000000000;
  MEMORY[0x21CEA23B0]();
  sub_2172CA838(a2, v7);
  sub_217751DE8();
  return sub_2173B6DA4(0x2F656D2F31762FLL, 0xE700000000000000, a1, 1, v7, a3);
}

uint64_t MusicPersonalRecommendationsRequest.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  swift_storeEnumTagMultiPayload();
  return sub_2174B5F78(a1);
}

uint64_t sub_2174B5F78@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  sub_217751428();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2177586E0;
  sub_2177513F8();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = v3;
  *(a2 + 64) = -1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  swift_beginAccess();
  v4 = off_280BEBCD0;

  (v4)(v9, v5);

  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v6, v7, a2 + 88);
  __swift_destroy_boxed_opaque_existential_1(v9);
  *(a2 + *(type metadata accessor for MusicPersonalRecommendationsRequest(0) + 52)) = 0;
  return sub_2174BA784();
}

uint64_t MusicPersonalRecommendationsRequest.init<A>(refreshing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_169();
  v6 = v5;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = (v15 - v14);
  (*(v8 + 16))(v12, v4, v3);
  type metadata accessor for MusicPersonalRecommendation(0);
  *v16 = sub_217752468();
  OUTLINED_FUNCTION_5_3();
  swift_storeEnumTagMultiPayload();
  sub_2174B5F78(v6);
  return (*(v8 + 8))(v4, v3);
}

uint64_t static MusicPersonalRecommendationsRequest._seeAll(for:)@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_31();
  sub_2174B8A10();
  swift_storeEnumTagMultiPayload();
  return sub_2174B5F78(a2);
}

uint64_t MusicPersonalRecommendationsRequest.limit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 64);
  *(a1 + 16) = v4;
  return sub_2174B6470(v2, v3, v4);
}

uint64_t sub_2174B6470(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2174B6488();
  }

  return v3;
}

void MusicPersonalRecommendationsRequest._content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_2174B64D4(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
}

double sub_2174B64D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2174B64EC();
  }

  return v3;
}

uint64_t MusicPersonalRecommendationsRequest._recommendationItemsLimit.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.isInitialRequest.getter()
{
  type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  v5 = *(type metadata accessor for MusicPersonalRecommendationsRequest(0) + 48);
  swift_storeEnumTagMultiPayload();
  v6 = sub_2174B6680(v0 + v5, v4);
  OUTLINED_FUNCTION_9_33();
  sub_2174B8A6C(v4, v7);
  return v6 & 1;
}

uint64_t sub_2174B6680(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MusicPersonalRecommendation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285D0, &qword_21776DBA8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_2174B8A10();
  sub_2174B8A10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2174B8A10();
    v18 = *v10;
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_217273CCC(v18, *&v13[v15]);
      v17 = v19;

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2174B8A10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2174BA784();
      v17 = static MusicPersonalRecommendation.== infix(_:_:)(v7, v4);
      sub_2174B8A6C(v4, type metadata accessor for MusicPersonalRecommendation);
      sub_2174B8A6C(v7, type metadata accessor for MusicPersonalRecommendation);
LABEL_12:
      sub_2174B8A6C(v13, type metadata accessor for MusicPersonalRecommendationsRequest.Parameters);
      return v17 & 1;
    }

    sub_2174B8A6C(v7, type metadata accessor for MusicPersonalRecommendation);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_2171F0738(v13, &qword_27CB285D0, &qword_21776DBA8);
    v17 = 0;
    return v17 & 1;
  }

  sub_2174B8A6C(v13, type metadata accessor for MusicPersonalRecommendationsRequest.Parameters);
  v17 = 1;
  return v17 & 1;
}

uint64_t MusicPersonalRecommendationsRequest._source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t MusicPersonalRecommendationsRequest._source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t MusicPersonalRecommendationsRequest.response()(uint64_t a1)
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v2 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2173545AC;

  return (sub_2173B33E0)(a1, v1 + 88);
}

uint64_t MusicPersonalRecommendationsRequest.catalogResponse()()
{
  OUTLINED_FUNCTION_10();
  v1[77] = v0;
  v1[76] = v2;
  v1[78] = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v1[79] = OUTLINED_FUNCTION_28_7();
  v1[80] = sub_2177516D8();
  OUTLINED_FUNCTION_66_3();
  v1[81] = v3;
  v1[82] = OUTLINED_FUNCTION_28_7();
  v1[83] = sub_2177512F8();
  OUTLINED_FUNCTION_66_3();
  v1[84] = v4;
  v1[85] = OUTLINED_FUNCTION_28_7();
  v1[86] = type metadata accessor for MusicDataRequest(0);
  v1[87] = OUTLINED_FUNCTION_28_7();
  type metadata accessor for MusicAPI.Endpoint(0);
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[90] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[91] = v6;
  *v6 = v7;
  v6[1] = sub_2174B6CC8;

  return sub_2174B7860(v5);
}

uint64_t sub_2174B6CC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v5 = v4;
  *(v6 + 736) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174B6DC8()
{
  v1 = v0[88];
  v21 = v0[87];
  v22 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v20 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[77];
  v23 = v0[89];
  v24 = v7;
  sub_2174B8A10();
  sub_2174B8A10();
  (*(v5 + 16))(v4, v1, v6);
  sub_2177512B8();
  sub_2174B8A6C(v1, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v3 + 16))(v21, v2, v20);
  v8 = (v21 + *(v22 + 20));
  swift_beginAccess();
  v9 = off_280BEBCD0;

  (v9)(v10);

  v11 = v0[39];
  v12 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v11);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v11, v12, v8);
  (*(v3 + 8))(v2, v20);
  sub_2174B8A6C(v23, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  sub_21725EE54(v24 + 88, v8);
  v13 = v8[3];
  v14 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v13);
  OUTLINED_FUNCTION_66_3();
  v25 = (v15 + *v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[93] = v16;
  *v16 = v17;
  v16[1] = sub_2174B70C8;
  v18 = v0[87];

  return (v25)(v0 + 73, v18, v13, v14);
}

uint64_t sub_2174B70C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v5 = v4;
  *(v6 + 752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174B71C8()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 616);
  v3 = *(v0 + 584);
  v4 = *(v0 + 592);
  v5 = *(v0 + 600);
  sub_217751348();
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 88, v0 + 328);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 328);
  type metadata accessor for SharedRelatedItemStore();
  v6 = swift_allocObject();
  SharedRelatedItemStore.init()(v6, v7, v8);

  JSONDecoder.sharedRelatedItemStore.setter(v9);
  sub_2174B95C8(v10, v11, v12);
  sub_217751308();
  if (v1)
  {
    v13 = *(v0 + 720);
    v14 = *(v0 + 696);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_0_59();
    sub_2174B8A6C(v13, v15);
    OUTLINED_FUNCTION_2_61();
    sub_2174B8A6C(v14, v16);
    OUTLINED_FUNCTION_18_25();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v45 = v5;
    sub_2174B8A10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28518, &qword_21776D768);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C((v0 + 408), v0 + 368);
      v18 = sub_21750DC9C();
      v20 = v19;
      v43 = v21;
      v23 = v22;
      sub_217751378();
      swift_allocObject();
      v24 = sub_217751368();
      *(v0 + 528) = v18;
      *(v0 + 536) = v20;
      *(v0 + 544) = v43;
      *(v0 + 552) = v23;
      sub_2174B9B48(v24, v25, v26);
      v27 = sub_217751358();
      v42 = *(v0 + 616);
      v28 = v27;
      v30 = v29;

      v31 = *(v0 + 400);
      v44 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v44);
      (*(v31 + 8))(v28, v30, v42 + 88, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v44, v31);
      sub_217275694(v28, v30);

      __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    }

    else
    {
      *(v0 + 440) = 0;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      sub_2171F0738(v0 + 408, &qword_27CB28520, &qword_21776D770);
    }

    v32 = *(v0 + 616);
    sub_2174B961C(v0 + 16, v0 + 152);
    v33 = *(v32 + 40);
    sub_2172CA838(v32 + 88, v0 + 448);
    v34 = *(v0 + 280);
    sub_217751DE8();
    if (v34 > 1)
    {
      sub_217221020(v34);
      sub_2174BEF8C(v34);
      Array<A>.update(with:)(v35);
    }

    v36 = *(v0 + 720);
    v37 = *(v0 + 696);
    v38 = *(v0 + 608);
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_2174B9678(v33, v0 + 448, v38);

    sub_217275694(v3, v4);

    sub_2171F0738(v0 + 488, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v0 + 448);
    sub_2174B9AF4(v0 + 152);
    sub_2174B9AF4(v0 + 16);
    OUTLINED_FUNCTION_0_59();
    sub_2174B8A6C(v36, v39);
    OUTLINED_FUNCTION_2_61();
    sub_2174B8A6C(v37, v40);

    OUTLINED_FUNCTION_20_0();
  }

  return v17();
}

uint64_t sub_2174B76E4()
{
  v1 = *(v0 + 696);
  OUTLINED_FUNCTION_0_59();
  sub_2174B8A6C(v2, v3);
  OUTLINED_FUNCTION_2_61();
  sub_2174B8A6C(v1, v4);
  OUTLINED_FUNCTION_18_25();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2174B77B0()
{
  OUTLINED_FUNCTION_18_25();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2174B7860(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_217751428();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v4 = type metadata accessor for MusicPersonalRecommendation(0);
  v2[23] = v4;
  v2[24] = *(v4 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174B7A3C, 0, 0);
}

void sub_2174B7A3C()
{
  v1 = v0;
  v0[2] = 0x6E656D6D6F636572;
  v2 = v0[9];
  v0[3] = 0xEF736E6F69746164;
  v3 = *(v2 + 64);
  if (v3 != 255 && (v3 & 1) != 0)
  {
    MEMORY[0x21CEA23B0](0x73656C75646F6D2FLL, 0xE800000000000000);
  }

  v4 = MEMORY[0x277D84F90];
  v1[4] = MEMORY[0x277D84F90];
  v1[30] = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  OUTLINED_FUNCTION_11_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v1[29];
  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_9_33();
    sub_2174B8A6C(v7, v8);
    OUTLINED_FUNCTION_11_36();
    v9 = swift_getEnumCaseMultiPayload();
    v10 = v1[28];
    if (v9 == 1)
    {
      v11 = v1[25];
      v12 = v1[23];
      sub_2174BA784();
      v13 = *(v11 + *(v12 + 48));
      if (v13 == 2 || (v13 & 1) == 0)
      {

        if (qword_280BE73E0 != -1)
        {
          swift_once();
        }

        v34 = sub_217751AF8();
        __swift_project_value_buffer(v34, qword_280C023A8);
        v35 = sub_217751AD8();
        v36 = sub_217752808();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          MEMORY[0x21CEA4360](v37, -1, -1);
        }

        v38 = v1[25];

        sub_2174BA730(v39, v40, v41);
        swift_allocError();
        swift_willThrow();
        OUTLINED_FUNCTION_3_55();
        sub_2174B8A6C(v38, v42);

        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_998();

        __asm { BRAA            X1, X16 }
      }

      v14 = v1[25];
      sub_217752AA8();

      MEMORY[0x21CEA23B0](*v14, v14[1], v15);
      MEMORY[0x21CEA23B0](0x65732F776569762FLL, 0xED00006C6C612D65);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);

      OUTLINED_FUNCTION_3_55();
      v10 = v14;
    }

    else
    {
      v16 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters;
    }

    sub_2174B8A6C(v10, v16);
    goto LABEL_28;
  }

  v17 = *v6;
  v18 = *(*v6 + 16);
  if (v18)
  {
    v87 = v1[26];
    v19 = v1[24];
    v20 = OUTLINED_FUNCTION_21_25();
    sub_217276568(v20, v21, v22);
    v23 = v4;
    v24 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v25 = *(v19 + 72);
    do
    {
      v26 = v1;
      v27 = v1[26];
      OUTLINED_FUNCTION_10_31();
      sub_2174B8A10();
      v28 = *v27;
      v29 = *(v87 + 8);
      sub_217751DE8();
      OUTLINED_FUNCTION_3_55();
      sub_2174B8A6C(v27, v30);
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_217276568(v31 > 1, v32 + 1, 1);
      }

      v23[2] = v32 + 1;
      v33 = &v23[2 * v32];
      v33[4] = v28;
      v33[5] = v29;
      v24 += v25;
      --v18;
      v1 = v26;
    }

    while (v18);

    v4 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v45 = v23[2];
  v86 = v1;
  if (v45)
  {
    if (v45 == 1)
    {
      v46 = v23[4];
      v47 = v23[5];
      sub_217751DE8();

      MEMORY[0x21CEA23B0](v46, v47, v48);

      MEMORY[0x21CEA23B0](47, 0xE100000000000000, v49);

LABEL_28:
      v50 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v52 = OUTLINED_FUNCTION_21_25();
    sub_217275C90(v52, v53, v54, v55, v56, v57, v58);
    v59 = 0;
    v51 = v4;
    v60 = v4[2];
    v61 = 2 * v60;
    do
    {
      v62 = v23[v59 + 4];
      v63 = v23[v59 + 5];
      v64 = v51[3];
      v65 = v60 + 1;
      sub_217751DE8();
      if (v60 >= v64 >> 1)
      {
        sub_217275C90(v64 > 1, v65, 1, v66, v67, v68, v69);
      }

      v51[2] = v65;
      v70 = &v51[v61 + v59];
      *(v70 + 32) = v62;
      *(v70 + 40) = v63;
      v59 += 2;
      ++v60;
      --v45;
    }

    while (v45);

    v1 = v86;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v72 = v1[21];
  v71 = v1[22];
  v73 = v1[10];
  v74 = v1[11];
  v1[7] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0, MEMORY[0x277D83958]);
  sub_217751ED8();

  sub_2177513F8();

  (*(v74 + 16))(v72, v71, v73, v75);
  sub_2172B1A50(0, 1, 1, MEMORY[0x277D84F90]);
  v50 = v76;
  v78 = *(v76 + 16);
  v77 = *(v76 + 24);
  if (v78 >= v77 >> 1)
  {
    sub_2172B1A50(v77 > 1, v78 + 1, 1, v76);
    v50 = v85;
  }

  v1 = v86;
  v79 = v86[21];
  v80 = v86[10];
  v81 = v86[11];
  (*(v81 + 8))(v86[22], v80);
  *(v50 + 16) = v78 + 1;
  (*(v81 + 32))(v50 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78, v79, v80);
  v86[4] = v50;
LABEL_38:
  v1[31] = v50;
  __swift_project_boxed_opaque_existential_1((v1[9] + 88), *(v1[9] + 112));
  OUTLINED_FUNCTION_66_3();
  v82 = swift_task_alloc();
  v1[32] = v82;
  *v82 = v1;
  v82[1] = sub_2174B8250;
  OUTLINED_FUNCTION_998();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2174B8250()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  *v4 = *v1;
  v3[33] = v5;
  v3[34] = v6;
  v3[35] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2174B8360()
{
  v1 = v0[34];
  if (v1)
  {
    sub_2177513F8();

    v2 = OUTLINED_FUNCTION_146_6();
    v3(v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v0[31];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v5 = v52;
    }

    OUTLINED_FUNCTION_103();
    if (v7)
    {
      sub_2172B1A50(v6 > 1, v1, 1, v5);
      v5 = v53;
    }

    OUTLINED_FUNCTION_6_39();
    v8();
    v9 = OUTLINED_FUNCTION_87_0();
    v10(v9);
    v0[4] = v5;
  }

  else
  {
    v5 = v0[31];
  }

  v11 = v0[9];
  if ((*(v11 + 24) & 1) == 0)
  {
    v0[6] = *(v11 + 16);
    sub_217752FC8();
    sub_2177513F8();

    v12 = OUTLINED_FUNCTION_146_6();
    v13(v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v5 = v54;
    }

    OUTLINED_FUNCTION_103();
    if (v7)
    {
      OUTLINED_FUNCTION_3_49(v14);
      v5 = v55;
    }

    OUTLINED_FUNCTION_6_39();
    v15();
    v16 = OUTLINED_FUNCTION_87_0();
    v17(v16);
    v0[4] = v5;
    v11 = v0[9];
  }

  if ((*(v11 + 8) & 1) == 0)
  {
    v0[5] = *v11;
    sub_217752FC8();
    sub_2177513F8();

    v18 = OUTLINED_FUNCTION_146_6();
    v19(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v5 = v56;
    }

    OUTLINED_FUNCTION_103();
    if (v7)
    {
      OUTLINED_FUNCTION_3_49(v20);
      v5 = v57;
    }

    OUTLINED_FUNCTION_6_39();
    v21();
    v22 = OUTLINED_FUNCTION_87_0();
    v23(v22);
    v0[4] = v5;
    v11 = v0[9];
  }

  if (*(v11 + *(v0[30] + 52)) == 1)
  {
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[10];
    v27 = v0[11];
    sub_2177513F8();
    (*(v27 + 16))(v25, v24, v26);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v5 = v58;
    }

    OUTLINED_FUNCTION_103();
    if (v7)
    {
      OUTLINED_FUNCTION_3_49(v28);
      v5 = v59;
    }

    OUTLINED_FUNCTION_6_39();
    v29();
    v30 = OUTLINED_FUNCTION_87_0();
    v31(v30);
    v0[4] = v5;
    v11 = v0[9];
  }

  if (*(*(v11 + 40) + 16))
  {
    v32 = sub_217751DE8();
    sub_21754383C(v32);
    v11 = v0[9];
  }

  if (sub_217204DD0(*(v11 + 32)))
  {
    OUTLINED_FUNCTION_35_1();
    sub_2174844D4(v33, v34, v35, 0, 0, 0, 0);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[10];
  v39 = __swift_project_value_buffer(v38, qword_280BE7428);
  (*(v37 + 16))(v36, v39, v38);
  v40 = v0[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2172B1A50(0, *(v40 + 16) + 1, 1, v40);
    v40 = v50;
  }

  v42 = *(v40 + 16);
  v41 = *(v40 + 24);
  if (v42 >= v41 >> 1)
  {
    sub_2172B1A50(v41 > 1, v42 + 1, 1, v40);
    v40 = v51;
  }

  v43 = v0[11];
  v44 = v0[12];
  v46 = v0[9];
  v45 = v0[10];
  v47 = v0[8];
  *(v40 + 16) = v42 + 1;
  (*(v43 + 32))(v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, v44, v45);
  sub_2174B5E4C(v40, v46 + 88, v47);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_998();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2174B88EC()
{

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_2174B8A10()
{
  OUTLINED_FUNCTION_169();
  v2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2174B8A6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2174B8AC4(const void *a1)
{
  v2 = type metadata accessor for MusicPersonalRecommendation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  MEMORY[0x28223BE20](v5);
  sub_2174B8A10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2174BA784();
      MEMORY[0x21CEA3550](2);
      MusicPersonalRecommendation.hash(into:)(a1);
      sub_2174B8A6C(v4, type metadata accessor for MusicPersonalRecommendation);
    }

    else
    {
      MEMORY[0x21CEA3550](0);
    }
  }

  else
  {
    MEMORY[0x21CEA3550](1);
    sub_2172833F4();
  }
}

uint64_t MusicPersonalRecommendationsRequest._Content._AdditionalContent.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t static MusicPersonalRecommendationsRequest._Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v2 = 0;
    goto LABEL_8;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_6;
  }

  if (*a2 == *a1)
  {
LABEL_7:
    v2 = sub_2172849D0();
    goto LABEL_8;
  }

  v2 = 0;
LABEL_8:
  sub_2174B6488();
  sub_2174B6488();
  sub_2174B64EC();
  sub_2174B64EC();
  return v2 & 1;
}

uint64_t MusicPersonalRecommendationsRequest._Content.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x21CEA3550](1);
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x21CEA3550](v2);

  return sub_2172849DC();
}

uint64_t MusicPersonalRecommendationsRequest._Content.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_238();
  if (v2 == 1)
  {
    MEMORY[0x21CEA3550](1);
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA3550](v3);
  sub_2172849DC();
  return sub_217753238();
}

uint64_t sub_2174B8F08(uint64_t a1)
{
  sub_2177531E8();
  MusicPersonalRecommendationsRequest._Content.hash(into:)();
  return sub_217753238();
}

BOOL static MusicPersonalRecommendationsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  sub_217273F78(*(a1 + 32), *(a2 + 32), a3, a4, a5, a6, a7, a8, v59, v60, v61, v62[0]);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_217270404();
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v15 == 255)
  {
    v31 = OUTLINED_FUNCTION_173();
    sub_2174B6470(v31, v32, 255);
    if (v18 == 255)
    {
      v49 = OUTLINED_FUNCTION_5_3();
      sub_2174B6470(v49, v50, 255);
      v51 = OUTLINED_FUNCTION_173();
      sub_2174B64D4(v51, v52, 255);
      goto LABEL_25;
    }

    v33 = OUTLINED_FUNCTION_5_3();
    sub_2174B6470(v33, v34, v18);
LABEL_22:
    v43 = OUTLINED_FUNCTION_5_44();
    sub_2174B64D4(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_5_3();
    sub_2174B64D4(v46, v47, v18);
    return 0;
  }

  v62[0] = *(a1 + 48);
  v62[1] = v14;
  v63 = v15;
  if (v18 == 255)
  {
    v35 = OUTLINED_FUNCTION_5_44();
    sub_2174B6470(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_5_3();
    sub_2174B6470(v38, v39, 255);
    v40 = OUTLINED_FUNCTION_5_44();
    sub_2174B6470(v40, v41, v42);
    OUTLINED_FUNCTION_173();
    sub_2174B64EC();
    goto LABEL_22;
  }

  v59 = v17;
  v60 = v16;
  LOBYTE(v61) = v18 & 1;
  v19 = OUTLINED_FUNCTION_5_44();
  sub_2174B6470(v19, v20, v21);
  v22 = OUTLINED_FUNCTION_5_3();
  sub_2174B6470(v22, v23, v18);
  v24 = OUTLINED_FUNCTION_5_44();
  sub_2174B6470(v24, v25, v26);
  v27 = static MusicPersonalRecommendationsRequest._Content.== infix(_:_:)(v62, &v59);
  OUTLINED_FUNCTION_5_3();
  sub_2174B64EC();
  OUTLINED_FUNCTION_173();
  sub_2174B64EC();
  v28 = OUTLINED_FUNCTION_5_44();
  sub_2174B64D4(v28, v29, v30);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v53 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (*(a2 + 80))
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    v53 = 1;
  }

  if (v53)
  {
    return 0;
  }

LABEL_31:
  if ((sub_217708908(*(a1 + 81)) & 1) == 0)
  {
    return 0;
  }

  v54 = *(a1 + 112);
  v55 = *(a1 + 120);
  __swift_project_boxed_opaque_existential_1((a1 + 88), v54);
  v56 = *(v55 + 112);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v56(a2 + 88, v57, v54, v55) & 1) == 0)
  {
    return 0;
  }

  v58 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  if ((sub_2174B6680(a1 + *(v58 + 48), a2 + *(v58 + 48)) & 1) == 0)
  {
    return 0;
  }

  return *(a1 + *(v58 + 52)) == *(a2 + *(v58 + 52));
}

uint64_t MusicPersonalRecommendationsRequest.hash(into:)(const void *a1)
{
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v3 = *v1;
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v3);
  }

  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v4 = v1[2];
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v4);
  }

  sub_217281970(a1, v1[4]);
  sub_21727D208(a1, v1[5]);
  v5 = *(v1 + 64);
  if (v5 == 255)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v6 = v1[6];
    OUTLINED_FUNCTION_24();
    if (v5)
    {
      MEMORY[0x21CEA3550](1);
      MEMORY[0x21CEA3550](v6);
    }

    else
    {
      MEMORY[0x21CEA3550](0);
    }

    sub_2172849DC();
  }

  if (*(v1 + 80) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v7 = v1[9];
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v7);
  }

  sub_217751FF8();

  v8 = v1[14];
  v9 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v8);
  (*(v9 + 120))(a1, v8, v9);
  v10 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  sub_2174B8AC4(a1);
  return MEMORY[0x21CEA3550](*(v1 + *(v10 + 52)));
}

uint64_t sub_2174B939C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2174B9400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t sub_2174B9444()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2174BA7E0;

  return MusicPersonalRecommendationsRequest.catalogResponse()();
}

uint64_t MusicPersonalRecommendationsRequest.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

unint64_t sub_2174B95C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28510;
  if (!qword_27CB28510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28510);
  }

  return result;
}

double sub_2174B9678@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v52 = a1;
  if (v4[16] > 1)
  {
    v7 = sub_217751DE8();
    sub_2174BEF8C(v7);
    v52 = v8;
  }

  else
  {
    sub_217751DE8();
  }

  sub_2172CE84C(v4[2], v50);
  if (!*(&v50[0] + 1))
  {
    v9 = &qword_27CB285B8;
    v10 = &unk_21776DB70;
    v11 = v50;
    goto LABEL_11;
  }

  memcpy(v51, v50, sizeof(v51));
  if (LOBYTE(v51[3]) == 2 || (v51[3] & 1) == 0)
  {
    v9 = &qword_27CB244A8;
    v10 = &unk_217758980;
    v11 = v51;
    goto LABEL_11;
  }

  sub_2174BA6D4();
  if (v37[2] == 1)
  {
    sub_2171F0738(v51, &qword_27CB244A8, &unk_217758980);
    v9 = &qword_27CB244B0;
    v10 = &unk_21776DB80;
    v11 = v37;
LABEL_11:
    sub_2171F0738(v11, v9, v10);
    v12 = sub_217751DE8();
    goto LABEL_12;
  }

  sub_2174BA6D4();
  sub_21728373C(v37);
  v26 = v40;
  if (!v40)
  {
    sub_2171F0738(v51, &qword_27CB244A8, &unk_217758980);
    v9 = &qword_27CB244B8;
    v10 = &unk_217758990;
    v11 = &v38;
    goto LABEL_11;
  }

  v33 = v39;
  v34 = v38;
  sub_2171FB568(v38, v39);
  v32 = sub_2174B5AAC(v26);
  sub_2171F0738(v51, &qword_27CB244A8, &unk_217758980);
  v27 = v42;
  v30 = v43;
  v31 = v41;
  v36 = v44;
  v28 = v46;
  v29 = v45;
  sub_2174BA6D4();
  v49[0] = v34;
  v49[1] = v33;
  v49[2] = v32;
  v49[3] = v31;
  v49[4] = v27;
  v49[5] = v30;
  v49[6] = v36;
  v49[7] = v29;
  v49[8] = v28;
  v49[14] = v47;
  v49[15] = v48;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v38, &qword_27CB244C0, &qword_21775D9C0);
  memcpy(v50, v49, 0x80uLL);
  sub_217751DE8();
  v12 = sub_2171F0738(v50, &qword_27CB285C0, &unk_21776DE90);
LABEL_12:
  MEMORY[0x28223BE20](v12);
  sub_2172E4D18();
  v35 = v13;

  sub_2174BA6D4();
  if (*(&v50[1] + 1))
  {
    v51[0] = v50[0];
    v51[1] = v50[1];
    *&v51[2] = *&v50[2];
  }

  else
  {
    sub_2174B9E04(v52, a2, v51);
    if (*(&v50[1] + 1))
    {
      sub_2171F0738(v50, &qword_27CB24188, &dword_217758930);
    }
  }

  v14 = *v4;
  v15 = v4[1];
  v16 = v4[3];
  v17 = v4[4];
  v18 = v4[14];
  sub_2171FB568(*v4, v15);
  sub_217751DE8();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = sub_217751DC8();
  }

  v20 = v4[15];
  sub_217751DE8();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = sub_217751DC8();
  }

  *a4 = v35;
  if (v15 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v15;
  }

  if (v15 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v14;
  }

  *(a4 + 8) = 0;
  v24 = v51[1];
  *(a4 + 16) = v51[0];
  *(a4 + 32) = v24;
  *(a4 + 48) = *&v51[2];
  *(a4 + 56) = v23;
  *(a4 + 64) = v22;
  *(a4 + 72) = v16;
  *(a4 + 80) = v17;
  *(a4 + 88) = v19;
  *(a4 + 96) = v21;
  sub_217751DE8();
}

unint64_t sub_2174B9B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28528;
  if (!qword_27CB28528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28528);
  }

  return result;
}

uint64_t sub_2174B9B9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = type metadata accessor for MusicPersonalRecommendation(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = *a1;
  v11 = a1[1];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A90, &qword_21775DA98);
    swift_allocObject();

    sub_217751DE8();
    *a5 = sub_21733A488(v10, v11, a2, sub_2174BA6C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  }

  else
  {
    sub_2174BA6D4();
    sub_2172CA838(a3, &v13);
    sub_217751DE8();
    sub_2173349C8();
    sub_2174BA784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_2174B9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2174BA6D4();
  sub_2172CA838(a4, v6);

  sub_217751DE8();
  sub_2173349C8();
}

uint64_t sub_2174B9E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = result;
    v7 = *(v3 + 56);
    sub_2172CA838(a2, v12 + 8);
    *&v11 = v7;
    *(&v11 + 1) = v4;
    *&v12[0] = v5;
    v8 = swift_allocObject();
    v9 = v12[0];
    v8[1] = v11;
    v8[2] = v9;
    v10 = v12[2];
    v8[3] = v12[1];
    v8[4] = v10;
    sub_217751DE8();
    sub_217751DE8();
    result = sub_2171F0738(a3, &qword_27CB24188, &dword_217758930);
    *a3 = v8;
    *(a3 + 24) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
    *(a3 + 32) = &off_282969FA0;
  }

  return result;
}

unint64_t sub_2174B9F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28540;
  if (!qword_27CB28540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28540);
  }

  return result;
}

unint64_t sub_2174B9F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28548;
  if (!qword_27CB28548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28548);
  }

  return result;
}

unint64_t sub_2174BA020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28558;
  if (!qword_27CB28558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28558);
  }

  return result;
}

uint64_t sub_2174BA09C(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2174BA1D8(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2174BA548(319, &qword_27CB28578, MEMORY[0x277CC8918]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_27CB28580, &type metadata for MusicPersonalRecommendationsRequest._Content);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(319);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2174BA1D8(uint64_t a1)
{
  if (!qword_27CB28570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB281D0, &qword_217758F58);
    v1 = sub_217752418();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB28570);
    }
  }
}

uint64_t sub_2174BA248(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2174BA288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationsRequest._Content._AdditionalContent(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationsRequest.Error(_BYTE *result, int a2, int a3)
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

void sub_2174BA470(uint64_t a1)
{
  sub_2174BA4E4();
  if (v1 <= 0x3F)
  {
    sub_2174BA59C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2174BA4E4()
{
  if (!qword_27CB28598)
  {
    sub_2174BA548(0, &qword_27CB285A0, type metadata accessor for MusicPersonalRecommendation);
    if (!v1)
    {
      atomic_store(v0, &qword_27CB28598);
    }
  }
}

void sub_2174BA548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217752418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2174BA59C()
{
  if (!qword_27CB285A8)
  {
    v0 = type metadata accessor for MusicPersonalRecommendation(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27CB285A8);
    }
  }
}

uint64_t sub_2174BA62C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2174BA6D4()
{
  OUTLINED_FUNCTION_169();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_43();
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_2174BA730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB285C8;
  if (!qword_27CB285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB285C8);
  }

  return result;
}

uint64_t sub_2174BA784()
{
  OUTLINED_FUNCTION_169();
  v2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_36()
{

  return sub_2174B8A10();
}

uint64_t OUTLINED_FUNCTION_18_25()
{
}

uint64_t sub_2174BA8BC(uint64_t a1)
{
  v2 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28688, &unk_217798ED0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v37[1] = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v37[3] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37[0] = v37 - v13;
  v38 = MEMORY[0x277D84F90];
  v39 = v6;
  v14 = *(a1 + 16);
  v49 = a1;
  v50 = v14;
  v15 = 0;
  v40 = v4;
  while (v50 != v15)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v17 = v49 + ((*(*(v16 - 1) + 80) + 32) & ~*(*(v16 - 1) + 80)) + *(*(v16 - 1) + 72) * v15;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2174BFDF8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = v15;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2172CB34C(v9, &qword_27CB28688, &unk_217798ED0);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v19 = v16[10];
      v20 = v17 + v16[9];
      v21 = *v20;
      v42 = *(v20 + 8);
      v43 = *(v20 + 16);
      v22 = *(v17 + v19 + 8);
      v46 = *(v17 + v19);
      v23 = v16[11];
      v44 = v21;
      v45 = v23;
      memcpy(v51, (v17 + v23), sizeof(v51));
      v24 = *(v17 + v16[12]);
      v25 = *(v17 + v16[13]);
      v26 = v16[15];
      v47 = *(v17 + v16[14]);
      v27 = v47;
      v41 = *(v17 + v26);
      v28 = &v9[v10[9]];
      v29 = v42;
      *v28 = v44;
      *(v28 + 1) = v29;
      v28[16] = v43;
      v30 = &v9[v10[10]];
      *v30 = v46;
      *(v30 + 1) = v22;
      memcpy(&v9[v10[11]], (v17 + v45), 0x180uLL);
      *&v9[v10[12]] = v24;
      *&v9[v10[13]] = v25;
      *&v9[v10[14]] = v27;
      *&v9[v10[15]] = v41;
      v6 = v39;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v48, type metadata accessor for CloudStation);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    }

    else
    {
      sub_2174BFE50(v6, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2172CB34C(v9, &qword_27CB28688, &unk_217798ED0);
      v15 = v52 + 1;
    }

    else
    {
      v31 = v52;
      v47 = v10;
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B21E4(0, *(v38 + 16) + 1, 1, v38);
        v38 = v34;
      }

      v33 = *(v38 + 16);
      v32 = *(v38 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2172B21E4(v32 > 1, v33 + 1, 1, v38);
        v38 = v35;
      }

      v15 = v31 + 1;
      *(v38 + 16) = v33 + 1;
      sub_2174BFD48();
      v10 = v47;
    }
  }

  return v38;
}

uint64_t sub_2174BAE78(uint64_t a1)
{
  v2 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v37[1] = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v37[3] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v37[0] = v37 - v13;
  v38 = MEMORY[0x277D84F90];
  v39 = v6;
  v14 = *(a1 + 16);
  v49 = a1;
  v50 = v14;
  v15 = 0;
  v40 = v4;
  while (v50 != v15)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v17 = v49 + ((*(*(v16 - 1) + 80) + 32) & ~*(*(v16 - 1) + 80)) + *(*(v16 - 1) + 72) * v15;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_2174BFDF8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = v15;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2172CB34C(v9, &qword_27CB256B8, &qword_21775D770);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v19 = v16[10];
      v20 = v17 + v16[9];
      v21 = *v20;
      v42 = *(v20 + 8);
      v43 = *(v20 + 16);
      v22 = *(v17 + v19 + 8);
      v46 = *(v17 + v19);
      v23 = v16[11];
      v44 = v21;
      v45 = v23;
      memcpy(v51, (v17 + v23), sizeof(v51));
      v24 = *(v17 + v16[12]);
      v25 = *(v17 + v16[13]);
      v26 = v16[15];
      v47 = *(v17 + v16[14]);
      v27 = v47;
      v41 = *(v17 + v26);
      v28 = &v9[v10[9]];
      v29 = v42;
      *v28 = v44;
      *(v28 + 1) = v29;
      v28[16] = v43;
      v30 = &v9[v10[10]];
      *v30 = v46;
      *(v30 + 1) = v22;
      memcpy(&v9[v10[11]], (v17 + v45), 0x180uLL);
      *&v9[v10[12]] = v24;
      *&v9[v10[13]] = v25;
      *&v9[v10[14]] = v27;
      *&v9[v10[15]] = v41;
      v6 = v39;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v48, type metadata accessor for CloudPlaylist);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    }

    else
    {
      sub_2174BFE50(v6, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_2172CB34C(v9, &qword_27CB256B8, &qword_21775D770);
      v15 = v52 + 1;
    }

    else
    {
      v31 = v52;
      v47 = v10;
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2220(0, *(v38 + 16) + 1, 1, v38);
        v38 = v34;
      }

      v33 = *(v38 + 16);
      v32 = *(v38 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2172B2220(v32 > 1, v33 + 1, 1, v38);
        v38 = v35;
      }

      v15 = v31 + 1;
      *(v38 + 16) = v33 + 1;
      sub_2174BFD48();
      v10 = v47;
    }
  }

  return v38;
}

uint64_t sub_2174BB434(uint64_t a1)
{
  v2 = type metadata accessor for CloudAlbum(0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &unk_21775D5D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v46[1] = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v46[3] = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46[0] = v46 - v14;
  v15 = 0;
  v47 = MEMORY[0x277D84F90];
  v48 = v6;
  v16 = *(a1 + 16);
  v58 = a1;
  v59 = v16;
  v49 = v4;
  while (v59 != v15)
  {
    v17 = v11;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v19 = v58 + ((*(*(v18 - 1) + 80) + 32) & ~*(*(v18 - 1) + 80));
    v20 = *(*(v18 - 1) + 72);
    v61 = v15;
    v21 = v19 + v20 * v15;
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
    sub_2174BFDF8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2174BFE50(v6, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    else
    {
      sub_2172CB34C(v10, &qword_27CB25308, v7);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v22 = v18[10];
      v23 = (v21 + v18[9]);
      v24 = *v23;
      v52 = v23[1];
      v53 = *(v23 + 16);
      v25 = v21 + v22;
      v26 = *(v21 + v22);
      v27 = *(v25 + 8);
      v54 = v24;
      v55 = v26;
      v28 = v18[11];
      memcpy(v60, (v21 + v28), sizeof(v60));
      v29 = *(v21 + v18[12]);
      v30 = *(v21 + v18[13]);
      v31 = v18[15];
      v56 = *(v21 + v18[14]);
      v32 = v56;
      v50 = *(v21 + v31);
      v51 = v30;
      v33 = &v10[v17[9]];
      v34 = v52;
      *v33 = v54;
      *(v33 + 1) = v34;
      v33[16] = v53;
      v35 = &v10[v17[10]];
      *v35 = v55;
      *(v35 + 1) = v27;
      memcpy(&v10[v17[11]], (v21 + v28), 0x180uLL);
      *&v10[v17[12]] = v29;
      v36 = v50;
      *&v10[v17[13]] = v51;
      *&v10[v17[14]] = v32;
      *&v10[v17[15]] = v36;
      v6 = v48;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      v7 = &unk_21775D5D0;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v57, type metadata accessor for CloudAlbum);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v17);
    }

    v11 = v17;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v17);
    v38 = v61;
    if (EnumTagSinglePayload == 1)
    {
      sub_2172CB34C(v10, &qword_27CB25308, v7);
      v15 = v38 + 1;
    }

    else
    {
      v56 = v17;
      sub_2174BFD48();
      sub_2174BFD48();
      v39 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B225C(0, *(v47 + 16) + 1, 1, v47);
        v47 = v43;
      }

      v41 = *(v47 + 16);
      v40 = *(v47 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2172B225C(v40 > 1, v41 + 1, 1, v47);
        v47 = v44;
      }

      v42 = v61 + 1;
      *(v47 + 16) = v41 + 1;
      sub_2174BFD48();
      v7 = v39;
      v15 = v42;
      v11 = v56;
    }
  }

  return v47;
}

uint64_t sub_2174BB9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a5, a6, (a7 + 3));
  v9 = *(*(a5 - 8) + 8);

  return v9(a4, a5);
}

uint64_t sub_2174BBA70()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 4288) = v0;
  *(v1 + 4280) = v2;
  *(v1 + 4272) = v3;
  *(v1 + 194) = v4;
  *(v1 + 4264) = v5;
  *(v1 + 4256) = v6;
  v7 = sub_217751908();
  OUTLINED_FUNCTION_45_0(v7);
  *(v1 + 4296) = OUTLINED_FUNCTION_28_7();
  v8 = sub_217751928();
  *(v1 + 4304) = v8;
  OUTLINED_FUNCTION_15_3(v8);
  *(v1 + 4312) = v9;
  *(v1 + 4320) = OUTLINED_FUNCTION_28_7();
  v10 = sub_2177516D8();
  *(v1 + 4328) = v10;
  OUTLINED_FUNCTION_15_3(v10);
  *(v1 + 4336) = v11;
  *(v1 + 4344) = OUTLINED_FUNCTION_28_7();
  v12 = sub_2177512F8();
  *(v1 + 4352) = v12;
  OUTLINED_FUNCTION_15_3(v12);
  *(v1 + 4360) = v13;
  *(v1 + 4368) = OUTLINED_FUNCTION_28_7();
  v14 = type metadata accessor for MusicDataRequest(0);
  *(v1 + 4376) = v14;
  OUTLINED_FUNCTION_45_0(v14);
  *(v1 + 4384) = OUTLINED_FUNCTION_28_7();
  v15 = type metadata accessor for MusicAPI.Endpoint(0);
  OUTLINED_FUNCTION_45_0(v15);
  *(v1 + 4392) = swift_task_alloc();
  *(v1 + 4400) = swift_task_alloc();
  *(v1 + 4408) = swift_task_alloc();
  *(v1 + 4416) = swift_task_alloc();
  *(v1 + 4424) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v16);
  *(v1 + 4432) = OUTLINED_FUNCTION_28_7();
  v17 = sub_217751518();
  *(v1 + 4440) = v17;
  OUTLINED_FUNCTION_15_3(v17);
  *(v1 + 4448) = v18;
  *(v1 + 4456) = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2174BBCD8(uint64_t a1)
{
  v2 = *(v1 + 4288);
  v3 = v2[1];
  if (!v3)
  {
    v7 = *(v1 + 4320);
    v8 = *(v1 + 4312);
    v9 = *(v1 + 4304);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_2171FF2C4(&qword_27CB241B0, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    OUTLINED_FUNCTION_1_5();
    sub_217751618();
    sub_217751918();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_3_56();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v4 = *v2;
  v5 = *(v1 + 4440);
  v6 = *(v1 + 4432);
  sub_217751DE8();
  sub_2177514E8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_2172CB34C(*(v1 + 4432), &qword_27CB277B8, &unk_21776B220);
  }

  else
  {
    (*(*(v1 + 4448) + 32))(*(v1 + 4456), *(v1 + 4432), *(v1 + 4440));
    v12 = sub_217751438();
    if (*v13)
    {
      Array<A>.update(with:)(*(*(v1 + 4288) + 16));
    }

    v12(v1 + 4128, 0);
    v14 = *(v1 + 4456);
    v15 = *(v1 + 4448);
    v16 = *(v1 + 4440);
    v17 = sub_2177514F8();
    v6 = v18;
    (*(v15 + 8))(v14, v16);
    if (v6)
    {

      v4 = v17;
      v3 = v6;
    }
  }

  v19 = *(v1 + 4272);
  v20 = type metadata accessor for MusicPersonalRecommendation(0);
  *(v1 + 4464) = v20;
  v21 = *(v1 + 4288);
  v22 = *(v1 + 194);
  v23 = *(v1 + 4264);
  v24 = MEMORY[0x277D84F90];
  if (v20 == v19)
  {
    *(v1 + 216) = MEMORY[0x277D84F90];
    *(v1 + 224) = v24;
    OUTLINED_FUNCTION_542();
    v33 = OUTLINED_FUNCTION_56_12();
    v6(v33);

    __swift_project_boxed_opaque_existential_1((v1 + 4008), *(v1 + 4032));
    v34 = OUTLINED_FUNCTION_1_5();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v34, v35, v36);
    __swift_destroy_boxed_opaque_existential_1((v1 + 4008));
    *(v1 + 368) = v24;
    *(v1 + 376) = 0;
    *(v1 + 232) = v4;
    *(v1 + 240) = v3;
    *(v1 + 264) = 0;
    *(v1 + 280) = 0;
    *(v1 + 288) = 0;
    sub_21725EE54(v21 + 24, v1 + 328);
    *(v1 + 200) = v23;
    *(v1 + 208) = v22 & 1;
    memcpy((v1 + 2376), (v1 + 232), 0x59uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 4472) = v37;
    *v37 = v38;
    v37[1] = sub_2174BC1B8;
    OUTLINED_FUNCTION_13_3();

    return sub_21741B384();
  }

  else
  {
    *(v1 + 32) = MEMORY[0x277D84F90];
    *(v1 + 40) = v24;
    OUTLINED_FUNCTION_542();
    v25 = OUTLINED_FUNCTION_56_12();
    v6(v25);

    __swift_project_boxed_opaque_existential_1((v1 + 4048), *(v1 + 4072));
    v26 = OUTLINED_FUNCTION_1_5();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_1((v1 + 4048));
    *(v1 + 184) = v24;
    *(v1 + 192) = 0;
    *(v1 + 48) = v4;
    *(v1 + 56) = v3;
    *(v1 + 80) = 0;
    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    sub_21725EE54(v21 + 24, v1 + 144);
    *(v1 + 16) = v23;
    *(v1 + 24) = v22 & 1;
    memcpy((v1 + 2472), (v1 + 48), 0x59uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v1 + 4488) = v29;
    *v29 = v30;
    v29[1] = sub_2174BC530;
    OUTLINED_FUNCTION_13_3();

    return sub_217419E00();
  }
}

uint64_t sub_2174BC1B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4480) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174BC2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_15_32();
  sub_2172CB34C(v17 + 200, &qword_27CB28680, &unk_21776DEA8);
  OUTLINED_FUNCTION_10_32();
  sub_2174BFDF8();
  OUTLINED_FUNCTION_93();
  sub_2174BFDF8();
  v22 = OUTLINED_FUNCTION_50_14();
  v24.n128_f64[0] = v23(v22);
  OUTLINED_FUNCTION_453(v24);
  OUTLINED_FUNCTION_12_25();
  sub_2174BFE50(v15, v25);
  OUTLINED_FUNCTION_647();
  v26 = OUTLINED_FUNCTION_27_25();
  v27(v26);
  OUTLINED_FUNCTION_542();
  v28 = OUTLINED_FUNCTION_56_12();
  v18(v28);

  OUTLINED_FUNCTION_31_19();
  (*(v21 + 8))(v16, v20);
  sub_2174BFE50(v14, v19);
  OUTLINED_FUNCTION_26_26();
  v41 = v29 + *v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v17 + 4504) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_11_37(v30);
  OUTLINED_FUNCTION_120_0();

  return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v41, a12, a13, a14);
}

uint64_t sub_2174BC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  sub_2172CB34C(v14 + 200, &qword_27CB28680, &unk_21776DEA8);
  v15 = OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24(v15);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2174BC530()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4496) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174BC628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_15_32();
  sub_2172CB34C(v17 + 16, &qword_27CB28630, &unk_21776DE80);
  OUTLINED_FUNCTION_10_32();
  sub_2174BFDF8();
  OUTLINED_FUNCTION_93();
  sub_2174BFDF8();
  v22 = OUTLINED_FUNCTION_50_14();
  v24.n128_f64[0] = v23(v22);
  OUTLINED_FUNCTION_453(v24);
  OUTLINED_FUNCTION_12_25();
  sub_2174BFE50(v15, v25);
  OUTLINED_FUNCTION_647();
  v26 = OUTLINED_FUNCTION_27_25();
  v27(v26);
  OUTLINED_FUNCTION_542();
  v28 = OUTLINED_FUNCTION_56_12();
  v18(v28);

  OUTLINED_FUNCTION_31_19();
  (*(v21 + 8))(v16, v20);
  sub_2174BFE50(v14, v19);
  OUTLINED_FUNCTION_26_26();
  v41 = v29 + *v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v17 + 4504) = v30;
  *v30 = v31;
  OUTLINED_FUNCTION_11_37(v30);
  OUTLINED_FUNCTION_120_0();

  return v36(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, v41, a12, a13, a14);
}

uint64_t sub_2174BC7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  sub_2172CB34C(v14 + 16, &qword_27CB28630, &unk_21776DE80);
  v15 = OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24(v15);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2174BC8A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 4512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174BC9A0()
{
  v1 = *(v0 + 4464);
  v2 = *(v0 + 4288);
  v3 = *(v0 + 4272);
  v4 = *(v0 + 4208);
  v5 = *(v0 + 4216);
  v426 = *(v0 + 4224);
  sub_217751348();
  swift_allocObject();
  v6 = sub_217751338();
  type metadata accessor for SharedRelatedItemStore();
  v7 = swift_allocObject();
  v10 = SharedRelatedItemStore.init()(v7, v8, v9);
  v11 = v2 + 24;
  sub_2172CA838(v2 + 24, v0 + 3808);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 3808);
  v12 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v12);
  *(v0 + 1328) = 0;
  *(v0 + 1312) = 0u;
  *(v0 + 1296) = 0u;
  *(v0 + 1280) = 0u;
  *(v0 + 1264) = 0u;
  *(v0 + 1248) = 0u;
  *(v0 + 1232) = 0u;
  v13 = *(v0 + 4512);
  if (v1 == v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285C0, &unk_21776DE90);
    v21 = sub_2174BFB4C(&qword_27CB28658, &qword_27CB285C0, &unk_21776DE90, sub_2174BFBC8);
    OUTLINED_FUNCTION_44_15(v21, v22, v23, v24, v21);
    if (!v13)
    {
      v394 = v4;
      v408 = v5;
      v417 = v10;
      v35 = (v0 + 3928);
      v36 = *(*(v0 + 4288) + 16);
      *(v0 + 3888) = 0u;
      *(v0 + 3904) = 0u;
      *(v0 + 3920) = 0;
      v37 = *(v0 + 952);
      v38 = *(v0 + 960);
      if (v38)
      {
        sub_2172CA838(v11, v0 + 2656);
        *(v0 + 2632) = v37;
        *(v0 + 2640) = v38;
        *(v0 + 2648) = v36;
        OUTLINED_FUNCTION_161_0();
        v39 = swift_allocObject();
        OUTLINED_FUNCTION_47_15(v39);
        sub_217751DE8();
        sub_217751DE8();
        sub_2172CB34C(v0 + 3888, &qword_27CB24188, &dword_217758930);
        *(v0 + 3888) = v39;
        *(v0 + 3912) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
        *(v0 + 3920) = &off_282969FA0;
      }

      v387 = (v0 + 1544);
      v40 = *(v0 + 3904);
      *(v0 + 3848) = *(v0 + 3888);
      *(v0 + 3864) = v40;
      *(v0 + 3880) = *(v0 + 3920);
      v41 = swift_task_alloc();
      *(v41 + 16) = v417;
      *(v41 + 24) = v11;
      sub_2172E4D18();
      v421 = v42;

      sub_217284868();
      if (*(v0 + 3952))
      {

        sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
        v429 = *v35;
        v430 = *(v0 + 3944);
        v431 = *(v0 + 3960);
      }

      else
      {
        *(v0 + 4000) = 0;
        *(v0 + 3968) = 0u;
        *(v0 + 3984) = 0u;
        if (v38)
        {
          sub_2172CA838(v11, v0 + 3128);
          *(v0 + 3112) = v37;
          *(v0 + 3120) = v38;
          OUTLINED_FUNCTION_197();
          v95 = swift_allocObject();
          v96 = *(v0 + 3128);
          *(v95 + 16) = *(v0 + 3112);
          *(v95 + 32) = v96;
          *(v95 + 48) = *(v0 + 3144);
          *(v95 + 64) = *(v0 + 3160);
          sub_217751DE8();

          sub_2172CB34C(v0 + 3968, &qword_27CB24188, &dword_217758930);
          sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
          *(v0 + 3968) = v95;
          *(v0 + 3992) = &type metadata for MusicCatalogResourceIncrementalLoader;
          *(v0 + 4000) = &off_2829650B8;
        }

        else
        {

          sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
        }

        v429 = *(v0 + 3968);
        v430 = *(v0 + 3984);
        v431 = *(v0 + 4000);
        if (*(v0 + 3952))
        {
          sub_2172CB34C(v35, &qword_27CB24188, &dword_217758930);
        }
      }

      v383 = *(v0 + 4280);
      v169 = *(v0 + 4272);
      v170 = *(v0 + 896);
      v171 = *(v0 + 904);
      if (v171 == 1)
      {
        v172 = 0;
      }

      else
      {
        v172 = *(v0 + 896);
      }

      if (v171 == 1)
      {
        v173 = 0;
      }

      else
      {
        v173 = *(v0 + 904);
      }

      v174 = *(v0 + 920);
      v175 = *(v0 + 928);
      v176 = *(v0 + 1008);
      v177 = *(v0 + 1016);
      *(v0 + 1128) = v421;
      *(v0 + 1136) = 0;
      *(v0 + 1176) = v431;
      *(v0 + 1144) = v429;
      *(v0 + 1160) = v430;
      *(v0 + 1184) = v172;
      *(v0 + 1192) = v173;
      *(v0 + 1200) = v174;
      *(v0 + 1208) = v175;
      *(v0 + 1216) = v176;
      *(v0 + 1224) = v177;
      sub_217284868();
      sub_2171FB568(v170, v171);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28678, &qword_21776DEA0);
      type metadata accessor for MusicItemCollection(0, v169, v383, v178);
      v179 = swift_dynamicCast();
      v180 = *(v0 + 4424);
      v181 = *(v0 + 4384);
      if ((v179 & 1) == 0)
      {
        v188 = *(v0 + 4280);
        v189 = *(v0 + 4272);
        v190 = *(v0 + 4256);
        *v387 = 0u;
        *(v0 + 1560) = 0u;
        *(v0 + 1576) = 0u;
        *(v0 + 1592) = 0u;
        *(v0 + 1608) = 0u;
        *(v0 + 1624) = 0u;
        *(v0 + 1640) = 0;
        v191 = sub_217752338();
        MusicItemCollection.init(arrayLiteral:)(v191, v189, v188, v190);

        sub_217275694(v394, v408);

        sub_2172CB34C(v0 + 1128, &qword_27CB28678, &qword_21776DEA0);
        v192 = sub_2177528F8();
        OUTLINED_FUNCTION_43();
        v194 = *(v193 + 8);
        v194(v0 + 1232, v192);
        OUTLINED_FUNCTION_1_57();
        sub_2174BFE50(v180, v195);
        sub_2172CB34C(v0 + 896, &qword_27CB285C0, &unk_21776DE90);
        OUTLINED_FUNCTION_0_60();
        sub_2174BFE50(v181, v196);
        if (*(v0 + 1632))
        {
          v194(v387, v192);
        }

        goto LABEL_94;
      }

      v182 = *(v0 + 4256);

      sub_217275694(v394, v408);

      sub_2172CB34C(v0 + 1128, &qword_27CB28678, &qword_21776DEA0);
      sub_2177528F8();
      OUTLINED_FUNCTION_6_0();
      (*(v183 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_1_57();
      sub_2174BFE50(v180, v184);
      sub_2172CB34C(v0 + 896, &qword_27CB285C0, &unk_21776DE90);
      OUTLINED_FUNCTION_0_60();
      sub_2174BFE50(v181, v185);
      v186 = v182;
      v187 = (v0 + 1544);
      goto LABEL_91;
    }

LABEL_9:
    v25 = *(v0 + 4424);
    v26 = *(v0 + 4384);
    v27 = *(v0 + 4280);
    v28 = *(v0 + 4272);

    sub_217275694(v4, v5);

    v30 = type metadata accessor for MusicItemCollection(255, v28, v27, v29);
    OUTLINED_FUNCTION_25_30(v30);
    OUTLINED_FUNCTION_6_0();
    (*(v31 + 8))(v0 + 1232);
    OUTLINED_FUNCTION_1_57();
    sub_2174BFE50(v25, v32);
    OUTLINED_FUNCTION_0_60();
    sub_2174BFE50(v26, v33);

    OUTLINED_FUNCTION_20_0();
    goto LABEL_95;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25930, &unk_217797B70);
  v15 = sub_2174BFB4C(&qword_27CB28638, &qword_27CB25930, &unk_217797B70, sub_2174BFA64);
  OUTLINED_FUNCTION_44_15(v15, v16, v17, v18, v15);
  if (v13)
  {
    goto LABEL_9;
  }

  v19 = *(v0 + 4272);
  v416 = v10;
  if (v19 == &type metadata for Album)
  {
    v333 = v11;
    v395 = v4;
    v402 = v6;
    v409 = v5;
    v43 = OUTLINED_FUNCTION_45_17();
    v44 = sub_2174BB434(v43);
    v46 = *(v0 + 408);
    v45 = *(v0 + 416);
    v48 = *(v0 + 424);
    v47 = *(v0 + 432);
    v50 = *(v0 + 440);
    v49 = *(v0 + 448);
    sub_217284868();
    v51 = *(v0 + 496);
    v52 = *(v0 + 504);
    v422 = v14;
    *(v0 + 640) = v14;
    v53 = v0 + 3488;
    v311 = v47;
    v318 = v6;
    *(v0 + 648) = v6;
    v54 = v52;
    *(v0 + 656) = v44;
    v358 = v45;
    v365 = v46;
    *(v0 + 664) = v46;
    v4 = v51;
    *(v0 + 672) = v45;
    *(v0 + 680) = v48;
    *(v0 + 688) = v47;
    *(v0 + 696) = v50;
    *(v0 + 704) = v49;
    *(v0 + 752) = v51;
    *(v0 + 760) = v52;
    v55 = *(v386 + 16);
    OUTLINED_FUNCTION_7_37();
    if (v49)
    {
      v56 = v333;
      sub_2172CA838(v333, v0 + 2784);
      *(v0 + 2760) = v50;
      *(v0 + 2768) = v49;
      *(v0 + 2776) = v55;
      OUTLINED_FUNCTION_161_0();
      v57 = swift_allocObject();
      v58 = OUTLINED_FUNCTION_18_26(v57);
      *(v59 + 48) = v58;
      *(v59 + 64) = v60;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v61 = v318;
      sub_2171FB568(v422, v318);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v62 = sub_2172CB34C(v53, &qword_27CB24188, &dword_217758930);
      *(v0 + 3488) = v50;
      *(v0 + 3512) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3520) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v61 = v318;
      sub_2171FB568(v422, v318);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v62 = sub_217751DE8();
      v56 = v333;
    }

    v114 = OUTLINED_FUNCTION_37_17(v62, v63, v64, v65, v66, v67, v68, v69, v289, v50, v49, v0 + 3488, v311, v318, 0, v333, v44, v348, v358, v365, v0 + 3448);
    OUTLINED_FUNCTION_36_18(v114, v115, v116, v117, v118, v119, v120, v121, v290, v296, v301, v306, v313, v321, v328, v335, v340, v350, v360, v367, v375, v0 + 3528, v4, v395, v402, v409, v416);
    v342 = sub_2172E49B0(sub_21733B438, v53, v341);

    sub_217284868();
    v5 = v412;
    v351 = v54;
    v122 = v61;
    if (*(v0 + 3552))
    {
      v123 = *(v0 + 4280);

      sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
      v125 = type metadata accessor for MusicItemCollection(255, &type metadata for Album, v123, v124);
      OUTLINED_FUNCTION_25_30(v125);
      OUTLINED_FUNCTION_6_0();
      (*(v126 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      if (v302)
      {
        v4 = v0 + 3000;
        sub_2172CA838(v56, v0 + 3016);
        *(v0 + 3000) = v297;
        *(v0 + 3008) = v302;
        OUTLINED_FUNCTION_197();
        v127 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v127);
        *(v128 + 64) = v129;
        sub_217751DE8();

        v54 = &dword_217758930;
        OUTLINED_FUNCTION_58_13(v0 + 3568);
        v130 = OUTLINED_FUNCTION_58_13(v376);
        v133 = OUTLINED_FUNCTION_57_15(v130, &type metadata for Album, v131, v132);
        OUTLINED_FUNCTION_25_30(v133);
        OUTLINED_FUNCTION_6_0();
        (*(v134 + 8))(v0 + 1232);
        *(v0 + 3568) = v56;
        *(v0 + 3592) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3600) = &off_2829650B8;
      }

      else
      {

        v219 = sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
        v222 = OUTLINED_FUNCTION_57_15(v219, &type metadata for Album, v220, v221);
        OUTLINED_FUNCTION_25_30(v222);
        OUTLINED_FUNCTION_6_0();
        (*(v223 + 8))(v0 + 1232);
      }

      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_5_45();
      v5 = v412;
      if (*(v0 + 3552))
      {
        sub_2172CB34C(v381, &qword_27CB24188, &dword_217758930);
      }
    }

    v224 = *(v0 + 4280);
    if (v122 == 1)
    {
      v225 = 0;
    }

    else
    {
      v225 = v54;
    }

    if (v122 == 1)
    {
      v226 = 0;
    }

    else
    {
      v226 = v122;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 640, &qword_27CB24278, &unk_217759070);
    *(v0 + 2168) = v342;
    *(v0 + 2176) = v427;
    *(v0 + 2208) = OUTLINED_FUNCTION_33_19((v0 + 2177), v291, v297, v302, v307, v314, v322, v329, v336, v342, v351, v361, v368, v376, v381, v389, v398, v405, v412, v418, v422, v426, v427, *v428, *&v428[16]);
    *(v0 + 2224) = v225;
    *(v0 + 2232) = v226;
    *(v0 + 2240) = v372;
    *(v0 + 2248) = v56;
    *(v0 + 2256) = v392;
    *(v0 + 2264) = v355;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
    type metadata accessor for MusicItemCollection(0, &type metadata for Album, v224, v227);
    goto LABEL_86;
  }

  if (v19 == &type metadata for Playlist)
  {
    v396 = v4;
    v403 = v6;
    v410 = v5;
    v70 = OUTLINED_FUNCTION_45_17();
    v71 = sub_2174BAE78(v70);
    v73 = *(v0 + 408);
    v72 = *(v0 + 416);
    v74 = *(v0 + 432);
    v319 = *(v0 + 424);
    v76 = *(v0 + 440);
    v75 = *(v0 + 448);
    sub_217284868();
    v77 = *(v0 + 496);
    v78 = *(v0 + 504);
    v423 = v14;
    *(v0 + 512) = v14;
    v326 = v6;
    *(v0 + 520) = v6;
    v79 = v78;
    *(v0 + 528) = v71;
    v359 = v72;
    v366 = v73;
    *(v0 + 536) = v73;
    v4 = v77;
    *(v0 + 544) = v72;
    v80 = v0 + 3288;
    *(v0 + 552) = v319;
    v320 = v74;
    *(v0 + 560) = v74;
    *(v0 + 568) = v76;
    *(v0 + 576) = v75;
    *(v0 + 624) = v77;
    *(v0 + 632) = v78;
    v81 = *(v386 + 16);
    OUTLINED_FUNCTION_7_37();
    if (v75)
    {
      sub_2172CA838(v11, v0 + 2720);
      *(v0 + 2696) = v76;
      *(v0 + 2704) = v75;
      *(v0 + 2712) = v81;
      OUTLINED_FUNCTION_161_0();
      v82 = swift_allocObject();
      v83 = OUTLINED_FUNCTION_18_26(v82);
      *(v84 + 48) = v83;
      *(v84 + 64) = v85;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v86 = v326;
      sub_2171FB568(v423, v326);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v87 = sub_2172CB34C(v80, &qword_27CB24188, &dword_217758930);
      *(v0 + 3288) = v76;
      *(v0 + 3312) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3320) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v86 = v326;
      sub_2171FB568(v423, v326);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v87 = sub_217751DE8();
    }

    v148 = OUTLINED_FUNCTION_37_17(v87, v88, v89, v90, v91, v92, v93, v94, v289, v295, v76, v75, v0 + 3288, v320, v326, 0, v71, v348, v359, v366, v0 + 3168);
    OUTLINED_FUNCTION_36_18(v148, v149, v150, v151, v152, v153, v154, v155, v292, v298, v303, v308, v315, v323, v330, v337, v343, v352, v362, v369, v377, v0 + 3248, v4, v396, v403, v410, v416);
    v345 = sub_2172E48FC(sub_21733B454, v80, v344);

    sub_217284868();
    v5 = v414;
    v353 = v79;
    v156 = v86;
    if (*(v0 + 3272))
    {
      v157 = *(v0 + 4280);

      sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
      v159 = type metadata accessor for MusicItemCollection(255, &type metadata for Playlist, v157, v158);
      OUTLINED_FUNCTION_25_30(v159);
      OUTLINED_FUNCTION_6_0();
      (*(v160 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      if (v309)
      {
        v4 = v0 + 2944;
        sub_2172CA838(v11, v0 + 2960);
        *(v0 + 2944) = v304;
        *(v0 + 2952) = v309;
        OUTLINED_FUNCTION_197();
        v161 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v161);
        *(v162 + 64) = v163;
        sub_217751DE8();

        v79 = &dword_217758930;
        OUTLINED_FUNCTION_58_13(v0 + 4088);
        v164 = OUTLINED_FUNCTION_58_13(v378);
        v167 = OUTLINED_FUNCTION_57_15(v164, &type metadata for Playlist, v165, v166);
        OUTLINED_FUNCTION_25_30(v167);
        OUTLINED_FUNCTION_6_0();
        (*(v168 + 8))(v0 + 1232);
        *(v0 + 4088) = v11;
        *(v0 + 4112) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 4120) = &off_2829650B8;
      }

      else
      {

        v234 = sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
        v237 = OUTLINED_FUNCTION_57_15(v234, &type metadata for Playlist, v235, v236);
        OUTLINED_FUNCTION_25_30(v237);
        OUTLINED_FUNCTION_6_0();
        (*(v238 + 8))(v0 + 1232);
      }

      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_5_45();
      v5 = v414;
      if (*(v0 + 3272))
      {
        sub_2172CB34C(v382, &qword_27CB24188, &dword_217758930);
      }
    }

    v239 = *(v0 + 4280);
    if (v156 == 1)
    {
      v240 = 0;
    }

    else
    {
      v240 = v79;
    }

    if (v156 == 1)
    {
      v241 = 0;
    }

    else
    {
      v241 = v156;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 512, &qword_27CB242C8, &unk_217758970);
    *(v0 + 1024) = v345;
    *(v0 + 1032) = v427;
    v242 = OUTLINED_FUNCTION_33_19((v0 + 1033), v293, v299, v304, v309, v316, v324, v331, v338, v345, v353, v363, v370, v378, v382, v390, v400, v406, v414, v419, v423, v426, v427, *v428, *&v428[16]);
    *(v243 + 31) = v242;
    *(v0 + 1080) = v240;
    *(v0 + 1088) = v241;
    *(v0 + 1096) = v373;
    *(v0 + 1104) = v11;
    *(v0 + 1112) = v393;
    *(v0 + 1120) = v356;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
    type metadata accessor for MusicItemCollection(0, &type metadata for Playlist, v239, v244);
    goto LABEL_86;
  }

  if (v19 == &type metadata for Station)
  {
    v404 = v6;
    v411 = v5;
    v334 = (v0 + 3608);
    v397 = *(v0 + 4288);
    v98 = *(v0 + 384);
    v97 = *(v0 + 392);
    v99 = *(v0 + 400);
    sub_2171FB568(v98, v97);
    v100 = sub_2174BA8BC(v99);
    v101 = *(v0 + 408);
    v424 = *(v0 + 416);
    v102 = *(v0 + 432);
    v312 = *(v0 + 424);
    v103 = *(v0 + 440);
    v374 = *(v0 + 448);
    sub_217284868();
    v105 = *(v0 + 496);
    v104 = *(v0 + 504);
    *(v0 + 768) = v98;
    v388 = v97;
    *(v0 + 776) = v97;
    v327 = v100;
    *(v0 + 784) = v100;
    v349 = v101;
    *(v0 + 792) = v101;
    v106 = v104;
    *(v0 + 800) = v424;
    v107 = (v0 + 3408);
    *(v0 + 808) = v312;
    *(v0 + 816) = v102;
    *(v0 + 824) = v103;
    *(v0 + 832) = v374;
    *(v0 + 880) = v105;
    *(v0 + 888) = v104;
    v108 = *(v397 + 16);
    OUTLINED_FUNCTION_7_37();
    v380 = v106;
    if (v374)
    {
      v397 = v4;
      sub_2172CA838(v11, v0 + 2848);
      *(v0 + 2824) = v103;
      *(v0 + 2832) = v374;
      *(v0 + 2840) = v108;
      OUTLINED_FUNCTION_161_0();
      v109 = swift_allocObject();
      v110 = OUTLINED_FUNCTION_18_26(v109);
      *(v111 + 48) = v110;
      *(v111 + 64) = v112;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v98, v388);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172CB34C(v107, &qword_27CB24188, &dword_217758930);
      *(v0 + 3408) = v103;
      *(v0 + 3432) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3440) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v98, v388);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
    }

    v113 = v98;
    v197 = *(v0 + 3424);
    v198 = v0 + 3608;
    *v334 = *v107;
    *(v0 + 3624) = v197;
    *(v0 + 3640) = *(v0 + 3440);
    v199 = swift_task_alloc();
    OUTLINED_FUNCTION_36_18(v199, v200, v201, v202, v203, v204, v205, v206, v289, v295, v103, v0 + 3408, v102, 0, v327, v334, v105, v349, v0 + 3368, v98, v374, v380, v388, v397, v404, v411, v416);
    v207 = sub_2172E4848(sub_21733B5C0, v107, v332);

    sub_217284868();
    if (*(v0 + 3392))
    {
      v208 = *(v0 + 4280);

      sub_2172CB34C(v0 + 3608, &qword_27CB24188, &dword_217758930);
      v210 = type metadata accessor for MusicItemCollection(255, &type metadata for Station, v208, v209);
      OUTLINED_FUNCTION_25_30(v210);
      OUTLINED_FUNCTION_6_0();
      (*(v211 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      v5 = v415;
      v212 = v424;
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      v401 = *(v0 + 4280);
      if (v379)
      {
        sub_2172CA838(v11, v0 + 3072);
        *(v0 + 3056) = v305;
        *(v0 + 3064) = v379;
        OUTLINED_FUNCTION_197();
        v213 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v213);
        *(v214 + 64) = v215;
        sub_217751DE8();

        sub_2172CB34C(v0 + 3328, &qword_27CB24188, &dword_217758930);
        v113 = v371;
        sub_2172CB34C(v198, &qword_27CB24188, &dword_217758930);
        v217 = type metadata accessor for MusicItemCollection(255, &type metadata for Station, v401, v216);
        OUTLINED_FUNCTION_25_30(v217);
        OUTLINED_FUNCTION_6_0();
        (*(v218 + 8))(v0 + 1232);
        *(v0 + 3328) = v11;
        *(v0 + 3352) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3360) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v198, &qword_27CB24188, &dword_217758930);
        v246 = type metadata accessor for MusicItemCollection(255, &type metadata for Station, v401, v245);
        OUTLINED_FUNCTION_25_30(v246);
        OUTLINED_FUNCTION_6_0();
        (*(v247 + 8))(v0 + 1232);
      }

      v212 = v424;
      OUTLINED_FUNCTION_5_45();
      v5 = v415;
      if (*(v0 + 3392))
      {
        sub_2172CB34C(v364, &qword_27CB24188, &dword_217758930);
      }
    }

    v248 = *(v0 + 4280);
    if (v391 == 1)
    {
      v249 = 0;
    }

    else
    {
      v249 = v113;
    }

    if (v391 == 1)
    {
      v250 = 0;
    }

    else
    {
      v250 = v391;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 768, &qword_27CB242F8, &qword_21775D6C0);
    *(v0 + 1752) = v207;
    *(v0 + 1760) = v427;
    *(v0 + 1792) = OUTLINED_FUNCTION_33_19((v0 + 1761), v294, v300, v305, v310, v317, v325, v332, v339, v346, v354, v364, v371, v379, v384, v391, v401, v407, v415, v420, v424, v426, v427, *v428, *&v428[16]);
    *(v0 + 1808) = v249;
    *(v0 + 1816) = v250;
    *(v0 + 1824) = v357;
    *(v0 + 1832) = v212;
    *(v0 + 1840) = v347;
    *(v0 + 1848) = v385;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255B8, &unk_21775D470);
    type metadata accessor for MusicItemCollection(0, &type metadata for Station, v248, v251);
LABEL_86:
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_15();
    }

    v252 = OUTLINED_FUNCTION_48_14();
    memcpy(v252, v253, 0x68uLL);
    goto LABEL_89;
  }

  if (v19 == &type metadata for MusicPersonalRecommendation.Item)
  {
    v399 = v4;
    v413 = v5;
    v135 = *(*(v0 + 4288) + 16);
    *(v0 + 3760) = 0;
    *(v0 + 3728) = 0u;
    *(v0 + 3744) = 0u;
    v136 = *(v0 + 440);
    v137 = *(v0 + 448);
    if (v137)
    {
      sub_2172CA838(v11, v0 + 2592);
      *(v0 + 2568) = v136;
      *(v0 + 2576) = v137;
      *(v0 + 2584) = v135;
      OUTLINED_FUNCTION_161_0();
      v138 = swift_allocObject();
      OUTLINED_FUNCTION_47_15(v138);
      sub_217751DE8();
      sub_217751DE8();
      sub_2172CB34C(v0 + 3728, &qword_27CB24188, &dword_217758930);
      *(v0 + 3728) = v138;
      *(v0 + 3752) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3760) = &off_282969FA0;
    }

    v139 = *(v0 + 3744);
    *(v0 + 3768) = *(v0 + 3728);
    *(v0 + 3784) = v139;
    *(v0 + 3800) = *(v0 + 3760);
    v140 = *(v0 + 400);
    v141 = swift_task_alloc();
    *(v141 + 16) = v10;
    *(v141 + 24) = v11;
    v142 = sub_2172E4E90(sub_21733C8E8, v141, v140);

    v143 = v0 + 3688;
    sub_217284868();
    if (*(v0 + 3712))
    {
      v144 = *(v0 + 4280);

      sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
      v146 = type metadata accessor for MusicItemCollection(255, &type metadata for MusicPersonalRecommendation.Item, v144, v145);
      OUTLINED_FUNCTION_25_30(v146);
      OUTLINED_FUNCTION_6_0();
      (*(v147 + 8))(v0 + 1232);
      v432 = *(v0 + 3688);
      v433 = *(v0 + 3704);
      v434 = *(v0 + 3720);
      v5 = v413;
    }

    else
    {
      *(v0 + 3680) = 0;
      *(v0 + 3648) = 0u;
      *(v0 + 3664) = 0u;
      v228 = *(v0 + 4280);
      if (v137)
      {
        sub_2172CA838(v11, v0 + 2904);
        *(v0 + 2888) = v136;
        *(v0 + 2896) = v137;
        OUTLINED_FUNCTION_197();
        v229 = swift_allocObject();
        v230 = *(v0 + 2904);
        *(v229 + 16) = *(v0 + 2888);
        *(v229 + 32) = v230;
        *(v229 + 48) = *(v0 + 2920);
        *(v229 + 64) = *(v0 + 2936);
        sub_217751DE8();

        sub_2172CB34C(v0 + 3648, &qword_27CB24188, &dword_217758930);
        v143 = v0 + 3688;
        sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
        v232 = type metadata accessor for MusicItemCollection(255, &type metadata for MusicPersonalRecommendation.Item, v228, v231);
        OUTLINED_FUNCTION_25_30(v232);
        OUTLINED_FUNCTION_6_0();
        (*(v233 + 8))(v0 + 1232);
        *(v0 + 3648) = v229;
        *(v0 + 3672) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3680) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
        v275 = type metadata accessor for MusicItemCollection(255, &type metadata for MusicPersonalRecommendation.Item, v228, v274);
        OUTLINED_FUNCTION_25_30(v275);
        OUTLINED_FUNCTION_6_0();
        (*(v276 + 8))(v0 + 1232);
      }

      v5 = v413;
      v432 = *(v0 + 3648);
      v433 = *(v0 + 3664);
      v434 = *(v0 + 3680);
      if (*(v0 + 3712))
      {
        sub_2172CB34C(v143, &qword_27CB24188, &dword_217758930);
      }
    }

    v277 = *(v0 + 4280);
    v278 = *(v0 + 384);
    v279 = *(v0 + 392);
    if (v279 == 1)
    {
      v280 = 0;
    }

    else
    {
      v280 = *(v0 + 384);
    }

    if (v279 == 1)
    {
      v281 = 0;
    }

    else
    {
      v281 = *(v0 + 392);
    }

    v282 = *(v0 + 408);
    v283 = *(v0 + 416);
    v284 = *(v0 + 496);
    v285 = *(v0 + 504);
    *&v428[7] = v432;
    *&v428[23] = v433;
    *&v428[39] = v434;
    *(v0 + 1960) = v142;
    *(v0 + 1968) = 0;
    *(v0 + 1969) = *v428;
    *(v0 + 1985) = *&v428[16];
    *(v0 + 2000) = *&v428[31];
    *(v0 + 2016) = v280;
    *(v0 + 2024) = v281;
    *(v0 + 2032) = v282;
    *(v0 + 2040) = v283;
    *(v0 + 2048) = v284;
    *(v0 + 2056) = v285;
    sub_2171FB568(v278, v279);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25928, &unk_21775D9A0);
    type metadata accessor for MusicItemCollection(0, &type metadata for MusicPersonalRecommendation.Item, v277, v286);
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_15();
    }

    v287 = OUTLINED_FUNCTION_48_14();
    memcpy(v287, v288, 0x68uLL);
    v4 = v399;
  }

  else
  {
  }

LABEL_89:
  v254 = type metadata accessor for MusicItemCollection(255, *(v0 + 4272), *(v0 + 4280), v20);
  v255 = OUTLINED_FUNCTION_25_30(v254);
  v256 = *(v255 - 8);
  (*(v256 + 16))(v0 + 1440, v0 + 1232, v255);
  v257 = *(v0 + 4424);
  v258 = *(v0 + 4384);
  if (!*(v0 + 1528))
  {
    v264 = *(v0 + 4280);
    v425 = *(v0 + 4384);
    v265 = *(v0 + 4272);
    v266 = v4;
    v267 = *(v0 + 4256);
    v268 = sub_217752338();
    MusicItemCollection.init(arrayLiteral:)(v268, v265, v264, v267);

    sub_217275694(v266, v5);

    v269 = *(v256 + 8);
    v270 = OUTLINED_FUNCTION_48_14();
    v269(v270);
    OUTLINED_FUNCTION_1_57();
    sub_2174BFE50(v257, v271);
    sub_2172CB34C(v0 + 384, &qword_27CB25930, &unk_217797B70);
    OUTLINED_FUNCTION_0_60();
    sub_2174BFE50(v425, v272);
    if (*(v0 + 1528))
    {
      (v269)(v0 + 1440, v255);
    }

    goto LABEL_94;
  }

  v259 = *(v0 + 4256);

  sub_217275694(v4, v5);

  v260 = OUTLINED_FUNCTION_48_14();
  v261(v260);
  OUTLINED_FUNCTION_1_57();
  sub_2174BFE50(v257, v262);
  sub_2172CB34C(v0 + 384, &qword_27CB25930, &unk_217797B70);
  OUTLINED_FUNCTION_0_60();
  sub_2174BFE50(v258, v263);
  v187 = (v0 + 1440);
  v186 = v259;
LABEL_91:
  memcpy(v186, v187, 0x68uLL);
LABEL_94:

  OUTLINED_FUNCTION_20_0();
LABEL_95:

  return v34();
}

uint64_t sub_2174BE708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = *(v14 + 4384);
  OUTLINED_FUNCTION_1_57();
  sub_2174BFE50(v16, v17);
  OUTLINED_FUNCTION_0_60();
  sub_2174BFE50(v15, v18);
  v19 = OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24(v19);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

void sub_2174BE7E4(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v13 = *(v4 + 64);
  if (v13)
  {
    v14 = *(v4 + 56);
    (*(v9 + 16))(v12);
    sub_217751DE8();
    sub_217751DE8();
    sub_2174BB9F8(v14, v13, a1, v12, a2, a3, v18);
    OUTLINED_FUNCTION_161_0();
    v15 = swift_allocObject();
    v16 = v18[1];
    v15[1] = v18[0];
    v15[2] = v16;
    v17 = v18[3];
    v15[3] = v18[2];
    v15[4] = v17;
    sub_2172CB34C(a4, &qword_27CB24188, &dword_217758930);
    *a4 = v15;
    *(a4 + 24) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
    *(a4 + 32) = &off_282969FA0;
  }
}

uint64_t sub_2174BE948()
{
  OUTLINED_FUNCTION_169();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_217270404();
  if (v6)
  {
    v7 = v1[6];
    v8 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v7);
    v9 = *(v8 + 112);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
    return v9(v0 + 3, v10, v7, v8) & 1;
  }

  return 0;
}

uint64_t sub_2174BEA18(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_21727D208(a1, v2[2]);
  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  return (*(v5 + 120))(a1, v4, v5);
}

uint64_t sub_2174BEAB8()
{
  sub_2177531E8();
  sub_2174BEA18(v1);
  return sub_217753238();
}

uint64_t sub_2174BEAF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return sub_2174BBA70();
}

uint64_t sub_2174BEBCC(uint64_t a1)
{
  sub_2177531E8();
  sub_2174BEA18(v2);
  return sub_217753238();
}

unint64_t sub_2174BEC2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21722560C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2174BEC5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217225658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2174BEC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21722560C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2174BECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174BF64C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2174BECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2174BF64C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2174BED30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285D8, &unk_21776DC20);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174BF64C(v6, v7, v8);
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 1;
  v19[0] = sub_217752E68();
  v19[1] = v9;
  v10 = a1[3];
  v11 = a1[4];
  v12 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  Decoder.dataRequestConfiguration.getter(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_2174BF708(&qword_27CB285F0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_217752EA8();
  sub_2174BEF8C(v20);
  v15 = v14;
  v16 = OUTLINED_FUNCTION_1_37();
  v17(v16);
  v19[2] = v15;
  sub_2174BF6A0(v19, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2174BF6D8(v19);
}

void sub_2174BEF8C(uint64_t a1)
{
  v21 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v22 = v6 - v5;
  v7 = 0;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = MEMORY[0x277D84F90];
  if ((v12 & v8) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v9 + 8 * v16);
    ++v7;
    if (v13)
    {
      v7 = v16;
      do
      {
LABEL_8:
        sub_217751DE8();
        sub_217751DE8();
        sub_2177513F8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B1A50(0, *(v15 + 16) + 1, 1, v15);
          v15 = v19;
        }

        v18 = *(v15 + 16);
        v17 = *(v15 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_2172B1A50(v17 > 1, v18 + 1, 1, v15);
          v15 = v20;
        }

        v13 &= v13 - 1;
        *(v15 + 16) = v18 + 1;
        (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v22, v21);
      }

      while (v13);
    }
  }

  __break(1u);
}

uint64_t sub_2174BF1B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285F8, &unk_21776DC30);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174BF64C(v11, v12, v13);
  sub_2177532F8();
  v20 = *v3;
  v19 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  v14 = sub_21725E964();
  OUTLINED_FUNCTION_28_24(v14);
  if (!v2)
  {
    *&v20 = sub_2174BF360(*(v3 + 2));
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    v16 = sub_2174BF708(&qword_27CB28600, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_28_24(v16);
  }

  return (*(v7 + 8))(v10, v5, v15);
}

void *sub_2174BF360(uint64_t a1)
{
  v2 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_217751DC8();
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v12 = *(v4 + 16);
  v11 = v4 + 16;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v42 = v12;
  v40 = v2;
  v41 = *(v11 + 56);
  v39 = v8;
  while (1)
  {
    v42(v8, v13, v2);
    v14 = sub_217751418();
    if (!v15)
    {
      v29 = OUTLINED_FUNCTION_1_5();
      v30(v29);
      goto LABEL_13;
    }

    v16 = v15;
    v43 = v14;
    v17 = sub_217751408();
    v19 = v18;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_21763246C(v17, v19);
    if (__OFADD__(v9[2], (v21 & 1) == 0))
    {
      break;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28608, &qword_21777B260);
    if (sub_217752CB8())
    {
      v24 = sub_21763246C(v17, v19);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_17;
      }

      v22 = v24;
    }

    if (v23)
    {

      v26 = (v9[7] + 16 * v22);
      *v26 = v43;
      v26[1] = v16;

      v8 = v39;
      v2 = v40;
      v27 = OUTLINED_FUNCTION_1_5();
      v28(v27);
    }

    else
    {
      v9[(v22 >> 6) + 8] |= 1 << v22;
      v31 = (v9[6] + 16 * v22);
      *v31 = v17;
      v31[1] = v19;
      v32 = (v9[7] + 16 * v22);
      *v32 = v43;
      v32[1] = v16;
      v8 = v39;
      v2 = v40;
      v33 = OUTLINED_FUNCTION_1_5();
      v34(v33);
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_16;
      }

      v9[2] = v37;
    }

LABEL_13:
    v13 += v41;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_2174BF64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB285E0;
  if (!qword_27CB285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB285E0);
  }

  return result;
}

uint64_t sub_2174BF708(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB285E8, &qword_2177733C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2174BF864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2174BF8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2174BF908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28610;
  if (!qword_27CB28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28610);
  }

  return result;
}

unint64_t sub_2174BF960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28618;
  if (!qword_27CB28618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28618);
  }

  return result;
}

unint64_t sub_2174BF9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28620;
  if (!qword_27CB28620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28620);
  }

  return result;
}

unint64_t sub_2174BFA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28628;
  if (!qword_27CB28628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28628);
  }

  return result;
}

unint64_t sub_2174BFA64()
{
  result = qword_27CB28640;
  if (!qword_27CB28640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24948, &unk_21775A210);
    sub_2171FF2C4(&qword_27CB28648, type metadata accessor for CloudPersonalRecommendation.Item, &protocol conformance descriptor for CloudPersonalRecommendation.Item);
    sub_2171FF2C4(&qword_27CB28650, type metadata accessor for CloudPersonalRecommendation.Item, &protocol conformance descriptor for CloudPersonalRecommendation.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28640);
  }

  return result;
}

uint64_t sub_2174BFB4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2174BFBC8()
{
  result = qword_27CB28660;
  if (!qword_27CB28660)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244A8, &unk_217758980);
    v6 = sub_2174BFC54(v1, v2, v3);
    sub_2174BFCA8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28660);
  }

  return result;
}

unint64_t sub_2174BFC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28668;
  if (!qword_27CB28668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28668);
  }

  return result;
}

unint64_t sub_2174BFCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28670;
  if (!qword_27CB28670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28670);
  }

  return result;
}

uint64_t sub_2174BFD48()
{
  OUTLINED_FUNCTION_169();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_93();
  v4(v3);
  return v0;
}

uint64_t sub_2174BFDA0()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2174BFDF8()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

uint64_t sub_2174BFE50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return sub_2174BFDA0();
}

__n128 OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  return *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3208));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return v2 + 104;
}

uint64_t OUTLINED_FUNCTION_45_17()
{
  v1 = v0[50];
  sub_2171FB568(v0[48], v0[49]);
  return v1;
}

__n128 OUTLINED_FUNCTION_47_15(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_12()
{
}

uint64_t OUTLINED_FUNCTION_57_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return type metadata accessor for MusicItemCollection(255, a2, v4, a4);
}

uint64_t OUTLINED_FUNCTION_58_13(uint64_t a1)
{

  return sub_2172CB34C(a1, v1, v2);
}

uint64_t AnyPropertyProvider.type.getter()
{
  OUTLINED_FUNCTION_40_17();
  v0 = OUTLINED_FUNCTION_33_20();
  v1(v0);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(*(v2 + 8) + 48))(v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t AnyPropertyProvider.identifierSet.getter()
{
  OUTLINED_FUNCTION_40_17();
  v0 = OUTLINED_FUNCTION_33_20();
  return v1(v0);
}

uint64_t AnyPropertyProvider.href.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t AnyPropertyProvider.rawAttributes.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t AnyPropertyProvider.rawRelationships.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t AnyPropertyProvider.rawAssociations.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t AnyPropertyProvider.rawMetadata.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_3_57();
  v2(v1);
  OUTLINED_FUNCTION_15_1(v6);
  v3 = OUTLINED_FUNCTION_44_1();
  v4(v3);
  return OUTLINED_FUNCTION_80_11(v6);
}

uint64_t PropertyProvider.eraseToAnyPropertyProvider()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_41_0();
  v4 = *(v3 + 16);

  return v4();
}

uint64_t static AnyPropertyProvider.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 104);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_2174C041C()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(qword_280BE35B8, type metadata accessor for PlaylistPropertyProvider, &protocol conformance descriptor for PlaylistPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t PropertyProvider<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    v24 = OUTLINED_FUNCTION_48_2();
    v25(v24);
    v26 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, a2);
    (*(v10 + 8))(v13, v8);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_2174C0710()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE5E50, type metadata accessor for MusicVideoPropertyProvider, &protocol conformance descriptor for MusicVideoPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t AnyPropertyProvider.staticPropertyProvider.getter()
{
  OUTLINED_FUNCTION_40_17();
  v0 = OUTLINED_FUNCTION_33_20();
  return v1(v0);
}

uint64_t AnyPropertyProvider.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 96))(v11, v6, v7);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 8))(a1, *(v5 + 208), a2, v8);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_2174C0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_171();
  v97 = v23;
  v93 = v24;
  v94 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v84 = v32;
  v34 = v33;
  v36 = v35;
  v87 = *v33;
  v88 = v37;
  v38 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v95 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_31();
  v83 = v41;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_99();
  v86 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_99();
  v85 = v45;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v46);
  v48 = &v82 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v82 - v50;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v29);
  v55 = *(v27 + 16);
  v96 = v22;
  v99 = v31;
  v55(v31, v27);
  v98 = v34;
  OUTLINED_FUNCTION_49_17();
  v56 = OUTLINED_FUNCTION_48_15();
  v57 = v97;
  LOBYTE(v34) = sub_2173DDC78(v56, v58, v59);
  v91 = v57;
  v60 = v29;
  v61 = v95;

  if (v34)
  {
    (*(v27 + 8))(v98, *(v87 + 208), v60, v99, v27, v62.n128_f64[0]);
    (*(v61 + 8))(v36, v38);
    (*(v61 + 32))(v36, v51, v38);
  }

  v89 = v27;
  v90 = v36;
  v63 = v61;
  v64 = *(v61 + 16);
  v64(v48, v36, v38, v62);
  v65 = v60;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v60);
  v67 = *(v63 + 8);
  v97 = v38;
  v92 = v67;
  v67(v48, v38);
  if (EnumTagSinglePayload == 1)
  {
    v68 = v85;
    v69 = v91;
    sub_2174C2C24(v98, v93, v99, v65, v88, v89, v94, a22, v85);
    v70 = v65;
    v71 = v69;
    if (v69)
    {
      v92(v90, v97);
      goto LABEL_11;
    }

    v72 = a22;
    v73 = v90;
    v74 = v97;
    v92(v90, v97);
    (*(v95 + 32))(v73, v68, v74);
  }

  else
  {
    v72 = a22;
    v70 = v65;
    v73 = v90;
    v71 = v91;
  }

  v75 = v86;
  (v64)(v86, v73, v97);
  v76 = v70;
  v77 = __swift_getEnumTagSinglePayload(v75, 1, v70);
  v78 = OUTLINED_FUNCTION_44_16();
  v79 = v92;
  (v92)(v78);
  if (v77 == 1)
  {
    v80 = v83;
    sub_2174C44CC(v98, v84, v93, v99, v76, *(v87 + 208), v88, v89, v83, v94, a21, v72);
    if (v71)
    {
      v79(v73, v97);
    }

    else
    {
      v81 = v97;
      v79(v73, v97);
      (*(v95 + 32))(v73, v80, v81);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C1380()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3570, type metadata accessor for RadioShowPropertyProvider, &protocol conformance descriptor for RadioShowPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

void sub_2174C13F4()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v81 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v80 = v10;
  sub_217753268();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_81();
  v82 = type metadata accessor for CloudArtist.Attributes(0);
  OUTLINED_FUNCTION_41_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81();
  v93 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_150();
  v83 = v16;
  sub_2172A497C(v92);
  OUTLINED_FUNCTION_54_13();
  swift_bridgeObjectRetain_n();
  v17 = OUTLINED_FUNCTION_67_13();
  sub_2176B5914(v17, v18, v19, v20, v9, v7, v21);
  v23 = v22;
  v24 = v0;
  OUTLINED_FUNCTION_66_11();
  v79 = v5;
  if (v44)
  {
    v25 = v23[4];
    v26 = v23[5];
    v27 = v23[6];
    v28 = v23[7];
    sub_217751DE8();

    v31 = MEMORY[0x21CEA2320](v25, v26, v27, v28, v29);
    v32 = v30;
  }

  else
  {

    v31 = v9;
    v32 = v7;
  }

  v33 = v2[3];
  v34 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v33);
  (*(v34 + 96))(v86, v33, v34);
  v35 = *&v86[24];
  __swift_project_boxed_opaque_existential_1(v86, *&v86[24]);
  OUTLINED_FUNCTION_26_1();
  v37 = (*(v36 + 64))(v35);
  __swift_destroy_boxed_opaque_existential_1(v86);
  if (!*(v37 + 16))
  {

    goto LABEL_9;
  }

  sub_21763246C(v31, v32);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_9:
    v81(v40);
    v42 = type metadata accessor for CloudArtist(0);
    sub_2174C7220(v83 + *(v42 + 20), v93);
    *&v86[24] = v82;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
    sub_2174C7220(v93, boxed_opaque_existential_0);
    sub_217753248();
    sub_217753258();
    sub_217752C58();
    while (1)
    {
      sub_217752D78();
      if (!*&v86[40])
      {
        break;
      }

      *v85 = *v86;
      *&v85[16] = *&v86[16];
      *&v85[32] = *&v86[32];
      if (*&v86[8])
      {
        v44 = *v85 == v31 && *&v85[8] == v32;
        if (v44 || (sub_217753058() & 1) != 0)
        {

          v87 = *v85;
          v88 = *&v85[16];
          v89 = *&v85[32];

          if (*(&v89 + 1))
          {
            v45 = sub_217751378();
            OUTLINED_FUNCTION_235_0(v45);
            sub_217751368();
            sub_2172CA838(v79, v86);
            JSONEncoder.dataRequestConfiguration.setter(v86);
            sub_2174C72E0(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes, &protocol conformance descriptor for CloudArtist.Attributes);
            sub_217751358();
            v24 = v0;
            if (v0)
            {

              v46 = OUTLINED_FUNCTION_31_20();
              v47(v46);
              sub_2174C7284(v93);
              sub_2171F0790(v83, &qword_27CB24728, &qword_217758CB0);
              sub_2171F0790(&v87, &qword_27CB286A8, &unk_21776DFA0);
              goto LABEL_28;
            }

            v64 = sub_217751348();
            OUTLINED_FUNCTION_235_0(v64);
            sub_217751338();
            sub_2172CA838(v79, v86);
            JSONDecoder.dataRequestConfiguration.setter(v86);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            OUTLINED_FUNCTION_7_0();
            sub_2173A4628(v65, v66, v67, MEMORY[0x277D83528]);
            sub_217751308();
            v68 = *v86;
            OUTLINED_FUNCTION_30_23();
            v69 = OUTLINED_FUNCTION_53_15();
            sub_2173A21D4(v69, v70, v71, v72, v73, v68, v74);

            v75 = OUTLINED_FUNCTION_44_16();
            sub_217275694(v75, v76);

            v77 = OUTLINED_FUNCTION_31_20();
            v78(v77);
            sub_2174C7284(v93);
            sub_2171F0790(v83, &qword_27CB24728, &qword_217758CB0);
            sub_2171F0790(&v87, &qword_27CB286A8, &unk_21776DFA0);
            memcpy(v84, v86, 0x221uLL);
            memcpy(v85, v86, sizeof(v85));
            if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v85) == 1)
            {
              v41 = v86;
              goto LABEL_7;
            }

            v63 = v84;
LABEL_26:
            memcpy(v90, v63, sizeof(v90));
            memcpy(v80, v90, 0x221uLL);
            goto LABEL_29;
          }

LABEL_22:
          v48 = OUTLINED_FUNCTION_31_20();
          v49(v48);
          sub_2174C7284(v93);
          sub_2171F0790(v83, &qword_27CB24728, &qword_217758CB0);
          sub_2171F0790(&v87, &qword_27CB286A8, &unk_21776DFA0);
          memcpy(v91, v92, 0x221uLL);
          v24 = v0;
          goto LABEL_23;
        }
      }

      sub_2171F0790(v85, &qword_27CB286B0, &unk_21776E190);
    }

    v87 = 0u;
    v88 = 0u;
    v89 = 0u;

    goto LABEL_22;
  }

  v41 = v92;
LABEL_7:
  memcpy(v91, v41, 0x221uLL);
LABEL_23:
  v50 = OUTLINED_FUNCTION_201_2();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  OUTLINED_FUNCTION_71_13();
  v52 = OUTLINED_FUNCTION_17_24();
  v53(v52);
  v54 = *&v85[24];
  __swift_project_boxed_opaque_existential_1(v85, *&v85[24]);
  OUTLINED_FUNCTION_26_1();
  v56 = (*(v55 + 64))(v54);
  __swift_destroy_boxed_opaque_existential_1(v85);
  OUTLINED_FUNCTION_30_23();
  v57 = OUTLINED_FUNCTION_53_15();
  sub_2173A21D4(v57, v58, v59, v60, v61, v56, v62);
  if (!v24)
  {
    sub_2171F0790(v91, &qword_27CB24400, &unk_21775E9A0);

    v63 = v86;
    goto LABEL_26;
  }

  sub_2171F0790(v91, &qword_27CB24400, &unk_21775E9A0);

LABEL_28:

LABEL_29:
  OUTLINED_FUNCTION_170();
}

void sub_2174C1BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  v158 = v26;
  v159 = v28;
  v30 = v29;
  v140 = v31;
  v146 = v32;
  v147 = v33;
  v135 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v157 = a24;
  v143 = sub_217753268();
  OUTLINED_FUNCTION_0_0();
  v142 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_81();
  v155 = v43;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v156 = v44;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_150();
  v166 = v46;
  v145 = type metadata accessor for CloudResource(0, a22, a25, v47);
  OUTLINED_FUNCTION_0_0();
  v144 = v48;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_44_11(v50);
  v153 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v152 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v55);
  v151 = &v132 - v56;
  OUTLINED_FUNCTION_5_5();
  v149 = a21;
  __swift_storeEnumTagSinglePayload(v57, v58, v59, a21);
  OUTLINED_FUNCTION_55_13();
  swift_bridgeObjectRetain_n();
  v60 = OUTLINED_FUNCTION_67_13();
  sub_2176B5914(v60, v61, v62, v63, v38, v36, v64);
  v66 = v65;
  v154 = v27;
  OUTLINED_FUNCTION_66_11();
  v150 = v36;
  v141 = v40;
  v139 = v30;
  v138 = v38;
  if (v83)
  {
    v67 = v66[4];
    v68 = v66[5];
    v69 = v66[6];
    v70 = v66[7];
    sub_217751DE8();

    v38 = MEMORY[0x21CEA2320](v67, v68, v69, v70, v71);
    v73 = v72;
  }

  else
  {

    v73 = v36;
  }

  v74 = *(v157 + 64);
  v75 = OUTLINED_FUNCTION_76_9();
  v76 = *(v74(v75) + 16);
  v136 = v74;
  if (v76)
  {
    sub_21763246C(v38, v73);
    v78 = v77;

    if (v78)
    {
LABEL_22:
      v101 = v152;
      v102 = v148;
      v103 = v151;
      v104 = v153;
      (*(v152 + 16))(v148, v151, v153, v79);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v149);
      v106 = *(v101 + 8);
      v106(v102, v104);
      if (EnumTagSinglePayload == 1)
      {
        v107 = OUTLINED_FUNCTION_76_9();
        v136(v107, v157);
        v108 = v137;
        OUTLINED_FUNCTION_64_16();
        v109 = v154;
        v140();
        v106(v103, v104);
        if (v109)
        {
        }

        else
        {

          v111 = *(v101 + 32);
          v111(v103, v108, v104, v110);
          (v111)(v141, v103, v104);
        }
      }

      else
      {
        (*(v101 + 32))(v141, v103, v104);
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  v133 = a26;
  v132 = a23;
  v147(v79);
  (*(a25 + 144))(a22, a25);
  v80 = AssociatedTypeWitness;
  *(&v164 + 1) = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v163);
  (*(v156 + 16))(boxed_opaque_existential_0, v166, v80);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!v162[5])
    {

      v163 = 0u;
      v164 = 0u;
      v165 = 0u;

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_56_13();
    if (v82)
    {
      v83 = v161[0] == v38 && v82 == v73;
      if (v83 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(v161, &qword_27CB286B0, &unk_21776E190);
  }

  OUTLINED_FUNCTION_68_13();

  if (!*(&v165 + 1))
  {
LABEL_21:
    v96 = OUTLINED_FUNCTION_5_46();
    v97(v96);
    OUTLINED_FUNCTION_12_1();
    v98(v166, AssociatedTypeWitness);
    v99 = OUTLINED_FUNCTION_12_26();
    v100(v99);
    sub_2171F0790(&v163, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_22;
  }

  v84 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v84);
  v85 = sub_217751368();
  v86 = v132;
  v87 = v133;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v132, v133, v162);
  JSONEncoder.dataRequestConfiguration.setter(v162);
  v88 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v89 = v154;
  v90 = sub_217751358();
  if (v89)
  {

    v92 = OUTLINED_FUNCTION_5_46();
    v93(v92);
    OUTLINED_FUNCTION_12_1();
    v95 = v166;
    goto LABEL_29;
  }

  v147 = v85;
  v112 = v90;
  v113 = v91;
  v114 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v114);
  v154 = 0;
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v86, v87, v162);
  JSONDecoder.dataRequestConfiguration.setter(v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v115, v116, v117, MEMORY[0x277D83528]);
  v118 = v154;
  sub_217751308();
  if (!v118)
  {
    OUTLINED_FUNCTION_64_16();
    v140();
    v154 = 0;

    sub_217275694(v112, v113);

    v124 = OUTLINED_FUNCTION_5_46();
    v125(v124);
    OUTLINED_FUNCTION_12_1();
    v126(v166, AssociatedTypeWitness);
    v127 = OUTLINED_FUNCTION_12_26();
    v128(v127);
    v129 = v152;
    v130 = v151;
    v131 = v153;
    (*(v152 + 8))(v151, v153);
    sub_2171F0790(&v163, &qword_27CB286A8, &unk_21776DFA0);
    (*(v129 + 32))(v130, v134, v131);
    goto LABEL_22;
  }

  sub_217275694(v112, v113);

  v119 = OUTLINED_FUNCTION_5_46();
  v120(v119);
  OUTLINED_FUNCTION_12_1();
  v95 = v166;
LABEL_29:
  v94(v95, v88);
  v121 = OUTLINED_FUNCTION_12_26();
  v122(v121);
  OUTLINED_FUNCTION_12_1();
  v123(v151, v153);
  sub_2171F0790(&v163, &qword_27CB286A8, &unk_21776DFA0);
LABEL_30:

  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_170();
}

void sub_2174C2668()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2172A497C(__src);
  if (!*(v4 + 16) || (v9 = sub_21763246C(*(v6 + 16), *(v6 + 24)), (v10 & 1) == 0) || (v11 = *(v4 + 56) + 24 * v9, *(v11 + 16) != 5))
  {
    v17 = __src;
LABEL_7:
    memcpy(__dst, v17, sizeof(__dst));
    memcpy(v8, __dst, 0x221uLL);
    goto LABEL_8;
  }

  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v14);
  sub_217751DE8();
  sub_217751368();
  sub_2172CA838(v2, v28);
  JSONEncoder.dataRequestConfiguration.setter(v28);
  v28[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2173A4628(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v15 = sub_217751358();
  if (!v0)
  {
    v18 = v15;
    v19 = v16;
    sub_21726A608(v13, v12, 5);
    v20 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v20);
    sub_217751338();
    sub_2172CA838(v2, v28);
    JSONDecoder.dataRequestConfiguration.setter(v28);
    type metadata accessor for SharedRelatedItemStore();
    v21 = swift_allocObject();
    v24 = SharedRelatedItemStore.init()(v21, v22, v23);
    JSONDecoder.sharedRelatedItemStore.setter(v24);
    sub_2174C7444(v25, v26, v27);
    sub_217751308();

    sub_217275694(v18, v19);

    nullsub_1();
    v17 = v28;
    goto LABEL_7;
  }

  sub_21726A608(v13, v12, 5);
LABEL_8:
  OUTLINED_FUNCTION_170();
}

void sub_2174C28A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v41 = a6;
  v15 = sub_2177528F8();
  v43 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  __swift_storeEnumTagSinglePayload(a7, 1, 1, a4);
  if (*(a2 + 16))
  {
    v18 = sub_21763246C(*(a1 + 16), *(a1 + 24));
    if (v19)
    {
      v20 = *(a2 + 56) + 24 * v18;
      if (*(v20 + 16) == 5)
      {
        v40 = a3;
        v22 = *v20;
        v21 = *(v20 + 8);
        v38 = a7;
        v39 = v21;
        sub_217751378();
        swift_allocObject();
        sub_217751DE8();
        v23 = sub_217751368();
        v36 = a5;
        v37 = a8;
        MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a5, a8, v42);
        JSONEncoder.dataRequestConfiguration.setter(v42);
        v42[0] = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_2173A4628(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        v34 = sub_217751358();
        v35 = v24;
        if (v8)
        {
          (*(v43 + 8))(v38, v15);

          sub_21726A608(v22, v39, 5);
        }

        else
        {
          v33 = v23;
          sub_21726A608(v22, v39, 5);
          sub_217751348();
          swift_allocObject();
          sub_217751338();
          MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v36, v37, v42);
          JSONDecoder.dataRequestConfiguration.setter(v42);
          type metadata accessor for SharedRelatedItemStore();
          v25 = swift_allocObject();
          v28 = SharedRelatedItemStore.init()(v25, v26, v27);
          JSONDecoder.sharedRelatedItemStore.setter(v28);
          v30 = v34;
          v29 = v35;
          sub_217751308();
          v31 = v38;
          v32 = v43;
          (*(v43 + 8))(v38, v15);

          sub_217275694(v30, v29);

          __swift_storeEnumTagSinglePayload(v17, 0, 1, a4);
          (*(v32 + 32))(v31, v17, v15);
        }
      }
    }
  }
}

void sub_2174C2C24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a1 + 64);
  if (v14 == 1)
  {
    v15 = (*(a6 + 72))(a3, a6, a3, a4, a5, a6);
LABEL_10:
    sub_2174C28A4(a1, v15, a2, a4, a5, a7, a9, a8);

    return;
  }

  if (v14 == 2 && !*(a1 + 56) && *(a1 + 48) == 1)
  {
    v15 = (*(a6 + 80))(a3, a6, a3, a4, a5, a6);
    goto LABEL_10;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
  type metadata accessor for AnyMusicProperty();
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
  sub_217752D08();
  __break(1u);
}

void sub_2174C2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_171();
  v80 = v30;
  v71 = v31;
  v72 = v32;
  v69 = v33;
  v70 = v34;
  v36 = v35;
  v68 = v37;
  v66 = v35;
  v67 = a30;
  v78 = a29;
  v79 = v38;
  v65 = a27;
  v77 = a26;
  v75 = a28;
  v76 = a25;
  v73 = a22;
  OUTLINED_FUNCTION_0();
  v40 = v39;
  v42 = *(v41 + 64);
  v74 = a24;
  v64 = a23;
  MEMORY[0x28223BE20](v43);
  v63 = &v63 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  v47 = *(v46 + 64);
  v49 = MEMORY[0x28223BE20](v48);
  v50 = &v63 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v50, v49);
  v51 = v73;
  (*(v40 + 16))(&v63 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v73);
  v52 = (*(v45 + 80) + 112) & ~*(v45 + 80);
  v53 = (v47 + *(v40 + 80) + v52) & ~*(v40 + 80);
  v54 = swift_allocObject();
  v55 = v79;
  *(v54 + 2) = v80;
  *(v54 + 3) = v55;
  *(v54 + 4) = a21;
  *(v54 + 5) = v51;
  v56 = v74;
  *(v54 + 6) = a23;
  *(v54 + 7) = v56;
  v57 = v77;
  *(v54 + 8) = v76;
  *(v54 + 9) = v57;
  v58 = v75;
  *(v54 + 10) = v65;
  *(v54 + 11) = v58;
  v59 = v67;
  *(v54 + 12) = v78;
  *(v54 + 13) = v59;
  (*(v45 + 32))(&v54[v52], v50, a21);
  v60 = v73;
  (*(v40 + 32))(&v54[v53], v63, v73);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2174C3A50(v69, v66, sub_2174C7360, v54, v70, v71, v72, v80, v68, v79, AssociatedTypeWitness, v60, v64, v74, v76, v77, AssociatedConformanceWitness, v75, v78, v59);

  OUTLINED_FUNCTION_170();
}

void sub_2174C30F0()
{
  OUTLINED_FUNCTION_171();
  v37 = v1;
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v40 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v39 = v10;
  sub_2172A497C(v45);
  v11 = (v3 + 32);
  v12 = *(v3 + 16);
  while (1)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = 0xEF736D75626C612DLL;
    v14 = 0x6465727574616566;
    switch(*v11)
    {
      case 1:
        v14 = 0xD000000000000012;
        v13 = 0x80000002177AA5A0;
        break;
      case 2:
        break;
      case 3:
        v14 = 0xD000000000000012;
        v13 = 0x80000002177AA5D0;
        break;
      case 4:
        v15 = 1819047270;
        goto LABEL_12;
      case 5:
        v14 = 0x722D74736574616CLL;
        v13 = 0xEE00657361656C65;
        break;
      case 6:
        v15 = 1702259052;
LABEL_12:
        v14 = v15 | 0x626C612D00000000;
        v13 = 0xEB00000000736D75;
        break;
      case 7:
        v14 = 0x2D72616C696D6973;
        v13 = 0xEF73747369747261;
        break;
      case 8:
        v13 = 0xE700000000000000;
        v14 = 0x73656C676E6973;
        break;
      case 9:
        v14 = 0xD000000000000010;
        v13 = 0x80000002177AA630;
        break;
      case 0xA:
        v13 = 0xE900000000000073;
        v14 = 0x676E6F732D706F74;
        break;
      default:
        v14 = 0xD000000000000011;
        v13 = 0x80000002177AA580;
        break;
    }

    if (v14 == *(v6 + 16) && v13 == *(v6 + 24))
    {
      break;
    }

    v17 = sub_217753058();

    ++v11;
    --v12;
    if (v17)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v38(v18);
  swift_getAtKeyPath();
  if (v42[2] == 1)
  {
    sub_2171F0790(v39, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(v42, &qword_27CB24AB0, &qword_217759088);
LABEL_25:

    memcpy(v44, v45, sizeof(v44));
LABEL_26:
    memcpy(v40, v44, 0x221uLL);
    goto LABEL_30;
  }

  memcpy(v43, v42, sizeof(v43));
  v19 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v19);
  sub_217751368();
  sub_2172CA838(v37, v42);
  v20 = JSONEncoder.dataRequestConfiguration.setter(v42);
  sub_21733C27C(v20, v21, v22);
  v23 = sub_217751358();
  if (!v0)
  {
    v41 = v23;
    v46 = v24;
    v25 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v25);
    sub_217751338();
    sub_2172CA838(v37, v42);
    JSONDecoder.dataRequestConfiguration.setter(v42);
    type metadata accessor for SharedRelatedItemStore();
    v26 = swift_allocObject();
    v29 = SharedRelatedItemStore.init()(v26, v27, v28);
    JSONDecoder.sharedRelatedItemStore.setter(v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_7_0();
    v34 = sub_2173A4628(v31, v32, v33, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_79_12(v30, v41, v35, v36, v34);
    sub_2174C2668();

    sub_217275694(v41, v46);

    sub_21728463C(v43);
    sub_2171F0790(v39, &qword_27CB24728, &qword_217758CB0);

    memcpy(v44, v42, sizeof(v44));
    goto LABEL_26;
  }

  sub_21728463C(v43);
  sub_2171F0790(v39, &qword_27CB24728, &qword_217758CB0);

LABEL_30:
  OUTLINED_FUNCTION_170();
}

void sub_2174C35FC()
{
  OUTLINED_FUNCTION_171();
  v40 = v1;
  v37 = v2;
  v4 = v3;
  v38 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_150();
  v11 = v10;
  sub_2172A497C(v44);
  v12 = *(v4 + 16);
  v13 = (v4 + 32);
  while (1)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v14 = 0xE600000000000000;
    v15 = 0x736D75626C61;
    switch(*v13)
    {
      case 1:
        v14 = 0xE700000000000000;
        v15 = 0x676F6C61746163;
        break;
      case 2:
        v15 = 0xD000000000000018;
        v14 = 0x80000002177AA650;
        break;
      case 3:
        v15 = 0x7365726E6567;
        break;
      case 4:
        v15 = 0x69762D636973756DLL;
        v14 = 0xEC000000736F6564;
        break;
      case 5:
        v14 = 0xE900000000000073;
        v15 = 0x7473696C79616C70;
        break;
      case 6:
        v14 = 0xE700000000000000;
        v15 = 0x6E6F6974617473;
        break;
      default:
        break;
    }

    if (v15 == *(v7 + 16) && v14 == *(v7 + 24))
    {
      break;
    }

    v17 = sub_217753058();

    ++v13;
    --v12;
    if (v17)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  v38(v18);
  swift_getAtKeyPath();
  if (v41[2] == 1)
  {
    sub_2171F0790(v11, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(v41, &qword_27CB24328, &unk_21775D440);
LABEL_20:

    memcpy(v43, v44, sizeof(v43));
LABEL_21:
    memcpy(v40, v43, 0x221uLL);
    goto LABEL_25;
  }

  memcpy(v42, v41, sizeof(v42));
  v19 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v19);
  sub_217751368();
  sub_2172CA838(v37, v41);
  v20 = JSONEncoder.dataRequestConfiguration.setter(v41);
  sub_21733C2D0(v20, v21, v22);
  v23 = sub_217751358();
  if (!v0)
  {
    v39 = v23;
    v45 = v24;
    v25 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v25);
    sub_217751338();
    sub_2172CA838(v37, v41);
    JSONDecoder.dataRequestConfiguration.setter(v41);
    type metadata accessor for SharedRelatedItemStore();
    v26 = swift_allocObject();
    v29 = SharedRelatedItemStore.init()(v26, v27, v28);
    JSONDecoder.sharedRelatedItemStore.setter(v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_7_0();
    v34 = sub_2173A4628(v31, v32, v33, MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_79_12(v30, v39, v35, v36, v34);
    sub_2174C2668();

    sub_217275694(v39, v45);

    sub_21726A204(v42);
    sub_2171F0790(v11, &qword_27CB24728, &qword_217758CB0);

    memcpy(v43, v41, sizeof(v43));
    goto LABEL_21;
  }

  sub_21726A204(v42);
  sub_2171F0790(v11, &qword_27CB24728, &qword_217758CB0);

LABEL_25:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C3A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{
  v81 = a8;
  v71 = a7;
  v72 = a6;
  v76 = a5;
  v69 = a4;
  v70 = a3;
  v63 = a2;
  v79 = a1;
  v84 = a9;
  v83 = a20;
  v80 = a15;
  v82 = a18;
  v75 = a19;
  v99 = a12;
  v78 = a16;
  v65 = sub_2177528F8();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v58[-v20];
  v62 = sub_2177528F8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v68 = &v58[-v21];
  v67 = *(a14 - 8);
  MEMORY[0x28223BE20](v22);
  v66 = &v58[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for CloudResource(0, a11, a17, v24);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v26 = &v58[-v25];
  v27 = sub_2177528F8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v58[-v29];
  __swift_storeEnumTagSinglePayload(v84, 1, 1, a10);
  v98 = v76;
  v85 = v81;
  v86 = a10;
  v76 = a10;
  v87 = a11;
  v88 = v99;
  v89 = a13;
  v90 = a14;
  v91 = v80;
  v92 = v78;
  v31 = v82;
  v93 = a17;
  v94 = v82;
  v95 = v75;
  v96 = v83;
  v97 = v79;
  sub_217752418();
  swift_getWitnessTable();
  v32 = v30;
  v33 = v77;
  sub_217752198();
  if (__swift_getEnumTagSinglePayload(v30, 1, a13) == 1)
  {
    return (*(v28 + 8))(v30, v27);
  }

  v60 = v27;
  v70();
  v35 = v68;
  v72(v26);
  if (__swift_getEnumTagSinglePayload(v35, 1, a14) == 1)
  {
    (*(v73 + 8))(v26, v74);
    (*(v28 + 8))(v30, v60);
    return (*(v61 + 8))(v35, v62);
  }

  else
  {
    v77 = v26;
    v36 = v67;
    v37 = *(v67 + 32);
    v75 = v33;
    v38 = v66;
    v37(v66, v35, a14);
    sub_217751378();
    swift_allocObject();
    v39 = sub_217751368();
    v40 = v63;
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v99, v31, &v98);
    JSONEncoder.dataRequestConfiguration.setter(&v98);
    v41 = v75;
    v42 = sub_217751358();
    v44 = v60;
    if (v41)
    {

      (*(v36 + 8))(v38, a14);
      (*(v73 + 8))(v77, v74);
      (*(v64 + 8))(v84, v65);
      return (*(v28 + 8))(v32, v44);
    }

    else
    {
      v72 = v39;
      v75 = a14;
      v83 = v32;
      v45 = v42;
      v46 = v43;
      sub_217751348();
      swift_allocObject();
      sub_217751338();
      v47 = v82;
      MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v99, v82, &v98);
      JSONDecoder.dataRequestConfiguration.setter(&v98);
      type metadata accessor for SharedRelatedItemStore();
      v48 = swift_allocObject();
      v51 = SharedRelatedItemStore.init()(v48, v49, v50);
      JSONDecoder.sharedRelatedItemStore.setter(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_2173A4628(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_217751308();
      v52 = v40;
      v53 = v59;
      sub_2174C28A4(v79, v98, v52, v76, v99, v78, v59, v47);
      v54 = v66;

      sub_217275694(v45, v46);

      (*(v67 + 8))(v54, v75);
      (*(v73 + 8))(v77, v74);
      v55 = v64;
      v56 = v84;
      v57 = v65;
      (*(v64 + 8))(v84, v65);
      (*(v28 + 8))(v83, v60);
      return (*(v55 + 32))(v56, v53, v57);
    }
  }
}

uint64_t sub_2174C4454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (sub_217753318() == *(a2 + 16) && v14 == *(a2 + 24))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_217753058();
  }

  return v16 & 1;
}

uint64_t sub_2174C44CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v82 = a7;
  v83 = a4;
  v75 = a2;
  v18 = sub_2177528F8();
  v78 = *(v18 - 8);
  v79 = v18;
  MEMORY[0x28223BE20](v18);
  v68 = (&v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v67 = (&v64 - v21);
  v80 = a9;
  __swift_storeEnumTagSinglePayload(a9, 1, 1, a5);
  v22 = *(a1 + 64);
  v76 = a3;
  v81 = a10;
  v72 = a1;
  v70 = a5;
  if (v22 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v71 = (*(AssociatedConformanceWitness + 160))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v74 = &v64;
    v25 = MEMORY[0x28223BE20](v71);
    v26 = a8;
    v64 = a11;
    KeyPath = swift_getKeyPath(byte_21776DFE8, v25);
    v73 = &v64;
    MEMORY[0x28223BE20](KeyPath);
    v68 = &v64 - 12;
    v74 = v28;
    v29 = swift_getAssociatedTypeWitness();
    v30 = swift_getAssociatedTypeWitness();
    v62 = swift_getAssociatedConformanceWitness();
    v63 = swift_getAssociatedConformanceWitness();
    v61 = a12;
    v60 = v64;
    v58 = v26;
    v59 = v81;
    v56 = v29;
    v57 = v30;
    v54 = a6;
    v55 = v82;
    v31 = sub_2174C775C;
    v33 = v67;
    v32 = v68;
    v34 = v72;
    v35 = v75;
    v36 = v76;
    v37 = v71;
  }

  else
  {
    v67 = a12;
    v69 = a8;
    if (v22 != 2 || *(a1 + 56) || *(a1 + 48) != 1)
    {
      v84 = 0;
      v85 = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
      v86 = a1;
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
      result = sub_217752D08();
      __break(1u);
      return result;
    }

    v38 = swift_getAssociatedTypeWitness();
    v39 = swift_getAssociatedConformanceWitness();
    v71 = (*(v39 + 176))(v38, v39);
    v74 = &v64;
    v40 = MEMORY[0x28223BE20](v71);
    v65 = a6;
    v41 = v81;
    v42 = v67;
    v43 = swift_getKeyPath(byte_21776DFB8, v40);
    v73 = &v64;
    MEMORY[0x28223BE20](v43);
    v66 = &v64 - 12;
    v74 = v44;
    v45 = swift_getAssociatedTypeWitness();
    v46 = swift_getAssociatedTypeWitness();
    v47 = swift_getAssociatedConformanceWitness();
    v48 = v71;
    v62 = v47;
    v63 = swift_getAssociatedConformanceWitness();
    v60 = a11;
    v61 = v42;
    v59 = v41;
    v57 = v46;
    v58 = v69;
    v56 = v45;
    v55 = v82;
    v54 = v65;
    v31 = sub_2174C7498;
    v33 = v68;
    v34 = v72;
    v35 = v75;
    v36 = v76;
    v37 = v48;
    v32 = v66;
  }

  v49 = v77;
  sub_2174C2DEC(v34, v35, v36, v37, v31, v32, v83, v70, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  if (v49)
  {
    (*(v78 + 8))(v80, v79);
  }

  else
  {
    v52 = v78;
    v51 = v79;
    v53 = v80;
    (*(v78 + 8))(v80, v79);

    return (*(v52 + 32))(v53, v33, v51);
  }
}

void sub_2174C4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_171();
  v71 = v28;
  v75 = v29;
  v69 = v30;
  v70 = v31;
  v33 = v32;
  v64 = v35;
  v65 = v34;
  v66 = a27;
  v67 = v36;
  v68 = a28;
  v62 = v32;
  v63 = a24;
  v73 = a23;
  v74 = v37;
  OUTLINED_FUNCTION_0();
  v39 = v38;
  v41 = *(v40 + 64);
  v72 = a25;
  v61 = a26;
  MEMORY[0x28223BE20](v42);
  v60 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v44 = v43;
  v46 = *(v45 + 64);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = &v59 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v49, v50, a21, v48);
  (*(v39 + 16))(&v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v33, a22);
  v51 = (*(v44 + 80) + 72) & ~*(v44 + 80);
  v52 = (v46 + *(v39 + 80) + v51) & ~*(v39 + 80);
  v53 = swift_allocObject();
  v54 = v73;
  v55 = v74;
  *(v53 + 2) = v75;
  *(v53 + 3) = v55;
  *(v53 + 4) = a21;
  *(v53 + 5) = a22;
  v56 = v63;
  *(v53 + 6) = v54;
  *(v53 + 7) = v56;
  *(v53 + 8) = v72;
  (*(v44 + 32))(&v53[v51], v49, a21);
  (*(v39 + 32))(&v53[v52], v60, a22);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68(v65, v67, v62, v66, v53, v69, v70, v75, v74, AssociatedTypeWitness, a22, v73, AssociatedConformanceWitness, v72);

  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_170();
}

void sub_2174C4E54()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v83 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v80 = v12;
  sub_217753268();
  OUTLINED_FUNCTION_0_0();
  v81 = v14;
  v82 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v84 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  sub_2172A497C(v98);
  OUTLINED_FUNCTION_54_13();
  v88 = v20;
  swift_bridgeObjectRetain_n();
  v21 = OUTLINED_FUNCTION_67_13();
  sub_2176B5914(v21, v22, v23, v24, v11, v9, v25);
  v27 = v26;
  OUTLINED_FUNCTION_66_11();
  v86 = v9;
  v87 = v11;
  v79 = v7;
  if (v47)
  {
    v28 = v27[4];
    v29 = v27[5];
    v85 = v19;
    v31 = v27[6];
    v30 = v27[7];
    sub_217751DE8();

    v11 = MEMORY[0x21CEA2320](v28, v29, v31, v30, v32);
    v34 = v33;
    v19 = v85;
  }

  else
  {

    v34 = v9;
  }

  v35 = v2[3];
  v36 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v35);
  (*(v36 + 96))(v94, v35, v36);
  v37 = *&v94[24];
  __swift_project_boxed_opaque_existential_1(v94, *&v94[24]);
  OUTLINED_FUNCTION_26_1();
  v39 = (*(v38 + 88))(v37);
  __swift_destroy_boxed_opaque_existential_1(v94);
  if (*(v39 + 16))
  {
    sub_21763246C(v11, v34);
    v41 = v40;

    if (v41)
    {
LABEL_25:
      memcpy(v97, v98, 0x221uLL);
      v55 = v0;
      v56 = v86;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5(v42);
  v43 = *&v19[*(type metadata accessor for CloudArtist(0) + 32)];
  if (v43 == 1)
  {
    v44 = &qword_27CB24728;
    v45 = &qword_217758CB0;
    v46 = v19;
LABEL_24:
    sub_2171F0790(v46, v44, v45);
    goto LABEL_25;
  }

  v85 = v19;
  v95 = v43;
  *&v94[24] = &type metadata for CloudArtist.Metadata;
  *v94 = v43;
  sub_217221020(v43);
  sub_217751DE8();
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v94[40])
    {

      v91 = 0u;
      v92 = 0u;
      v93 = 0u;

      goto LABEL_23;
    }

    v90[0] = *v94;
    v90[1] = *&v94[16];
    v90[2] = *&v94[32];
    if (*&v94[8])
    {
      v47 = *&v90[0] == v11 && *(&v90[0] + 1) == v34;
      if (v47 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(v90, &qword_27CB286B0, &unk_21776E190);
  }

  v91 = v90[0];
  v92 = v90[1];
  v93 = v90[2];

  if (!*(&v93 + 1))
  {
LABEL_23:
    v53 = OUTLINED_FUNCTION_50_15();
    v54(v53);

    sub_2171F0790(v85, &qword_27CB24728, &qword_217758CB0);
    v44 = &qword_27CB286A8;
    v45 = &unk_21776DFA0;
    v46 = &v91;
    goto LABEL_24;
  }

  v48 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v48);
  sub_217751368();
  v49 = v79;
  sub_2172CA838(v79, v94);
  v50 = JSONEncoder.dataRequestConfiguration.setter(v94);
  sub_2174C74A0(v50, v51, v52);
  sub_217751358();
  if (v0)
  {

    v72 = OUTLINED_FUNCTION_50_15();
    v73(v72);

    sub_2171F0790(v85, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(&v91, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_28;
  }

  v65 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v65);
  sub_217751338();
  sub_2172CA838(v49, v94);
  JSONDecoder.dataRequestConfiguration.setter(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v66, v67, v68, MEMORY[0x277D83528]);
  sub_217751308();
  v55 = 0;
  OUTLINED_FUNCTION_27_26();
  v69 = v86;
  sub_2173A21D4(v87, v86, v70, 0xE800000000000000, 1, v71, v94);

  v74 = OUTLINED_FUNCTION_48_2();
  sub_217275694(v74, v75);

  v76 = OUTLINED_FUNCTION_50_15();
  v77(v76);

  sub_2171F0790(v85, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0790(&v91, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v89, v94, 0x221uLL);
  memcpy(v90, v94, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v90) != 1)
  {

    v64 = v89;
    goto LABEL_30;
  }

  memcpy(v97, v94, 0x221uLL);
  v56 = v69;
LABEL_26:
  v57 = v87;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_71_13();
  v58 = OUTLINED_FUNCTION_17_24();
  v59(v58);
  v60 = *(&v90[1] + 1);
  __swift_project_boxed_opaque_existential_1(v90, *(&v90[1] + 1));
  OUTLINED_FUNCTION_26_1();
  v62 = (*(v61 + 88))(v60);
  __swift_destroy_boxed_opaque_existential_1(v90);
  OUTLINED_FUNCTION_27_26();
  sub_2173A21D4(v57, v56, v63, 0xE800000000000000, 1, v62, v94);
  if (!v55)
  {
    sub_2171F0790(v97, &qword_27CB24400, &unk_21775E9A0);

    v64 = v94;
LABEL_30:
    memcpy(v96, v64, sizeof(v96));
    memcpy(v80, v96, 0x221uLL);
    goto LABEL_31;
  }

  sub_2171F0790(v97, &qword_27CB24400, &unk_21775E9A0);

LABEL_28:

LABEL_31:
  OUTLINED_FUNCTION_170();
}

void sub_2174C55D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  v164 = v26;
  v165 = v28;
  v145 = v29;
  v31 = v30;
  v149 = v32;
  v150 = v33;
  v138[1] = v34;
  v36 = v35;
  v38 = v37;
  v148 = v39;
  v163 = a24;
  v141 = sub_217753268();
  OUTLINED_FUNCTION_0_0();
  v140 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_81();
  v152 = v42;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v139 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v138[2] = v44;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v47 = v138 - v46;
  v161 = AssociatedTypeWitness;
  v151 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_150();
  v50 = OUTLINED_FUNCTION_44_11(v49);
  v155 = a22;
  v52 = type metadata accessor for CloudResource(v50, a22, a25, v51);
  OUTLINED_FUNCTION_0_0();
  v153 = v53;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_44_11(v55);
  v159 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0();
  v158 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v60);
  v171 = v138 - v61;
  OUTLINED_FUNCTION_5_5();
  v157 = a21;
  __swift_storeEnumTagSinglePayload(v62, v63, v64, a21);
  OUTLINED_FUNCTION_55_13();
  swift_bridgeObjectRetain_n();
  v65 = OUTLINED_FUNCTION_67_13();
  sub_2176B5914(v65, v66, v67, v68, v38, v36, v69);
  v71 = v70;
  v160 = v27;
  OUTLINED_FUNCTION_66_11();
  v143 = v38;
  v146 = v31;
  v144 = v36;
  if (v95)
  {
    v72 = v71[4];
    v73 = v71[5];
    v74 = v71[6];
    v75 = v71[7];
    sub_217751DE8();

    v79 = MEMORY[0x21CEA2320](v72, v73, v74, v75, v76);
    v80 = v77;
  }

  else
  {

    v79 = v38;
    v80 = v36;
  }

  v142 = *(v163 + 88);
  v81 = v142(v165, v78);
  v82 = v161;
  if (*(v81 + 16))
  {
    sub_21763246C(v79, v80);
    v84 = v83;

    if (v84)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v86 = v162;
  v150(v85);
  (*(a25 + 184))(v155, a25);
  if (__swift_getEnumTagSinglePayload(v47, 1, v82) == 1)
  {
    OUTLINED_FUNCTION_12_1();
    v87(v86, v52);
    OUTLINED_FUNCTION_12_1();
    v88(v47, v139);
LABEL_10:
    OUTLINED_FUNCTION_65_14();
    v89 = v160;
    v90 = v157;
    goto LABEL_26;
  }

  v150 = v52;
  v149 = a26;
  v139 = a23;
  v91 = v151;
  v92 = v154;
  (*(v151 + 32))(v154, v47, v82);
  *(&v169 + 1) = v82;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v168);
  (*(v91 + 16))(boxed_opaque_existential_0, v92, v82);
  sub_217753248();
  v47 = sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!v167[5])
    {

      v168 = 0u;
      v169 = 0u;
      v170 = 0u;

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_56_13();
    if (v94)
    {
      v95 = v166 == v79 && v94 == v80;
      if (v95 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(&v166, &qword_27CB286B0, &unk_21776E190);
  }

  OUTLINED_FUNCTION_68_13();

  if (!*(&v170 + 1))
  {
LABEL_24:
    v110 = OUTLINED_FUNCTION_4_60();
    v111(v110);
    v112 = OUTLINED_FUNCTION_11_38();
    v113(v112, v82);
    v114 = OUTLINED_FUNCTION_7_38();
    v115(v114);
    sub_2171F0790(&v168, &qword_27CB286A8, &unk_21776DFA0);
    OUTLINED_FUNCTION_65_14();
    goto LABEL_25;
  }

  v96 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v96);
  v97 = sub_217751368();
  v98 = OUTLINED_FUNCTION_57_16();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v98, v99, v100);
  JSONEncoder.dataRequestConfiguration.setter(v167);
  swift_getAssociatedConformanceWitness();
  v101 = v154;
  v102 = v160;
  sub_217751358();
  v103 = v162;
  if (v102)
  {

    v104 = OUTLINED_FUNCTION_4_60();
    v105(v104);
    OUTLINED_FUNCTION_12_1();
    v106(v101, v82);
    OUTLINED_FUNCTION_12_1();
    v107(v103, v150);
    OUTLINED_FUNCTION_12_1();
    v108 = OUTLINED_FUNCTION_51_15();
    v109(v108);
    sub_2171F0790(&v168, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_31;
  }

  v155 = v97;
  v121 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v121);
  sub_217751338();
  v122 = OUTLINED_FUNCTION_57_16();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v122, v123, v124);
  JSONDecoder.dataRequestConfiguration.setter(v167);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v125, v126, v127, MEMORY[0x277D83528]);
  sub_217751308();
  v128 = v138[0];
  OUTLINED_FUNCTION_46_19();
  v146();
  v160 = 0;

  v129 = OUTLINED_FUNCTION_201_2();
  sub_217275694(v129, v130);

  v131 = OUTLINED_FUNCTION_4_60();
  v132(v131);
  v133 = OUTLINED_FUNCTION_11_38();
  v134(v133, v161);
  v135 = OUTLINED_FUNCTION_7_38();
  v136(v135);
  v137 = v128;
  v47 = v158;
  v79 = v159;
  (*(v158 + 1))(v171, v159);
  sub_2171F0790(&v168, &qword_27CB286A8, &unk_21776DFA0);
  (*(v47 + 4))(v171, v137, v79);
LABEL_25:
  v90 = v157;
  v89 = v160;
LABEL_26:
  v116 = v156;
  (*(v47 + 2))(v156, v171, v79);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v90);
  v118 = *(v47 + 1);
  v118(v116, v79);
  if (EnumTagSinglePayload == 1)
  {
    (v142)(v165, v163);
    OUTLINED_FUNCTION_46_19();
    v146();
    v118(v171, v79);
    if (v89)
    {
    }

    else
    {

      v120 = *(v47 + 4);
      v120(v171, v147, v79, v119);
      (v120)(v148, v171, v79);
    }
  }

  else
  {
    (*(v47 + 4))(v148, v171, v79);
  }

LABEL_31:

  OUTLINED_FUNCTION_170();
}