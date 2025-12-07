id ResourceBundleContainer.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E1D121C(0, &qword_1ED6A87B0, 0x1E695DEF0);
  sub_18E1C85BC();
  v3 = sub_18E44EEBC();
  sub_18E1D121C(0, &unk_1ED6A87A0, 0x1E696AEC0);
  sub_18E1C85BC();
  v4 = sub_18E44EEBC();
  sub_18E1C6C90();
  v5 = sub_18E44EA8C();
  [a1 decodeBoolForKey_];

  if (!v3)
  {

    a1 = v4;
LABEL_6:

    v15 = swift_getObjectType();
    sub_18E1C8374(v15);
    return 0;
  }

  if (!v4)
  {

    goto LABEL_6;
  }

  v6 = v3;
  sub_18E44E61C();

  sub_18E44EAAC();
  v7 = objc_allocWithZone(ObjectType);
  v8 = sub_18E1C7868();
  v13 = ResourceBundleContainer.init(resourceBundleData:resourceBundleType:assetBacked:)(v8, v9, v10, v11, v12);

  v14 = swift_getObjectType();
  sub_18E1C8374(v14);
  return v13;
}

id sub_18E1D5B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, void *a8)
{
  ObjectType = swift_getObjectType();
  v18 = &v8[*a6];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v8[*a7];
  *v19 = a3;
  v19[1] = a4;
  v8[*a8] = a5;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_18E1D5BCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_18E2706EC(a2, a3);
}

void sub_18E1D5C30(uint64_t a1@<X8>)
{
  v1[2] = a1;
  v1[3] = a1;
  v1[4] = a1;
  v1[5] = 0;
  *(v1 + 45) = 0;
}

unint64_t sub_18E1D5C80(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E1D5CE4(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E1C5B20();
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CA1A4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_18E1D5D44(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_18E1D5DD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18E1D45EC(0xD000000000000013, a2, a3);
}

void *sub_18E1D5DF0(uint64_t a1, ...)
{

  return sub_18E44F48C();
}

uint64_t sub_18E1D5E2C()
{
}

uint64_t sub_18E1D5E44()
{

  return swift_allocObject();
}

void *sub_18E1D5E70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char __src)
{

  return memcpy(&__dst, &__src, 0xC1uLL);
}

void sub_18E1D5F48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 *sub_18E1D5F68(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1D5F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1D5FEC()
{
}

uint64_t sub_18E1D6004(uint64_t a1, uint64_t a2)
{
  sub_18E1C95EC(v2, a2);

  return swift_beginAccess();
}

uint64_t sub_18E1D603C(uint64_t a1)
{
  *v1 = a1;
}

uint64_t sub_18E1D6058()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D6078(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

void *sub_18E1D60A8(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);

  return memcpy(va, __src, 0xC1uLL);
}

uint64_t sub_18E1D6110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F26C();
}

__n128 *sub_18E1D6138(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1D616C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 72) = v2;
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  *(result + 104) = 3;
  *(result + 112) = a2 + 257;
  *(result + 120) = v2;
  return result;
}

size_t sub_18E1D61B8(void *a1)
{
  result = j__malloc_size_1(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t sub_18E1D61E0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_18E1D6238(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1D625C(uint64_t a1, uint64_t a2)
{
  *(v2 - 256) = a1;
  *(v2 - 248) = a2;

  return sub_18E44E38C();
}

void sub_18E1D6298(uint64_t a1@<X8>)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
}

uint64_t sub_18E1D62B8()
{
}

uint64_t sub_18E1D62E4()
{

  return sub_18E44EFFC();
}

char *sub_18E1D6328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(v10 - 104) = v11;
  return &a9 - v11;
}

void sub_18E1D6354()
{
  v3 = *(v0 + 8);

  sub_18E1D46CC(v3, v1);
}

void static Catalog.Resource.LLM.Model.CodeLMExperimental()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Model.CodeLMExperimental(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD00000000000003FLL);
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t sub_18E1D7DD0()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1D7DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{

  return sub_18E44F3CC();
}

void *sub_18E1D7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0xC1uLL);
}

uint64_t sub_18E1D7E28(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

uint64_t sub_18E1D7E4C(uint64_t a1, uint64_t a2)
{

  return sub_18E44F1AC();
}

uint64_t sub_18E1D7E70(uint64_t a1)
{

  return swift_once();
}

__n128 sub_18E1D7ED0@<Q0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  *v1 = result.n128_u32[0];
  return result;
}

void static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental()()
{
  sub_18E1C52FC();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerExperimental(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void sub_18E1D7FD0()
{
  v1 = *(v0 + 1136);
  *(v0 + 1128) = *(v0 + 1128);
  *(v0 + 1136) = v1;
}

void *sub_18E1D7FE4()
{

  return memcpy((v0 + 24), (v0 + 424), 0xC1uLL);
}

__n128 sub_18E1D8010(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

uint64_t sub_18E1D803C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_18E44EB4C();
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMLargeV1Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMLargeV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMLargeV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_18E1D81C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_18E1D45EC(v4, a2, a3);
}

void sub_18E1D81D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_18E1D8238()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  memcpy(__dst, v5, 0xC1uLL);
  v9 = sub_18E1E11B4();
  sub_18E1D45EC(v9, v10, v6);
  if (v0)
  {
    goto LABEL_7;
  }

  v11 = __dst[9];
  if (!__dst[9] || !*(__dst[9] + 16))
  {
    v16 = __dst[0];
    v15 = __dst[1];
    v17 = sub_18E24B33C();
    sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v17);
    *v18 = v16;
    v18[1] = v15;
    v18[2] = 0xD000000000000029;
    v18[3] = 0x800000018E4660B0;
    swift_willThrow();

LABEL_7:

    sub_18E1FE044(__dst);
    goto LABEL_8;
  }

  memcpy(v20, __dst, sizeof(v20));
  sub_18E1D46CC(v4, v2);
  v13 = __dst[4];
  v12 = __dst[5];
  v14 = __dst[6];
  memcpy(__src, __dst, 0xC1uLL);
  memcpy(v8, __src, 0xC8uLL);
  v8[25] = v4;
  v8[26] = v2;
  v8[27] = v13;
  v8[28] = v12;
  v8[29] = v14;
  v8[30] = v11;

LABEL_8:
  sub_18E1C6650();
}

uint64_t sub_18E1D839C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResourceBundles;
  sub_18E200EC0(a1);
  v3 = *(v1 + v2);

  v4 = sub_18E1D1A24();
  sub_18E231EE8(v4);
  return v3;
}

unint64_t sub_18E1D8410()
{
  result = qword_1EABE09B8;
  if (!qword_1EABE09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09B8);
  }

  return result;
}

double sub_18E1DAE68()
{
  v0 = sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
  v1 = sub_18E3EAFC4(v0);
  *(v1 + 16) = xmmword_18E4B0C40;
  *(v1 + 32) = 0x2E02003001012FLL;
  *&result = 33559810;
  *(v1 + 40) = 33559810;
  *(v1 + 44) = 34;
  *(v1 + 46) = 2;
  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMLargeV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMLargeV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSmallV1()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSmallV1(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer()()
{
  sub_18E1C52FC();
  static Catalog.Resource.Tokenizer.CodeLMV1ANE3BTokenizer(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2202A4();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMV1ANE3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMV1ANE3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    MEMORY[0x193ACC300](0xD000000000000045);
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E1B5C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.Tokenizer.CodeLMTokenizerV3()()
{
  sub_18E1C52FC();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV3(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSmallV2Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSmallV5Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSmallV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSmallV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t MotionBase.init(configuration:variant:)()
{
  sub_18E1E672C();
  sub_18E2016F4();
  return sub_18E2BE454(v0);
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSmallV1Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSmallV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSmallV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSmallV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSmallV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSmallV4Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLM()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLM(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.DraftModel.CodeLMV1ANE3B(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMLargeV2Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMLargeV2()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMLargeV2(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMLargeV3Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMLargeV4Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMLargeV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMLargeV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMLargeV5Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMLargeV5()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMLargeV5(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSafetyGuardrailTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMSmallV3Tokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223644();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMSmallV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMSmallV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E3EAEC0();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLM()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLM(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E1B5C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.Resource.Tokenizer.CodeLMTokenizerV2()()
{
  sub_18E1C52FC();
  static Catalog.Resource.Tokenizer.CodeLMTokenizerV2(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMV3()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMV3(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E1B5C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeLMTokenizerV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeLMTokenizerV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E23509C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeLMV4()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeLMV4(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E1B5C();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.CodeSafetyGuardrailTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E1E83E4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t static Catalog.Resource.LLM.Model.CodeSafetyGuardrail()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Model.CodeSafetyGuardrail(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E235538();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_18E1DD23C()
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1DD28C(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_18E1DD2D0()
{

  return sub_18E3064D0();
}

void sub_18E1DD2E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_18E1DD318()
{
}

uint64_t sub_18E1DD53C()
{

  return sub_18E44E6DC();
}

void *sub_18E1DD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0xD8uLL);
}

void sub_18E1DD584()
{
  v1 = *(v0 + 664);
  *(v0 + 656) = *(v0 + 656);
  *(v0 + 664) = v1;
}

uint64_t sub_18E1DD5C4(uint64_t result)
{
  *(result + 80) = 5;
  *(result + 88) = 3419698;
  *(result + 96) = 0xE300000000000000;
  return result;
}

uint64_t sub_18E1DD5E0()
{

  return swift_allocObject();
}

uint64_t static Catalog.Resource.LLM.Adapter.MagicRewrite()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.LLM.Adapter.MagicRewrite(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2389A4();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.MagicRewrite()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.AFMTextInstructEnglish49k()();
  static Catalog.Resource.LLM.Model.AFMTextInstruct3BBase()();
  static Catalog.Resource.LLM.Adapter.MagicRewrite()();
  static Catalog.Resource.LLM.DraftModel.MagicRewrite()();
  sub_18E1C7F10();
  sub_18E1E67A0(47);
}

void static Catalog.Resource.LLM.Adapter.JournalFollowUpPrompts()()
{
  sub_18E1C52FC();
  static Catalog.Resource.LLM.Adapter.JournalFollowUpPrompts(variant:)();
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E2387E8();
    v1 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v1, v2, v1, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v3, v4);
    sub_18E1E3DB8();
    sub_18E1CD52C("Fatal error", v5, v6, v7, v8, "ModelCatalog/Resources.swift");
    __break(1u);
  }
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.ResponseGenerationV8()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.ResponseGenerationV8()();
  static Catalog.Resource.LLM.DraftModel.ResponseGenerationV8()();
  sub_18E1C7F10();
  sub_18E1E67A0(63);
}

uint64_t static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer()()
{
  v1 = sub_18E1C52FC();
  result = static Catalog.Resource.Tokenizer.AFMTextInstruct85MTokenizer(variant:)(v1);
  if (v0)
  {
    sub_18E1D4A08();
    sub_18E44EFFC();
    sub_18E1CD654();
    sub_18E24094C();
    sub_18E223258();
    v3 = sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E220998(v3, v4, v3, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6);
    sub_18E1E3DB8();
    result = sub_18E1CD52C("Fatal error", v7, v8, v9, v10, "ModelCatalog/Resources.swift");
    __break(1u);
  }

  return result;
}

void static Catalog.ResourceBundle.TokenGeneration.LLM.JournalFollowUpPrompts()()
{
  sub_18E2345C8();
  static Catalog.Resource.Tokenizer.InstructServerTokenizer()();
  static Catalog.Resource.LLM.Model.InstructServerBase()();
  static Catalog.Resource.LLM.Adapter.JournalFollowUpPrompts()();
  static Catalog.Resource.LLM.DraftModel.JournalFollowUpPrompts()();
  sub_18E1C7F10();
  sub_18E1E67A0(65);
}

void sub_18E1DF210(uint64_t a1@<X8>)
{
  if (*(v1 + 96))
  {
    v4 = *(v1 + 145);
    v6 = *(v1 + 120);
    v5 = *(v1 + 128);
    v8 = v1 + 104;
    v7 = *(v1 + 104);
    v2 = *(v8 + 8);
  }

  else
  {
    v5 = 0x800000018E462F20;
    sub_18E1D4480();
    v7 = 0x6E2D726F2D6C6C61;
    v6 = 0xD000000000000016;
    v4 = 15;
  }

  sub_18E1D63B4();
  *(a1 + 16) = v7;
  *(a1 + 24) = v2;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
}

uint64_t sub_18E1DF2A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  sub_18E1E1774(&v10);
  sub_18E1C82B8();
  (*(v7 + 32))();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_18E1C551C(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_18E1DF33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_18E22429C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_18E1E8C38(v4, v8);
      sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
      sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_18E22429C(v5 > 1, v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_18E1C551C(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_18E1DF4DC()
{
  result = qword_1ED6A7B40;
  if (!qword_1ED6A7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B40);
  }

  return result;
}

unint64_t sub_18E1DF530()
{
  result = qword_1EABE0698;
  if (!qword_1EABE0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0698);
  }

  return result;
}

void sub_18E1DF5AC()
{
  sub_18E1C62A0();
  v2 = v1;
  sub_18E2706EC(&unk_1EABE2FD0, &unk_18E4B0C88);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C6BA8();
  sub_18E1C5628(v2);
  sub_18E1E9D4C();
  sub_18E1E6748();
  sub_18E1CB000();
  sub_18E44F4EC();
  sub_18E1E7B48(v11);
  sub_18E1E7B48(&v10);
  sub_18E200C0C(v11, v9);
  sub_18E2120B8();
  sub_18E242CFC();
  v4 = sub_18E1EA618();
  memcpy(v4, v5, v6);
  sub_18E1FE044(v9);
  if (!v0)
  {
    sub_18E224E3C();
    sub_18E1D047C();
    sub_18E44F31C();
  }

  v7 = sub_18E1CF9A0();
  v8(v7);
  sub_18E1E29D0();
  sub_18E1C6650();
}

__n128 sub_18E1DF704(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void ResourceBundleIdentifier.encode(to:)()
{
  sub_18E1C62A0();
  type metadata accessor for ResourceBundleIdentifier.CodingKeys(255, *(v0 + 16), *(v0 + 24), v1);
  sub_18E24528C();
  swift_getWitnessTable();
  sub_18E44F37C();
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C6BA8();
  v3 = sub_18E1E11B4();
  sub_18E1E15F4(v3, v4);
  sub_18E44F4EC();
  sub_18E1D047C();
  sub_18E44F31C();
  v5 = sub_18E1CF9A0();
  v6(v5);
  sub_18E233284();
  sub_18E1C6650();
}

void AssetBackedLLMBundle.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_18E1C62A0();
  sub_18E1E65BC();
  sub_18E2706EC(&qword_1EABE2520, &qword_18E4AAE40);
  sub_18E1C539C();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v28);
  sub_18E1E2C60();
  sub_18E1D60D8();
  v29 = sub_18E1E0B8C();
  sub_18E1E3288(&type metadata for AssetBackedLLMBundle.CodingKeys, v30, v29);
  AssetBackedLLMBundle.id.getter();
  v68[0] = v69[0];
  v68[1] = v69[1];
  v67[0] = 0;
  v31 = sub_18E1E33F0();
  sub_18E2706EC(v31, v32);
  sub_18E1C828C(&qword_1EABE02E0);
  sub_18E224E2C();
  sub_18E44F35C();
  if (!v26)
  {

    sub_18E2F7DD0();
    v33 = sub_18E2706EC(&qword_1EABE2528, &qword_18E4AAE48);
    if (sub_18E2387D0(v69, v34, v33, &type metadata for AssetBackedTokenizerBase) && (memcpy(v68, v69, sizeof(v68)), memcpy(v67, v69, sizeof(v67)), v65[0] = 1, sub_18E212184(), sub_18E22452C(), sub_18E44F35C(), sub_18E2121D8(v68), sub_18E1E8C38(v27 + 56, &v66), sub_18E2706EC(&qword_1EABE2530, &qword_18E4AAE50), swift_dynamicCast()))
    {
      memcpy(v65, v67, sizeof(v65));
      memcpy(v64, v67, sizeof(v64));
      sub_18E1DF4DC();
      sub_18E22452C();
      sub_18E44F35C();
      sub_18E212208(v65);
      sub_18E2F66D4(v27 + 96, v60, &qword_1EABE1300, &unk_18E49EDA0);
      if (v60[3])
      {
        sub_18E2706EC(&qword_1EABE2560, &unk_18E4AAE80);
        if (!swift_dynamicCast())
        {
          v40 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v40);
          sub_18E1DD27C();
          v37 = v41 - 2;
          goto LABEL_6;
        }

        memcpy(v61, v62, sizeof(v61));
        nullsub_1();
        memcpy(v63, v61, sizeof(v63));
      }

      else
      {
        sub_18E1E8F44(v60, &qword_1EABE1300, &unk_18E49EDA0);
        sub_18E1E01D0(v63);
      }

      memcpy(v62, v63, sizeof(v62));
      sub_18E212238();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v63, &qword_1EABE2500, &qword_18E4AAE20);
      sub_18E2F66D4(v27 + 136, v58, &qword_1EABE1308, &unk_18E4AADF0);
      if (v58[3])
      {
        sub_18E2706EC(&qword_1EABE2558, &qword_18E4AAE78);
        if (!swift_dynamicCast())
        {
          v42 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v42);
          sub_18E1DD27C();
          v37 = v43 + 1;
          goto LABEL_6;
        }

        memcpy(v59, v60, sizeof(v59));
        nullsub_1();
        memcpy(v61, v59, sizeof(v61));
      }

      else
      {
        sub_18E1E8F44(v58, &qword_1EABE1308, &unk_18E4AADF0);
        sub_18E1E01D0(v61);
      }

      memcpy(v60, v61, sizeof(v60));
      sub_18E2122D0();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v61, &qword_1EABE2508, &qword_18E4AAE28);
      sub_18E2F66D4(v27 + 176, v56, &qword_1EABE1310, &qword_18E49EDB0);
      if (v56[3])
      {
        sub_18E2706EC(&qword_1EABE2550, &qword_18E4AAE70);
        if (!swift_dynamicCast())
        {
          v44 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v44);
          sub_18E1DD27C();
          v37 = v45 + 5;
          goto LABEL_6;
        }

        memcpy(v57, v58, sizeof(v57));
        nullsub_1();
        memcpy(v59, v57, sizeof(v59));
      }

      else
      {
        sub_18E1E8F44(v56, &qword_1EABE1310, &qword_18E49EDB0);
        sub_18E1E01D0(v59);
      }

      memcpy(v58, v59, sizeof(v58));
      sub_18E212324();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v59, &qword_1EABE2510, &qword_18E4AAE30);
      sub_18E2F66D4(v27 + 216, v53, &qword_1EABE24D8, &qword_18E4AAE00);
      if (v53[3])
      {
        sub_18E2706EC(&qword_1EABE2548, &qword_18E4AAE68);
        if (!swift_dynamicCast())
        {
          v46 = sub_18E1E8AE8();
          sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v46);
          sub_18E1DD27C();
          v37 = v47 | 0xC;
          goto LABEL_6;
        }

        memcpy(v55, v56, sizeof(v55));
        nullsub_1();
        memcpy(v57, v55, sizeof(v57));
      }

      else
      {
        sub_18E1E8F44(v53, &qword_1EABE24D8, &qword_18E4AAE00);
        sub_18E1E01D0(v57);
      }

      memcpy(v56, v57, sizeof(v56));
      sub_18E1DF530();
      sub_18E22452C();
      sub_18E44F2FC();
      sub_18E1E8F44(v57, &qword_1EABE2518, &qword_18E4AAE38);
      sub_18E2F66D4(v27 + 256, v54, &qword_1EABE24E0, &qword_18E4AAE08);
      if (!v54[3])
      {
        sub_18E1E8F44(v54, &qword_1EABE24E0, &qword_18E4AAE08);
        sub_18E1E01D0(v55);
        goto LABEL_40;
      }

      sub_18E2706EC(&qword_1EABE2540, &qword_18E4AAE60);
      if (swift_dynamicCast())
      {
        memcpy(v52, v53, sizeof(v52));
        nullsub_1();
        memcpy(v55, v52, sizeof(v55));
LABEL_40:
        memcpy(v53, v55, sizeof(v53));
        LOBYTE(v52[0]) = 7;
        sub_18E2C698C();
        sub_18E22452C();
        sub_18E44F2FC();
        v48 = sub_18E2204B4();
        v49(v48);
        sub_18E1E8F44(v55, &qword_1EABE2538, &qword_18E4AAE58);
        goto LABEL_8;
      }

      v50 = sub_18E1E8AE8();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v50);
      sub_18E1DD27C();
      v37 = v51 | 0xE;
    }

    else
    {
      v35 = sub_18E1E8AE8();
      sub_18E1C8558(&type metadata for CatalogErrors.SerializationError, v35);
      sub_18E1DD27C();
    }

LABEL_6:
    sub_18E200E00(v36, v37);
    goto LABEL_7;
  }

LABEL_7:
  v38 = sub_18E2204B4();
  v39(v38);
LABEL_8:
  sub_18E1E2968();
  sub_18E1C6650();
}

unint64_t sub_18E1E01EC()
{
  result = qword_1ED6A7F88[0];
  if (!qword_1ED6A7F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A7F88);
  }

  return result;
}

void AssetBackedLLMBundle.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char _110E, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_18E1C62A0();
  a24 = v28;
  a25 = v29;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v75 = v32;
  v33 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v33);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1C8E58();
  v35 = sub_18E2706EC(&qword_1EABE24F0, &qword_18E4AAE10);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C61D0();
  v76 = v31;
  sub_18E1C975C();
  v37 = sub_18E1E0B8C();
  sub_18E1E2974(&type metadata for AssetBackedLLMBundle.CodingKeys, v38, v37);
  if (!v26)
  {
    v39 = sub_18E233460();
    sub_18E2706EC(v39, v40);
    sub_18E1C6B74();
    sub_18E1E1638(v41, v42, &qword_18E4AAE18, v43);
    sub_18E1CFF6C();
    sub_18E44F26C();
    v44 = v101[1];
    sub_18E1E1F48();
    sub_18E1E9CB4();
    sub_18E1CFF6C();
    sub_18E44F26C();
    v73 = v101[0];
    memcpy(v100, v101, sizeof(v100));
    sub_18E1E33AC();
    v45 = sub_18E201F88();
    sub_18E221DB8(v45, &_110E, v46, v47, v45);
    memcpy(v98, v99, sizeof(v98));
    sub_18E223BE8();
    sub_18E2017AC();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v96, v97, sizeof(v96));
    sub_18E201890();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v94, v95, sizeof(v94));
    sub_18E2018E4();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v92, v93, sizeof(v92));
    sub_18E20197C();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v90, v91, sizeof(v90));
    sub_18E2C6938();
    sub_18E1E2CB0();
    sub_18E44F20C();
    memcpy(v87, v89, sizeof(v87));
    v85 = &type metadata for AssetBackedTokenizerBase;
    v86 = sub_18E1E3434();
    sub_18E1C86E0();
    *&v84 = swift_allocObject();
    memcpy((v84 + 16), v100, 0xD8uLL);
    v82 = &type metadata for AssetBackedLLMModelBase;
    v83 = sub_18E1E3358();
    sub_18E1C86E0();
    *&v81 = swift_allocObject();
    memcpy((v81 + 16), v98, 0xD8uLL);
    memcpy(v88, v96, sizeof(v88));
    sub_18E221728(v88);
    if (v48)
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
    }

    else
    {
      v72 = sub_18E220BC8();
      sub_18E1C86E0();
      v71 = swift_allocObject();
      memcpy((v71 + 16), v88, 0xD8uLL);
      v70 = &type metadata for AssetBackedLLMAdapterBase;
    }

    memcpy(v80, v94, sizeof(v80));
    sub_18E221728(v80);
    if (v48)
    {
      v68 = 0;
      v69 = 0;
      v74 = 0;
    }

    else
    {
      v74 = sub_18E1E7BB4();
      sub_18E1C86E0();
      v49 = swift_allocObject();
      v50 = sub_18E23CA50(v49);
      memcpy(v50, v80, 0xD8uLL);
      v68 = &type metadata for AssetBackedLLMDraftModelBase;
    }

    memcpy(v79, v92, sizeof(v79));
    sub_18E221728(v79);
    if (v48)
    {
      v66 = 0;
      v67 = 0;
      v65 = 0;
    }

    else
    {
      v67 = sub_18E220D24();
      sub_18E1C86E0();
      v66 = swift_allocObject();
      memcpy((v66 + 16), v79, 0xD8uLL);
      v65 = &type metadata for AssetBackedImageTokenizerBase;
    }

    memcpy(v78, v90, sizeof(v78));
    sub_18E221728(v78);
    if (v48)
    {
      v63 = 0;
      v64 = 0;
      v62 = 0;
    }

    else
    {
      v64 = sub_18E221A84();
      sub_18E1C86E0();
      v63 = swift_allocObject();
      memcpy((v63 + 16), v78, 0xD8uLL);
      v62 = &type metadata for AssetBackedEmbeddingPreprocessorBase;
    }

    memcpy(v77, v87, sizeof(v77));
    sub_18E221728(v77);
    if (v48)
    {
      v60 = 0;
      v61 = 0;
      v51 = 0;
    }

    else
    {
      v61 = sub_18E2F1480();
      sub_18E1C86E0();
      v60 = swift_allocObject();
      sub_18E223C30((v60 + 16));
      v51 = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
    }

    sub_18E44E50C();

    v52 = sub_18E44E54C();
    sub_18E1E6510(v27);
    if (v48)
    {
      v53 = sub_18E1E3B24();
      v54(v53, v35);
      sub_18E1E8F44(v27, &qword_1EABE2FE0, &qword_18E49CE00);
      v56 = v44;
    }

    else
    {
      v73 = sub_18E44E49C();
      v56 = v55;
      v57 = sub_18E1E3B24();
      v58(v57, v35);
      sub_18E212008();
      (*(v59 + 8))(v27, v52);
    }

    *v75 = v73;
    v75[1] = v56;
    sub_18E1C551C(&v84, (v75 + 2));
    sub_18E1C551C(&v81, (v75 + 7));
    v75[12] = v71;
    v75[13] = 0;
    v75[14] = 0;
    v75[15] = v70;
    v75[16] = v72;
    v75[17] = v69;
    v75[18] = 0;
    v75[19] = 0;
    v75[20] = v68;
    v75[21] = v74;
    v75[22] = v66;
    v75[23] = 0;
    v75[24] = 0;
    v75[25] = v65;
    v75[26] = v67;
    v75[27] = v63;
    v75[28] = 0;
    v75[29] = 0;
    v75[30] = v62;
    v75[31] = v64;
    v75[32] = v60;
    v75[33] = 0;
    v75[34] = 0;
    v75[35] = v51;
    v75[36] = v61;
  }

  sub_18E1C9934(v76);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

unint64_t sub_18E1E0B8C()
{
  result = qword_1ED6A8120;
  if (!qword_1ED6A8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8120);
  }

  return result;
}

void sub_18E1E0BE0(char a1)
{
  switch(a1)
  {
    case 1:
      sub_18E1D49B0();
      break;
    case 3:
      sub_18E2233C0();
      break;
    case 4:
      sub_18E23552C();
      break;
    case 5:
      sub_18E220964();
      break;
    case 6:
    case 7:
      sub_18E1C77B0();
      break;
    default:
      return;
  }
}

_BYTE *sub_18E1E0D48(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E1E0E04);
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E1E0E2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 8);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

void sub_18E1E0EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_18E1E0F98()
{

  return sub_18E44E6DC();
}

void *sub_18E1E0FE0()
{

  return memcpy((v0 + 32), (v0 + 232), 0xC1uLL);
}

uint64_t sub_18E1E1040()
{
  sub_18E1C551C(v0 + 9, v1 + 16);
  sub_18E1C551C((v0 + 104), v1 + 56);

  return sub_18E1C551C(v0 + 4, v1 + 96);
}

void sub_18E1E10A8(char a1@<W8>)
{
  *(v1 + 72) = a1;
  *(v1 + 96) = 0;
  *(v1 + 101) = 0;
}

uint64_t sub_18E1E1104()
{

  return sub_18E44F35C();
}

void sub_18E1E1130()
{
  *(v0 + 200) = v1;
  *(v0 + 208) = v1;
  *(v0 + 216) = 0;
  *(v0 + 224) = v1;
}

BOOL sub_18E1E115C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_18E1E1178()
{

  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_18E1E11DC(uint64_t a1)
{

  return sub_18E1D5C80(a1);
}

uint64_t sub_18E1E1200()
{

  return sub_18E44F35C();
}

uint64_t sub_18E1E1254(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t ResourceBundleContainer.toResourceBundle()()
{
  swift_getObjectType();
  v0 = sub_18E1C5A78();
  return sub_18E1D4E40(v0, v1);
}

void sub_18E1E12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_18E2332CC(a1, a2, a3, a4, a5, a6);
  v10 = *(v7 + 16);
  *(v7 + 16) = v9;
  v11 = v9;

  sub_18E1D61E0(v6 + 16, &v14);
  v12 = *(v6 + 16);
  *(v6 + 16) = v8;
  v13 = v8;
}

_BYTE *sub_18E1E131C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E1E13D8);
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

void *sub_18E1E1400()
{

  return memcpy((v0 + 232), (v0 + 488), 0xD8uLL);
}

uint64_t sub_18E1E141C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F31C();
}

uint64_t sub_18E1E144C()
{
  *(v3 - 112) = v2;
  *(v3 - 104) = v0;
  *(v3 - 120) = v1;

  return sub_18E44F28C();
}

uint64_t sub_18E1E148C()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1E14C8(uint64_t a1)
{

  return sub_18E44F03C();
}

uint64_t sub_18E1E1530(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1E1574(uint64_t a1)
{

  return sub_18E44F3CC();
}

unint64_t sub_18E1E1594()
{
  *(v0 - 65) = 0;

  return sub_18E1E9E20();
}

void *sub_18E1E15F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_18E1E1638(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_18E2707F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E1E1680(uint64_t a1)
{
  result = sub_18E1CA6B8(a1);
  if (!result)
  {
    v4 = sub_18E221758(0, v3);
    sub_18E2707F8(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_18E1E16C0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t sub_18E1E1724(uint64_t a1)
{

  return swift_once();
}

void sub_18E1E1744()
{
  *(v0 + 72) = v1;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
}

uint64_t *sub_18E1E1774(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_18E1E17D4()
{
  result = qword_1ED6A87E8;
  if (!qword_1ED6A87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A87E8);
  }

  return result;
}

uint64_t sub_18E1E182C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return sub_18E1CFA04(v1);
}

uint64_t sub_18E1E18F0(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t sub_18E1E1920(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_18E1E195C()
{
  *v3 = v0;
  v3[1] = v2;
  sub_18E1C551C((v1 + 88), (v3 + 2));

  return sub_18E1C551C((v1 + 48), (v3 + 7));
}

uint64_t sub_18E1E19CC()
{
}

uint64_t sub_18E1E19F0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

BOOL sub_18E1E1A10()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_18E1E1A4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_18E2706EC(a3, a4);
}

__n128 sub_18E1E1AB4(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u8[0] = 2;
  return result;
}

uint64_t sub_18E1E1B28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F31C();
}

void sub_18E1E1B50()
{
  v3 = *(v0 + 8);
  *v3 = v2;
  v3[1] = v1;
}

void sub_18E1E1B5C()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1E1B74(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_18E1E1C18(uint64_t a1)
{

  return swift_allocObject();
}

void sub_18E1E1C48(char a1@<W8>)
{
  *(v1 + 72) = a1;
  *(v1 + 96) = 10000;
  *(v1 + 104) = 1;
  *(v1 + 105) = 0;
}

unint64_t sub_18E1E1C90(uint64_t a1, uint64_t a2)
{

  return sub_18E1C9624(a1, a2, (v2 - 136));
}

void sub_18E1E1CB4()
{

  sub_18E26F1E0(v0 > 1, v1, 1);
}

uint64_t sub_18E1E1CD8()
{

  return sub_18E44E6DC();
}

void sub_18E1E1D6C()
{
  sub_18E1C9934(v0);

  JUMPOUT(0x193ACD400);
}

uint64_t sub_18E1E1F8C()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1E1FD8()
{

  return sub_18E44E2BC();
}

void sub_18E1E201C(uint64_t a1@<X8>)
{
  *(v1 + 320) = a1;
  *(v1 + 328) = v2;
  *(v1 + 336) = 256;
  *(v1 + 344) = v2;
}

__n128 *sub_18E1E2030(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

double sub_18E1E2094(uint64_t a1)
{

  return sub_18E3CFB64(a1, 1, 1);
}

void sub_18E1E20B8()
{
  *(v0 + 108) = 0;
  *(v0 + 112) = v1;
  *(v0 + 120) = 1;
}

uint64_t sub_18E1E2254()
{
  v2 = *v0;

  return sub_18E2C2284(v2);
}

void sub_18E1E2274(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_18E1E22D0()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

void sub_18E1E22FC()
{
  v1 = v0[111];
  v0[13] = v0[110];
  v0[14] = v1;
  v2 = v0[113];
  v0[15] = v0[112];
  v0[16] = v2;
  v3 = v0[115];
  v0[17] = v0[114];
  v0[18] = v3;
  v0[12] = v0[116];
}

void sub_18E1E23D4()
{
  v1 = *(v0 + 608);
  *(v0 + 600) = *(v0 + 600);
  *(v0 + 608) = v1;
}

uint64_t sub_18E1E23E8()
{
  *(v1 - 112) = v0;
  *(v1 - 104) = 1;
  *(v1 - 96) = 0;

  return sub_18E292124(v1 - 128);
}

uint64_t sub_18E1E2414(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44E28C();
}

double sub_18E1E25BC()
{

  return sub_18E3CFB64(47, 1, 1);
}

uint64_t sub_18E1E25E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_18E44F0DC();
}

unint64_t sub_18E1E2624()
{
  *(v0 - 65) = 0;

  return sub_18E1E9E20();
}

uint64_t sub_18E1E2640(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 10000;
  return result;
}

uint64_t sub_18E1E2684()
{

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E1E26D0()
{
}

uint64_t sub_18E1E2878(uint64_t a1)
{

  return sub_18E44F3CC();
}

unint64_t sub_18E1E28CC()
{
  result = qword_1ED6A8FE0;
  if (!qword_1ED6A8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8FE0);
  }

  return result;
}

void sub_18E1E2944()
{

  sub_18E231D60();
}

uint64_t sub_18E1E2974(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4DC();
}

unint64_t sub_18E1E2A0C()
{
  result = qword_1ED6A93F8;
  if (!qword_1ED6A93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A93F8);
  }

  return result;
}

uint64_t sub_18E1E2A6C(uint64_t a1)
{
  *v1 = a1;
}

void *sub_18E1E2A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t __src)
{

  return memcpy(&STACK[0x350], &__src, 0xF0uLL);
}

uint64_t sub_18E1E2ACC()
{

  return swift_getWitnessTable();
}

double sub_18E1E2B34@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 96) = a1;
  *&result = 0x10000000100;
  *(v1 + 104) = 256;
  return result;
}

void sub_18E1E2B44()
{

  sub_18E26F1E0(0, v0, 0);
}

uint64_t sub_18E1E2B64()
{

  return sub_18E44E6DC();
}

void sub_18E1E2BE0(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 0;
  *(v1 + 101) = 0;
}

void sub_18E1E2C14(uint64_t a1@<X8>)
{
  v1[12] = sub_18E42EA8C;
  v1[13] = a1;
  v1[14] = v2;
}

void sub_18E1E2C2C()
{
  sub_18E1C9934(v0);

  JUMPOUT(0x193ACD400);
}

uint64_t sub_18E1E2C6C(uint64_t a1)
{

  return sub_18E44E6DC();
}

void *sub_18E1E2C90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  return memcpy(va, v34, 0xC1uLL);
}

void *sub_18E1E2CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *v17 = v19;
  v17[1] = v18;
  v17[2] = a16;
  v17[3] = a17;
  return v17;
}

__n128 *sub_18E1E2D84(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1E2DA0(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  *(result + 56) = 2;
  *(result + 64) = 808334898;
  *(result + 72) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1E2DEC(uint64_t result)
{
  *(result + 16) = 0;
  *(v1 - 344) = result + 16;
  return result;
}

uint64_t sub_18E1E2E3C(uint64_t a1)
{
  *v1 = a1;
}

uint64_t sub_18E1E2E68()
{
  v5 = *(v3 - 72);
  *v0 = v2;
  v0[1] = v1;
  v0[2] = v5;
}

uint64_t sub_18E1E2E94()
{
  v3 = *(v2 - 136);
  *v0 = *(v2 - 144);
  v0[1] = v3;
  v4 = *(v2 - 96);
  v0[2] = v1;
  v0[3] = v4;
  return *(v2 - 112);
}

__n128 *sub_18E1E2EAC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

void *sub_18E1E2EB8()
{

  return memcpy((v0 + 104), (v0 + 320), 0xD8uLL);
}

void sub_18E1E2ED4(uint64_t a1, uint64_t a2)
{

  AssetBackedDiffusionAdapterBase.init(configuration:variant:)();
}

uint64_t sub_18E1E2F00@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 12, (a1 - 32) | 0x8000000000000000, v1);
}

double sub_18E1E2F48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *&result = 0x10000000100;
  *(v2 + 48) = 256;
  *(v2 + 52) = 0;
  return result;
}

uint64_t sub_18E1E2F5C()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return 47;
}

void *sub_18E1E2F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_18E3F04D8(v5, a2, a3, a4, v4);
}

void sub_18E1E2FD0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_18E1E3010()
{

  return sub_18E44E6DC();
}

void sub_18E1E3050()
{
  *(v0 + 16) = v4;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

void *sub_18E1E3080(uint64_t a1, uint64_t a2, ...)
{

  return sub_18E44F48C();
}

id sub_18E1E3098()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t sub_18E1E30DC()
{

  return sub_18E44E6DC();
}

void sub_18E1E3140(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
}

uint64_t sub_18E1E316C()
{
  *(v1 - 344) = v0;
}

void *sub_18E1E320C(uint64_t a1)
{
  *(v1 + 80) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 376), 0xD8uLL);
}

void *sub_18E1E323C()
{

  return memcpy((v0 + 376), (v0 + 592), 0xD8uLL);
}

void sub_18E1E3258()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1E3270(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return v2;
  }

  return result;
}

uint64_t sub_18E1E3288(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4EC();
}

void sub_18E1E32A8(uint64_t a1@<X8>)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
}

__n128 sub_18E1E32B8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

__n128 *sub_18E1E32C4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  return result;
}

unint64_t sub_18E1E3358()
{
  result = qword_1ED6A9370;
  if (!qword_1ED6A9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9370);
  }

  return result;
}

void sub_18E1E33B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_18E1E33FC(uint64_t a1, uint64_t a2, ...)
{

  return sub_18E44F48C();
}

unint64_t sub_18E1E3434()
{
  result = qword_1ED6A9330;
  if (!qword_1ED6A9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9330);
  }

  return result;
}

uint64_t sub_18E1E3488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id sub_18E1E34C4()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2112;

  return v0;
}

void sub_18E1E3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E223548();
  sub_18E1D01B8();
  sub_18E1CFFA8(&v100);
  v8 = sub_18E1CFFA8(&v50);
  v10 = sub_18E22179C(v8, v9, &v50);
  if (v5)
  {
    goto LABEL_7;
  }

  if (!v101 || !*(v101 + 16))
  {
    v42 = sub_18E2D0B44();
    v43 = sub_18E1C8558(&type metadata for CatalogErrors.ConfigurationError, v42);
    sub_18E1E6860(v43, v44);
    sub_18E221DDC(v45, 0xD000000000000029);

LABEL_7:

    sub_18E1FE044(&v100);
    goto LABEL_8;
  }

  v18 = sub_18E223A20(v10, v11, v12, v13, v14, v15, v16, v17, v46, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  sub_18E1C973C(v18, v19, v20, v21, v22, v23, v24, v25, v47, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  v34 = sub_18E1D5E70(v26, v27, v28, v29, v30, v31, v32, v33, v48, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  sub_18E1D4410(v34, v35, v36, v37, v38, v39, v40, v41, v49);
  *(v7 + 200) = v6;
  *(v7 + 208) = v4;
LABEL_8:
  sub_18E1CFAAC();
  sub_18E220CC4();
}

uint64_t sub_18E1E3690()
{
}

double sub_18E1E36A8()
{
  result = 0.0;
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  return result;
}

void *sub_18E1E36C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return memcpy(va, v33, 0xC1uLL);
}

void sub_18E1E36E8()
{

  sub_18E3EF9F0();
}

__n128 sub_18E1E370C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  a1[2].n128_u8[0] = 2;
  a1[2].n128_u64[1] = 808334641;
  a1[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

id sub_18E1E3770()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t sub_18E1E3794()
{

  return swift_allocObject();
}

uint64_t sub_18E1E37B4(uint64_t a1, uint64_t a2)
{

  return sub_18E44F3CC();
}

void sub_18E1E37F4(uint64_t a1@<X8>)
{
  *(v1 + 320) = a1;
  *(v1 + 328) = v2;
  *(v1 + 336) = 0;
  *(v1 + 344) = v2;
}

uint64_t sub_18E1E3804(uint64_t result)
{
  *(result + 40) = 808335409;
  *(result + 48) = 0xE400000000000000;
  return result;
}

void sub_18E1E3848()
{
  v2 = (*(*(v0 + 40) + 16) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_18E1E3894(uint64_t a1)
{

  return sub_18E44F3CC();
}

void sub_18E1E38BC()
{
  *(v0 + 56) = v1;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
}

__n128 *sub_18E1E38D0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  result[2].n128_u64[1] = 875444273;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 875443505;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

void sub_18E1E38FC()
{

  JUMPOUT(0x193ACD400);
}

uint64_t sub_18E1E394C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4EC();
}

uint64_t sub_18E1E397C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 112) = a2;
  *(result + 120) = v2;
  *(v3 + 112) = result;
  return result;
}

void sub_18E1E3988(char a1@<W8>)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 72) = a1;
}

uint64_t sub_18E1E399C(uint64_t a1, uint64_t a2)
{

  return sub_18E44F1AC();
}

uint64_t sub_18E1E39CC(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_18E44E6DC();
}

uint64_t sub_18E1E3A3C(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 100000;
  *(v1 + 48) = 0;
  return result;
}

void *sub_18E1E3A90@<X0>(__int16 a1@<W8>)
{
  *(v1 + 854) = a1;
  *(v1 + 856) = v4;
  *(v1 + 864) = v2;
  *(v1 + 872) = *(v1 + 24);

  return memcpy(v3, (v1 + 176), 0x2C0uLL);
}

void sub_18E1E3AD4()
{
  *(v0 + 112) = v1;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
}

uint64_t sub_18E1E3B74()
{
}

void *sub_18E1E3B8C(uint64_t a1)
{
  *(v1 + 104) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 400), 0xD8uLL);
}

uint64_t sub_18E1E3BAC()
{

  return sub_18E44EA8C();
}

uint64_t sub_18E1E3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return sub_18E27418C(v40 - 240, va);
}

void sub_18E1E3C94()
{
}

void sub_18E1E3CD0()
{
}

void *sub_18E1E3CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(v9, &a9, 0xC8uLL);
}

void sub_18E1E3D38()
{
  *(v0 + 112) = v1;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
}

uint64_t sub_18E1E3D4C()
{

  return sub_18E44EFFC();
}

void sub_18E1E3D78()
{
  v1 = *(v0 + 96);
  *(v0 + 88) = *(v0 + 88);
  *(v0 + 96) = v1;
}

void sub_18E1E3D84()
{

  JUMPOUT(0x193ACC300);
}

void sub_18E1E3DC4()
{

  bzero((v0 + 112), 0xC8uLL);
}

uint64_t sub_18E1E3E04(uint64_t result)
{
  *(result + 40) = 808334898;
  *(result + 48) = 0xE400000000000000;
  return result;
}

void *sub_18E1E3E3C()
{
  *v0 = v1;

  return memcpy(v0 + 101, v0 + 128, 0xD8uLL);
}

void *sub_18E1E3E68()
{

  return memcpy((v0 + 24), (v0 + 456), 0xD8uLL);
}

void *sub_18E1E3E84()
{

  return memcpy((v0 + 440), (v0 + 640), 0xC1uLL);
}

void sub_18E1E3EE0()
{
  v2 = (*(v0 + 16) + 24);

  os_unfair_lock_lock(v2);
}

uint64_t sub_18E1E3F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_18E1C4F90(v4, v8, v7);
  }

  return v10 & 1;
}

unint64_t RequestResourcesKey.rawValue.getter()
{
  result = 0x6C5F6D6C65646F63;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return result;
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      result = 0x735F6D6C65646F63;
      break;
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t ResourceBundle.containsResource(withRequestResourceKeys:)(void *a1, uint64_t a2)
{
  v2 = sub_18E221758(a1, a2);
  result = v3(v2);
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = &qword_1EABE0EA0;
    v9 = &qword_18E49D250;
    v10 = &unk_1EABE33F0;
    v11 = result + 32;
    v24 = result;
    while (v7 < *(v5 + 16))
    {
      sub_18E1E4398(v11, v29);
      sub_18E1E4398(v29, v25);
      v12 = sub_18E1E6BB0();
      sub_18E2706EC(v12, v13);
      sub_18E2706EC(v10, &unk_18E49D240);
      if (swift_dynamicCast())
      {
        v14 = v6;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        sub_18E1C551C(v26, v28);
        v18 = v28[4];
        sub_18E1E15F4(v28, v28[3]);
        v19 = sub_18E1C5D78();
        v20(v19, v18);
        v21 = v25[48];

        if (v21 == 15)
        {
          sub_18E1C9934(v29);
        }

        else
        {
          v22 = sub_18E24AACC(v21, a1);
          sub_18E1C9934(v29);
          if (v22)
          {

            sub_18E1C9934(v28);
            return 1;
          }
        }

        result = sub_18E1C9934(v28);
        v8 = v17;
        v9 = v16;
        v10 = v15;
        v6 = v14;
        v5 = v24;
      }

      else
      {
        v27 = 0;
        memset(v26, 0, sizeof(v26));
        sub_18E1C9934(v29);
        result = sub_18E327C3C(v26, &unk_1EABE1018);
      }

      ++v7;
      v11 += 40;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_18E1E4398(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void AssetBackedLLMBundle.id.getter()
{
  sub_18E1C575C();
  sub_18E223DD0(v4);
  sub_18E1C4EAC();
  v136 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  v7 = sub_18E44E2BC();
  sub_18E1C4EAC();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C86C0();
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C617C();
  v135 = v12;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v13);
  sub_18E1C617C();
  v134 = v14;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v15);
  sub_18E1C617C();
  v133 = v16;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1C617C();
  v132 = v18;
  sub_18E1C6668();
  MEMORY[0x1EEE9AC00](v19);
  sub_18E2F81C8();
  MEMORY[0x1EEE9AC00](v20);
  sub_18E216B10();
  v22 = *(v0 + 40);
  v21 = *(v0 + 48);
  sub_18E1C5040(v2 + 2, v22);
  v23(v22);
  sub_18E223708();
  v26 = v26 && v25 == 0xE700000000000000;
  if (v26)
  {

    goto LABEL_10;
  }

  v27 = sub_18E223B20(v24, v21, v3);

  if (v27)
  {
LABEL_10:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  sub_18E2372D8();
  v7 = "fovestimatorVariant";
  v29 = v2[5];
  v28 = v2[6];
  sub_18E1C5040(v2 + 2, v29);
  v30(v29);
  sub_18E1D0274();
  sub_18E216A24(v31, 0x800000018E465FF0, v32);

  sub_18E220AAC();
  sub_18E3EF9F0();
  sub_18E2F7E90();
  if (v33)
  {
    sub_18E1E36E8();
    v29 = v119;
  }

  *(v29 + 16) = v28;
  sub_18E1C6730();
  v34 = sub_18E2230DC();
  v35(v34);
LABEL_11:
  v36 = v2[10];
  sub_18E1C5040(v2 + 7, v36);
  v37(v36);
  v39 = v38;
  sub_18E2404F8();
  if (v40 == v36 && v41 == 0xE700000000000000)
  {
  }

  else
  {
    sub_18E2430B0(v40);
    sub_18E1E1F80();

    if ((v36 & 1) == 0)
    {
      sub_18E2372D8();
      v43 = v2[10];
      v39 = v2[11];
      sub_18E1C5040(v2 + 7, v43);
      v44(v43);
      sub_18E1D0274();
      sub_18E216A24(v45, 0x800000018E450680, v46);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18E1C6868();
        sub_18E3EF9F0();
        v29 = v120;
      }

      v47 = *(v29 + 16);
      sub_18E2F79B8();
      v7 = v9;
      if (v33)
      {
        sub_18E1E36E8();
        v29 = v121;
      }

      *(v29 + 16) = v39;
      sub_18E1C6730();
      v50(v48 + v49 * v47, v1, v9);
    }

    sub_18E2404F8();
  }

  sub_18E2F66D4((v2 + 12), &v140, &qword_1EABE1300, &unk_18E49EDA0);
  if (v141)
  {
    sub_18E1C551C(&v140, v139);
    v51 = sub_18E1C7F64();
    v52(v51);
    sub_18E1E8378();
    if (v26 && v54 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0(v53);
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v56 = sub_18E1C7F64();
        v57(v56);
        sub_18E1D0274();
        v58 = sub_18E1CF874();
        sub_18E2452D8(v58);
        sub_18E44E28C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v29 = v122;
        }

        sub_18E2234D4();
        if (v33)
        {
          sub_18E1E36E8();
          v29 = v123;
        }

        v59 = sub_18E1C5FC0();
        v60(v59, v132, v7);
      }
    }

    sub_18E1C9934(v139);
  }

  else
  {
    sub_18E1E8F44(&v140, &qword_1EABE1300, &unk_18E49EDA0);
  }

  sub_18E2F66D4((v2 + 17), &v140, &qword_1EABE1308, &unk_18E4AADF0);
  if (v141)
  {
    sub_18E1C551C(&v140, v139);
    v61 = sub_18E1C7F64();
    v62(v61);
    sub_18E1E8378();
    if (v26 && v64 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0(v63);
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v66 = sub_18E1C7F64();
        v67(v66);
        sub_18E1CF6A4();
        sub_18E2F8284();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v29 = v124;
        }

        sub_18E2234D4();
        if (v33)
        {
          sub_18E1E36E8();
          v29 = v125;
        }

        v68 = sub_18E1C5FC0();
        v69(v68, v133, v7);
      }
    }

    sub_18E1C9934(v139);
  }

  else
  {
    sub_18E1E8F44(&v140, &qword_1EABE1308, &unk_18E4AADF0);
  }

  sub_18E2F66D4((v2 + 22), &v140, &qword_1EABE1310, &qword_18E49EDB0);
  if (v141)
  {
    sub_18E1C551C(&v140, v139);
    v70 = sub_18E1C7F64();
    v71(v70);
    sub_18E1E8378();
    if (v26 && v73 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0(v72);
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v75 = sub_18E1C7F64();
        v76(v75);
        sub_18E1CF6A4();
        sub_18E2F8464();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v29 = v126;
        }

        sub_18E2234D4();
        if (v33)
        {
          sub_18E1E36E8();
          v29 = v127;
        }

        v77 = sub_18E1C5FC0();
        v78(v77, v134, v7);
      }
    }

    sub_18E1C9934(v139);
  }

  else
  {
    sub_18E1E8F44(&v140, &qword_1EABE1310, &qword_18E49EDB0);
  }

  sub_18E2F66D4((v2 + 27), &v140, &qword_1EABE24D8, &qword_18E4AAE00);
  if (v141)
  {
    sub_18E1C551C(&v140, v139);
    v79 = sub_18E1C7F64();
    v80(v79);
    sub_18E1E8378();
    if (v26 && v82 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0(v81);
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v84 = sub_18E1C7F64();
        v85(v84);
        sub_18E1CF6A4();
        sub_18E2F8444();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v29 = v128;
        }

        sub_18E2234D4();
        if (v33)
        {
          sub_18E1E36E8();
          v29 = v129;
        }

        v86 = sub_18E1C5FC0();
        v87(v86, v135, v7);
      }
    }

    sub_18E1C9934(v139);
  }

  else
  {
    sub_18E1E8F44(&v140, &qword_1EABE24D8, &qword_18E4AAE00);
  }

  sub_18E2F66D4((v2 + 32), &v140, &qword_1EABE24E0, &qword_18E4AAE08);
  if (v141)
  {
    sub_18E1C551C(&v140, v139);
    v88 = sub_18E1C7F64();
    v89(v88);
    sub_18E1E8378();
    if (v26 && v91 == 0xE700000000000000)
    {
    }

    else
    {
      sub_18E2430B0(v90);
      sub_18E233F98();
      if ((v1 & 1) == 0)
      {
        v93 = sub_18E1C7F64();
        v94(v93);
        sub_18E1CF6A4();
        sub_18E2288AC();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_18E1C6868();
          sub_18E3EF9F0();
          v29 = v130;
        }

        sub_18E2234D4();
        if (v33)
        {
          sub_18E1E36E8();
          v29 = v131;
        }

        *(v29 + 16) = v39;
        sub_18E1E2708();
        v95 = sub_18E223AAC();
        v96(v95);
      }
    }

    sub_18E1C9934(v139);
  }

  else
  {
    sub_18E1E8F44(&v140, &qword_1EABE24E0, &qword_18E4AAE08);
  }

  sub_18E44E37C();
  v97 = *v2;
  v98 = v2[1];

  v99 = sub_18E1CFFC0();
  MEMORY[0x193ACBAD0](v99);
  if (*(v29 + 16))
  {
    v139[0] = v29;

    sub_18E2EEDB8(v139);

    sub_18E44E2FC();
  }

  else
  {
  }

  v100 = sub_18E44E36C();
  if (v101)
  {
    v102 = v100;
    v103 = v101;
    v104 = sub_18E1E63C0();
    v105(v104);
    v97 = v102;
    v98 = v103;
  }

  else
  {
    if (qword_1ED6A8418 != -1)
    {
      sub_18E1C8AB4(&qword_1ED6A8418);
    }

    v106 = sub_18E44E83C();
    sub_18E1C95EC(v106, qword_1ED6A9858);
    sub_18E231E70(v2, v139);
    v107 = sub_18E44E80C();
    v108 = sub_18E44EE0C();
    if (sub_18E2333E4(v108))
    {
      sub_18E2342D4();
      v138 = sub_18E220C80();
      sub_18E1E18F0(4.8151e-34);
      sub_18E2F0564();
      v109 = sub_18E44F39C();
      v111 = v110;
      sub_18E1C9624(v109, v110, &v138);
      sub_18E223638();

      sub_18E1D4214();
      sub_18E212684(v139);
      v112 = sub_18E2016D4();
      sub_18E1C9624(v112, v113, v114);
      sub_18E1E6C9C();

      *(v2 + 14) = v111;
      sub_18E1D81D8(&dword_18E1C1000, v115, v116, "Unable to construct resource bundle identifier from %s. Falling back to %s");
      swift_arrayDestroy();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      sub_18E212684(v139);
    }

    v117 = *(v136 + 8);

    v118 = sub_18E1E63C0();
    v117(v118);
  }

  *v137 = v97;
  v137[1] = v98;
  sub_18E1C5544();
}

void ResourceConfiguration.encode(to:)()
{
  sub_18E1C62A0();
  v3 = v2;
  sub_18E2706EC(&unk_1EABE3340, &unk_18E4B0EC8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1C61D0();
  v5 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = v5;
  v16[0] = *(v0 + 120);
  *(v16 + 10) = *(v0 + 130);
  sub_18E1DD34C(v3, v3[3]);
  sub_18E1E9F68();
  sub_18E1E2294();
  sub_18E44F4EC();
  LOBYTE(v11) = 0;
  sub_18E1E6754();
  sub_18E1E292C();
  sub_18E44F31C();
  if (v1)
  {
    v8 = sub_18E1D0120();
  }

  else
  {
    sub_18E2233D4();
    sub_18E44F31C();
    sub_18E2233D4();
    sub_18E44F31C();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1C892C(&unk_1EABE0088, MEMORY[0x1E69E6160]);
    sub_18E25E1AC();
    sub_18E44F35C();
    sub_18E2233D4();
    sub_18E44F32C();
    sub_18E2706EC(&qword_1EABE3350, &qword_18E4B0ED8);
    sub_18E327490();
    sub_18E25E1AC();
    sub_18E44F35C();
    v10[0] = 6;
    sub_18E2706EC(&unk_1EABE3358, &qword_18E4B0EE0);
    sub_18E327568();
    sub_18E25E1AC();
    sub_18E44F2FC();
    sub_18E2233D4();
    sub_18E44F32C();
    v11 = v14;
    v12 = v15;
    v13[0] = v16[0];
    *(v13 + 10) = *(v16 + 10);
    v10[63] = 8;
    sub_18E2F66D4(&v14, v10, &qword_1EABE2FB8, &qword_18E4B0C70);
    sub_18E232F84();
    sub_18E2233D4();
    sub_18E44F2FC();
    sub_18E1CC2F0();
    sub_18E327C3C(v10, &qword_1EABE2FB8);
    sub_18E2233D4();
    sub_18E44F2BC();
    sub_18E1E3DA8(&v15);
    sub_18E2706EC(&qword_1EABE3368, &qword_18E4B0EE8);
    sub_18E327640();
    sub_18E2233D4();
    sub_18E44F2FC();
    sub_18E1E3DA8(&v14 + 8);
    sub_18E2706EC(&qword_1EABE3370, &qword_18E4B0EF0);
    v6 = sub_18E327718();
    sub_18E32EFA8(v6);
    sub_18E1E3DA8(&v14);
    sub_18E2706EC(&qword_1EABE3378, &qword_18E4B0EF8);
    v7 = sub_18E3277F0();
    sub_18E32EFA8(v7);
    sub_18E44F2CC();
    v8 = sub_18E1C89D0();
  }

  v9(v8);
  sub_18E1CEAC4();
  sub_18E1C6650();
}

uint64_t sub_18E1E598C()
{

  return swift_unknownObjectRelease();
}

void sub_18E1E63E8()
{
}

void *sub_18E1E640C()
{
  v3 = v1[34];
  v0[9] = v1[33];
  v0[10] = v3;
  v4 = v1[36];
  v0[11] = v1[35];
  v0[12] = v4;
  v5 = v1[37];
  v0[14] = v1[38];
  v0[15] = v5;
  v6 = v1[40];
  v0[13] = v1[39];
  v7 = v1[42];
  v0[5] = v1[41];
  v0[6] = v7;
  v0[7] = v1[43];
  v0[8] = v6;

  return memcpy(v0 + 179, v1 + 44, 0x140uLL);
}

void *sub_18E1E6468()
{

  return memcpy((v0 + 232), (v0 + 432), 0xC1uLL);
}

uint64_t sub_18E1E6484()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return 47;
}

uint64_t sub_18E1E64C0()
{

  return sub_18E44E6DC();
}

__n128 *sub_18E1E6544(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  result[3].n128_u8[8] = 2;
  result[4].n128_u64[0] = 808334898;
  result[4].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1E6580()
{

  return swift_beginAccess();
}

__n128 sub_18E1E65CC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 64) = *a1;
  *(a2 + 80) = v3;
  *(a2 + 96) = *(a1 + 32);
  return result;
}

uint64_t sub_18E1E6644()
{

  return sub_18E44E6DC();
}

uint64_t sub_18E1E66BC(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 150000;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t sub_18E1E66F8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_18E1E6770()
{
}

uint64_t sub_18E1E6788()
{

  return sub_18E1CEB5C((v0 + 16));
}

uint64_t sub_18E1E67AC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F4DC();
}

uint64_t sub_18E1E6804@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 40) = a2;
  *(result + 48) = 0xE400000000000000;
  return result;
}

id sub_18E1E6838()
{
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t sub_18E1E688C@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  a14 = v14;
  *a1 = a2;
  a1[1] = a3;
  a1[2].n128_u8[0] = v14;

  return sub_18E327BB0(&a10, &a5);
}

uint64_t sub_18E1E68D0()
{

  return sub_18E44F35C();
}

uint64_t sub_18E1E68F0()
{
  v3 = *(v0 + 8) + 16;

  return sub_18E1E8C38(v3, v1 - 128);
}

uint64_t sub_18E1E690C()
{

  return swift_unknownObjectRelease();
}

void sub_18E1E6978()
{
  v0[4] = v5;
  v0[5] = v4;
  v0[2] = v3;
  v0[3] = v1;
  v0[7] = *(v2 + 16);
  *(v6 - 72) = v2;
  v0[1] = v2 + 32;
}

unint64_t sub_18E1E69A4()
{
  *v0 = v1;
  *(v2 - 65) = 0;

  return sub_18E1E9E20();
}

uint64_t sub_18E1E69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_18E1E69F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, __int128 a62, uint64_t a63)
{
  *(&a62 + 5) = 0;
  *&a62 = 0;
  a63 = v65;
  a64 = 1;
  a65 = 0;

  return sub_18E292124(&a62);
}

uint64_t sub_18E1E6A20()
{
}

void sub_18E1E6A38()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1E6A5C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *v9 = v10;
  v9[1] = (a1 - 32) | 0x8000000000000000;

  return sub_18E1C551C(&a9, (v9 + 2));
}

uint64_t sub_18E1E6AD0()
{
  *(v0 + 112) = v1;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  return 47;
}

void sub_18E1E6B4C()
{
  *(v3 + 16) = v2;
  *(v5 - 144) = v3;
  v6 = v3 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v4;
}

void sub_18E1E6BCC(Swift::Int_optional a1@<0:X0, 8:W1.1>, Swift::Bool_optional a2@<W2>, Swift::Int_optional a3@<0:X3, 8:W4.1>, Swift::Int_optional a4@<0:X5, 8:W6.1>, char a5@<W7>, ModelCatalog::LLMAdapterMetadataOverrideAssetMetadata::DraftMetadata *a6@<X8>, __n128 a7@<Q0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, __int128 a11, __int128 a12, Swift::String_optional a13, uint64_t a14, uint64_t a15, Swift::Int_optional draftTreeMaxPaths, uint64_t a17, uint64_t a18, Swift::String_optional speculativeDecodeType, char a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  BYTE8(a12) = v33;
  LOBYTE(a13.value._countAndFlagsBits) = v32;
  a13.value._object = v31;
  *(&a13.value._countAndFlagsBits + 1) = v30;
  LOBYTE(a11) = v29;

  LLMAdapterMetadataOverrideAssetMetadata.DraftMetadata.init(draftSteps:draftIsAdaptive:draftTreeFactor:draftSecondaryTreeFactor:draftSoftMatchTolerance:draftTreeMaxPaths:draftUseRejectionSampling:draftUseMaximumLikelihoodTree:draftEarlyReturn:draftEarlyReturnProbabilityThreshold:speculativeSampling:speculativeStreamingModel:streamMaximumGamma:speculativeDecodeType:temperature:streamSeparateWeights:streamUseRejectionSampling:streamLayerId:streamLossWeight:streamTreeFactor:)(a6, a1, a2, a3, a4, *(&a5 - 8), a11, SBYTE9(a11), SBYTE10(a11), SBYTE11(a11), *&a8, SBYTE13(a11), SBYTE14(a11), a12, a13, *&a9, SBYTE1(a14), SBYTE2(a14), *a7.n128_u64, *&a10, *&draftTreeMaxPaths.is_nil);
}

void sub_18E1E6C6C()
{

  JUMPOUT(0x193ACD400);
}

double sub_18E1E7400@<D0>(_OWORD *x8_0@<X8>)
{

  return sub_18E26C3FC(v2, x8_0);
}

void *sub_18E1E7B48(void *a1)
{

  return memcpy(a1, v1, 0xC1uLL);
}

uint64_t sub_18E1E7B78(uint64_t a1)
{

  return sub_18E44F3CC();
}

unint64_t sub_18E1E7BB4()
{
  result = qword_1ED6A9470;
  if (!qword_1ED6A9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A9470);
  }

  return result;
}

uint64_t sub_18E1E7D60(uint64_t a1)
{

  return sub_18E44E49C();
}

void sub_18E1E83C0()
{
  v2 = *(v0 - 328);
}

void sub_18E1E83E4()
{

  JUMPOUT(0x193ACC300);
}

uint64_t sub_18E1E8414()
{
}

__n128 *sub_18E1E8478(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = 1;
  result[2].n128_u64[1] = 808334898;
  result[3].n128_u64[0] = 0xE400000000000000;
  return result;
}

uint64_t sub_18E1E84D8()
{
  *(v4 - 176) = v3;
  *(v4 - 168) = v0;
  *(v4 - 160) = v2;
  *(v4 - 88) = v1;

  return sub_18E44F28C();
}

void *sub_18E1E851C()
{

  return memcpy((v0 + 704), (v0 + 920), 0xD8uLL);
}

void *sub_18E1E8538()
{

  return memcpy((v0 + 40), (v0 + 440), 0xC1uLL);
}

void sub_18E1E8560(__n128 a1)
{
  *(v1 + 168) = a1;
  *(v1 + 152) = a1;
  *(v1 + 136) = a1;
  *(v1 + 120) = a1;
  *(v1 + 104) = a1;
  *(v1 + 88) = a1;
  *(v1 + 72) = a1;
  *(v1 + 56) = a1;
  *(v1 + 40) = a1;
  *(v1 + 24) = a1;
  *(v1 + 8) = a1;
}

void sub_18E1E85B4()
{
  v2 = *(v0 - 336);
}

uint64_t sub_18E1E85CC()
{
  v2 = *(v0 + 104);

  return sub_18E2C2284(v2);
}

uint64_t sub_18E1E8628()
{
}

void sub_18E1E8658()
{
  v1 = *(v0 + 1136);
  *(v0 + 912) = *(v0 + 1128);
  *(v0 + 920) = v1;
  *(v0 + 696) = 0;
}

uint64_t sub_18E1E8670(uint64_t a1)
{

  return swift_allocObject();
}

void sub_18E1E8688(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 48) = v2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  *(v3 + 72) = v7;
}

uint64_t sub_18E1E86B0(uint64_t result, float a2)
{
  *(result + 40) = a2;
  *(result + 44) = 275;
  *(result + 46) = 1;
  return result;
}

uint64_t sub_18E1E86DC()
{

  return sub_18E1C9934((v0 - 128));
}

uint64_t sub_18E1E8710(uint64_t a1, uint64_t a2)
{

  return sub_18E44F2CC();
}

uint64_t sub_18E1E8734()
{

  return type metadata accessor for CatalogClient();
}

void *sub_18E1E8764()
{
  v0[3] = v1;

  return memcpy(v0 + 67, v0 + 94, 0xD8uLL);
}

uint64_t sub_18E1E8784()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  return sub_18E44EFFC();
}

uint64_t sub_18E1E87A4()
{
}

void *sub_18E1E87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0xF0uLL);
}

__n128 *sub_18E1E87E8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18E1E8858()
{
  v5 = *(*(v2 + 8) + 8);

  return sub_18E244FC8(v1, (v3 - 168), v0, v5);
}

uint64_t sub_18E1E887C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_18E44F3CC();
}

uint64_t sub_18E1E8894(uint64_t result, __n128 a2)
{
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

void *sub_18E1E88D0()
{

  return memcpy((v0 + 424), (v0 + 624), 0xC1uLL);
}

uint64_t sub_18E1E88EC()
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *(v0 + 56) = *v1;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
}

void *sub_18E1E8934(uint64_t a1)
{
  *(v1 + 8) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 104), 0xD8uLL);
}

uint64_t sub_18E1E8954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_18E44F20C();
}

uint64_t sub_18E1E8980()
{

  return sub_18E44E6DC();
}

unint64_t sub_18E1E89AC(uint64_t a1)
{

  return sub_18E1D5C80(a1);
}

void sub_18E1E89F8(uint64_t a1@<X8>)
{
  *(v1 + 72) = 0;
  *(v1 + 80) = a1;
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  *(v1 + 104) = a1;
}

unint64_t sub_18E1E8A48@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  STACK[0x248] = a2;
  STACK[0x250] = v2;
  STACK[0x258] = 0;
  LOWORD(STACK[0x260]) = v5;
  STACK[0x270] = 0;
  STACK[0x268] = 0;
  STACK[0x278] = v4;
  STACK[0x280] = v3;
  STACK[0x288] = result;
  LOBYTE(STACK[0x290]) = 0;
  return result;
}

uint64_t sub_18E1E8A9C(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v3 - 104) = a2 & 1;
  *(v2 + 1919) = 6;
  return result;
}

unint64_t sub_18E1E8AE8()
{

  return sub_18E2AE554();
}

unint64_t sub_18E1E8B0C()
{
  result = qword_1ED6A87F8;
  if (!qword_1ED6A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A87F8);
  }

  return result;
}

uint64_t sub_18E1E8B60()
{

  sub_18E1C9934(v0 + 4);
  sub_18E1C9934(v0 + 9);
  if (v0[17])
  {
    sub_18E1C9934(v0 + 14);
  }

  if (v0[22])
  {
    sub_18E1C9934(v0 + 19);
  }

  if (v0[27])
  {
    sub_18E1C9934(v0 + 24);
  }

  if (v0[32])
  {
    sub_18E1C9934(v0 + 29);
  }

  if (v0[37])
  {
    sub_18E1C9934(v0 + 34);
  }

  sub_18E1D48C0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E1E8BF4()
{

  sub_18E1C9934((v0 + 32));
  sub_18E1C9934((v0 + 72));
  sub_18E1E2C84();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E1E8C38(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_18E1C82B8();
  (*v3)(a2);
  return a2;
}

void InferenceProvider.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v3 = v2;
  sub_18E2706EC(&qword_1EABE3338, &qword_18E4B0EC0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  sub_18E1CAFF0();
  sub_18E1C5628(v0);
  sub_18E1EA49C();
  sub_18E1E6880();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v1)
  {
    sub_18E1C9934(v0);
  }

  else
  {
    sub_18E1E8554();
    v5 = sub_18E44F22C();
    v7 = v6;
    sub_18E1C5774();
    sub_18E1E8554();
    v8 = sub_18E44F1DC();
    v9 = sub_18E1E2088();
    v10(v9);
    *v3 = v5;
    *(v3 + 8) = v7;
    *(v3 + 16) = v8;

    sub_18E1C9934(v0);
  }

  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t _s12ModelCatalog7UseCaseV13AssetRequiredOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 4);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

uint64_t sub_18E1E8EEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E2706EC(a2, a3);
  sub_18E1C4EEC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18E1E8F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E2706EC(a2, a3);
  sub_18E1C82B8();
  (*(v4 + 8))(a1);
  return a1;
}

void ManagedRuntimeInformation.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  sub_18E2706EC(&qword_1EABE33C8, &qword_18E4B0F30);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C61D0();
  sub_18E1C5628(v2);
  sub_18E1EA24C();
  sub_18E1E6A9C();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v2);
  }

  else
  {
    sub_18E1EA2A0();
    sub_18E212018();
    sub_18E2233D4();
    sub_18E44F26C();
    v15 = v18;
    v16 = v19;
    v14 = v20;
    v17[0] = 1;
    sub_18E212018();
    sub_18E2233D4();
    sub_18E44F20C();
    v11 = v18;
    v13 = v19;
    v6 = v20;
    LOBYTE(v18) = 2;
    v10 = sub_18E44F1CC();
    v12 = v7;
    v29 = 3;
    sub_18E1FEDCC();
    sub_18E212018();
    sub_18E2233D4();
    sub_18E44F26C();
    v8 = sub_18E1E2F3C();
    v9(v8);
    v33 = v30;
    v34 = v31;
    v35 = v32;
    *v17 = v15;
    *&v17[8] = v16;
    v17[16] = v14;
    *&v17[24] = v11;
    *&v17[32] = v13;
    v17[40] = v6;
    *&v17[48] = v10;
    *&v17[56] = v12;
    v17[96] = v32;
    *&v17[64] = v30;
    *&v17[80] = v31;
    memcpy(v4, v17, 0x61uLL);
    sub_18E1FF650(v17, &v18);
    sub_18E1C9934(v2);
    v18 = v15;
    v19 = v16;
    v20 = v14;
    v21 = v11;
    v22 = v13;
    v23 = v6;
    v24 = v10;
    v25 = v12;
    v26 = v33;
    v27 = v34;
    v28 = v35;
    sub_18E1FF6D4(&v18);
  }

  sub_18E1CEAC4();
  sub_18E1C6650();
}

void ResourceConfiguration.init(from:)()
{
  sub_18E1C62A0();
  v4 = v3;
  v6 = v5;
  v43 = sub_18E2706EC(&qword_1EABE3380, &qword_18E4B0F00);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1CAFF0();
  sub_18E1C5628(v4);
  sub_18E1E9F68();
  sub_18E1E6880();
  sub_18E44F4DC();
  if (v1)
  {
    sub_18E1E1A90();
    sub_18E1C9934(v4);
    if (v0)
    {

      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v6)
    {
LABEL_5:
      if (v2)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }

    if (v2)
    {
LABEL_6:

      if ((v43 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!v43)
    {
      goto LABEL_12;
    }

LABEL_11:
    v45 = *&v67[7];
    v46 = *&v67[23];
    v47[0] = *&v67[39];
    *(v47 + 10) = *&v67[49];
    sub_18E327C3C(&v45, &qword_1EABE2FB8);
    goto LABEL_12;
  }

  v42 = v6;
  LOBYTE(v45) = 0;
  sub_18E22EA90();
  v8 = sub_18E44F22C();
  v41 = v9;
  sub_18E234654(1);
  v31 = sub_18E44F22C();
  v40 = v10;
  sub_18E234654(2);
  v30 = sub_18E44F22C();
  v39 = v11;
  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E211300(&unk_1ED6A8378);
  sub_18E1C977C();
  sub_18E22EA90();
  sub_18E44F26C();
  v38 = v45;
  sub_18E234654(4);
  v29 = sub_18E44F23C();
  sub_18E2706EC(&qword_1EABE3350, &qword_18E4B0ED8);
  sub_18E3278C8();
  sub_18E1C977C();
  sub_18E22EA90();
  sub_18E44F26C();
  v37 = v45;
  sub_18E2706EC(&unk_1EABE3358, &qword_18E4B0EE0);
  sub_18E32794C();
  sub_18E1C977C();
  sub_18E22EA90();
  sub_18E44F20C();
  v36 = v45;
  sub_18E234654(7);
  v28 = sub_18E44F23C();
  v61 = 8;
  sub_18E1FEE30();
  sub_18E1CF320();
  sub_18E44F20C();
  *&v67[7] = v62;
  *&v67[23] = v63;
  *&v67[39] = *v64;
  *&v67[49] = *&v64[10];
  sub_18E234654(9);
  v12 = sub_18E44F1CC();
  v35 = v13;
  v14 = v12;
  sub_18E2706EC(&qword_1EABE3368, &qword_18E4B0EE8);
  sub_18E3279D0();
  sub_18E1C977C();
  sub_18E22EA90();
  sub_18E44F20C();
  v34 = v45;
  sub_18E2706EC(&qword_1EABE3370, &qword_18E4B0EF0);
  sub_18E327A54();
  v15 = sub_18E1C977C();
  sub_18E1E8954(v15, v16, v17, v18, v19);
  v33 = v45;
  sub_18E2706EC(&qword_1EABE3378, &qword_18E4B0EF8);
  LOBYTE(v44[0]) = 12;
  sub_18E327AD8();
  v20 = sub_18E1C977C();
  sub_18E1E8954(v20, v21, v22, v23, v24);
  v32 = v45;
  v60 = 13;
  v25 = sub_18E44F1DC();
  v26 = sub_18E22186C();
  v27(v26);
  v44[0] = v8;
  v44[1] = v41;
  v44[2] = v31;
  v44[3] = v40;
  v44[4] = v30;
  v44[5] = v39;
  v44[6] = v38;
  LOBYTE(v44[7]) = v29 & 1;
  v44[8] = v37;
  v44[9] = v36;
  LOBYTE(v44[10]) = v28 & 1;
  memcpy(&v44[10] + 1, v67, 0x41uLL);
  v44[19] = v14;
  v44[20] = v35;
  v44[21] = v34;
  v44[22] = v33;
  v44[23] = v32;
  LOBYTE(v44[24]) = v25;
  memcpy(v42, v44, 0xC1uLL);
  sub_18E200C0C(v44, &v45);
  sub_18E1C9934(v4);
  *&v45 = v8;
  *(&v45 + 1) = v41;
  *&v46 = v31;
  *(&v46 + 1) = v40;
  *&v47[0] = v30;
  *(&v47[0] + 1) = v39;
  *&v47[1] = v38;
  BYTE8(v47[1]) = v29 & 1;
  *(&v47[1] + 9) = v68[0];
  HIDWORD(v47[1]) = *(v68 + 3);
  v48 = v37;
  v49 = v36;
  v50 = v28 & 1;
  memcpy(v51, v67, sizeof(v51));
  v52 = v65;
  v53 = v66;
  v54 = v14;
  v55 = v35;
  v56 = v34;
  v57 = v33;
  v58 = v32;
  v59 = v25;
  sub_18E1FE044(&v45);
LABEL_12:
  sub_18E221740();
  sub_18E1C6650();
}

void ResourceBundleIdentifier.init(from:)()
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v12 = v2;
  type metadata accessor for ResourceBundleIdentifier.CodingKeys(255, v3, v4, v5);
  sub_18E24528C();
  swift_getWitnessTable();
  sub_18E44F29C();
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CAFF0();
  sub_18E1E15F4(v0, v0[3]);
  sub_18E1E3634();
  sub_18E44F4DC();
  if (!v1)
  {
    sub_18E1E8554();
    v7 = sub_18E44F22C();
    v9 = v8;
    v10 = sub_18E1E2088();
    v11(v10);
    *v12 = v7;
    v12[1] = v9;
  }

  sub_18E1C9934(v0);
  sub_18E1E2968();
  sub_18E1C6650();
}

uint64_t sub_18E1E9C80()
{
  v4 = *(v1 + 216);
  *(v0 + 96) = *(v1 + 200);
  *(v0 + 112) = v4;
  *(v0 + 128) = *(v2 - 96);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
}

unint64_t sub_18E1E9CB4()
{
  result = qword_1ED6A8338;
  if (!qword_1ED6A8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8338);
  }

  return result;
}

unint64_t sub_18E1E9D4C()
{
  result = qword_1ED6A8830;
  if (!qword_1ED6A8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8830);
  }

  return result;
}

uint64_t sub_18E1E9DAC@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 10) = a4;
  *(a7 + 11) = a5;
  *(a7 + 12) = a6;
  return result;
}

unint64_t sub_18E1E9E20()
{
  result = qword_1ED6A8568;
  if (!qword_1ED6A8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8568);
  }

  return result;
}

uint64_t sub_18E1E9E7C(char a1)
{
  if (a1)
  {
    return 0x746E6169726176;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t _s12ModelCatalog21LLMCompileDraftBundleV10CodingKeysOwet_0_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

unint64_t sub_18E1E9F68()
{
  result = qword_1ED6A88D8;
  if (!qword_1ED6A88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88D8);
  }

  return result;
}

void *sub_18E1E9FEC()
{

  return memcpy(v1, (v0 + 32), 0xC8uLL);
}

unint64_t sub_18E1EA030(char a1)
{
  result = 0x656372756F736572;
  switch(a1)
  {
    case 1:
      result = 0x614E656372756F73;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x64616F6C65646973;
      break;
    case 5:
      result = 0x69646E6F63657270;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6361427465737361;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0x6E49646574736F68;
      break;
    case 10:
      result = 1936154996;
      break;
    case 11:
      result = 0x7365736143657375;
      break;
    case 12:
      result = 0x6D726F6674616C70;
      break;
    case 13:
      result = 0x5663696D616E7964;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E1EA24C()
{
  result = qword_1ED6A88B0;
  if (!qword_1ED6A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A88B0);
  }

  return result;
}

unint64_t sub_18E1EA2A0()
{
  result = qword_1ED6A8580;
  if (!qword_1ED6A8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8580);
  }

  return result;
}

unint64_t sub_18E1EA2FC(char a1)
{
  result = 0x65636E6174736E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 1953722211;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

_BYTE *_s12ModelCatalog7UseCaseV13AssetRequiredOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E1EA458);
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1EA49C()
{
  result = qword_1ED6A8950;
  if (!qword_1ED6A8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8950);
  }

  return result;
}

uint64_t sub_18E1EA4F0(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_18E1EA540()
{

  return sub_18E44F35C();
}

void sub_18E1EA590(uint64_t *a1@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
}

void sub_18E1EA5B8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void sub_18E1EA5F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_18E1EA638(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_18E1FD0BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL;
  v3 = static Sideload.fetchResources(at:)(v0 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL);
  v4 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources;
  sub_18E1D61E0(v1 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources, v10);
  *(v1 + v4) = v3;

  v5 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources;
  swift_beginAccess();
  v6 = *(v1 + v5);

  sub_18E201DF0();
  v9[0] = v6;
  sub_18E1C6488();
  sub_18E231EE8(v7);
  static Sideload.fetchResourceBundles(at:resources:)(v1 + v2, v6);
  sub_18E221CB8();

  v8 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResourceBundles;
  sub_18E1D61E0(v1 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResourceBundles, v9);
  *(v1 + v8) = v9;
}

uint64_t CatalogIndex.init(sideloadURL:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResources) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadedResourceBundles) = v3;
  v4 = OBJC_IVAR____TtC12ModelCatalog12CatalogIndex_sideloadURL;
  v5 = sub_18E44E54C();
  sub_18E1D7EA8();
  v7 = v6;
  (*(v6 + 16))(v1 + v4, a1, v5);
  sub_18E1FD0BC();
  (*(v7 + 8))(a1, v5);
  return v1;
}

void *CatalogClient.init()()
{
  v1 = v0;
  v0[2] = 0;
  if (qword_1ED6A94F8 != -1)
  {
    sub_18E1C5C20(&qword_1ED6A94F8);
  }

  v2 = sub_18E44E83C();
  sub_18E1CE8B4(v2, qword_1ED6A98C0);
  v3 = sub_18E44E80C();
  sub_18E44EE2C();
  v4 = sub_18E223CA0();
  if (os_log_type_enabled(v4, v5))
  {
    sub_18E1CAE28();
    *swift_slowAlloc() = 0;
    sub_18E1D4AC0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v11 = type metadata accessor for SubscriptionManagerProvider();
  sub_18E1CC494();
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_opt_self() sharedManager];
  v1[6] = v11;
  v1[7] = &protocol witness table for SubscriptionManagerProvider;
  v1[3] = v12;
  if (qword_1ED6A8A90 != -1)
  {
    swift_once();
  }

  v1[8] = qword_1ED6A8728;
  sub_18E2706EC(&qword_1EABE1008, &qword_18E49DAA0);
  v13 = swift_allocObject();

  v1[2] = sub_18E202F9C(v14, v13);

  return v1;
}

void *sub_18E1FD9F4(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_18E2706EC(&qword_1EABE91A0, qword_18E4E2D78);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v2[4] = 0;
  v2[5] = 0;
  v2[3] = v7;
  if (qword_1ED6A8358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_18E202008(&xmmword_1ED6A7B48, v38, &qword_1EABE9198, &qword_18E4E2D58);
  v8 = v38[3];
  sub_18E1E8EEC(v38, &qword_1EABE9198, &qword_18E4E2D58);
  if (!v8)
  {
    if (!a2)
    {
      type metadata accessor for CatalogClient();
      swift_allocObject();
      CatalogClient.init()();
    }

    v10 = sub_18E207C7C(v9);
    v11 = sub_18E203028(v10);
    if (v3)
    {
    }

    else
    {
      v12 = v11;

      v13 = *&v12[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens];
      if (v13)
      {
        if (*(v13 + 16))
        {
        }

        else
        {
          v23 = qword_1ED6A94F8;

          if (v23 != -1)
          {
            swift_once();
          }

          v24 = sub_18E44E83C();
          sub_18E1C95EC(v24, qword_1ED6A98C0);

          v25 = sub_18E44E80C();
          v26 = sub_18E44EE2C();

          v39 = v25;
          if (os_log_type_enabled(v25, v26))
          {
            buf = swift_slowAlloc();
            loga = swift_slowAlloc();
            v38[0] = loga;
            *buf = 136315138;
            v35 = v26;
            v27 = MEMORY[0x193ACC430](a1, MEMORY[0x1E69E6158]);
            v29 = v28;

            v30 = sub_18E1C9624(v27, v29, v38);

            *(buf + 4) = v30;
            v31 = v39;
            _os_log_impl(&dword_18E1C1000, v39, v35, "CoherentAssetLock: empty tokens in response: %s", buf, 0xCu);
            sub_18E1C9934(loga);
            MEMORY[0x193ACD400](loga, -1, -1);
            MEMORY[0x193ACD400](buf, -1, -1);
          }

          else
          {
          }
        }

        v4[2] = v13;
        return v4;
      }

      if (qword_1ED6A94F8 != -1)
      {
        swift_once();
      }

      v14 = sub_18E44E83C();
      sub_18E1C95EC(v14, qword_1ED6A98C0);

      v15 = sub_18E44E80C();
      v16 = sub_18E44EE0C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v38[0] = v39;
        *v17 = 136315138;
        v18 = MEMORY[0x193ACC430](a1, MEMORY[0x1E69E6158]);
        log = v15;
        v20 = v19;

        v21 = sub_18E1C9624(v18, v20, v38);

        *(v17 + 4) = v21;
        v15 = log;
        _os_log_impl(&dword_18E1C1000, log, v16, "CoherentAssetLock: no tokens in response: %s", v17, 0xCu);
        v22 = v39;
        sub_18E1C9934(v39);
        MEMORY[0x193ACD400](v22, -1, -1);
        MEMORY[0x193ACD400](v17, -1, -1);
      }

      else
      {
      }

      sub_18E3FDB10();
      swift_allocError();
      *v32 = 0xD000000000000028;
      *(v32 + 8) = 0x800000018E478340;
      *(v32 + 16) = 1;
      swift_willThrow();
    }

    type metadata accessor for CoherentAssetLock();
    swift_deallocPartialClassInstance();
    return v4;
  }

  result = sub_18E44F14C();
  __break(1u);
  return result;
}

uint64_t sub_18E1FDF7C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_18E1FDFE0(*(a1 + *a3), *(a1 + *a3 + 8));
}

uint64_t sub_18E1FDFE0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void CostProfile.init(from:)()
{
  sub_18E1C62A0();
  v2 = v1;
  v4 = v3;
  sub_18E2706EC(&unk_1EABE3400, &qword_18E4B0F50);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1E88C0();
  sub_18E1C5628(v2);
  sub_18E200570();
  sub_18E1E1F54();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (v0)
  {
    sub_18E1C9934(v2);
  }

  else
  {
    LOBYTE(v28) = 0;
    v6 = sub_18E44F25C();
    sub_18E1C63D0(1);
    v7 = sub_18E44F23C();
    sub_18E1C63D0(3);
    v38 = sub_18E44F23C();
    sub_18E1C63D0(2);
    v37 = sub_18E44F23C();
    sub_18E1C63D0(4);
    v23 = sub_18E44F1DC();
    sub_18E1C63D0(5);
    v22 = sub_18E44F1DC();
    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    LOBYTE(v25) = 6;
    sub_18E211300(&unk_1ED6A8378);
    sub_18E44F20C();
    v20 = v7;
    if (v28)
    {
      v8 = v28;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    sub_18E1C63D0(7);
    v9 = sub_18E44F1FC();
    v18 = v10;
    v19 = v9;
    sub_18E1C63D0(8);
    v11 = sub_18E44F1DC();
    v21 = v20 & 1;
    v17 = v38 & 1;
    v39 = v23 & 1;
    v12 = v19;
    if (v18)
    {
      v12 = 1;
    }

    v24 = v12;
    v13 = sub_18E1CD934();
    v14(v13);
    v15 = v11 & 1;
    *&v25 = v6;
    BYTE8(v25) = v21;
    BYTE9(v25) = v37 & 1;
    BYTE10(v25) = v17;
    BYTE11(v25) = v39;
    BYTE12(v25) = v22 & 1;
    *&v26 = v8;
    *(&v26 + 1) = v24;
    LOBYTE(v27) = v15;
    *(v4 + 32) = v15;
    v16 = v26;
    *v4 = v25;
    *(v4 + 16) = v16;
    sub_18E327BB0(&v25, &v28);
    sub_18E1C9934(v2);
    v28 = v6;
    v29 = v21;
    v30 = v37 & 1;
    v31 = v17;
    v32 = v39;
    v33 = v22 & 1;
    v34 = v8;
    v35 = v24;
    v36 = v15;
    sub_18E292124(&v28);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E1FE3F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E1FFB68(*a1, a1[1]);
  *a2 = result;
  return result;
}

void UseCase.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  sub_18E1C62A0();
  sub_18E1E8AB4();
  v18 = v17;
  v19 = sub_18E2706EC(&unk_1EABE34C0, &unk_18E4B0FE0);
  sub_18E1C4EAC();
  v21 = v20;
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1CAFF0();
  sub_18E1C5628(v14);
  sub_18E200840();
  sub_18E1E6880();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v15)
  {
    sub_18E200894();
    sub_18E1E67E0();
    sub_18E44F26C();
    sub_18E237084();
    sub_18E1E8554();
    v23 = sub_18E44F23C();
    sub_18E2001C4();
    sub_18E1E67E0();
    sub_18E44F26C();
    (*(v21 + 8))(v16, v19);
    *v18 = a14;
    v18[1] = v23 & 1;
    v18[2] = a11;
  }

  sub_18E1C9934(v14);
  sub_18E1E2968();
  sub_18E1C6650();
}

void UseCase.AssetRequired.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E1C62A0();
  v27 = v26;
  v63 = v28;
  sub_18E2706EC(&qword_1EABE3488, &qword_18E4B0FB0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1E1710(v30, v61);
  sub_18E2706EC(&qword_1EABE3490, &qword_18E4B0FB8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1E6530(v32, v62);
  sub_18E2706EC(&qword_1EABE3498, &qword_18E4B0FC0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CAFF0();
  v34 = sub_18E2706EC(&qword_1EABE34A0, &qword_18E4B0FC8);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1E88C0();
  sub_18E2706EC(&qword_1EABE34A8, &qword_18E4B0FD0);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1C57AC();
  sub_18E1DD34C(v27, v27[3]);
  sub_18E200B50();
  sub_18E1E2A60();
  sub_18E44F4DC();
  if (v24)
  {
    goto LABEL_8;
  }

  v37 = sub_18E44F28C();
  sub_18E1FF648(v37, 0);
  if (v39 == v38 >> 1)
  {
    goto LABEL_7;
  }

  sub_18E1CFAD8();
  if (v43 >= (v42 >> 1))
  {
    __break(1u);
    JUMPOUT(0x18E1FEB60);
  }

  v25 = *(v41 + v40);
  sub_18E200384(v40 + 1);
  v45 = v44;
  v47 = v46;
  swift_unknownObjectRelease();
  if (v45 != v47 >> 1)
  {
LABEL_7:
    v51 = sub_18E44F04C();
    sub_18E1C8558(v51, MEMORY[0x1E69E6B28]);
    sub_18E1E63CC();
    sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0);
    *v25 = &type metadata for UseCase.AssetRequired;
    v52 = sub_18E44F1BC();
    sub_18E1E14C8(v52);
    sub_18E1D0370();
    v53 = sub_18E220234();
    v54(v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v55 = sub_18E1D0120();
    v56(v55);
LABEL_8:
    sub_18E1C9934(v27);
    goto LABEL_9;
  }

  switch(v25)
  {
    case 1uLL:
      sub_18E237084();
      sub_18E1E8B0C();
      sub_18E22410C();
      sub_18E44F1AC();
      swift_unknownObjectRelease();
      goto LABEL_13;
    case 2uLL:
      sub_18E1E33AC();
      sub_18E22476C();
      sub_18E22410C();
      sub_18E44F1AC();
      swift_unknownObjectRelease();
LABEL_13:
      v48 = sub_18E221F34();
      goto LABEL_14;
    case 3uLL:
      sub_18E23346C();
      sub_18E327E44();
      sub_18E22410C();
      sub_18E44F1AC();
      swift_unknownObjectRelease();
      v57 = sub_18E1E2F3C();
      v58(v57);
      goto LABEL_15;
    default:
      sub_18E327E98();
      sub_18E22410C();
      sub_18E44F1AC();
      swift_unknownObjectRelease();
      v48 = sub_18E221F34();
      v50 = v34;
LABEL_14:
      v49(v48, v50);
LABEL_15:
      v59 = sub_18E2016D4();
      v60(v59);
      *v63 = v25;
      sub_18E1C9934(v27);
      break;
  }

LABEL_9:
  sub_18E233284();
  sub_18E1C6650();
}

uint64_t UseCaseIdentifier.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_18E2706EC(&qword_1EABE1248, &qword_18E49E5F8);
  sub_18E1C4EAC();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_18E1E15F4(a1, a1[3]);
  sub_18E1FFB10();
  sub_18E44F4DC();
  if (!v2)
  {
    sub_18E200A3C();
    sub_18E44F26C();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return sub_18E1C9934(a1);
}

uint64_t sub_18E1FECD0@<X0>(uint64_t a1@<X8>)
{

  return sub_18E2491A4(v2 + 8, (a1 - 32) | 0x8000000000000000, v1);
}

void *sub_18E1FECF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return memcpy(va, (v9 - 248), 0xC1uLL);
}

void *sub_18E1FED0C()
{

  return memcpy(v1, (v0 + 24), 0xC8uLL);
}

void sub_18E1FED28(uint64_t a1@<X8>)
{
  *(v2 + 320) = v1;
  *(v2 + 328) = a1;
  *(v2 + 336) = 256;
  *(v2 + 344) = a1;
}

uint64_t sub_18E1FED68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 352) = a7;
  *(v7 - 360) = a6;
  *(v7 - 368) = a5;
  *(v7 - 376) = a4;
  *(v7 - 336) = a3;
  *(v7 - 344) = a2;

  return sub_18E44E83C();
}

unint64_t sub_18E1FEDCC()
{
  result = qword_1ED6A8668;
  if (!qword_1ED6A8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8668);
  }

  return result;
}

unint64_t sub_18E1FEE30()
{
  result = qword_1ED6A8520;
  if (!qword_1ED6A8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8520);
  }

  return result;
}

void AssetSubscriptionInformation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E1C62A0();
  v26 = v25;
  v28 = v27;
  sub_18E2706EC(&unk_1EABE33A8, &qword_18E4B0F20);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1C61D0();
  v30 = sub_18E1E6BB0();
  sub_18E1DD34C(v30, v31);
  sub_18E1FF21C();
  sub_18E1E2294();
  sub_18E44F4DC();
  if (v24)
  {
    sub_18E1C9934(v26);
  }

  else
  {
    sub_18E2209B0();
    v32 = sub_18E44F22C();
    v46 = v33;
    sub_18E1E1080(1);
    v34 = sub_18E44F22C();
    v45 = v35;
    v43 = v34;
    LOBYTE(v50[0]) = 2;
    sub_18E2233D4();
    v42 = sub_18E44F22C();
    v44 = v36;
    sub_18E1E1080(3);
    v41 = sub_18E44F1FC();
    v53 = v37 & 1;
    sub_18E1FF958();
    sub_18E2209B0();
    sub_18E44F20C();
    v38 = sub_18E201A64();
    v39(v38);
    *&v47 = v32;
    *(&v47 + 1) = v46;
    *&v48 = v43;
    *(&v48 + 1) = v45;
    *&v49[0] = v42;
    *(&v49[0] + 1) = v44;
    *&v49[1] = v41;
    BYTE8(v49[1]) = v53;
    BYTE9(v49[1]) = a14;
    v40 = v48;
    *v28 = v47;
    v28[1] = v40;
    v28[2] = v49[0];
    *(v28 + 42) = *(v49 + 10);
    sub_18E1FFAA0(&v47, v50);
    sub_18E1C9934(v26);
    v50[0] = v32;
    v50[1] = v46;
    v50[2] = v43;
    v50[3] = v45;
    v50[4] = v42;
    v50[5] = v44;
    v50[6] = v41;
    v51 = v53;
    v52 = a14;
    sub_18E1FFAD8(v50);
  }

  sub_18E1E19E4();
  sub_18E1C6650();
}

uint64_t sub_18E1FF198(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_18E1CFA04(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return sub_18E1CFA04((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_18E1CFA04((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_18E1CFA04(v8);
}

unint64_t sub_18E1FF21C()
{
  result = qword_1ED6A8548;
  if (!qword_1ED6A8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8548);
  }

  return result;
}

void *sub_18E1FF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t __dst, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&__dst, &__src, 0xD8uLL);
}

uint64_t sub_18E1FF300(uint64_t result)
{
  *(result + 104) = 5;
  *(result + 112) = 3419698;
  *(result + 120) = 0xE300000000000000;
  return result;
}

unint64_t sub_18E1FF33C(char a1)
{
  result = 0x6563697665446E6FLL;
  switch(a1)
  {
    case 1:
      result = 0x6C62616568636163;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6C6E5564696F7661;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x736F437265776F70;
      break;
    case 8:
      result = 0x6E55726566657270;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CostProfile.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x18E1FF560);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CostProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_18E1FF610(uint64_t a1, uint64_t a2)
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
    sub_18E1C7E58();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_18E1FF6AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_18E200218(a2, a3);
  *a1 = result;
  return result;
}

unint64_t sub_18E1FF7B0(char a1)
{
  result = 0x6269726373627573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7465537465737361;
      break;
    case 3:
      result = 7107700;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_18E1FF874(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E1FF930);
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1FF958()
{
  result = qword_1ED6A8350;
  if (!qword_1ED6A8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestResourcesKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x18E1FFA78);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E1FFB10()
{
  result = qword_1ED6A8A80;
  if (!qword_1ED6A8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A80);
  }

  return result;
}

uint64_t sub_18E1FFB68(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E44F3EC();

  v3 = 0;
  result = 33;
  switch(v2)
  {
    case 0:
      goto LABEL_105;
    case 1:
      v3 = 1;
      goto LABEL_105;
    case 2:
      v3 = 2;
      goto LABEL_105;
    case 3:
      v3 = 3;
      goto LABEL_105;
    case 4:
      v3 = 4;
      goto LABEL_105;
    case 5:
      v3 = 5;
      goto LABEL_105;
    case 6:
      v3 = 6;
      goto LABEL_105;
    case 7:
      v3 = 7;
      goto LABEL_105;
    case 8:
      v3 = 8;
      goto LABEL_105;
    case 9:
      v3 = 9;
      goto LABEL_105;
    case 10:
      v3 = 10;
      goto LABEL_105;
    case 11:
      v3 = 11;
      goto LABEL_105;
    case 12:
      v3 = 12;
      goto LABEL_105;
    case 13:
      v3 = 13;
      goto LABEL_105;
    case 14:
      v3 = 14;
      goto LABEL_105;
    case 15:
      v3 = 15;
      goto LABEL_105;
    case 16:
      v3 = 16;
      goto LABEL_105;
    case 17:
      v3 = 17;
      goto LABEL_105;
    case 18:
      v3 = 18;
      goto LABEL_105;
    case 19:
      v3 = 19;
      goto LABEL_105;
    case 20:
      v3 = 20;
      goto LABEL_105;
    case 21:
      v3 = 21;
      goto LABEL_105;
    case 22:
      v3 = 22;
      goto LABEL_105;
    case 23:
      v3 = 23;
      goto LABEL_105;
    case 24:
      v3 = 24;
      goto LABEL_105;
    case 25:
      v3 = 25;
      goto LABEL_105;
    case 26:
      v3 = 26;
      goto LABEL_105;
    case 27:
      v3 = 27;
      goto LABEL_105;
    case 28:
      v3 = 28;
      goto LABEL_105;
    case 29:
      v3 = 29;
      goto LABEL_105;
    case 30:
      v3 = 30;
      goto LABEL_105;
    case 31:
      v3 = 31;
      goto LABEL_105;
    case 32:
      v3 = 32;
LABEL_105:
      result = v3;
      break;
    case 33:
      return result;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    default:
      result = 126;
      break;
  }

  return result;
}

unint64_t sub_18E2001C4()
{
  result = qword_1ED6A8280;
  if (!qword_1ED6A8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8280);
  }

  return result;
}

uint64_t sub_18E200218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6975716552746F6ELL && a2 == 0xEB00000000646572;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001FLL && 0x800000018E468540 == a2;
    if (v6 || (sub_18E44F3CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000018E468560 == a2;
      if (v7 || (sub_18E44F3CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000018E468580 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E44F3CC();

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

uint64_t sub_18E20038C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_18E200408(char a1)
{
  result = 0x6975716552746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18E2004BC()
{
  result = qword_1ED6A83E0;
  if (!qword_1ED6A83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A83E0);
  }

  return result;
}

void *sub_18E200510()
{

  return memcpy((v0 + 240), (v0 + 456), 0xD8uLL);
}

unint64_t sub_18E200570()
{
  result = qword_1ED6A8A28;
  if (!qword_1ED6A8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8A28);
  }

  return result;
}

void *sub_18E200604()
{

  return memcpy((v0 + 32), (v0 + 232), 0xC1uLL);
}

__n128 *sub_18E200620(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u8[0] = v2;
  return result;
}

void Platform.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_18E1C62A0();
  v21 = v20;
  v23 = v22;
  sub_18E2706EC(&unk_1EABE3448, &qword_18E4B0F80);
  sub_18E1C4EAC();
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v24);
  sub_18E1E88C0();
  sub_18E1C5628(v21);
  sub_18E200BB8();
  sub_18E1E1F54();
  sub_18E1CB000();
  sub_18E44F4DC();
  if (!v19)
  {
    sub_18E2004BC();
    sub_18E1CFC98();
    sub_18E44F26C();
    sub_18E237084();
    v25 = sub_18E44F22C();
    v27 = v26;
    v28 = sub_18E1CD934();
    v29(v28);
    *v23 = BYTE7(a10);
    *(v23 + 8) = v25;
    *(v23 + 16) = v27;
  }

  sub_18E1C9934(v21);
  sub_18E1E29D0();
  sub_18E1C6650();
}

unint64_t sub_18E200840()
{
  result = qword_1ED6A8818;
  if (!qword_1ED6A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8818);
  }

  return result;
}

unint64_t sub_18E200894()
{
  result = qword_1ED6A8910;
  if (!qword_1ED6A8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8910);
  }

  return result;
}

uint64_t sub_18E2008E8(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974704F7369;
  }

  return 0x7165527465737361;
}

_BYTE *sub_18E200958(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_18E1CFA0C(result, v6);
        break;
      case 2:
        result = sub_18E1E831C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x18E200A14);
      case 4:
        result = sub_18E1D5DAC(result, v6);
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
          result = sub_18E1CF770(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E200A3C()
{
  result = qword_1ED6A8B60;
  if (!qword_1ED6A8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RawGuardrailResult.InstanceType.UnknownCodingKeys(unsigned int *a1, int a2)
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

unint64_t sub_18E200AFC()
{
  result = qword_1ED6A8B68[0];
  if (!qword_1ED6A8B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A8B68);
  }

  return result;
}

unint64_t sub_18E200B50()
{
  result = qword_1ED6A82A0;
  if (!qword_1ED6A82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A82A0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UseCase(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t sub_18E200BB8()
{
  result = qword_1ED6A87D8;
  if (!qword_1ED6A87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A87D8);
  }

  return result;
}

uint64_t sub_18E200C68(uint64_t a1, uint64_t a2)
{
  sub_18E212024();
  v4 = *(v2 + 200) == v3 && *(v2 + 208) == 0xE700000000000000;
  if (v4 || (sub_18E1CF50C(), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
  {
    sub_18E235A78();
  }

  else
  {
    static VariantHelpers.createResourceIdentifier(with:variant:)();
    sub_18E1E34A8();
  }

  return sub_18E1C5BFC();
}

uint64_t sub_18E200D4C(char a1)
{
  if (a1)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

ModelCatalog::Platform::PlatformType_optional __swiftcall Platform.PlatformType.init(rawValue:)(Swift::String rawValue)
{
  sub_18E220CF8();
  v2 = sub_18E44F19C();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18E200E00@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_18E200E2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return sub_18E1CFA04(v1);
}

void *sub_18E200E4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va1, a33);
  va_start(__srca, a33);
  __src = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  v43 = va_arg(va1, void);
  v44 = va_arg(va1, void);
  v45 = va_arg(va1, void);
  v46 = va_arg(va1, void);
  v47 = va_arg(va1, void);
  v48 = va_arg(va1, void);
  v49 = va_arg(va1, void);
  v50 = va_arg(va1, void);
  v51 = va_arg(va1, void);
  v52 = va_arg(va1, void);
  v53 = va_arg(va1, void);
  v54 = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);

  return memcpy(&a9, __srca, 0xC1uLL);
}

uint64_t sub_18E200E88@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = v5;
}

uint64_t sub_18E200EA8(uint64_t result)
{
  *(result + 40) = 875444273;
  *(result + 48) = 0xE400000000000000;
  return result;
}

uint64_t sub_18E200EC0(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void AssetBackedLLMBundle.assetBackedResources.getter()
{
  sub_18E1C575C();
  sub_18E221834(v0 + 2);
  sub_18E1CF2D8();
  MEMORY[0x1EEE9AC00](v2);
  sub_18E2F7994();
  v3 = sub_18E1CD9D8();
  (v1)(v3);
  sub_18E220AAC();
  sub_18E211EDC();
  v5 = sub_18E235294(v4);
  if (v7)
  {
    sub_18E1C6560(v6);
    sub_18E211EDC();
    v5 = sub_18E216B58(v233);
  }

  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_18E2112EC();
  (v1)(v8);
  v9 = sub_18E1C5820();
  sub_18E1DF2A8(v9, v10, v11, v12, v13);
  v14 = sub_18E2167D8();
  v15(v14);
  v240 = v0[11];
  v16 = sub_18E1E15F4(v0 + 7, v0[10]);
  sub_18E1C63B0(v16, v17, v18, v19, v20, v21, v22, v23, v240);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v33 = sub_18E1C5D50(v25, v26, v27, v28, v29, v30, v31, v32, v241);
  (v1)(v33);
  sub_18E1D4294();
  if (v7)
  {
    sub_18E1C6560(v34);
    sub_18E211EDC();
    sub_18E216B58(v234);
  }

  sub_18E2236E0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v44 = sub_18E1C8768(v36, v37, v38, v39, v40, v41, v42, v43, v242);
  (v1)(v44);
  v45 = sub_18E1C5820();
  sub_18E1DF2A8(v45, v46, v47, v48, v49);
  v50 = sub_18E1CA2BC();
  v51(v50);
  sub_18E2F66D4((v0 + 12), v257, &qword_1EABE1300, &unk_18E49EDA0);
  if (v258)
  {
    v52 = sub_18E1E8728();
    sub_18E1C551C(v52, v53);
    v244 = v261;
    v54 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v54, v55, v56, v57, v58, v59, v60, v61, v244);
    v63 = MEMORY[0x1EEE9AC00](v62);
    v71 = sub_18E1C5D50(v63, v64, v65, v66, v67, v68, v69, v70, v245);
    (v1)(v71);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v72);
      sub_18E211EDC();
      sub_18E216B58(v235);
    }

    sub_18E2236E0();
    v74 = MEMORY[0x1EEE9AC00](v73);
    v82 = sub_18E1C8768(v74, v75, v76, v77, v78, v79, v80, v81, v246);
    (v1)(v82);
    v83 = sub_18E1C5820();
    sub_18E1DF2A8(v83, v84, v85, v86, v87);
    v88 = sub_18E1CA2BC();
    v89(v88);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE1300, &unk_18E49EDA0);
  }

  sub_18E2F66D4((v0 + 17), v257, &qword_1EABE1308, &unk_18E4AADF0);
  if (v258)
  {
    v90 = sub_18E1E8728();
    sub_18E1C551C(v90, v91);
    v247 = v261;
    v92 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v92, v93, v94, v95, v96, v97, v98, v99, v247);
    v101 = MEMORY[0x1EEE9AC00](v100);
    v109 = sub_18E1C5D50(v101, v102, v103, v104, v105, v106, v107, v108, v248);
    (v1)(v109);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v110);
      sub_18E211EDC();
      sub_18E216B58(v236);
    }

    sub_18E2236E0();
    v112 = MEMORY[0x1EEE9AC00](v111);
    v120 = sub_18E1C8768(v112, v113, v114, v115, v116, v117, v118, v119, v249);
    (v1)(v120);
    v121 = sub_18E1C5820();
    sub_18E1DF2A8(v121, v122, v123, v124, v125);
    v126 = sub_18E1CA2BC();
    v127(v126);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE1308, &unk_18E4AADF0);
  }

  sub_18E2F66D4((v0 + 22), v257, &qword_1EABE1310, &qword_18E49EDB0);
  if (v258)
  {
    v128 = sub_18E1E8728();
    sub_18E1C551C(v128, v129);
    v250 = v261;
    v130 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v130, v131, v132, v133, v134, v135, v136, v137, v250);
    v139 = MEMORY[0x1EEE9AC00](v138);
    v147 = sub_18E1C5D50(v139, v140, v141, v142, v143, v144, v145, v146, v251);
    (v1)(v147);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v148);
      sub_18E211EDC();
      sub_18E216B58(v237);
    }

    sub_18E2236E0();
    v150 = MEMORY[0x1EEE9AC00](v149);
    v158 = sub_18E1C8768(v150, v151, v152, v153, v154, v155, v156, v157, v252);
    (v1)(v158);
    v159 = sub_18E1C5820();
    sub_18E1DF2A8(v159, v160, v161, v162, v163);
    v164 = sub_18E1CA2BC();
    v165(v164);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE1310, &qword_18E49EDB0);
  }

  sub_18E2F66D4((v0 + 27), v257, &qword_1EABE24D8, &qword_18E4AAE00);
  if (v258)
  {
    v166 = sub_18E1E8728();
    sub_18E1C551C(v166, v167);
    v253 = v261;
    v168 = sub_18E1E15F4(v259, v260);
    sub_18E1C63B0(v168, v169, v170, v171, v172, v173, v174, v175, v253);
    v177 = MEMORY[0x1EEE9AC00](v176);
    v185 = sub_18E1C5D50(v177, v178, v179, v180, v181, v182, v183, v184, v254);
    (v1)(v185);
    sub_18E1D4294();
    if (v7)
    {
      sub_18E1C6560(v186);
      sub_18E211EDC();
      sub_18E216B58(v238);
    }

    sub_18E2236E0();
    v188 = MEMORY[0x1EEE9AC00](v187);
    v196 = sub_18E1C8768(v188, v189, v190, v191, v192, v193, v194, v195, v255);
    (v1)(v196);
    v197 = sub_18E1C5820();
    sub_18E1DF2A8(v197, v198, v199, v200, v201);
    v202 = sub_18E1CA2BC();
    v203(v202);
    sub_18E1E86DC();
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE24D8, &qword_18E4AAE00);
  }

  sub_18E2F66D4((v0 + 32), v257, &qword_1EABE24E0, &qword_18E4AAE08);
  if (v258)
  {
    v204 = sub_18E1E8728();
    sub_18E1C551C(v204, v205);
    v206 = v260;
    sub_18E1E15F4(v259, v260);
    sub_18E2349BC();
    sub_18E1C5780();
    v208 = MEMORY[0x1EEE9AC00](v207);
    v216 = sub_18E1E89D0(v208, v209, v210, v211, v212, v213, v214, v215, v243);
    (v1)(v216);
    sub_18E1E597C();
    if (v7)
    {
      sub_18E1C8C60(v217);
      sub_18E1C5068();
      sub_18E211EDC();
      sub_18E216B58(v239);
    }

    sub_18E235258();
    v219 = MEMORY[0x1EEE9AC00](v218);
    sub_18E1CEAD0(v219, v220, v221, v222, v223, v224, v225, v226, v256);
    sub_18E223BDC();
    v1();
    v227 = sub_18E247014();
    sub_18E1DF2A8(v227, v228, v229, v206, v230);
    v231 = sub_18E221A60();
    v232(v231);
    sub_18E1C9934(v259);
  }

  else
  {
    sub_18E1E8F44(v257, &qword_1EABE24E0, &qword_18E4AAE08);
  }

  sub_18E1C5544();
}

void sub_18E201714()
{
  v0[4] = v4;
  v0[5] = v2;
  v0[1] = v5;
  v0[2] = v3;
  v0[7] = *(v1 + 16);
  v0[3] = v1 + 32;
}

uint64_t sub_18E20173C()
{

  return sub_18E44EA6C();
}

uint64_t sub_18E201784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_18E2017A0(uint64_t a1@<X8>)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = a1;
  *(v2 - 96) = 0;
}

unint64_t sub_18E2017AC()
{
  result = qword_1ED6A8330;
  if (!qword_1ED6A8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8330);
  }

  return result;
}

uint64_t sub_18E201808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = sub_18E1E8894(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 216) = 1;
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

      return sub_18E1D8480(result, a2);
    }

    *(result + 216) = 0;
    if (a2)
    {
      return sub_18E1D8480(result, a2);
    }
  }

  return result;
}

BOOL sub_18E201860(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_18E201890()
{
  result = qword_1ED6A8368;
  if (!qword_1ED6A8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8368);
  }

  return result;
}

unint64_t sub_18E2018E4()
{
  result = qword_1ED6A7F10[0];
  if (!qword_1ED6A7F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6A7F10);
  }

  return result;
}

uint64_t sub_18E201938()
{
}

unint64_t sub_18E20197C()
{
  result = qword_1ED6A7D88;
  if (!qword_1ED6A7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7D88);
  }

  return result;
}

void *sub_18E201A04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(__srca, a9);
  __src = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);

  return memcpy(v9, __srca, 0xC8uLL);
}

uint64_t sub_18E201A20()
{
  *v3 = v0;
  v3[1] = v2;
  sub_18E1C551C((v1 + 120), (v3 + 2));
  sub_18E1C551C(v1 + 5, (v3 + 7));

  return sub_18E1C551C((v1 + 40), (v3 + 12));
}

void sub_18E201A74(unsigned __int16 a1@<W8>)
{
  *(v1 + 96) = a1 | 0x20000u;
  *(v1 + 104) = 0;
  *(v1 + 108) = 0;
}

uint64_t sub_18E201A88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_18E1D45EC(v4, a2, a3);
}

uint64_t sub_18E201AA0()
{

  return sub_18E44E50C();
}

uint64_t sub_18E201AC4(__n128 a1, __n128 a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8].n128_u8[0] = *(v3 - 96);
  v2[5].n128_u64[0] = 0;
  v2[5].n128_u64[1] = 0;
}

uint64_t sub_18E201AE4()
{

  return swift_unknownObjectRelease();
}

void *sub_18E201B1C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void *sub_18E201B68(void (*a1)(uint64_t, uint64_t))
{
  v4 = v2;
  v5 = v1;
  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  sub_18E1CADEC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18E49D9B0;
  v7 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
  if (v7 || (sub_18E1E2000(), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
  {
    v8 = *(v5 + 32);
  }

  else
  {
    static VariantHelpers.createResourceIdentifier(with:variant:)();
    v8 = v10;
    v9 = v11;
  }

  *(v6 + 32) = v8;
  *(v6 + 40) = v9;
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();
  result = sub_18E1FD9F4(v6, 0);
  if (!v4)
  {
    v13 = result;
    if (*(v5 + 56))
    {
      a1(result, 0);
    }

    else
    {
      sub_18E204B54();
      a1(v13, 1);
      sub_18E1D04C8();
    }
  }

  return result;
}

uint64_t sub_18E201DF0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = static Catalog.Resource.fetchAllResources()();
  }

  return v1;
}

uint64_t sub_18E201E30(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

void sub_18E201E40()
{

  JUMPOUT(0x193ACBAD0);
}

uint64_t sub_18E201E5C(uint64_t a1)
{

  return MEMORY[0x1EEE6CDF8](a1, v1);
}

uint64_t sub_18E201E80@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_18E2C2284(v2);
}

uint64_t sub_18E201EE0()
{
  v2 = *v0;
  v3 = v0[1];

  return sub_18E2C1568(v2, v3);
}

void *sub_18E201EF8()
{

  return memcpy((v0 + 224), (v0 + 480), 0xD8uLL);
}

uint64_t sub_18E201F20()
{
}

void sub_18E201F38(uint64_t a1)
{

  sub_18E26F1E0(a1, v1, 1);
}

unint64_t sub_18E201F88()
{
  result = qword_1ED6A8348;
  if (!qword_1ED6A8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A8348);
  }

  return result;
}

uint64_t sub_18E202008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18E2706EC(a3, a4);
  sub_18E1C4EEC();
  v5 = sub_18E1C5BFC();
  v6(v5);
  return a2;
}

uint64_t CatalogIndex.__allocating_init()()
{
  v1 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v1);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_18E1D430C();
  sub_18E1C4EAC();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  v9 = v8 - v7;
  v10 = sub_18E44E54C();
  sub_18E1C4EEC();
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E1E2C60();
  (*(v5 + 104))(v9, *MEMORY[0x1E6968F58], v3);
  sub_18E201DC8(v0, 1, 1, v10);
  sub_18E1D5ED0();
  sub_18E44E51C();
  type metadata accessor for CatalogIndex(0);
  swift_allocObject();
  v12 = sub_18E1D4560();
  CatalogIndex.init(sideloadURL:)(v12);
  return v3;
}

uint64_t static Sideload.fetchResources(at:)(uint64_t a1)
{
  if (qword_1ED6A94A8 != -1)
  {
    sub_18E1C8394();
    swift_once();
  }

  if (byte_1ED6A98A0)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_18E2022AC(a1, 0x656372756F736572, 0xE800000000000000, &v7);
    result = v7;
    if (v1)
    {
    }
  }

  else
  {
    v4 = sub_18E1DD2D0();
    v5 = sub_18E1C8558(&type metadata for CatalogErrors.SideloadError, v4);
    return sub_18E1C56E0(v5, v6);
  }

  return result;
}

uint64_t sub_18E2022AC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t *a4)
{
  v5 = v4;
  v93 = a3;
  v99[5] = *MEMORY[0x1E69E9840];
  v92 = sub_18E44E54C();
  v8 = *(v92 - 1);
  v9 = MEMORY[0x1EEE9AC00](v92);
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v80 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v83 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v80 - v15;
  if (qword_1ED6A94A8 != -1)
  {
LABEL_43:
    swift_once();
  }

  if (byte_1ED6A98A0 != 1)
  {
    sub_18E3064D0();
    swift_allocError();
    *v36 = 0xD000000000000029;
    *(v36 + 8) = 0x800000018E477B00;
    *(v36 + 16) = 2;
    return swift_willThrow();
  }

  v80 = a4;
  v17 = [objc_opt_self() defaultManager];
  v18 = sub_18E44E4AC();
  v99[0] = 0;
  v19 = [v17 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:5 error:v99];

  v20 = v99[0];
  if (!v19)
  {
    v79 = v99[0];
    sub_18E44E44C();

    return swift_willThrow();
  }

  v87 = v5;
  v21 = v92;
  v22 = sub_18E44EC9C();
  v23 = v20;

  a4 = v21;
  v5 = 0;
  v91 = *(v22 + 16);
  v94 = (v8 + 8);
  v95 = v8 + 16;
  v88 = (v8 + 32);
  v81 = MEMORY[0x1E69E7CC0];
  while (v91 != v5)
  {
    if (v5 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_43;
    }

    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = *(v8 + 72);
    (*(v8 + 16))(v16, v22 + v24 + v25 * v5, a4);
    if (sub_18E44E47C() == a2 && v26 == v93)
    {

LABEL_14:
      v29 = *v88;
      (*v88)(v89, v16, v92);
      v30 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v30;
      v99[0] = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18E26F240();
        v32 = v99[0];
      }

      v33 = v32[2];
      v34 = (v33 + 1);
      if (v33 >= v32[3] >> 1)
      {
        v85 = v29;
        v86 = (v33 + 1);
        sub_18E26F240();
        v34 = v86;
        v29 = v85;
        v32 = v99[0];
      }

      ++v5;
      v32[2] = v34;
      v81 = v32;
      v35 = v32 + v24 + v33 * v25;
      a4 = v92;
      v29(v35, v89, v92);
    }

    else
    {
      v28 = sub_18E44F3CC();

      if (v28)
      {
        goto LABEL_14;
      }

      a4 = v92;
      (*v94)(v16, v92);
      ++v5;
    }
  }

  v38 = v81[2];
  if (v38)
  {
    v39 = v81 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v89 = *(v8 + 72);
    v93 = *(v8 + 16);
    *&v37 = 136315394;
    v82 = v37;
    v40 = v87;
    v41 = v83;
    do
    {
      v93(v41, v39, a4);
      v42 = sub_18E44E58C();
      v44 = v40;
      if (v40)
      {
        v40 = 0;
        v48 = v90;
        if (qword_1ED6A94F8 != -1)
        {
          swift_once();
        }

        v49 = sub_18E44E83C();
        sub_18E1C95EC(v49, qword_1ED6A98C0);
        v93(v48, v41, a4);
        v50 = v44;
        v51 = sub_18E44E80C();
        v52 = v41;
        v53 = sub_18E44EE2C();

        LODWORD(v91) = v53;
        v54 = os_log_type_enabled(v51, v53);
        v55 = a4;
        if (v54)
        {
          v56 = v48;
          v57 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v99[0] = v86;
          *v57 = v82;
          sub_18E3F6D08(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v84 = v51;
          v58 = sub_18E44F39C();
          v87 = v38;
          v88 = v39;
          v60 = v59;
          v61 = *v94;
          (*v94)(v56, v55);
          v62 = sub_18E1C9624(v58, v60, v99);
          v40 = 0;
          v38 = v87;
          v39 = v88;

          *(v57 + 4) = v62;
          *(v57 + 12) = 2112;
          v63 = v44;
          v64 = _swift_stdlib_bridgeErrorToNSError();
          *(v57 + 14) = v64;
          v65 = v85;
          *v85 = v64;
          v66 = v84;
          _os_log_impl(&dword_18E1C1000, v84, v91, "Failed to read side-load file %s: %@", v57, 0x16u);
          sub_18E1E8EEC(v65, &unk_1EABE9120, &qword_18E4E3A90);
          MEMORY[0x193ACD400](v65, -1, -1);
          v67 = v86;
          sub_18E1C9934(v86);
          MEMORY[0x193ACD400](v67, -1, -1);
          MEMORY[0x193ACD400](v57, -1, -1);

          v68 = v83;
          v61(v83, v55);
          a4 = v55;
          v41 = v68;
        }

        else
        {

          v69 = *v94;
          (*v94)(v48, v55);
          v69(v52, v55);
          a4 = v55;
          v41 = v52;
        }

        goto LABEL_29;
      }

      v45 = v42;
      v46 = v43;
      sub_18E3F7178();
      type metadata accessor for ResourceContainer();
      v47 = sub_18E44EE3C();
      v40 = 0;
      if (v47)
      {
        v70 = v47;
        ResourceContainer.toResource()();

        if (*(&v97 + 1))
        {
          sub_18E1C551C(&v96, v99);
          sub_18E1E8C38(v99, &v96);
          v71 = *(&v97 + 1);
          v72 = v98;
          v73 = sub_18E274828(&v96, *(&v97 + 1));
          v88 = v39;
          MEMORY[0x1EEE9AC00](v73);
          v75 = &v80 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v76 + 16))(v75);
          v77 = v71;
          a4 = v92;
          sub_18E244FC8(v75, v80, v77, v72);
          sub_18E1FDFE0(v45, v46);

          sub_18E1C9934(v99);
          sub_18E1C9934(&v96);
          v40 = 0;
          v39 = v88;
          v41 = v83;
          goto LABEL_37;
        }

        sub_18E1FDFE0(v45, v46);
      }

      else
      {
        sub_18E1FDFE0(v45, v46);
        v98 = 0;
        v96 = 0u;
        v97 = 0u;
      }

      sub_18E1E8EEC(&v96, &qword_1EABE0FF0, &qword_18E49DA48);
LABEL_37:
      (*v94)(v41, a4);
LABEL_29:
      v39 = &v89[v39];
      --v38;
    }

    while (v38);
  }
}

void sub_18E202D00()
{
  v3 = *(v2 - 192);
  *v3 = v0;
  v3[1] = v1;
}

uint64_t sub_18E202D20()
{

  sub_18E1C9934((v0 + 32));
  sub_18E1E1950();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E202D5C()
{

  sub_18E1C9934(v0 + 4);
  if (v0[12])
  {
    sub_18E1C9934(v0 + 9);
  }

  sub_18E1E2C84();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E202DA8()
{

  if (*(v0 + 112))
  {
  }

  sub_18E220B24();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E202E60()
{

  if (*(v0 + 112))
  {
  }

  sub_18E1C86E0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_18E202F00()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

void *sub_18E202F9C(uint64_t a1, void *a2)
{
  a2[3] = 2;
  a2[5] = 0;
  swift_unknownObjectWeakInit();
  sub_18E2706EC(&qword_1EABE10C8, &qword_18E49DD08);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  a2[2] = v3;
  a2[5] = &protocol witness table for CatalogClient;
  swift_unknownObjectWeakAssign();

  return a2;
}

void sub_18E203078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v24;
  a20 = v25;
  v26 = v21;
  v28 = v27;
  v29 = sub_18E44E83C();
  v30 = sub_18E1C5E70(v29, &a14);
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C86C0();
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1E6498();
  MEMORY[0x1EEE9AC00](v32);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1E3EE0();
  sub_18E1CEB5C((v22 + 16));
  if (v21)
  {
    goto LABEL_2;
  }

  v146 = v28;
  v35 = *(v22 + 16);
  if (!v35)
  {
    v78 = sub_18E2885F0();
    sub_18E1C8558(&type metadata for XPCServiceError, v78);
    *v79 = 0;
    swift_willThrow();
LABEL_2:
    os_unfair_lock_unlock((v22 + 24));
    sub_18E1CD984();

    goto LABEL_3;
  }

  sub_18E216810(v35, &v151);
  sub_18E223DB8();
  v36.n128_u64[0] = 136315650;
  sub_18E1E23AC(v36);
  while (1)
  {
    if (v37 == -1)
    {
      __break(1u);
      goto LABEL_46;
    }

    sub_18E1D02F4();
    sub_18E1CC494();
    v38 = swift_allocObject();
    v39 = sub_18E1E2DEC(v38);
    v152 = sub_18E44D310;
    v153 = v39;
    sub_18E1C8480();
    sub_18E1C80EC();
    v150 = v40;
    v151 = &unk_1F018B3F8;
    _Block_copy(v149);
    sub_18E1CF544();

    v41 = sub_18E1E32D8(&v151);
    v43 = [v41 v42];
    _Block_release(v28);
    sub_18E1CC494();
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    sub_18E1CC494();
    v45 = swift_allocObject();
    sub_18E223C24(v45);
    sub_18E1CD8AC();
    v46 = swift_allocObject();
    *(v46 + 16) = v23;
    *(v46 + 24) = v44;
    sub_18E1CD8AC();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_18E44D248;
    *(v47 + 24) = v46;
    v48 = qword_1ED6A8B58;
    swift_unknownObjectRetain();

    if (v48 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v49 = sub_18E221A54();
    sub_18E1CE8B4(v49, qword_1ED6A9888);
    sub_18E1DD3C0(&a13);

    v50 = sub_18E44E80C();
    v51 = sub_18E44EE2C();

    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v52)
    {
      sub_18E1C5F74();
      sub_18E243B34();
      v43 = v53;
      sub_18E1CA69C();
      v149[0] = swift_slowAlloc();
      *v43 = sub_18E1D5E20().n128_u32[0];
      sub_18E1CD984();
      v54 = sub_18E44EDBC();
      v26 = v55;
      v44 = v23;
      v56 = sub_18E1C9624(v54, v55, v149);

      *(v43 + 4) = v56;
      v23 = v44;
      sub_18E1E2FD0(&dword_18E1C1000, v50, v51, "calling acquireCoherenceToken for %s");
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E9CA8();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    sub_18E1CD984();
    v57 = sub_18E44ED9C();
    v152 = sub_18E1E0F7C;
    v153 = v47;
    sub_18E1C8480();
    sub_18E1E15E8();
    v150 = sub_18E1E0EE0;
    v151 = &unk_1F018B498;
    _Block_copy(v149);
    sub_18E223FB8();

    [v43 acquireCoherenceTokenWithIdentifiers:v57 with:v26];
    _Block_release(v26);

    sub_18E1E6580();
    v20 = *v44;
    if (!v20)
    {
      break;
    }

    v58 = v20;
    v59 = v20;
    v60 = sub_18E223A9C();
    sub_18E280314(v60, v61);
    sub_18E1E3C94();
    if ((v146 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_26:
        sub_18E1CB0FC(v62, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1CC484();
        sub_18E1D42A4();
        v96();
        v97 = v20;
        v98 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          sub_18E243B34();
          v100 = v99;
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E1CDA38(v148);
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v101 = sub_18E1D84BC();
          sub_18E1C9624(v101, &qword_1EABE9328, v102);

          sub_18E1E1520();
          v103 = v20;
          v104 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v104);
          sub_18E1C8D90();
          _os_log_impl(v105, v106, v107, v108, v109, 0x20u);
          sub_18E32F548(v100);
          sub_18E1E9CA8();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E221850();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1CAF18();
        }

        else
        {

          sub_18E1CC484();
        }

        sub_18E1E1028();
        v110();
        sub_18E1E383C();
        sub_18E1E2660();
LABEL_37:
        swift_willThrow();
        sub_18E1CD984();

        sub_18E1E2684();

        sub_18E234970();

        goto LABEL_3;
      }

LABEL_46:
      sub_18E1C6A1C();
      v62 = swift_once();
      goto LABEL_26;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v63 = sub_18E1C9090();
    sub_18E1C95AC(v63, qword_1ED6A9028);
    sub_18E1E8A2C();
    v64 = sub_18E1D6224();
    v65(v64);
    v66 = v20;
    v28 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v67 = swift_slowAlloc();
      sub_18E20809C();
      v23 = v43;
      v68 = swift_slowAlloc();
      sub_18E1CA69C();
      v69 = swift_slowAlloc();
      sub_18E240E98(v69);
      sub_18E1D7ED0(v148);
      v26 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v70 = sub_18E24707C();
      v72 = sub_18E1C9624(v70, &qword_1EABE9328, v71);

      *(v67 + 4) = v72;
      sub_18E1E6838();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 14) = v73;
      *v68 = v73;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v28, v47, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v68);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      sub_18E1CAF18();
      v74 = sub_18E1C69C4();
      v75(v74);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      swift_unknownObjectRelease();
      v76 = sub_18E1C8C3C();
      v77(v76);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E1E2660();
  sub_18E1D4CFC();
  swift_beginAccess();
  v80 = v26[2];
  if (v80)
  {
    v81 = v80;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v147, qword_1ED6A9028);
    sub_18E1E8A2C();
    sub_18E1D5EF4();
    v82();
    v83 = v80;
    v84 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      sub_18E243B34();
      v86 = v85;
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E1D03DC(v148);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v87 = sub_18E1E3D6C();
      sub_18E1C9624(v87, &qword_1EABE9328, v88);
      sub_18E1E2660();

      sub_18E1E1520();
      v89 = v80;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v90);
      sub_18E1C8D90();
      _os_log_impl(v91, v92, v93, v94, v95, 0x20u);
      sub_18E32F548(v86);
      sub_18E1E9CA8();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CAF18();
    }

    else
    {

      sub_18E1C2AA0();
    }

    sub_18E1E1028();
    v129();
    sub_18E1E383C();
    goto LABEL_37;
  }

  sub_18E1D4CFC();
  v111 = swift_beginAccess();
  v112 = v23[2];
  if (v112)
  {
    v113 = v112;
    sub_18E1D49FC();
    if (!v114)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CA644(v147, qword_1ED6A9028);
    sub_18E1C2AA0();
    sub_18E1D5EF4();
    v115();
    v116 = sub_18E44E80C();
    v117 = sub_18E44EDFC();
    if (sub_18E1E115C(v117))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      v118 = off_1EABE9330;

      v119 = sub_18E1D5C74();
      sub_18E1C9624(v119, v118, v120);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v121, v122, v123, v124, v125, 0x16u);
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E234970();
      swift_unknownObjectRelease();
      sub_18E1CAF18();
      v127 = sub_18E1C69C4();
      v128(v127);
      sub_18E1CD984();

      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E234970();
      swift_unknownObjectRelease();
      sub_18E1C2AA0();
      sub_18E1E1028();
      v145();
      sub_18E1CD984();

      sub_18E20067C();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v111 = swift_once();
    }

    sub_18E1C8658(v111, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C();
    sub_18E1E19C0();
    v131();
    v132 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v132, v133))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v134 = swift_slowAlloc();
      sub_18E221F1C(v134);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v135 = sub_18E1D5C74();
      sub_18E1C9624(v135, &qword_1EABE9328, v136);
      sub_18E1E2660();

      sub_18E1E1764();
      sub_18E220934(&a12);
      sub_18E1D4494(&dword_18E1C1000, v137, v138, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    sub_18E1CAF18();
    sub_18E1E1028();
    v139();
    sub_18E1D62D8();
    v140 = sub_18E2885F0();
    v141 = sub_18E1C8558(&type metadata for XPCServiceError, v140);
    sub_18E1E1254(v141, v142);
    sub_18E1CD984();

    sub_18E1E2684();

    sub_18E234970();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

uint64_t sub_18E203E04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_18E203E48()
{
  sub_18E228770();
  sub_18E1D4CFC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    os_unfair_lock_lock(v2 + 6);
    v0(v2 + 4);
    os_unfair_lock_unlock(v2 + 6);
  }

  return result;
}

void sub_18E203FAC(void *a1)
{
  v2 = v1;
  v95[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18E44E6AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  if (*(v8 + 16))
  {
    v9 = sub_18E1D121C(0, &qword_1ED6A7DB8, 0x1E69C7548);
    v87 = "failedToFindAsset";
    v91 = sub_18E32F228(0xD000000000000020, 0x800000018E478310);
    if (qword_1ED6A94F8 != -1)
    {
      goto LABEL_52;
    }

    while (1)
    {
      v92 = sub_18E44E83C();
      sub_18E1C95EC(v92, qword_1ED6A98C0);

      v10 = sub_18E44E80C();
      v11 = sub_18E44EE2C();

      v12 = os_log_type_enabled(v10, v11);
      v89 = v2;
      v90 = a1;
      v88 = v9;
      v85 = v5;
      v86 = v4;
      v84 = v7;
      if (v12)
      {
        v4 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v95[0] = v13;
        *v4 = 136315138;
        sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
        v14 = sub_18E44E99C();
        v2 = v15;
        v16 = sub_18E1C9624(v14, v15, v95);

        *(v4 + 4) = v16;
        _os_log_impl(&dword_18E1C1000, v10, v11, "CoherentAssetLock: in lock with current tokens: %s", v4, 0xCu);
        sub_18E1C9934(v13);
        MEMORY[0x193ACD400](v13, -1, -1);
        MEMORY[0x193ACD400](v4, -1, -1);
      }

      v93 = MEMORY[0x1E69E7CC0];
      v95[0] = MEMORY[0x1E69E7CC0];
      v7 = v8 + 64;
      v17 = 1 << *(v8 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v5 = v18 & *(v8 + 64);
      a1 = ((v17 + 63) >> 6);

      v9 = 0;
      if (v5)
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v19 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v19 >= a1)
        {

          v29 = v90;
          v30 = v90[5];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            __break(1u);
          }

          else
          {
            v90[5] = v32;
            if (qword_1ED6A8AB0 == -1)
            {
LABEL_19:
              v33 = sub_18E1C95EC(v92, qword_1ED6A9870);
              swift_retain_n();
              v34 = sub_18E44E80C();
              v35 = sub_18E44EE2C();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                v92 = v33;
                v37 = v36;
                v38 = swift_slowAlloc();
                v94 = v38;
                *v37 = 136315650;
                sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

                v39 = sub_18E44E9BC();
                v41 = v40;

                v42 = sub_18E1C9624(v39, v41, &v94);

                *(v37 + 4) = v42;
                *(v37 + 12) = 2080;

                v43 = sub_18E44E9CC();
                v45 = v44;

                v46 = sub_18E1C9624(v43, v45, &v94);

                *(v37 + 14) = v46;
                *(v37 + 22) = 2048;
                v47 = v29[5];

                *(v37 + 24) = v47;

                _os_log_impl(&dword_18E1C1000, v34, v35, "lock succeeded for: %s, %s lock count: %ld", v37, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x193ACD400](v38, -1, -1);
                MEMORY[0x193ACD400](v37, -1, -1);
              }

              else
              {
              }

              if (qword_1ED6A8268 != -1)
              {
                swift_once();
              }

              if (byte_1ED6A7EE8 == 1 && !v29[4])
              {
                v52 = sub_18E32F228(0xD000000000000020, v87 | 0x8000000000000000);
                v53 = v29[4];
                v29[4] = v52;

                v54 = sub_18E44E80C();
                v55 = sub_18E44EE2C();

                if (os_log_type_enabled(v54, v55))
                {
                  v56 = swift_slowAlloc();
                  v57 = swift_slowAlloc();
                  v93 = swift_slowAlloc();
                  v94 = v93;
                  *v56 = 136315394;
                  sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);

                  v58 = sub_18E44E9BC();
                  v60 = v59;

                  v61 = sub_18E1C9624(v58, v60, &v94);

                  *(v56 + 4) = v61;
                  *(v56 + 12) = 2112;
                  v62 = v29[4];
                  *(v56 + 14) = v62;
                  *v57 = v62;
                  v63 = v62;
                  _os_log_impl(&dword_18E1C1000, v54, v55, "assertion acquired for: %s %@", v56, 0x16u);
                  sub_18E1E8EEC(v57, &unk_1EABE9120, &qword_18E4E3A90);
                  MEMORY[0x193ACD400](v57, -1, -1);
                  v64 = v93;
                  sub_18E1C9934(v93);
                  MEMORY[0x193ACD400](v64, -1, -1);
                  MEMORY[0x193ACD400](v56, -1, -1);
                }
              }

              goto LABEL_47;
            }
          }

          swift_once();
          goto LABEL_19;
        }

        v5 = *(v7 + 8 * v19);
        ++v9;
        if (v5)
        {
          v9 = v19;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
    }

LABEL_12:
    while (1)
    {
      v20 = __clz(__rbit64(v5)) | (v9 << 6);
      v21 = (*(v8 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v8 + 56) + 8 * v20);
      v94 = 0;

      v25 = v24;
      v26 = [v25 lock_];
      v2 = v94;
      if (!v26)
      {
        break;
      }

      v27 = v94;

      v28 = v25;
      MEMORY[0x193ACC400]();
      v4 = *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18E44ECBC();
      }

      v5 &= v5 - 1;
      sub_18E44ECDC();

      v93 = v95[0];
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v65 = v94;
    v2 = sub_18E44E44C();

    swift_willThrow();
    if (qword_1ED6A8AB0 != -1)
    {
      swift_once();
    }

    sub_18E1C95EC(v92, qword_1ED6A9870);

    v66 = v25;
    v9 = sub_18E44E80C();
    v67 = sub_18E44EE0C();

    v68 = os_log_type_enabled(v9, v67);
    v7 = v93;
    v92 = v66;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v94 = v90;
      *v69 = 136315394;
      v70 = sub_18E1C9624(v23, v22, &v94);
      LODWORD(v89) = v67;
      v71 = v70;

      *(v69 + 4) = v71;
      *(v69 + 12) = 2080;
      v72 = [v66 uuid];
      v73 = v84;
      sub_18E44E68C();

      sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v74 = v86;
      v75 = sub_18E44F39C();
      v77 = v76;
      (*(v85 + 8))(v73, v74);
      v78 = sub_18E1C9624(v75, v77, &v94);

      *(v69 + 14) = v78;
      _os_log_impl(&dword_18E1C1000, v9, v89, "lock failed for: %s, %s. Atttempting to reset state", v69, 0x16u);
      v79 = v90;
      swift_arrayDestroy();
      MEMORY[0x193ACD400](v79, -1, -1);
      MEMORY[0x193ACD400](v69, -1, -1);
    }

    else
    {
    }

    v80 = sub_18E289108();
    v81 = 0;
    a1 = 0;
    v4 = v7 & 0xC000000000000001;
    v5 = v7 & 0xFFFFFFFFFFFFFF8;
    while (v80 != v81)
    {
      if (v4)
      {
        v82 = MEMORY[0x193ACC7B0](v81, v7);
      }

      else
      {
        if (v81 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v82 = *(v7 + 8 * v81 + 32);
      }

      v9 = v82;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_50;
      }

      v94 = v82;
      sub_18E42DBA8(&v94);

      ++v81;
    }

    swift_willThrow();

LABEL_47:
    v49 = v91;
    [v91 invalidate];
  }

  else
  {
    if (qword_1ED6A94F8 != -1)
    {
      swift_once();
    }

    v48 = sub_18E44E83C();
    sub_18E1C95EC(v48, qword_1ED6A98C0);
    v49 = sub_18E44E80C();
    v50 = sub_18E44EE2C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_18E1C1000, v49, v50, "CoherentAssetLock: lock called when there are no tokens", v51, 2u);
      MEMORY[0x193ACD400](v51, -1, -1);
    }
  }
}

void sub_18E204B54()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_18E1D055C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_18E204BF4@<X0>(void (*a1)(const void *, uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  a1(v2, v15);
  v5 = sub_18E2706EC(&qword_1EABE12A0, &qword_18E49EB78);
  if (sub_18E1C5CBC(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v15[23], v15[24], v15[25], v15[26], v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, __dst[0]))
  {
    sub_18E224478(&v16, &v21);
    sub_18E1E15F4(&v21, v22);
    sub_18E1C4FE0();
    return sub_18E1C9934(&v21);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    result = sub_18E298E58(&v16);
    *a2 = 0;
    *(a2 + 5) = 0;
    *(a2 + 16) = MEMORY[0x1E69E7CC0];
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
  }

  return result;
}

void sub_18E204CE0(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_18E1C5534();
    if (v13 != v14)
    {
      sub_18E1E1CA8();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_18E1C5E88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_18E2706EC(a5, a6);
    v17 = swift_allocObject();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 40);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    if (v17 != a4 || &a4[5 * v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 40 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18E2706EC(a7, a8);
    swift_arrayInitWithCopy();
  }

  sub_18E1E1DA0();
}